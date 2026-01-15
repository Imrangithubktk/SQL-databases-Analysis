CREATE DATABASE  IF NOT EXISTS `deliverydbs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `deliverydbs`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: deliverydbs
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `car_information`
--

DROP TABLE IF EXISTS `car_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_information` (
  `car_ID` int NOT NULL,
  `car_Name` varchar(100) DEFAULT NULL,
  `car_No` varchar(100) DEFAULT NULL,
  `car_rent` int DEFAULT NULL,
  `Employee_ID` int DEFAULT NULL,
  PRIMARY KEY (`car_ID`),
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `car_information_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_information`
--

LOCK TABLES `car_information` WRITE;
/*!40000 ALTER TABLE `car_information` DISABLE KEYS */;
INSERT INTO `car_information` VALUES (311,'Ferrari','0664',200,111),(312,'corolla','00967',100,112),(313,'hino','00933',200,113),(314,'Ferrari','00964',200,114),(315,'corolla','00967',100,115);
/*!40000 ALTER TABLE `car_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_rent`
--

DROP TABLE IF EXISTS `car_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_rent` (
  `rent_ID` int NOT NULL,
  `rent_city` varchar(100) DEFAULT NULL,
  `trip` varchar(100) DEFAULT NULL,
  `trip_price` int DEFAULT NULL,
  PRIMARY KEY (`rent_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rent`
--

LOCK TABLES `car_rent` WRITE;
/*!40000 ALTER TABLE `car_rent` DISABLE KEYS */;
INSERT INTO `car_rent` VALUES (411,'sharjah','one sided',400),(412,'mussafah','one sided',500),(413,'dubai','two sided',600),(414,'mussafah','two sided',700),(415,'oman','one sided',800);
/*!40000 ALTER TABLE `car_rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_ID` int NOT NULL,
  `customer_Name` varchar(100) DEFAULT NULL,
  `c_Phone_No` varchar(100) DEFAULT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `Profession` varchar(100) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (211,'jhony','009666564','Abu Dhabi','Wholeseller','metric'),(212,'umair','009665577','Dubai','Shopman','graduation'),(213,'sumair','009667483','Musaffah','company','graduation finance'),(214,'guldeep','009665549','Dubai','Shopkeeper','FSC'),(215,'nasari','009666749','Sharjah','Wholeseller','FSC');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_ID` int NOT NULL,
  `Employee_Name` varchar(100) DEFAULT NULL,
  `Phone_No` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Profession` varchar(100) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (111,'Ikram','03469260954','karak','Pickup Driver','FA'),(112,'Umar','03469250954','karak','car Driver','FSC'),(113,'Rasheed','03459460954','karak','bus Driver','FSC'),(114,'Sheraz','03449270954','karak','coach Driver','FA'),(115,'Rahid','03109260854','latamber','Pickup Driver','FA');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'deliverydbs'
--

--
-- Dumping routines for database 'deliverydbs'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-15  9:31:54
