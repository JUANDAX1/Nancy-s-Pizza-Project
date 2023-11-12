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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(20) NOT NULL,
  `staff_firstname` varchar(50) NOT NULL,
  `staff_lastname` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `hourly_rate` decimal(5,2) NOT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `idx_staff_id` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('st0001','Minerva','Álvarez','Maestro Pizzero',17.25),('st0002','Luciano','García','Chef Pizza senior',21.50),('st0003','Serena','Hernández','Maestro Pizzero',17.25),('st0004','Adriano','López','Chef Pizza senior',21.50),('st0005','Thales','Martínez','Maestro Pizzero',17.25),('st0006','Selena','Pérez','Chef Pizza senior',21.50),('st0007','Zacarías','Sánchez','Maestro Pizzero',17.25),('st0008','Francisco','Rodríguez','Chef Pizza senior',21.50),('st0009','Lira','Gómez','Repartidor',14.50),('st0010','Desirée','González','Repartidor',14.50),('st0011','Iván','Ramírez','Repartidor',14.50),('st0012','Juan Antonio','Romero','Repartidor',14.50),('st0013','Matilde','Fernández','Repartidor',14.50),('st0014','Aarón','Díaz','Repartidor',14.50),('st0015','Amaya','Jiménez','Repartidor',14.50),('st0016','Amaranta','Castillo','Repartidor',14.50);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
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
