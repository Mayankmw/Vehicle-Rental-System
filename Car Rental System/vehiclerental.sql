/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - vehiclerental
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`vehiclerental` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vehiclerental`;

/*Table structure for table `bookings` */

DROP TABLE IF EXISTS `bookings`;

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `vtype` varchar(100) DEFAULT NULL,
  `vname` varchar(100) DEFAULT NULL,
  `vno` varchar(100) DEFAULT NULL,
  `capacity` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  `bdt` varchar(100) DEFAULT NULL,
  `rdt` varchar(100) DEFAULT NULL,
  `billamount` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `bookings` */

insert  into `bookings`(`id`,`username`,`vtype`,`vname`,`vno`,`capacity`,`cost`,`status`,`bdt`,`rdt`,`billamount`,`days`) values (3,'ramu','CAR','Swift Desire','TS08EG1234','5','2000','Returned','2018/10/10','2018/10/10',2000,1);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customername` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`customername`,`username`,`password`,`email`,`dob`,`gender`,`location`,`mobile`) values ('Ramu','ramu','ramu','ramu@gmail.com','1995-10-10','MALE','Tarnaka','9874563210');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `username` varchar(100) DEFAULT NULL,
  `vno` varchar(100) DEFAULT NULL,
  `feedback` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`username`,`vno`,`feedback`) values ('ramu','TS08EG1234','nice');

/*Table structure for table `vehicles` */

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vtype` varchar(100) DEFAULT NULL,
  `vname` varchar(100) DEFAULT NULL,
  `vno` varchar(100) DEFAULT NULL,
  `capacity` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `vehicles` */

insert  into `vehicles`(`id`,`vtype`,`vname`,`vno`,`capacity`,`cost`,`address`,`mobile`) values (2,'CAR','Swift Desire','TS08EG1234','5','2000','Ameerpet','9052016340');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
