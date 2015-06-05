/*
SQLyog Community v10.2 
MySQL - 5.5.25a : Database - dayz_epoch
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dayz_epoch` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dayz_epoch`;

/*Table structure for table `character_data` */

DROP TABLE IF EXISTS `character_data`;

CREATE TABLE `character_data` (
  `CharacterID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(128) NOT NULL DEFAULT '[]',
  `Medical` varchar(300) NOT NULL DEFAULT '[]',
  `Alive` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Generation` int(11) unsigned NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) unsigned NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) unsigned NOT NULL DEFAULT '0',
  `DistanceFoot` int(11) NOT NULL DEFAULT '0',
  `Duration` int(11) NOT NULL DEFAULT '0',
  `CurrentState` varchar(200) NOT NULL DEFAULT '[]',
  `KillsH` int(11) unsigned NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) unsigned NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `Infected` tinyint(3) DEFAULT '0',
  `CashMoney` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerUID` (`PlayerUID`) USING BTREE,
  KEY `Alive` (`Alive`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

/*Data for the table `character_data` */

/*Table structure for table `object_data` */

DROP TABLE IF EXISTS `object_data`;

CREATE TABLE `object_data` (
  `ObjectID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ObjectUID` bigint(24) NOT NULL DEFAULT '0',
  `Instance` int(11) unsigned NOT NULL,
  `Classname` varchar(50) DEFAULT NULL,
  `Datestamp` datetime NOT NULL,
  `LastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CharacterID` int(11) unsigned NOT NULL DEFAULT '0',
  `Worldspace` varchar(128) NOT NULL DEFAULT '[]',
  `Inventory` longtext,
  `Hitpoints` varchar(512) NOT NULL DEFAULT '[]',
  `Fuel` double(13,5) NOT NULL DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  PRIMARY KEY (`ObjectID`),
  KEY `ObjectUID` (`ObjectUID`) USING BTREE,
  KEY `Instance` (`Instance`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1894 DEFAULT CHARSET=latin1;

/*Data for the table `object_data` */

/*Table structure for table `player_data` */

DROP TABLE IF EXISTS `player_data`;

CREATE TABLE `player_data` (
  `PlayerUID` varchar(20) NOT NULL DEFAULT '0',
  `PlayerName` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT 'Null',
  `PlayerMorality` int(11) NOT NULL DEFAULT '0',
  `PlayerSex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PlayerUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `player_data` */

/*Table structure for table `player_login` */

DROP TABLE IF EXISTS `player_login`;

CREATE TABLE `player_login` (
  `LoginID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) NOT NULL,
  `CharacterID` int(11) unsigned NOT NULL DEFAULT '0',
  `Datestamp` datetime NOT NULL,
  `Action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=478 DEFAULT CHARSET=latin1;

/*Data for the table `player_login` */

/*Table structure for table `server_traders` */

DROP TABLE IF EXISTS `server_traders`;

CREATE TABLE `server_traders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(128) NOT NULL,
  `instance` int(11) NOT NULL,
  `status` varchar(32) NOT NULL,
  `static` text,
  `desc` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

/*Data for the table `server_traders` */

insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (1,'CIV_EuroMan01_EP1',11,'friendly',NULL,'Weapons Trader - Bash');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (2,'Rocker4',11,'friendly',NULL,'Weapons Trader - Klen');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (3,'Woodlander3',11,'friendly',NULL,'Parts Trader - Bash');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (4,'Woodlander1',11,'friendly','','Parts Trader - Klen');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (5,'RU_WorkWoman1',11,'friendly','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Can Trader - Klen');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (6,'RU_WorkWoman5',11,'friendly','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Can Trader - Bash');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (7,'Rita_Ensler_EP1',11,'neutral','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Can Trader - Stary');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (8,'CIV_EuroMan02_EP1',11,'friendly','','Ammo Trader - Bash');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (9,'RU_Citizen3',11,'friendly','','Ammo Trader - Klen');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (10,'Pilot_EP1',11,'neutral','','Ammo Trader - Stary');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (11,'Worker3',11,'friendly','','Auto Trader - Bash');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (12,'Profiteer4',11,'friendly','','Auto Trader - Klen');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (13,'Dr_Hladik_EP1',11,'friendly','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Doctor - Bash');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (14,'Doctor',11,'friendly','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Doctor - Klen');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (15,'RU_Functionary1',11,'friendly','','Hero Traders');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (16,'RU_Villager3',11,'neutral','','Boat Trader');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (17,'TK_CIV_Takistani04_EP1',11,'neutral','','High End Weapons');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (18,'RU_Citizen4',11,'neutral','','Wholesaler - Solnichniy');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (19,'RU_Citizen1',11,'neutral','','Wholesaler - Balota');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (20,'Functionary1',1,'friendly','','Hero Traders');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (21,'RU_Profiteer3',1,'neutral','','High End Weapons - Khush');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (22,'Profiteer1',1,'neutral','','High End Ammo - Khush');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (23,'RU_Sportswoman5',1,'friendly','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Can Trader - Khush');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (24,'TK_CIV_Takistani05_EP1',1,'friendly','','Parts Trader - Khush');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (25,'Dr_Annie_Baker_EP1',1,'friendly','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Doctor - Khush');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (26,'Woodlander2',1,'friendly','','Auto Trader - Khush');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (27,'TK_CIV_Takistani03_EP1',1,'friendly','','Car Parts - Nur');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (28,'TK_CIV_Takistani06_EP1',1,'friendly','','Weapons Trader - Nur');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (29,'TK_CIV_Takistani04_EP1',1,'friendly','','Ammo Trader - Nur');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (30,'TK_CIV_Woman03_EP1',1,'friendly','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Can Trader - Nur');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (31,'TK_CIV_Woman02_EP1',1,'friendly','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Doctor - Nur');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (32,'RU_Profiteer2',1,'friendly','','Auto Trader - Garm');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (33,'TK_CIV_Takistani02_EP1',1,'friendly','','Car Parts - Garm');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (34,'RU_Damsel4',1,'friendly','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Can Trader - Garm');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (35,'RU_Woodlander3',1,'neutral','','Wholesaler - South');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (36,'RU_Citizen4',1,'neutral','','Wholesaler - North');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (37,'RU_Pilot',1,'neutral','','Airplane Dealer');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (38,'RU_Worker1',6,'neutral','','Whiskey\'s Parts Shop');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (39,'Dr_Annie_Baker_EP1',6,'friendly','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Melly\'s Medical');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (40,'CIV_EuroWoman01_EP1',6,'friendly','','Alejandria\'s General Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (41,'ibr_lingorman2s',6,'neutral','','Blivion\'s Wholesale Items');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (42,'Worker2',6,'friendly','','Axle\'s Repair Shop');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (43,'TK_CIV_Woman03_EP1',6,'friendly','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Stella\'s General Goods');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (44,'ibr_lingorman3s',6,'neutral','','Clive\'s Wholesale');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (45,'ibr_lingorman5s',6,'neutral','','Big Bob\'s Boats');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (46,'ibr_lingorman4s',6,'friendly','','Juan\'s Tour Boats');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (47,'ibr_lingorman2',6,'friendly','','Jd\'z Armed Boats');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (48,'Citizen2_EP1',6,'friendly','','Green\'s Quality Cars');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (49,'Worker1',6,'friendly','','Lyle\'s Parts');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (50,'RU_Madam3',6,'neutral','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Bag Lady Gina');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (51,'Pilot',6,'friendly','','Chip\'s Choppers');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (52,'CIV_EuroMan02_EP1',6,'friendly','','Jim\'s Ammo');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (53,'CIV_EuroMan01_EP1',6,'friendly','','Joe\'s Weapons');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (54,'ibr_lingorman7s',6,'friendly','','Rodger\'s 4x4');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (55,'Damsel3',6,'friendly','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Tina\'s Tarts');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (56,'Rocker4',6,'friendly','','Sly\'s Moto');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (57,'Worker4',6,'neutral','','Jim\'s Used Cars');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (58,'ibr_lingorman7',6,'neutral','','Chucks Weapons');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (59,'ibr_lingorman5',6,'neutral','','Buck\'s Shot');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (60,'Citizen3_EP1',6,'neutral','','Santo\'s Wholesale');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (61,'ibr_lingorman6',6,'friendly','','Tire Guy');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (62,'ibr_lingorman6s',6,'friendly','','Raul\'s Parts');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (63,'TK_CIV_Woman02_EP1',6,'neutral','','Samish Shop');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (64,'Pilot_EP1',6,'friendly','','AWOL\'s Planes');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (65,'TK_CIV_Worker01_EP1',6,'friendly','','Rommelo\'s Raceway');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (66,'RU_Doctor',6,'neutral','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Mad Scientist ');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (67,'TK_CIV_Woman02_EP1',4,'neutral','','Farhah\'s General Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (68,'TK_CIV_Takistani05_EP1',4,'neutral','','Akwhell\'s Vehicles');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (69,'TK_CIV_Takistani03_EP1',4,'neutral','','Amjad\'s Ammunition');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (70,'TK_CIV_Takistani02_EP1',4,'neutral','','Hassan\'s Weapons');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (71,'CIV_EuroMan01_EP1',4,'friendly','','Dan\'s Parts');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (72,'CIV_EuroMan02_EP1',4,'friendly','','Darren\'s Auto');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (73,'Dr_Hladik_EP1',4,'friendly','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Dr. House');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (74,'CIV_EuroWoman01_EP1',4,'friendly','','Heather\'s General Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (76,'Worker1',4,'friendly','','Greg\'s Ammunition');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (77,'Tanny_PMC',4,'friendly','','Joe\'s Weapons');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (78,'Profiteer4',4,'friendly','','Steven\'s Hero Shop');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (79,'GUE_Worker2',13,'friendly','','Pete\'s Armed Choppers');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (80,'Soldier_Sniper_KSVK_PMC',13,'friendly','','Jacks Weapons');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (81,'Soldier_GL_PMC',13,'friendly','','Robby\'s Ammo Dump');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (82,'GUE_Soldier_Pilot',13,'friendly','','Hanz Unarmed Choppers');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (83,'GUE_Woodlander3',13,'friendly','','Scott\'s Repair Shop');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (84,'Worker4',13,'neutral','','Capt. Yak');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (85,'Reynolds_PMC',13,'neutral','','Wholesaler Reynolds');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (86,'Soldier_Sniper_PMC',13,'friendly','','Chucks Hero Shop');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (87,'GUE_Soldier_3',13,'friendly','','Tom\'s Armed Vehicles');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (88,'RU_Doctor',13,'friendly','','Dr. Hammond');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (89,'Doctor',13,'friendly','','Bones');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (90,'UN_CDF_Soldier_Pilot_EP1',13,'friendly','','Murdock\'s Planes');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (91,'RU_Worker4',13,'neutral','','Sven\'s Parts');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (92,'RU_Woodlander4',13,'neutral','','Slav\'s Vehicles');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (93,'Citizen3',13,'neutral','','Trin\'s General Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (94,'RU_Damsel5',13,'friendly','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Melissa\'s General Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (95,'Dr_Hladik_EP1',13,'neutral','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Dr. Vu');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (96,'GUE_Commander',13,'neutral','','Gabriel\'s Weapons');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (97,'GUE_Soldier_CO',13,'neutral','','Cohaagen\'s Ammunition');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (98,'Profiteer2_EP1',13,'neutral','','Chad\'s Armed Boats');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (99,'RU_Farmwife5',13,'neutral','','Mrs. Doubtfire');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (100,'GUE_Woodlander1',13,'neutral','','Dante\'s Bandit Choppers');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (101,'RU_Worker1',13,'neutral','','Javon\'s Parts');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (102,'GUE_Soldier_2',13,'neutral','','Wholesaler Darren');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (103,'Worker2',11,'neutral','','Airplane Dealer');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (104,'GUE_Villager4',15,'friendly','','Bastions Parts Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (105,'RU_Farmwife4',15,'friendly','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Alda\'s General Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (106,'RU_Farmwife3',15,'neutral','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Carole\'s General Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (107,'Dr_Hladik_EP1',15,'friendly','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Dr. Zoidberg');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (108,'CIV_Contractor2_BAF',15,'friendly','','High End Ammo');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (109,'Soldier_Sniper_PMC',15,'friendly','','High End Weapons');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (110,'GUE_Soldier_Pilot',15,'friendly','','Rutahn\'s Vehicles.');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (111,'GUE_Soldier_2',15,'neutral','','Rhven\'s Weapons');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (112,'GUE_Soldier_1',15,'neutral','','Merkaba\'s Ammo');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (113,'GUE_Soldier_CO',15,'neutral','','Robsyah\'s Choppers');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (114,'GUE_Woodlander2',15,'friendly','','Popeye\'s Boats ');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (115,'GUE_Soldier_Crew',15,'neutral','','Aaron\'s Vehicles');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (116,'Woodlander2',15,'neutral','','Staven\'s Repair Shop');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (117,'UN_CDF_Soldier_MG_EP1',15,'friendly','','Larz\'s Wholesale');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (118,'UN_CDF_Soldier_EP1',15,'friendly','','Dateu\'s Wholesale');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (119,'Tanny_PMC',15,'hero','','Tanner\'s Hero Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (120,'UN_CDF_Soldier_Pilot_EP1',15,'friendly','','Piloted Vehicles');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (121,'GUE_Soldier_Pilot',16,'friendly','','AWOL\'s Airfield');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (122,'UN_CDF_Soldier_MG_EP1',16,'neutral','','West\'s Wholesaler');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (123,'GUE_Soldier_Medic',16,'neutral','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Neutral Medic');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (124,'GUE_Woodlander1',16,'neutral','','Stavz Ammo');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (125,'GUE_Commander',16,'neutral','','Stevhn\'s Weapons');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (126,'Tanny_PMC',16,'hero','','Trevors Hero Supplies.');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (127,'BAF_Soldier_AMG_W',16,'friendly','','Roberts Ammo');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (128,'BAF_Soldier_AAA_DDPM',16,'friendly','','Drakes Weapons');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (129,'GUE_Soldier_3',16,'neutral','','Brians Vehicles');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (130,'GUE_Soldier_1',16,'neutral','','Sam\'s Boats');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (131,'BAF_Pilot_MTP',16,'hero','','Darren\'s Hero Vehicles');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (132,'GUE_Soldier_Sab',16,'neutral','','Green\'s Air Vehicles');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (133,'US_Soldier_Medic_EP1',16,'friendly','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Perry\'s Medical');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (134,'CZ_Special_Forces_MG_DES_EP1',16,'friendly','','Kypex\'s Vehicles');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (135,'Damsel5',16,'friendly','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Melly\'s General Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (136,'GUE_Woodlander3',16,'friendly','','Jim\'s Repair/Building Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (137,'UN_CDF_Soldier_AAT_EP1',16,'neutral','','South West Wholesaler');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (138,'RU_Farmwife1',16,'neutral','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','Bertha\'s General Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (139,'Citizen2_EP1',16,'neutral','','Rocky\'s Parts/Building Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (140,'CIV_Contractor1_BAF',6,'neutral','','Jeeves');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (141,'GUE_Soldier_MG',11,'neutral','','Black Market - Olsha');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (142,'TK_GUE_Soldier_Sniper_EP1',1,'neutral','','Apu Nahasapeemapetilon Black Market');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (143,'Tanny_PMC',17,'hero','','Hero Vendor');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (144,'US_Delta_Force_AR_EP1',17,'friendly','','Ammunition Friendly');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (145,'BAF_Soldier_AAR_DDPM',17,'friendly','','Weapons Friendly');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (146,'Drake',17,'friendly','','Friendly Vehicles');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (147,'Damsel2',17,'neutral','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','General Store');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (148,'GUE_Soldier_MG',17,'neutral','','Weapons neutral');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (149,'GUE_Soldier_GL',17,'neutral','','Ammunition Neutral');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (150,'TK_GUE_Soldier_5_EP1',17,'neutral','','Neutral Building/Parts');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (151,'GUE_Soldier_2',17,'hostile','','Bandit Trader');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (152,'Soldier_Sniper_PMC',17,'neutral','','Aircraft Dealer');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (153,'GUE_Soldier_3',17,'neutral','','Vehicles Neutral');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (154,'Soldier_GL_M16A2_PMC',17,'neutral','','Black Market Vendor');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (155,'UN_CDF_Soldier_Crew_EP1',17,'friendly','','Friendly Building/Parts');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (156,'UN_CDF_Soldier_Pilot_EP1',17,'friendly','','Friendly Vehicles 2');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (157,'GUE_Worker2',17,'friendly','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','General Store 2');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (158,'Dr_Annie_Baker_EP1',17,'friendly','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Medical Supplies');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (159,'Soldier_MG_PKM_PMC',17,'friendly','','Weapons friendly 2');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (160,'Soldier_MG_PMC',17,'friendly','','Ammunition friendly 2');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (161,'GUE_Soldier_CO',17,'neutral','','East Wholesaler');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (162,'Farmwife4',17,'neutral','[\"ItemTinBar\",\"TrashJackDaniels\",1,1,\"buy\",\"Empty Wiskey Bottle\",\"Tin Bar\",101]','General Store 3');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (163,'FR_Sykes',17,'neutral','','West Wholesaler');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (164,'GUE_Villager4',17,'neutral','','Boat Vendor');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (165,'TK_CIV_Takistani04_EP1',17,'neutral','','Weapons neutral 2');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (166,'Pilot_EP1',17,'neutral','','Ammunition Neutral 2');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (167,'RU_Profiteer4',17,'neutral','','Vehicles Neutral 2');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (168,'Woodlander3',17,'neutral','','Neutral Building/Parts');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (169,'Dr_Hladik_EP1',17,'neutral','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Medical Supplies 2');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (170,'Doctor',17,'neutral','[\"FoodBioMeat\",\"ItemZombieParts\",1,1,\"buy\",\"Zombie Parts\",\"Bio Meat\",101]','Medical Supplies 3');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (171,'HouseWife1',17,'neutral','','Boat Trader 2');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (172,'Citizen3_EP1',17,'neutral','','Wholesale 3');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (173,'ibr_lingorman6',17,'friendly','','Friendly Building/parts 2');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (174,'ibr_lingorman6s',17,'friendly','','Friendly Building/Parts 3');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (175,'TK_CIV_Woman02_EP1',17,'neutral','','General Store 4');
insert  into `server_traders`(`id`,`classname`,`instance`,`status`,`static`,`desc`) values (176,'Damsel3',17,'friendly','','General Store 5');

/*Table structure for table `trader_tids` */

DROP TABLE IF EXISTS `trader_tids`;

CREATE TABLE `trader_tids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `trader` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=693 DEFAULT CHARSET=utf8;

/*Data for the table `trader_tids` */

insert  into `trader_tids`(`id`,`name`,`trader`) values (1,'Sidearm',1);
insert  into `trader_tids`(`id`,`name`,`trader`) values (2,'Rifles',1);
insert  into `trader_tids`(`id`,`name`,`trader`) values (3,'Shotguns and Single-shot',1);
insert  into `trader_tids`(`id`,`name`,`trader`) values (4,'Sidearm',2);
insert  into `trader_tids`(`id`,`name`,`trader`) values (5,'Rifles',2);
insert  into `trader_tids`(`id`,`name`,`trader`) values (6,'Shotguns and Single-shot',2);
insert  into `trader_tids`(`id`,`name`,`trader`) values (7,'Vehicle Parts',3);
insert  into `trader_tids`(`id`,`name`,`trader`) values (8,'Building Supplies',3);
insert  into `trader_tids`(`id`,`name`,`trader`) values (11,'Vehicle Parts',4);
insert  into `trader_tids`(`id`,`name`,`trader`) values (12,'Building Supplies',4);
insert  into `trader_tids`(`id`,`name`,`trader`) values (13,'Food and Drinks',5);
insert  into `trader_tids`(`id`,`name`,`trader`) values (14,'Backpacks',5);
insert  into `trader_tids`(`id`,`name`,`trader`) values (15,'Toolbelt Items',5);
insert  into `trader_tids`(`id`,`name`,`trader`) values (16,'Clothes',5);
insert  into `trader_tids`(`id`,`name`,`trader`) values (17,'Food and Drinks',6);
insert  into `trader_tids`(`id`,`name`,`trader`) values (18,'Backpacks',6);
insert  into `trader_tids`(`id`,`name`,`trader`) values (19,'Toolbelt Items',6);
insert  into `trader_tids`(`id`,`name`,`trader`) values (20,'Clothes',6);
insert  into `trader_tids`(`id`,`name`,`trader`) values (21,'Food and Drinks',7);
insert  into `trader_tids`(`id`,`name`,`trader`) values (22,'Backpacks',7);
insert  into `trader_tids`(`id`,`name`,`trader`) values (23,'Toolbelt Items',7);
insert  into `trader_tids`(`id`,`name`,`trader`) values (24,'Clothes',7);
insert  into `trader_tids`(`id`,`name`,`trader`) values (25,'Sidearm Ammo',8);
insert  into `trader_tids`(`id`,`name`,`trader`) values (26,'Rifle Ammo',8);
insert  into `trader_tids`(`id`,`name`,`trader`) values (27,'Shotguns and Single-shot',8);
insert  into `trader_tids`(`id`,`name`,`trader`) values (28,'Sidearm Ammo',9);
insert  into `trader_tids`(`id`,`name`,`trader`) values (29,'Rifle Ammo',9);
insert  into `trader_tids`(`id`,`name`,`trader`) values (30,'Shotguns and Single-shot',9);
insert  into `trader_tids`(`id`,`name`,`trader`) values (31,'Assault Rifle Ammo',10);
insert  into `trader_tids`(`id`,`name`,`trader`) values (32,'Machine Gun Ammo',10);
insert  into `trader_tids`(`id`,`name`,`trader`) values (33,'Sniper Rifle Ammo',10);
insert  into `trader_tids`(`id`,`name`,`trader`) values (34,'Cars',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (35,'Trucks Unarmed',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (36,'SUV',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (37,'Vans',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (38,'Bikes and ATV',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (39,'Helicopter Unarmed',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (40,'Military Unarmed',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (41,'Trucks Armed',12);
insert  into `trader_tids`(`id`,`name`,`trader`) values (42,'UAZ',12);
insert  into `trader_tids`(`id`,`name`,`trader`) values (43,'Helicopter Armed',12);
insert  into `trader_tids`(`id`,`name`,`trader`) values (44,'Military Armed',12);
insert  into `trader_tids`(`id`,`name`,`trader`) values (45,'Fuel Trucks',12);
insert  into `trader_tids`(`id`,`name`,`trader`) values (46,'Heavy Armor Unarmed',12);
insert  into `trader_tids`(`id`,`name`,`trader`) values (47,'Medical Supplies',13);
insert  into `trader_tids`(`id`,`name`,`trader`) values (48,'Chem-lites/Flares',13);
insert  into `trader_tids`(`id`,`name`,`trader`) values (49,'Smoke Grenades',13);
insert  into `trader_tids`(`id`,`name`,`trader`) values (50,'Medical Supplies',14);
insert  into `trader_tids`(`id`,`name`,`trader`) values (51,'Chem-lites/Flares',14);
insert  into `trader_tids`(`id`,`name`,`trader`) values (52,'Smoke Grenades',14);
insert  into `trader_tids`(`id`,`name`,`trader`) values (53,'Clothes',15);
insert  into `trader_tids`(`id`,`name`,`trader`) values (54,'Boats Unarmed',16);
insert  into `trader_tids`(`id`,`name`,`trader`) values (55,'Boats Armed',16);
insert  into `trader_tids`(`id`,`name`,`trader`) values (57,'Assault Rifle',17);
insert  into `trader_tids`(`id`,`name`,`trader`) values (58,'Machine Gun',17);
insert  into `trader_tids`(`id`,`name`,`trader`) values (59,'Sniper Rifle',17);
insert  into `trader_tids`(`id`,`name`,`trader`) values (60,'Explosives',17);
insert  into `trader_tids`(`id`,`name`,`trader`) values (63,'Vehicle Parts',38);
insert  into `trader_tids`(`id`,`name`,`trader`) values (64,'Building Supplies',38);
insert  into `trader_tids`(`id`,`name`,`trader`) values (65,'Medical Supplies',39);
insert  into `trader_tids`(`id`,`name`,`trader`) values (66,'Clothes',39);
insert  into `trader_tids`(`id`,`name`,`trader`) values (67,'Chem lights/Flares',39);
insert  into `trader_tids`(`id`,`name`,`trader`) values (68,'Smoke Grenades',39);
insert  into `trader_tids`(`id`,`name`,`trader`) values (70,'Food/Drink',40);
insert  into `trader_tids`(`id`,`name`,`trader`) values (72,'Backpacks',40);
insert  into `trader_tids`(`id`,`name`,`trader`) values (73,'Clothes',40);
insert  into `trader_tids`(`id`,`name`,`trader`) values (74,'Toolbelt Items',40);
insert  into `trader_tids`(`id`,`name`,`trader`) values (76,'Vehicle Parts',42);
insert  into `trader_tids`(`id`,`name`,`trader`) values (77,'Building Supplies',42);
insert  into `trader_tids`(`id`,`name`,`trader`) values (78,'Demolition Supplies',42);
insert  into `trader_tids`(`id`,`name`,`trader`) values (79,'Food/Drink',43);
insert  into `trader_tids`(`id`,`name`,`trader`) values (80,'Backpacks',43);
insert  into `trader_tids`(`id`,`name`,`trader`) values (81,'Clothes',43);
insert  into `trader_tids`(`id`,`name`,`trader`) values (82,'Toolbelt Items',43);
insert  into `trader_tids`(`id`,`name`,`trader`) values (85,'Fishing boats',45);
insert  into `trader_tids`(`id`,`name`,`trader`) values (86,'PBX',45);
insert  into `trader_tids`(`id`,`name`,`trader`) values (87,'Tour boats',46);
insert  into `trader_tids`(`id`,`name`,`trader`) values (88,'PBX',46);
insert  into `trader_tids`(`id`,`name`,`trader`) values (89,'Armed Boats',47);
insert  into `trader_tids`(`id`,`name`,`trader`) values (90,'Tracked Vehicles',48);
insert  into `trader_tids`(`id`,`name`,`trader`) values (91,'Armed Vehicles',48);
insert  into `trader_tids`(`id`,`name`,`trader`) values (92,'Fuel Trucks',48);
insert  into `trader_tids`(`id`,`name`,`trader`) values (93,'Armored Vehicles',48);
insert  into `trader_tids`(`id`,`name`,`trader`) values (94,'Vehicle Parts',49);
insert  into `trader_tids`(`id`,`name`,`trader`) values (95,'Building Supplies',49);
insert  into `trader_tids`(`id`,`name`,`trader`) values (96,'Food/Drink',50);
insert  into `trader_tids`(`id`,`name`,`trader`) values (97,'Backpacks',50);
insert  into `trader_tids`(`id`,`name`,`trader`) values (98,'Toolbelt Items',50);
insert  into `trader_tids`(`id`,`name`,`trader`) values (99,'Clothes',50);
insert  into `trader_tids`(`id`,`name`,`trader`) values (100,'Armed Choppers',51);
insert  into `trader_tids`(`id`,`name`,`trader`) values (101,'Unarmed Choppers',51);
insert  into `trader_tids`(`id`,`name`,`trader`) values (102,'Pistol Ammo',52);
insert  into `trader_tids`(`id`,`name`,`trader`) values (103,'Assault Ammo',52);
insert  into `trader_tids`(`id`,`name`,`trader`) values (104,'Heavy Ammo',52);
insert  into `trader_tids`(`id`,`name`,`trader`) values (105,'Sniper Ammo',52);
insert  into `trader_tids`(`id`,`name`,`trader`) values (106,'Pistols',53);
insert  into `trader_tids`(`id`,`name`,`trader`) values (107,'Assault Rifles',53);
insert  into `trader_tids`(`id`,`name`,`trader`) values (108,'Heavy Machine Guns',53);
insert  into `trader_tids`(`id`,`name`,`trader`) values (109,'Sniper Rifles',53);
insert  into `trader_tids`(`id`,`name`,`trader`) values (110,'Offroad Trucks',54);
insert  into `trader_tids`(`id`,`name`,`trader`) values (111,'Food/Drinks',55);
insert  into `trader_tids`(`id`,`name`,`trader`) values (112,'Clothes',55);
insert  into `trader_tids`(`id`,`name`,`trader`) values (113,'ATV\'s',56);
insert  into `trader_tids`(`id`,`name`,`trader`) values (114,'Dirt Bikes',56);
insert  into `trader_tids`(`id`,`name`,`trader`) values (115,'Trucks Armed',57);
insert  into `trader_tids`(`id`,`name`,`trader`) values (116,'Trucks Unarmed',57);
insert  into `trader_tids`(`id`,`name`,`trader`) values (117,'Cars',57);
insert  into `trader_tids`(`id`,`name`,`trader`) values (118,'Waggons',57);
insert  into `trader_tids`(`id`,`name`,`trader`) values (119,'Bus',57);
insert  into `trader_tids`(`id`,`name`,`trader`) values (120,'SUV\'s',48);
insert  into `trader_tids`(`id`,`name`,`trader`) values (121,'Pistols',58);
insert  into `trader_tids`(`id`,`name`,`trader`) values (122,'Assault Rifles',58);
insert  into `trader_tids`(`id`,`name`,`trader`) values (123,'Sniper Rifles',58);
insert  into `trader_tids`(`id`,`name`,`trader`) values (124,'Pistol Ammo',59);
insert  into `trader_tids`(`id`,`name`,`trader`) values (125,'Assault Ammo',59);
insert  into `trader_tids`(`id`,`name`,`trader`) values (126,'Sniper Ammo',59);
insert  into `trader_tids`(`id`,`name`,`trader`) values (128,'Vehicle Parts',61);
insert  into `trader_tids`(`id`,`name`,`trader`) values (129,'Vehicle Parts',62);
insert  into `trader_tids`(`id`,`name`,`trader`) values (130,'Clothes',20);
insert  into `trader_tids`(`id`,`name`,`trader`) values (131,'Weapons',20);
insert  into `trader_tids`(`id`,`name`,`trader`) values (132,'Vehicles',20);
insert  into `trader_tids`(`id`,`name`,`trader`) values (133,'Assault Rifle',21);
insert  into `trader_tids`(`id`,`name`,`trader`) values (134,'Machine Gun',21);
insert  into `trader_tids`(`id`,`name`,`trader`) values (135,'Sniper Rifle',21);
insert  into `trader_tids`(`id`,`name`,`trader`) values (136,'Explosives',21);
insert  into `trader_tids`(`id`,`name`,`trader`) values (137,'Assault Rifle Ammo',22);
insert  into `trader_tids`(`id`,`name`,`trader`) values (138,'Machine Gun Ammo',22);
insert  into `trader_tids`(`id`,`name`,`trader`) values (139,'Sniper Rifle Ammo',22);
insert  into `trader_tids`(`id`,`name`,`trader`) values (140,'Food and Drinks',23);
insert  into `trader_tids`(`id`,`name`,`trader`) values (141,'Backpacks',23);
insert  into `trader_tids`(`id`,`name`,`trader`) values (142,'Toolbelt Items',23);
insert  into `trader_tids`(`id`,`name`,`trader`) values (143,'Clothes',23);
insert  into `trader_tids`(`id`,`name`,`trader`) values (144,'Vehicle Parts',24);
insert  into `trader_tids`(`id`,`name`,`trader`) values (145,'Building Supplies',24);
insert  into `trader_tids`(`id`,`name`,`trader`) values (146,'Medical Supplies',25);
insert  into `trader_tids`(`id`,`name`,`trader`) values (147,'Chem-lites/Flares',25);
insert  into `trader_tids`(`id`,`name`,`trader`) values (148,'Smoke Grenades',25);
insert  into `trader_tids`(`id`,`name`,`trader`) values (149,'Trucks Armed',26);
insert  into `trader_tids`(`id`,`name`,`trader`) values (150,'UAZ',26);
insert  into `trader_tids`(`id`,`name`,`trader`) values (151,'Helicopter Armed',26);
insert  into `trader_tids`(`id`,`name`,`trader`) values (152,'Military Armed',26);
insert  into `trader_tids`(`id`,`name`,`trader`) values (153,'Fuel Trucks',26);
insert  into `trader_tids`(`id`,`name`,`trader`) values (154,'Heavy Armor Unarmed',26);
insert  into `trader_tids`(`id`,`name`,`trader`) values (155,'Vehicle Parts',27);
insert  into `trader_tids`(`id`,`name`,`trader`) values (156,'Building Supplies',27);
insert  into `trader_tids`(`id`,`name`,`trader`) values (157,'Sidearm',28);
insert  into `trader_tids`(`id`,`name`,`trader`) values (158,'Rifles',28);
insert  into `trader_tids`(`id`,`name`,`trader`) values (159,'Shotguns and Single-shot',28);
insert  into `trader_tids`(`id`,`name`,`trader`) values (160,'Sidearm Ammo',29);
insert  into `trader_tids`(`id`,`name`,`trader`) values (161,'Rifle Ammo',29);
insert  into `trader_tids`(`id`,`name`,`trader`) values (162,'Shotguns and Single-shot',29);
insert  into `trader_tids`(`id`,`name`,`trader`) values (163,'Food and Drinks',30);
insert  into `trader_tids`(`id`,`name`,`trader`) values (164,'Backpacks',30);
insert  into `trader_tids`(`id`,`name`,`trader`) values (165,'Toolbelt Items',30);
insert  into `trader_tids`(`id`,`name`,`trader`) values (166,'Clothes',30);
insert  into `trader_tids`(`id`,`name`,`trader`) values (167,'Medical Supplies',31);
insert  into `trader_tids`(`id`,`name`,`trader`) values (168,'Chem-lites/Flares',31);
insert  into `trader_tids`(`id`,`name`,`trader`) values (169,'Smoke Grenades',31);
insert  into `trader_tids`(`id`,`name`,`trader`) values (170,'Cars',32);
insert  into `trader_tids`(`id`,`name`,`trader`) values (171,'Trucks Unarmed',32);
insert  into `trader_tids`(`id`,`name`,`trader`) values (172,'SUV',32);
insert  into `trader_tids`(`id`,`name`,`trader`) values (173,'Buses and Vans',32);
insert  into `trader_tids`(`id`,`name`,`trader`) values (174,'Bikes and ATV',32);
insert  into `trader_tids`(`id`,`name`,`trader`) values (175,'Helicopter Unarmed',32);
insert  into `trader_tids`(`id`,`name`,`trader`) values (176,'Military Unarmed',32);
insert  into `trader_tids`(`id`,`name`,`trader`) values (177,'Vehicle Parts',33);
insert  into `trader_tids`(`id`,`name`,`trader`) values (178,'Building Supplies',33);
insert  into `trader_tids`(`id`,`name`,`trader`) values (179,'Food and Drinks',34);
insert  into `trader_tids`(`id`,`name`,`trader`) values (180,'Backpacks',34);
insert  into `trader_tids`(`id`,`name`,`trader`) values (181,'Toolbelt Items',34);
insert  into `trader_tids`(`id`,`name`,`trader`) values (182,'Clothes',34);
insert  into `trader_tids`(`id`,`name`,`trader`) values (185,'Airplanes',37);
insert  into `trader_tids`(`id`,`name`,`trader`) values (186,'Weapons',15);
insert  into `trader_tids`(`id`,`name`,`trader`) values (187,'Vehicles',15);
insert  into `trader_tids`(`id`,`name`,`trader`) values (188,'Food/Drinks',63);
insert  into `trader_tids`(`id`,`name`,`trader`) values (189,'Backpacks',63);
insert  into `trader_tids`(`id`,`name`,`trader`) values (190,'Toolbelt Items',63);
insert  into `trader_tids`(`id`,`name`,`trader`) values (191,'Clothes',63);
insert  into `trader_tids`(`id`,`name`,`trader`) values (192,'Cargo Planes',64);
insert  into `trader_tids`(`id`,`name`,`trader`) values (193,'Medical Supplies',66);
insert  into `trader_tids`(`id`,`name`,`trader`) values (194,'Cars',65);
insert  into `trader_tids`(`id`,`name`,`trader`) values (195,'Food/Drinks',67);
insert  into `trader_tids`(`id`,`name`,`trader`) values (196,'Backpacks',67);
insert  into `trader_tids`(`id`,`name`,`trader`) values (197,'Toolbelt Items',67);
insert  into `trader_tids`(`id`,`name`,`trader`) values (198,'Clothes',67);
insert  into `trader_tids`(`id`,`name`,`trader`) values (199,'Cars',68);
insert  into `trader_tids`(`id`,`name`,`trader`) values (200,'Trucks Unarmed',68);
insert  into `trader_tids`(`id`,`name`,`trader`) values (201,'Trucks Armed',68);
insert  into `trader_tids`(`id`,`name`,`trader`) values (202,'Military Unarmed',68);
insert  into `trader_tids`(`id`,`name`,`trader`) values (203,'UAZ',68);
insert  into `trader_tids`(`id`,`name`,`trader`) values (204,'Helicopters Unarmed',68);
insert  into `trader_tids`(`id`,`name`,`trader`) values (205,'Pistol Ammo',69);
insert  into `trader_tids`(`id`,`name`,`trader`) values (206,'Rifle Ammo',69);
insert  into `trader_tids`(`id`,`name`,`trader`) values (207,'Heavy Ammo',69);
insert  into `trader_tids`(`id`,`name`,`trader`) values (208,'Sniper Ammo',69);
insert  into `trader_tids`(`id`,`name`,`trader`) values (209,'Pistols',70);
insert  into `trader_tids`(`id`,`name`,`trader`) values (210,'Rifles',70);
insert  into `trader_tids`(`id`,`name`,`trader`) values (211,'Heavy Machine Guns',70);
insert  into `trader_tids`(`id`,`name`,`trader`) values (212,'Sniper Rifles',70);
insert  into `trader_tids`(`id`,`name`,`trader`) values (213,'Vehicle Parts',71);
insert  into `trader_tids`(`id`,`name`,`trader`) values (214,'Building Supplies',71);
insert  into `trader_tids`(`id`,`name`,`trader`) values (215,'Explosives',71);
insert  into `trader_tids`(`id`,`name`,`trader`) values (216,'Armored Vehicles',72);
insert  into `trader_tids`(`id`,`name`,`trader`) values (217,'SUV',72);
insert  into `trader_tids`(`id`,`name`,`trader`) values (218,'ATV/Motorcycles ',72);
insert  into `trader_tids`(`id`,`name`,`trader`) values (219,'Bus/Van/Bikes',72);
insert  into `trader_tids`(`id`,`name`,`trader`) values (220,'Armed Choppers',72);
insert  into `trader_tids`(`id`,`name`,`trader`) values (221,'Medical Supplies',73);
insert  into `trader_tids`(`id`,`name`,`trader`) values (222,'Chemlights/Flares',73);
insert  into `trader_tids`(`id`,`name`,`trader`) values (223,'Smoke Grenades',73);
insert  into `trader_tids`(`id`,`name`,`trader`) values (224,'Food/Drinks',74);
insert  into `trader_tids`(`id`,`name`,`trader`) values (225,'Backpacks',74);
insert  into `trader_tids`(`id`,`name`,`trader`) values (226,'Toolbelt Items',74);
insert  into `trader_tids`(`id`,`name`,`trader`) values (227,'Clothes',74);
insert  into `trader_tids`(`id`,`name`,`trader`) values (228,'Pistol Ammo',76);
insert  into `trader_tids`(`id`,`name`,`trader`) values (229,'Rifle Ammo',76);
insert  into `trader_tids`(`id`,`name`,`trader`) values (230,'Heavy Ammo',76);
insert  into `trader_tids`(`id`,`name`,`trader`) values (231,'Sniper Ammo',76);
insert  into `trader_tids`(`id`,`name`,`trader`) values (232,'Pistols',77);
insert  into `trader_tids`(`id`,`name`,`trader`) values (233,'Rifles',77);
insert  into `trader_tids`(`id`,`name`,`trader`) values (234,'Heavy Machine Guns',77);
insert  into `trader_tids`(`id`,`name`,`trader`) values (235,'Sniper Rifles',77);
insert  into `trader_tids`(`id`,`name`,`trader`) values (236,'Clothes',78);
insert  into `trader_tids`(`id`,`name`,`trader`) values (237,'Weapons',78);
insert  into `trader_tids`(`id`,`name`,`trader`) values (238,'Vehicles',78);
insert  into `trader_tids`(`id`,`name`,`trader`) values (239,'Armed Choppers',79);
insert  into `trader_tids`(`id`,`name`,`trader`) values (241,'Assault Rifle',80);
insert  into `trader_tids`(`id`,`name`,`trader`) values (242,'Pistols',80);
insert  into `trader_tids`(`id`,`name`,`trader`) values (243,'Heavy Machine Guns',80);
insert  into `trader_tids`(`id`,`name`,`trader`) values (244,'Sniper Rifles',80);
insert  into `trader_tids`(`id`,`name`,`trader`) values (245,'Assault Ammo',81);
insert  into `trader_tids`(`id`,`name`,`trader`) values (246,'Pistol Ammo',81);
insert  into `trader_tids`(`id`,`name`,`trader`) values (247,'Heavy Ammo',81);
insert  into `trader_tids`(`id`,`name`,`trader`) values (248,'Sniper Rifle Ammo',81);
insert  into `trader_tids`(`id`,`name`,`trader`) values (249,'Helicopter Unarmed',82);
insert  into `trader_tids`(`id`,`name`,`trader`) values (250,'Building Supplies',83);
insert  into `trader_tids`(`id`,`name`,`trader`) values (251,'PBX',84);
insert  into `trader_tids`(`id`,`name`,`trader`) values (254,'Boats Unarmed',84);
insert  into `trader_tids`(`id`,`name`,`trader`) values (257,'Clothes',86);
insert  into `trader_tids`(`id`,`name`,`trader`) values (258,'Weapons',86);
insert  into `trader_tids`(`id`,`name`,`trader`) values (259,'Military Armed',87);
insert  into `trader_tids`(`id`,`name`,`trader`) values (260,'Toolbelt Items',83);
insert  into `trader_tids`(`id`,`name`,`trader`) values (261,'Vehicle Parts',83);
insert  into `trader_tids`(`id`,`name`,`trader`) values (262,'Medical Supplies',88);
insert  into `trader_tids`(`id`,`name`,`trader`) values (264,'Chem-lites/Flares',88);
insert  into `trader_tids`(`id`,`name`,`trader`) values (265,'Smoke Grenades',88);
insert  into `trader_tids`(`id`,`name`,`trader`) values (266,'Medical Supplies',89);
insert  into `trader_tids`(`id`,`name`,`trader`) values (267,'Chem-lites/Flares',89);
insert  into `trader_tids`(`id`,`name`,`trader`) values (268,'Airplanes',90);
insert  into `trader_tids`(`id`,`name`,`trader`) values (269,'Smoke Grenades',89);
insert  into `trader_tids`(`id`,`name`,`trader`) values (270,'Building Supplies',91);
insert  into `trader_tids`(`id`,`name`,`trader`) values (271,'Vehicle Parts',91);
insert  into `trader_tids`(`id`,`name`,`trader`) values (272,'Cars',92);
insert  into `trader_tids`(`id`,`name`,`trader`) values (273,'Bus/Van/Bikes',92);
insert  into `trader_tids`(`id`,`name`,`trader`) values (274,'Trucks Unarmed',92);
insert  into `trader_tids`(`id`,`name`,`trader`) values (275,'Trucks Armed',92);
insert  into `trader_tids`(`id`,`name`,`trader`) values (276,'Backpacks',93);
insert  into `trader_tids`(`id`,`name`,`trader`) values (277,'Food/Drinks',93);
insert  into `trader_tids`(`id`,`name`,`trader`) values (278,'Food and Drinks',93);
insert  into `trader_tids`(`id`,`name`,`trader`) values (279,'Toolbelt Items',93);
insert  into `trader_tids`(`id`,`name`,`trader`) values (280,'Backpacks',94);
insert  into `trader_tids`(`id`,`name`,`trader`) values (281,'Clothes',94);
insert  into `trader_tids`(`id`,`name`,`trader`) values (282,'Food and Drinks',94);
insert  into `trader_tids`(`id`,`name`,`trader`) values (283,'Toolbelt Items',94);
insert  into `trader_tids`(`id`,`name`,`trader`) values (284,'Medical Supplies',95);
insert  into `trader_tids`(`id`,`name`,`trader`) values (285,'Assault Rifle',96);
insert  into `trader_tids`(`id`,`name`,`trader`) values (286,'Pistols',96);
insert  into `trader_tids`(`id`,`name`,`trader`) values (287,'Sniper Rifles',96);
insert  into `trader_tids`(`id`,`name`,`trader`) values (288,'Assault Rifle Ammo',97);
insert  into `trader_tids`(`id`,`name`,`trader`) values (289,'Pistol Ammo',97);
insert  into `trader_tids`(`id`,`name`,`trader`) values (290,'Boats Armed',98);
insert  into `trader_tids`(`id`,`name`,`trader`) values (291,'Backpacks',99);
insert  into `trader_tids`(`id`,`name`,`trader`) values (292,'Armed Choppers',100);
insert  into `trader_tids`(`id`,`name`,`trader`) values (293,'Helicopter Unarmed',100);
insert  into `trader_tids`(`id`,`name`,`trader`) values (294,'Building Supplies',101);
insert  into `trader_tids`(`id`,`name`,`trader`) values (295,'Vehicle Parts',101);
insert  into `trader_tids`(`id`,`name`,`trader`) values (297,'Safes',86);
insert  into `trader_tids`(`id`,`name`,`trader`) values (298,'Food/Drinks',99);
insert  into `trader_tids`(`id`,`name`,`trader`) values (299,'Toolbelt Items',99);
insert  into `trader_tids`(`id`,`name`,`trader`) values (300,'Fuel Trucks',87);
insert  into `trader_tids`(`id`,`name`,`trader`) values (301,'Clothes',99);
insert  into `trader_tids`(`id`,`name`,`trader`) values (302,'Sniper Rifle Ammo',97);
insert  into `trader_tids`(`id`,`name`,`trader`) values (303,'Airplanes',103);
insert  into `trader_tids`(`id`,`name`,`trader`) values (304,'ATV/Motorcycles ',92);
insert  into `trader_tids`(`id`,`name`,`trader`) values (305,'UAZ',92);
insert  into `trader_tids`(`id`,`name`,`trader`) values (306,'Military Unarmed',87);
insert  into `trader_tids`(`id`,`name`,`trader`) values (307,'SUV',92);
insert  into `trader_tids`(`id`,`name`,`trader`) values (308,'Military Unarmed',48);
insert  into `trader_tids`(`id`,`name`,`trader`) values (309,'Vehicle Parts',104);
insert  into `trader_tids`(`id`,`name`,`trader`) values (310,'Building Supplies',104);
insert  into `trader_tids`(`id`,`name`,`trader`) values (311,'Toolbelt Items',104);
insert  into `trader_tids`(`id`,`name`,`trader`) values (312,'Food/Drinks',105);
insert  into `trader_tids`(`id`,`name`,`trader`) values (313,'Clothes',105);
insert  into `trader_tids`(`id`,`name`,`trader`) values (314,'Backpacks',105);
insert  into `trader_tids`(`id`,`name`,`trader`) values (315,'Food/Drinks',106);
insert  into `trader_tids`(`id`,`name`,`trader`) values (316,'Clothes',106);
insert  into `trader_tids`(`id`,`name`,`trader`) values (317,'Backpacks',106);
insert  into `trader_tids`(`id`,`name`,`trader`) values (318,'Medical Supplies',107);
insert  into `trader_tids`(`id`,`name`,`trader`) values (319,'Chem lights/Flares',107);
insert  into `trader_tids`(`id`,`name`,`trader`) values (320,'Pistol Ammo',108);
insert  into `trader_tids`(`id`,`name`,`trader`) values (321,'Rifle Ammo',108);
insert  into `trader_tids`(`id`,`name`,`trader`) values (322,'LMG Ammo',108);
insert  into `trader_tids`(`id`,`name`,`trader`) values (323,'Sniper Ammo',108);
insert  into `trader_tids`(`id`,`name`,`trader`) values (324,'SMG Ammo',108);
insert  into `trader_tids`(`id`,`name`,`trader`) values (325,'Pistols',109);
insert  into `trader_tids`(`id`,`name`,`trader`) values (326,'Assault Rifles',109);
insert  into `trader_tids`(`id`,`name`,`trader`) values (327,'Light Machine Guns',109);
insert  into `trader_tids`(`id`,`name`,`trader`) values (328,'Sniper Rifles',109);
insert  into `trader_tids`(`id`,`name`,`trader`) values (330,'Helicopter Unarmed',110);
insert  into `trader_tids`(`id`,`name`,`trader`) values (331,'Helicopter Armed',110);
insert  into `trader_tids`(`id`,`name`,`trader`) values (332,'Armored Vehicles',110);
insert  into `trader_tids`(`id`,`name`,`trader`) values (333,'Fuel Trucks',110);
insert  into `trader_tids`(`id`,`name`,`trader`) values (334,'URALs',110);
insert  into `trader_tids`(`id`,`name`,`trader`) values (335,'Land Rovers',110);
insert  into `trader_tids`(`id`,`name`,`trader`) values (336,'Pistols',111);
insert  into `trader_tids`(`id`,`name`,`trader`) values (337,'Assault Rifles',111);
insert  into `trader_tids`(`id`,`name`,`trader`) values (338,'Sniper Rifles',111);
insert  into `trader_tids`(`id`,`name`,`trader`) values (339,'Pistol Ammo',112);
insert  into `trader_tids`(`id`,`name`,`trader`) values (340,'Rifle Ammo',112);
insert  into `trader_tids`(`id`,`name`,`trader`) values (341,'LMG Ammo',112);
insert  into `trader_tids`(`id`,`name`,`trader`) values (342,'Sniper Ammo',112);
insert  into `trader_tids`(`id`,`name`,`trader`) values (343,'Helicopter Unarmed',113);
insert  into `trader_tids`(`id`,`name`,`trader`) values (344,'Armed Chopper',113);
insert  into `trader_tids`(`id`,`name`,`trader`) values (345,'Cars',113);
insert  into `trader_tids`(`id`,`name`,`trader`) values (346,'Motorcycles/ATV\'s',113);
insert  into `trader_tids`(`id`,`name`,`trader`) values (347,'Boats Unarmed',114);
insert  into `trader_tids`(`id`,`name`,`trader`) values (348,'Boats Armed',114);
insert  into `trader_tids`(`id`,`name`,`trader`) values (349,'ATV/Motorcycles ',115);
insert  into `trader_tids`(`id`,`name`,`trader`) values (350,'Cars',115);
insert  into `trader_tids`(`id`,`name`,`trader`) values (351,'Bus/Van/Bikes',115);
insert  into `trader_tids`(`id`,`name`,`trader`) values (352,'SUV',115);
insert  into `trader_tids`(`id`,`name`,`trader`) values (353,'Trucks Armed',115);
insert  into `trader_tids`(`id`,`name`,`trader`) values (354,'Trucks Unarmed',115);
insert  into `trader_tids`(`id`,`name`,`trader`) values (355,'UAZ',115);
insert  into `trader_tids`(`id`,`name`,`trader`) values (356,'Vehicle Parts',116);
insert  into `trader_tids`(`id`,`name`,`trader`) values (357,'Building Supplies',116);
insert  into `trader_tids`(`id`,`name`,`trader`) values (358,'Toolbelt Items',116);
insert  into `trader_tids`(`id`,`name`,`trader`) values (361,'Weapons',119);
insert  into `trader_tids`(`id`,`name`,`trader`) values (362,'Vehicles',119);
insert  into `trader_tids`(`id`,`name`,`trader`) values (363,'Clothes',119);
insert  into `trader_tids`(`id`,`name`,`trader`) values (364,'Ammunition',119);
insert  into `trader_tids`(`id`,`name`,`trader`) values (365,'Safes',119);
insert  into `trader_tids`(`id`,`name`,`trader`) values (366,'Shotguns and Single-shot',111);
insert  into `trader_tids`(`id`,`name`,`trader`) values (367,'Shotguns and Single-shot Ammo',112);
insert  into `trader_tids`(`id`,`name`,`trader`) values (368,'Sub Machine Guns',109);
insert  into `trader_tids`(`id`,`name`,`trader`) values (369,'Sniper Ammo',8);
insert  into `trader_tids`(`id`,`name`,`trader`) values (370,'Sniper Rifles',1);
insert  into `trader_tids`(`id`,`name`,`trader`) values (372,'Sniper Ammo',9);
insert  into `trader_tids`(`id`,`name`,`trader`) values (374,'Pistol Ammo',10);
insert  into `trader_tids`(`id`,`name`,`trader`) values (375,'Sniper Rifles',2);
insert  into `trader_tids`(`id`,`name`,`trader`) values (376,'Sub Machine Guns',2);
insert  into `trader_tids`(`id`,`name`,`trader`) values (377,'SMG Ammo',9);
insert  into `trader_tids`(`id`,`name`,`trader`) values (378,'SMG Ammo',10);
insert  into `trader_tids`(`id`,`name`,`trader`) values (379,'Sub Machine Guns',17);
insert  into `trader_tids`(`id`,`name`,`trader`) values (380,'Sub Machine Guns',21);
insert  into `trader_tids`(`id`,`name`,`trader`) values (381,'SMG Ammo',22);
insert  into `trader_tids`(`id`,`name`,`trader`) values (382,'Sniper Rifles',28);
insert  into `trader_tids`(`id`,`name`,`trader`) values (383,'Sniper Ammo',29);
insert  into `trader_tids`(`id`,`name`,`trader`) values (384,'Pistols',21);
insert  into `trader_tids`(`id`,`name`,`trader`) values (385,'Pistol Ammo',22);
insert  into `trader_tids`(`id`,`name`,`trader`) values (386,'Airplanes',120);
insert  into `trader_tids`(`id`,`name`,`trader`) values (388,'Attack Choppers',120);
insert  into `trader_tids`(`id`,`name`,`trader`) values (389,'Airplanes',121);
insert  into `trader_tids`(`id`,`name`,`trader`) values (391,'Medical Supplies',123);
insert  into `trader_tids`(`id`,`name`,`trader`) values (392,'LMG Ammo',124);
insert  into `trader_tids`(`id`,`name`,`trader`) values (393,'Pistol Ammo',124);
insert  into `trader_tids`(`id`,`name`,`trader`) values (394,'Rifle Ammo',124);
insert  into `trader_tids`(`id`,`name`,`trader`) values (395,'Shotguns and Single-shot Ammo',124);
insert  into `trader_tids`(`id`,`name`,`trader`) values (396,'Sniper Ammo',124);
insert  into `trader_tids`(`id`,`name`,`trader`) values (397,'Light Machine Guns',125);
insert  into `trader_tids`(`id`,`name`,`trader`) values (398,'Pistols',125);
insert  into `trader_tids`(`id`,`name`,`trader`) values (399,'Assault Rifles',125);
insert  into `trader_tids`(`id`,`name`,`trader`) values (400,'Shotguns and Single-shot',125);
insert  into `trader_tids`(`id`,`name`,`trader`) values (401,'Sniper Rifles',125);
insert  into `trader_tids`(`id`,`name`,`trader`) values (402,'Ammunition',126);
insert  into `trader_tids`(`id`,`name`,`trader`) values (403,'Weapons',126);
insert  into `trader_tids`(`id`,`name`,`trader`) values (404,'Clothes',126);
insert  into `trader_tids`(`id`,`name`,`trader`) values (405,'Vehicles',126);
insert  into `trader_tids`(`id`,`name`,`trader`) values (406,'Safes',126);
insert  into `trader_tids`(`id`,`name`,`trader`) values (407,'LMG Ammo',127);
insert  into `trader_tids`(`id`,`name`,`trader`) values (408,'Pistol Ammo',127);
insert  into `trader_tids`(`id`,`name`,`trader`) values (409,'Rifle Ammo',127);
insert  into `trader_tids`(`id`,`name`,`trader`) values (410,'SMG Ammo',127);
insert  into `trader_tids`(`id`,`name`,`trader`) values (411,'Sniper Ammo',127);
insert  into `trader_tids`(`id`,`name`,`trader`) values (412,'Light Machine Guns',128);
insert  into `trader_tids`(`id`,`name`,`trader`) values (413,'Pistols',128);
insert  into `trader_tids`(`id`,`name`,`trader`) values (414,'Assault Rifles',128);
insert  into `trader_tids`(`id`,`name`,`trader`) values (415,'Sub Machine Guns',128);
insert  into `trader_tids`(`id`,`name`,`trader`) values (416,'Sniper Rifles',128);
insert  into `trader_tids`(`id`,`name`,`trader`) values (417,'Bus/Van/Bikes',129);
insert  into `trader_tids`(`id`,`name`,`trader`) values (418,'ATV/Motorcycles ',129);
insert  into `trader_tids`(`id`,`name`,`trader`) values (419,'Cars',129);
insert  into `trader_tids`(`id`,`name`,`trader`) values (420,'Trucks Armed',129);
insert  into `trader_tids`(`id`,`name`,`trader`) values (421,'UAZ',129);
insert  into `trader_tids`(`id`,`name`,`trader`) values (422,'Boats Unarmed',130);
insert  into `trader_tids`(`id`,`name`,`trader`) values (423,'Boats Armed',130);
insert  into `trader_tids`(`id`,`name`,`trader`) values (424,'Vehicles',131);
insert  into `trader_tids`(`id`,`name`,`trader`) values (425,'Attack Choppers',131);
insert  into `trader_tids`(`id`,`name`,`trader`) values (426,'Airplanes',132);
insert  into `trader_tids`(`id`,`name`,`trader`) values (427,'Medical Supplies',133);
insert  into `trader_tids`(`id`,`name`,`trader`) values (428,'Cars',134);
insert  into `trader_tids`(`id`,`name`,`trader`) values (429,'Fuel Trucks',134);
insert  into `trader_tids`(`id`,`name`,`trader`) values (430,'Chem lights/Flares',133);
insert  into `trader_tids`(`id`,`name`,`trader`) values (431,'SUV',134);
insert  into `trader_tids`(`id`,`name`,`trader`) values (432,'URALs',134);
insert  into `trader_tids`(`id`,`name`,`trader`) values (433,'Armored Vehicles',134);
insert  into `trader_tids`(`id`,`name`,`trader`) values (434,'Land Rovers',134);
insert  into `trader_tids`(`id`,`name`,`trader`) values (435,'Food/Drinks',135);
insert  into `trader_tids`(`id`,`name`,`trader`) values (436,'Backpacks',135);
insert  into `trader_tids`(`id`,`name`,`trader`) values (437,'Clothes',135);
insert  into `trader_tids`(`id`,`name`,`trader`) values (438,'Vehicle Parts',136);
insert  into `trader_tids`(`id`,`name`,`trader`) values (439,'Building Supplies',136);
insert  into `trader_tids`(`id`,`name`,`trader`) values (440,'Toolbelt Items',136);
insert  into `trader_tids`(`id`,`name`,`trader`) values (442,'Food/Drinks',138);
insert  into `trader_tids`(`id`,`name`,`trader`) values (443,'Chem lights/Flares',123);
insert  into `trader_tids`(`id`,`name`,`trader`) values (444,'Backpacks',138);
insert  into `trader_tids`(`id`,`name`,`trader`) values (445,'Clothes',138);
insert  into `trader_tids`(`id`,`name`,`trader`) values (446,'Vehicle Parts',139);
insert  into `trader_tids`(`id`,`name`,`trader`) values (447,'Building Supplies',139);
insert  into `trader_tids`(`id`,`name`,`trader`) values (448,'Toolbelt Items',139);
insert  into `trader_tids`(`id`,`name`,`trader`) values (449,'Armed Chopper',121);
insert  into `trader_tids`(`id`,`name`,`trader`) values (450,'Helicopter Unarmed',121);
insert  into `trader_tids`(`id`,`name`,`trader`) values (451,'Helicopter Unarmed',132);
insert  into `trader_tids`(`id`,`name`,`trader`) values (452,'Black Market Weapons',140);
insert  into `trader_tids`(`id`,`name`,`trader`) values (453,'Black Market Ammo',140);
insert  into `trader_tids`(`id`,`name`,`trader`) values (454,'Pistols',17);
insert  into `trader_tids`(`id`,`name`,`trader`) values (455,'Black Market Weapons',141);
insert  into `trader_tids`(`id`,`name`,`trader`) values (456,'Black Market Ammo',141);
insert  into `trader_tids`(`id`,`name`,`trader`) values (457,'Ammunition',15);
insert  into `trader_tids`(`id`,`name`,`trader`) values (458,'Ammunition',20);
insert  into `trader_tids`(`id`,`name`,`trader`) values (459,'Black Market Weapons',142);
insert  into `trader_tids`(`id`,`name`,`trader`) values (460,'Black Market Ammo',142);
insert  into `trader_tids`(`id`,`name`,`trader`) values (461,'URALs',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (462,'Explosives',141);
insert  into `trader_tids`(`id`,`name`,`trader`) values (463,'Backpacks',141);
insert  into `trader_tids`(`id`,`name`,`trader`) values (464,'Clothing',141);
insert  into `trader_tids`(`id`,`name`,`trader`) values (466,'BMW',131);
insert  into `trader_tids`(`id`,`name`,`trader`) values (471,'Mid Size Cars',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (473,'Cargo Trucks',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (474,'Buses',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (475,'Cargo Vans',11);
insert  into `trader_tids`(`id`,`name`,`trader`) values (476,'Clothes',143);
insert  into `trader_tids`(`id`,`name`,`trader`) values (477,'Weapons',143);
insert  into `trader_tids`(`id`,`name`,`trader`) values (478,'Ammunition',143);
insert  into `trader_tids`(`id`,`name`,`trader`) values (479,'Trucks Armed',143);
insert  into `trader_tids`(`id`,`name`,`trader`) values (480,'Assault Rifle Ammo',144);
insert  into `trader_tids`(`id`,`name`,`trader`) values (481,'Light Machine Gun Ammo',144);
insert  into `trader_tids`(`id`,`name`,`trader`) values (482,'Sniper Rifle Ammo',144);
insert  into `trader_tids`(`id`,`name`,`trader`) values (483,'Submachine Gun Ammo',144);
insert  into `trader_tids`(`id`,`name`,`trader`) values (484,'Pistol Ammo',144);
insert  into `trader_tids`(`id`,`name`,`trader`) values (485,'Assault Rifle',145);
insert  into `trader_tids`(`id`,`name`,`trader`) values (486,'Light Machine Gun',145);
insert  into `trader_tids`(`id`,`name`,`trader`) values (487,'Sniper Rifle',145);
insert  into `trader_tids`(`id`,`name`,`trader`) values (488,'Submachine Guns',145);
insert  into `trader_tids`(`id`,`name`,`trader`) values (489,'Pistols',145);
insert  into `trader_tids`(`id`,`name`,`trader`) values (491,'Military Unarmed',146);
insert  into `trader_tids`(`id`,`name`,`trader`) values (492,'Fuel Trucks',146);
insert  into `trader_tids`(`id`,`name`,`trader`) values (493,'Helicopter Armed',143);
insert  into `trader_tids`(`id`,`name`,`trader`) values (495,'Trucks',146);
insert  into `trader_tids`(`id`,`name`,`trader`) values (496,'Backpacks',147);
insert  into `trader_tids`(`id`,`name`,`trader`) values (497,'Clothes',147);
insert  into `trader_tids`(`id`,`name`,`trader`) values (498,'Drinks',147);
insert  into `trader_tids`(`id`,`name`,`trader`) values (508,'Building Supplies',150);
insert  into `trader_tids`(`id`,`name`,`trader`) values (509,'Vehicle Parts',150);
insert  into `trader_tids`(`id`,`name`,`trader`) values (510,'Toolbelt Items',150);
insert  into `trader_tids`(`id`,`name`,`trader`) values (512,'Helicopter Armed',151);
insert  into `trader_tids`(`id`,`name`,`trader`) values (517,'Airplanes',152);
insert  into `trader_tids`(`id`,`name`,`trader`) values (519,'Helicopter Unarmed',152);
insert  into `trader_tids`(`id`,`name`,`trader`) values (520,'Used Cars',153);
insert  into `trader_tids`(`id`,`name`,`trader`) values (526,'Black Market Weapons',154);
insert  into `trader_tids`(`id`,`name`,`trader`) values (527,'Black Market Ammo',154);
insert  into `trader_tids`(`id`,`name`,`trader`) values (529,'Explosives',154);
insert  into `trader_tids`(`id`,`name`,`trader`) values (530,'Building Supplies',155);
insert  into `trader_tids`(`id`,`name`,`trader`) values (531,'Vehicle Parts',155);
insert  into `trader_tids`(`id`,`name`,`trader`) values (532,'Toolbelt Items',155);
insert  into `trader_tids`(`id`,`name`,`trader`) values (534,'Trucks Armed',151);
insert  into `trader_tids`(`id`,`name`,`trader`) values (535,'Trucks Unarmed',156);
insert  into `trader_tids`(`id`,`name`,`trader`) values (536,'Bikes and ATV',156);
insert  into `trader_tids`(`id`,`name`,`trader`) values (538,'Backpacks',157);
insert  into `trader_tids`(`id`,`name`,`trader`) values (541,'Medical Supplies',158);
insert  into `trader_tids`(`id`,`name`,`trader`) values (542,'Chem-lites/Flares',158);
insert  into `trader_tids`(`id`,`name`,`trader`) values (543,'Smoke Grenades',158);
insert  into `trader_tids`(`id`,`name`,`trader`) values (555,'Wholesale',161);
insert  into `trader_tids`(`id`,`name`,`trader`) values (557,'Boats Unarmed',164);
insert  into `trader_tids`(`id`,`name`,`trader`) values (558,'Boats Armed',164);
insert  into `trader_tids`(`id`,`name`,`trader`) values (562,'Military Armed',143);
insert  into `trader_tids`(`id`,`name`,`trader`) values (563,'Buses and Vans',146);
insert  into `trader_tids`(`id`,`name`,`trader`) values (564,'Cargo Trucks',146);
insert  into `trader_tids`(`id`,`name`,`trader`) values (565,'Utility Vehicles',146);
insert  into `trader_tids`(`id`,`name`,`trader`) values (568,'Utility Vehicles',156);
insert  into `trader_tids`(`id`,`name`,`trader`) values (569,'Military Armed',151);
insert  into `trader_tids`(`id`,`name`,`trader`) values (570,'Cargo Trucks',156);
insert  into `trader_tids`(`id`,`name`,`trader`) values (573,'Shotguns and Single-shot Ammo',144);
insert  into `trader_tids`(`id`,`name`,`trader`) values (574,'Shotguns and Single-shot',145);
insert  into `trader_tids`(`id`,`name`,`trader`) values (575,'Clothing',151);
insert  into `trader_tids`(`id`,`name`,`trader`) values (577,'Ammunition',151);
insert  into `trader_tids`(`id`,`name`,`trader`) values (579,'Packaged Food',147);
insert  into `trader_tids`(`id`,`name`,`trader`) values (580,'Cooked Meats',147);
insert  into `trader_tids`(`id`,`name`,`trader`) values (585,'Used Cars',146);
insert  into `trader_tids`(`id`,`name`,`trader`) values (586,'Cargo Trucks',153);
insert  into `trader_tids`(`id`,`name`,`trader`) values (587,'Bikes and ATV',153);
insert  into `trader_tids`(`id`,`name`,`trader`) values (588,'Buses and Vans',153);
insert  into `trader_tids`(`id`,`name`,`trader`) values (589,'Fuel Trucks',153);
insert  into `trader_tids`(`id`,`name`,`trader`) values (590,'Trucks',153);
insert  into `trader_tids`(`id`,`name`,`trader`) values (591,'Utility Vehicles',153);
insert  into `trader_tids`(`id`,`name`,`trader`) values (592,'Buses and Vans',156);
insert  into `trader_tids`(`id`,`name`,`trader`) values (595,'Fuel Trucks',156);
insert  into `trader_tids`(`id`,`name`,`trader`) values (598,'Military Unarmed',153);
insert  into `trader_tids`(`id`,`name`,`trader`) values (599,'Military Unarmed',156);
insert  into `trader_tids`(`id`,`name`,`trader`) values (600,'Used Cars',156);
insert  into `trader_tids`(`id`,`name`,`trader`) values (601,'Drinks',157);
insert  into `trader_tids`(`id`,`name`,`trader`) values (602,'Assault Rifle',148);
insert  into `trader_tids`(`id`,`name`,`trader`) values (603,'Light Machine Gun',148);
insert  into `trader_tids`(`id`,`name`,`trader`) values (604,'Submachine Guns',148);
insert  into `trader_tids`(`id`,`name`,`trader`) values (605,'Sniper Rifle',148);
insert  into `trader_tids`(`id`,`name`,`trader`) values (606,'Pistols',148);
insert  into `trader_tids`(`id`,`name`,`trader`) values (607,'Shotguns and Single-shot',148);
insert  into `trader_tids`(`id`,`name`,`trader`) values (608,'Bikes and ATV',146);
insert  into `trader_tids`(`id`,`name`,`trader`) values (609,'Assault Rifle Ammo',149);
insert  into `trader_tids`(`id`,`name`,`trader`) values (610,'Light Machine Gun Ammo',149);
insert  into `trader_tids`(`id`,`name`,`trader`) values (611,'Pistol Ammo',149);
insert  into `trader_tids`(`id`,`name`,`trader`) values (612,'Submachine Gun Ammo',149);
insert  into `trader_tids`(`id`,`name`,`trader`) values (613,'Shotguns and Single-shot Ammo',149);
insert  into `trader_tids`(`id`,`name`,`trader`) values (614,'Sniper Rifle Ammo',149);
insert  into `trader_tids`(`id`,`name`,`trader`) values (615,'Assault Rifle',159);
insert  into `trader_tids`(`id`,`name`,`trader`) values (616,'Light Machine Gun',159);
insert  into `trader_tids`(`id`,`name`,`trader`) values (617,'Pistols',159);
insert  into `trader_tids`(`id`,`name`,`trader`) values (618,'Submachine Guns',159);
insert  into `trader_tids`(`id`,`name`,`trader`) values (619,'Sniper Rifle',159);
insert  into `trader_tids`(`id`,`name`,`trader`) values (620,'Shotguns and Single-shot',159);
insert  into `trader_tids`(`id`,`name`,`trader`) values (621,'Assault Rifle Ammo',160);
insert  into `trader_tids`(`id`,`name`,`trader`) values (622,'Light Machine Gun Ammo',160);
insert  into `trader_tids`(`id`,`name`,`trader`) values (623,'Shotguns and Single-shot Ammo',160);
insert  into `trader_tids`(`id`,`name`,`trader`) values (624,'Sniper Rifle Ammo',160);
insert  into `trader_tids`(`id`,`name`,`trader`) values (625,'Pistol Ammo',160);
insert  into `trader_tids`(`id`,`name`,`trader`) values (626,'Submachine Gun Ammo',160);
insert  into `trader_tids`(`id`,`name`,`trader`) values (627,'Weapons',151);
insert  into `trader_tids`(`id`,`name`,`trader`) values (628,'Clothes',157);
insert  into `trader_tids`(`id`,`name`,`trader`) values (629,'Packaged Food',157);
insert  into `trader_tids`(`id`,`name`,`trader`) values (630,'Cooked Meats',157);
insert  into `trader_tids`(`id`,`name`,`trader`) values (631,'Clothes',162);
insert  into `trader_tids`(`id`,`name`,`trader`) values (632,'Backpacks',162);
insert  into `trader_tids`(`id`,`name`,`trader`) values (633,'Drinks',162);
insert  into `trader_tids`(`id`,`name`,`trader`) values (634,'Cooked Meats',162);
insert  into `trader_tids`(`id`,`name`,`trader`) values (635,'Packaged Food',162);
insert  into `trader_tids`(`id`,`name`,`trader`) values (636,'Wholesale',163);
insert  into `trader_tids`(`id`,`name`,`trader`) values (637,'Assault Rifle',165);
insert  into `trader_tids`(`id`,`name`,`trader`) values (638,'Light Machine Gun',165);
insert  into `trader_tids`(`id`,`name`,`trader`) values (640,'Sniper Rifle',165);
insert  into `trader_tids`(`id`,`name`,`trader`) values (641,'Shotguns and Single-shot',165);
insert  into `trader_tids`(`id`,`name`,`trader`) values (642,'Submachine Guns',165);
insert  into `trader_tids`(`id`,`name`,`trader`) values (643,'Assault Rifle Ammo',166);
insert  into `trader_tids`(`id`,`name`,`trader`) values (644,'Light Machine Gun Ammo',166);
insert  into `trader_tids`(`id`,`name`,`trader`) values (646,'Pistol Ammo',166);
insert  into `trader_tids`(`id`,`name`,`trader`) values (647,'Sniper Rifle Ammo',166);
insert  into `trader_tids`(`id`,`name`,`trader`) values (648,'Submachine Gun Ammo',166);
insert  into `trader_tids`(`id`,`name`,`trader`) values (649,'Shotguns and Single-shot Ammo',166);
insert  into `trader_tids`(`id`,`name`,`trader`) values (650,'Bikes and ATV',167);
insert  into `trader_tids`(`id`,`name`,`trader`) values (651,'Buses and Vans',167);
insert  into `trader_tids`(`id`,`name`,`trader`) values (653,'Cargo Trucks',167);
insert  into `trader_tids`(`id`,`name`,`trader`) values (655,'Fuel Trucks',167);
insert  into `trader_tids`(`id`,`name`,`trader`) values (658,'Military Unarmed',167);
insert  into `trader_tids`(`id`,`name`,`trader`) values (659,'Trucks',167);
insert  into `trader_tids`(`id`,`name`,`trader`) values (660,'Used Cars',167);
insert  into `trader_tids`(`id`,`name`,`trader`) values (661,'Utility Vehicles',167);
insert  into `trader_tids`(`id`,`name`,`trader`) values (662,'Building Supplies',168);
insert  into `trader_tids`(`id`,`name`,`trader`) values (663,'Toolbelt Items',168);
insert  into `trader_tids`(`id`,`name`,`trader`) values (664,'Vehicle Parts',168);
insert  into `trader_tids`(`id`,`name`,`trader`) values (665,'Medical Supplies',169);
insert  into `trader_tids`(`id`,`name`,`trader`) values (666,'Chem-lites/Flares',169);
insert  into `trader_tids`(`id`,`name`,`trader`) values (668,'Smoke Grenades',169);
insert  into `trader_tids`(`id`,`name`,`trader`) values (669,'Chem-lites/Flares',170);
insert  into `trader_tids`(`id`,`name`,`trader`) values (670,'Medical Supplies',170);
insert  into `trader_tids`(`id`,`name`,`trader`) values (671,'Smoke Grenades',170);
insert  into `trader_tids`(`id`,`name`,`trader`) values (672,'Boats Unarmed',171);
insert  into `trader_tids`(`id`,`name`,`trader`) values (673,'Boats Armed',171);
insert  into `trader_tids`(`id`,`name`,`trader`) values (674,'Pistols',165);
insert  into `trader_tids`(`id`,`name`,`trader`) values (675,'Wholesale',172);
insert  into `trader_tids`(`id`,`name`,`trader`) values (677,'Vehicle Parts',173);
insert  into `trader_tids`(`id`,`name`,`trader`) values (678,'Building Supplies',173);
insert  into `trader_tids`(`id`,`name`,`trader`) values (679,'Toolbelt Items',173);
insert  into `trader_tids`(`id`,`name`,`trader`) values (680,'Building Supplies',174);
insert  into `trader_tids`(`id`,`name`,`trader`) values (681,'Toolbelt Items',174);
insert  into `trader_tids`(`id`,`name`,`trader`) values (682,'Vehicle Parts',174);
insert  into `trader_tids`(`id`,`name`,`trader`) values (683,'Clothes',175);
insert  into `trader_tids`(`id`,`name`,`trader`) values (684,'Drinks',175);
insert  into `trader_tids`(`id`,`name`,`trader`) values (685,'Backpacks',175);
insert  into `trader_tids`(`id`,`name`,`trader`) values (686,'Cooked Meats',175);
insert  into `trader_tids`(`id`,`name`,`trader`) values (687,'Packaged Food',175);
insert  into `trader_tids`(`id`,`name`,`trader`) values (688,'Backpacks',176);
insert  into `trader_tids`(`id`,`name`,`trader`) values (689,'Clothes',176);
insert  into `trader_tids`(`id`,`name`,`trader`) values (690,'Cooked Meats',176);
insert  into `trader_tids`(`id`,`name`,`trader`) values (691,'Drinks',176);
insert  into `trader_tids`(`id`,`name`,`trader`) values (692,'Packaged Food',176);

/*Table structure for table `traders_data` */

DROP TABLE IF EXISTS `traders_data`;

CREATE TABLE `traders_data` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL COMMENT '[Class Name,1 = CfgMagazines | 2 = Vehicle | 3 = Weapon]',
  `qty` int(8) NOT NULL COMMENT 'amount in stock available to buy',
  `buy` varchar(255) NOT NULL COMMENT '[[Qty,Class,Type],]',
  `sell` varchar(255) NOT NULL COMMENT '[[Qty,Class,Type],]',
  `order` int(2) NOT NULL DEFAULT '0' COMMENT '# sort order for addAction menu',
  `tid` int(8) NOT NULL COMMENT 'Trader Menu ID',
  `afile` varchar(64) NOT NULL DEFAULT 'trade_items',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`item`,`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=7581 DEFAULT CHARSET=latin1;

/*Data for the table `traders_data` */

insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (4996,'[\"Skin_CZ_Special_Forces_GL_DES_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (4999,'[\"Skin_Drake_Light_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5002,'[\"Skin_Soldier_Sniper_PMC_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5003,'[\"Skin_FR_OHara_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5004,'[\"Skin_FR_Rodriguez_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5005,'[\"Skin_CZ_Soldier_Sniper_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5006,'[\"Skin_Graves_Light_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5007,'[\"G36_C_SD_camo\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,477,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5008,'[\"M4A1_AIM_SD_camo\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,477,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5012,'[\"FN_FAL_ANPVS4\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,477,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5016,'[\"30Rnd_556x45_StanagSD\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,478,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5019,'[\"ArmoredSUV_PMC_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,479,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5020,'[\"Pickup_PK_TK_GUE_EP1_DZE\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,479,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5022,'[\"Offroad_DSHKM_Gue_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,479,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5026,'[\"30Rnd_556x45_Stanag\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,480,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5027,'[\"20Rnd_762x51_FNFAL\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,480,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5028,'[\"100Rnd_762x51_M240\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,481,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5029,'[\"200Rnd_556x45_M249\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,481,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5030,'[\"100Rnd_762x54_PK\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,481,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5031,'[\"20Rnd_762x51_DMR\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,482,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5032,'[\"10Rnd_762x54_SVD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,482,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5036,'[\"30rnd_9x19_MP5\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,483,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5037,'[\"30Rnd_9x19_MP5SD\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,483,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5038,'[\"30Rnd_9x19_UZI\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,483,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5039,'[\"64Rnd_9x19_SD_Bizon\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,483,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5040,'[\"30Rnd_9x19_UZI_SD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,483,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5041,'[\"20Rnd_B_765x17_Ball\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,483,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5042,'[\"15Rnd_9x19_M9\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,484,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5043,'[\"15Rnd_9x19_M9SD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,484,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5044,'[\"17Rnd_9x19_glock17\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,484,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5045,'[\"6Rnd_45ACP\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,484,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5046,'[\"7Rnd_45ACP_1911\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,484,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5047,'[\"8Rnd_9x18_Makarov\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,484,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5048,'[\"8Rnd_9x18_MakarovSD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,484,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5049,'[\"G36A_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5050,'[\"G36C\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5051,'[\"G36C_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5052,'[\"G36K_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5054,'[\"M16A2\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5055,'[\"M16A2GL\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5056,'[\"M16A4_ACG\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5057,'[\"M4A1\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5059,'[\"M4A1_HWS_GL_camo\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5060,'[\"M4A3_CCO_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5061,'[\"M4A1_Aim\",3]',10,'[6,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5063,'[\"M249_EP1_DZ\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,486,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5064,'[\"M240_DZ\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,486,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5065,'[\"Mk_48_DZ\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,486,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5066,'[\"Pecheneg_DZ\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,486,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5067,'[\"SVD_CAMO\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,487,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5069,'[\"M40A3\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,487,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5070,'[\"M14_EP1\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,487,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5072,'[\"bizon_silenced\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,488,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5073,'[\"UZI_EP1\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,488,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5074,'[\"Sa61_EP1\",3]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,488,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5075,'[\"MP5A5\",3]',10,'[1,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,488,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5076,'[\"UZI_SD_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,488,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5077,'[\"MP5SD\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,488,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5078,'[\"M9SD\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,489,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5079,'[\"glock17_EP1\",3]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,489,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5080,'[\"Colt1911\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,489,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5081,'[\"M9\",3]',10,'[1,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,489,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5082,'[\"MakarovSD\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,489,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5083,'[\"revolver_gold_EP1\",3]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,489,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5088,'[\"HMMWV_M1035_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,491,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5089,'[\"HMMWV_Ambulance\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,491,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5090,'[\"HMMWV_Ambulance_CZ_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,491,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5091,'[\"HMMWV_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,491,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5092,'[\"GAZ_Vodnik_MedEvac\",2]',2,'[1,\"ItemBriefcase100oz\",1]','[5,\"ItemGoldBar10oz\",1]',0,491,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5093,'[\"KamazRefuel_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,492,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5094,'[\"MtvrRefuel_DES_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,492,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5095,'[\"UralRefuel_TK_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,492,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5096,'[\"V3S_Refuel_TK_GUE_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,492,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5097,'[\"CH_47F_EP1_DZE\",2]',2,'[4,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,493,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5098,'[\"UH1H_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,493,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5099,'[\"Mi17_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,493,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5100,'[\"UH60M_EP1_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,493,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5101,'[\"UH1Y_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,493,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5116,'[\"DZ_Patrol_Pack_EP1\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,496,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5117,'[\"CZ_VestPouch_EP1\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,496,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5118,'[\"DZ_ALICE_Pack_EP1\",2]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,496,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5119,'[\"DZ_Assault_Pack_EP1\",2]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,496,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5120,'[\"DZ_Backpack_EP1\",2]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,496,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5121,'[\"DZ_British_ACU\",2]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,496,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5122,'[\"DZ_CivilBackpack_EP1\",2]',10,'[6,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,496,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5123,'[\"DZ_Czech_Vest_Puch\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,496,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5124,'[\"DZ_TK_Assault_Pack_EP1\",2]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,496,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5125,'[\"DZ_TerminalPack_EP1\",2]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,496,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5126,'[\"DZ_GunBag_EP1\",2]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,496,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5127,'[\"Skin_Rocker2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5128,'[\"Skin_SurvivorW2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5129,'[\"Skin_Functionary1_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5131,'[\"Skin_Haris_Press_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5132,'[\"Skin_Priest_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5135,'[\"Skin_SurvivorWpink_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5136,'[\"Skin_SurvivorWurban_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5137,'[\"Skin_SurvivorWcombat_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5138,'[\"Skin_SurvivorWdesert_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5139,'[\"Skin_Survivor2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5145,'[\"ItemSodaCoke\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,498,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5146,'[\"ItemSodaPepsi\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,498,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5150,'[\"ItemSodaMdew\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,498,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5155,'[\"ItemSodaR4z0r\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,498,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5156,'[\"ItemWaterbottleUnfilled\",1]',10,'[3,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,498,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5201,'[\"ItemSandbag\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5202,'[\"ItemTankTrap\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5203,'[\"ItemTentOld\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5205,'[\"ItemWire\",1]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5206,'[\"30m_plot_kit\",1]',10,'[6,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar10oz\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5207,'[\"ItemCorrugated\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5208,'[\"ItemPole\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5210,'[\"ItemJerrycan\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,509,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5211,'[\"ItemJerrycanEmpty\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,509,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5212,'[\"PartEngine\",1]',10,'[5,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,509,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5213,'[\"PartVRotor\",1]',10,'[5,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,509,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5214,'[\"PartWheel\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemSilverBar\",1]',0,509,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5215,'[\"PartGlass\",1]',10,'[1,\"ItemGoldBar\",1]','[1,\"ItemSilverBar\",1]',0,509,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5216,'[\"PartGeneric\",1]',10,'[2,\"ItemGoldBar\",1]','[6,\"ItemSilverBar\",1]',0,509,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5217,'[\"ItemCompass\",3]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5218,'[\"Binocular\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5219,'[\"Binocular_Vector\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5220,'[\"ItemEtool\",3]',10,'[9,\"ItemSilverBar10oz\",1]','[6,\"ItemSilverBar10oz\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5221,'[\"ItemFlashlight\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5222,'[\"ItemFlashlightRed\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5223,'[\"ItemGPS\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5224,'[\"ItemHatchet_DZE\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5225,'[\"ItemKnife\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5226,'[\"ItemMap\",3]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5227,'[\"ItemMatchbox_DZE\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5228,'[\"ItemToolbox\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5229,'[\"ItemWatch\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5230,'[\"NVGoggles\",3]',10,'[4,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5264,'[\"AN2_DZ\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,517,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5265,'[\"C130J_US_EP1_DZ\",2]',2,'[4,\"ItemBriefcase100oz\",1]','[2,\"ItemBriefcase100oz\",1]',0,517,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5266,'[\"MV22_DZ\",2]',2,'[5,\"ItemBriefcase100oz\",1]','[2,\"ItemBriefcase100oz\",1]',0,517,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5272,'[\"Mi17_Civilian_DZ\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,519,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5273,'[\"AH6X_DZ\",2]',2,'[6,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,519,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5274,'[\"MH6J_DZ\",2]',2,'[8,\"ItemGoldBar10oz\",1]','[4,\"ItemGoldBar10oz\",1]',0,519,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5275,'[\"CSJ_GyroC\",2]',2,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,519,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5276,'[\"CSJ_GyroCover\",2]',2,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,519,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5277,'[\"CSJ_GyroP\",2]',2,'[5,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,519,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5278,'[\"Skoda\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5279,'[\"SkodaBlue\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5280,'[\"SkodaGreen\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5281,'[\"SkodaRed\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5282,'[\"VolhaLimo_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5283,'[\"Volha_1_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5284,'[\"Volha_2_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5285,'[\"VWGolf\",2]',2,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5286,'[\"car_hatchback\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5287,'[\"car_sedan\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5288,'[\"GLT_M300_LT\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5289,'[\"GLT_M300_ST\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5290,'[\"Lada1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5291,'[\"Lada1_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5292,'[\"Lada2\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5293,'[\"Lada2_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5294,'[\"LadaLM\",2]',2,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,520,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5337,'[\"Saiga12K\",3]',10,'[5,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5338,'[\"m8_compact\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5339,'[\"m8_sharpshooter\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5340,'[\"m8_holo_sd\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5341,'[\"m8_carbine\",3]',10,'[5,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5342,'[\"M24_des_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5344,'[\"VSS_vintorez\",3]',10,'[3,\"ItemGoldBar10oz\",1]','[4,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5345,'[\"SVD_des_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5346,'[\"SVD\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5348,'[\"20Rnd_9x39_SP5_VSS\",1]',10,'[3,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5349,'[\"8Rnd_B_Beneli_74Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5350,'[\"20Rnd_762x51_SB_SCAR\",1]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5351,'[\"8Rnd_B_Beneli_Pellets\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5352,'[\"8Rnd_B_Saiga12_74Slug\",1]',10,'[5,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5353,'[\"8Rnd_B_Saiga12_Pellets\",1]',10,'[5,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5354,'[\"20Rnd_B_765x17_Ball\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5355,'[\"10Rnd_762x54_SVD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5356,'[\"5Rnd_762x51_M24\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5357,'[\"30Rnd_556x45_Stanag\",1]',10,'[5,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5358,'[\"20Rnd_762x51_FNFAL\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5366,'[\"HandGrenade_west\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,529,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5367,'[\"PipeBomb\",1]',10,'[4,\"ItemBriefcase100oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,529,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5368,'[\"ItemSandbag\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5369,'[\"ItemTankTrap\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5370,'[\"ItemTentOld\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5371,'[\"ItemVault\",1]',10,'[1,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5372,'[\"ItemWire\",1]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5373,'[\"30m_plot_kit\",1]',10,'[6,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar10oz\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5374,'[\"ItemCorrugated\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5375,'[\"ItemPole\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5376,'[\"ItemJerrycan\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,531,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5377,'[\"ItemJerrycanEmpty\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,531,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5378,'[\"PartEngine\",1]',10,'[5,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,531,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5379,'[\"PartVRotor\",1]',10,'[5,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,531,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5380,'[\"PartWheel\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemSilverBar\",1]',0,531,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5381,'[\"PartGlass\",1]',10,'[1,\"ItemGoldBar\",1]','[1,\"ItemSilverBar\",1]',0,531,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5382,'[\"PartGeneric\",1]',10,'[2,\"ItemGoldBar\",1]','[6,\"ItemSilverBar\",1]',0,531,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5383,'[\"ItemCompass\",3]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5384,'[\"Binocular\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5385,'[\"Binocular_Vector\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5386,'[\"ItemEtool\",3]',10,'[9,\"ItemSilverBar10oz\",1]','[6,\"ItemSilverBar10oz\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5387,'[\"ItemFlashlight\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5388,'[\"ItemFlashlightRed\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5389,'[\"ItemGPS\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5390,'[\"ItemHatchet_DZE\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5391,'[\"ItemKnife\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5392,'[\"ItemMap\",3]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5393,'[\"ItemMatchbox_DZE\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5394,'[\"ItemToolbox\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5395,'[\"ItemWatch\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5396,'[\"NVGoggles\",3]',10,'[4,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5409,'[\"Pickup_PK_GUE_DZE\",2]',2,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,534,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5410,'[\"Pickup_PK_INS_DZE\",2]',2,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,534,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5411,'[\"hilux1_civil_3_open_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,535,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5412,'[\"datsun1_civil_3_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,535,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5413,'[\"hilux1_civil_1_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,535,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5414,'[\"datsun1_civil_2_covered\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,535,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5415,'[\"datsun1_civil_1_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,535,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5416,'[\"hilux1_civil_2_covered\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,535,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5420,'[\"MMT_Civ\",2]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,536,'trade_any_bicycle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5421,'[\"Old_bike_TK_INS_EP1\",2]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,536,'trade_any_bicycle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5422,'[\"TT650_Civ\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,536,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5423,'[\"TT650_Ins\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,536,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5424,'[\"TT650_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,536,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5425,'[\"ATV_CZ_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,536,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5426,'[\"ATV_US_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,536,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5427,'[\"M1030_US_DES_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,536,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5428,'[\"Old_moto_TK_Civ_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,536,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5436,'[\"DZ_Patrol_Pack_EP1\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,538,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5437,'[\"CZ_VestPouch_EP1\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,538,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5438,'[\"DZ_ALICE_Pack_EP1\",2]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,538,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5439,'[\"DZ_Assault_Pack_EP1\",2]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,538,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5440,'[\"DZ_Backpack_EP1\",2]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,538,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5441,'[\"DZ_British_ACU\",2]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,538,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5442,'[\"DZ_CivilBackpack_EP1\",2]',10,'[6,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,538,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5475,'[\"ItemAntibiotic\",1]',10,'[1,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,541,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5476,'[\"ItemBandage\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,541,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5477,'[\"ItemBloodbag\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,541,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5478,'[\"ItemEpinephrine\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,541,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5479,'[\"ItemHeatPack\",1]',10,'[1,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,541,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5480,'[\"ItemMorphine\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,541,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5481,'[\"ItemPainkiller\",1]',10,'[1,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,541,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5482,'[\"HandChemBlue\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,542,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5483,'[\"HandChemGreen\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,542,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5484,'[\"HandChemRed\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,542,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5485,'[\"FlareGreen_M203\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,542,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5486,'[\"FlareWhite_M203\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,542,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5487,'[\"HandRoadFlare\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,542,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5488,'[\"SmokeShell\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,543,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5489,'[\"SmokeShellGreen\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,543,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5490,'[\"SmokeShellRed\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,543,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5555,'[\"bulk_15Rnd_9x19_M9SD\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5556,'[\"bulk_17Rnd_9x19_glock17\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5557,'[\"bulk_30Rnd_556x45_StanagSD\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5558,'[\"bulk_30Rnd_9x19_MP5SD\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5564,'[\"Smallboat_1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,557,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5565,'[\"Smallboat_2\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,557,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5566,'[\"Zodiac\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,557,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5567,'[\"Fishing_Boat\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,557,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5568,'[\"PBX\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,557,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5569,'[\"RHIB\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,558,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5616,'[\"VWGolf\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,560,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5617,'[\"HMMWV_DZ\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,491,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5619,'[\"HMMWV_M998A2_SOV_DES_EP1_DZE\",2]',2,'[1,\"ItemBriefcase100oz\",1]','[5,\"ItemGoldBar10oz\",1]',0,562,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5621,'[\"HMMWV_M1151_M2_CZ_DES_EP1_DZE\",2]',2,'[4,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,562,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5622,'[\"LandRover_Special_CZ_EP1_DZE\",2]',2,'[1,\"ItemBriefcase100oz\",1]','[5,\"ItemGoldBar10oz\",1]',0,562,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5623,'[\"LandRover_MG_TK_EP1_DZE\",2]',2,'[6,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,562,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5624,'[\"UAZ_MG_TK_EP1_DZE\",2]',2,'[6,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,562,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5625,'[\"GAZ_Vodnik_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,562,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5626,'[\"Ikarus\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,563,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5627,'[\"Ikarus_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,563,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5630,'[\"S1203_TK_CIV_EP1\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,563,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5631,'[\"S1203_ambulance_EP1\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,563,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5643,'[\"hilux1_civil_3_open_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,495,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5644,'[\"datsun1_civil_3_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,495,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5645,'[\"hilux1_civil_1_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,495,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5646,'[\"datsun1_civil_2_covered\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,495,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5647,'[\"datsun1_civil_1_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,495,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5648,'[\"hilux1_civil_2_covered\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,495,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5652,'[\"Ural_CDF\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5653,'[\"Ural_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5654,'[\"Ural_UN_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5655,'[\"V3S_Open_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5656,'[\"V3S_Open_TK_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5657,'[\"Kamaz\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5658,'[\"MTVR_DES_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5664,'[\"SUV_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5665,'[\"SUV_Blue\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5666,'[\"SUV_Charcoal\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5667,'[\"SUV_Green\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5668,'[\"SUV_Orange\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5669,'[\"SUV_Pink\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5670,'[\"SUV_Red\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5671,'[\"SUV_Silver\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5672,'[\"SUV_White\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5673,'[\"SUV_Yellow\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5674,'[\"SUV_Camo\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5675,'[\"UAZ_CDF\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5676,'[\"UAZ_INS\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5677,'[\"UAZ_RU\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5678,'[\"UAZ_Unarmed_TK_CIV_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5679,'[\"UAZ_Unarmed_TK_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5680,'[\"UAZ_Unarmed_UN_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,565,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5681,'[\"SUV_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5682,'[\"SUV_Blue\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5683,'[\"SUV_Charcoal\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5684,'[\"SUV_Green\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5685,'[\"SUV_Orange\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5686,'[\"SUV_Pink\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5687,'[\"SUV_Red\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5688,'[\"SUV_Silver\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5689,'[\"SUV_White\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5690,'[\"SUV_Yellow\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5691,'[\"SUV_Camo\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5692,'[\"UAZ_CDF\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5693,'[\"UAZ_INS\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5694,'[\"UAZ_RU\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5695,'[\"UAZ_Unarmed_TK_CIV_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5696,'[\"UAZ_Unarmed_TK_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5697,'[\"UAZ_Unarmed_UN_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,568,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5713,'[\"Ural_CDF\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5714,'[\"Ural_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5715,'[\"Ural_UN_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5716,'[\"V3S_Open_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5717,'[\"V3S_Open_TK_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5718,'[\"Kamaz\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5719,'[\"MTVR_DES_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5737,'[\"CH_47F_EP1_DZE\",2]',2,'[4,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,512,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5738,'[\"UH1H_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,512,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5739,'[\"Mi17_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,512,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5740,'[\"UH60M_EP1_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,512,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5741,'[\"UH1Y_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,512,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5742,'[\"ArmoredSUV_PMC_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,534,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5749,'[\"Pickup_PK_TK_GUE_EP1_DZE\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,534,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5751,'[\"Offroad_DSHKM_Gue_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,534,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5754,'[\"HMMWV_M998A2_SOV_DES_EP1_DZE\",2]',2,'[1,\"ItemBriefcase100oz\",1]','[5,\"ItemGoldBar10oz\",1]',0,569,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5755,'[\"HMMWV_M1151_M2_CZ_DES_EP1_DZE\",2]',2,'[4,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,569,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5756,'[\"LandRover_Special_CZ_EP1_DZE\",2]',2,'[1,\"ItemBriefcase100oz\",1]','[5,\"ItemGoldBar10oz\",1]',0,569,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5757,'[\"LandRover_MG_TK_EP1_DZE\",2]',2,'[6,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,569,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5758,'[\"UAZ_MG_TK_EP1_DZE\",2]',2,'[6,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,569,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5759,'[\"GAZ_Vodnik_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,569,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5786,'[\"GNT_C185U\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,517,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5788,'[\"GNT_C185\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,517,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5789,'[\"GNT_C185R\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,517,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5790,'[\"GNT_C185C\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,517,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5801,'[\"SCAR_H_LNG_Sniper_SD\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,477,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5802,'[\"BAF_LRR_scoped\",3]',10,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,477,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5809,'[\"15Rnd_W1866_Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,573,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5810,'[\"2Rnd_shotgun_74Pellets\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,573,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5811,'[\"2Rnd_shotgun_74Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,573,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5812,'[\"8Rnd_B_Beneli_74Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,573,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5813,'[\"8Rnd_B_Beneli_Pellets\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,573,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5815,'[\"Quiver\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,573,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5816,'[\"Winchester1866\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,574,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5817,'[\"MR43\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[8,\"ItemSilverBar\",1]',0,574,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5818,'[\"Crossbow_DZ\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,574,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5819,'[\"M1014\",3]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,574,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5820,'[\"Remington870_lamp\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,574,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5838,'[\"30Rnd_556x45_StanagSD\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,577,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5859,'[\"VWGolf\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,578,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5860,'[\"ItemSodaRbull\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,498,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5861,'[\"ItemSodaOrangeSherbet\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,498,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5862,'[\"FoodCanBakedBeans\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,579,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5863,'[\"FoodCanFrankBeans\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,579,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5864,'[\"FoodCanPasta\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,579,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5865,'[\"FoodCanSardines\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,579,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5866,'[\"FoodMRE\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,579,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5867,'[\"FoodPistachio\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,579,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5868,'[\"FoodNutmix\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,579,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5869,'[\"FoodbaconCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,580,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5870,'[\"FoodbeefCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,580,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5871,'[\"FoodchickenCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,580,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5872,'[\"FoodmuttonCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,580,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5873,'[\"FoodrabbitCooked\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,580,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5874,'[\"ItemTroutCooked\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,580,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5875,'[\"ItemSeaBassCooked\",1]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,580,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5876,'[\"ItemTunaCooked\",1]',10,'[4,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,580,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5931,'[\"Skoda\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5932,'[\"SkodaBlue\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5933,'[\"SkodaGreen\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5934,'[\"SkodaRed\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5935,'[\"VolhaLimo_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5936,'[\"Volha_1_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5937,'[\"Volha_2_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5938,'[\"VWGolf\",2]',2,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5939,'[\"car_hatchback\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5940,'[\"car_sedan\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5941,'[\"GLT_M300_LT\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5942,'[\"GLT_M300_ST\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5943,'[\"Lada1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5944,'[\"Lada1_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5945,'[\"Lada2\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5946,'[\"Lada2_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5947,'[\"LadaLM\",2]',2,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,585,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5948,'[\"Ural_CDF\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5949,'[\"Ural_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5950,'[\"Ural_UN_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5951,'[\"V3S_Open_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5952,'[\"V3S_Open_TK_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5953,'[\"Kamaz\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5954,'[\"MTVR_DES_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5960,'[\"MMT_Civ\",2]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,587,'trade_any_bicycle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5961,'[\"Old_bike_TK_INS_EP1\",2]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,587,'trade_any_bicycle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5962,'[\"TT650_Civ\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,587,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5963,'[\"TT650_Ins\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,587,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5964,'[\"TT650_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,587,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5965,'[\"ATV_CZ_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,587,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5966,'[\"ATV_US_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,587,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5967,'[\"M1030_US_DES_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,587,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5968,'[\"Old_moto_TK_Civ_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,587,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5969,'[\"Ikarus\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,588,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5970,'[\"Ikarus_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,588,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5971,'[\"S1203_TK_CIV_EP1\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,588,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5972,'[\"S1203_ambulance_EP1\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,588,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5984,'[\"KamazRefuel_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,589,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5985,'[\"MtvrRefuel_DES_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,589,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5986,'[\"UralRefuel_TK_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,589,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5987,'[\"V3S_Refuel_TK_GUE_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,589,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5988,'[\"hilux1_civil_3_open_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,590,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5989,'[\"datsun1_civil_3_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,590,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5990,'[\"hilux1_civil_1_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,590,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5991,'[\"datsun1_civil_2_covered\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,590,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5992,'[\"datsun1_civil_1_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,590,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5993,'[\"hilux1_civil_2_covered\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,590,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5997,'[\"SUV_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5998,'[\"SUV_Blue\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (5999,'[\"SUV_Charcoal\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6000,'[\"SUV_Green\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6001,'[\"SUV_Orange\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6002,'[\"SUV_Pink\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6003,'[\"SUV_Red\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6004,'[\"SUV_Silver\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6005,'[\"SUV_White\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6006,'[\"SUV_Yellow\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6007,'[\"SUV_Camo\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6008,'[\"UAZ_CDF\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6009,'[\"UAZ_INS\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6010,'[\"UAZ_RU\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6011,'[\"UAZ_Unarmed_TK_CIV_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6012,'[\"UAZ_Unarmed_TK_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6013,'[\"UAZ_Unarmed_UN_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,591,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6014,'[\"Ikarus\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,592,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6015,'[\"Ikarus_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,592,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6016,'[\"S1203_TK_CIV_EP1\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,592,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6017,'[\"S1203_ambulance_EP1\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,592,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6047,'[\"VWGolf\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,593,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6069,'[\"KamazRefuel_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,595,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6070,'[\"MtvrRefuel_DES_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,595,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6071,'[\"UralRefuel_TK_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,595,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6072,'[\"V3S_Refuel_TK_GUE_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,595,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6085,'[\"HMMWV_M1035_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,598,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6086,'[\"HMMWV_Ambulance\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,598,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6087,'[\"HMMWV_Ambulance_CZ_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,598,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6088,'[\"HMMWV_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,598,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6089,'[\"GAZ_Vodnik_MedEvac\",2]',2,'[1,\"ItemBriefcase100oz\",1]','[5,\"ItemGoldBar10oz\",1]',0,598,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6090,'[\"HMMWV_DZ\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,598,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6091,'[\"HMMWV_M1035_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,599,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6092,'[\"HMMWV_Ambulance\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,599,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6093,'[\"HMMWV_Ambulance_CZ_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,599,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6094,'[\"HMMWV_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,599,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6095,'[\"GAZ_Vodnik_MedEvac\",2]',2,'[1,\"ItemBriefcase100oz\",1]','[5,\"ItemGoldBar10oz\",1]',0,599,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6096,'[\"HMMWV_DZ\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,599,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6097,'[\"Skoda\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6098,'[\"SkodaBlue\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6099,'[\"SkodaGreen\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6100,'[\"SkodaRed\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6101,'[\"VolhaLimo_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6102,'[\"Volha_1_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6103,'[\"Volha_2_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6104,'[\"VWGolf\",2]',2,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6105,'[\"car_hatchback\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6106,'[\"car_sedan\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6107,'[\"GLT_M300_LT\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6108,'[\"GLT_M300_ST\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6109,'[\"Lada1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6110,'[\"Lada1_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6111,'[\"Lada2\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6112,'[\"Lada2_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6113,'[\"LadaLM\",2]',2,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,600,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6114,'[\"Pickup_PK_GUE_DZE\",2]',2,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,479,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6115,'[\"Pickup_PK_INS_DZE\",2]',2,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,479,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6118,'[\"Sa58P_EP1\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6119,'[\"Sa58V_CCO_EP1\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6120,'[\"Sa58V_EP1\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6121,'[\"Sa58V_RCO_EP1\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6122,'[\"AKS_74_kobra\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6123,'[\"AKS_74_U\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6124,'[\"AK_47_M\",3]',10,'[8,\"ItemGoldBar\",1]','[6,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6125,'[\"AK_74\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6126,'[\"10x_303\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,573,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6127,'[\"Makarov\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,489,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6128,'[\"revolver_EP1\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,489,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6129,'[\"LeeEnfield\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,574,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6130,'[\"huntingrifle\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,487,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6131,'[\"M4SPR\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,487,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6132,'[\"SVD\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,487,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6133,'[\"SVD_des_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,487,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6134,'[\"M24\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,487,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6135,'[\"M24_des_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,487,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6136,'[\"ItemSodaCoke\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,601,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6137,'[\"ItemSodaPepsi\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,601,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6138,'[\"ItemSodaMdew\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,601,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6139,'[\"ItemSodaR4z0r\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,601,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6140,'[\"ItemWaterbottleUnfilled\",1]',10,'[3,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,601,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6141,'[\"ItemSodaRbull\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,601,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6142,'[\"ItemSodaOrangeSherbet\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,601,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6143,'[\"FN_FAL\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6144,'[\"30Rnd_545x39_AK\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,480,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6145,'[\"30Rnd_762x39_AK47\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,480,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6146,'[\"5Rnd_762x51_M24\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,482,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6147,'[\"5x_22_LR_17_HMR\",1]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,482,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6148,'[\"G36A_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6149,'[\"G36C\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6150,'[\"G36C_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6151,'[\"G36K_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6152,'[\"M16A2\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6153,'[\"M16A2GL\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6154,'[\"M16A4_ACG\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6155,'[\"M4A1\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6156,'[\"M4A1_HWS_GL_camo\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6157,'[\"M4A3_CCO_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6158,'[\"M4A1_Aim\",3]',10,'[6,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6159,'[\"Sa58P_EP1\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6160,'[\"Sa58V_CCO_EP1\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6161,'[\"Sa58V_EP1\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6162,'[\"Sa58V_RCO_EP1\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6163,'[\"AKS_74_kobra\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6164,'[\"AKS_74_U\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6165,'[\"AK_47_M\",3]',10,'[8,\"ItemGoldBar\",1]','[6,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6166,'[\"AK_74\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6167,'[\"FN_FAL\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6168,'[\"M249_EP1_DZ\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,603,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6169,'[\"M240_DZ\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,603,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6170,'[\"Mk_48_DZ\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,603,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6171,'[\"Pecheneg_DZ\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,603,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6172,'[\"bizon_silenced\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,604,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6173,'[\"UZI_EP1\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,604,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6174,'[\"Sa61_EP1\",3]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,604,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6175,'[\"MP5A5\",3]',10,'[1,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,604,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6176,'[\"UZI_SD_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,604,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6177,'[\"MP5SD\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,604,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6178,'[\"SVD_CAMO\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,605,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6179,'[\"M40A3\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,605,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6180,'[\"M14_EP1\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,605,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6181,'[\"huntingrifle\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,605,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6182,'[\"M4SPR\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,605,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6183,'[\"SVD\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,605,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6184,'[\"SVD_des_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,605,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6185,'[\"M24\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,605,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6186,'[\"M24_des_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,605,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6187,'[\"M9SD\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,606,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6188,'[\"glock17_EP1\",3]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,606,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6189,'[\"Colt1911\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,606,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6190,'[\"M9\",3]',10,'[1,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,606,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6191,'[\"MakarovSD\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,606,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6192,'[\"revolver_gold_EP1\",3]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,606,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6193,'[\"Makarov\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,606,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6194,'[\"revolver_EP1\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,606,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6195,'[\"Winchester1866\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,607,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6196,'[\"MR43\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[8,\"ItemSilverBar\",1]',0,607,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6197,'[\"Crossbow_DZ\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,607,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6198,'[\"M1014\",3]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,607,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6199,'[\"Remington870_lamp\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,607,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6200,'[\"LeeEnfield\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,607,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6201,'[\"MMT_Civ\",2]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,608,'trade_any_bicycle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6202,'[\"Old_bike_TK_INS_EP1\",2]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,608,'trade_any_bicycle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6203,'[\"TT650_Civ\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,608,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6204,'[\"TT650_Ins\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,608,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6205,'[\"TT650_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,608,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6206,'[\"ATV_CZ_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,608,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6207,'[\"ATV_US_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,608,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6208,'[\"M1030_US_DES_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,608,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6209,'[\"Old_moto_TK_Civ_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,608,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6211,'[\"30Rnd_556x45_Stanag\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,609,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6212,'[\"20Rnd_762x51_FNFAL\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,609,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6213,'[\"30Rnd_545x39_AK\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,609,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6214,'[\"30Rnd_762x39_AK47\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,609,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6215,'[\"100Rnd_762x51_M240\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,610,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6216,'[\"200Rnd_556x45_M249\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,610,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6217,'[\"100Rnd_762x54_PK\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,610,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6218,'[\"15Rnd_9x19_M9\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,611,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6219,'[\"15Rnd_9x19_M9SD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,611,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6220,'[\"17Rnd_9x19_glock17\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,611,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6221,'[\"6Rnd_45ACP\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,611,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6222,'[\"7Rnd_45ACP_1911\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,611,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6223,'[\"8Rnd_9x18_Makarov\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,611,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6224,'[\"8Rnd_9x18_MakarovSD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,611,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6225,'[\"30rnd_9x19_MP5\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,612,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6226,'[\"30Rnd_9x19_MP5SD\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,612,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6227,'[\"30Rnd_9x19_UZI\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,612,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6228,'[\"64Rnd_9x19_SD_Bizon\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,612,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6229,'[\"30Rnd_9x19_UZI_SD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,612,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6230,'[\"20Rnd_B_765x17_Ball\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,612,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6231,'[\"15Rnd_W1866_Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,613,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6232,'[\"2Rnd_shotgun_74Pellets\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,613,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6233,'[\"2Rnd_shotgun_74Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,613,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6234,'[\"8Rnd_B_Beneli_74Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,613,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6235,'[\"8Rnd_B_Beneli_Pellets\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,613,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6236,'[\"WoodenArrow\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,613,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6237,'[\"Quiver\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,613,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6238,'[\"10x_303\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,613,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6239,'[\"20Rnd_762x51_DMR\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,614,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6240,'[\"10Rnd_762x54_SVD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,614,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6242,'[\"5Rnd_762x51_M24\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,614,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6243,'[\"5x_22_LR_17_HMR\",1]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,614,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6244,'[\"G36A_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6245,'[\"G36C\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6246,'[\"G36C_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6247,'[\"G36K_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6248,'[\"M16A2\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6249,'[\"M16A2GL\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6250,'[\"M16A4_ACG\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6251,'[\"M4A1\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6252,'[\"M4A1_HWS_GL_camo\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6253,'[\"M4A3_CCO_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6254,'[\"M4A1_Aim\",3]',10,'[6,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6255,'[\"Sa58P_EP1\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6256,'[\"Sa58V_CCO_EP1\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6257,'[\"Sa58V_EP1\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6258,'[\"Sa58V_RCO_EP1\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6259,'[\"AKS_74_kobra\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6260,'[\"AKS_74_U\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6261,'[\"AK_47_M\",3]',10,'[8,\"ItemGoldBar\",1]','[6,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6262,'[\"AK_74\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6263,'[\"FN_FAL\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6264,'[\"M249_EP1_DZ\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,616,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6265,'[\"M240_DZ\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,616,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6266,'[\"Mk_48_DZ\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,616,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6267,'[\"Pecheneg_DZ\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,616,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6268,'[\"M9SD\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,617,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6269,'[\"glock17_EP1\",3]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,617,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6270,'[\"Colt1911\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,617,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6271,'[\"M9\",3]',10,'[1,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,617,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6272,'[\"MakarovSD\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,617,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6273,'[\"revolver_gold_EP1\",3]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,617,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6274,'[\"Makarov\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,617,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6275,'[\"revolver_EP1\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,617,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6276,'[\"bizon_silenced\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,618,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6277,'[\"UZI_EP1\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,618,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6278,'[\"Sa61_EP1\",3]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,618,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6279,'[\"MP5A5\",3]',10,'[1,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,618,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6280,'[\"UZI_SD_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,618,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6281,'[\"MP5SD\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,618,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6282,'[\"SVD_CAMO\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,619,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6283,'[\"M40A3\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,619,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6284,'[\"M14_EP1\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,619,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6285,'[\"huntingrifle\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,619,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6286,'[\"M4SPR\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,619,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6287,'[\"SVD\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,619,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6288,'[\"SVD_des_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,619,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6289,'[\"M24\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,619,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6290,'[\"M24_des_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,619,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6291,'[\"Winchester1866\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,620,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6292,'[\"MR43\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[8,\"ItemSilverBar\",1]',0,620,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6293,'[\"Crossbow_DZ\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,620,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6294,'[\"M1014\",3]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,620,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6295,'[\"Remington870_lamp\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,620,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6296,'[\"LeeEnfield\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,620,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6298,'[\"30Rnd_556x45_Stanag\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,621,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6299,'[\"20Rnd_762x51_FNFAL\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,621,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6300,'[\"30Rnd_545x39_AK\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,621,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6301,'[\"30Rnd_762x39_AK47\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,621,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6302,'[\"100Rnd_762x51_M240\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,622,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6303,'[\"200Rnd_556x45_M249\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,622,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6304,'[\"100Rnd_762x54_PK\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,622,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6305,'[\"15Rnd_W1866_Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,623,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6306,'[\"2Rnd_shotgun_74Pellets\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,623,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6307,'[\"2Rnd_shotgun_74Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,623,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6308,'[\"8Rnd_B_Beneli_74Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,623,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6309,'[\"8Rnd_B_Beneli_Pellets\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,623,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6310,'[\"WoodenArrow\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,623,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6311,'[\"Quiver\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,623,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6312,'[\"10x_303\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,623,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6313,'[\"20Rnd_762x51_DMR\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,624,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6314,'[\"10Rnd_762x54_SVD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,624,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6316,'[\"5Rnd_762x51_M24\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,624,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6317,'[\"5x_22_LR_17_HMR\",1]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,624,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6318,'[\"15Rnd_9x19_M9\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,625,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6319,'[\"15Rnd_9x19_M9SD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,625,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6320,'[\"17Rnd_9x19_glock17\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,625,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6321,'[\"6Rnd_45ACP\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,625,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6322,'[\"7Rnd_45ACP_1911\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,625,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6323,'[\"8Rnd_9x18_Makarov\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,625,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6324,'[\"8Rnd_9x18_MakarovSD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,625,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6325,'[\"30rnd_9x19_MP5\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,626,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6326,'[\"30Rnd_9x19_MP5SD\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,626,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6327,'[\"30Rnd_9x19_UZI\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,626,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6328,'[\"64Rnd_9x19_SD_Bizon\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,626,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6329,'[\"30Rnd_9x19_UZI_SD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,626,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6330,'[\"20Rnd_B_765x17_Ball\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,626,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6332,'[\"FN_FAL\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,477,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6333,'[\"Mk_48_DZ\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,477,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6334,'[\"M240_DZ\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,477,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6335,'[\"G36_C_SD_camo\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,627,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6336,'[\"M4A1_AIM_SD_camo\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,627,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6337,'[\"FN_FAL_ANPVS4\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,627,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6338,'[\"SCAR_H_LNG_Sniper_SD\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,627,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6339,'[\"BAF_LRR_scoped\",3]',10,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,627,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6340,'[\"FN_FAL\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,627,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6341,'[\"Mk_48_DZ\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,627,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6342,'[\"M240_DZ\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,627,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6344,'[\"Skin_Rocker1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6345,'[\"Skin_Rocker3_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6346,'[\"Skin_RU_Policeman_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6347,'[\"Skin_Pilot_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6348,'[\"Skin_Rocker4_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6349,'[\"Skin_Rocker2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6350,'[\"Skin_SurvivorW2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6351,'[\"Skin_Functionary1_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6352,'[\"Skin_Haris_Press_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6353,'[\"Skin_Priest_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6354,'[\"Skin_SurvivorWpink_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6355,'[\"Skin_SurvivorWurban_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6356,'[\"Skin_SurvivorWcombat_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6357,'[\"Skin_SurvivorWdesert_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6358,'[\"Skin_Survivor2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6359,'[\"Skin_Rocker1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6360,'[\"Skin_Rocker3_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6361,'[\"Skin_RU_Policeman_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6362,'[\"Skin_Pilot_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6363,'[\"Skin_Rocker4_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6364,'[\"FoodCanBakedBeans\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,629,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6365,'[\"FoodCanFrankBeans\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,629,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6366,'[\"FoodCanPasta\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,629,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6367,'[\"FoodCanSardines\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,629,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6368,'[\"FoodMRE\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,629,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6369,'[\"FoodPistachio\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,629,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6370,'[\"FoodNutmix\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,629,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6371,'[\"FoodbaconCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,630,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6372,'[\"FoodbeefCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,630,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6373,'[\"FoodchickenCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,630,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6374,'[\"FoodmuttonCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,630,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6375,'[\"FoodrabbitCooked\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,630,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6376,'[\"ItemTroutCooked\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,630,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6377,'[\"ItemSeaBassCooked\",1]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,630,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6378,'[\"ItemTunaCooked\",1]',10,'[4,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,630,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6379,'[\"Skin_Rocker2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6380,'[\"Skin_SurvivorW2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6381,'[\"Skin_Functionary1_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6382,'[\"Skin_Haris_Press_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6383,'[\"Skin_Priest_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6384,'[\"Skin_SurvivorWpink_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6385,'[\"Skin_SurvivorWurban_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6386,'[\"Skin_SurvivorWcombat_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6387,'[\"Skin_SurvivorWdesert_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6388,'[\"Skin_Survivor2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6389,'[\"Skin_Rocker1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6390,'[\"Skin_Rocker3_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6391,'[\"Skin_RU_Policeman_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6392,'[\"Skin_Pilot_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6393,'[\"Skin_Rocker4_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6394,'[\"DZ_Patrol_Pack_EP1\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,632,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6395,'[\"CZ_VestPouch_EP1\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,632,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6396,'[\"DZ_ALICE_Pack_EP1\",2]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,632,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6397,'[\"DZ_Assault_Pack_EP1\",2]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,632,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6398,'[\"DZ_Backpack_EP1\",2]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,632,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6399,'[\"DZ_British_ACU\",2]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,632,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6400,'[\"DZ_CivilBackpack_EP1\",2]',10,'[6,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,632,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6401,'[\"DZ_Czech_Vest_Puch\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,632,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6402,'[\"DZ_TK_Assault_Pack_EP1\",2]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,632,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6403,'[\"DZ_TerminalPack_EP1\",2]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,632,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6404,'[\"DZ_GunBag_EP1\",2]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,632,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6405,'[\"ItemSodaCoke\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,633,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6406,'[\"ItemSodaPepsi\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,633,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6407,'[\"ItemSodaMdew\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,633,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6408,'[\"ItemSodaR4z0r\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,633,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6409,'[\"ItemWaterbottleUnfilled\",1]',10,'[3,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,633,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6410,'[\"ItemSodaRbull\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,633,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6411,'[\"ItemSodaOrangeSherbet\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,633,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6412,'[\"FoodbaconCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,634,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6413,'[\"FoodbeefCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,634,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6414,'[\"FoodchickenCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,634,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6415,'[\"FoodmuttonCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,634,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6416,'[\"FoodrabbitCooked\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,634,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6417,'[\"ItemTroutCooked\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,634,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6418,'[\"ItemSeaBassCooked\",1]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,634,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6419,'[\"ItemTunaCooked\",1]',10,'[4,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,634,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6420,'[\"FoodCanBakedBeans\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,635,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6421,'[\"FoodCanFrankBeans\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,635,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6422,'[\"FoodCanPasta\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,635,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6423,'[\"FoodCanSardines\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,635,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6424,'[\"FoodMRE\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,635,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6425,'[\"FoodPistachio\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,635,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6426,'[\"FoodNutmix\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,635,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6427,'[\"bulk_ItemSandbag\",1]',10,'[2,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6429,'[\"bulk_15Rnd_9x19_M9SD\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6430,'[\"bulk_17Rnd_9x19_glock17\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6431,'[\"bulk_30Rnd_556x45_StanagSD\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6432,'[\"bulk_30Rnd_9x19_MP5SD\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6433,'[\"bulk_ItemSandbag\",1]',10,'[2,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6434,'[\"Skin_Soldier_Bodyguard_AA12_PMC_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6435,'[\"Skin_Camo1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6436,'[\"Skin_Rocket_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6437,'[\"Skin_Sniper1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6438,'[\"Skin_Soldier1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6439,'[\"Skin_Soldier_TL_PMC_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,476,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6440,'[\"Skin_Bandit1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6441,'[\"Skin_Bandit2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6442,'[\"Skin_GUE_Commander_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6443,'[\"Skin_GUE_Soldier_2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6444,'[\"Skin_GUE_Soldier_CO_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6445,'[\"Skin_GUE_Soldier_Crew_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6446,'[\"Skin_GUE_Soldier_Sniper_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6447,'[\"Skin_Ins_Soldier_GL_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6448,'[\"Skin_TK_INS_Soldier_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6449,'[\"Skin_TK_INS_Warlord_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6450,'[\"Skin_BanditW1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6451,'[\"Skin_BanditW2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,575,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6452,'[\"G36A_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6453,'[\"G36C\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6454,'[\"G36C_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6455,'[\"G36K_camo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6456,'[\"M16A2\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6457,'[\"M16A2GL\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6458,'[\"M16A4_ACG\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6459,'[\"M4A1\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6460,'[\"M4A1_HWS_GL_camo\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6461,'[\"M4A3_CCO_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6462,'[\"M4A1_Aim\",3]',10,'[6,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6463,'[\"Sa58P_EP1\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6464,'[\"Sa58V_CCO_EP1\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6465,'[\"Sa58V_EP1\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6466,'[\"Sa58V_RCO_EP1\",3]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6467,'[\"AKS_74_kobra\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6468,'[\"AKS_74_U\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6469,'[\"AK_47_M\",3]',10,'[8,\"ItemGoldBar\",1]','[6,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6470,'[\"AK_74\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6471,'[\"FN_FAL\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6472,'[\"M249_EP1_DZ\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,638,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6473,'[\"M240_DZ\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,638,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6474,'[\"Mk_48_DZ\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,638,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6475,'[\"Pecheneg_DZ\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,638,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6483,'[\"SVD_CAMO\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,640,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6484,'[\"M40A3\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,640,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6485,'[\"M14_EP1\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,640,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6486,'[\"huntingrifle\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,640,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6487,'[\"M4SPR\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,640,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6488,'[\"SVD\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,640,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6489,'[\"SVD_des_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,640,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6490,'[\"M24\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,640,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6491,'[\"M24_des_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,640,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6492,'[\"Winchester1866\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,641,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6493,'[\"MR43\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[8,\"ItemSilverBar\",1]',0,641,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6494,'[\"Crossbow_DZ\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,641,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6495,'[\"M1014\",3]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,641,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6496,'[\"Remington870_lamp\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,641,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6497,'[\"LeeEnfield\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,641,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6498,'[\"bizon_silenced\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,642,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6499,'[\"UZI_EP1\",3]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,642,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6500,'[\"Sa61_EP1\",3]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,642,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6501,'[\"MP5A5\",3]',10,'[1,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,642,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6502,'[\"UZI_SD_EP1\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,642,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6503,'[\"MP5SD\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,642,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6505,'[\"30Rnd_556x45_Stanag\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,643,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6506,'[\"20Rnd_762x51_FNFAL\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,643,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6507,'[\"30Rnd_545x39_AK\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,643,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6508,'[\"30Rnd_762x39_AK47\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,643,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6509,'[\"100Rnd_762x51_M240\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,644,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6510,'[\"200Rnd_556x45_M249\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,644,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6511,'[\"100Rnd_762x54_PK\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,644,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6520,'[\"15Rnd_9x19_M9\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,646,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6521,'[\"15Rnd_9x19_M9SD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,646,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6522,'[\"17Rnd_9x19_glock17\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,646,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6523,'[\"6Rnd_45ACP\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,646,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6524,'[\"7Rnd_45ACP_1911\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,646,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6525,'[\"8Rnd_9x18_Makarov\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,646,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6526,'[\"8Rnd_9x18_MakarovSD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,646,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6527,'[\"20Rnd_762x51_DMR\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,647,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6528,'[\"10Rnd_762x54_SVD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,647,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6530,'[\"5Rnd_762x51_M24\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,647,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6531,'[\"5x_22_LR_17_HMR\",1]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,647,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6532,'[\"30rnd_9x19_MP5\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,648,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6533,'[\"30Rnd_9x19_MP5SD\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,648,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6534,'[\"30Rnd_9x19_UZI\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,648,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6535,'[\"64Rnd_9x19_SD_Bizon\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,648,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6536,'[\"30Rnd_9x19_UZI_SD\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,648,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6537,'[\"20Rnd_B_765x17_Ball\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,648,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6538,'[\"15Rnd_W1866_Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,649,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6539,'[\"2Rnd_shotgun_74Pellets\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,649,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6540,'[\"2Rnd_shotgun_74Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,649,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6541,'[\"8Rnd_B_Beneli_74Slug\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,649,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6542,'[\"8Rnd_B_Beneli_Pellets\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,649,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6543,'[\"WoodenArrow\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,649,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6544,'[\"Quiver\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,649,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6545,'[\"10x_303\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,649,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6546,'[\"MMT_Civ\",2]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,650,'trade_any_bicycle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6547,'[\"Old_bike_TK_INS_EP1\",2]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,650,'trade_any_bicycle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6548,'[\"TT650_Civ\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,650,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6549,'[\"TT650_Ins\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,650,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6550,'[\"TT650_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,650,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6551,'[\"ATV_CZ_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,650,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6552,'[\"ATV_US_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,650,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6553,'[\"M1030_US_DES_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,650,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6554,'[\"Old_moto_TK_Civ_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,650,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6555,'[\"Ikarus\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,651,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6556,'[\"Ikarus_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,651,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6557,'[\"S1203_TK_CIV_EP1\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,651,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6558,'[\"S1203_ambulance_EP1\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,651,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6588,'[\"VWGolf\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,652,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6589,'[\"Ural_CDF\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6590,'[\"Ural_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6591,'[\"Ural_UN_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6592,'[\"V3S_Open_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6593,'[\"V3S_Open_TK_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6594,'[\"Kamaz\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6595,'[\"MTVR_DES_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6622,'[\"KamazRefuel_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,655,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6623,'[\"MtvrRefuel_DES_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,655,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6624,'[\"UralRefuel_TK_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,655,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6625,'[\"V3S_Refuel_TK_GUE_EP1_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,655,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6638,'[\"HMMWV_M1035_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,658,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6639,'[\"HMMWV_Ambulance\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,658,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6640,'[\"HMMWV_Ambulance_CZ_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,658,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6641,'[\"HMMWV_DES_EP1\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,658,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6642,'[\"GAZ_Vodnik_MedEvac\",2]',2,'[1,\"ItemBriefcase100oz\",1]','[5,\"ItemGoldBar10oz\",1]',0,658,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6643,'[\"HMMWV_DZ\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,658,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6644,'[\"hilux1_civil_3_open_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,659,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6645,'[\"datsun1_civil_3_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,659,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6646,'[\"hilux1_civil_1_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,659,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6647,'[\"datsun1_civil_2_covered\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,659,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6648,'[\"datsun1_civil_1_open\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,659,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6649,'[\"hilux1_civil_2_covered\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,659,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6653,'[\"Skoda\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6654,'[\"SkodaBlue\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6655,'[\"SkodaGreen\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6656,'[\"SkodaRed\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6657,'[\"VolhaLimo_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6658,'[\"Volha_1_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6659,'[\"Volha_2_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6660,'[\"VWGolf\",2]',2,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6661,'[\"car_hatchback\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6662,'[\"car_sedan\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6663,'[\"GLT_M300_LT\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6664,'[\"GLT_M300_ST\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6665,'[\"Lada1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6666,'[\"Lada1_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6667,'[\"Lada2\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6668,'[\"Lada2_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6669,'[\"LadaLM\",2]',2,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,660,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6670,'[\"SUV_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6671,'[\"SUV_Blue\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6672,'[\"SUV_Charcoal\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6673,'[\"SUV_Green\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6674,'[\"SUV_Orange\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6675,'[\"SUV_Pink\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6676,'[\"SUV_Red\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6677,'[\"SUV_Silver\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6678,'[\"SUV_White\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6679,'[\"SUV_Yellow\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6680,'[\"SUV_Camo\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6681,'[\"UAZ_CDF\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6682,'[\"UAZ_INS\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6683,'[\"UAZ_RU\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6684,'[\"UAZ_Unarmed_TK_CIV_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6685,'[\"UAZ_Unarmed_TK_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6686,'[\"UAZ_Unarmed_UN_EP1\",2]',2,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,661,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6687,'[\"ItemSandbag\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,662,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6688,'[\"ItemTankTrap\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,662,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6689,'[\"ItemTentOld\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,662,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6690,'[\"ItemWire\",1]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,662,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6691,'[\"30m_plot_kit\",1]',10,'[6,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar10oz\",1]',0,662,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6695,'[\"ItemCompass\",3]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6696,'[\"Binocular\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6697,'[\"Binocular_Vector\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6698,'[\"ItemEtool\",3]',10,'[9,\"ItemSilverBar10oz\",1]','[6,\"ItemSilverBar10oz\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6699,'[\"ItemFlashlight\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6700,'[\"ItemFlashlightRed\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6701,'[\"ItemGPS\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6702,'[\"ItemHatchet_DZE\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6703,'[\"ItemKnife\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6704,'[\"ItemMap\",3]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6705,'[\"ItemMatchbox_DZE\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6706,'[\"ItemToolbox\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6707,'[\"ItemWatch\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6708,'[\"NVGoggles\",3]',10,'[4,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6709,'[\"ItemJerrycan\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,664,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6710,'[\"ItemJerrycanEmpty\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,664,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6711,'[\"PartEngine\",1]',10,'[5,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,664,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6712,'[\"PartVRotor\",1]',10,'[5,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,664,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6713,'[\"PartWheel\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemSilverBar\",1]',0,664,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6714,'[\"PartGlass\",1]',10,'[1,\"ItemGoldBar\",1]','[1,\"ItemSilverBar\",1]',0,664,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6715,'[\"PartGeneric\",1]',10,'[2,\"ItemGoldBar\",1]','[6,\"ItemSilverBar\",1]',0,664,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6716,'[\"ItemAntibiotic\",1]',10,'[1,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,665,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6717,'[\"ItemBandage\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,665,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6718,'[\"ItemBloodbag\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,665,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6719,'[\"ItemEpinephrine\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,665,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6720,'[\"ItemHeatPack\",1]',10,'[1,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,665,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6721,'[\"ItemMorphine\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,665,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6722,'[\"ItemPainkiller\",1]',10,'[1,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,665,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6723,'[\"HandChemBlue\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,666,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6724,'[\"HandChemGreen\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,666,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6725,'[\"HandChemRed\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,666,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6726,'[\"FlareGreen_M203\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,666,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6727,'[\"FlareWhite_M203\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,666,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6728,'[\"HandRoadFlare\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,666,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6736,'[\"SmokeShell\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,668,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6737,'[\"SmokeShellGreen\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,668,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6738,'[\"SmokeShellRed\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,668,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6739,'[\"HandChemBlue\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,669,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6740,'[\"HandChemGreen\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,669,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6741,'[\"HandChemRed\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,669,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6742,'[\"FlareGreen_M203\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,669,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6743,'[\"FlareWhite_M203\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,669,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6744,'[\"HandRoadFlare\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,669,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6745,'[\"ItemAntibiotic\",1]',10,'[1,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,670,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6746,'[\"ItemBandage\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,670,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6747,'[\"ItemBloodbag\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,670,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6748,'[\"ItemEpinephrine\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,670,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6749,'[\"ItemHeatPack\",1]',10,'[1,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,670,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6750,'[\"ItemMorphine\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,670,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6751,'[\"ItemPainkiller\",1]',10,'[1,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,670,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6752,'[\"SmokeShell\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,671,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6753,'[\"SmokeShellGreen\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,671,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6754,'[\"SmokeShellRed\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,671,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6755,'[\"Smallboat_1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,672,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6756,'[\"Smallboat_2\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,672,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6757,'[\"Zodiac\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,672,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6758,'[\"Fishing_Boat\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,672,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6759,'[\"PBX\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,672,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6760,'[\"RHIB\",2]',2,'[4,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,673,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6761,'[\"M9SD\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,674,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6762,'[\"glock17_EP1\",3]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,674,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6763,'[\"Colt1911\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,674,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6764,'[\"M9\",3]',10,'[1,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,674,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6765,'[\"MakarovSD\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,674,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6766,'[\"revolver_gold_EP1\",3]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,674,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6767,'[\"Makarov\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,674,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6768,'[\"revolver_EP1\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,674,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6777,'[\"bulk_15Rnd_9x19_M9SD\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6778,'[\"bulk_17Rnd_9x19_glock17\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6779,'[\"bulk_30Rnd_556x45_StanagSD\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6780,'[\"bulk_30Rnd_9x19_MP5SD\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6781,'[\"bulk_ItemSandbag\",1]',10,'[2,\"ItemGoldBar10oz\",1]','[2,\"ItemGoldBar10oz\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6790,'[\"ItemJerrycan\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,677,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6791,'[\"ItemJerrycanEmpty\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,677,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6792,'[\"PartEngine\",1]',10,'[5,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,677,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6793,'[\"PartVRotor\",1]',10,'[5,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,677,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6794,'[\"PartWheel\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemSilverBar\",1]',0,677,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6795,'[\"PartGlass\",1]',10,'[1,\"ItemGoldBar\",1]','[1,\"ItemSilverBar\",1]',0,677,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6796,'[\"PartGeneric\",1]',10,'[2,\"ItemGoldBar\",1]','[6,\"ItemSilverBar\",1]',0,677,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6797,'[\"ItemSandbag\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6798,'[\"ItemTankTrap\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6799,'[\"ItemTentOld\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6800,'[\"ItemVault\",1]',10,'[1,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6801,'[\"ItemWire\",1]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6802,'[\"30m_plot_kit\",1]',10,'[6,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar10oz\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6803,'[\"ItemCorrugated\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6804,'[\"ItemPole\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6805,'[\"ItemCompass\",3]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6806,'[\"Binocular\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6807,'[\"Binocular_Vector\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6808,'[\"ItemEtool\",3]',10,'[9,\"ItemSilverBar10oz\",1]','[6,\"ItemSilverBar10oz\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6809,'[\"ItemFlashlight\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6810,'[\"ItemFlashlightRed\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6811,'[\"ItemGPS\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6812,'[\"ItemHatchet_DZE\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6813,'[\"ItemKnife\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6814,'[\"ItemMap\",3]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6815,'[\"ItemMatchbox_DZE\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6816,'[\"ItemToolbox\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6817,'[\"ItemWatch\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6818,'[\"NVGoggles\",3]',10,'[4,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6819,'[\"ItemSandbag\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6820,'[\"ItemTankTrap\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6821,'[\"ItemTentOld\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6822,'[\"ItemVault\",1]',10,'[1,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6823,'[\"ItemWire\",1]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6824,'[\"30m_plot_kit\",1]',10,'[6,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar10oz\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6825,'[\"ItemCorrugated\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6826,'[\"ItemPole\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6827,'[\"ItemCompass\",3]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6828,'[\"Binocular\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6829,'[\"Binocular_Vector\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6830,'[\"ItemEtool\",3]',10,'[9,\"ItemSilverBar10oz\",1]','[6,\"ItemSilverBar10oz\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6831,'[\"ItemFlashlight\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6832,'[\"ItemFlashlightRed\",3]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6833,'[\"ItemGPS\",3]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6834,'[\"ItemHatchet_DZE\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6835,'[\"ItemKnife\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6836,'[\"ItemMap\",3]',10,'[6,\"ItemSilverBar\",1]','[3,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6837,'[\"ItemMatchbox_DZE\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6838,'[\"ItemToolbox\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6839,'[\"ItemWatch\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6840,'[\"NVGoggles\",3]',10,'[4,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6841,'[\"ItemJerrycan\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,682,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6842,'[\"ItemJerrycanEmpty\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,682,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6843,'[\"PartEngine\",1]',10,'[5,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,682,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6844,'[\"PartVRotor\",1]',10,'[5,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,682,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6845,'[\"PartWheel\",1]',10,'[2,\"ItemGoldBar\",1]','[2,\"ItemSilverBar\",1]',0,682,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6846,'[\"PartGlass\",1]',10,'[1,\"ItemGoldBar\",1]','[1,\"ItemSilverBar\",1]',0,682,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6847,'[\"PartGeneric\",1]',10,'[2,\"ItemGoldBar\",1]','[6,\"ItemSilverBar\",1]',0,682,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6848,'[\"Skin_Rocker2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6849,'[\"Skin_SurvivorW2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6850,'[\"Skin_Functionary1_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6851,'[\"Skin_Haris_Press_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6852,'[\"Skin_Priest_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6853,'[\"Skin_SurvivorWpink_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6854,'[\"Skin_SurvivorWurban_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6855,'[\"Skin_SurvivorWcombat_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6856,'[\"Skin_SurvivorWdesert_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6857,'[\"Skin_Survivor2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6858,'[\"Skin_Rocker1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6859,'[\"Skin_Rocker3_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6860,'[\"Skin_RU_Policeman_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6861,'[\"Skin_Pilot_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6862,'[\"Skin_Rocker4_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6863,'[\"ItemSodaCoke\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,684,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6864,'[\"ItemSodaPepsi\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,684,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6865,'[\"ItemSodaMdew\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,684,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6866,'[\"ItemSodaR4z0r\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,684,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6867,'[\"ItemWaterbottleUnfilled\",1]',10,'[3,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,684,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6868,'[\"ItemSodaRbull\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,684,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6869,'[\"ItemSodaOrangeSherbet\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,684,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6870,'[\"DZ_Patrol_Pack_EP1\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,685,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6871,'[\"CZ_VestPouch_EP1\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,685,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6872,'[\"DZ_ALICE_Pack_EP1\",2]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,685,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6873,'[\"DZ_Assault_Pack_EP1\",2]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,685,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6874,'[\"DZ_Backpack_EP1\",2]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,685,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6875,'[\"DZ_British_ACU\",2]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,685,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6876,'[\"DZ_CivilBackpack_EP1\",2]',10,'[6,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,685,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6877,'[\"DZ_Czech_Vest_Puch\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,685,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6878,'[\"DZ_TK_Assault_Pack_EP1\",2]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,685,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6879,'[\"DZ_TerminalPack_EP1\",2]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,685,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6880,'[\"DZ_GunBag_EP1\",2]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,685,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6881,'[\"FoodbaconCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,686,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6882,'[\"FoodbeefCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,686,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6883,'[\"FoodchickenCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,686,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6884,'[\"FoodmuttonCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,686,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6885,'[\"FoodrabbitCooked\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,686,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6886,'[\"ItemTroutCooked\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,686,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6887,'[\"ItemSeaBassCooked\",1]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,686,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6888,'[\"ItemTunaCooked\",1]',10,'[4,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,686,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6889,'[\"FoodCanBakedBeans\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,687,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6890,'[\"FoodCanFrankBeans\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,687,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6891,'[\"FoodCanPasta\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,687,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6892,'[\"FoodCanSardines\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,687,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6893,'[\"FoodMRE\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,687,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6894,'[\"FoodPistachio\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,687,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6895,'[\"FoodNutmix\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,687,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6896,'[\"DZ_Patrol_Pack_EP1\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,688,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6897,'[\"CZ_VestPouch_EP1\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,688,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6898,'[\"DZ_ALICE_Pack_EP1\",2]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,688,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6899,'[\"DZ_Assault_Pack_EP1\",2]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,688,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6900,'[\"DZ_Backpack_EP1\",2]',10,'[8,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,688,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6901,'[\"DZ_British_ACU\",2]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,688,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6902,'[\"DZ_CivilBackpack_EP1\",2]',10,'[6,\"ItemGoldBar\",1]','[4,\"ItemGoldBar\",1]',0,688,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6903,'[\"DZ_Czech_Vest_Puch\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,688,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6904,'[\"DZ_TK_Assault_Pack_EP1\",2]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,688,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6905,'[\"DZ_TerminalPack_EP1\",2]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,688,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6906,'[\"DZ_GunBag_EP1\",2]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,688,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6907,'[\"Skin_Rocker2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6908,'[\"Skin_SurvivorW2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6909,'[\"Skin_Functionary1_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6910,'[\"Skin_Haris_Press_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6911,'[\"Skin_Priest_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6912,'[\"Skin_SurvivorWpink_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6913,'[\"Skin_SurvivorWurban_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6914,'[\"Skin_SurvivorWcombat_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6915,'[\"Skin_SurvivorWdesert_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6916,'[\"Skin_Survivor2_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6917,'[\"Skin_Rocker1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6918,'[\"Skin_Rocker3_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6919,'[\"Skin_RU_Policeman_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6920,'[\"Skin_Pilot_EP1_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6921,'[\"Skin_Rocker4_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6922,'[\"FoodbaconCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,690,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6923,'[\"FoodbeefCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,690,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6924,'[\"FoodchickenCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,690,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6925,'[\"FoodmuttonCooked\",1]',10,'[4,\"ItemSilverBar\",1]','[2,\"ItemSilverBar\",1]',0,690,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6926,'[\"FoodrabbitCooked\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,690,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6927,'[\"ItemTroutCooked\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemSilverBar10oz\",1]',0,690,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6928,'[\"ItemSeaBassCooked\",1]',10,'[3,\"ItemGoldBar\",1]','[2,\"ItemSilverBar10oz\",1]',0,690,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6929,'[\"ItemTunaCooked\",1]',10,'[4,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,690,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6930,'[\"ItemSodaCoke\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,691,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6931,'[\"ItemSodaPepsi\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,691,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6932,'[\"ItemSodaMdew\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,691,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6933,'[\"ItemSodaR4z0r\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,691,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6934,'[\"ItemWaterbottleUnfilled\",1]',10,'[3,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,691,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6935,'[\"ItemSodaRbull\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,691,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6936,'[\"ItemSodaOrangeSherbet\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,691,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6937,'[\"FoodCanBakedBeans\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,692,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6938,'[\"FoodCanFrankBeans\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,692,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6939,'[\"FoodCanPasta\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,692,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6940,'[\"FoodCanSardines\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,692,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6941,'[\"FoodMRE\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,692,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6942,'[\"FoodPistachio\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,692,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6943,'[\"FoodNutmix\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,692,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6944,'[\"ItemVault\",1]',10,'[1,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6945,'[\"ItemCrowbar\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6946,'[\"ItemMachete\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6947,'[\"ItemFishingPole\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,510,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6948,'[\"ItemTentDomed\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6949,'[\"ItemTentDomed2\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6950,'[\"ItemLightBulb\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6951,'[\"ItemGenerator\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,508,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6960,'[\"ItemTentDomed\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6961,'[\"ItemTentDomed2\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6962,'[\"ItemLightBulb\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6963,'[\"ItemGenerator\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,530,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6971,'[\"ItemVault\",1]',10,'[1,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,662,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6972,'[\"ItemTentDomed\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,662,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6973,'[\"ItemTentDomed2\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,662,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6974,'[\"ItemLightBulb\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,662,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6975,'[\"ItemGenerator\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,662,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6984,'[\"ItemTentDomed\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6985,'[\"ItemTentDomed2\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6986,'[\"ItemLightBulb\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6987,'[\"ItemGenerator\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,678,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6996,'[\"ItemTentDomed\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6997,'[\"ItemTentDomed2\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6998,'[\"ItemLightBulb\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (6999,'[\"ItemGenerator\",1]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,680,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7014,'[\"ItemCrowbar\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7015,'[\"ItemMachete\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7016,'[\"ItemFishingPole\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,532,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7031,'[\"ItemCrowbar\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7032,'[\"ItemMachete\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7033,'[\"ItemFishingPole\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,663,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7048,'[\"ItemCrowbar\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7049,'[\"ItemMachete\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7050,'[\"ItemFishingPole\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,679,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7065,'[\"ItemCrowbar\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7066,'[\"ItemMachete\",3]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7067,'[\"ItemFishingPole\",3]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,681,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7068,'[\"JetSkiYanahui_Case_Red\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,557,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7069,'[\"JetSkiYanahui_Case_Yellow\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,557,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7070,'[\"JetSkiYanahui_Case_Green\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,557,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7071,'[\"JetSkiYanahui_Case_Blue\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,557,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7077,'[\"JetSkiYanahui_Case_Red\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,672,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7078,'[\"JetSkiYanahui_Case_Yellow\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,672,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7079,'[\"JetSkiYanahui_Case_Green\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,672,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7080,'[\"JetSkiYanahui_Case_Blue\",2]',2,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,672,'trade_any_boat');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7081,'[\"PartFueltank\",1]',10,'[2,\"ItemGoldBar\",1]','[5,\"ItemSilverBar\",1]',0,509,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7089,'[\"PartFueltank\",1]',10,'[2,\"ItemGoldBar\",1]','[5,\"ItemSilverBar\",1]',0,664,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7097,'[\"PartFueltank\",1]',10,'[2,\"ItemGoldBar\",1]','[5,\"ItemSilverBar\",1]',0,677,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7105,'[\"PartFueltank\",1]',10,'[2,\"ItemGoldBar\",1]','[5,\"ItemSilverBar\",1]',0,682,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7106,'[\"tractor\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,587,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7116,'[\"tractor\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,536,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7126,'[\"tractor\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,650,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7136,'[\"tractor\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,608,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7144,'[\"PartFueltank\",1]',10,'[2,\"ItemGoldBar\",1]','[5,\"ItemSilverBar\",1]',0,531,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7145,'[\"5Rnd_86x70_L115A1\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,478,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7148,'[\"LandRover_CZ_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,491,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7149,'[\"LandRover_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,491,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7150,'[\"30Rnd_762x39_SA58\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,609,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7155,'[\"30Rnd_762x39_SA58\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,621,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7160,'[\"30Rnd_762x39_SA58\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,643,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7165,'[\"30Rnd_762x39_SA58\",1]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,480,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7172,'[\"LandRover_CZ_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,598,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7173,'[\"LandRover_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,598,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7180,'[\"LandRover_CZ_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,599,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7181,'[\"LandRover_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,599,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7188,'[\"LandRover_CZ_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,658,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7189,'[\"LandRover_TK_CIV_EP1\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,658,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7190,'[\"1Rnd_HE_M203\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,529,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7191,'[\"ItemFuelBarrel\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,509,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7201,'[\"ItemFuelBarrel\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,531,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7211,'[\"ItemFuelBarrel\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,664,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7221,'[\"ItemFuelBarrel\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,677,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7231,'[\"ItemFuelBarrel\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,682,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7233,'[\"bulk_ItemTankTrap\",1]',10,'[1,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7240,'[\"bulk_ItemTankTrap\",1]',10,'[1,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7241,'[\"bulk_ItemWire\",1]',10,'[3,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7242,'[\"bulk_PartGeneric\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[6,\"ItemSilverBar10oz\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7250,'[\"DZ_Czech_Vest_Puch\",2]',10,'[2,\"ItemSilverBar\",1]','[1,\"ItemSilverBar\",1]',0,538,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7251,'[\"DZ_TK_Assault_Pack_EP1\",2]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,538,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7252,'[\"DZ_TerminalPack_EP1\",2]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,538,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7253,'[\"DZ_GunBag_EP1\",2]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,538,'trade_backpacks');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7254,'[\"Skin_SurvivorW3_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,628,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7270,'[\"Skin_SurvivorW3_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,497,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7302,'[\"Skin_SurvivorW3_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,631,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7318,'[\"Skin_SurvivorW3_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,683,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7334,'[\"Skin_SurvivorW3_DZ\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,689,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7342,'[\"bulk_PartGeneric\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[6,\"ItemSilverBar10oz\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7348,'[\"bulk_ItemTankTrap\",1]',10,'[1,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7349,'[\"bulk_ItemWire\",1]',10,'[3,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7350,'[\"bulk_PartGeneric\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[6,\"ItemSilverBar10oz\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7355,'[\"100Rnd_762x51_M240\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,478,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7356,'[\"20Rnd_762x51_FNFAL\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,478,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7357,'[\"20Rnd_762x51_SB_SCAR\",1]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,478,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7358,'[\"5Rnd_86x70_L115A1\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,577,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7359,'[\"100Rnd_762x51_M240\",1]',10,'[2,\"ItemGoldBar\",1]','[1,\"ItemGoldBar\",1]',0,577,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7360,'[\"20Rnd_762x51_FNFAL\",1]',10,'[4,\"ItemSilverBar10oz\",1]','[2,\"ItemSilverBar10oz\",1]',0,577,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7361,'[\"20Rnd_762x51_SB_SCAR\",1]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,577,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7362,'[\"BAF_L85A2_RIS_SUSAT\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7363,'[\"BAF_L85A2_RIS_Holo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,485,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7364,'[\"BAF_L85A2_RIS_SUSAT\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7365,'[\"BAF_L85A2_RIS_Holo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,602,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7366,'[\"BAF_L85A2_RIS_SUSAT\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7367,'[\"BAF_L85A2_RIS_Holo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,615,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7368,'[\"BAF_L85A2_RIS_SUSAT\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7369,'[\"BAF_L85A2_RIS_Holo\",3]',10,'[6,\"ItemGoldBar\",1]','[3,\"ItemGoldBar\",1]',0,637,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7370,'[\"V3S_Civ\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7371,'[\"V3S_RA_TK_GUE_EP1_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7373,'[\"V3S_TK_EP1_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7374,'[\"UralCivil_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7375,'[\"UralCivil2_DZE\",2]',2,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7376,'[\"KamazOpen_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7384,'[\"V3S_Civ\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7385,'[\"V3S_RA_TK_GUE_EP1_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7386,'[\"V3S_TK_EP1_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7387,'[\"UralCivil_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7388,'[\"UralCivil2_DZE\",2]',2,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7389,'[\"KamazOpen_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7397,'[\"V3S_Civ\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7398,'[\"V3S_RA_TK_GUE_EP1_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7399,'[\"V3S_TK_EP1_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7400,'[\"UralCivil_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7401,'[\"UralCivil2_DZE\",2]',2,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7402,'[\"KamazOpen_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7410,'[\"V3S_Civ\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7411,'[\"V3S_RA_TK_GUE_EP1_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7412,'[\"V3S_TK_EP1_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7413,'[\"UralCivil_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7414,'[\"UralCivil2_DZE\",2]',2,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7415,'[\"KamazOpen_DZE\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7416,'[\"MTVR\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,653,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7417,'[\"MtvrRefuel_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,655,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7431,'[\"MTVR\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,586,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7445,'[\"MTVR\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,570,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7473,'[\"MTVR\",2]',2,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,564,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7474,'[\"MtvrRefuel_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,589,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7479,'[\"MtvrRefuel_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,595,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7489,'[\"MtvrRefuel_DZ\",2]',2,'[7,\"ItemGoldBar10oz\",1]','[3,\"ItemGoldBar10oz\",1]',0,492,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7490,'[\"CinderBlocks\",1]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7491,'[\"PartPlywoodPack\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7492,'[\"MortarBucket\",1]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7493,'[\"PartPlankPack\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7494,'[\"CinderBlocks\",1]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7495,'[\"PartPlywoodPack\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7496,'[\"MortarBucket\",1]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7497,'[\"PartPlankPack\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7498,'[\"CinderBlocks\",1]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7499,'[\"PartPlywoodPack\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7500,'[\"MortarBucket\",1]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7501,'[\"PartPlankPack\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7502,'[\"100Rnd_556x45_BetaCMag\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7503,'[\"75Rnd_545x39_RPK\",1]',10,'[3,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7504,'[\"64Rnd_9x19_Bizon\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7505,'[\"5Rnd_127x108_KSVK\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,527,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7506,'[\"100Rnd_556x45_BetaCMag\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,453,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7507,'[\"75Rnd_545x39_RPK\",1]',10,'[3,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,453,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7508,'[\"64Rnd_9x19_Bizon\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,453,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7509,'[\"5Rnd_127x108_KSVK\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,453,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7510,'[\"100Rnd_556x45_BetaCMag\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,456,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7511,'[\"75Rnd_545x39_RPK\",1]',10,'[3,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,456,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7512,'[\"64Rnd_9x19_Bizon\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,456,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7513,'[\"5Rnd_127x108_KSVK\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,456,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7514,'[\"100Rnd_556x45_BetaCMag\",1]',10,'[6,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,460,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7515,'[\"75Rnd_545x39_RPK\",1]',10,'[3,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,460,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7516,'[\"64Rnd_9x19_Bizon\",1]',10,'[1,\"ItemSilverBar10oz\",1]','[5,\"ItemSilverBar\",1]',0,460,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7517,'[\"5Rnd_127x108_KSVK\",1]',10,'[2,\"ItemSilverBar10oz\",1]','[1,\"ItemSilverBar10oz\",1]',0,460,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7518,'[\"M8_SAW\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7519,'[\"MG36\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7520,'[\"RPK_74\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7521,'[\"M60A4_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7522,'[\"m240_scoped_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7523,'[\"M249_m145_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7524,'[\"MG36_camo\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7525,'[\"bizon\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7526,'[\"M4A1_HWS_GL_SD_Camo\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7527,'[\"KSVK_DZE\",3]',10,'[3,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,526,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7528,'[\"M8_SAW\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,452,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7529,'[\"MG36\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,452,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7530,'[\"RPK_74\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,452,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7531,'[\"M60A4_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,452,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7532,'[\"m240_scoped_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,452,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7533,'[\"M249_m145_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,452,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7534,'[\"MG36_camo\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,452,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7535,'[\"bizon\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,452,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7536,'[\"M4A1_HWS_GL_SD_Camo\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,452,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7537,'[\"KSVK_DZE\",3]',10,'[3,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,452,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7538,'[\"M8_SAW\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,455,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7539,'[\"MG36\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,455,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7540,'[\"RPK_74\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,455,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7541,'[\"M60A4_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,455,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7542,'[\"m240_scoped_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,455,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7543,'[\"M249_m145_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,455,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7544,'[\"MG36_camo\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,455,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7545,'[\"bizon\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,455,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7546,'[\"M4A1_HWS_GL_SD_Camo\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,455,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7547,'[\"KSVK_DZE\",3]',10,'[3,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,455,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7548,'[\"M8_SAW\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,459,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7549,'[\"MG36\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,459,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7550,'[\"RPK_74\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,459,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7551,'[\"M60A4_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,459,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7552,'[\"m240_scoped_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,459,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7553,'[\"M249_m145_EP1_DZE\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,459,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7554,'[\"MG36_camo\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[6,\"ItemGoldBar\",1]',0,459,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7555,'[\"bizon\",3]',10,'[1,\"ItemGoldBar10oz\",1]','[5,\"ItemGoldBar\",1]',0,459,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7556,'[\"M4A1_HWS_GL_SD_Camo\",3]',10,'[2,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,459,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7557,'[\"KSVK_DZE\",3]',10,'[3,\"ItemGoldBar10oz\",1]','[1,\"ItemGoldBar10oz\",1]',0,459,'trade_weapons');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7558,'[\"HandGrenade_east\",1]',10,'[4,\"ItemGoldBar\",1]','[2,\"ItemGoldBar\",1]',0,529,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7565,'[\"bulk_ItemWire\",1]',10,'[3,\"ItemSilverBar10oz\",1]','[3,\"ItemSilverBar10oz\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7571,'[\"BAF_Merlin_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,519,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7573,'[\"MH60S_DZE\",2]',2,'[4,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,512,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7574,'[\"MH60S_DZE\",2]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,493,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7575,'[\"ItemFuelBarrelEmpty\",1]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,675,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7576,'[\"ItemFuelBarrelEmpty\",1]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,636,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7577,'[\"ItemFuelBarrelEmpty\",1]',10,'[1,\"ItemGoldBar\",1]','[5,\"ItemSilverBar10oz\",1]',0,555,'trade_items');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7578,'[\"CH53_DZE\",1]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,493,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7579,'[\"CH53_DZE\",1]',2,'[3,\"ItemBriefcase100oz\",1]','[2,\"ItemBriefcase100oz\",1]',0,512,'trade_any_vehicle');
insert  into `traders_data`(`id`,`item`,`qty`,`buy`,`sell`,`order`,`tid`,`afile`) values (7580,'[\"BAF_Merlin_DZE\",1]',2,'[2,\"ItemBriefcase100oz\",1]','[1,\"ItemBriefcase100oz\",1]',0,519,'trade_any_vehicle');

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `removeDamagedVehicles` */

/*!50106 DROP EVENT IF EXISTS `removeDamagedVehicles`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `removeDamagedVehicles` ON SCHEDULE EVERY 1 DAY STARTS '2014-10-14 18:42:34' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Removes damaged vehicles' DO DELETE FROM `Object_DATA` WHERE Damage = 1 */$$
DELIMITER ;

/* Event structure for event `removeObjectEmpty` */

/*!50106 DROP EVENT IF EXISTS `removeObjectEmpty`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `removeObjectEmpty` ON SCHEDULE EVERY 1 DAY STARTS '2014-10-14 18:42:34' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Removes abandoned storage objects and vehicles' DO DELETE FROM `Object_DATA` WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 14 DAY) AND `Datestamp` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 24 DAY) AND ( (`Inventory` IS NULL) OR (`Inventory` = '[]') OR (`Inventory` = '[[[],[]],[[],[]],[[],[]]]') ) */$$
DELIMITER ;

/* Event structure for event `removeObjectOld` */

/*!50106 DROP EVENT IF EXISTS `removeObjectOld`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `removeObjectOld` ON SCHEDULE EVERY 1 DAY STARTS '2014-10-14 18:42:34' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Removes old objects and vehicles' DO DELETE FROM `Object_DATA` WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 24 DAY) AND `Datestamp` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 42 DAY) */$$
DELIMITER ;

/* Event structure for event `setDamageOnAge` */

/*!50106 DROP EVENT IF EXISTS `setDamageOnAge`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `setDamageOnAge` ON SCHEDULE EVERY 1 DAY STARTS '2014-10-14 18:42:34' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'This sets damage on a wall so that it can be maintained' DO UPDATE `Object_DATA` SET `Damage`=0.1 WHERE `ObjectUID` <> 0 AND `CharacterID` <> 0 AND `Datestamp` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 3 DAY) AND ( (`Inventory` IS NULL) OR (`Inventory` = '[]') ) */$$
DELIMITER ;

/* Event structure for event `UnlockNonKeyVehicles` */

/*!50106 DROP EVENT IF EXISTS `UnlockNonKeyVehicles`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `UnlockNonKeyVehicles` ON SCHEDULE EVERY 1 DAY STARTS '2014-10-14 18:42:34' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE
			`Object_DATA`
		SET
			`Object_DATA`.`CharacterID` = 0
		WHERE
			`Object_DATA`.`CharacterID` <> 0
			AND `Object_DATA`.`CharacterID` <= 12500
			AND `Object_DATA`.`Classname` NOT LIKE 'Tent%'
			AND `Object_DATA`.`Classname` NOT LIKE '%Locked'
			AND `Object_DATA`.`Classname` NOT LIKE 'Land%'
			AND `Object_DATA`.`Classname` NOT LIKE 'Cinder%'
			AND `Object_DATA`.`Classname` NOT LIKE 'Wood%'
			AND `Object_DATA`.`Classname` NOT LIKE 'Metal%'
			AND `Object_DATA`.`Classname` NOT LIKE '%Storage%'
			AND `Object_DATA`.`Classname` NOT IN ('OutHouse_DZ', 'GunRack_DZ', 'WorkBench_DZ', 'Sandbag1_DZ', 'FireBarrel_DZ', 'DesertCamoNet_DZ', 'StickFence_DZ', 'LightPole_DZ', 'DeerStand_DZ', 'ForestLargeCamoNet_DZ', 'Plastic_Pole_EP1_DZ', 'Hedgehog_DZ', 'FuelPump_DZ', 'Fort_RazorWire', 'SandNest_DZ', 'ForestCamoNet_DZ', 'Fence_corrugated_DZ', 'CanvasHut_DZ', 'Generator_DZ')
			AND FindVehicleKeysCount(Object_DATA.CharacterID) = 0 */$$
DELIMITER ;

/* Event structure for event `updateStockDaily` */

/*!50106 DROP EVENT IF EXISTS `updateStockDaily`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `updateStockDaily` ON SCHEDULE EVERY 1 DAY STARTS '2014-10-14 18:42:34' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Updates out of stock vendors' DO UPDATE `Traders_DATA` SET qty=10 WHERE qty=0 AND afile<>'trade_any_vehicle' AND afile<>'trade_any_boat' */$$
DELIMITER ;

/* Function  structure for function  `DeleteNonKeyVehicles` */

/*!50003 DROP FUNCTION IF EXISTS `DeleteNonKeyVehicles` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `DeleteNonKeyVehicles`() RETURNS int(11)
BEGIN
	DELETE FROM
		`Object_DATA`
	WHERE
		`Object_DATA`.`CharacterID` <> 0
		AND `Object_DATA`.`CharacterID` <= 12500
		AND `Object_DATA`.`Classname` NOT LIKE 'Tent%'
		AND `Object_DATA`.`Classname` NOT LIKE '%Locked'
		AND `Object_DATA`.`Classname` NOT LIKE 'Land%'
		AND `Object_DATA`.`Classname` NOT LIKE 'Cinder%'
		AND `Object_DATA`.`Classname` NOT LIKE 'Wood%'
		AND `Object_DATA`.`Classname` NOT LIKE 'Metal%'
		AND `Object_DATA`.`Classname` NOT LIKE '%Storage%'
		AND `Object_DATA`.`Classname` NOT IN ('OutHouse_DZ', 'GunRack_DZ', 'WorkBench_DZ', 'Sandbag1_DZ', 'FireBarrel_DZ', 'DesertCamoNet_DZ', 'StickFence_DZ', 'LightPole_DZ', 'DeerStand_DZ', 'ForestLargeCamoNet_DZ', 'Plastic_Pole_EP1_DZ', 'Hedgehog_DZ', 'FuelPump_DZ', 'Fort_RazorWire', 'SandNest_DZ', 'ForestCamoNet_DZ', 'Fence_corrugated_DZ', 'CanvasHut_DZ', 'Generator_DZ')
		AND FindVehicleKeysCount(Object_DATA.CharacterID) = 0;

	RETURN ROW_COUNT();
END */$$
DELIMITER ;

/* Function  structure for function  `FindVehicleKeysCount` */

/*!50003 DROP FUNCTION IF EXISTS `FindVehicleKeysCount` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `FindVehicleKeysCount`(`keyId` INT) RETURNS int(11)
BEGIN
    DECLARE totalKeys INT DEFAULT 0;
    DECLARE keyName VARCHAR(32) DEFAULT "";
    DECLARE keysInChar INT DEFAULT 0;
    DECLARE keysInObj INT DEFAULT 0;

    SET keyName = (CASE
        WHEN `keyId` < 2501 THEN CONCAT('ItemKeyGreen', `keyId`)
        WHEN `keyId` < 5001 THEN CONCAT('ItemKeyRed', `keyId` - 2500)
        WHEN `keyId` < 7501 THEN CONCAT('ItemKeyBlue', `keyId` - 5000)
        WHEN `keyId` < 10001 THEN CONCAT('ItemKeyYellow', `keyId` - 7500)
        WHEN `keyId` < 12501 THEN CONCAT('ItemKeyBlack', `keyId` - 10000)
        ELSE 'ERROR'
    END);

    SET keysInChar = (SELECT COUNT(*) FROM `Character_DATA` WHERE `Alive` = '1' AND (`Inventory` LIKE CONCAT('%', keyName, '%') OR `Backpack` LIKE CONCAT('%', keyName, '%')));
    SET keysInObj = (SELECT COUNT(*) FROM `Object_DATA` WHERE `Inventory` LIKE CONCAT('%', keyName, '%'));

    RETURN (keysInChar + keysInObj);
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
