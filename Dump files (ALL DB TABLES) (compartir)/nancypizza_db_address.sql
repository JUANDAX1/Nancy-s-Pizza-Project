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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `add_id` int NOT NULL,
  `delivery_address1` varchar(200) NOT NULL,
  `delivery_address2` varchar(200) DEFAULT NULL,
  `delivery_city` varchar(50) NOT NULL,
  `delivery_zipcode` varchar(20) NOT NULL,
  PRIMARY KEY (`add_id`),
  CONSTRAINT `fk_address_add_id` FOREIGN KEY (`add_id`) REFERENCES `orders` (`add_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Av. Providencia 1234, Providencia, Santiago','','Santiago de Chile','7500000'),(2,'Calle San Diego 5678, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(3,'Av. Apoquindo 9010, Las Condes, Santiago','','Santiago de Chile','7550000'),(4,'Calle Nueva York 1234, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(5,'Calle Brasil 5678, Providencia, Santiago','','Santiago de Chile','7500000'),(6,'Calle Alonso de Córdova 9010, Vitacura, Santiago','','Santiago de Chile','7600000'),(7,'Av. Isidora Goyenechea 1234, Las Condes, Santiago','','Santiago de Chile','7550000'),(8,'Calle Merced 5678, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(9,'Av. Kennedy 9010, Providencia, Santiago','','Santiago de Chile','7500000'),(10,'Calle Estado 1234, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(11,'Av. El Bosque 5678, Las Condes, Santiago','','Santiago de Chile','7550000'),(12,'Calle Santa Isabel 9010, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(13,'Av. Manuel Montt 1234, Providencia, Santiago','','Santiago de Chile','7500000'),(14,'Calle Huérfanos 5678, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(15,'Av. Andrés Bello 9010, Las Condes, Santiago','','Santiago de Chile','7550000'),(16,'Calle Agustinas 1234, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(17,'Av. Santa María 5678, Providencia, Santiago','','Santiago de Chile','7500000'),(18,'Calle Ahumada 9010, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(19,'Av. Vicuña Mackenna 1234, Ñuñoa, Santiago','','Santiago de Chile','7510000'),(20,'Calle Manuel Rodríguez 5678, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(21,'Av. Independencia 9010, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(22,'Calle Alameda 1234, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(23,'Av. Portales 5678, Providencia, Santiago','','Santiago de Chile','7500000'),(24,'Calle Huérfanos 9010, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(25,'Av. Manuel Montt 1234, Providencia, Santiago','','Santiago de Chile','7500000'),(26,'Calle Agustinas 5678, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(27,'Av. Santa María 5678, Providencia, Santiago','','Santiago de Chile','7500000'),(28,'Calle Ahumada 9010, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(29,'Calle San Isidro 1234, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(30,'Calle Los Leones 5678, Providencia, Santiago','','Santiago de Chile','7500000'),(31,'Calle Isabel La Católica 9010, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(32,'Calle Manuel de Salas 5678, Providencia, Santiago','','Santiago de Chile','7500000'),(33,'Calle Recoleta 9010, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(34,'Calle Lastarria 5678, Providencia, Santiago','','Santiago de Chile','7500000'),(35,'Calle San Francisco 9010, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(36,'Calle Alameda 1234, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(37,'Av. Providencia 1234, Providencia, Santiago','','Santiago de Chile','7500000'),(38,'Calle San Diego 5678, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(39,'Av. Apoquindo 9010, Las Condes, Santiago','','Santiago de Chile','7550000'),(40,'Calle Nueva York 1234, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(41,'Calle Brasil 5678, Providencia, Santiago','','Santiago de Chile','7500000'),(42,'Calle Alonso de Córdova 9010, Vitacura, Santiago','','Santiago de Chile','7600000'),(43,'Av. Isidora Goyenechea 1234, Las Condes, Santiago','','Santiago de Chile','7550000'),(44,'Calle Merced 5678, Santiago Centro, Santiago','','Santiago de Chile','8300000'),(45,'Av. Kennedy 9010, Providencia, Santiago','','Santiago de Chile','7500000'),(46,'Av. Isidora Goyenechea 1234, Las Condes, Santiago7550000','','Santiago de Chile','7550000'),(47,'Calle Merced 5678, Santiago Centro, Santiago8300000','','Santiago de Chile','8300000'),(48,'Av. Kennedy 9010, Providencia, Santiago7500000','','Santiago de Chile','7500000'),(49,'Calle Estado 1234, Santiago Centro, Santiago8300000','','Santiago de Chile','8300000'),(50,'Av. El Bosque 5678, Las Condes, Santiago7550000','','Santiago de Chile','7510000'),(51,'Calle Santa Isabel 9010, Santiago Centro, Santiago8300000','','Santiago de Chile','8300000'),(52,'Av. Manuel Montt 1234, Providencia, Santiago7500000','','Santiago de Chile','8300000'),(53,'Calle Huérfanos 5678, Santiago Centro, Santiago8300000','','Santiago de Chile','8300000'),(54,'Av. Andrés Bello 9010, Las Condes, Santiago7550000','','Santiago de Chile','7500000'),(55,'Calle Agustinas 1234, Santiago Centro, Santiago8300000','','Santiago de Chile','8300000'),(56,'Av. Santa María 5678, Providencia, Santiago7500000','','Santiago de Chile','7500000'),(57,'Calle Ahumada 9010, Santiago Centro, Santiago8300000','','Santiago de Chile','8300000'),(58,'Av. Vicuña Mackenna 1234, Ñuñoa, Santiago7510000','','Santiago de Chile','7500000');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
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
