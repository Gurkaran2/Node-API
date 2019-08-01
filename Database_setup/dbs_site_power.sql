CREATE DATABASE  IF NOT EXISTS `dbs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbs`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: dbs
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `site_power`
--

DROP TABLE IF EXISTS `site_power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `site_power` (
  `id` int(11) NOT NULL,
  `power` decimal(13,4) DEFAULT NULL,
  `dsu_id` int(11) DEFAULT NULL,
  `time_sent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dsus.id_idx` (`dsu_id`),
  CONSTRAINT `dsus.id` FOREIGN KEY (`dsu_id`) REFERENCES `dsus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_power`
--

LOCK TABLES `site_power` WRITE;
/*!40000 ALTER TABLE `site_power` DISABLE KEYS */;
INSERT INTO `site_power` VALUES (1,116.0000,1,'2019-07-05 01:47:42'),(2,893.0000,1,'2019-07-05 01:47:42'),(3,117.0000,2,'2019-07-05 01:47:42'),(4,907.0000,2,'2019-07-05 01:47:42'),(5,180.0000,3,'2019-07-05 01:47:42');
/*!40000 ALTER TABLE `site_power` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-05  1:47:42
