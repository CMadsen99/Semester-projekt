-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: carport
-- ------------------------------------------------------
-- Server version	8.0.18

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

USE `carport`;
--
-- Table structure for table `height`
--

DROP TABLE IF EXISTS `height`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `height` (
  `idheight` int(11) NOT NULL AUTO_INCREMENT,
  `height` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idheight`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `height`
--

LOCK TABLES `height` WRITE;
/*!40000 ALTER TABLE `height` DISABLE KEYS */;
INSERT INTO `height` VALUES (1,'2'),(2,'2.25'),(3,'2.5'),(4,'2.75'),(5,'3'),(6,'3.25'),(7,'3.50'),(8,'3.75'),(9,'4');
/*!40000 ALTER TABLE `height` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `length`
--

DROP TABLE IF EXISTS `length`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `length` (
  `idlength` int(11) NOT NULL AUTO_INCREMENT,
  `length` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idlength`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `length`
--

LOCK TABLES `length` WRITE;
/*!40000 ALTER TABLE `length` DISABLE KEYS */;
INSERT INTO `length` VALUES (1,'2'),(2,'2.25'),(3,'2.5'),(4,'2.75'),(5,'3'),(6,'3.25'),(7,'3.50'),(8,'3.75'),(9,'4'),(10,'4.25'),(11,'4.5'),(12,'4.75'),(13,'5'),(14,'5.25'),(15,'5.5'),(16,'5.75'),(17,'6');
/*!40000 ALTER TABLE `length` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tilt`
--

DROP TABLE IF EXISTS `tilt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tilt` (
  `idtilt` int(11) NOT NULL AUTO_INCREMENT,
  `tilt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtilt`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tilt`
--

LOCK TABLES `tilt` WRITE;
/*!40000 ALTER TABLE `tilt` DISABLE KEYS */;
INSERT INTO `tilt` VALUES (1,'5°'),(2,'10°'),(3,'15°'),(4,'20°'),(5,'25°'),(6,'30°'),(7,'35°'),(8,'40°'),(9,'45°');
/*!40000 ALTER TABLE `tilt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `width`
--

DROP TABLE IF EXISTS `width`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `width` (
  `idwidth` int(11) NOT NULL AUTO_INCREMENT,
  `width` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idwidth`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `width`
--

LOCK TABLES `width` WRITE;
/*!40000 ALTER TABLE `width` DISABLE KEYS */;
INSERT INTO `width` VALUES (1,'2'),(2,'2.25'),(3,'2.5'),(4,'2.75'),(5,'3'),(6,'3.25'),(7,'3.50'),(8,'3.75'),(9,'4'),(10,'4.25'),(11,'4.5'),(12,'4.75'),(13,'5'),(14,'5.25'),(15,'5.5'),(16,'5.75'),(17,'6');
/*!40000 ALTER TABLE `width` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-20 22:29:13
