-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: solinadb
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `dataelements`
--

DROP TABLE IF EXISTS `dataelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataelements` (
  `dataelement_id` int(11) NOT NULL,
  `dataelement_name` varchar(70) DEFAULT NULL,
  `short_name` varchar(70) DEFAULT NULL,
  `is_calculated` int(11) NOT NULL,
  PRIMARY KEY (`dataelement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataelements`
--

LOCK TABLES `dataelements` WRITE;
/*!40000 ALTER TABLE `dataelements` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datavalues`
--

DROP TABLE IF EXISTS `datavalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datavalues` (
  `datavalue_id` int(11) NOT NULL,
  `dataelement_id` int(11) DEFAULT NULL,
  `orgunit_id` int(11) DEFAULT NULL,
  `value_numeric` double DEFAULT NULL,
  `value_coded` int(11) DEFAULT NULL,
  `financial_year` varchar(70) DEFAULT NULL,
  `calendar_year` int(11) DEFAULT NULL,
  `financial_quarters` varchar(70) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`datavalue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datavalues`
--

LOCK TABLES `datavalues` WRITE;
/*!40000 ALTER TABLE `datavalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `datavalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilities` (
  `facility_id` int(11) NOT NULL,
  `facility_name` varchar(70) DEFAULT NULL,
  `facility_short_name` varchar(70) DEFAULT NULL,
  `facility_type` varchar(70) DEFAULT NULL,
  `facility_level` varchar(70) DEFAULT NULL,
  `facility_reference_id` varchar(70) DEFAULT NULL,
  `facility_datim_id` varchar(70) DEFAULT NULL,
  `facility_longitude` double DEFAULT NULL,
  `facility_latitude` double DEFAULT NULL,
  `facility_town` varchar(60) DEFAULT NULL,
  `facility_ward` varchar(70) DEFAULT NULL,
  `facility_state` varchar(70) DEFAULT NULL,
  `facility_region` varchar(70) DEFAULT NULL,
  `facility_ceded` varchar(70) DEFAULT NULL,
  `date_ceded` date DEFAULT NULL,
  `orgunit_id` int(11) NOT NULL,
  PRIMARY KEY (`facility_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizational_unit`
--

DROP TABLE IF EXISTS `organizational_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizational_unit` (
  `orgunit_id` int(11) NOT NULL,
  `orgunit_name` varchar(70) DEFAULT NULL,
  `orgunit_short_name` varchar(70) DEFAULT NULL,
  `orgunit_datim_id` varchar(70) DEFAULT NULL,
  `orgunit_reference_id` varchar(70) DEFAULT NULL,
  `orgunit_logitude` decimal(10,0) DEFAULT NULL,
  `orgunit_lattitude` decimal(10,0) DEFAULT NULL,
  `orgunit_parent` int(11) DEFAULT NULL,
  `orgunit_program` varchar(100) DEFAULT NULL,
  `orgunit_groups` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orgunit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizational_unit`
--

LOCK TABLES `organizational_unit` WRITE;
/*!40000 ALTER TABLE `organizational_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `organizational_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orgunit_group`
--

DROP TABLE IF EXISTS `orgunit_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orgunit_group` (
  `orgunit_group_id` int(11) NOT NULL,
  `orgunit_group_name` varchar(70) DEFAULT NULL,
  `orgunit_group_short_name` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`orgunit_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orgunit_group`
--

LOCK TABLES `orgunit_group` WRITE;
/*!40000 ALTER TABLE `orgunit_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `orgunit_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege` (
  `privilege_id` varchar(70) NOT NULL,
  `privilege_name` varchar(70) NOT NULL,
  PRIMARY KEY (`privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program` (
  `program_id` int(11) NOT NULL,
  `program_name` varchar(60) DEFAULT NULL,
  `program_short_name` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploads` (
  `upload_id` int(11) NOT NULL,
  `upload_date` datetime NOT NULL,
  `user_id` varchar(70) NOT NULL,
  `file_name` varchar(70) DEFAULT NULL,
  `upload_status` varchar(70) DEFAULT NULL,
  `file_path` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploads`
--

LOCK TABLES `uploads` WRITE;
/*!40000 ALTER TABLE `uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(70) NOT NULL,
  `password` varchar(70) NOT NULL,
  `first_name` varchar(70) DEFAULT NULL,
  `last_name` varchar(70) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `phone` varchar(70) DEFAULT NULL,
  `user_privileges` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'solinadb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-30  2:58:22
