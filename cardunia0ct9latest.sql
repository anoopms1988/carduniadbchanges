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

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

/*Table structure for table `brakes` */

DROP TABLE IF EXISTS `brakes`;

CREATE TABLE `brakes` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `variant_id` int(20) DEFAULT NULL,
  `rear_brakes` varchar(100) DEFAULT NULL,
  `front_brakes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `brakes` */

insert  into `brakes`(`id`,`variant_id`,`rear_brakes`,`front_brakes`) values (1,1,'Disc','Drum');

/*Table structure for table `capacity` */

DROP TABLE IF EXISTS `capacity`;

CREATE TABLE `capacity` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `variant_id` int(20) DEFAULT NULL,
  `tank_capacity` double DEFAULT NULL,
  `seating_capacity` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `capacity` */

insert  into `capacity`(`id`,`variant_id`,`tank_capacity`,`seating_capacity`) values (1,1,40,5);

/*Table structure for table `cars` */

DROP TABLE IF EXISTS `cars`;

CREATE TABLE `cars` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `company_id` int(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `is_active` enum('0','1') DEFAULT '1' COMMENT '1 for active,0 for inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `cars` */

insert  into `cars`(`id`,`company_id`,`name`,`is_active`) values (1,1,'Q7','1'),(2,2,'5 series','1'),(3,NULL,'A6','0'),(4,1,'A6','1'),(5,1,'q5','1'),(6,2,'q5','0');

/*Table structure for table `cities` */

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `cities` */

insert  into `cities`(`id`,`name`) values (1,'Trivandrum'),(2,'Cochin'),(3,'Banglore'),(4,'');

/*Table structure for table `companies` */

DROP TABLE IF EXISTS `companies`;

CREATE TABLE `companies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `companies` */

insert  into `companies`(`id`,`name`) values (1,'Audi'),(2,'BMW'),(3,'Mercedes'),(4,'VW');

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city_id` int(20) DEFAULT NULL,
  `mobilenumber` varchar(100) DEFAULT NULL,
  `is_active` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `customers` */

insert  into `customers`(`id`,`first_name`,`last_name`,`email`,`city_id`,`mobilenumber`,`is_active`) values (1,'sf','dsfsdf','sada@gmail.com',1,'324324234','1');

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
  `is_active` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `dealers` */

insert  into `dealers`(`id`,`company_id`,`city_id`,`name`,`address`,`phonenumber`,`mobilenumber`,`is_active`) values (1,2,2,'asdasdkkkkkkkkkk','sadasd','123213','12321321','1');

/*Table structure for table `dimensions` */

DROP TABLE IF EXISTS `dimensions`;

CREATE TABLE `dimensions` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `variant_id` int(20) DEFAULT NULL,
  `length` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `wheelbase` float DEFAULT NULL,
  `bootspace` float DEFAULT NULL,
  `kerbweight` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `dimensions` */

insert  into `dimensions`(`id`,`variant_id`,`length`,`width`,`height`,`wheelbase`,`bootspace`,`kerbweight`) values (2,1,100,1345,4234,34,36,50);

/*Table structure for table `engine` */

DROP TABLE IF EXISTS `engine`;

CREATE TABLE `engine` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `variant_id` int(20) DEFAULT NULL,
  `torque` varchar(100) DEFAULT NULL,
  `displacement` varchar(100) DEFAULT NULL,
  `power` varchar(100) DEFAULT NULL,
  `cylinders` int(20) DEFAULT NULL,
  `valvespercylinder` int(20) DEFAULT NULL,
  `valvemechanism` varchar(100) DEFAULT NULL,
  `cylinderconfiguration` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `engine` */

insert  into `engine`(`id`,`variant_id`,`torque`,`displacement`,`power`,`cylinders`,`valvespercylinder`,`valvemechanism`,`cylinderconfiguration`) values (1,1,'134','200','198ps',4,5,'inline','typical'),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `exterior` */

DROP TABLE IF EXISTS `exterior`;

CREATE TABLE `exterior` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `exterior` */

insert  into `exterior`(`id`,`name`) values (1,'wind screen'),(2,'foglamp');

/*Table structure for table `fuelefficiency` */

DROP TABLE IF EXISTS `fuelefficiency`;

CREATE TABLE `fuelefficiency` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `variant_id` int(20) DEFAULT NULL,
  `mileage_highway` double DEFAULT NULL,
  `mileage_city` double DEFAULT NULL,
  `mileage_overall` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `fuelefficiency` */

insert  into `fuelefficiency`(`id`,`variant_id`,`mileage_highway`,`mileage_city`,`mileage_overall`) values (1,1,20,16,22);

/*Table structure for table `interior` */

DROP TABLE IF EXISTS `interior`;

CREATE TABLE `interior` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `interior` */

insert  into `interior`(`id`,`name`) values (1,'leatherseat'),(2,'rear vent');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `password_reminders` */

DROP TABLE IF EXISTS `password_reminders`;

CREATE TABLE `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_reminders_email_index` (`email`),
  KEY `password_reminders_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_reminders` */

/*Table structure for table `price` */

DROP TABLE IF EXISTS `price`;

CREATE TABLE `price` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `showroomprice` varchar(100) DEFAULT NULL,
  `onroadprice` varchar(100) DEFAULT NULL,
  `variant_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `price` */

insert  into `price`(`id`,`showroomprice`,`onroadprice`,`variant_id`) values (1,'4000000000','50000000,00',1);

/*Table structure for table `reviews` */

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `customer_id` int(20) DEFAULT NULL,
  `variant_id` int(20) DEFAULT NULL,
  `reviews` text,
  `is_approved` enum('1','0') DEFAULT '0',
  `is_active` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `reviews` */

insert  into `reviews`(`id`,`customer_id`,`variant_id`,`reviews`,`is_approved`,`is_active`) values (1,1,1,'Audi at its best','1','1');

/*Table structure for table `safety` */

DROP TABLE IF EXISTS `safety`;

CREATE TABLE `safety` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `safety` */

insert  into `safety`(`id`,`name`) values (1,'abs'),(2,'airbag');

/*Table structure for table `steering` */

DROP TABLE IF EXISTS `steering`;

CREATE TABLE `steering` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `variant_id` int(20) DEFAULT NULL,
  `turning_radius` float DEFAULT NULL,
  `steering_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `steering` */

insert  into `steering`(`id`,`variant_id`,`turning_radius`,`steering_type`) values (1,1,4.5,'Power steering');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`password`,`remember_token`) values (1,'1988anoopms@gmail.com','$2a$10$IxbZk6G46Dcynv31M2vs4u0M1B2PfhHRorPQej81VnJn4Vr1was2a','7UVvPWRcEffMzyFNOFPe5WwMBhRQJKFMxpg2hw95F9UdRbcsuAAICjWbPHDk');

/*Table structure for table `variant_exterior` */

DROP TABLE IF EXISTS `variant_exterior`;

CREATE TABLE `variant_exterior` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `variant_id` int(20) DEFAULT NULL,
  `features` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `variant_exterior` */

insert  into `variant_exterior`(`id`,`variant_id`,`features`) values (1,1,'1');

/*Table structure for table `variant_interior` */

DROP TABLE IF EXISTS `variant_interior`;

CREATE TABLE `variant_interior` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `variant_id` int(20) DEFAULT NULL,
  `features` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `variant_interior` */

insert  into `variant_interior`(`id`,`variant_id`,`features`) values (1,1,'1,2');

/*Table structure for table `variant_safety` */

DROP TABLE IF EXISTS `variant_safety`;

CREATE TABLE `variant_safety` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `variant_id` int(20) DEFAULT NULL,
  `features` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `variant_safety` */

insert  into `variant_safety`(`id`,`variant_id`,`features`) values (1,1,'1');

/*Table structure for table `variants` */

DROP TABLE IF EXISTS `variants`;

CREATE TABLE `variants` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `car_id` int(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_active` enum('0','1') DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `variants` */

insert  into `variants`(`id`,`car_id`,`name`,`type`,`is_active`) values (1,1,'Q7 x','petrol','1'),(2,2,'5 series x','diesel','1'),(5,1,'Q723432','diesel','1'),(6,1,'Q7asdas','petrol','1'),(7,1,'Q7x','petrol','0');

/*Table structure for table `wheels_tyres` */

DROP TABLE IF EXISTS `wheels_tyres`;

CREATE TABLE `wheels_tyres` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `variant_id` int(20) DEFAULT NULL,
  `tyres` varchar(100) DEFAULT NULL,
  `wheelsize` varchar(100) DEFAULT NULL,
  `wheeltype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `wheels_tyres` */

insert  into `wheels_tyres`(`id`,`variant_id`,`tyres`,`wheelsize`,`wheeltype`) values (1,1,'4','12312','radial');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
