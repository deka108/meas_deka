CREATE DATABASE  IF NOT EXISTS `mathdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mathdb`;
-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: mathdb
-- ------------------------------------------------------
-- Server version	5.7.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contribute_questionc`
--

DROP TABLE IF EXISTS `contribute_questionc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contribute_questionc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `created` datetime NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `topic_id` int(11) NOT NULL,
  `subtopic_id` int(11) NOT NULL,
  `solution` varchar(1000) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contribute_questionc_337b96ff` (`author_id`),
  KEY `contribute_questionc_57732028` (`topic_id`),
  KEY `contribute_questionc_2af38521` (`subtopic_id`),
  KEY `contribute_questionc_638462f1` (`subject_id`),
  CONSTRAINT `author_id_refs_id_125367d9` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `subject_id_refs_id_6764f81a` FOREIGN KEY (`subject_id`) REFERENCES `dbmanagement_subject` (`id`),
  CONSTRAINT `subtopic_id_refs_id_4111aa24` FOREIGN KEY (`subtopic_id`) REFERENCES `dbmanagement_subtopic` (`id`),
  CONSTRAINT `topic_id_refs_id_6ebf5c1d` FOREIGN KEY (`topic_id`) REFERENCES `dbmanagement_topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribute_questionc`
--

LOCK TABLES `contribute_questionc` WRITE;
/*!40000 ALTER TABLE `contribute_questionc` DISABLE KEYS */;
/*!40000 ALTER TABLE `contribute_questionc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-15 19:53:52