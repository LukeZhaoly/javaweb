/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.16 : Database - mystore
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mystore` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mystore`;

/*Table structure for table `article_info` */

DROP TABLE IF EXISTS `article_info`;

CREATE TABLE `article_info` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `click` int(50) DEFAULT NULL,
  `Publisher` varchar(50) DEFAULT NULL,
  `UpdateTime` time(2) DEFAULT NULL,
  `Comments` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `path` varchar(250) DEFAULT NULL,
  `flagstr` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `article_info` */

/*Table structure for table `fileupload_info` */

DROP TABLE IF EXISTS `fileupload_info`;

CREATE TABLE `fileupload_info` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `filepath` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `fileupload_info` */

/*Table structure for table `guest_book` */

DROP TABLE IF EXISTS `guest_book`;

CREATE TABLE `guest_book` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `guestbook` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `guestuser` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `guest_book` */

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `uid` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `user_info` */

insert  into `user_info`(`uid`,`username`,`password`,`phone`) values (1,'zly','8080','404'),(2,'Tom','8080','404'),(3,'localhost','8080','404'),(4,'Tim','8080','404'),(5,'Tomcat','8080','404'),(6,'qq','8080','404');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
