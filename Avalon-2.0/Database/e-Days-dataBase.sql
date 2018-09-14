/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.1.49-community : Database - edays1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`edays1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `edays1`;

/*Table structure for table `attendancemaster` */

DROP TABLE IF EXISTS `attendancemaster`;

CREATE TABLE `attendancemaster` (
  `AttendanceID` int(10) NOT NULL AUTO_INCREMENT,
  `EmpID` varchar(10) NOT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `Year` int(4) DEFAULT NULL,
  `SDay1` time DEFAULT '00:00:00',
  `EDay1` time DEFAULT '00:00:00',
  `HDay1` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay2` time DEFAULT '00:00:00',
  `EDay2` time DEFAULT '00:00:00',
  `HDay2` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay3` time DEFAULT '00:00:00',
  `EDay3` time DEFAULT '00:00:00',
  `HDay3` enum('AM','PM','Na') DEFAULT 'Na',
  `SDay4` time DEFAULT '00:00:00',
  `Eday4` time DEFAULT '00:00:00',
  `HDay4` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay5` time DEFAULT '00:00:00',
  `EDay5` time DEFAULT '00:00:00',
  `HDay5` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay6` time DEFAULT '00:00:00',
  `EDay6` time DEFAULT '00:00:00',
  `HDay6` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay7` time DEFAULT '00:00:00',
  `EDay7` time DEFAULT '00:00:00',
  `HDay7` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay8` time DEFAULT '00:00:00',
  `EDay8` time DEFAULT '00:00:00',
  `HDay8` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay9` time DEFAULT '00:00:00',
  `EDay9` time DEFAULT '00:00:00',
  `HDay9` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay10` time DEFAULT '00:00:00',
  `EDay10` time DEFAULT '00:00:00',
  `HDay10` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay11` time DEFAULT '00:00:00',
  `EDay11` time DEFAULT '00:00:00',
  `HDay11` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay12` time DEFAULT '00:00:00',
  `EDay12` time DEFAULT '00:00:00',
  `HDay12` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay13` time DEFAULT '00:00:00',
  `EDay13` time DEFAULT '00:00:00',
  `HDay13` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay14` time DEFAULT '00:00:00',
  `EDay14` time DEFAULT '00:00:00',
  `HDay14` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay15` time DEFAULT '00:00:00',
  `EDay15` time DEFAULT '00:00:00',
  `HDay15` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay16` time DEFAULT '00:00:00',
  `EDay16` time DEFAULT '00:00:00',
  `HDay16` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay17` time DEFAULT '00:00:00',
  `EDay17` time DEFAULT '00:00:00',
  `HDay17` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay18` time DEFAULT '00:00:00',
  `EDay18` time DEFAULT '00:00:00',
  `HDay18` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay19` time DEFAULT '00:00:00',
  `EDay19` time DEFAULT '00:00:00',
  `HDay19` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay20` time DEFAULT '00:00:00',
  `EDay20` time DEFAULT '00:00:00',
  `HDay20` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay21` time DEFAULT '00:00:00',
  `EDay21` time DEFAULT '00:00:00',
  `HDay21` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay22` time DEFAULT '00:00:00',
  `EDay22` time DEFAULT '00:00:00',
  `HDay22` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay23` time DEFAULT '00:00:00',
  `EDay23` time DEFAULT '00:00:00',
  `HDay23` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay24` time DEFAULT '00:00:00',
  `EDay24` time DEFAULT '00:00:00',
  `HDay24` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay25` time DEFAULT '00:00:00',
  `EDay25` time DEFAULT '00:00:00',
  `HDay25` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay26` time DEFAULT '00:00:00',
  `EDay26` time DEFAULT '00:00:00',
  `HDay26` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay27` time DEFAULT '00:00:00',
  `EDay27` time DEFAULT '00:00:00',
  `HDay27` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay28` time DEFAULT '00:00:00',
  `EDay28` time DEFAULT '00:00:00',
  `HDay28` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay29` time DEFAULT '00:00:00',
  `EDay29` time DEFAULT '00:00:00',
  `HDay29` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay30` time DEFAULT '00:00:00',
  `Eday30` time DEFAULT '00:00:00',
  `HDay30` enum('AM','PM','NA') DEFAULT 'NA',
  `SDay31` time DEFAULT '00:00:00',
  `EDay31` time DEFAULT '00:00:00',
  `HDay31` enum('AM','PM','NA') DEFAULT 'NA',
  PRIMARY KEY (`AttendanceID`,`EmpID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `attendancemaster` */

insert  into `attendancemaster`(`AttendanceID`,`EmpID`,`Month`,`Year`,`SDay1`,`EDay1`,`HDay1`,`SDay2`,`EDay2`,`HDay2`,`SDay3`,`EDay3`,`HDay3`,`SDay4`,`Eday4`,`HDay4`,`SDay5`,`EDay5`,`HDay5`,`SDay6`,`EDay6`,`HDay6`,`SDay7`,`EDay7`,`HDay7`,`SDay8`,`EDay8`,`HDay8`,`SDay9`,`EDay9`,`HDay9`,`SDay10`,`EDay10`,`HDay10`,`SDay11`,`EDay11`,`HDay11`,`SDay12`,`EDay12`,`HDay12`,`SDay13`,`EDay13`,`HDay13`,`SDay14`,`EDay14`,`HDay14`,`SDay15`,`EDay15`,`HDay15`,`SDay16`,`EDay16`,`HDay16`,`SDay17`,`EDay17`,`HDay17`,`SDay18`,`EDay18`,`HDay18`,`SDay19`,`EDay19`,`HDay19`,`SDay20`,`EDay20`,`HDay20`,`SDay21`,`EDay21`,`HDay21`,`SDay22`,`EDay22`,`HDay22`,`SDay23`,`EDay23`,`HDay23`,`SDay24`,`EDay24`,`HDay24`,`SDay25`,`EDay25`,`HDay25`,`SDay26`,`EDay26`,`HDay26`,`SDay27`,`EDay27`,`HDay27`,`SDay28`,`EDay28`,`HDay28`,`SDay29`,`EDay29`,`HDay29`,`SDay30`,`Eday30`,`HDay30`,`SDay31`,`EDay31`,`HDay31`) values (1,'VG005','4',2018,'00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','Na','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA'),(2,'SS006','4',2018,'00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','Na','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA'),(3,'AM007','4',2018,'00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','Na','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA'),(4,'SK008','4',2018,'00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','Na','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA'),(5,'MS004','4',2018,'00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','Na','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA'),(6,'SP003','4',2018,'00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','Na','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA'),(7,'VG005','5',2018,'10:27:52','18:09:36','NA','00:00:00','00:00:00','NA','10:05:51','18:09:36','Na','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:27:52','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA'),(8,'SS006','5',2018,'10:27:52','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','Na','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:05:51','12:09:36','PM','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA'),(9,'AM007','5',2018,'10:27:52','18:09:36','NA','10:05:51','18:09:36','NA','10:05:51','18:09:36','Na','10:05:51','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:27:52','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA'),(10,'SK008','5',2018,'10:27:52','18:09:36','NA','10:05:51','18:09:36','NA','00:00:00','00:00:00','Na','10:29:07','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','10:27:52','18:09:36','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA','00:00:00','00:00:00','NA');

/*Table structure for table `colortable` */

DROP TABLE IF EXISTS `colortable`;

CREATE TABLE `colortable` (
  `ColorId` int(11) NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(100) NOT NULL,
  `ColorCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ColorId`,`LeaveType`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `colortable` */

insert  into `colortable`(`ColorId`,`LeaveType`,`ColorCode`) values (1,'Sick Leave','#f1b4b4'),(3,'Maternity','#44a1e0');

/*Table structure for table `countrymaster` */

DROP TABLE IF EXISTS `countrymaster`;

CREATE TABLE `countrymaster` (
  `CountryCode` int(3) NOT NULL,
  `CountryName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CountryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `countrymaster` */

insert  into `countrymaster`(`CountryCode`,`CountryName`) values (1,'Canada '),(7,'Kazakstan or Kazakhstan '),(20,'Egypt '),(27,'South Africa '),(30,'Greece '),(31,'Netherlands '),(32,'Belgium '),(33,'France '),(34,'Spain '),(36,'Hungary '),(39,'Italy '),(40,'Romania '),(41,'Switzerland '),(43,'Austria'),(44,'United Kingdom (Great Britain / UK)'),(45,'Denmark '),(46,'Sweden '),(47,'Norway '),(48,'Poland '),(49,'Germany '),(51,'Peru '),(52,'Mexico '),(53,'Christmas Island '),(54,'Argentina '),(55,'Brazil '),(56,'Chile '),(57,'Colombia '),(58,'Venezuela '),(60,'Malaysia '),(61,'Australia'),(62,'Indonesia '),(63,'Philippines '),(64,'New Zealand '),(65,'Singapore '),(66,'Thailand '),(81,'Japan '),(82,'North Korea'),(84,'Vietnam '),(86,'China '),(90,'Turkey '),(91,'India '),(92,'Pakistan '),(93,'Afghanistan '),(94,'Sri Lanka '),(95,'Myanmar'),(98,'Iran'),(212,'Morocco '),(213,'Algeria '),(216,'Tunisia '),(218,'Libya '),(220,'Gambia'),(221,'Senegal '),(222,'Mauritania '),(223,'Mali '),(224,'Guinea '),(225,'Cote D\'Ivoire '),(226,'Burkina Faso '),(227,'Niger '),(229,'Benin '),(230,'Mauritius '),(231,'Liberia '),(232,'Sierra Leone '),(233,'Ghana '),(234,'Nigeria '),(235,'Chad '),(236,'Central African Republic '),(237,'Cameroon '),(238,'Cape Verde '),(239,'Sao Tome and Principe '),(240,'Equatorial Guinea '),(241,'Gabon '),(242,'Bahamas'),(243,'Congo'),(244,'Angola'),(245,'Guinea-Bissau '),(246,'Barbados '),(248,'Seychelles '),(249,'Sudan '),(250,'Rwanda '),(251,'Ethiopia '),(252,'Somalia '),(253,'Djibouti '),(254,'Kenya '),(255,'Tanzania'),(256,'Uganda'),(257,'Burundi '),(258,'Mozambique '),(260,'Zambia'),(261,'Madagascar '),(262,'Reunion '),(263,'Zimbabwe'),(264,'Anguilla '),(265,'Malawi '),(266,'Lesotho '),(267,'Botswana '),(268,'Antigua and Barbuda'),(269,'Comoros'),(284,'Virgin Islands'),(290,'Saint Helena '),(291,'Eritrea '),(297,'Aruba'),(298,'Faroe Islands '),(299,'Greenland '),(340,'Virgin Islands'),(345,'Cayman Islands '),(350,'Gibraltar '),(351,'Portugal '),(352,'Luxembourg '),(353,'Ireland '),(354,'Iceland '),(355,'Albania '),(356,'Malta '),(357,'Cyprus '),(358,'Finland '),(359,'Bulgaria '),(370,'Lithuania '),(371,'Latvia '),(372,'Estonia '),(373,'Moldova'),(374,'Armenia'),(375,'Belarus '),(376,'Andorra'),(377,'Monaco'),(378,'San Marino '),(380,'Ukraine '),(385,'Croatia '),(386,'Slovenia '),(387,'Bosnia and Herzegovina '),(389,'Macedonia'),(418,'Vatican City State (Holy See)'),(420,'Czech Republic'),(421,'Slovakia'),(423,'Liechtenstein '),(441,'Bermuda '),(473,'Grenada '),(500,'Falkland Islands '),(501,'Belize '),(502,'Guatemala '),(503,'El Salvador '),(504,'Honduras '),(505,'Nicaragua '),(506,'Costa Rica '),(507,'Panama '),(508,'Saint Pierre and Miquelon '),(509,'Haiti '),(590,'Guadeloupe'),(591,'Bolivia '),(592,'Guyana '),(593,'Ecuador '),(594,'French Guiana or French Guyana '),(595,'Paraguay '),(596,'Martinique '),(597,'Suriname '),(598,'Uruguay'),(599,'Netherlands Antilles '),(649,'Turks and Caicos Islands '),(664,'Montserrat '),(670,'East Timor '),(671,'Guam'),(672,'Antarctica'),(673,'Brunei '),(674,'Nauru '),(675,'Papua New Guinea '),(676,'Tonga'),(677,'Solomon Islands '),(678,'Vanuatu '),(679,'Fiji '),(680,'Palau '),(681,'Wallis and Futuna Islands '),(682,'Cook Islands '),(683,'Niue '),(684,'American Samoa'),(685,'Samoa '),(686,'Kiribati '),(687,'New Caledonia '),(688,'Tuvalu '),(689,'French Polynesia '),(690,'Tokelau '),(691,'Micronesia'),(692,'Marshall Islands '),(758,'Saint Lucia '),(767,'Dominica '),(784,'Saint Vincent and the Grenadines '),(829,'Dominican Republic '),(850,'South Korea'),(852,'Hong Kong '),(853,'Macau '),(855,'Cambodia'),(856,'Lao People\'s Democratic Republic (Laos)'),(868,'Trinidad and Tobago '),(869,'Saint Kitts and Nevis '),(876,'Jamaica '),(880,'Bangladesh '),(886,'Taiwan '),(939,'Puerto Rico '),(960,'Maldives '),(961,'Lebanon '),(962,'Jordan '),(963,'Syria (Syrian Arab Republic) '),(964,'Iraq '),(965,'Kuwait '),(966,'Saudi Arabia '),(967,'Yemen '),(968,'Oman'),(970,'Palestinian State '),(971,'United Arab Emirates (UAE) '),(972,'Israel '),(973,'Bahrain'),(974,'Qatar'),(975,'Bhutan'),(976,'Mongolia '),(977,'Nepal '),(992,'Tajikistan '),(993,'Turkmenistan '),(994,'Azerbaijan or Azerbaidjan '),(995,'Georgia '),(996,'Kyrgyzstan '),(998,'Uzbekistan ');

/*Table structure for table `departmentmaster` */

DROP TABLE IF EXISTS `departmentmaster`;

CREATE TABLE `departmentmaster` (
  `DepartmentId` int(10) NOT NULL,
  `DepartmentName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DepartmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `departmentmaster` */

insert  into `departmentmaster`(`DepartmentId`,`DepartmentName`) values (1,'IT');

/*Table structure for table `emphierarchy` */

DROP TABLE IF EXISTS `emphierarchy`;

CREATE TABLE `emphierarchy` (
  `HierarchyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EmpId` varchar(20) DEFAULT NULL,
  `ReportingTo` varchar(20) DEFAULT NULL,
  `ManagerId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`HierarchyId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `emphierarchy` */

insert  into `emphierarchy`(`HierarchyId`,`EmpId`,`ReportingTo`,`ManagerId`) values (1,'MG001','MG001','1'),(2,'AM002','MG001','1'),(3,'SP003','MG001','1'),(4,'MS004','AM002','1'),(5,'VG005','SP003','1'),(6,'SS006','SP003','1'),(7,'AM007','SP003','1'),(8,'SK008','SP003','1');

/*Table structure for table `empmaster` */

DROP TABLE IF EXISTS `empmaster`;

CREATE TABLE `empmaster` (
  `EmpId` varchar(20) NOT NULL,
  `OfficeId` int(11) DEFAULT NULL,
  `DepartmentId` int(11) DEFAULT NULL,
  `ManagerId` varchar(20) DEFAULT NULL,
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `DOJ` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Mobile` varchar(11) DEFAULT NULL,
  `AltMobile` varchar(11) DEFAULT NULL,
  `EmergencyMobile` varchar(11) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `AltMail` varchar(150) DEFAULT NULL,
  `Designation` varchar(150) DEFAULT NULL,
  `Roll` varchar(150) DEFAULT NULL,
  `Gender` enum('Male','Female','Other') DEFAULT NULL,
  `Status` enum('Regular','Released','Terminated','Missing') DEFAULT NULL,
  `UID` int(12) DEFAULT NULL,
  `PanNo` int(10) DEFAULT NULL,
  `PassportNo` int(10) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Pin` varchar(6) DEFAULT NULL,
  `Pic` varchar(200) DEFAULT NULL,
  `Signature` varchar(200) DEFAULT NULL,
  `CreatedBy` varchar(20) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `UpdatedBy` varchar(20) DEFAULT NULL,
  `UpdatedDate` date DEFAULT NULL,
  PRIMARY KEY (`EmpId`),
  KEY `OfficeId` (`OfficeId`),
  KEY `DepartmentId` (`DepartmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `empmaster` */

insert  into `empmaster`(`EmpId`,`OfficeId`,`DepartmentId`,`ManagerId`,`FName`,`LName`,`DOB`,`DOJ`,`Mobile`,`AltMobile`,`EmergencyMobile`,`Email`,`AltMail`,`Designation`,`Roll`,`Gender`,`Status`,`UID`,`PanNo`,`PassportNo`,`Address`,`State`,`Country`,`Pin`,`Pic`,`Signature`,`CreatedBy`,`CreatedDate`,`UpdatedBy`,`UpdatedDate`) values ('AM002',2,2,'1','Ankur ','mittal',NULL,'2018-03-09 00:00:00','1223',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12345,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AM007',7,7,'3','Akash','Mishra',NULL,'2018-05-22 16:12:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12345,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MG001',1,1,'1','Megha ','gupta',NULL,'2018-03-07 00:00:00','987657890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,123456,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MS004',4,4,'2','Mudit ','Sharma',NULL,'2018-03-22 00:00:00','9669668',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12345,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SK008',8,8,'3','Sohail ','Khan',NULL,'2018-05-22 16:12:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,123455,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SP003',3,3,'1','Sobhit','prakhar',NULL,'2018-05-22 18:51:27','98236296',NULL,NULL,'SP_123@gmail.com',NULL,NULL,NULL,'Female',NULL,12345,NULL,NULL,NULL,NULL,NULL,NULL,'images/SP003.jpg',NULL,NULL,NULL,NULL,NULL),('SS006',6,6,'3','Sumit ','Sharma',NULL,'2018-04-05 00:00:00','972490',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12345,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('VG005',5,5,'3','Vidit ','Gupta',NULL,'2018-03-19 00:00:00','77',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12345,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `festivalmaster` */

DROP TABLE IF EXISTS `festivalmaster`;

CREATE TABLE `festivalmaster` (
  `FestivalId` int(3) NOT NULL AUTO_INCREMENT,
  `CountryCode` int(3) DEFAULT NULL,
  `OfficeId` int(10) DEFAULT NULL,
  `FestivalName` varchar(30) DEFAULT NULL,
  `NOH` int(1) DEFAULT NULL COMMENT 'No of Holidays',
  `Year` int(4) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  PRIMARY KEY (`FestivalId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `festivalmaster` */

insert  into `festivalmaster`(`FestivalId`,`CountryCode`,`OfficeId`,`FestivalName`,`NOH`,`Year`,`StartDate`,`EndDate`) values (1,91,1,'New Year\'s Day',2,2018,'2018-01-01','2018-01-02'),(2,91,1,'Maha Shivaratri',1,2018,'2018-02-14','2018-02-14'),(3,91,1,'Ram Navami',1,2018,'2018-03-25','2018-03-25'),(4,91,1,'Budhha Purnima',1,2018,'2018-04-30','2018-04-30'),(5,91,1,'Rath Yatra',1,2018,'2018-07-14','2018-07-14'),(6,91,1,'Makar Sankranti / Pongal',1,2018,'2018-01-14','2018-01-14'),(7,91,1,'Holi',1,2018,'2018-03-02','2018-03-02'),(8,91,1,'Mahavir Jayanti',1,2018,'2018-03-29','2018-03-29'),(9,91,1,'Labor Day',1,2018,'2018-05-01','2018-05-01'),(10,91,1,'Independence Day',1,2018,'2018-08-15','2018-08-15'),(11,91,1,'Republic Day',1,2018,'2018-01-26','2018-01-26'),(12,91,1,'Ugadi / Gudi Padwa',1,2018,'2018-03-18','2018-03-18'),(13,91,1,'Good Friday',1,2018,'2018-03-30','2018-03-30'),(14,91,1,'Eid-ul-Fitar',2,2018,'2018-06-16','2018-06-17'),(15,91,1,'Bakri Id / Eid ul-Adha',1,2018,'2018-08-22','2018-08-22');

/*Table structure for table `leavedetails` */

DROP TABLE IF EXISTS `leavedetails`;

CREATE TABLE `leavedetails` (
  `DetailID` int(10) NOT NULL AUTO_INCREMENT,
  `EmpID` varchar(10) DEFAULT NULL,
  `LeaveType` enum('sick','maternity leave','casual leave') DEFAULT NULL,
  `LeaveCause` enum('PTM','Normal') DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `EndDate` varchar(20) DEFAULT NULL,
  `HSOD` enum('AM','PM') DEFAULT NULL,
  `HEOD` enum('AM','PM') DEFAULT NULL,
  `NOD` int(4) DEFAULT NULL,
  `Status` enum('Pending','Approved','Canceled','Rejected') DEFAULT NULL,
  `CreatedDate` varchar(20) DEFAULT NULL,
  `ApprovedDate` varchar(20) DEFAULT NULL,
  `ApprovedBy` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `leavedetails` */

insert  into `leavedetails`(`DetailID`,`EmpID`,`LeaveType`,`LeaveCause`,`FromDate`,`EndDate`,`HSOD`,`HEOD`,`NOD`,`Status`,`CreatedDate`,`ApprovedDate`,`ApprovedBy`) values (1,'AM002','sick','Normal','4/9/2018','4/13/2018',NULL,NULL,5,'Approved','4/9/2018','4/10/2018','MG001'),(2,'MG001','maternity leave','PTM','4/12/2018','4/13/2018','AM','PM',2,'Approved','4/10/2018','4/10/2018','MG001'),(3,'MS004','sick','Normal','4/18/2018','4/18/2018',NULL,NULL,1,'Pending','4/10/2018','4/10/2018','MG001'),(4,'SP003','maternity leave','Normal','4/19/2018','4/21/2018','AM','PM',3,'Approved','4/14/2018','5/11/2018','MG001'),(5,'VG005','sick','Normal','4/26/2018','4/30/2018','AM',NULL,5,'Approved','4/24/2018','4/24/2018','MG001'),(6,'SS006','sick','Normal','6/12/2018','6/15/2018','AM','PM',3,'Pending','4/12/2018','5/17/2018','SP003'),(7,'SK008','casual leave','Normal','4/20/2018','4/21/2018',NULL,NULL,2,'Pending','4/23/2018','4/20/2018','MG001'),(8,'AM007','sick','Normal','4/24/2018','4/24/2018 ',NULL,'PM',1,'Approved','4/25/2018','4/25/2018','MG001'),(9,'AM002','casual leave','Normal','5/14/2018','5/15/2018','AM',NULL,2,'Approved','5/10/2018','5/14/2018','MG001'),(10,'SP003','sick','Normal','3/23/2018','3/25/2018',NULL,NULL,3,'Approved','3/20/2018','3/22/2018','MG001'),(11,'SP003','sick','Normal','2/23/2018','2/25/2018',NULL,NULL,3,'Approved','2/20/2018','2/22/2018','MG001'),(12,'SP003','sick','Normal','1/30/2018','2/1/2018',NULL,NULL,3,'Approved','1/20/2018','1/22/2018','MG001'),(13,'SS006','casual leave','Normal','5/15/2018','5/16/2018',NULL,NULL,2,'Approved','5/13/2018','5/15/2018','SP003');

/*Table structure for table `leavemaster` */

DROP TABLE IF EXISTS `leavemaster`;

CREATE TABLE `leavemaster` (
  `LeaveId` int(10) NOT NULL,
  `EmpId` varchar(20) DEFAULT NULL,
  `TotalLeave` float DEFAULT NULL,
  `BalanceLeave` float DEFAULT NULL,
  `AdvanceLeave` float DEFAULT NULL,
  PRIMARY KEY (`LeaveId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `leavemaster` */

insert  into `leavemaster`(`LeaveId`,`EmpId`,`TotalLeave`,`BalanceLeave`,`AdvanceLeave`) values (1,'MG001',1,2,2),(2,'AM002',1,2,2),(3,'SP003',3,2,2),(4,'MS004',2,2,2),(5,'VG005',4,2,2),(6,'SS006',2,2,2),(7,'AM007',1,2,2);

/*Table structure for table `leaverules` */

DROP TABLE IF EXISTS `leaverules`;

CREATE TABLE `leaverules` (
  `LeaveRuleId` int(10) NOT NULL AUTO_INCREMENT,
  `TotalLeaves` int(2) DEFAULT NULL,
  `IsHalfDayAllow` int(1) DEFAULT '0',
  `AutoHalfDay` int(1) DEFAULT '0',
  `HalfDayNoOfHours` time NOT NULL DEFAULT '00:00:00',
  `LeaveCarryForward` int(1) DEFAULT '0',
  `MaxNODCarryForward` int(1) DEFAULT NULL,
  `NoOfAdvanceLeave` int(1) DEFAULT NULL,
  PRIMARY KEY (`LeaveRuleId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `leaverules` */

insert  into `leaverules`(`LeaveRuleId`,`TotalLeaves`,`IsHalfDayAllow`,`AutoHalfDay`,`HalfDayNoOfHours`,`LeaveCarryForward`,`MaxNODCarryForward`,`NoOfAdvanceLeave`) values (1,14,1,1,'00:00:00',0,4,0);

/*Table structure for table `leavetype` */

DROP TABLE IF EXISTS `leavetype`;

CREATE TABLE `leavetype` (
  `LeaveTypeId` int(2) DEFAULT NULL,
  `LeaveType` varchar(20) DEFAULT NULL,
  `Available` enum('Female','All') DEFAULT NULL,
  `ColorCode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `leavetype` */

insert  into `leavetype`(`LeaveTypeId`,`LeaveType`,`Available`,`ColorCode`) values (1,'sick','All','#e6b0aa'),(2,'maternity leave','Female','yellow'),(3,'casual leave','All','#dc7633');

/*Table structure for table `logintable` */

DROP TABLE IF EXISTS `logintable`;

CREATE TABLE `logintable` (
  `EmpId` varchar(20) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UserName`),
  KEY `EmpId` (`EmpId`),
  CONSTRAINT `logintable_ibfk_1` FOREIGN KEY (`EmpId`) REFERENCES `empmaster` (`EmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `logintable` */

insert  into `logintable`(`EmpId`,`UserName`,`Password`) values ('MG001','a','a'),('AM002','b','b'),('SP003','c','c'),('MS004','d','d'),('VG005','e','e'),('SS006','f','f'),('AM007','g','g'),('SK008','h','h');

/*Table structure for table `officemaster` */

DROP TABLE IF EXISTS `officemaster`;

CREATE TABLE `officemaster` (
  `OfficeId` int(10) NOT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `isHead` int(1) DEFAULT '0',
  `CreatedBy` varchar(20) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  PRIMARY KEY (`OfficeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `officemaster` */

insert  into `officemaster`(`OfficeId`,`City`,`State`,`Country`,`isHead`,`CreatedBy`,`CreatedDate`) values (1,'Noida','Uttar Pradesh','India',1,'Tarique Anwar','2011-01-03'),(2,'Noida','Uttar Pradesh','India',1,'Tarique Anwar','2011-01-03'),(3,'Noida','Uttar Pradesh','India',1,'Tarique Anwar','2011-01-03'),(4,'Noida','Uttar Pradesh','India',1,'Tarique Anwar','2011-01-03'),(5,'Noida','Uttar Pradesh','India',1,'Tarique Anwar','2011-01-03'),(6,'Noida','Uttar Pradesh','India',1,'Tarique Anwar','2011-01-03'),(7,'Noida','Uttar Pradesh','India',1,'Tarique Anwar','2011-01-03');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
