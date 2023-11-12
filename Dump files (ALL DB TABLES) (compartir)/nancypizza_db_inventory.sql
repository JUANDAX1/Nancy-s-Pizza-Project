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
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inv_id` int NOT NULL,
  `item_id` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`inv_id`),
  KEY `fk_inventory_item_id` (`item_id`),
  CONSTRAINT `fk_inventory_item_id` FOREIGN KEY (`item_id`) REFERENCES `recipe` (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'REF30001',50),(2,'REF30002',25),(3,'REF30003',40),(4,'REF30004',4),(5,'REF30005',2),(6,'REF30006',4),(7,'REF30007',20),(8,'REF30008',10),(9,'REF30009',10),(10,'REF30010',10),(11,'REF30011',2),(12,'REF30012',2),(13,'REF30013',10),(14,'REF30014',10),(15,'REF30015',3),(16,'REF30016',3),(17,'REF30017',4),(18,'REF30018',4),(19,'REF30019',3),(20,'REF30020',4),(21,'REF30021',5),(22,'REF30022',5),(23,'REF30023',5),(24,'REF30024',5),(25,'REF30025',2),(26,'REF30026',2),(27,'REF30027',2),(28,'REF30028',2),(29,'REF30029',2),(30,'REF30030',2),(31,'REF30031',2),(32,'REF30032',120),(33,'REF30033',120),(34,'REF30034',120),(35,'REF30035',120),(36,'REF30036',120),(37,'REF30037',120),(38,'REF30038',120),(39,'REF30039',120),(40,'REF30040',120),(41,'REF30041',120),(42,'REF30042',120),(43,'REF30043',120),(44,'REF30044',120),(45,'REF30045',120),(46,'REF30046',120),(47,'REF30047',120);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-26 20:20:12