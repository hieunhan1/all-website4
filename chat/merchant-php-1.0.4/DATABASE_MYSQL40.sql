-- MySQL dump 10.9
--
-- Host: localhost    Database: merchant
-- ------------------------------------------------------
-- Server version	4.1.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `merchant`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `merchant` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `merchant`;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL auto_increment,
  `description` char(255) NOT NULL default '',
  `content` char(255) NOT NULL default '',
  `price` float(9,2) NOT NULL default '0.00',
  `unit` enum('WMZ','WMR','WME') NOT NULL default 'WMZ',
  `state` enum('Y','N') NOT NULL default 'N',
  `reserved` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--


/*!40000 ALTER TABLE `items` DISABLE KEYS */;
LOCK TABLES `items` WRITE;
INSERT INTO `items` VALUES (1,'Test-1','PinCode-1: 987-6543',0.01,'WMR','Y',NULL),(2,'Test-2','Serial: 123-4567',0.01,'WMR','Y',NULL),(3,'Test-3','Extra: 987-0000',0.02,'WMR','Y',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(11) NOT NULL auto_increment,
  `item` int(11) NOT NULL default '0',
  `state` enum('I','R','S','G','F') NOT NULL default 'I',
  `timestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  `email` varchar(255) default NULL,
  `RND` varchar(8) default NULL,
  `LMI_SYS_INVS_NO` int(11) default NULL,
  `LMI_SYS_TRANS_NO` int(11) default NULL,
  `LMI_SYS_TRANS_DATE` varchar(17) default NULL,
  `LMI_PAYER_PURSE` varchar(13) default NULL,
  `LMI_PAYER_WM` varchar(12) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--


/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
LOCK TABLES `payment` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

