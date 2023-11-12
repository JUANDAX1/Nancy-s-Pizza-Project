-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: nancypizza_db
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `ing_id` varchar(10) NOT NULL,
  `ing_name` varchar(200) NOT NULL,
  `ing_weight` int NOT NULL,
  `ing_meas` varchar(20) NOT NULL,
  `ing_price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ing_id`),
  CONSTRAINT `fk_ingredient_ing_id` FOREIGN KEY (`ing_id`) REFERENCES `recipe` (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES ('REF30001','Bola de masa de pizza (paquete 8)',2000,'grams',4.22),('REF30002','Salsa de tomate',4500,'grams',3.89),('REF30003','Queso mozzarella',2500,'grams',14.45),('REF30004','Orégano seco',500,'grams',5.99),('REF30005','Salami picante',3500,'grams',37.64),('REF30006','Pimiento picante',1000,'grams',6.49),('REF30007','Berenjena',1000,'grams',1.90),('REF30008','queso parmesano',2500,'grams',18.75),('REF30009','Queso Gorgonzola',3500,'grams',27.64),('REF30010','Queso ricotta',1500,'grams',3.99),('REF30011','Anchoas',1000,'grams',10.99),('REF30012','alcaparras',1000,'grams',4.16),('REF30013','Pepperoni',2500,'grams',24.18),('REF30014','Camarón',1000,'grams',8.98),('REF30015','Atún',2000,'grams',7.66),('REF30016','Calamares',2500,'grams',28.77),('REF30017','jamón',5000,'grams',32.45),('REF30018','Piña',5000,'grams',6.23),('REF30019','Mantequilla de ajo y perejil',3000,'grams',52.10),('REF30020','Alitas de pollo',6000,'grams',69.83),('REF30021','Trozos de pollo asado',5000,'grams',34.45),('REF30022','Crutones',1250,'grams',5.25),('REF30023','Lechuga romain',7500,'grams',13.72),('REF30024','Aderezo César',3800,'grams',17.98),('REF30025','Helado de vainilla',4500,'mililitres',15.45),('REF30026','Helado de chocolate',4500,'mililitres',15.45),('REF30027','helado de fresa',4500,'mililitres',15.45),('REF30028','Helado de pistacho',4500,'mililitres',15.45),('REF30029','Brownie de chocolate',2500,'grams',4.45),('REF30030','Pie de banoffee',1200,'grams',1.15),('REF30031','Ensalada de frutas',5000,'grams',7.12),('REF30032','Coca cola regular 33cl',1,'unit',0.41),('REF30033','Coca Cola Regular 1.5L',1,'unit',0.96),('REF30034','Dieta de coca cola 33cl',1,'unit',0.41),('REF30035','Dieta de coca cola 1.5l',1,'unit',0.96),('REF30036','Sprite regular 33cl',1,'unit',0.41),('REF30037','Sprite regular 1.5l',1,'unit',0.96),('REF30038','Dieta de sprite 33cl',1,'unit',0.41),('REF30039','Dieta de sprite 1.5l',1,'unit',0.96),('REF30040','Fanta regular 33cl',1,'unit',0.41),('REF30041','Fanta regular 1.5l',1,'unit',0.96),('REF30042','Fanta dieta 33cl',1,'unit',0.41),('REF30043','Dieta fanta 1.5l',1,'unit',0.96),('REF30044','San Pelligrino 33cl',1,'unit',0.36),('REF30045','San Pelligrino 1.5L',1,'unit',0.86),('REF30046','Perrier 33Cl',1,'unit',0.36),('REF30047','Perrier 1.5L',1,'unit',0.86);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-26 20:20:13
