CREATE DATABASE  IF NOT EXISTS `schema_dojos_y_ninjas` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `schema_dojos_y_ninjas`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: schema_dojos_y_ninjas
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `dojos`
--

DROP TABLE IF EXISTS `dojos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dojos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dojos`
--

LOCK TABLES `dojos` WRITE;
/*!40000 ALTER TABLE `dojos` DISABLE KEYS */;
INSERT INTO `dojos` VALUES (4,'Richie','2022-09-22 22:35:58','2022-09-22 22:35:58'),(5,'Lulu','2022-09-22 22:36:00','2022-09-22 22:36:00'),(6,'Doris','2022-09-22 22:36:02','2022-09-22 22:36:02'),(7,'San Francisco ','2022-10-03 23:16:40','2022-10-03 23:16:40'),(8,'New York','2022-10-04 21:31:02','2022-10-04 21:31:02'),(9,'Santiago','2022-10-05 00:56:27','2022-10-05 00:56:27');
/*!40000 ALTER TABLE `dojos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ninjas`
--

DROP TABLE IF EXISTS `ninjas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ninjas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `dojo_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ninjas_dojos_idx` (`dojo_id`),
  CONSTRAINT `fk_ninjas_dojos` FOREIGN KEY (`dojo_id`) REFERENCES `dojos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ninjas`
--

LOCK TABLES `ninjas` WRITE;
/*!40000 ALTER TABLE `ninjas` DISABLE KEYS */;
INSERT INTO `ninjas` VALUES (2,'Nami','Reyes',3,'2022-09-22 22:42:09','2022-09-22 22:42:09',4),(3,'Mandi','Reyes',8,'2022-09-22 22:42:40','2022-09-22 22:42:40',4),(4,'Odin','Reyes',8,'2022-09-22 22:44:37','2022-09-22 22:44:37',4),(5,'Chumi','Montecino',9,'2022-09-22 22:47:34','2022-09-22 22:47:34',5),(6,'Negra','Orellana',12,'2022-09-22 22:48:00','2022-09-22 22:48:00',5),(7,'Toromillo','Carrasco',2,'2022-09-22 22:48:24','2022-09-22 22:48:24',5),(8,'Sirenita','Pardo',3,'2022-09-22 22:50:13','2022-09-22 22:50:13',6),(9,'Pirata','Torrejon',1,'2022-09-22 22:50:15','2022-09-22 22:50:15',6),(10,'Bowie','Lopez',4,'2022-09-22 22:50:17','2022-09-22 22:50:17',6),(11,'Layla','',1,'2022-10-04 10:18:07','2022-10-04 10:18:07',4),(12,'Sonic','Sega',3,'2022-10-04 23:17:32','2022-10-04 23:17:32',8),(13,'Carolina','Orellana',28,'2022-10-05 00:05:34','2022-10-05 00:05:34',7),(14,'Carolina','Orellana',28,'2022-10-05 00:06:43','2022-10-05 00:06:43',7),(15,'Ariel','Reyes',28,'2022-10-05 00:08:34','2022-10-05 00:08:34',6),(16,'Michelle','Perez',30,'2022-10-05 00:56:53','2022-10-05 00:56:53',9);
/*!40000 ALTER TABLE `ninjas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-05  1:04:59
