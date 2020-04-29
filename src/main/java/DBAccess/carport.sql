-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 161.35.82.220    Database: carport
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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

USE carport;

--
-- Table structure for table `bodymaterials`
--

DROP TABLE IF EXISTS `bodymaterials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bodymaterials` (
  `idbodymaterials` int(11) NOT NULL AUTO_INCREMENT,
  `material` varchar(45) NOT NULL,
  PRIMARY KEY (`idbodymaterials`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodymaterials`
--

LOCK TABLES `bodymaterials` WRITE;
/*!40000 ALTER TABLE `bodymaterials` DISABLE KEYS */;
INSERT INTO `bodymaterials` VALUES (1,'trykimprægneret profil brædder'),(2,'tværgående trykimprægneret brædder');
/*!40000 ALTER TABLE `bodymaterials` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `height`
--

LOCK TABLES `height` WRITE;
/*!40000 ALTER TABLE `height` DISABLE KEYS */;
INSERT INTO `height` VALUES (1,'200'),(2,'225'),(3,'250'),(4,'275'),(5,'300'),(6,'325'),(7,'350'),(8,'375'),(9,'400');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `length`
--

LOCK TABLES `length` WRITE;
/*!40000 ALTER TABLE `length` DISABLE KEYS */;
INSERT INTO `length` VALUES (1,'200'),(2,'225'),(3,'250'),(4,'275'),(5,'300'),(6,'325'),(7,'350'),(8,'375'),(9,'400'),(10,'425'),(11,'450'),(12,'475'),(13,'500'),(14,'525'),(15,'550'),(16,'575'),(17,'600');
/*!40000 ALTER TABLE `length` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pillarcolor`
--

DROP TABLE IF EXISTS `pillarcolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pillarcolor` (
  `idpillarcolor` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpillarcolor`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pillarcolor`
--

LOCK TABLES `pillarcolor` WRITE;
/*!40000 ALTER TABLE `pillarcolor` DISABLE KEYS */;
INSERT INTO `pillarcolor` VALUES (1,'Rød-lys'),(2,'Blå-lys'),(3,'Grøn-lys'),(4,'Gul-lys'),(5,'Orange-lys'),(6,'Brun-lys'),(7,'Grå-lys'),(8,'Rød-mørk'),(9,'Blå-mørk'),(10,'Grøn-mørk'),(11,'Gul-mørk'),(12,'Orange-mørk'),(13,'Brun-mørk'),(14,'Grå-mørk');
/*!40000 ALTER TABLE `pillarcolor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roofcolor`
--

DROP TABLE IF EXISTS `roofcolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roofcolor` (
  `idroofcolor` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idroofcolor`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roofcolor`
--

LOCK TABLES `roofcolor` WRITE;
/*!40000 ALTER TABLE `roofcolor` DISABLE KEYS */;
INSERT INTO `roofcolor` VALUES (1,'Rød-lys'),(2,'Blå-lys'),(3,'Grøn-lys'),(4,'Gul-lys'),(5,'Orange-lys'),(6,'Brun-lys'),(7,'Grå-lys'),(8,'Rød-mørk'),(9,'Blå-mørk'),(10,'Grøn-mørk'),(11,'Gul-mørk'),(12,'Orange-mørk'),(13,'Brun-mørk'),(14,'Grå-mørk');
/*!40000 ALTER TABLE `roofcolor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roofmaterials`
--

DROP TABLE IF EXISTS `roofmaterials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roofmaterials` (
  `idroofmaterials` int(11) NOT NULL AUTO_INCREMENT,
  `material` varchar(45) NOT NULL,
  PRIMARY KEY (`idroofmaterials`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roofmaterials`
--

LOCK TABLES `roofmaterials` WRITE;
/*!40000 ALTER TABLE `roofmaterials` DISABLE KEYS */;
INSERT INTO `roofmaterials` VALUES (1,'gennemsigtige trapez plader'),(2,'bølgeplader');
/*!40000 ALTER TABLE `roofmaterials` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tilt`
--

LOCK TABLES `tilt` WRITE;
/*!40000 ALTER TABLE `tilt` DISABLE KEYS */;
INSERT INTO `tilt` VALUES (1,'5'),(2,'10'),(3,'15'),(4,'20'),(5,'25'),(6,'30'),(7,'35'),(8,'40'),(9,'45');
/*!40000 ALTER TABLE `tilt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zip` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Bob','bob@gmail.com','Bobpassword','Virum','2830','Bakketoppen 42','user',500);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallcolor`
--

DROP TABLE IF EXISTS `wallcolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallcolor` (
  `idwallcolor` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idwallcolor`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallcolor`
--

LOCK TABLES `wallcolor` WRITE;
/*!40000 ALTER TABLE `wallcolor` DISABLE KEYS */;
INSERT INTO `wallcolor` VALUES (1,'Rød-lys'),(2,'Blå-lys'),(3,'Grøn-lys'),(4,'Gul-lys'),(5,'Orange-lys'),(6,'Brun-lys'),(7,'Grå-lys'),(8,'Rød-mørk'),(9,'Blå-mørk'),(10,'Grøn-mørk'),(11,'Gul-mørk'),(12,'Orange-mørk'),(13,'Brun-mørk'),(14,'Grå-mørk');
/*!40000 ALTER TABLE `wallcolor` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `width`
--

LOCK TABLES `width` WRITE;
/*!40000 ALTER TABLE `width` DISABLE KEYS */;
INSERT INTO `width` VALUES (1,'200'),(2,'225'),(3,'250'),(4,'275'),(5,'300'),(6,'325'),(7,'350'),(8,'375'),(9,'400'),(10,'425'),(11,'450'),(12,'475'),(13,'500'),(14,'525'),(15,'550'),(16,'575'),(17,'600');
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

-- Dump completed on 2020-04-28 14:47:10
