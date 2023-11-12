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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` varchar(10) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_cat` varchar(50) NOT NULL,
  `item_size` varchar(20) NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `idx_sku` (`sku`),
  CONSTRAINT `fk_item_item_id` FOREIGN KEY (`item_id`) REFERENCES `orders` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('it_001','PIZZ-MARG-R','Pizza margherita reg','Pizza','Mediana',12.00),('it_002','PIZZ-MARG-L','Pizza Margherita grande','Pizza','Familiar',14.00),('it_003','PIZZ-DIAV-R','Pizza Diavola (Hot) Reg','Pizza','Mediana',16.00),('it_004','PIZZ-DIAV-L','Pizza diavola (caliente) grande','Pizza','Familiar',19.00),('it_005','PIZZ-PARM-R','Pizza parmigiana reg','Pizza','Mediana',15.00),('it_006','PIZZ-PARM-L','Pizza parmigiana grande','Pizza','Familiar',18.00),('it_007','PIZZ-QUAT-R','Pizza quattro formaggi reg','Pizza','Mediana',16.00),('it_008','PIZZ-QUAT-L','Pizza quattro formaggi grande','Pizza','Familiar',19.00),('it_009','PIZZ-NAPO-R','Pizza napolitana reg','Pizza','Mediana',16.00),('it_010','PIZZ-NAPO-L','Pizza napolitana grande','Pizza','Familiar',18.00),('it_011','PIZZ-PEPP-R','Pizza Pepperoni Reg','Pizza','Mediana',15.00),('it_012','PIZZ-PEPP-L','Pizza pepperoni grande','Pizza','Familiar',17.00),('it_013','PIZZ-SEAF-R','Pizza Seafood Reg','Pizza','Mediana',17.00),('it_014','PIZZ-SEAF-L','Mariscos de pizza','Pizza','Familiar',20.00),('it_015','PIZZ-HAWA-R','Pizza Regwaiian Reg','Pizza','Mediana',15.00),('it_016','PIZZ-HAWA-L','Pizza hawaiiana grande','Pizza','Familiar',17.00),('it_017','SIDE-GARL-R','Pan de ajo','Side','Regular',6.00),('it_018','SIDE-CHIC-R','Alitas de pollo','Side','Regular',7.00),('it_019','SIDE-BREA-R','Palitos de pan','Side','Regular',5.00),('it_020','SIDE-CAES-R','Ensalada CÃ©sar','Side','Regular',7.00),('it_021','DESS-ICE-CHOC','Helado de vainilla','Dessert','Regular',6.00),('it_022','DESS-ICE-VANI','Helado de chocolate','Dessert','Regular',6.00),('it_023','DESS-ICE-STRA','Helado de fresa','Dessert','Regular',6.00),('it_024','DESS-ICE-PIST','Helado de pistacho','Dessert','Regular',6.00),('it_025','DESS-CHOC-BROW','Brownie de chocolate','Dessert','Regular',5.00),('it_026','DESS-BANO-PIE','pie de banoffee','Dessert','Regular',7.00),('it_027','DESS-FRUI-SALA','Ensalada de frutas','Dessert','Regular',5.00),('it_028','BEVA-CC-REG33','Coca Cola Regular 33cl','Drink','33cl',3.00),('it_029','BEVA-CC-REG1500','Coca Cola Regular 1.5l','Drink','1.5l',6.00),('it_030','BEVA-CC-DIE33','Coca Cola Diet 33cl','Drink','33cl',3.00),('it_031','BEVA-CC-DIE1500','Coca Cola Diet 1.5l','Drink','1.5l',6.00),('it_032','BEVA-7U-REG33','Sprite Regular 33cl','Drink','33cl',3.00),('it_033','BEVA-7U-REG1500','Sprite Regular 1.5l','Drink','1.5l',6.00),('it_034','BEVA-7U-DIE33','Sprite Diet 33cl','Drink','33cl',3.00),('it_035','BEVA-7U-DIE1500','Sprite Diet','Drink','1.5l',6.00),('it_036','BEVA-FAN-REG33','Fanta Regular 33cl','Drink','33cl',3.00),('it_037','BEVA-FAN-REG1500','Fanta Regular 1.5l','Drink','1.5l',6.00),('it_038','BEVA-FAN-DIE33','Fanta Diet 33cl','Drink','33cl',3.00),('it_039','BEVA-FAN-DIE1500','Fanta Diet 1.5l','Drink','1.5l',6.00),('it_040','BEVA-SAN-REG33','San Pelligrino 33cl','Drink','33cl',2.00),('it_041','BEVA-SAN-REG1500','San Pelligrino 1.5l','Drink','1.5l',4.00),('it_042','BEVA-PER-REG33','Perrier 33cl','Drink','33cl',2.00),('it_043','BEVA-PER-REG1500','Perrier 1.5l','Drink','1.5l',4.00);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-26 20:20:11
