CREATE DATABASE  IF NOT EXISTS `ecommerce_data` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce_data`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_data
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
-- Table structure for table `customer_table`
--

DROP TABLE IF EXISTS `customer_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_table` (
  `cusID` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupdate` datetime DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `segment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_table`
--

LOCK TABLES `customer_table` WRITE;
/*!40000 ALTER TABLE `customer_table` DISABLE KEYS */;
INSERT INTO `customer_table` VALUES (101,'bashir','bashir@gmail.com','2023-01-06 00:00:00','karaK','corporate'),(102,'imran','imran@gmail.com','2023-04-07 00:00:00','karak','homeappliance'),(103,'ikram','ikram1@gmail.com','2024-04-07 00:00:00','kashmir','homeappliance');
/*!40000 ALTER TABLE `customer_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_table`
--

DROP TABLE IF EXISTS `product_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_table` (
  `prodID` int NOT NULL,
  `prdname` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `subcat` varchar(100) DEFAULT NULL,
  `unitcost` float DEFAULT NULL,
  `unitprice` float DEFAULT NULL,
  PRIMARY KEY (`prodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_table`
--

LOCK TABLES `product_table` WRITE;
/*!40000 ALTER TABLE `product_table` DISABLE KEYS */;
INSERT INTO `product_table` VALUES (201,'chair','furniture','chairs',120.2,250.5),(202,'mouse','tech','accessories',15.5,300),(203,'monitor','tech','display',180.8,250);
/*!40000 ALTER TABLE `product_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_table`
--

DROP TABLE IF EXISTS `sale_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_table` (
  `trnID` int NOT NULL,
  `sale_date` datetime DEFAULT NULL,
  `cusID` int DEFAULT NULL,
  `prodID` int DEFAULT NULL,
  `strID` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `discount` float DEFAULT NULL,
  PRIMARY KEY (`trnID`),
  KEY `cusID` (`cusID`),
  KEY `prodID` (`prodID`),
  KEY `strID` (`strID`),
  CONSTRAINT `sale_table_ibfk_1` FOREIGN KEY (`cusID`) REFERENCES `customer_table` (`cusID`),
  CONSTRAINT `sale_table_ibfk_2` FOREIGN KEY (`prodID`) REFERENCES `product_table` (`prodID`),
  CONSTRAINT `sale_table_ibfk_3` FOREIGN KEY (`strID`) REFERENCES `store_table` (`strID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_table`
--

LOCK TABLES `sale_table` WRITE;
/*!40000 ALTER TABLE `sale_table` DISABLE KEYS */;
INSERT INTO `sale_table` VALUES (401,'2024-01-15 00:00:00',101,201,301,20,40),(402,'2023-12-16 00:00:00',102,202,302,40,30),(403,'2022-09-20 00:00:00',103,203,303,30,20);
/*!40000 ALTER TABLE `sale_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_table`
--

DROP TABLE IF EXISTS `store_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_table` (
  `strID` int NOT NULL,
  `strname` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`strID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_table`
--

LOCK TABLES `store_table` WRITE;
/*!40000 ALTER TABLE `store_table` DISABLE KEYS */;
INSERT INTO `store_table` VALUES (301,'hub','north','usa','hamid'),(302,'central','east','uk','mehran'),(303,'plaza','west','japan','zafran');
/*!40000 ALTER TABLE `store_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-15  5:15:03
