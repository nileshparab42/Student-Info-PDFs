-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: studentinfo
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'santosh@gmail.com','5678');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdinfo`
--

DROP TABLE IF EXISTS `stdinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stdinfo` (
  `Rollno` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(45) NOT NULL,
  `Lname` varchar(45) NOT NULL,
  `Parphno` varchar(45) DEFAULT NULL,
  `Phno` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Bloodgrp` varchar(45) DEFAULT NULL,
  `Height` varchar(45) DEFAULT NULL,
  `Weight` varchar(45) DEFAULT NULL,
  `Ldata` varchar(1000) DEFAULT NULL,
  `Course` varchar(45) DEFAULT NULL,
  `Dob` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Rollno`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdinfo`
--

LOCK TABLES `stdinfo` WRITE;
/*!40000 ALTER TABLE `stdinfo` DISABLE KEYS */;
INSERT INTO `stdinfo` VALUES (10,'Sai','Thakur','8966688845','9089078675','sai@gmail.com','9999','Room No. 10, Dombivli(W), Mumbai-400130','A positive','6ft. 1inches','67Kg','Third Year','Mechanical Engineering','23 Dec 2001'),(11,'Sumit','Khatri','9076589567','8979745689','sumit@gmail.com','8887','Room No. 70, Ulhasnagar(W), Mumbai-400020','B positive','5ft. 2inches','60Kg','Third Year','Civil Engineering','21 Dec 2002'),(21,'Nilesh','Parab','7039352963','9082286717','nileshparab5623@gmail.com','1234','Room No. 22, Bhandup(W), Mumbai-400087','B positive','5ft. 6inches','63Kg','Second Year','Computer Engineering','10 Jan 2002'),(22,'Sandesh','Parabhane','7563436754','9874575432','sandesh@gmail.com','1234','Room No. 98, Badra(W), Mumbai-400097','A negative','5ft. 5inches','65Kg','Third Year','Mechanical Engineering','21 June 2002'),(23,'Prathamesh','Dalvi','9873456789','9563434234','prathamesh@gmail.com','4567','Room No. 31, Bhandup(W), Mumbai-400078','O positive','5ft. 1inches','75Kg','Second Year','Civil Engineering','20 Feb 2002'),(24,'Pratik','Deshpande','7903456234','9087689234','pratik66@gmail.com','7838','Room No. 20, Bhandup(W), Mumbai-400078','A positive','5ft. 4inches','60Kg','Second Year','Computer Engineering','25 May 2002'),(25,'Askan','Ladji','6735678654','6785435656','ask@gmail.com','6767','Room No. 45, Andheri(W), Mumbai-400081','B negative','5ft. 3inches','58Kg','Third Year','Mechanical Engineering','12 Jan 2002'),(26,'Prajwal','Shinde','9078907876','9087235612','prajwal@gmail.com','5656','Room No. 90, Kurla(W), Mumbai-400056','A negative','5ft. 5inches','61Kg','First Year','Computer Engineering','15 June 2002'),(27,'Sakshi','Patil','9765489076','7890765434','sakshi@gmail.com','7878','Room No. 45, Diva(W), Mumbai-400044','B positive','5ft. 1inches','55Kg','Second Year','Civil Engineering','24 Dec 2001'),(28,'Neha','Jadhav','9876789076','8976546789','neha@gmail.com','8888','Room No. 30, Mulund(W), Mumbai-400071','O negative','5ft. 2inches','53Kg','First Year','Computer Engineering','11 May 2002'),(29,'Rohit','Shirke','9008876887','8989076787','rohit@gmail.com','9090','Room No. 61, Worali(E), Mumbai-400080','O positive','5ft. 2inches','60Kg','Third Year','Civil Engineering','23 Dec 2001');
/*!40000 ALTER TABLE `stdinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-07 18:47:34
