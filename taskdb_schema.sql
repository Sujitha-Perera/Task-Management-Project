-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: taskdb
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `due_date` date DEFAULT NULL,
  `priority` enum('HIGH','LOW','MEDIUM') NOT NULL,
  `status` enum('DONE','IN_PROGRESS','TODO') NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6s1ob9k4ihi75xbxe2w0ylsdh` (`user_id`),
  CONSTRAINT `FK6s1ob9k4ihi75xbxe2w0ylsdh` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (4,'2026-03-13 18:49:58.154113','test','2026-03-20','HIGH','TODO','birthday','2026-03-13 18:49:58.154113',15),(5,'2026-03-13 19:27:24.338088','this is a comment','2026-03-28','MEDIUM','IN_PROGRESS','Mr.','2026-03-13 19:27:24.338088',16),(6,'2026-03-13 19:41:20.074403','gdfg','2026-03-20','MEDIUM','IN_PROGRESS','gdfgfd','2026-03-13 19:41:20.074403',17),(7,'2026-03-13 19:43:53.273148','hythyt','2026-03-31','MEDIUM','IN_PROGRESS','hythth','2026-03-13 19:43:53.273148',17),(8,'2026-03-13 20:01:44.174081','nfgfnf','2026-03-25','LOW','TODO','fgnfnf','2026-03-13 20:01:44.174081',17),(9,'2026-03-13 20:02:28.582143','uyk','2026-03-25','LOW','IN_PROGRESS','uykf','2026-03-13 20:02:28.582143',16),(10,'2026-03-13 20:02:42.229954','uky','2026-03-23','MEDIUM','IN_PROGRESS','uky','2026-03-13 20:02:42.229954',16),(11,'2026-03-13 20:03:13.750237','kuykuyk','2026-03-27','LOW','TODO','kyukuyky','2026-03-13 20:03:13.750237',17),(12,'2026-03-13 20:03:50.479960','kuykuyk','2026-03-26','HIGH','IN_PROGRESS','kuykyk','2026-03-13 20:03:50.479960',17);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('ADMIN','USER') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,'sujithascc1@gmail.com','suji','$2a$10$gmumCv5uh7ZN17.1vIy.L.rOv7.j2kwlHyXQ3d577CmRXJGdH.ZTa','ADMIN'),(15,'sujithascc2@gmail.com','sujibro','$2a$10$Yvh5alBLMeRyhJgPyT0HWeBSdRYlLatGklqGCmq2dUjVXqzCdrO6y','USER'),(16,'sujithascc3@gmail.com','kamal','$2a$10$J5yYy/.uIAKNeaaLEmDCdOA9FqFgsR2dbWzNF4KzTCHEZPl1zg.sS','USER'),(17,'sujithascc4@gmail.com','fghjfghf','$2a$10$4Pr2BCdKNVv.Z5/uaFq0kOvXQ4Az5a9aFZvoo1DWFdnLjYvkf0GZ2','ADMIN');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-13 20:26:02
