/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.36-community : Database - newcarro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`newcarro` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `newcarro`;

/*Table structure for table `airportbooking` */

DROP TABLE IF EXISTS `airportbooking`;

CREATE TABLE `airportbooking` (
  `airb_id` int(5) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `basicamt` varchar(50) DEFAULT NULL,
  `gst` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`airb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `airportbooking` */

insert  into `airportbooking`(`airb_id`,`vehicle`,`source`,`destination`,`name`,`phone`,`email`,`address`,`date`,`basicamt`,`gst`,`total`) values (1,'Innova','Kempegowda International Airport, KIAL Road, Devanahalli, Bengaluru, Karnataka, India','Majestic, Bangalore, Karnataka, India','sample','9738562088','punithkumar325@gmail.com','sdvvdd','Thu Feb 15 2018','1709 Rs.','90 Rs.','1799 Rs.');

/*Table structure for table `airvehicle_list` */

DROP TABLE IF EXISTS `airvehicle_list`;

CREATE TABLE `airvehicle_list` (
  `v_id` int(3) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(50) DEFAULT NULL,
  `base_price` varchar(50) DEFAULT NULL,
  `gst` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `v_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `airvehicle_list` */

insert  into `airvehicle_list`(`v_id`,`vehicle`,`base_price`,`gst`,`total`,`v_image`) values (1,'Sedan [Etios/Dzire/Vertio]','1424 Rs.','75 Rs.','1499 Rs.','Etios.png'),(2,'Innova','1709 Rs.','90 Rs.','1799 Rs.','innova.png');

/*Table structure for table `package_list` */

DROP TABLE IF EXISTS `package_list`;

CREATE TABLE `package_list` (
  `pack_id` int(3) NOT NULL AUTO_INCREMENT,
  `pack_name` varchar(60) DEFAULT NULL,
  `pack_image` varchar(60) DEFAULT NULL,
  `pack_sightimage` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`pack_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `package_list` */

insert  into `package_list`(`pack_id`,`pack_name`,`pack_image`,`pack_sightimage`) values (1,'Mysore Coorg 3Days 2Night Package','Coorg.png','Mysore Coorg 3Days 2Night Packagesight.jpg'),(2,'Mysore Ooty 3 Night 4Days Package','ooty.png','Mysore Ooty 3 Night 4Days Packagesight.jpg'),(3,'Mysore,Ooty&Kodaikanal,5Nght,6Days ','Mysore.png','Mysore,Ooty&Kodaikanal,5Nght,6Days sight.jpg'),(4,'Mysore Waynad 3Night 4Days Package','Waynad.png','Mysore Waynad 3Night 4Days Packagesight.jpg'),(5,'Pondycherry 1Night 2Days Package','Pondycherry.png','Pondycherry 1Night 2Days Packagesight.jpg'),(6,'Munnar&Allephy 4Night 5Days Package','Munnarand  Allephy.png','Munnar&Allephy 4Night 5Days Packagesight.jpg'),(7,'Goa 2Night 3Days Package','Goa.png','Goa 2Night 3Days Packagesight.jpg'),(8,'Shirdi 2Night 3Days Package','Shirdi.png','Shirdi 2Night 3Days Packagesight.jpg'),(9,'One day Nandhi hills Package','Nandhi hills.png','One day Nandhi hills Packagesight.jpg');

/*Table structure for table `package_sightseen` */

DROP TABLE IF EXISTS `package_sightseen`;

CREATE TABLE `package_sightseen` (
  `pack_sightid` int(3) NOT NULL AUTO_INCREMENT,
  `pack_id` int(3) DEFAULT NULL,
  `sight_seen` varchar(500) DEFAULT NULL,
  `sub_sightseen` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`pack_sightid`),
  KEY `FKFE89A0DFF641B3AA` (`pack_id`),
  KEY `FKFE89A0DF1404C32B` (`pack_id`),
  CONSTRAINT `FKFE89A0DF1404C32B` FOREIGN KEY (`pack_id`) REFERENCES `package_list` (`pack_id`),
  CONSTRAINT `FKFE89A0DFF641B3AA` FOREIGN KEY (`pack_id`) REFERENCES `package_list` (`pack_id`),
  CONSTRAINT `pack_idforeign` FOREIGN KEY (`pack_id`) REFERENCES `package_list` (`pack_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `package_sightseen` */

insert  into `package_sightseen`(`pack_sightid`,`pack_id`,`sight_seen`,`sub_sightseen`) values (1,1,'Mysore','Tippu summer palace, Gumbaz,Ranganathatemple, Chamundi hills, Nandi statue,Zoo, Mysore palace, Jaganmohan palace, Church, Old st, marry chruch, Brundavan garden.'),(2,1,'Coorg','Golden temple, Nisargadhama, Dubare falls, Raja seat, Thalakaveri, Habbi falls, Fort.'),(3,2,'Mysore','Tippu summer palace, Gumbaz,Ranganathatemple, Chamundi hills, Nandi statue,Zoo, Mysore palace, Jaganmohan palace, Church, Old st, marry chruch, Brundavan garden.'),(4,2,'Ooty','Pykara falls,shooting spot,boat house, botanical garden, doddabetta, tea factory, coonor dolphine nose,lamb rock,sims park.'),(5,3,'Mysore','Tippu summer palace, Gumbaz,Ranganathatemple, Chamundi hills, Nandi statue,Zoo, Mysore palace, Jaganmohan palace, Church, Old st, marry chruch, Brundavan garden.'),(6,3,'Ooty','Pykara falls,shooting spot,boat house, botanical garden, doddabetta, tea factory, coonor dolphine nose,lamb rock,sims park.'),(7,3,'Kodaikanal','Kodaikanal lake,kurinjiandavar temple,briyant park,cocker walk, silver cascade falls, pillar rocks, green valley.'),(8,4,'Mysore','Tippu summer palace, Gumbaz,Ranganathatemple, Chamundi hills, Nandi statue,Zoo, Mysore palace, Jaganmohan palace, Church, Old st, marry chruch, Brundavan garden.'),(9,4,'Waynad','Kuruv island, chembra peak, edakkal cave, muthanga wildlife sanctuary, pazhassi raja tomb, lakkidi, soochippara water falls.'),(10,5,'Pondycherry ','Bessilica heart church, botanical garden, paradise beach,gandhi statue, arbindo ashram, museam, aralimugumanukulavinayagar temple, boat house, aurovile.'),(11,6,'Munnar','Devikulam, mettupety dam, anamudi, pothemadu point, hydel park, munnar tea museam.'),(12,6,'Allephy','Marari beach, boat one night stay.'),(13,7,'Goa','Dudhsagar Falls,Fort Aguada,Bondla Wildlife Sanctuary'),(14,8,'Shirdi','hampi, badaami, Haihole, pattadakallu, koodalasangama, allamatti dam, bijapur golgumbaz, pandarapura, shirdi.'),(15,9,'Nanddhi Hills','Bhoga Nandeeshwara Temple,Tippu\'s Drop,Sri Ranganatha Swamy Temple, Rangasthala');

/*Table structure for table `packagebooking` */

DROP TABLE IF EXISTS `packagebooking`;

CREATE TABLE `packagebooking` (
  `packbook_id` int(10) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) DEFAULT NULL,
  `packageselected` varchar(60) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `gst` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_phone` varchar(50) DEFAULT NULL,
  `cust_email` varchar(50) DEFAULT NULL,
  `cust_address` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `pickup_point` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`packbook_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `packagebooking` */

insert  into `packagebooking`(`packbook_id`,`vehicle`,`packageselected`,`price`,`gst`,`total`,`cust_name`,`cust_phone`,`cust_email`,`cust_address`,`date`,`pickup_point`) values (1,'Innova A/C ','Pondycherry 1Night 2Days Package','12850.0','642.5','13492.5','sampl','9738562088','punithkumar325@gmail.com','dsvhsdcdc','Fri Feb 16 2018','Bangalore Palace, Jayamahal, Bengaluru, Karnataka, India'),(2,'Innova A/C ','Mysore Coorg 3Days 2Night Package','13200.0','660.0','13860.0','sample','9738562088','ddvdj@gmail.com','sdf','Thu Feb 15 2018','Majestic, Bangalore, Karnataka, India'),(3,'Innova A/C ','Mysore Coorg 3Days 2Night Package','13200.0','660.0','13860.0','sample','9738562088','ddvdj@gmail.com','sdf','Thu Feb 15 2018','Majestic, Bangalore, Karnataka, India'),(4,'Innova A/C ','Mysore Coorg 3Days 2Night Package','13200.0','660.0','13860.0','sample','9738562088','ddvdj@gmail.com','sdf','Thu Feb 15 2018','Majestic, Bangalore, Karnataka, India'),(5,'Innova A/C ','Mysore Ooty 3 Night 4Days Package','18600.0','930.0','19530.0','sample','9738562088','ddvdj@gmail.com','sdfsd','Thu Feb 15 2018','Mysore Road, Bangalore, Karnataka, India'),(6,'Crysta A/C ','Munnar&Allephy 4Night 5Days Package','29500.0','1475.0','30975.0','sample','9738562088','punithkumar325@gmail.com','dvdcdc','Wed Feb 14 2018','Majestic, Bangalore, Karnataka, India');

/*Table structure for table `packge_vehiclelist` */

DROP TABLE IF EXISTS `packge_vehiclelist`;

CREATE TABLE `packge_vehiclelist` (
  `pv_id` int(3) NOT NULL AUTO_INCREMENT,
  `pack_id` int(3) DEFAULT NULL,
  `vehicle_name` varchar(60) DEFAULT NULL,
  `price` varchar(60) DEFAULT NULL,
  `pack_vehicleimage` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pv_id`),
  KEY `FK3BCB1A421404C32B` (`pack_id`),
  CONSTRAINT `FK3BCB1A421404C32B` FOREIGN KEY (`pack_id`) REFERENCES `package_list` (`pack_id`),
  CONSTRAINT `pack_vehiclelistforeign` FOREIGN KEY (`pack_id`) REFERENCES `package_list` (`pack_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Data for the table `packge_vehiclelist` */

insert  into `packge_vehiclelist`(`pv_id`,`pack_id`,`vehicle_name`,`price`,`pack_vehicleimage`) values (1,1,'Sedan A/C','8300','Etios.png'),(2,1,'Innova A/C','13200','innova.png'),(3,1,'Crysta A/C','14200','crysta.png'),(4,1,'Tempo Traveller NoN A/C','15600','tt non ac.png'),(5,1,'Tempo Traveller A/C','16100','tt ac.png'),(6,1,'Tavera','11500','tavera.png'),(7,2,'Sedan A/C','11700','Etios.png'),(8,2,'Innova A/C','18600','innova.png'),(9,2,'Crysta A/C','19800','crysta.png'),(10,2,'Tempo Traveller NoN A/C','19300','tt non ac.png'),(11,2,'Tempo Traveller A/C','21700','tt ac.png'),(12,2,'Tavera','17400','tavera.png'),(13,3,'Sedan A/C','17200','Etios.png'),(14,3,'Innova A/C','27200','innova.png'),(15,3,'Crysta A/C','29200','crysta.png'),(16,3,'Tempo Traveller NoN A/C','28500','tt non ac.png'),(17,3,'Tempo Traveller A/C','32000','tt ac.png'),(18,3,'Tavera','26300','tavera.png'),(19,4,'Sedan A/C','12100','Etios.png'),(20,4,'Innova A/C','20500','innova.png'),(21,4,'Crysta A/C','23100','crysta.png'),(22,4,'Tempo Traveller NoN A/C','23750','tt non ac.png'),(23,4,'Tempo Traveller A/C','26360','tt ac.png'),(24,4,'Tavera','20500','tavera.png'),(25,5,'Sedan A/C','8850','Etios.png'),(26,5,'Innova A/C','12850','innova.png'),(27,5,'Crysta A/C','14250','crysta.png'),(28,5,'Tempo Traveller NoN A/C','14450','tt non ac.png'),(29,5,'Tempo Traveller A/C','15950','tt ac.png'),(30,5,'Tavera','12650','tavera.png'),(31,6,'Sedan A/C','17800','Etios.png'),(32,6,'Innova A/C','26500','innova.png'),(33,6,'Crysta A/C','29500','crysta.png'),(34,6,'Tempo Traveller NoN A/C','30500','tt non ac.png'),(35,6,'Tempo Traveller A/C','33400','tt ac.png'),(36,6,'Tavera','26400','tavera.png'),(37,7,'Sedan A/C','13400','Etios.png'),(38,7,'Innova A/C','20900','innova.png'),(39,7,'Crysta A/C','22200','crysta.png'),(40,7,'Tempo Traveller NoN A/C','23900','tt non ac.png'),(41,7,'Tempo Traveller A/C','26500','tt ac.png'),(42,7,'Tavera','19600','tavera.png'),(43,8,'Sedan A/C','23400','Etios.png'),(44,8,'Innova A/C','33900','innova.png'),(45,8,'Crysta A/C','36000','crysta.png'),(46,8,'Tempo Traveller NoN A/C','27300','tt non ac.png'),(47,8,'Tempo Traveller A/C','41500','tt ac.png'),(48,8,'Tavera','29900','tavera.png'),(49,9,'Sedan A/C','2600','Etios.png'),(50,9,'Innova A/C','3650','innova.png'),(51,9,'Crysta A/C','4100','crysta.png'),(52,9,'Tempo Traveller NoN A/C','3700','tt non ac.png'),(53,9,'Tempo Traveller A/C','4150','tt ac.png'),(54,9,'Tavera','3400','tavera.png');

/*Table structure for table `tripbooking` */

DROP TABLE IF EXISTS `tripbooking`;

CREATE TABLE `tripbooking` (
  `tb_id` int(6) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(50) DEFAULT NULL,
  `per_day` varchar(50) DEFAULT NULL,
  `per_km` varchar(50) DEFAULT NULL,
  `driverbata` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `distance` varchar(100) DEFAULT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `trav_date` varchar(50) DEFAULT NULL,
  `cust_email` varchar(50) DEFAULT NULL,
  `cust_phone` varchar(50) DEFAULT NULL,
  `cust_address` varchar(100) DEFAULT NULL,
  `travelling_days` varchar(5) DEFAULT NULL,
  `basic_amt` varchar(50) DEFAULT NULL,
  `final_bata` varchar(50) DEFAULT NULL,
  `gst` varchar(50) DEFAULT NULL,
  `total_approx` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=latin1;

/*Data for the table `tripbooking` */

insert  into `tripbooking`(`tb_id`,`vehicle`,`per_day`,`per_km`,`driverbata`,`source`,`destination`,`distance`,`cust_name`,`trav_date`,`cust_email`,`cust_phone`,`cust_address`,`travelling_days`,`basic_amt`,`final_bata`,`gst`,`total_approx`) values (1000,'Innova','300 Km','13.00Rs/Km','300Rs.Mid-Night To Mid-Night','Majestic, Bangalore, Karnataka, India','Mysuru, Karnataka, India','147.0','punith','Sat Feb 10 2018','punithkumar325@gmail.com','9738562088','ssbsshsk','1 Day','3900.0','300.0','210.0','4410.0'),(1001,'Sedan [Etios/Dzire/Verito]','250 Km','9.00Rs/Km','300Rs.Mid-Night To Mid-Night ','Majestic, Bangalore, Karnataka, India','Mysuru, Karnataka, India','147.0','ashwini','Fri Feb 09 2018','rohihiremath99@gmail.com','8904506582','rajajai nagar','1 Day','2250.0','300.0','127.5','2677.5'),(1002,'HatchBack [Indica/Ritz/Vibe]','250 Km','8.5.00Rs/Km','300Rs.Mid-Night To Mid-Night','Mysore Road, Bangalore, Karnataka, India','Mysore, Karnataka, India','128.0','sample','Fri Feb 16 2018','punithkumar325@gmail.com','9738562088','dfsfg','1 Day','2125.0','300.0','121.25','2546.25'),(1003,'Innova','300 Km','13.00Rs/Km','300Rs.Mid-Night To Mid-Night','Majestic, Bangalore, Karnataka, India','Mysuru, Karnataka, India','147.0','sample','Fri Feb 16 2018','punithkumar325@gmail.com','9738562088','dbddvj','1 Day','3900.0','300.0','210.0','4410.0'),(1004,'Sedan [Etios/Dzire/Verito]','250 Km','9.00Rs/Km','300Rs.Mid-Night To Mid-Night ','Majestic, Bangalore, Karnataka, India','Mysuru, Karnataka, India','147.0','punith','Sat Mar 24 2018','punithkumar325@gmail.com','9738562088','snvsgsc','1 Day','2250.0','300.0','127.5','2677.5');

/*Table structure for table `vehicle_list` */

DROP TABLE IF EXISTS `vehicle_list`;

CREATE TABLE `vehicle_list` (
  `v_id` int(3) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(50) DEFAULT NULL,
  `km_per_day` varchar(50) DEFAULT NULL,
  `price_per_km` varchar(50) DEFAULT NULL,
  `driverbata` varchar(50) DEFAULT NULL,
  `v_image` varchar(50) DEFAULT NULL,
  `base_price` varchar(255) DEFAULT NULL,
  `gst` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_list` */

insert  into `vehicle_list`(`v_id`,`vehicle`,`km_per_day`,`price_per_km`,`driverbata`,`v_image`,`base_price`,`gst`,`total`) values (1,'HatchBack [Indica/Ritz/Vibe]','250 Km','8.5.00Rs/Km','300Rs.Mid-Night To Mid-Night','indica.png',NULL,NULL,NULL),(2,'Sedan [Etios/Dzire/Verito]','250 Km','9.00Rs/Km','300Rs.Mid-Night To Mid-Night ','Etios.png',NULL,NULL,NULL),(3,'Innova','300 Km','13.00Rs/Km','300Rs.Mid-Night To Mid-Night','innova.png',NULL,NULL,NULL),(4,'Crysta','300 Km','14.00Rs/km','300Rs.Mid-Night To Mid-Night','crysta.png',NULL,NULL,NULL),(5,'Tempo Traveller [Non-AC]','300 Km','13.00Rs/Km','350Rs.6:00 AM To 10:00 PM','tt non ac.png',NULL,NULL,NULL),(6,'Tempo Traveller [AC]','300 Km','15.00Rs/Km','350Rs.6:00 AM To 10:00 PM','tt ac.png',NULL,NULL,NULL),(7,'SUV [Tavera/Xylo]','300 Km','12.00Rs/Km','300Rs.Mid-Night To Mid-Night ','tavera.png',NULL,NULL,NULL),(8,'Mini Bus 21 Seater[AC]','300 Km','25.00Rs/Km','500Rs.6:00 AM To 10:00 PM','21 seats ac.png',NULL,NULL,NULL),(9,'Mini Bus 21 Seater[Non-AC]','300 Km','20.00Rs/Km','500Rs.6:00 AM To 10:00 PM','21 seats non ac.png',NULL,NULL,NULL),(10,'Bus 50 Seater[Non-AC]','300 Km','35.00Rs/Km','500Rs.6:00 AM To 10:00 PM','50 seats non ac.png',NULL,NULL,NULL),(11,'Bus 50 Seater[AC]','300 Km','40.00Rs/Km','500Rs.6:00 AM To 10:00 PM','50 seats ac.png',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
