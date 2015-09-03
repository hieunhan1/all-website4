-- $Id: DATABASE_MYSQL323.sql,v 1.1 2006/07/31 14:11:41 asor Exp $
--
-- MySQL dump 8.23
--
-- Host: localhost    Database: merchant
---------------------------------------------------------
-- Server version	3.23.58-log

--
-- Current Database: merchant
--

CREATE DATABASE /*!32312 IF NOT EXIST*/ merchant;

USE merchant;

--
-- Table structure for table `items`
--

CREATE TABLE items (
  id int(11) NOT NULL auto_increment,
  description char(255) NOT NULL default '',
  content char(255) NOT NULL default '',
  price float(9,2) NOT NULL default '0.00',
  unit enum('WMZ','WMR','WME') NOT NULL default 'WMZ',
  state enum('Y','N') NOT NULL default 'N',
  reserved datetime default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `items`
--


INSERT INTO items VALUES (1,'Test-1','PinCode-1: 987-6543',0.01,'WMR','Y',NULL);
INSERT INTO items VALUES (2,'Test-2','Serial: 123-4567',0.01,'WMR','Y',NULL);
INSERT INTO items VALUES (3,'Test-3','Extra: 987-0000',0.02,'WMR','Y',NULL);

--
-- Table structure for table `payment`
--

CREATE TABLE payment (
  id int(11) NOT NULL auto_increment,
  item int(11) NOT NULL default '0',
  state enum('I','R','S','G','F') NOT NULL default 'I',
  timestamp datetime NOT NULL default '0000-00-00 00:00:00',
  email varchar(255) default NULL,
  RND char(8) default NULL,
  LMI_SYS_INVS_NO int(11) default NULL,
  LMI_SYS_TRANS_NO int(11) default NULL,
  LMI_SYS_TRANS_DATE char(17) default NULL,
  LMI_PAYER_PURSE char(13) default NULL,
  LMI_PAYER_WM char(12) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;
