-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sup_agro
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) unsigned DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,'vehicle','Record was updated','App\\Models\\vehicle','updated',10,NULL,NULL,'{\"attributes\":{\"id\":10,\"vehicle_no\":\"PB-10FV-0757\",\"vehicle_type\":\"VLC\",\"vehicle_code\":\"0757\",\"created_at\":\"2025-05-22T10:30:49.000000Z\",\"updated_at\":\"2025-06-07T10:15:10.000000Z\"},\"old\":{\"id\":10,\"vehicle_no\":\"PB-10FV-0757\",\"vehicle_type\":\"VLC\",\"vehicle_code\":\"757\",\"created_at\":\"2025-05-22T10:30:49.000000Z\",\"updated_at\":\"2025-05-22T10:30:49.000000Z\"}}',NULL,'2025-06-07 10:15:10','2025-06-07 10:15:10'),(2,'vehicle','Record was updated','App\\Models\\vehicle','updated',11,NULL,NULL,'{\"attributes\":{\"id\":11,\"vehicle_no\":\"PB-10FF-0394\",\"vehicle_type\":\"VLC\",\"vehicle_code\":\"0394\",\"created_at\":\"2025-05-22T10:31:06.000000Z\",\"updated_at\":\"2025-06-07T10:15:16.000000Z\"},\"old\":{\"id\":11,\"vehicle_no\":\"PB-10FF-0394\",\"vehicle_type\":\"VLC\",\"vehicle_code\":\"394\",\"created_at\":\"2025-05-22T10:31:06.000000Z\",\"updated_at\":\"2025-05-22T10:31:06.000000Z\"}}',NULL,'2025-06-07 10:15:16','2025-06-07 10:15:16'),(3,'vehicle','Record was updated','App\\Models\\vehicle','updated',16,NULL,NULL,'{\"attributes\":{\"id\":16,\"vehicle_no\":\"PB-10FV-0168\",\"vehicle_type\":\"VLC\",\"vehicle_code\":\"0168\",\"created_at\":\"2025-05-22T10:32:45.000000Z\",\"updated_at\":\"2025-06-07T10:15:24.000000Z\"},\"old\":{\"id\":16,\"vehicle_no\":\"PB-10FV-0168\",\"vehicle_type\":\"VLC\",\"vehicle_code\":\"168\",\"created_at\":\"2025-05-22T10:32:45.000000Z\",\"updated_at\":\"2025-05-22T10:32:45.000000Z\"}}',NULL,'2025-06-07 10:15:24','2025-06-07 10:15:24');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_master`
--

DROP TABLE IF EXISTS `driver_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_master` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `driver_master_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_master`
--

LOCK TABLES `driver_master` WRITE;
/*!40000 ALTER TABLE `driver_master` DISABLE KEYS */;
INSERT INTO `driver_master` VALUES (1,'Avtar Singh','2025-05-19 09:33:30','2025-05-19 09:33:30'),(2,'Raju','2025-05-20 11:14:31','2025-05-20 11:14:31'),(3,'Harpreet Singh','2025-05-22 11:12:43','2025-05-22 11:12:43'),(4,'Kulwinder Singh','2025-05-22 11:12:52','2025-05-22 11:12:52'),(5,'Raju-II','2025-05-22 11:13:11','2025-05-22 11:13:11'),(6,'Dalwinder','2025-05-22 11:15:12','2025-05-22 11:15:12'),(7,'Bhagi','2025-05-22 11:15:25','2025-05-22 11:15:25'),(8,'Baljeet Singh','2025-05-22 11:15:37','2025-05-22 11:15:37'),(9,'Manna','2025-05-22 11:15:47','2025-05-22 11:15:47'),(10,'Jatinder Singh','2025-05-22 11:15:59','2025-05-22 11:15:59'),(11,'Zindi','2025-05-22 11:16:05','2025-05-22 11:16:05'),(12,'Gurmukh Singh','2025-05-22 11:16:13','2025-05-22 11:16:13'),(13,'Chani','2025-05-22 11:16:17','2025-05-22 11:16:17'),(14,'Pawan','2025-05-24 04:29:27','2025-05-24 04:29:27'),(15,'Pala','2025-05-26 11:08:55','2025-05-26 11:08:55'),(16,'Daljit Singh','2025-07-25 10:52:52','2025-07-25 10:52:52'),(17,'Jabra','2025-07-25 10:53:12','2025-07-25 10:53:12');
/*!40000 ALTER TABLE `driver_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound`
--

DROP TABLE IF EXISTS `inbound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `vehicle_id` bigint(20) unsigned NOT NULL,
  `outbound_id` bigint(20) unsigned NOT NULL,
  `meter_reading` int(11) NOT NULL,
  `sample_no` int(11) NOT NULL,
  `sample_person` bigint(20) unsigned NOT NULL,
  `dip` varchar(255) NOT NULL,
  `supervisior_id` bigint(20) unsigned NOT NULL,
  `seal_up` int(11) NOT NULL,
  `seal_down` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inbound_vehicle_id_foreign` (`vehicle_id`),
  KEY `inbound_outbound_id_foreign` (`outbound_id`),
  KEY `inbound_sample_person_foreign` (`sample_person`),
  KEY `inbound_supervisior_id_foreign` (`supervisior_id`),
  CONSTRAINT `inbound_outbound_id_foreign` FOREIGN KEY (`outbound_id`) REFERENCES `outbound` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inbound_sample_person_foreign` FOREIGN KEY (`sample_person`) REFERENCES `tester_master` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inbound_supervisior_id_foreign` FOREIGN KEY (`supervisior_id`) REFERENCES `supervisior` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inbound_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_master` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound`
--

LOCK TABLES `inbound` WRITE;
/*!40000 ALTER TABLE `inbound` DISABLE KEYS */;
INSERT INTO `inbound` VALUES (8,'2025-05-21',18,17,910858,3,14,'20',1,401,501,1200,'','success','2025-05-22 11:32:17','2025-05-22 11:32:17'),(9,'2025-05-21',15,14,241009,4,14,'30',1,501,601,2200,'','success','2025-05-22 11:33:11','2025-05-22 11:33:11'),(10,'2025-05-21',14,13,336920,5,1,'40',1,303,305,3300,'','success','2025-05-22 11:33:51','2025-05-22 11:33:51'),(11,'2025-05-21',17,16,42792,6,14,'88',1,555,666,3250,'','success','2025-05-22 11:34:43','2025-05-22 11:34:43'),(12,'2025-05-21',13,12,234195,7,1,'58',1,111,222,333,'','success','2025-05-22 11:36:08','2025-07-24 07:52:50'),(13,'2025-05-21',12,11,468792,8,14,'20',1,333,444,2280,'','success','2025-05-22 11:36:46','2025-05-22 11:36:46'),(14,'2025-05-21',21,20,463600,9,14,'55',1,222,333,2850,'','success','2025-05-22 11:37:25','2025-05-22 11:37:25'),(15,'2025-05-21',10,9,357519,10,14,'56',1,14188,14189,6190,'','success','2025-05-22 11:38:39','2025-05-22 11:38:39'),(16,'2025-05-21',16,15,340118,11,14,'70',1,14129,14130,3805,'','success','2025-05-22 11:39:34','2025-05-22 11:39:34'),(17,'2025-05-21',20,19,494412,12,14,'70',1,14283,14284,3440,'','success','2025-05-22 11:40:15','2025-05-22 11:40:15'),(18,'2025-05-21',19,18,148427,13,14,'60',1,14186,14187,4270,'','success','2025-05-22 11:40:54','2025-05-22 11:40:54'),(19,'2025-05-21',11,10,741219,14,14,'90',1,14694,14695,5155,'','success','2025-05-22 11:41:32','2025-05-22 11:41:32'),(20,'2025-05-21',22,21,437665,2,14,'10',1,201,202,3850,'','success','2025-05-23 04:24:02','2025-05-23 04:24:02'),(21,'2025-05-22',22,22,438095,1,14,'22',1,14320,14321,2710,'','success','2025-05-24 08:42:58','2025-05-24 08:42:58'),(22,'2025-05-22',23,24,652607,2,14,'50',1,14243,14244,3545,'','success','2025-05-24 08:43:48','2025-05-24 08:43:48'),(23,'2025-05-22',18,32,911250,3,14,'70',1,14318,14319,3215,'','success','2025-05-24 08:44:27','2025-05-24 08:44:27'),(24,'2025-05-22',20,31,494740,4,14,'60',1,14418,14419,4165,'','success','2025-05-24 08:45:04','2025-05-24 08:45:04'),(25,'2025-05-22',14,23,337309,5,14,'50',1,14316,14317,3585,'','success','2025-05-24 08:45:43','2025-05-24 08:45:43'),(26,'2025-05-22',12,28,469203,6,14,'80',1,14419,14420,3255,'','success','2025-05-24 08:46:19','2025-05-24 08:46:19'),(27,'2025-05-22',13,34,234555,7,14,'70',1,14351,14352,4430,'','success','2025-05-24 08:47:57','2025-05-24 08:47:57'),(28,'2025-05-22',17,25,43172,8,14,'8',1,14429,14430,5280,'','success','2025-05-24 08:48:35','2025-05-24 08:48:35'),(29,'2025-05-22',11,29,741550,9,14,'80',1,14354,14355,4870,'','success','2025-05-24 08:49:31','2025-05-24 08:49:31'),(30,'2025-05-22',10,27,357820,10,14,'10',1,14273,14274,7175,'','success','2025-05-24 08:50:09','2025-05-24 08:50:09'),(31,'2025-05-22',21,33,463956,11,14,'80',1,14271,14272,6415,'','success','2025-05-24 08:50:54','2025-05-24 08:50:54'),(32,'2025-05-22',16,26,340478,12,14,'60',1,14279,14280,5360,'','success','2025-05-24 08:51:43','2025-05-24 08:51:43'),(33,'2025-05-22',19,30,148427,13,14,'80',1,14416,14417,5560,'','success','2025-05-24 08:53:18','2025-05-24 08:53:18'),(34,'2025-05-23',24,35,152295,3,14,'30',1,14279,14280,4645,'','success','2025-05-24 12:27:18','2025-05-24 12:27:18'),(35,'2025-05-23',23,42,652806,4,14,'10',1,14243,14244,4100,'','success','2025-05-24 12:28:57','2025-05-24 12:28:57'),(36,'2025-05-23',20,44,495087,5,14,'55',1,14418,14419,2650,'','success','2025-05-24 12:29:39','2025-05-24 12:29:39'),(37,'2025-05-23',18,47,911632,6,14,'65',1,14318,14319,2830,'','success','2025-05-24 12:30:26','2025-05-24 12:30:26'),(38,'2025-05-23',21,45,464247,7,14,'57',1,14271,14272,5120,'','success','2025-05-26 10:16:19','2025-05-26 10:16:19'),(39,'2025-05-23',10,41,358093,8,14,'75',1,14273,14274,6125,'','success','2025-05-26 10:17:04','2025-05-26 10:17:04'),(40,'2025-05-23',11,46,741878,9,14,'39',1,14354,14355,4980,'','success','2025-05-26 10:17:47','2025-05-26 10:17:47'),(41,'2025-05-23',14,43,337709,10,14,'48',1,14316,14317,2795,'','success','2025-05-26 10:18:41','2025-05-26 10:18:41'),(42,'2025-05-23',12,39,469589,11,14,'48',1,14419,14420,2875,'','success','2025-05-26 10:19:13','2025-05-26 10:19:13'),(43,'2025-05-23',13,37,234919,12,14,'87',1,14351,14352,4440,'','success','2025-05-26 10:19:43','2025-05-26 10:19:43'),(44,'2025-05-23',17,40,43549,13,1,'37',1,14429,14430,3890,'','success','2025-05-26 10:20:28','2025-05-26 10:20:28'),(45,'2025-05-23',22,36,438530,14,14,'48',1,14320,14321,4735,'','success','2025-05-26 10:21:29','2025-05-26 10:21:29'),(46,'2025-05-23',19,38,149220,15,14,'50',1,14416,14417,4875,'','success','2025-05-26 10:22:06','2025-05-26 10:22:06'),(47,'2025-05-24',24,52,152450,2,14,'30',1,14851,14852,3035,'','success','2025-05-26 11:15:44','2025-05-26 11:15:44'),(48,'2025-05-24',20,56,495399,3,14,'50',1,14140,13406,3705,'','success','2025-05-26 11:16:52','2025-05-26 11:16:52'),(49,'2025-05-24',23,60,653065,4,14,'35',1,14423,14424,3510,'','success','2025-05-26 11:17:31','2025-05-26 11:17:31'),(50,'2025-05-24',11,58,742219,5,14,'39',1,13425,13426,5025,'','success','2025-05-26 11:18:09','2025-05-26 11:18:09'),(51,'2025-05-24',14,49,338104,6,14,'35',1,14138,14139,3590,'','success','2025-05-26 11:19:00','2025-05-26 11:19:00'),(52,'2025-05-24',17,50,43931,7,14,'75',1,13409,13410,4075,'','success','2025-05-26 11:20:17','2025-05-26 11:20:17'),(53,'2025-05-24',12,55,469964,8,14,'75',1,13407,13408,3075,'','success','2025-05-26 11:20:52','2025-05-26 11:20:52'),(54,'2025-05-24',18,57,912024,9,14,'24',1,14421,14422,4100,'','success','2025-05-26 11:21:34','2025-05-26 11:21:34'),(55,'2025-05-24',13,48,235276,10,14,'76',1,14185,14186,4355,'','success','2025-05-26 11:22:03','2025-05-26 11:22:03'),(56,'2025-05-24',10,54,358386,11,14,'83',1,13427,13428,7260,'','success','2025-05-26 11:22:34','2025-05-26 11:22:34'),(57,'2025-05-24',21,59,464601,12,14,'65',1,13429,13430,6565,'','success','2025-05-26 11:23:09','2025-05-26 11:23:09'),(58,'2025-05-24',19,51,149627,13,14,'64',1,13421,13422,5640,'','success','2025-05-26 11:23:47','2025-05-26 11:23:47'),(59,'2025-05-24',22,53,439000,14,14,'65',1,14423,14424,5565,'','success','2025-05-26 11:24:29','2025-05-26 11:24:29'),(61,'2025-05-25',16,71,340738,1,14,'50',1,13417,13418,4235,'','success','2025-05-27 11:53:21','2025-05-27 11:53:21'),(62,'2025-05-25',20,72,495646,2,14,'50',1,13413,13414,3400,'','success','2025-05-27 11:53:54','2025-05-27 11:53:54'),(63,'2025-05-25',12,62,470278,3,14,'70',1,13437,13438,3650,'','success','2025-05-27 11:54:25','2025-05-27 11:54:25'),(64,'2025-05-25',13,64,235486,4,14,'80',1,13441,13442,5390,'','success','2025-05-27 11:55:18','2025-05-27 11:55:18'),(65,'2025-05-25',24,61,153080,5,14,'50',1,13401,13402,5205,'','success','2025-05-27 11:55:48','2025-05-27 11:55:48'),(66,'2025-05-25',15,63,241847,6,14,'80',1,13411,13412,4685,'','success','2025-05-27 11:56:37','2025-05-27 11:56:37'),(67,'2025-05-25',18,65,912402,7,14,'10',1,13439,13440,5985,'','success','2025-05-27 11:57:11','2025-05-27 11:57:11'),(68,'2025-05-25',23,70,653421,8,14,'60',1,13415,13416,3200,'','success','2025-05-27 11:57:49','2025-05-27 11:57:49'),(69,'2025-05-25',22,66,439450,9,14,'70',1,13449,13450,4555,'','success','2025-05-27 11:58:21','2025-05-27 11:58:21'),(70,'2025-05-25',11,67,742629,10,14,'80',1,13431,13432,5400,'','success','2025-05-27 11:58:54','2025-05-27 11:58:54'),(71,'2025-05-25',21,68,465047,11,14,'70',1,13445,13446,4795,'','success','2025-05-27 11:59:35','2025-05-27 11:59:35'),(72,'2025-05-25',19,69,149936,12,14,'60',1,13447,13448,2540,'','success','2025-05-27 12:00:25','2025-05-27 12:00:25'),(73,'2025-05-26',20,80,495922,2,14,'50',1,13459,13460,3535,'','success','2025-05-28 04:23:06','2025-05-28 04:23:06'),(74,'2025-05-26',16,76,341007,3,14,'80',1,13419,13420,6135,'','success','2025-05-28 04:23:41','2025-05-28 04:23:41'),(75,'2025-05-26',24,73,153525,4,14,'50',1,13453,13554,4285,'','success','2025-05-28 04:24:15','2025-05-28 04:24:15'),(76,'2025-05-26',11,77,743044,5,14,'60',1,13467,13468,4295,'','success','2025-05-28 04:25:14','2025-05-28 04:25:14'),(77,'2025-05-26',15,83,242262,6,14,'80',1,13404,13405,4765,'','success','2025-05-28 04:25:59','2025-05-28 04:25:59'),(78,'2025-05-26',17,74,44231,7,14,'73',1,13435,13434,5770,'','success','2025-05-28 04:26:46','2025-05-28 04:26:46'),(79,'2025-05-26',18,75,912778,8,14,'69',1,13457,13458,5520,'','success','2025-05-28 04:27:22','2025-05-28 04:27:22'),(80,'2025-05-26',23,78,653785,9,14,'56',1,13463,13464,3495,'','success','2025-05-28 04:27:55','2025-05-28 04:27:55'),(81,'2025-05-26',22,81,439910,10,14,'48',1,13451,13452,4005,'','success','2025-05-28 04:28:34','2025-05-28 04:28:34'),(82,'2025-05-26',13,79,235747,11,14,'87',1,13469,13470,7220,'','success','2025-05-28 04:29:05','2025-05-28 04:29:05'),(83,'2025-05-26',21,82,465494,12,14,'74',1,13465,13466,5745,'','success','2025-05-28 04:29:50','2025-05-28 04:29:50'),(84,'2025-05-26',19,84,150250,13,14,'50',1,13455,13456,3575,'','success','2025-05-28 04:30:23','2025-05-28 04:30:23'),(85,'2025-05-27',16,85,341186,1,14,'68',1,13001,13002,4495,'','success','2025-05-28 07:48:02','2025-05-28 07:48:02'),(86,'2025-05-27',13,90,235912,2,14,'87',1,13021,13022,4880,'','success','2025-05-28 07:49:21','2025-05-28 07:49:21'),(87,'2025-05-27',20,94,496168,3,14,'86',1,13011,13012,3530,'','success','2025-05-28 07:50:05','2025-05-28 07:50:05'),(88,'2025-05-27',24,88,153970,4,14,'74',1,13013,13014,4575,'','success','2025-05-28 07:50:39','2025-05-28 07:50:39'),(89,'2025-05-27',15,86,242660,79,14,'91',1,13005,13006,4295,'','success','2025-05-28 07:51:19','2025-05-28 07:51:19'),(90,'2025-05-27',17,96,44527,6,14,'73',1,13015,13016,4380,'','success','2025-05-28 07:51:53','2025-05-28 07:51:53'),(91,'2025-05-27',11,89,743456,7,14,'7',1,13023,13024,3595,'','success','2025-05-28 07:52:20','2025-05-28 07:52:20'),(92,'2025-05-27',18,87,913154,8,14,'69',1,13007,13008,5660,'','success','2025-05-28 07:52:48','2025-05-28 07:52:48'),(93,'2025-05-27',23,91,654152,56,14,'39',1,13017,13018,2390,'','success','2025-05-28 07:53:17','2025-05-28 07:53:17'),(94,'2025-05-27',12,93,470738,10,14,'64',1,13461,13462,3750,'','success','2025-05-28 07:53:48','2025-05-28 07:53:48'),(95,'2025-05-27',21,92,465931,11,14,'74',1,13019,13020,4150,'','success','2025-05-28 07:54:25','2025-05-28 07:54:25'),(96,'2025-05-27',19,95,150570,12,14,'50',1,13009,13010,3620,'','success','2025-05-28 07:55:07','2025-05-28 07:55:07'),(97,'2025-05-28',20,106,496461,2,14,'86',1,13035,13036,3960,'','success','2025-05-31 09:41:59','2025-05-31 09:41:59'),(98,'2025-05-28',15,108,243052,3,14,'91',1,13033,13034,4330,'','success','2025-05-31 09:42:42','2025-05-31 09:42:42'),(99,'2025-05-28',16,97,341446,4,14,'68',1,13045,13046,4750,'','success','2025-05-31 09:43:14','2025-05-31 09:43:14'),(100,'2025-05-28',17,98,44831,5,14,'73',1,13043,13044,4400,'','success','2025-05-31 09:44:29','2025-05-31 09:44:29'),(101,'2025-05-28',24,99,154415,6,14,'74',1,13039,13040,4725,'','success','2025-05-31 09:45:04','2025-05-31 09:45:04'),(102,'2025-05-28',23,105,654502,7,14,'48',1,13031,13032,3485,'','success','2025-05-31 09:45:40','2025-05-31 09:45:40'),(103,'2025-05-28',19,107,150880,8,14,'76',1,13037,13038,2760,'','success','2025-05-31 09:46:46','2025-05-31 09:46:46'),(104,'2025-05-28',22,102,440370,9,14,'41',1,13003,13004,4100,'','success','2025-05-31 09:47:48','2025-05-31 09:47:48'),(105,'2025-05-28',11,104,743877,10,14,'80',1,13053,13054,5155,'','success','2025-05-31 09:48:45','2025-05-31 09:48:45'),(106,'2025-05-28',12,101,471071,11,14,'85',1,13041,13042,5855,'','success','2025-05-31 09:49:20','2025-05-31 09:49:20'),(107,'2025-05-28',21,103,466371,12,14,'51',1,13049,13050,4915,'','success','2025-05-31 09:49:54','2025-05-31 09:49:54'),(108,'2025-05-28',13,100,236168,13,14,'61',1,13051,13052,7670,'','success','2025-05-31 09:50:28','2025-05-31 09:50:28'),(109,'2025-05-29',14,111,338308,1,14,'48',1,13489,13490,3840,'','success','2025-05-31 10:12:58','2025-05-31 10:12:58'),(110,'2025-05-29',20,115,496707,2,14,'86',1,13057,13058,3175,'','success','2025-05-31 10:13:26','2025-05-31 10:13:26'),(111,'2025-05-29',17,110,45130,3,14,'69',1,13063,13064,4690,'','success','2025-05-31 10:14:39','2025-05-31 10:14:39'),(112,'2025-05-29',18,118,913529,4,14,'69',1,13047,13048,4000,'','success','2025-05-31 10:17:41','2025-05-31 10:17:41'),(113,'2025-05-29',15,112,243455,12,14,'79',1,13059,13060,4540,'','success','2025-05-31 10:18:42','2025-05-31 10:18:42'),(114,'2025-05-29',11,114,744293,39,14,'45',1,13073,13074,4505,'','success','2025-05-31 10:19:11','2025-05-31 10:19:11'),(115,'2025-05-29',24,109,154860,7,14,'42',1,13065,13066,4230,'','success','2025-05-31 10:19:47','2025-05-31 10:19:47'),(116,'2025-05-29',23,116,654866,8,14,'29',1,13067,13068,2915,'','success','2025-05-31 10:20:29','2025-05-31 10:20:29'),(117,'2025-05-29',22,119,440816,48,14,'85',1,13071,13072,3850,'','success','2025-05-31 10:20:58','2025-05-31 10:20:58'),(118,'2025-05-29',13,113,236440,87,14,'47',1,13079,13080,8470,'','success','2025-05-31 10:21:37','2025-05-31 10:21:37'),(119,'2025-05-29',19,120,151216,11,14,'53',1,13069,13070,4530,'','success','2025-05-31 10:22:08','2025-05-31 10:22:08'),(120,'2025-05-29',21,117,466812,12,14,'60',1,13077,13078,5060,'','success','2025-05-31 10:22:41','2025-05-31 10:22:41'),(121,'2025-05-30',18,130,913905,4,14,'88',1,13097,13098,3880,'','success','2025-05-31 10:33:06','2025-05-31 10:33:06'),(122,'2025-05-30',20,127,496978,5,14,'61',1,13085,13086,3615,'','success','2025-05-31 10:33:37','2025-05-31 10:33:37'),(123,'2025-05-30',11,129,744711,6,14,'57',1,13081,13082,4585,'','success','2025-05-31 10:34:18','2025-05-31 10:34:18'),(124,'2025-05-30',15,121,243870,7,14,'89',1,13095,13096,4880,'','success','2025-05-31 10:34:47','2025-05-31 10:34:47'),(125,'2025-05-30',23,131,655235,8,14,'50',1,13099,130100,3360,'','success','2025-05-31 10:35:45','2025-05-31 10:35:45'),(126,'2025-05-30',16,126,341757,9,14,'60',1,13061,13062,4915,'','success','2025-05-31 10:36:16','2025-05-31 10:36:16'),(127,'2025-05-30',19,123,151527,10,14,'55',1,13091,13092,2795,'','success','2025-05-31 10:36:49','2025-05-31 10:36:49'),(128,'2025-05-30',24,124,155315,11,14,'82',1,13093,13094,4650,'','success','2025-05-31 10:37:50','2025-05-31 10:37:50'),(129,'2025-05-30',22,125,441272,12,14,'76',1,13087,13088,4145,'','success','2025-05-31 10:38:24','2025-05-31 10:38:24'),(130,'2025-05-30',21,128,467251,13,14,'60',1,13083,13084,4850,'','success','2025-05-31 10:38:57','2025-05-31 10:38:57'),(131,'2025-05-30',13,132,236693,14,14,'111',1,13481,13482,8625,'','success','2025-05-31 10:39:29','2025-05-31 10:39:29'),(132,'2025-05-30',17,122,45422,15,14,'84',1,13089,13090,4610,'','success','2025-05-31 10:40:00','2025-05-31 10:40:00'),(133,'2025-05-31',16,140,341936,2,14,'20',1,13285,13286,2860,'','success','2025-06-02 07:49:03','2025-06-02 07:49:03'),(134,'2025-05-31',20,142,497226,3,14,'49',1,13273,13274,3110,'','success','2025-06-02 07:49:53','2025-06-02 07:49:53'),(135,'2025-05-31',18,143,914290,4,14,'42',1,13271,13272,3850,'','success','2025-06-02 07:50:42','2025-06-02 07:50:42'),(136,'2025-05-31',10,139,358820,5,14,'29',1,13299,13299,13300,'','success','2025-06-02 07:51:46','2025-06-02 07:51:46'),(137,'2025-05-31',13,137,236879,6,14,'68',1,13295,13296,7620,'','success','2025-06-02 07:52:26','2025-06-02 07:52:26'),(138,'2025-05-31',15,133,244264,7,14,'42',1,13281,13282,4400,'','success','2025-06-02 07:53:06','2025-06-02 07:53:06'),(139,'2025-05-31',17,134,45720,8,14,'57',1,13297,13298,5080,'','success','2025-06-02 07:53:39','2025-06-02 07:53:39'),(140,'2025-05-31',23,138,655599,9,14,'55',1,13283,13284,2740,'','success','2025-06-02 07:55:02','2025-06-02 07:55:02'),(141,'2025-05-31',22,144,441735,10,14,'41',1,13291,13292,3900,'','success','2025-06-02 07:55:46','2025-06-02 07:55:46'),(142,'2025-05-31',24,136,155775,11,14,'57',1,13289,13290,4675,'','success','2025-06-02 07:57:20','2025-06-02 07:57:20'),(143,'2025-05-31',21,141,467691,12,14,'76',1,13293,13294,5020,'','success','2025-06-02 07:58:03','2025-06-02 07:58:03'),(144,'2025-05-31',19,135,151863,13,14,'51',1,13287,13288,4325,'','success','2025-06-02 07:58:43','2025-06-02 07:58:43'),(145,'2025-07-14',11,155,755011,1,14,'54',1,2669,2670,2235,NULL,'success','2025-07-16 04:54:17','2025-07-16 05:10:44'),(146,'2025-07-14',18,152,928257,2,14,'42',1,2661,2662,3180,NULL,'success','2025-07-16 04:54:57','2025-07-16 05:11:55'),(147,'2025-07-14',12,164,484273,3,14,'62',1,2108,2109,1795,NULL,'success','2025-07-16 04:55:29','2025-07-16 05:12:45'),(148,'2025-07-14',14,149,351580,4,14,'48',1,2663,2664,3210,NULL,'success','2025-07-16 04:56:05','2025-07-16 08:35:41'),(149,'2025-07-14',22,154,456506,5,14,'67',1,2623,2624,3040,NULL,'success','2025-07-16 04:56:41','2025-07-16 08:36:40'),(150,'2025-07-14',23,150,667258,6,14,'56',1,2129,2130,2530,NULL,'success','2025-07-16 04:57:14','2025-07-16 08:37:15'),(151,'2025-07-14',13,153,246908,7,14,'47',1,2655,2656,3010,NULL,'success','2025-07-16 04:57:45','2025-07-16 08:37:53'),(152,'2025-07-14',10,158,371655,8,14,'64',1,2667,2668,3505,NULL,'success','2025-07-16 04:58:12','2025-07-16 08:38:29'),(153,'2025-07-14',20,156,505032,9,14,'54',1,2110,2111,2735,NULL,'success','2025-07-16 04:58:50','2025-07-16 08:39:05'),(154,'2025-07-14',16,151,348789,10,14,'78',1,2106,2107,7825,NULL,'success','2025-07-16 05:00:01','2025-07-16 08:39:56'),(155,'2025-07-14',19,157,164860,11,14,'50',1,2127,2128,3845,NULL,'success','2025-07-16 05:00:36','2025-07-17 09:11:31'),(156,'2025-07-19',12,166,3000,1,15,'50',1,201,202,4500,NULL,'success','2025-07-19 05:24:57','2025-07-23 10:18:23'),(157,'2025-07-21',15,168,259050,1,14,'43',1,2913,2914,2980,NULL,'success','2025-07-22 11:36:26','2025-07-23 10:19:29'),(158,'2025-07-21',12,175,486016,2,14,'54',1,2043,2044,2530,NULL,'success','2025-07-22 11:37:08','2025-07-23 10:20:53'),(159,'2025-07-21',10,170,373594,3,14,'5',1,2056,2057,1640,NULL,'success','2025-07-22 11:37:58','2025-07-23 10:23:04'),(160,'2025-07-21',14,172,363920,4,14,'56',1,2041,2042,2041,'2042','success','2025-07-22 11:39:06','2025-07-23 10:24:21'),(161,'2025-07-21',20,177,507411,5,14,'65',1,2049,2050,2510,NULL,'success','2025-07-22 11:41:26','2025-07-23 10:25:32'),(162,'2025-07-21',24,176,171451,6,14,'35',1,2917,2918,3850,NULL,'success','2025-07-22 11:43:07','2025-07-23 11:36:34'),(163,'2025-07-21',22,173,459710,7,14,'48',1,2037,2038,2625,NULL,'success','2025-07-22 11:44:25','2025-07-23 11:39:55'),(164,'2025-07-21',11,178,757065,8,14,'45',1,2045,2046,3665,NULL,'success','2025-07-22 11:45:01','2025-07-23 11:40:59'),(165,'2025-07-21',13,174,249463,9,14,'65',1,2035,2036,2560,NULL,'success','2025-07-22 11:45:32','2025-07-23 11:41:51'),(166,'2025-07-21',23,167,669009,10,14,'56',1,2039,2040,3150,NULL,'success','2025-07-22 11:46:03','2025-07-23 11:42:40'),(167,'2025-07-21',19,169,167522,11,14,'32',1,2031,2032,2770,NULL,'success','2025-07-22 11:46:39','2025-07-23 11:43:37'),(168,'2025-07-21',16,171,350056,12,14,'68',1,2033,2034,6865,NULL,'success','2025-07-22 11:47:14','2025-07-23 10:22:02'),(169,'2025-07-22',11,179,757316,1,14,'67',1,2087,2088,2140,NULL,'success','2025-07-23 11:46:04','2025-07-23 11:47:11'),(170,'2025-07-24',11,182,757835,1,14,'39',3,2951,2952,2910,NULL,'pending','2025-07-26 09:01:25','2025-07-26 09:01:25'),(171,'2025-07-24',18,180,930940,2,14,'65',3,2027,2028,3410,NULL,'pending','2025-07-26 09:02:20','2025-07-26 09:02:20'),(172,'2025-07-24',21,188,483001,3,14,'74',3,2957,2958,1560,NULL,'pending','2025-07-26 09:02:58','2025-07-26 09:02:58'),(173,'2025-07-24',15,189,290283,4,14,'1',3,2955,2956,2800,NULL,'pending','2025-07-26 09:44:37','2025-07-26 09:44:37'),(174,'2025-07-24',10,181,374492,5,14,'57',3,2961,2962,2290,NULL,'pending','2025-07-26 09:45:22','2025-07-26 09:45:22'),(175,'2025-07-24',12,183,486779,6,14,'64',3,2959,2960,2650,NULL,'pending','2025-07-26 09:45:56','2025-07-26 09:45:56'),(176,'2025-07-24',17,184,57236,7,14,'37',3,2969,2970,1910,NULL,'pending','2025-07-26 09:46:54','2025-07-26 09:46:54'),(177,'2025-07-24',13,187,250568,8,14,'78',3,2967,2968,2400,NULL,'pending','2025-07-26 09:47:39','2025-07-26 09:47:39'),(178,'2025-07-24',23,185,669910,9,14,'56',3,2965,2966,6650,NULL,'pending','2025-07-26 09:48:26','2025-07-26 09:48:26'),(179,'2025-07-24',14,190,354713,9,14,'94',3,2953,2954,3310,NULL,'pending','2025-07-26 09:49:04','2025-07-26 09:49:04'),(180,'2025-07-24',16,186,351066,11,14,'68',3,2963,2964,1970,NULL,'pending','2025-07-26 09:49:34','2025-07-26 09:49:34'),(181,'2025-08-26',10,199,5500,1,14,'50',1,201,201,2500,NULL,'pending','2025-08-26 11:12:07','2025-08-26 11:12:07'),(182,'2025-09-16',10,202,26100,1,14,'50',1,201,202,4500,NULL,'pending','2025-09-17 07:14:32','2025-09-17 07:14:32'),(183,'2025-09-23',11,203,771808,1,9,'50',1,12149,12150,3250,NULL,'pending','2025-09-25 05:17:33','2025-09-25 05:17:33'),(184,'2025-09-15',11,201,769611,2,14,'49',3,21249,21250,4545,NULL,'pending','2025-09-25 05:19:02','2025-09-25 05:19:02');
/*!40000 ALTER TABLE `inbound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_quality`
--

DROP TABLE IF EXISTS `lab_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_quality` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `inbound_id` bigint(20) unsigned NOT NULL,
  `fat` decimal(8,2) NOT NULL,
  `clr` decimal(8,2) NOT NULL,
  `snf` decimal(8,2) NOT NULL,
  `s_f` decimal(8,2) NOT NULL,
  `temp` int(11) DEFAULT NULL,
  `alcohol` varchar(255) DEFAULT NULL,
  `cob` varchar(255) DEFAULT NULL,
  `acidity` decimal(8,3) DEFAULT NULL,
  `ab_adt` decimal(8,3) DEFAULT NULL,
  `diff` decimal(8,3) DEFAULT NULL,
  `rosolic` varchar(255) NOT NULL,
  `borex` varchar(255) NOT NULL,
  `glucose` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `urea` varchar(255) NOT NULL,
  `starch` varchar(255) NOT NULL,
  `sugar` varchar(255) NOT NULL,
  `malto` varchar(255) NOT NULL,
  `sulfate` varchar(255) NOT NULL,
  `ap` varchar(255) NOT NULL,
  `enzyme` varchar(255) NOT NULL,
  `lactose` decimal(8,2) DEFAULT NULL,
  `protein` decimal(8,2) DEFAULT NULL,
  `casien` decimal(8,2) DEFAULT NULL,
  `whey` decimal(8,2) DEFAULT NULL,
  `paneer` decimal(8,2) DEFAULT NULL,
  `lp_ratio` decimal(8,2) DEFAULT NULL,
  `rm` decimal(8,2) DEFAULT NULL,
  `rm_wash` decimal(8,2) DEFAULT NULL,
  `p_value` decimal(8,2) NOT NULL,
  `b_r` decimal(8,2) NOT NULL,
  `mineral` varchar(255) NOT NULL,
  `ffa` decimal(8,2) DEFAULT NULL,
  `sesame` varchar(255) DEFAULT NULL,
  `ash` decimal(8,2) DEFAULT NULL,
  `sodium` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `mbr` varchar(255) DEFAULT NULL,
  `somantic` varchar(255) DEFAULT NULL,
  `gc_report` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lab_quality_inbound_id_foreign` (`inbound_id`),
  CONSTRAINT `lab_quality_inbound_id_foreign` FOREIGN KEY (`inbound_id`) REFERENCES `inbound` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_quality`
--

LOCK TABLES `lab_quality` WRITE;
/*!40000 ALTER TABLE `lab_quality` DISABLE KEYS */;
INSERT INTO `lab_quality` VALUES (1,145,4.50,26.00,7.55,1.47,11,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.56,3.26,2.55,0.55,135.00,1.55,29.70,27.17,1.20,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','1.05','Negative','Negative','Accept',NULL,'2025-07-16 05:10:44','2025-07-16 05:10:44'),(2,146,4.50,26.00,7.50,1.48,10,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.26,2.55,0.55,135.00,1.55,29.70,27.17,1.20,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','1.05','Negative','Negative','Accept',NULL,'2025-07-16 05:11:55','2025-07-16 05:11:55'),(3,147,3.50,27.00,7.50,1.50,12,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.25,2.55,0.55,135.00,1.55,29.70,26.40,1.20,40.00,'Negative',0.28,'Negative',0.28,'Positive','A1','1.05','Negative','Negative','Accept','inbound','2025-07-16 05:12:44','2025-07-16 05:12:44'),(4,148,2.50,26.00,7.50,1.44,10,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.26,2.55,0.55,135.00,1.55,29.70,27.17,1.20,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','1.05','Negative','Negative','Accept','123','2025-07-16 08:35:41','2025-07-16 08:35:41'),(5,149,5.00,26.00,7.50,1.60,10,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.26,2.55,0.55,135.00,1.55,29.70,26.40,1.20,40.00,'Negative',0.28,'Positive',0.28,'Negative','A1','1.05','Postive','Negative','Accept',NULL,'2025-07-16 08:36:40','2025-07-16 08:36:40'),(6,150,4.50,26.00,7.50,1.60,10,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.26,2.55,0.55,135.00,1.55,29.70,27.17,1.20,40.00,'Negative',0.30,'Negative',0.28,'Negative','A1','.45','Negative','Negative','Accept',NULL,'2025-07-16 08:37:15','2025-07-16 08:37:15'),(7,151,4.50,27.00,7.50,1.60,10,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Positive','Negative',4.45,3.26,0.55,0.55,135.00,1.55,29.70,27.17,1.20,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','1.05','Negative','Negative','Accept','ok','2025-07-16 08:37:53','2025-07-16 08:37:53'),(8,152,4.50,26.00,7.50,1.60,10,'Negative','Positive',0.126,0.117,0.009,'Negative','Negative','Positive','Negative','Negative','Negative','Negative','Positive','Negative','Negative','Negative',4.45,3.26,2.55,0.55,135.00,1.55,29.70,27.17,0.13,40.00,'Negative',0.28,'Negative',0.29,'Negative','A1','1.05','Negative','Negative','Accept','ok','2025-07-16 08:38:29','2025-07-16 08:38:29'),(9,153,3.50,26.00,7.50,1.60,10,'Positive','Negative',0.135,0.117,0.009,'Negative','Negative','Positive','Negative','Negative','Negative','Negative','Positive','Negative','Negative','Negative',4.45,3.26,2.55,0.55,135.00,1.55,29.70,27.17,1.20,40.00,'Negative',0.28,'Negative',0.29,'Negative','A1','1.05','Negative','Negative','Accept','ok','2025-07-16 08:39:05','2025-07-16 08:39:05'),(10,154,4.50,26.00,8.17,1.60,10,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.26,2.50,0.55,135.00,1.55,29.70,27.17,0.13,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','1.05','Negative','Negative','Accept','ok','2025-07-16 08:39:56','2025-07-16 08:39:56'),(11,155,5.65,26.00,7.50,1.60,10,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.26,2.55,0.55,135.00,1.55,29.70,27.17,1.20,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','1.05','Negative','Negative','Accept','ok','2025-07-16 08:40:27','2025-07-16 08:40:27'),(12,155,4.50,26.00,7.50,1.40,10,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.26,2.55,0.55,135.00,1.55,29.70,27.17,1.20,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','1.05','Negative','Negative','Accept',NULL,'2025-07-17 09:11:31','2025-07-17 09:11:31'),(13,156,4.50,27.00,7.50,1.44,11,'Negative','Positive',0.135,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Positive',4.50,3.50,0.58,0.55,135.00,1.40,29.50,27.17,1.50,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','1.05','Negative','Negative','Accept','inbound','2025-07-23 10:18:23','2025-07-23 10:18:23'),(14,157,4.50,26.00,7.50,1.60,11,'Negative','Negative',0.126,0.135,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.50,0.58,0.55,135.00,1.55,29.50,27.17,1.40,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','1.05','Negative','Negative','Accept','ok','2025-07-23 10:19:29','2025-07-23 10:19:29'),(15,158,4.50,26.00,7.50,1.60,10,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Positive','Positive','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.40,0.55,0.55,135.00,1.55,29.70,26.40,0.13,40.00,'Positive',0.28,'Negative',0.28,'Negative','A2','1.05','Negative','Negative','Warning',NULL,'2025-07-23 10:20:53','2025-07-23 10:20:53'),(16,168,4.50,26.00,7.50,1.44,10,'Negative','Negative',0.135,0.117,0.009,'Positive','Positive','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.56,3.25,2.85,0.50,135.00,1.55,29.50,27.50,1.20,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','.30','Negative','Postive','Warning',NULL,'2025-07-23 10:22:02','2025-07-23 10:22:02'),(17,159,5.65,26.00,7.50,1.88,11,'Negative','Positive',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Positive','Positive',4.45,3.45,2.85,0.61,123.00,1.40,30.03,27.17,1.20,40.50,'Negative',0.26,'Negative',0.28,'Negative','A1','.25','Negative','Negative','Reject',NULL,'2025-07-23 10:23:04','2025-07-23 10:23:04'),(18,160,3.50,26.00,7.00,1.55,10,'Negative','Negative',0.135,0.135,0.009,'Positive','Positive','Positive','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.56,3.65,2.54,0.50,136.00,1.40,29.70,28.50,1.50,39.50,'Negative',0.28,'Negative',0.28,'Negative','A1','1.05','Negative','Negative','Accept',NULL,'2025-07-23 10:24:21','2025-07-23 10:24:21'),(19,161,5.00,26.00,8.17,1.44,15,'Negative','Negative',0.126,0.135,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.26,2.85,0.55,135.00,1.55,29.70,26.40,0.13,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','.30','Negative','Postive','Accept',NULL,'2025-07-23 10:25:32','2025-07-23 10:25:32'),(20,162,3.20,25.00,6.25,1.40,10,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.26,2.55,0.55,135.00,1.55,29.70,27.17,1.20,40.00,'Negative',0.28,'Negative',0.28,'Negative','A1','1.05','Negative','Negative','Accept',NULL,'2025-07-23 11:36:34','2025-07-23 11:36:34'),(21,163,4.50,26.00,7.50,1.44,10,'Negative','Positive',0.126,0.117,0.009,'Positive','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.45,3.35,0.55,0.55,135.00,1.55,29.70,27.17,1.20,40.00,'Positive',0.28,'Positive',0.28,'Negative','A1','1.05','Negative','Postive','Warning',NULL,'2025-07-23 11:39:55','2025-07-23 11:39:55'),(22,164,5.65,26.00,7.50,1.44,10,'Negative','Negative',0.126,0.117,0.009,'Negative','Negative','Negative','Positive','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.56,3.25,2.85,0.50,10.00,1.40,29.50,26.40,0.13,40.50,'Positive',0.28,'Negative',0.28,'Negative','A1','.45','Postive','Postive','Warning',NULL,'2025-07-23 11:40:59','2025-07-23 11:40:59'),(23,165,4.50,26.00,7.50,1.60,10,'Positive','Positive',0.135,0.117,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.56,3.26,2.55,0.50,10.00,1.40,29.50,26.40,0.13,40.50,'Negative',0.28,'Negative',0.28,'Positive','A2','.45','Negative','Postive','Accept',NULL,'2025-07-23 11:41:51','2025-07-23 11:41:51'),(24,166,4.50,27.00,8.17,1.44,11,'Negative','Negative',0.135,0.135,0.009,'Positive','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.56,3.25,2.85,0.50,135.00,1.40,29.50,27.17,1.20,40.50,'Positive',0.30,'Positive',0.29,'Positive','A2','.45','Postive','Postive','Accept',NULL,'2025-07-23 11:42:40','2025-07-23 11:42:40'),(25,167,4.50,26.00,7.50,1.60,11,'Negative','Negative',0.126,0.135,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Positive',4.56,3.25,2.85,0.50,10.00,1.40,29.50,26.40,0.13,40.50,'Positive',0.30,'Positive',0.29,'Positive','A1','.45','Negative','Negative','Accept',NULL,'2025-07-23 11:43:37','2025-07-23 11:43:37'),(26,169,6.50,28.50,8.50,1.47,5,'Negative','Negative',0.135,0.126,0.009,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.50,3.50,0.57,0.86,135.00,1.40,29.70,26.40,1.40,41.00,'Negative',0.29,'Negative',0.28,'Negative','A1','.50','Negative','Negative','Accept',NULL,'2025-07-23 11:47:11','2025-07-23 11:47:11'),(27,12,4.50,25.00,8.50,1.50,10,'Negative','Negative',0.135,0.117,0.018,'Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative','Negative',4.60,3.50,2.50,0.55,135.00,1.35,30.03,28.50,1.20,41.00,'Negative',0.28,'Negative',0.35,'Negative','A2','1.05','Negative','Postive','Warning','202','2025-07-24 07:52:50','2025-07-24 07:52:50');
/*!40000 ALTER TABLE `lab_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_04_03_122157_create_vehicle_master_table',1),(5,'2025_04_19_074127_create_driver_master_table',1),(6,'2025_04_19_075350_create_tester_master_table',1),(7,'2025_04_19_084736_create_outbound_table',1),(8,'2025_04_24_065451_create_supervisior_table',1),(9,'2025_04_24_065534_create_inbound_table',1),(10,'2025_05_10_121552_create_lab_quality',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound`
--

DROP TABLE IF EXISTS `outbound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `vehicle_id` bigint(20) unsigned NOT NULL,
  `zone` varchar(255) NOT NULL,
  `driver_id` bigint(20) unsigned NOT NULL,
  `tester_id` bigint(20) unsigned NOT NULL,
  `meter_reading` int(11) NOT NULL,
  `seal_up` varchar(255) NOT NULL,
  `seal_down` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `outbound_vehicle_id_foreign` (`vehicle_id`),
  KEY `outbound_driver_id_foreign` (`driver_id`),
  KEY `outbound_tester_id_foreign` (`tester_id`),
  CONSTRAINT `outbound_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `driver_master` (`id`) ON DELETE CASCADE,
  CONSTRAINT `outbound_tester_id_foreign` FOREIGN KEY (`tester_id`) REFERENCES `tester_master` (`id`) ON DELETE CASCADE,
  CONSTRAINT `outbound_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_master` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound`
--

LOCK TABLES `outbound` WRITE;
/*!40000 ALTER TABLE `outbound` DISABLE KEYS */;
INSERT INTO `outbound` VALUES (9,'2025-05-21',10,'East',2,3,357199,'14188','14189','2025-05-22 11:20:44','2025-05-22 11:20:44'),(10,'2025-05-21',11,'West',3,4,740872,'14694','14695','2025-05-22 11:21:39','2025-05-22 11:21:39'),(11,'2025-05-21',12,'West',4,5,468435,'14277','14278','2025-05-22 11:22:46','2025-05-22 11:22:46'),(12,'2025-05-21',13,'North',5,2,233881,'14692','14693','2025-05-22 11:23:21','2025-05-22 11:23:21'),(13,'2025-05-21',14,'North',6,6,336480,'14337','14338','2025-05-22 11:23:49','2025-05-22 11:23:49'),(14,'2025-05-21',15,'East',7,7,240620,'14285','14286','2025-05-22 11:24:18','2025-05-22 11:24:18'),(15,'2025-05-21',16,'North',8,8,339778,'14129','14130','2025-05-22 11:24:55','2025-05-22 11:24:55'),(16,'2025-05-21',17,'North',9,1,42413,'14697','14698','2025-05-22 11:25:23','2025-05-22 11:25:23'),(17,'2025-05-21',18,'East',10,9,910478,'14335','14336','2025-05-22 11:25:58','2025-05-22 11:25:58'),(18,'2025-05-21',19,'North',11,10,148016,'14186','14187','2025-05-22 11:26:32','2025-05-22 11:26:32'),(19,'2025-05-21',20,'West',1,11,494064,'14283','14284','2025-05-22 11:27:05','2025-05-22 11:27:05'),(20,'2025-05-21',21,'East',12,12,463301,'14690','146','2025-05-22 11:27:32','2025-05-22 11:27:32'),(21,'2025-05-21',22,'East',13,13,437365,'14281','14282','2025-05-22 11:28:29','2025-05-22 11:28:29'),(22,'2025-05-22',22,'West',13,13,437730,'14365','14366','2025-05-24 04:22:22','2025-05-24 04:22:22'),(23,'2025-05-22',14,'North',6,6,336920,'14363','14364','2025-05-24 04:26:01','2025-05-24 04:26:01'),(24,'2025-05-22',23,'East',14,7,652380,'14699','14700','2025-05-24 04:30:05','2025-05-24 04:30:05'),(25,'2025-05-22',17,'North',9,1,42792,'14301','14302','2025-05-24 04:30:32','2025-05-24 04:30:32'),(26,'2025-05-22',16,'North',8,4,340118,'14275','14506','2025-05-24 04:31:34','2025-05-24 04:31:34'),(27,'2025-05-22',10,'East',2,6,357519,'14305','14306','2025-05-24 04:32:16','2025-05-24 04:32:16'),(28,'2025-05-22',12,'West',4,5,468792,'14507','14508','2025-05-24 04:32:47','2025-05-24 04:32:47'),(29,'2025-05-22',11,'West',3,13,741219,'14303','14304','2025-05-24 04:33:41','2025-05-24 04:33:41'),(30,'2025-05-22',19,'North',11,10,148427,'14361','14362','2025-05-24 04:34:27','2025-05-24 04:34:27'),(31,'2025-05-22',20,'West',1,11,494412,'14509','14510','2025-05-24 04:35:08','2025-05-24 04:35:08'),(32,'2025-05-22',18,'East',10,5,910858,'14367','14368','2025-05-24 04:35:42','2025-05-24 04:35:42'),(33,'2025-05-22',21,'East',12,12,463600,'14307','14308','2025-05-24 04:36:16','2025-05-24 04:36:16'),(34,'2025-05-22',13,'North',5,2,234195,'14309','14310','2025-05-24 04:36:53','2025-05-24 04:36:53'),(35,'2025-05-23',24,'East',14,13,151930,'14279','14280','2025-05-24 12:05:25','2025-05-24 12:05:25'),(36,'2025-05-23',22,'North',13,15,438095,'14320','14355','2025-05-24 12:05:52','2025-05-24 12:05:52'),(37,'2025-05-23',13,'North',2,2,234555,'14351','14352','2025-05-24 12:06:40','2025-05-24 12:06:40'),(38,'2025-05-23',19,'North',11,10,148831,'14416','14417','2025-05-24 12:07:15','2025-05-24 12:07:15'),(39,'2025-05-23',12,'West',4,5,469203,'14419','14420','2025-05-24 12:07:54','2025-05-24 12:07:54'),(40,'2025-05-23',17,'North',9,8,43172,'14429','14430','2025-05-24 12:08:40','2025-05-24 12:08:40'),(41,'2025-05-23',10,'East',5,16,357820,'14273','14274','2025-05-24 12:09:40','2025-05-24 12:09:40'),(42,'2025-05-23',23,'East',14,7,652607,'14243','14244','2025-05-24 12:10:04','2025-05-24 12:10:04'),(43,'2025-05-23',14,'North',6,6,337309,'14316','14317','2025-05-24 12:10:30','2025-05-24 12:10:30'),(44,'2025-05-23',20,'West',1,11,494740,'14418','14245','2025-05-24 12:11:21','2025-05-24 12:11:21'),(45,'2025-05-23',21,'East',12,12,463956,'14271','14272','2025-05-24 12:11:45','2025-05-24 12:11:45'),(46,'2025-05-23',11,'West',3,17,741550,'14354','14355','2025-05-24 12:14:00','2025-05-24 12:14:00'),(47,'2025-05-23',18,'East',10,9,911250,'14318','14319','2025-05-24 12:14:41','2025-05-24 12:14:41'),(48,'2025-05-24',13,'North',2,2,234919,'14185','14853','2025-05-26 11:06:49','2025-05-26 11:06:49'),(49,'2025-05-24',14,'North',6,6,337709,'14138','14139','2025-05-26 11:07:17','2025-05-26 11:07:17'),(50,'2025-05-24',17,'North',9,3,43549,'13409','13410','2025-05-26 11:07:41','2025-05-26 11:07:41'),(51,'2025-05-24',19,'North',11,10,149220,'13421','13422','2025-05-26 11:08:12','2025-05-26 11:08:12'),(52,'2025-05-24',24,'West',15,4,152295,'14851','14852','2025-05-26 11:09:37','2025-05-26 11:09:37'),(53,'2025-05-24',22,'North',13,15,438530,'14423','14424','2025-05-26 11:10:03','2025-05-26 11:10:03'),(54,'2025-05-24',10,'East',5,16,358093,'13427','13428','2025-05-26 11:10:28','2025-05-26 11:10:28'),(55,'2025-05-24',12,'West',4,5,469589,'13407','13408','2025-05-26 11:10:47','2025-05-26 11:10:47'),(56,'2025-05-24',20,'West',1,11,495087,'14140','13406','2025-05-26 11:11:21','2025-05-26 11:11:21'),(57,'2025-05-24',18,'East',10,9,911632,'14421','14422','2025-05-26 11:11:51','2025-05-26 11:11:51'),(58,'2025-05-24',11,'West',3,13,741878,'13425','13426','2025-05-26 11:12:23','2025-05-26 11:12:23'),(59,'2025-05-24',21,'East',12,12,464247,'13429','13430','2025-05-26 11:12:43','2025-05-26 11:12:43'),(60,'2025-05-24',23,'East',14,7,652806,'14423','14424','2025-05-26 11:13:12','2025-05-26 11:13:12'),(61,'2025-05-25',24,'North',15,3,152450,'13401','13402','2025-05-27 07:40:14','2025-05-27 07:40:14'),(62,'2025-05-25',12,'West',4,7,469964,'13437','13438','2025-05-27 07:40:47','2025-05-27 07:40:47'),(63,'2025-05-25',15,'West',7,5,241429,'13411','13412','2025-05-27 07:41:45','2025-05-27 07:41:45'),(64,'2025-05-25',13,'East',2,19,235276,'13441','13442','2025-05-27 07:42:11','2025-05-27 07:42:11'),(65,'2025-05-25',18,'East',10,4,912024,'13439','13440','2025-05-27 07:42:44','2025-05-27 07:42:44'),(66,'2025-05-25',22,'North',13,9,439000,'13449','13450','2025-05-27 07:43:19','2025-05-27 07:43:19'),(67,'2025-05-25',11,'North',3,8,742219,'13431','13432','2025-05-27 07:43:47','2025-05-27 07:43:47'),(68,'2025-05-25',21,'North',12,10,464601,'13445','13446','2025-05-27 07:44:12','2025-05-27 07:44:12'),(69,'2025-05-25',19,'West',11,11,149627,'13447','13448','2025-05-27 07:44:47','2025-05-27 07:44:47'),(70,'2025-05-25',23,'North',14,12,653065,'13415','13416','2025-05-27 07:45:16','2025-05-27 07:45:16'),(71,'2025-05-25',16,'East',8,2,340478,'13417','13418','2025-05-27 07:45:52','2025-05-27 07:45:52'),(72,'2025-05-25',20,'East',1,17,495399,'13413','13414','2025-05-27 07:46:36','2025-05-27 07:46:36'),(73,'2025-05-26',24,'North',15,3,153080,'13453','13454','2025-05-28 04:14:19','2025-05-28 04:14:19'),(74,'2025-05-26',17,'West',9,7,43931,'13435','13434','2025-05-28 04:14:57','2025-05-28 04:14:57'),(75,'2025-05-26',18,'East',10,4,912402,'13457','13458','2025-05-28 04:15:22','2025-05-28 04:15:22'),(76,'2025-05-26',16,'East',9,2,340738,'13419','13420','2025-05-28 04:16:02','2025-05-28 04:16:02'),(77,'2025-05-26',11,'North',3,6,742629,'13467','13468','2025-05-28 04:16:27','2025-05-28 04:16:27'),(78,'2025-05-26',23,'North',14,12,653421,'13463','13403','2025-05-28 04:16:55','2025-05-28 04:16:55'),(79,'2025-05-26',13,'East',2,19,235486,'13469','13470','2025-05-28 04:17:28','2025-05-28 04:17:28'),(80,'2025-05-26',20,'East',1,17,495646,'13459','13460','2025-05-28 04:17:53','2025-05-28 04:17:53'),(81,'2025-05-26',22,'North',13,8,439450,'13451','13452','2025-05-28 04:18:37','2025-05-28 04:18:37'),(82,'2025-05-26',21,'North',12,10,465047,'13465','13466','2025-05-28 04:19:13','2025-05-28 04:19:13'),(83,'2025-05-26',15,'West',7,18,241847,'13404','13405','2025-05-28 04:19:42','2025-05-28 04:19:42'),(84,'2025-05-26',19,'West',11,11,149936,'13455','13456','2025-05-28 04:20:26','2025-05-28 04:20:26'),(85,'2025-05-27',16,'East',1,2,341007,'13001','13002','2025-05-28 07:29:10','2025-05-28 07:29:10'),(86,'2025-05-27',15,'West',7,5,242262,'13005','13006','2025-05-28 07:29:33','2025-05-28 07:29:33'),(87,'2025-05-27',18,'East',10,4,912778,'13007','13008','2025-05-28 07:30:03','2025-05-28 07:30:03'),(88,'2025-05-27',24,'North',15,3,153525,'13013','13014','2025-05-28 07:30:29','2025-05-28 07:30:29'),(89,'2025-05-27',11,'North',3,6,743044,'13023','13024','2025-05-28 07:31:02','2025-05-28 07:31:02'),(90,'2025-05-27',13,'East',2,19,235747,'13021','13022','2025-05-28 07:31:26','2025-05-28 07:31:26'),(91,'2025-05-27',23,'North',14,12,653785,'13017','13018','2025-05-28 07:31:49','2025-05-28 07:31:49'),(92,'2025-05-27',21,'North',12,10,465494,'13019','13020','2025-05-28 07:32:13','2025-05-28 07:32:13'),(93,'2025-05-27',12,'North',4,8,470278,'13461','13462','2025-05-28 07:32:36','2025-05-28 07:32:36'),(94,'2025-05-27',20,'East',1,17,495922,'13011','13012','2025-05-28 07:33:30','2025-05-28 07:33:30'),(95,'2025-05-27',19,'West',11,11,150250,'13009','13010','2025-05-28 07:33:57','2025-05-28 07:33:57'),(96,'2025-05-27',17,'West',9,7,44231,'13015','13016','2025-05-28 07:34:23','2025-05-28 07:34:23'),(97,'2025-05-28',16,'East',1,2,341186,'13045','13046','2025-05-31 09:34:13','2025-05-31 09:34:13'),(98,'2025-05-28',17,'West',9,7,44527,'13043','13044','2025-05-31 09:34:52','2025-05-31 09:34:52'),(99,'2025-05-28',24,'North',15,3,153970,'13039','13040','2025-05-31 09:35:18','2025-05-31 09:35:18'),(100,'2025-05-28',13,'East',2,19,235912,'13051','13052','2025-05-31 09:35:44','2025-05-31 09:35:44'),(101,'2025-05-28',12,'East',4,4,470738,'13041','13042','2025-05-31 09:36:16','2025-05-31 09:36:16'),(102,'2025-05-28',22,'North',13,8,439910,'13003','13004','2025-05-31 09:36:48','2025-05-31 09:36:48'),(103,'2025-05-28',21,'North',12,10,465931,'13049','13050','2025-05-31 09:37:09','2025-05-31 09:37:09'),(104,'2025-05-28',11,'North',3,6,743456,'13053','13054','2025-05-31 09:37:34','2025-05-31 09:37:34'),(105,'2025-05-28',23,'North',14,12,654152,'13031','13032','2025-05-31 09:38:01','2025-05-31 09:38:01'),(106,'2025-05-28',20,'East',1,17,496168,'13035','13036','2025-05-31 09:39:01','2025-05-31 09:39:01'),(107,'2025-05-28',19,'West',11,9,150570,'13037','13038','2025-05-31 09:39:27','2025-05-31 09:39:27'),(108,'2025-05-28',15,'West',7,5,242660,'13033','13034','2025-05-31 09:39:48','2025-05-31 09:39:48'),(109,'2025-05-29',24,'North',15,3,154415,'13065','13066','2025-05-31 09:53:57','2025-05-31 09:53:57'),(110,'2025-05-29',17,'West',9,7,44831,'13063','13064','2025-05-31 09:54:24','2025-05-31 09:54:24'),(111,'2025-05-29',14,'East',6,2,330104,'13489','13490','2025-05-31 09:54:46','2025-05-31 09:54:46'),(112,'2025-05-29',15,'West',7,5,243052,'13059','13060','2025-05-31 09:55:30','2025-05-31 09:55:30'),(113,'2025-05-29',13,'East',2,19,236168,'13079','13080','2025-05-31 09:55:52','2025-05-31 09:55:52'),(114,'2025-05-29',11,'North',3,6,743877,'13073','13074','2025-05-31 09:56:19','2025-05-31 09:56:19'),(115,'2025-05-29',20,'East',1,17,496461,'13057','13058','2025-05-31 09:57:50','2025-05-31 09:57:50'),(116,'2025-05-29',23,'North',14,12,654502,'13067','13068','2025-05-31 09:58:20','2025-05-31 09:58:20'),(117,'2025-05-29',21,'North',12,11,466371,'13077','13078','2025-05-31 09:58:50','2025-05-31 09:58:50'),(118,'2025-05-29',18,'East',10,4,913154,'13047','13048','2025-05-31 09:59:15','2025-05-31 09:59:15'),(119,'2025-05-29',22,'North',13,8,440370,'13071','13072','2025-05-31 09:59:45','2025-05-31 09:59:45'),(120,'2025-05-29',19,'West',11,9,150880,'13069','13070','2025-05-31 10:00:10','2025-05-31 10:00:10'),(121,'2025-05-30',15,'West',7,5,243455,'13095','13096','2025-05-31 10:24:01','2025-05-31 10:24:01'),(122,'2025-05-30',17,'West',7,7,45130,'13089','13090','2025-05-31 10:25:57','2025-05-31 10:25:57'),(123,'2025-05-30',19,'West',11,9,151216,'13091','13092','2025-05-31 10:26:24','2025-05-31 10:26:24'),(124,'2025-05-30',24,'North',15,3,154860,'13093','13094','2025-05-31 10:26:51','2025-05-31 10:26:51'),(125,'2025-05-30',22,'North',13,8,440816,'13087','13088','2025-05-31 10:27:15','2025-05-31 10:27:15'),(126,'2025-05-30',16,'East',8,11,341446,'13061','13062','2025-05-31 10:27:42','2025-05-31 10:27:42'),(127,'2025-05-30',20,'East',1,17,496707,'13085','13086','2025-05-31 10:28:12','2025-05-31 10:28:12'),(128,'2025-05-30',21,'North',12,10,466812,'13083','13084','2025-05-31 10:28:33','2025-05-31 10:28:33'),(129,'2025-05-30',11,'North',3,6,744293,'13081','13082','2025-05-31 10:28:55','2025-05-31 10:28:55'),(130,'2025-05-30',18,'East',10,4,913529,'13097','13098','2025-05-31 10:29:21','2025-05-31 10:29:21'),(131,'2025-05-30',23,'North',14,12,654866,'13099','130100','2025-05-31 10:29:49','2025-05-31 10:29:49'),(132,'2025-05-30',13,'East',2,19,236440,'13481','13082','2025-05-31 10:30:23','2025-05-31 10:30:23'),(133,'2025-05-31',15,'West',7,18,243870,'13281','13282','2025-05-31 11:02:13','2025-05-31 11:02:13'),(134,'2025-05-31',17,'West',9,7,45422,'13297','13298','2025-05-31 11:02:43','2025-05-31 11:02:43'),(135,'2025-05-31',19,'West',11,9,151527,'13287','13288','2025-05-31 11:18:55','2025-05-31 11:18:55'),(136,'2025-05-31',24,'North',15,3,155315,'13289','13290','2025-05-31 11:19:21','2025-05-31 11:19:21'),(137,'2025-05-31',13,'East',2,19,236693,'13295','13296','2025-05-31 11:19:46','2025-05-31 11:19:46'),(138,'2025-05-31',23,'North',14,11,655235,'13283','13284','2025-05-31 11:20:10','2025-05-31 11:20:10'),(139,'2025-05-31',10,'North',5,6,358386,'13299','13300','2025-05-31 11:20:35','2025-05-31 11:20:35'),(140,'2025-05-31',16,'East',8,2,341757,'13285','13286','2025-05-31 11:21:04','2025-05-31 11:21:04'),(141,'2025-05-31',21,'North',12,10,467251,'13293','13294','2025-05-31 11:21:33','2025-05-31 11:21:33'),(142,'2025-05-31',20,'East',1,17,496978,'13273','13274','2025-05-31 11:21:55','2025-05-31 11:21:55'),(143,'2025-05-31',18,'East',10,4,913905,'13271','13272','2025-05-31 11:22:19','2025-05-31 11:22:19'),(144,'2025-05-31',22,'North',13,8,441272,'13291','13292','2025-05-31 11:22:43','2025-05-31 11:22:43'),(145,'2025-06-01',24,'North',15,3,15575,'13259','13260','2025-06-02 09:04:52','2025-06-02 09:04:52'),(146,'2025-06-01',21,'North',12,10,467691,'13257','13258','2025-06-02 09:20:14','2025-06-02 09:20:14'),(147,'2025-06-01',21,'North',12,10,467691,'13257','13258','2025-06-02 09:59:49','2025-06-02 09:59:49'),(148,'2025-06-01',17,'West',9,7,45720,'13239','13240','2025-06-02 10:00:42','2025-06-02 10:00:42'),(149,'2025-07-14',14,'West',11,6,351249,'2663','2664','2025-07-15 10:00:27','2025-07-15 10:00:27'),(150,'2025-07-14',23,'North',14,3,666834,'2129','2130','2025-07-15 10:01:05','2025-07-15 10:01:05'),(151,'2025-07-14',16,'East',8,6,348557,'2106','2107','2025-07-15 10:01:44','2025-07-15 10:01:44'),(152,'2025-07-14',18,'East',10,2,927881,'2661','2662','2025-07-15 10:02:15','2025-07-15 10:02:15'),(153,'2025-07-14',13,'North',2,6,246550,'2655','2656','2025-07-15 10:02:44','2025-07-15 10:02:44'),(154,'2025-07-14',22,'North',13,19,456049,'2623','2624','2025-07-15 10:03:21','2025-07-15 10:03:21'),(155,'2025-07-14',11,'East',3,16,754760,'2669','2670','2025-07-15 10:03:56','2025-07-15 10:03:56'),(156,'2025-07-14',20,'West',1,10,504685,'2110','2126','2025-07-15 10:04:19','2025-07-15 10:04:19'),(157,'2025-07-14',19,'North',11,15,164473,'2127','2128','2025-07-15 10:04:55','2025-07-15 10:04:55'),(158,'2025-07-14',10,'West',5,3,372175,'2667','2668','2025-07-15 10:05:38','2025-07-15 10:05:38'),(164,'2025-07-14',12,'East',4,17,484007,'2108','2109','2025-07-15 11:14:56','2025-07-15 11:14:56'),(166,'2025-07-19',12,'North',1,3,2500,'201','202','2025-07-19 05:23:37','2025-07-19 05:23:37'),(167,'2025-07-21',23,'North',14,3,668626,'2039','2040','2025-07-22 11:25:31','2025-07-22 11:25:31'),(168,'2025-07-21',15,'East',10,2,258673,'2913','2914','2025-07-22 11:26:40','2025-07-22 11:26:40'),(169,'2025-07-21',19,'North',11,15,167145,'2031','2032','2025-07-22 11:27:17','2025-07-22 11:27:17'),(170,'2025-07-21',10,'West',7,1,373266,'2056','2057','2025-07-22 11:27:52','2025-07-22 11:27:52'),(171,'2025-07-21',16,'East',8,6,349798,'2033','2034','2025-07-22 11:29:24','2025-07-22 11:29:24'),(172,'2025-07-21',14,'West',10,19,363696,'2041','2042','2025-07-22 11:30:14','2025-07-22 11:30:14'),(173,'2025-07-21',22,'North',13,19,459245,'2037','2038','2025-07-22 11:30:39','2025-07-22 11:30:39'),(174,'2025-07-21',13,'North',2,7,249083,'2035','2036','2025-07-22 11:30:58','2025-07-22 11:30:58'),(175,'2025-07-21',12,'East',4,8,485715,'2043','2044','2025-07-22 11:31:15','2025-07-22 11:31:15'),(176,'2025-07-21',24,'North',5,17,170997,'2917','2018','2025-07-22 11:31:38','2025-07-22 11:31:38'),(177,'2025-07-21',20,'West',1,10,507071,'2049','2050','2025-07-22 11:32:01','2025-07-22 11:32:01'),(178,'2025-07-21',11,'East',3,12,756717,'2045','2046','2025-07-22 11:32:33','2025-07-22 11:32:33'),(179,'2025-07-22',11,'East',3,12,757065,'2087','2088','2025-07-23 11:45:18','2025-07-23 11:45:18'),(180,'2025-07-24',18,'North',10,2,930527,'2027','2028','2025-07-25 10:35:02','2025-07-25 10:35:02'),(181,'2025-07-24',10,'East',2,23,374236,'2961','2962','2025-07-25 10:47:22','2025-07-25 10:47:22'),(182,'2025-07-24',11,'East',3,15,757549,'2951','2952','2025-07-25 10:48:03','2025-07-25 10:48:03'),(183,'2025-07-24',12,'West',4,6,486413,'2959','2960','2025-07-25 10:48:33','2025-07-25 10:48:33'),(184,'2025-07-24',17,'North',9,1,56832,'2969','2970','2025-07-25 10:49:00','2025-07-25 10:49:00'),(185,'2025-07-24',23,'East',14,17,669680,'2965','2966','2025-07-25 10:49:33','2025-07-25 10:49:33'),(186,'2025-07-24',16,'North',8,19,350674,'2963','2964','2025-07-25 10:49:56','2025-07-25 10:49:56'),(187,'2025-07-24',13,'North',5,24,250219,'2967','2968','2025-07-25 10:50:42','2025-07-25 10:50:42'),(188,'2025-07-24',21,'West',6,7,482617,'2957','2958','2025-07-25 10:51:18','2025-07-25 10:51:18'),(189,'2025-07-24',15,'West',7,11,289863,'2955','2956','2025-07-25 10:51:46','2025-07-25 10:51:46'),(190,'2025-07-24',14,'East',11,12,354476,'2953','2954','2025-07-25 10:52:25','2025-07-25 10:52:25'),(191,'2025-07-26',16,'North',8,19,351066,'2355','2356','2025-07-28 12:30:26','2025-07-28 12:30:26'),(192,'2025-08-01',17,'North',9,1,59614,'2739','2740','2025-08-02 09:08:40','2025-08-02 09:08:40'),(193,'2025-08-01',12,'West',4,6,489027,'2737','2738','2025-08-02 09:09:10','2025-08-02 09:09:10'),(194,'2025-08-01',10,'East',2,23,376614,'2745','2746','2025-08-02 09:10:30','2025-08-02 09:10:30'),(195,'2025-08-01',16,'North',8,19,352234,'2905','2906','2025-08-02 09:14:06','2025-08-02 09:14:06'),(196,'2025-08-01',23,'East',14,17,671698,'2743','2744','2025-08-02 09:16:59','2025-08-02 09:16:59'),(197,'2025-08-01',21,'West',16,7,485511,'2749','2750','2025-08-02 09:19:37','2025-08-02 09:19:37'),(198,'2025-08-01',11,'East',3,15,759238,'2701','2702','2025-08-02 09:20:19','2025-08-02 09:20:19'),(199,'2025-08-26',10,'North',3,1,5000,'201','202','2025-08-26 11:11:17','2025-08-26 11:11:17'),(200,'2025-09-15',16,'East',8,3,362876,'12397','12398','2025-09-16 11:48:18','2025-09-16 11:48:18'),(201,'2025-09-15',11,'North',3,6,769244,'12303','12304','2025-09-16 11:48:48','2025-09-16 11:48:48'),(202,'2025-09-16',10,'West',1,13,25500,'201','202','2025-09-17 07:13:10','2025-09-17 07:13:10'),(203,'2025-09-23',11,'North',3,6,771606,'12149','12150','2025-09-25 05:10:00','2025-09-25 05:10:00'),(204,'2025-09-24',11,'North',3,6,772033,'12607','12608','2025-09-25 09:45:58','2025-09-25 09:45:58'),(205,'2025-09-24',10,'West',2,24,388275,'12059','12060','2025-09-25 09:45:58','2025-09-25 09:45:58');
/*!40000 ALTER TABLE `outbound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('PfBJBrvcQaWRqpv8gzsXj1jvKXX7lOUpjOeMEpkQ',NULL,'192.168.1.162','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUh4WWZ4MzBMd2xiMkVBd0dwVE9CNEwxaFdKYzlMWjRub2p0MnlQOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8xOTIuMTY4LjEuMTYyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759570157),('YoTS9uS9AxvYsnZFTqqWHtho7RBAMzNPYc21IgcU',NULL,'192.168.1.162','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoidlRnUHhRMmNOSFRKQnhjQzg5aG5ldkV2NjVETUZoSDhrdkhlVXlsSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9kZXZfcG9pbnQvbGFiL3Rlc3QvMTcwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1OiJhbGVydCI7YTowOnt9fQ==',1759573196);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervisior`
--

DROP TABLE IF EXISTS `supervisior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supervisior` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `supervisior_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervisior`
--

LOCK TABLES `supervisior` WRITE;
/*!40000 ALTER TABLE `supervisior` DISABLE KEYS */;
INSERT INTO `supervisior` VALUES (1,'Naresh Keshwani','2025-05-19 09:33:42','2025-05-19 09:33:42'),(2,'Gurpreet Singh','2025-05-20 11:15:07','2025-05-20 11:15:07'),(3,'Kiran Pal','2025-07-26 09:00:23','2025-07-26 09:00:23');
/*!40000 ALTER TABLE `supervisior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester_master`
--

DROP TABLE IF EXISTS `tester_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester_master` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tester_master_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tester_master`
--

LOCK TABLES `tester_master` WRITE;
/*!40000 ALTER TABLE `tester_master` DISABLE KEYS */;
INSERT INTO `tester_master` VALUES (1,'Rohit','2025-05-19 09:33:36','2025-05-19 09:33:36'),(2,'Kanhiya','2025-05-20 11:14:48','2025-05-20 11:14:48'),(3,'Preem','2025-05-22 11:16:30','2025-05-22 11:16:30'),(4,'Princee','2025-05-22 11:16:38','2025-05-22 11:42:53'),(5,'Santokh Singh','2025-05-22 11:16:44','2025-05-22 11:16:44'),(6,'A.K Panday','2025-05-22 11:16:57','2025-05-22 11:16:57'),(7,'S.N Panday','2025-05-22 11:17:08','2025-05-22 11:17:08'),(8,'Shiv Kumar','2025-05-22 11:17:19','2025-05-22 11:17:19'),(9,'Sandeep Kumar','2025-05-22 11:17:37','2025-05-22 11:17:37'),(10,'Lovekush','2025-05-22 11:17:50','2025-05-22 11:17:50'),(11,'Pritam','2025-05-22 11:17:57','2025-05-22 11:17:57'),(12,'Uttamchand Bahadur','2025-05-22 11:18:15','2025-05-22 11:18:15'),(13,'Manish Kumar','2025-05-22 11:18:30','2025-05-22 11:18:30'),(14,'Raj Kumar','2025-05-22 11:30:10','2025-05-22 11:30:10'),(15,'Harpreet','2025-05-24 09:01:42','2025-05-24 09:01:42'),(16,'Arvind Panday','2025-05-24 09:01:52','2025-05-24 09:01:52'),(17,'Mahinder','2025-05-24 09:01:58','2025-05-24 09:01:58'),(18,'Santosh Kumar','2025-05-26 10:29:27','2025-05-26 10:29:27'),(19,'Sudhir','2025-05-26 10:29:33','2025-05-26 10:29:33'),(20,'Santokh ','2025-05-28 04:13:48','2025-05-28 04:13:48'),(21,'Ashish Patel','2025-07-17 11:10:26','2025-07-17 11:10:26'),(22,'Avtar Singh','2025-07-17 11:20:31','2025-07-17 11:20:31'),(23,'Anil','2025-07-25 10:45:42','2025-07-25 10:45:42'),(24,'Virender','2025-07-25 10:46:17','2025-07-25 10:46:17');
/*!40000 ALTER TABLE `tester_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_master`
--

DROP TABLE IF EXISTS `vehicle_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_master` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(255) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `vehicle_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicle_master_vehicle_no_unique` (`vehicle_no`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_master`
--

LOCK TABLES `vehicle_master` WRITE;
/*!40000 ALTER TABLE `vehicle_master` DISABLE KEYS */;
INSERT INTO `vehicle_master` VALUES (10,'PB-10FV-0757','VLC','0757','2025-05-22 10:30:49','2025-09-25 05:14:11'),(11,'PB-10FF-0394','VLC','0394','2025-05-22 10:31:06','2025-09-25 08:33:00'),(12,'PB-10EH-4648','VLC','4648','2025-05-22 10:31:29','2025-09-25 08:33:09'),(13,'PB-10FF-8875','VLC','8875','2025-05-22 10:31:51','2025-09-25 08:33:19'),(14,'PB-10HZ-9948','VLC','9948','2025-05-22 10:32:15','2025-09-25 08:33:27'),(15,'PB-05R-7919','VLC','7919','2025-05-22 10:32:31','2025-09-25 08:33:34'),(16,'PB-10FV-0168','VLC','0168','2025-05-22 10:32:45','2025-09-25 08:33:42'),(17,'PB-04R-9737','VLC','9737','2025-05-22 10:34:16','2025-09-25 08:33:51'),(18,'PB-13AL-6696','VLC','6696','2025-05-22 10:34:35','2025-09-25 08:33:59'),(19,'PB-10DC-9508','VLC','9508','2025-05-22 10:34:48','2025-09-25 08:34:09'),(20,'PB-10JC-1686','VLC','1686','2025-05-22 10:36:29','2025-09-25 08:34:18'),(21,'PB-10JF-6742','VLC','6742','2025-05-22 11:11:55','2025-09-25 08:34:34'),(22,'PB-13BP-9482','VLC','9482','2025-05-22 11:12:16','2025-09-25 08:34:59'),(23,'PB-13AR-9560','VLC','9560','2025-05-24 04:28:34','2025-09-25 08:34:50'),(24,'PB-02BP-9747','VLC','9747','2025-05-24 12:23:49','2025-09-25 08:34:42'),(31,'PB-10HJ-8771','VLC','8771','2025-10-04 10:09:11','2025-10-04 10:09:11');
/*!40000 ALTER TABLE `vehicle_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-08  9:50:01
