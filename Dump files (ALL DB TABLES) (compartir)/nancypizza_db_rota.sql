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
-- Table structure for table `rota`
--

DROP TABLE IF EXISTS `rota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rota` (
  `row_id` int NOT NULL,
  `rota_id` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `shift_id` varchar(20) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `idx_shift_id` (`shift_id`),
  KEY `fk_rota_date` (`date`),
  KEY `fk_rota_staff_id` (`staff_id`),
  CONSTRAINT `fk_rota_date` FOREIGN KEY (`date`) REFERENCES `orders` (`created_at`),
  CONSTRAINT `fk_rota_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rota`
--

LOCK TABLES `rota` WRITE;
/*!40000 ALTER TABLE `rota` DISABLE KEYS */;
INSERT INTO `rota` VALUES (1,'ro0001','2023-09-10 00:00:00','sh0005','st0001'),(2,'ro0001','2023-09-10 00:00:00','sh0005','st0002'),(3,'ro0001','2023-09-10 00:00:00','sh0005','st0009'),(4,'ro0001','2023-09-10 00:00:00','sh0005','st0010'),(5,'ro0001','2023-09-10 00:00:00','sh0006','st0001'),(6,'ro0001','2023-09-10 00:00:00','sh0006','st0002'),(7,'ro0001','2023-09-10 00:00:00','sh0006','st0009'),(8,'ro0001','2023-09-10 00:00:00','sh0006','st0010'),(9,'ro0002','2023-09-11 00:00:00','sh0007','st0001'),(10,'ro0002','2023-09-11 00:00:00','sh0007','st0002'),(11,'ro0002','2023-09-11 00:00:00','sh0007','st0009'),(12,'ro0002','2023-09-11 00:00:00','sh0007','st0010'),(13,'ro0002','2023-09-11 00:00:00','sh0008','st0001'),(14,'ro0002','2023-09-11 00:00:00','sh0008','st0002'),(15,'ro0002','2023-09-11 00:00:00','sh0008','st0009'),(16,'ro0002','2023-09-11 00:00:00','sh0008','st0010'),(17,'ro0003','2023-09-12 00:00:00','sh0009','st0001'),(18,'ro0003','2023-09-12 00:00:00','sh0009','st0002'),(19,'ro0003','2023-09-12 00:00:00','sh0009','st0009'),(20,'ro0003','2023-09-12 00:00:00','sh0009','st0010'),(21,'ro0003','2023-09-12 00:00:00','sh0010','st0001'),(22,'ro0003','2023-09-12 00:00:00','sh0010','st0002'),(23,'ro0003','2023-09-12 00:00:00','sh0010','st0009'),(24,'ro0003','2023-09-12 00:00:00','sh0010','st0010'),(25,'ro0004','2023-09-13 00:00:00','sh0011','st0003'),(26,'ro0004','2023-09-13 00:00:00','sh0011','st0004'),(27,'ro0004','2023-09-13 00:00:00','sh0011','st0011'),(28,'ro0004','2023-09-13 00:00:00','sh0011','st0012'),(29,'ro0004','2023-09-13 00:00:00','sh0012','st0003'),(30,'ro0004','2023-09-13 00:00:00','sh0012','st0004'),(31,'ro0004','2023-09-13 00:00:00','sh0012','st0011'),(32,'ro0004','2023-09-13 00:00:00','sh0012','st0012'),(33,'ro0005','2023-09-14 00:00:00','sh0013','st0003'),(34,'ro0005','2023-09-14 00:00:00','sh0013','st0004'),(35,'ro0005','2023-09-14 00:00:00','sh0013','st0011'),(36,'ro0005','2023-09-14 00:00:00','sh0013','st0012'),(37,'ro0005','2023-09-14 00:00:00','sh0014','st0003'),(38,'ro0005','2023-09-14 00:00:00','sh0014','st0004'),(39,'ro0005','2023-09-14 00:00:00','sh0014','st0011'),(40,'ro0005','2023-09-14 00:00:01','sh0014','st0012');
/*!40000 ALTER TABLE `rota` ENABLE KEYS */;
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
