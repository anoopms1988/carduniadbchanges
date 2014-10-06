/*
SQLyog Community v11.52 (64 bit)
MySQL - 5.6.16 : Database - cardunia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cardunia` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cardunia`;

/*Table structure for table `dealers` */

DROP TABLE IF EXISTS `dealers`;

CREATE TABLE `dealers` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `company_id` int(20) DEFAULT NULL,
  `city_id` int(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` text,
  `phonenumber` varchar(100) DEFAULT NULL,
  `mobilenumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dealers` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
