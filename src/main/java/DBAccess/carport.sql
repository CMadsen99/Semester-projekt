-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 161.35.82.220    Database: carport
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `accessories`
--

DROP TABLE IF EXISTS `accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accessories` (
  `idaccessories` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `dimensions` varchar(45) NOT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idaccessories`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories`
--

LOCK TABLES `accessories` WRITE;
/*!40000 ALTER TABLE `accessories` DISABLE KEYS */;
INSERT INTO `accessories` VALUES (1,'plastmo bundskruer','x','3','pakke'),(2,'hulbånd','1x20','2','rulle'),(3,'universal','190 mm','15','stk'),(4,'skruer','4,5 x 60 mm','1','pakke'),(5,'beslagskruer','4,0 x 50 mm','3','pakke'),(6,'bræddebolt','10 x 120 mm','18','stk'),(7,'firkantskiver','40 x 40 x 11 mm','12','stk'),(8,'skruer yderst','4,5 x 70mm','2','pakke'),(9,'skruer inderst','4,5 x 50mm','2','pakke'),(10,'stalddørsgreb','50 mm x 75 mm','1','sæt');
/*!40000 ALTER TABLE `accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodymaterials`
--

DROP TABLE IF EXISTS `bodymaterials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bodymaterials` (
  `idbodymaterials` int(11) NOT NULL AUTO_INCREMENT,
  `material` varchar(45) NOT NULL,
  `width` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  PRIMARY KEY (`idbodymaterials`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodymaterials`
--

LOCK TABLES `bodymaterials` WRITE;
/*!40000 ALTER TABLE `bodymaterials` DISABLE KEYS */;
INSERT INTO `bodymaterials` VALUES (1,'trykimprægneret profil brædder','1','12.5'),(2,'tværgående trykimprægneret brædder','1','12.5');
/*!40000 ALTER TABLE `bodymaterials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodystandartmaterials`
--

DROP TABLE IF EXISTS `bodystandartmaterials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bodystandartmaterials` (
  `idbodystandartmaterials` int(11) NOT NULL AUTO_INCREMENT,
  `standartmaterialsbody` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `width` varchar(45) NOT NULL,
  PRIMARY KEY (`idbodystandartmaterials`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodystandartmaterials`
--

LOCK TABLES `bodystandartmaterials` WRITE;
/*!40000 ALTER TABLE `bodystandartmaterials` DISABLE KEYS */;
INSERT INTO `bodystandartmaterials` VALUES (1,'stolpe','9.7','9.7'),(2,'trykimprænerert træ stern ','1.9','10'),(3,'regler','4.5','9.5'),(4,'spærtræ','4.5','19.5');
/*!40000 ALTER TABLE `bodystandartmaterials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectlist`
--

DROP TABLE IF EXISTS `collectlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collectlist` (
  `idcollectlist` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `materialid` int(11) NOT NULL,
  `materialname` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `width` varchar(45) NOT NULL,
  `length` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`idcollectlist`),
  KEY `orderid_idx` (`orderid`),
  CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `orders` (`idorders`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectlist`
--

LOCK TABLES `collectlist` WRITE;
/*!40000 ALTER TABLE `collectlist` DISABLE KEYS */;
INSERT INTO `collectlist` VALUES (1,3,1,'trykimprægneret profil brædder','12.5','1.0',350,40),(2,3,1,'trykimprægneret profil brædder','12.5','1.0',375,20);
/*!40000 ALTER TABLE `collectlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `idcolor` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcolor`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Rød-lys'),(2,'Blå-lys'),(3,'Grøn-lys'),(4,'Gul-lys'),(5,'Orange-lys'),(6,'Brun-lys'),(7,'Grå-lys'),(8,'Rød-mørk'),(9,'Blå-mørk'),(10,'Grøn-mørk'),(11,'Gul-mørk'),(12,'Orange-mørk'),(13,'Brun-mørk'),(14,'Grå-mørk');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `idorders` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `rooftype` tinyint(12) NOT NULL,
  `roofangle` int(11) DEFAULT NULL,
  `shed` tinyint(12) NOT NULL,
  `shedwidth` tinyint(12) DEFAULT NULL,
  `shedlength` int(11) DEFAULT NULL,
  `colorroofid` int(11) NOT NULL,
  `colorwallid` int(11) NOT NULL,
  `colorpillarid` int(11) NOT NULL,
  PRIMARY KEY (`idorders`),
  KEY `iduser_idx` (`userid`),
  KEY `colorpillarid_idx` (`colorroofid`,`colorwallid`,`colorpillarid`),
  KEY `colorwallid_idx` (`colorwallid`),
  KEY `colorpillarid_idx1` (`colorpillarid`),
  CONSTRAINT `colorpillarid` FOREIGN KEY (`colorpillarid`) REFERENCES `colors` (`idcolor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `colorroofid` FOREIGN KEY (`colorroofid`) REFERENCES `colors` (`idcolor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `colorwallid` FOREIGN KEY (`colorwallid`) REFERENCES `colors` (`idcolor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3,3,250,350,375,1,15,0,0,0,3,10,7);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Bob','bob@gmail.com','Bobpassword','Virum','2830','Bakketoppen 42','customer',500),(2,'admin','admin@admin.dk','1234','admin','1234','admin','admin',0),(3,'test','test@test.dk','1234','test','1234','test','customer',0),(4,'jacob','simonsen.jac@icloud.com','1234','Snekkersten','3070','Parkvej','customer',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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

-- Dump completed on 2020-05-07 10:56:42
