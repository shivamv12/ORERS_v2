-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.6.26-enterprise-commercial-advanced-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `ad_username` varchar(20) DEFAULT NULL,
  `ad_password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('adminsam@gmail.com','123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_name` varchar(20) DEFAULT NULL,
  `city_code` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES ('Allahabad','ALD'),('Bhopal','BPL'),('Varanasi','BSB'),('Kanpur','CNB'),('Dehradun','DDN'),('Lucknow','LKO'),('New Delhi','NDLS'),('Raebareli','RBL'),('Yesvantpur','YPR');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `issue` varchar(25) DEFAULT NULL,
  `occur_date` date DEFAULT NULL,
  `feedback_user` varchar(30) DEFAULT NULL,
  `user_mail` varchar(50) DEFAULT NULL,
  `feedback_msg` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('Thefts / Pilferages','2019-01-03','test','test@gmail.com','test 1234/1235721 jafvagfal jhajfhfhjasgfjasfasfjagfjaaskjgfasj sdg jasfasfkasdfkfasdfkgadf`');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_info` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_by` varchar(50) NOT NULL,
  `card_num` varchar(20) NOT NULL,
  `expiry` varchar(8) NOT NULL,
  `card_name` varchar(30) NOT NULL,
  `pay_date` date NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
INSERT INTO `payment_info` VALUES (1,'shivam@teamscorpion.in','1234535241235127','2023-11','Shivam Verma','2019-01-20');
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train` (
  `train_id` int(11) NOT NULL DEFAULT '0',
  `train_name` varchar(150) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `arrival` varchar(10) DEFAULT NULL,
  `departure` varchar(10) DEFAULT NULL,
  `classes` varchar(20) DEFAULT NULL,
  `seats` varchar(20) DEFAULT NULL,
  `days` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (12005,'Bhopal Shatabdi','New Delhi','Bhopal','11:20','5:25','AC Chair, 3AC','200','All Day'),(12006,'Bhopal Shatabdi','Bhopal','New Delhi','18:20','12:30','AC Chair, 3 AC','123','All Day'),(12540,'LKO YPR SF Express (Vijaywada)','Lucknow','Yesvantpur','17:10 (D3)','20:00 (D1)','2 AC, 3 AC, Sleeper','435','Thu'),(14203,'BSB LKO Intercity Express','Varanasi','Lucknow','10:30','5:20','3 AC, Sleeper','121','M, T, W, T, F, S'),(14204,'LKO BSB Intercity Express','Lucknow','Varanasi','1:40','7:30','3 AC, Sleeper','119','M, T, W, T, F, S'),(14210,'LKO ALD Intercity Express','Lucknow','Allahabad','12:10','7:10','3 AC, Sleeper','320','All Days'),(22684,'LKO YPR SF Express (Kachiguda)','Lucknow','Yesvantpur','15:10 (D3)','22:25 (D1)','2 AC, 3 AC, Sleeper','289','Fri');
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdata` (
  `user_name` varchar(30) DEFAULT NULL,
  `user_mail` varchar(40) DEFAULT NULL,
  `user_pswd` varchar(100) DEFAULT NULL,
  `user_dob` date DEFAULT NULL,
  `user_gen` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdata`
--

LOCK TABLES `userdata` WRITE;
/*!40000 ALTER TABLE `userdata` DISABLE KEYS */;
INSERT INTO `userdata` VALUES ('Shivam Verma','shivam@teamscorpion.in','e10adc3949ba59abbe56e057f20f883e','1996-11-12','male');
/*!40000 ALTER TABLE `userdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-20 18:32:47
