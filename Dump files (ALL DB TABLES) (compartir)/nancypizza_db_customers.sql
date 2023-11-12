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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cust_id` int NOT NULL,
  `cust_firstname` varchar(50) NOT NULL,
  `cust_lastname` varchar(50) NOT NULL,
  PRIMARY KEY (`cust_id`),
  CONSTRAINT `fk_customers_cust_id` FOREIGN KEY (`cust_id`) REFERENCES `orders` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Diego','Cayupi'),(2,'Daniel','Calfucurá'),(3,'Eduardo','Nahuel'),(4,'Felipe','Marileo'),(5,'Gabriel','Painemal'),(6,'Ignacio','Quilapilún'),(7,'Javier','Millalonco'),(8,'Joaquín','Marimán'),(9,'Leonardo','Antipán'),(10,'Sebastián','Alejandro'),(11,'Miguel','Blanco'),(12,'Cristina','Martínez'),(13,'Pablo','León'),(14,'Muñoz','Beatriz'),(15,'Erick','Vásquez'),(16,'Victoria','Gómez'),(17,'Alicia','Rodríguez'),(18,'Walker','Josué'),(19,'Melanie','Ruiz'),(20,'Jena','Moreno'),(21,'Vanessa','Joven'),(22,'Santiago','Rubén'),(23,'Lisa','Huesca'),(24,'Travis','Molina'),(25,'Davis','Bravo'),(26,'Clarke','Rebeca'),(27,'Kerry','Cristóbal'),(28,'Walter','Chad'),(29,'Chad','Kimberly'),(30,'Joaquín','López'),(31,'Hernández','Donaldo'),(32,'Rodríguez','Welch'),(33,'Julia','Víctor'),(34,'Vicente','Morales'),(35,'Woods','Smith'),(36,'Ashley','Morales'),(37,'Miller','Jones'),(38,'Martín','Martínez'),(39,'Brianna','Diana'),(40,'Diana','Kelly'),(41,'Kimberly','Jennifer'),(42,'Bella','Rivera'),(43,'Rivera','Dana'),(44,'Beck','Shawn'),(45,'Allen','Moreno'),(46,'Fowler','Zacarías'),(47,'Marcos','Marcos'),(48,'Destino','Kimberly'),(49,'Gabriela','Jones'),(50,'Beatriz','Hueche'),(51,'Camila','Huentemilla'),(52,'Daniela','Llao'),(53,'Emilia','Loncón'),(54,'Francisca','Millaray'),(55,'Gabriela','Paillán'),(56,'Irene','Quiroz'),(57,'Julia','Quilaleo'),(58,'Laura','Huenchumilla');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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
