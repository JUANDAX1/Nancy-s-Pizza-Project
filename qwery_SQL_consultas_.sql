-- -				1- 
-- Consulta de datos para el primer dashboard
-- 		Totales de ventas, items y ordenes
-- 		Ventas por categoria
-- 		ranking de items mas  vendidos
-- 		ordenes por hora, dirección y entrega por delivery
-- nota: algunos calculos y agrupamientos se haran directamente en el dashboard

SELECT 
	o.order_id,
    o.quantity AS q_item_per_orders,
    o.created_at,
    o.delivery,
    i.item_price,
    i.item_cat,
    i.item_name,
    a.delivery_address1,
    a.delivery_address2,
    a.delivery_city,
    a.delivery_zipcode
FROM orders o
	LEFT JOIN item i ON o.item_id = i.item_id
    LEFT JOIN address a ON o.add_id = a.add_id
    ;
  
  
  -- -				2.1 - 
-- Segundo Dashboard. Control de inventario.
-- Total ingrediente consumido = (Q ordenes x Q ingrediente por receta)
-- Total costo de ingrediente = ( cantidad  ordendada x precio ingrediente)
-- Costo por cada Pizza = SUMA(precio ingrediente)

WITH CTE AS (
    SELECT
        i.item_name,
        r.ing_id,
        ing.ing_name,
        r.quantity AS recipe_quantity,
        SUM(o.quantity) AS order_quantity,
        ing.ing_weight,
        ing.ing_price
    FROM orders o
    LEFT JOIN item i ON o.item_id = i.item_id
    LEFT JOIN recipe r ON i.sku = r.recipe_id
    LEFT JOIN ingredient ing ON r.ing_id = ing.ing_id
    GROUP BY
        i.item_name,
        r.ing_id,
        ing.ing_name,
        r.quantity,
        ing.ing_weight,
        ing.ing_price
)

SELECT
    CTE.item_name,
    CTE.ing_id,
    CTE.ing_name,
    CTE.ing_weight,
    CTE.ing_price,
    CTE.order_quantity,
    CTE.recipe_quantity,
    ROUND(((CTE.ing_price / CTE.ing_weight)* CTE.recipe_quantity), 2)  AS costo_granular_ing,
    (CTE.order_quantity * CTE.recipe_quantity) AS volumen_ing_consumido,
    CTE.order_quantity *  ROUND(((CTE.ing_price / CTE.ing_weight)* CTE.recipe_quantity), 2) AS valor_inventario_consumido
FROM CTE;

-- -				2.2.1  - 
-- Para calcular el porcentaje de stock disponible por ingrediente
-- y crear una lista de ingredientes con stock bajo 
-- Se requiere crear una vista con la consulta anterior de a que obtendremos datos valiosos.

-- creando la vista

CREATE VIEW stock_11
    AS SELECT
		sbq1.item_name AS nombre_item,
		sbq1.ing_id AS igrediente_id,
		sbq1.ing_name AS nombre_ingrediente,
		sbq1.ing_weight AS volumen_ingrediente,
		sbq1.ing_price AS precio_ingrediente,
		sbq1.order_quantity AS cantidad_de_ordenes,
		sbq1.recipe_quantity AS gramaje_receta,
		(sbq1.ing_price/sbq1.ing_weight) AS costo_granular_ing,
		(sbq1.order_quantity * sbq1.recipe_quantity) AS volumen_ing_consumido,
		(sbq1.ing_price/sbq1.ing_weight)*(sbq1.order_quantity * sbq1.recipe_quantity) AS valor_inventario_consumido
	FROM
		(
		SELECT
			o.item_id,
			i.sku,
			i.item_name,
			r.ing_id,
			ing.ing_name,
			r.quantity As recipe_quantity,
			SUM(o.quantity) AS order_quantity,
			ing.ing_weight,
			ing_price
		FROM orders o
			LEFT JOIN item i
				ON o.item_id = i.item_id
			LEFT JOIN recipe r
				ON i.sku = r.recipe_id
			LEFT JOIN ingredient ing
				ON r.ing_id = ing.ing_id
		GROUP BY
			o.item_id,
			i.sku,
			i.item_name,
			r.ing_id,
			ing.ing_name,
			r.quantity,
			ing.ing_name,
			ing.ing_weight
	) sbq1 ; 

-- -				2.2.2  - 
-- calcuar el volumen de ingredientes consumidos
-- crear un inventario en tiempo real con segmentacion por ingrediente

SELECT
	stock_02.nombre_ingrediente,
    stock_02.volumen_ing_gastado,
    ing.ing_weight,
    inv.quantity,
    ing.ing_weight * inv.quantity AS volumen_inventario_total,
    (ing.ing_weight * inv.quantity) - stock_02.volumen_ing_gastado AS volumen_inventario_restante
FROM (
	SELECT 
		igrediente_id,
		nombre_ingrediente,
		SUM(volumen_ing_consumido) AS volumen_ing_gastado
	FROM
		stock_11
	GROUP BY
		igrediente_id,
		nombre_ingrediente
	) stock_02
LEFT JOIN inventory inv 
	ON stock_02.igrediente_id = inv.item_id
LEFT JOIN ingredient ing 
	ON stock_02.igrediente_id = ing.ing_id;


-- -				3   - 
-- calcular los kpi del staff

SELECT 
    r.date,
    CONCAT(st.staff_lastname, ', ', st.staff_firstname) AS staff_full_name,
    st.hourly_rate,
    sh.start_time,
    sh.end_time,
    TIMESTAMPDIFF(MINUTE, sh.start_time, sh.end_time) / 60 AS hours_in_shift,
    TIMESTAMPDIFF(MINUTE, sh.start_time, sh.end_time) / 60 * st.hourly_rate AS staff_cost
FROM 
    rota r 
LEFT JOIN 
    staff st ON r.staff_id = st.staff_id
LEFT JOIN 
    shift sh ON r.shift_id = sh.shift_id;
    