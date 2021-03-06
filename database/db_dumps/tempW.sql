CREATE DATABASE IF NOT EXISTS `weather_db`; 
USE weather_db; 

 -- MySQL dump 10.18  Distrib 10.3.27-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 10.1.10.23    Database: weather_db
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-0+deb9u1

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
-- Table structure for table `tempW`
--

DROP TABLE IF EXISTS `tempW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempW` (
  `LocationId` int(11) NOT NULL COMMENT 'FK cat_Locations',
  `obs_dateTime` datetime NOT NULL COMMENT 'date and time of observation',
  `obs_date` date NOT NULL COMMENT 'Just the date',
  `obs_time` char(8) NOT NULL COMMENT 'Just the time',
  `temperature` double DEFAULT NULL COMMENT 'in degrees Celsius',
  `windspeed` int(11) DEFAULT NULL COMMENT 'mph (miles per hour)',
  `humidity` double DEFAULT NULL,
  `dewpoint` double DEFAULT NULL,
  `pressure` int(11) DEFAULT NULL,
  `windgust` int(11) DEFAULT NULL,
  `visibility` int(11) DEFAULT NULL,
  `winddirection` char(4) DEFAULT NULL COMMENT 'COMPASS',
  `pressuretendency` char(4) DEFAULT NULL,
  `rainfall` varchar(50) DEFAULT NULL,
  `radiation` double DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`LocationId`,`obs_dateTime`)
) ENGINE=Aria DEFAULT CHARSET=utf8 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempW`
--
-- WHERE:  1 limit 10000

LOCK TABLES `tempW` WRITE;
/*!40000 ALTER TABLE `tempW` DISABLE KEYS */;
INSERT INTO `tempW` VALUES (3002,'2015-04-15 14:00:00','2015-04-15','14:00:00',8.3,31,71.7,4,1005,41,14000,'W','R',NULL,NULL,'2015-04-16 14:20:55'),(3002,'2015-04-15 15:00:00','2015-04-15','15:00:00',8.3,31,74.2,4,1005,40,11000,'W','R',NULL,NULL,'2015-04-16 14:20:55'),(3002,'2015-04-15 16:00:00','2015-04-15','16:00:00',7,22,88.3,5,1006,38,12000,'NW','R',NULL,NULL,'2015-04-16 14:20:55'),(3002,'2015-04-15 17:00:00','2015-04-15','17:00:00',6.4,24,78.7,3,1007,32,27000,'NW','R',NULL,NULL,'2015-04-16 14:20:55'),(3672,'2015-02-20 00:00:00','2015-02-20','00:00:00',6.8,6,94.1,0,0,0,0,'220','\\N','0.6',0,'0000-00-00 00:00:00'),(3672,'2015-02-20 01:00:00','2015-02-20','01:00:00',6.7,7,95.5,0,0,0,0,'220','\\N','0.2',0,'0000-00-00 00:00:00'),(3672,'2015-02-20 02:00:00','2015-02-20','02:00:00',6.5,5,95.5,0,0,0,0,'230','\\N','0.2',0,'0000-00-00 00:00:00'),(3672,'2015-02-20 03:00:00','2015-02-20','03:00:00',6.5,5,95.5,0,0,0,0,'230','\\N','0.8',0,'0000-00-00 00:00:00'),(3672,'2015-02-20 04:00:00','2015-02-20','04:00:00',6.4,7,93.9,0,0,0,0,'240','\\N','0.4',0,'0000-00-00 00:00:00'),(3672,'2015-02-20 05:00:00','2015-02-20','05:00:00',6.1,6,92.4,0,0,0,0,'270','\\N','0.2',0,'0000-00-00 00:00:00'),(3672,'2015-02-20 06:00:00','2015-02-20','06:00:00',5.5,7,90.6,0,0,0,0,'280','\\N','0',0,'0000-00-00 00:00:00'),(3672,'2015-02-20 07:00:00','2015-02-20','07:00:00',4.7,5,91.9,0,0,0,0,'290','\\N','0',0,'0000-00-00 00:00:00'),(3672,'2015-02-20 08:00:00','2015-02-20','08:00:00',4.5,3,91.7,0,0,0,0,'290','\\N','0',0,'0000-00-00 00:00:00'),(3672,'2015-02-20 09:00:00','2015-02-20','09:00:00',4.9,2,92,0,0,0,0,'270','\\N','0',0,'0000-00-00 00:00:00'),(3672,'2015-02-20 10:00:00','2015-02-20','10:00:00',5.3,2,90.5,0,0,0,0,'340','\\N','0',0,'0000-00-00 00:00:00'),(3672,'2015-02-20 11:00:00','2015-02-20','11:00:00',5.8,2,84.6,0,0,0,0,'310','\\N','0',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tempW` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-27 16:20:16
