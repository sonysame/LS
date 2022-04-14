-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: borderguard
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appuntamenti`
--

DROP TABLE IF EXISTS `appuntamenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appuntamenti` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `testo` text NOT NULL,
  `str_data` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuntamenti`
--

LOCK TABLES `appuntamenti` WRITE;
/*!40000 ALTER TABLE `appuntamenti` DISABLE KEYS */;
/*!40000 ALTER TABLE `appuntamenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_eu` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `base_path` varchar(255) DEFAULT NULL,
  `script_path` varchar(255) DEFAULT NULL,
  `css_path` varchar(255) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'BAF BorderGuard','/img/nato.png','/img/youreurope-logo.png','Berylia Border Guard','public','/assets/js','/assets/css','admin@borderguard.baf.berylia.org','via le mani dal naso, 42');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'Andorra'),(5,'Angola'),(6,'Antigua and Barbuda'),(7,'Argentina'),(8,'Armenia'),(9,'Australia'),(10,'Austria'),(11,'Azerbaijan'),(12,'Bahamas'),(13,'Bahrain'),(14,'Bangladesh'),(15,'Barbados'),(16,'Belarus'),(17,'Belgium'),(18,'Belize'),(19,'Benin'),(20,'Bhutan'),(21,'Bolivia'),(22,'Bosnia and Herzegovina'),(23,'Botswana'),(24,'Brazil'),(25,'Brunei '),(26,'Bulgaria'),(27,'Equatorial Guinea'),(28,'Eritrea'),(29,'Estonia'),(30,'Ethiopia'),(31,'Fiji'),(32,'Finland'),(33,'France'),(34,'Gabon'),(35,'Gambia'),(36,'Georgia'),(37,'Germany'),(38,'Ghana'),(39,'Greece'),(40,'Grenada'),(41,'Guatemala'),(42,'Guinea'),(43,'Guinea-Bissau'),(44,'Guyana'),(45,'Haiti'),(46,'Holy See'),(47,'Honduras'),(48,'Hungary'),(49,'Iceland'),(50,'India'),(51,'Indonesia'),(52,'Iran'),(53,'Iraq'),(54,'Ireland'),(55,'Israel'),(56,'Italy'),(57,'Jamaica'),(58,'Japan'),(59,'Jordan'),(60,'Kazakhstan'),(61,'Kenya'),(62,'Kiribati'),(63,'Kuwait'),(64,'Kyrgyzstan'),(65,'Laos'),(66,'Latvia'),(67,'Lebanon'),(68,'Lesotho'),(69,'Liberia'),(70,'Libya'),(71,'Liechtenstein'),(72,'Lithuania'),(73,'Luxembourg'),(74,'Madagascar'),(75,'Malawi'),(76,'Malaysia'),(77,'Maldives'),(78,'Mali'),(79,'Malta'),(80,'Marshall Islands'),(81,'Mauritania'),(82,'Mauritius'),(83,'Mexico'),(84,'Micronesia'),(85,'Moldova'),(86,'Monaco'),(87,'Mongolia'),(88,'Montenegro'),(89,'Morocco'),(90,'Mozambique'),(91,'Myanmar (formerly Burma)'),(92,'Namibia'),(93,'Nauru'),(94,'Nepal'),(95,'Netherlands'),(96,'New Zealand'),(97,'Nicaragua'),(98,'Niger'),(99,'Nigeria'),(100,'North Korea'),(101,'North Macedonia'),(102,'Norway'),(103,'Oman'),(104,'Pakistan'),(105,'Palau'),(106,'Palestine State'),(107,'Panama'),(108,'Papua New Guinea'),(109,'Paraguay'),(110,'Peru'),(111,'Philippines'),(112,'Poland'),(113,'Portugal'),(114,'Qatar'),(115,'Romania'),(116,'Russia'),(117,'Rwanda'),(118,'Saint Kitts and Nevis'),(119,'Saint Lucia'),(120,'Saint Vincent and the Grenadines'),(121,'Samoa'),(122,'San Marino'),(123,'Sao Tome and Principe'),(124,'Saudi Arabia'),(125,'Senegal'),(126,'Serbia'),(127,'Seychelles'),(128,'Sierra Leone'),(129,'Singapore'),(130,'Slovakia'),(131,'Slovenia'),(132,'Solomon Islands'),(133,'Somalia'),(134,'South Africa'),(135,'South Korea'),(136,'South Sudan'),(137,'Spain'),(138,'Sri Lanka'),(139,'Sudan'),(140,'Suriname'),(141,'Sweden'),(142,'Switzerland'),(143,'Syria'),(144,'Tajikistan'),(145,'Tanzania'),(146,'Thailand'),(147,'Timor-Leste'),(148,'Togo'),(149,'Tonga'),(150,'Trinidad and Tobago'),(151,'Tunisia'),(152,'Turkey'),(153,'Turkmenistan'),(154,'Tuvalu'),(155,'Uganda'),(156,'Ukraine'),(157,'United Arab Emirates'),(158,'United Kingdom'),(159,'United States of America'),(160,'Uruguay'),(161,'Uzbekistan'),(162,'Vanuatu'),(163,'Venezuela'),(164,'Vietnam'),(165,'Yemen'),(166,'Zambia'),(167,'Zimbabwe'),(168,'Burkina Faso'),(169,'Burundi'),(170,'Côte d\'Ivoire'),(171,'Cabo Verde'),(172,'Cambodia'),(173,'Cameroon'),(174,'Canada'),(175,'Central African Republic'),(176,'Chad'),(177,'Chile'),(178,'China'),(179,'Colombia'),(180,'Comoros'),(181,'Congo (Congo-Brazzaville)'),(182,'Costa Rica'),(183,'Croatia'),(184,'Cuba'),(185,'Cyprus'),(186,'Czechia (Czech Republic)'),(187,'Democratic Republic of the Congo'),(188,'Denmark'),(189,'Djibouti'),(190,'Dominica'),(191,'Dominican Republic'),(192,'Ecuador'),(193,'Egypt'),(194,'El Salvador'),(195,'Equatorial Guinea'),(196,'Eritrea'),(197,'Estonia'),(198,'Ethiopia'),(199,'Fiji'),(200,'Finland'),(201,'France'),(202,'Gabon'),(203,'Gambia'),(204,'Georgia'),(205,'Germany'),(206,'Ghana'),(207,'Greece'),(208,'Grenada'),(209,'Guatemala'),(210,'Guinea'),(211,'Guinea-Bissau'),(212,'Guyana'),(213,'Haiti'),(214,'Holy See'),(215,'Honduras'),(216,'Hungary'),(217,'Iceland'),(218,'India'),(219,'Indonesia'),(220,'Iran'),(221,'Iraq'),(222,'Ireland'),(223,'Israel'),(224,'Italy'),(225,'Jamaica'),(226,'Japan'),(227,'Jordan'),(228,'Kazakhstan'),(229,'Kenya'),(230,'Kiribati'),(231,'Kuwait'),(232,'Kyrgyzstan'),(233,'Laos'),(234,'Latvia'),(235,'Lebanon'),(236,'Lesotho'),(237,'Liberia'),(238,'Libya'),(239,'Liechtenstein'),(240,'Lithuania'),(241,'Luxembourg'),(242,'Madagascar'),(243,'Malawi'),(244,'Malaysia'),(245,'Maldives'),(246,'Mali'),(247,'Malta'),(248,'Marshall Islands'),(249,'Mauritania'),(250,'Mauritius'),(251,'Mexico'),(252,'Micronesia'),(253,'Moldova'),(254,'Monaco'),(255,'Mongolia'),(256,'Montenegro'),(257,'Morocco'),(258,'Mozambique'),(259,'Myanmar (formerly Burma)'),(260,'Namibia'),(261,'Nauru'),(262,'Nepal'),(263,'Netherlands'),(264,'New Zealand'),(265,'Nicaragua'),(266,'Niger'),(267,'Nigeria'),(268,'North Korea'),(269,'North Macedonia'),(270,'Norway'),(271,'Oman'),(272,'Pakistan'),(273,'Palau'),(274,'Palestine State'),(275,'Panama'),(276,'Papua New Guinea'),(277,'Paraguay'),(278,'Peru'),(279,'Philippines'),(280,'Poland'),(281,'Portugal'),(282,'Qatar'),(283,'Romania'),(284,'Russia'),(285,'Rwanda'),(286,'Saint Kitts and Nevis'),(287,'Saint Lucia'),(288,'Saint Vincent and the Grenadines'),(289,'Samoa'),(290,'San Marino'),(291,'Sao Tome and Principe'),(292,'Saudi Arabia'),(293,'Senegal'),(294,'Serbia'),(295,'Seychelles'),(296,'Sierra Leone'),(297,'Singapore'),(298,'Slovakia'),(299,'Slovenia'),(300,'Solomon Islands'),(301,'Somalia'),(302,'South Africa'),(303,'South Korea'),(304,'South Sudan'),(305,'Spain'),(306,'Sri Lanka'),(307,'Sudan'),(308,'Suriname'),(309,'Sweden'),(310,'Switzerland'),(311,'Syria'),(312,'Tajikistan'),(313,'Tanzania'),(314,'Thailand'),(315,'Timor-Leste'),(316,'Togo'),(317,'Tonga'),(318,'Trinidad and Tobago'),(319,'Tunisia'),(320,'Turkey'),(321,'Turkmenistan'),(322,'Tuvalu'),(323,'Uganda'),(324,'Ukraine'),(325,'United Arab Emirates'),(326,'United Kingdom'),(327,'United States of America'),(328,'Uruguay'),(329,'Uzbekistan'),(330,'Vanuatu'),(331,'Venezuela'),(332,'Vietnam'),(333,'Yemen'),(334,'Zambia'),(335,'Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `admin_mode` tinyint DEFAULT (0),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin@borderguard.baf.berylia.org','c9ed5fc695904a2953afcbce1cb97eaaa7f7abac','admin',1),(2,'amanda.neva@borderguard.baf.berylia.org','b2ba76bb3e5e4a9bc05331a7d77236970e5680f1','amanda.neva',0),(3,'carlos.suarez@borderguard.baf.berylia.org','c96c0d996d12dbaafbed46cbf6804aae0b8e94e7','carlos.suarez',0),(4,'craig.freeman@borderguard.baf.berylia.org','fb546ac2ac8dc3401bd35b300ef9baaaa6f37b4a','craig.freeman',0),(5,'daniel.wiitala@borderguard.baf.berylia.org','4dddec229bed7e87ab2346f4b5c4056f72942ac5','daniel.wiitala',0),(6,'ferdinand.white@borderguard.baf.berylia.org','0adeeedc9cf063842d73c0d669a385b99ae33fd3','ferdinand.white',0),(7,'geraldine.leroux@borderguard.baf.berylia.org','138abd6e18311f2b3b37f47aaa746129e28a27bf','geraldine.leroux',0),(8,'gt@iam.god','60d2a404ac10ce71ef7fb0510a01a181112dc313','gt',1),(9,'josua.tutar@borderguard.baf.berylia.org','59cffb31343fa54bbf5341f936f54b7c3544c557','josua.tutar',0),(10,'leo.lampo@borderguard.baf.berylia.org','84f8e84f934b88c9d65a95e33e9f2ac53be3bfb6','leo.lampo',0),(11,'marcello.robert@borderguard.baf.berylia.org','4c8073ee25902357b9ed36146515e0d693ad341a','marcello.robert',0),(12,'martin.castro@borderguard.baf.berylia.org','5b44e06c8b21351504821414bd3bacf1463ee771','martin.castro',0),(13,'minttu.manni@borderguard.baf.berylia.org','1c7a4a1547db62dcfa942a30db93e435517d8545','minttu.manni',0),(14,'mireille.david@borderguard.baf.berylia.org','4fc4177c3686a87ccc6fece046bfd4b8e13c4f98','mireille.david',0),(15,'rebecca.burito@borderguard.baf.berylia.org','d2c14f6449c70ee77cd87382d8208ca5c1ee7a5a','rebecca.burito',0),(16,'scoringbot@borderguard.baf.berylia.org','0146e3309a3cab49a388ced34714cc416b9de249','scoringbot',1),(19,'wolfgang.pierre@borderguard.baf.berylia.org','be5e91eed548a3273fbc97e95b66a721fe02b316','Wolfgang.Pierre',0),(20,'wayne.arnaud@borderguard.baf.berylia.org','ba5df5913b27e67154ddea946418ab8f6ab03bfd','wayne.arnaud',0);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `IP` varchar(15) DEFAULT NULL,
  `USERAGENT` varchar(255) DEFAULT NULL,
  `REQMETHOD` varchar(20) DEFAULT NULL,
  `REQPATH` varchar(255) DEFAULT NULL,
  `REQTIME` varchar(255) DEFAULT NULL,
  `REQSTATUS` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2429 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `what` varchar(25) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `mobile_phone` varchar(16) DEFAULT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(255) NOT NULL,
  `intro` text NOT NULL,
  `img` varchar(255) DEFAULT '',
  `testo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (4,'Angola Situation','Angola is under a ‘state of public calamity’ until further notice. Most shops and services are now allowed to operate with some restrictions. Angola has opened its borders to South Africa, Botswana, Eswatini, Malawi, Mozambique, Namibia and Zimbabwe. ','img/angola_flag.png','PHA+PHNwYW4gY2xhc3M9InJpZ2h0Ij48c3Ryb25nPkFuZ29sYTwvc3Ryb25nPiBpcyB1bmRlciBhICZsc3F1bztzdGF0ZSBvZiBwdWJsaWMgY2FsYW1pdHkmcnNxdW87IHVudGlsIGZ1cnRoZXIgbm90aWNlLiBNb3N0IHNob3BzIGFuZCBzZXJ2aWNlcyBhcmUgbm93IGFsbG93ZWQgdG8gb3BlcmF0ZSB3aXRoIHNvbWUgcmVzdHJpY3Rpb25zLiBBbmdvbGEgaGFzIG9wZW5lZCBpdHMgYm9yZGVycyB0byBTb3V0aCBBZnJpY2EsIEJvdHN3YW5hLCBFc3dhdGluaSwgTWFsYXdpLCBNb3phbWJpcXVlLCBOYW1pYmlhIGFuZCBaaW1iYWJ3ZS4gPC9zcGFuPjwvcD4NCjxwPjxzcGFuIGNsYXNzPSJyaWdodCI+PHN0cm9uZz5FeGVyY2lzZSBhbiBoaWdoIGRlZ3JlZSBvZiBjYXV0aW9uPC9zdHJvbmc+IDwvc3Bhbj5pbiBBbmdvbGEgb3ZlcmFsbCBkdWUgdG8gdGhlIHJpc2sgb2YgY2l2aWwgdW5yZXN0IGFuZCB2aW9sZW50IGNyaW1lLjwvcD4NCjxkaXYgY2xhc3M9ImZpZWxkIGZpZWxkLS1uYW1lLWZpZWxkLXRpdGxlIGZpZWxkLS10eXBlLXN0cmluZyBmaWVsZC0tbGFiZWwtaGlkZGVuIGZpZWxkX19pdGVtIj4NCjxoMz5TYWZldHk8L2gzPg0KPC9kaXY+DQo8dWw+DQo8bGk+QW5nb2xhIGhhcyBhIGhpZ2ggY3JpbWUgcmF0ZS4gQ29tbW9uIGNyaW1lcyByYW5nZSBmcm9tIHBldHR5IHRoZWZ0IHRvIGFybWVkIHJvYmJlcnkgYW5kIGNhcmphY2tpbmcuIFRoZSByaXNrIG9mIHZpb2xlbnQgY3JpbWUgaXMgbXVjaCBoaWdoZXIgYXQgbmlnaHQuIERvbid0IHdhbGsgYWxvbmUgb3IgYXQgbmlnaHQuPC9saT4NCjxsaT5JbiBhbmQgYXJvdW5kIEx1YW5kYSwgY3JpbWluYWxzIGhhdmUga2lkbmFwcGVkIGZvcmVpZ25lcnMgZnJvbSB2ZWhpY2xlcy4gTG9jayB5b3VyIGRvb3JzIGFuZCB3aW5kb3dzLCBldmVuIHdoZW4gbW92aW5nLiBCZSBhbGVydCBmb3IgYXR0ZW1wdHMgdG8gc3RvcCB5b3VyIHZlaGljbGUuPC9saT4NCjxsaT5DaXZpbCB1bnJlc3QgaXMgY29tbW9uIGluJm5ic3A7Q2FiaW5kYSwmbmJzcDtMdW5kYSBOb3J0ZSBhbmQmbmJzcDtMdW5kYSBTdWwuIFByb3Rlc3RzIGNhbiB0dXJuIHZpb2xlbnQuIEF2b2lkIGxhcmdlIHB1YmxpYyBnYXRoZXJpbmdzLjwvbGk+DQo8bGk+Rmxhc2ggZmxvb2RpbmcgbWF5IG9jY3VyIGR1cmluZyB0aGUgcmFpbnkgc2Vhc29uIGZyb20gT2N0b2JlciB0byBNYXkuIEl0IGNhbiBkYW1hZ2UgaW5mcmFzdHJ1Y3R1cmUgYW5kIGRpc3J1cHQgc2VydmljZXMuIEZvbGxvdyB0aGUgYWR2aWNlIG9mIGxvY2FsIG9mZmljaWFscy48L2xpPg0KPC91bD4NCjxkaXYgY2xhc3M9ImZpZWxkIGZpZWxkLS1uYW1lLWZpZWxkLXRpdGxlIGZpZWxkLS10eXBlLXN0cmluZyBmaWVsZC0tbGFiZWwtaGlkZGVuIGZpZWxkX19pdGVtIj4NCjxoMz5IZWFsdGg8L2gzPg0KPC9kaXY+DQo8dWw+DQo8bGk+Q09WSUQtMTkgcmVtYWlucyBhIHJpc2sgaW4gQW5nb2xhLjwvbGk+DQo8bGk+UG9saW8gb3V0YnJlYWtzIG9jY3VyLiBDaGVjayB5b3VyIHZhY2NpbmF0aW9uIHJlcXVpcmVtZW50cyB3aXRoIHlvdXIgZG9jdG9yIGF0IGxlYXN0IDggd2Vla3MgYmVmb3JlIHlvdSB0cmF2ZWwuPC9saT4NCjxsaT5ISVYvQUlEUyBpbmZlY3Rpb24gcmF0ZXMgYXJlIGhpZ2guIFRha2UgcHJlY2F1dGlvbnMgaWYgeW91J3JlIHRha2luZyBwYXJ0IGluIGhpZ2gtcmlzayBhY3Rpdml0aWVzLjwvbGk+DQo8bGk+SW5zZWN0LWJvcm5lIGRpc2Vhc2VzIGluY2x1ZGUgbWFsYXJpYSwgZGVuZ3VlLCBmaWxhcmlhc2lzLCBBZnJpY2FuIHNsZWVwaW5nIHNpY2tuZXNzIGFuZCB5ZWxsb3cgZmV2ZXIuIEVuc3VyZSB5b3VyIGFjY29tbW9kYXRpb24gaXMgaW5zZWN0LXByb29mLiBVc2UgaW5zZWN0IHJlcGVsbGVudC4mbmJzcDs8L2xpPg0KPGxpPlppa2EgdmlydXMgaW5mZWN0aW9ucyBvY2N1ciBpbiBBbmdvbGEuIElmIHlvdSdyZSBwcmVnbmFudCwgZGlzY3VzcyB0aGlzIHdpdGggYSZuYnNwO2RvY3Rvci48L2xpPg0KPGxpPk1lZGljYWwgZmFjaWxpdGllcyBpbiBBbmdvbGEgYXJlIHZlcnkgbGltaXRlZC4gSWYgeW91IGJlY29tZSBzZXJpb3VzbHkgaWxsIG9yIGluanVyZWQsIHlvdSdsbCBuZWVkIHRvIGJlIGV2YWN1YXRlZCB0byBhbm90aGVyIGNvdW50cnkgd2l0aCBhcHByb3ByaWF0ZSBmYWNpbGl0aWVzLCB3aGljaCBtYXkgYmUgZGlmZmljdWx0IHdoaWxlIENPVklELTE5IHJlc3RyaWN0aW9ucyBhcmUgaW4gcGxhY2UuIE1lZGljYWwgZXZhY3VhdGlvbiBjYW4gYmUgdmVyeSBleHBlbnNpdmUuPC9saT4NCjwvdWw+'),(16,'Frontex renews cooperation plan with Moldova','Today, Frontex, the European Border and Coast Guard Agency, renewed its cooperation plan with the Moldovan Border Police for the period 2022-2024.','img/moldova.jpg','PHA+VG9kYXksIEZyb250ZXgsIHRoZSBFdXJvcGVhbiBCb3JkZXIgYW5kIENvYXN0IEd1YXJkIEFnZW5jeSwgcmVuZXdlZCBpdHMgY29vcGVyYXRpb24gcGxhbiB3aXRoIHRoZSBNb2xkb3ZhbiBCb3JkZXIgUG9saWNlIGZvciB0aGUgcGVyaW9kIDIwMjItMjAyNC4gVGhlIGFpbSBpcyB0byBzdHJlbmd0aGVuIHNlY3VyaXR5IGF0IHRoZSBib3JkZXJzIGJldHdlZW4gRVUgTWVtYmVyIFN0YXRlcyBhbmQgTW9sZG92YSBhbmQgc3BlY2lmeSBob3cgdGhlIGFnZW5jeSBhbmQgTW9sZG92YW4gYXV0aG9yaXRpZXMgd2lsbCBjb250aW51ZSB3b3JraW5nIHRvZ2V0aGVyIGluIGFyZWFzIHJhbmdpbmcgZnJvbSBjb21iYXR0aW5nIGNyb3NzLWJvcmRlciBjcmltZSwgZXhjaGFuZ2luZyBpbmZvcm1hdGlvbiB0byB0cmFpbmluZyBhY3Rpdml0aWVzLjwvcD4NCjxwPkZyb250ZXggd2lsbCBjb250aW51ZSB0byBjb29wZXJhdGUgd2l0aCB0aGUgTW9sZG92YW4gYXV0aG9yaXRpZXMgYWxzbyBieSBpbmNsdWRpbmcgTW9sZG92YW4gb2JzZXJ2ZXJzIGluIEZyb250ZXggb3BlcmF0aW9uYWwgYWN0aXZpdGllcy4mbmJzcDs8L3A+DQo8cD5UaGUgZG9jdW1lbnQgd2FzIHNpZ25lZCBieSBGYWJyaWNlIExlZ2dlcmksIHRoZSBFeGVjdXRpdmUgRGlyZWN0b3Igb2YgRnJvbnRleCwgYW5kIFJvc2lhbiBWYXNpbG9pLCB0aGUgSGVhZCBvZiB0aGUgTW9sZG92YW4gQm9yZGVyIFBvbGljZS4gVGhlIG9mIHRoZSBFVSBEZWxlZ2F0aW9uIHRvIHRoZSBSZXB1YmxpYyBvZiBNb2xkb3ZhLCBILkUuIErEgW5pcyBNYcW+ZWlrcywgd2FzIGFsc28gcHJlc2VudCBkdXJpbmcgdGhlIHZpcnR1YWwgZXZlbnQuPC9wPg0KPHA+Q29vcGVyYXRpb24gcGxhbnMgYXJlIGEgdG9vbCB0aGF0IEZyb250ZXggaGFzIGF0IGl0cyBkaXNwb3NhbCB0byB0cmFuc2xhdGUgYmlsYXRlcmFsIGNvbW1pdG1lbnRzIGV4cHJlc3NlZCBpbiBXb3JraW5nIEFycmFuZ2VtZW50cyBpbnRvIGNvbmNyZXRlIGFjdGlvbnMuJm5ic3A7IFN1Y2ggcGxhbnMgYXJlIGNvbmNsdWRlZCB3aXRoIHRoZSBjbG9zZXN0IG5vbi1FVSBwYXJ0bmVycyB0byBwcm92aWRlIHByYWN0aWNhbCByb2FkbWFwcyBmb3Igb3BlcmF0aW9uYWwgY29sbGFib3JhdGlvbiBmb3IgdGhlIHRpbWUgcGVyaW9kIG9mIHRocmVlIHllYXJzLjwvcD4='),(17,'Frontex and Lithuania agree on service weapons delivered to Frontex standing corps officers','Today, on the margins of the Justice and Home Affairs Council, Frontex Executive Director Fabrice Leggeri signed an agreement with Lithuania’s Minister of Interior Agnė Bilotaitė to deploy Frontex standing corps officers equipped with service weapons provided by Lithuania.','img/frontex_lithuania.jpg','PHA+VG9kYXksIG9uIHRoZSBtYXJnaW5zIG9mIHRoZSBKdXN0aWNlIGFuZCBIb21lIEFmZmFpcnMgQ291bmNpbCwgRnJvbnRleCBFeGVjdXRpdmUgRGlyZWN0b3IgRmFicmljZSBMZWdnZXJpIHNpZ25lZCBhbiBhZ3JlZW1lbnQgd2l0aCBMaXRodWFuaWEmcnNxdW87cyBNaW5pc3RlciBvZiBJbnRlcmlvciBBZ27ElyBCaWxvdGFpdMSXIHRvIGRlcGxveSBGcm9udGV4IHN0YW5kaW5nIGNvcnBzIG9mZmljZXJzIGVxdWlwcGVkIHdpdGggc2VydmljZSB3ZWFwb25zIHByb3ZpZGVkIGJ5IExpdGh1YW5pYS48L3A+DQo8cD5UaGUgYWdyZWVtZW50IGhhcyBiZWVuIHNpZ25lZCBpbiB0aGUgcHJlc2VuY2Ugb2YgRVUgQ29tbWlzc2lvbmVyIGZvciBIb21lIEFmZmFpcnMgWWx2YSBKb2hhbnNzb24gYW5kIFNsb3ZlbmlhJnJzcXVvO3MgTWluaXN0ZXIgb2YgSW50ZXJpb3IgQWxlJnNjYXJvbjsgSG9qcy48L3A+DQo8cD4mbGRxdW87VGhpcyBpcyBhIGhpc3RvcmljIHN0ZXAgZm9yIHRoZSBzdGFuZGluZyBjb3JwcyBhbmQgdGhlIEV1cm9wZWFuIFVuaW9uLCZyZHF1bzsgc2FpZCBGcm9udGV4IEV4ZWN1dGl2ZSBEaXJlY3RvciBGYWJyaWNlIExlZ2dlcmkuPC9wPg0KPHA+JmxkcXVvO1RoZSBGcm9udGV4IHN0YW5kaW5nIGNvcnBzIG9mZmljZXJzIGhhdmUgdW5kZXJnb25lIGV4dGVuc2l2ZSBmaXJlYXJtcyB0cmFpbmluZywgdGhleSBoYXZlIGJlZW4gdmV0dGVkIGJ5IG5hdGlvbmFsIGF1dGhvcml0aWVzIGFuZCBoYXZlIGNvbXBsZXRlZCBhIHBzeWNob2xvZ2ljYWwgYXNzZXNzbWVudC4gSSBhbSBncmF0ZWZ1bCB0byBDb21taXNzaW9uZXIgSm9oYW5zc29uIGFuZCB0aGUgRVUgcHJlc2lkZW5jeSBmb3IgdGhlaXIgcHJlc2VuY2UuIFRoaXMgd2lsbCBnaXZlIHVzIG1vcmUgZmxleGliaWxpdHkgdG8gY29udGludWUgb3VyIHN1cHBvcnQgdG8gTGl0aHVhbmlhIGFmdGVyIHRoZSBlbmQgb2YgdGhlIHJhcGlkIGludGVydmVudGlvbiwmcmRxdW87IGhlIGFkZGVkLjwvcD4NCjxwPkZvciB0aGUgZmlyc3QgdGltZSwgdGhlIEZyb250ZXggc3RhbmRpbmcgY29ycHMgb2ZmaWNlcnMgcmVjcnVpdGVkIGFzIEVVIHN0YXR1dG9yeSBzdGFmZiAoY2F0ZWdvcnkgMSkgd2lsbCBiZSBhYmxlIHRvIGNhcnJ5IGZpcmVhcm1zIGZvciBwYXRyb2xsaW5nIGFjdGl2aXRpZXMuIFRoaXMgYWdyZWVtZW50IHdpbGwgYmUgZm9sbG93ZWQgYnkgc2ltaWxhciBhZ3JlZW1lbnRzIHdpdGggb3RoZXIgbmF0aW9uYWwgYXV0aG9yaXRpZXMgaW4gdGhlIGNvbWluZyBtb250aHMuPC9wPg0KPHA+VGhlIHVzZSBvZiBmb3JjZSBieSBGcm9udGV4IHN0YWZmIGlzIGdvdmVybmVkIGJ5IHRoZSA8YSBocmVmPSJodHRwczovL2V1cjAyLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZldXItbGV4LmV1cm9wYS5ldSUyRmxlZ2FsLWNvbnRlbnQlMkZFTiUyRlRYVCUyRiUzRnFpZCUzRDE1NzM3MjIxNTE2NjclMjZ1cmklM0RDRUxFWCUzQTMyMDE5UjE4OTYmYW1wO2RhdGE9MDQlN0MwMSU3Q2p1c3R5bmEuanVyY3phayU0MGZyb250ZXguZXVyb3BhLmV1JTdDZTU2MDdjYmY1YmMzNDY5NDQ0MjMwOGQ5YmIwZjcwZDQlN0MxYTE3ZDZiZjUxNTU0ZTIyYmYyOTJiYTVkYTc3ZjAzNyU3QzAlN0MwJTdDNjM3NzQ2NDk3NDU1OTI1OTA0JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAmYW1wO3NkYXRhPVFaaHFVNnJUJTJGJTJGU3REa0puc0g0STQlMkJ4ZldRJTJGWk5lcTZaJTJGUGFZRzMyS0g4JTNEJmFtcDtyZXNlcnZlZD0wIj5yZWd1bGF0aW9uPC9hPiBvbiB0aGUgRXVyb3BlYW4gQm9yZGVyIGFuZCBDb2FzdCBHdWFyZCwgYW5kIGluY2x1ZGVzIGEgc3BlY2lmaWMgY29udHJvbCBtZWNoYW5pc20uIFRoZSBvZmZpY2VycyB3b3JrIHVuZGVyIHRoZSBjb21tYW5kIG9mIG5hdGlvbmFsIGF1dGhvcml0aWVzLiBBbnkgaW5jaWRlbnQgaW52b2x2aW5nIHRoZSB1c2Ugb2YgZm9yY2Ugc2hhbGwgYmUgaW1tZWRpYXRlbHkgcmVwb3J0ZWQgdG8gRnJvbnRleC48L3A+DQo8cD5UaGUgRXVyb3BlYW4gQm9yZGVyIGFuZCBDb2FzdCBHdWFyZCBzdGFuZGluZyBjb3JwcyBoZWxwcyBtYWtlIHRoZSBTY2hlbmdlbiBBcmVhLCB0aGUgbGFyZ2VzdCBmcmVlIHRyYXZlbCBhcmVhIGluIHRoZSB3b3JsZCwgc3Ryb25nZXIgYW5kIG1vcmUgcmVzaWxpZW50LiBUaGUgc3RhbmRpbmcgY29ycHMgYmVnYW4gb3BlcmF0aW5nIGluIDIwMjEgYW5kIHdpbGwgZ3JvdyB0byB1cCB0byAxMCwwMDAgb2ZmaWNlcnMgYnkgMjAyNy4gSXQgaXMgY29tcG9zZWQgb2YgZm91ciBjYXRlZ29yaWVzOiBDYXRlZ29yeSAxIG9mZmljZXJzIGFyZSByZWNydWl0ZWQgYW5kIHRyYWluZWQgYnkgRnJvbnRleCwgQ2F0ZWdvcnkgMiBvZmZpY2VycyBhcmUgc2Vjb25kZWQgYnkgTWVtYmVyIFN0YXRlcyBmb3IgdHdvIHRvIGZvdXIgeWVhcnM7IENhdGVnb3J5IDMgb2ZmaWNlcnMgYXJlIHNlY29uZGVkIGZvciBmb3VyIG1vbnRoczsgQ2F0ZWdvcnkgNCBhcmUgcGFydCBvZiB0aGUgcmFwaWQgcmVhY3Rpb24gcG9vbCBvbmx5IHNlY29uZGVkIGluIGNhc2Ugb2YgYWN0aXZhdGlvbiBvZiBhIFJhcGlkIEJvcmRlciBJbnRlcnZlbnRpb24uPC9wPg0KPHA+Jm5ic3A7PC9wPg=='),(30,'pirate attacks on Berylian\'s ships continue...','Berylian naval troops today repulsed a pirate attack on one of the country\'s oil tankers en route to Paldar, border control agency reported','img/aritificial_isle.png','Rm91ciBib2F0cywgZWFjaCBjYXJyeWluZyBhYm91dCA2IGFybWVkIHBpcmF0ZXMsIGF0dGVtcHRlZCB0byBhdHRhY2sgYW5kIGhpamFjayB0aGUgdGFua2VyLCBidXQgd2VyZSBmb3JjZWQgdG8gZmxlZSBhZnRlciBuYXZhbCBmb3JjZXMgZmlyZWQgd2FybmluZyBzaG90cy4NCkl0IGlzIHRoZSBmaWZ0aCBhdHRhY2sgaW4gdGhlIGxhc3QgdHdvIG1vbnRocyBhbmQgaXQgaXMgbm90IGV4Y2x1ZGVkIHRoYXQgdGhlc2UgYXR0YWNrcyBhcmUgc3BvbnNvcmVkIGJ5IG5laWdoYm9yaW5nIHN0YXRlcyB3aG9zZSBnb2FsIGlzIHRvIGRlc3RhYmlsaXplIHRoZSBnZW9wb2xpdGljYWwgc2l0dWF0aW9u'),(31,'Send troops to the border to protect civilians along the coast','Send troops to the border to protect civilians along the coast. ','img/soldier.jpg','dGhlIHByaW1hcnkgb2JqZWN0aXZlIGlzIHRvIHByb3RlY3QgdGhlIHBvcHVsYXRpb24gZnJvbSBhdHRhY2tzIGJ5ICJwaXJhdGVzIiBjb21pbmcgZnJvbSB0aGUgc2VhIGFuZCBmcm9tIHRoZSBhcnRpZmljaWFsIGlzbGFuZHMgb2ZmIHRoZSBjb2FzdCBvZiBCZXJ5bGlhLg0KQWZ0ZXIgdGhlIGxvc3Mgb2YgY3JlZGliaWxpdHkgb2YgdGhlIGNyeW1zb25pYW4gcHJlc2lkZW50IDxzdHJvbmc+QmFiYWsgTGFuZHZpazwvc3Ryb25nPiwgZHVlIHRoZSB1bnN1Y2Nlc3NmdWwgc3VwcG9ydCBmb3IgdGhlIDxzdHJvbmc+UmVwdWJsaWMgb2YgUHJvcGh5cmlhPC9zdHJvbmc+LCB3ZSBoYXZlIHNlZW4gYW4gaW5jcmVhc2UgaW4gYXR0YWNrIGF0dGVtcHRzIGFnYWluc3Qgb3VyIG9pbCB0YW5rZXJzIGFuZCBjYXJnbyBzaGlwcy4NCg=='),(33,'Berylian BorderGuard Control Reveals 43.5% Decline in Passenger Arrivals Compared to End-Of-The-Year Volumes','The reintroduction of internal border control has caused the number of arrivals in Berylian borders to decrease significantly, the country’s border guard has revealed.','img/snow_city.jpg','PHA+QWNjb3JkaW5nIHRvIGEgcHJlc3MgcmVsZWFzZSBpc3N1ZWQgYnkgdGhlIGxhdHRlciwgdGhlIG51bWJlciBvZiBib3JkZXIgY2hlY2tzIGF0IEFpcnBvcnQgZHJvcHBlZCBieSAxMyBwZXIgY2VudCwgcmVhY2hpbmcgMzEsODY1IG9mIHRob3NlLCBpbiBjb21wYXJpc29uIHRvIDM2LDY2MCByZWNvcmRlZCBsYXN0IHdlZWsuIEluIGFkZGl0aW9uLCBib3JkZXIgY2hlY2tzIGF0IGludGVybmFsIGJvcmRlciB0cmFmZmljIGFsc28gZHJvcHBlZCAtIGZyb20gMzQsNzI4IHRvIDI1LDY2NywgbWFya2luZyBhIDI2IHBlciBjZW50IGRlY2xpbmUuPC9wPg0KPHA+Jm5ic3A7PC9wPg0KPHA+VGhlIFBvcnQgYWxzbyBzYXcgYSBzaWduaWZpY2FudCBkZWNsaW5lIGluIHBhc3NlbmdlcnMgdGhyb3VnaG91dCB0aGlzIHdlZWssIGFzIG9ubHkgMjMsOTMwIHBhc3NlbmdlcnMgd2VyZSByZWNvcmRlZCwgNDMuNSBwZXIgY2VudCBmZXdlciB0aGFuIGxhc3Qgd2Vlaywgd2hlbiA0MiwzNzggcGFzc2VuZ2VycyByZWFjaGVkIHRoZSBwb3J0LiBJbiBhZGRpdGlvbiwgdGhlIG51bWJlciBvZiBpbnRlcm5hdGlvbmFsIGFycml2YWxzIGhhcyByZW1haW5lZCBzdGFibGUsIGFjY291bnRpbmcgZm9yIDc2IHBlciBjZW50IG9mIGFsbCBhcnJpdmFscy48YnIgLz48YnIgLz5GdXJ0aGVybW9yZSwgQmVyeWxpYW4gQm9yZGVyR3VhcmQgQ29hc3QgR3VhcmQgdHVybmVkIGEgdG90YWwgb2YgMTA2IHBhc3NlbmdlcnMgaW4gaW50ZXJuYWwgYm9yZGVyIHRyYWZmaWMgYXQgdGhlIEFpcnBvcnQgYW5kIGF0IG90aGVyIHBvcnRzLCAxMiBtb3JlIHRoYW4gdGhlIHByZXZpb3VzIHdlZWsuIEFib3V0IDE4IGRlbmlhbHMgb2YgZW50cnkgd2VyZSByZWdpc3RlcmVkLCB3aXRoIHRoZSBtYWluIHJlYXNvbnMgZm9yIGRlbmlhbHMgb2YgZW50cnkgYmVpbmcgbGFjayBvZiBoZWFsdGggc2VjdXJpdHkgY2VydGlmaWNhdGVzLiBJbiBhZGRpdGlvbiwgc2V2ZW4gYXN5bHVtIGFwcGxpY2F0aW9ucyB3ZXJlIHJlY2VpdmVkIGJ5IGFycml2YWxzLjwvcD4=');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preregistration`
--

DROP TABLE IF EXISTS `preregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preregistration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `second_name` varchar(30) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(16) DEFAULT NULL,
  `gp_uci` varchar(38) NOT NULL,
  `date_of_access` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preregistration`
--

LOCK TABLES `preregistration` WRITE;
/*!40000 ALTER TABLE `preregistration` DISABLE KEYS */;
/*!40000 ALTER TABLE `preregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `birthState` varchar(30) NOT NULL,
  `birthDate` varchar(10) NOT NULL,
  `livingPlace` varchar(40) DEFAULT NULL,
  `livingAddr` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (113,'Mireille','David','Berylia','1989-05-26','lambeck','3420 Lake Floyd Circle','mireille.david@borderguard.baf.berylia.org'),(114,'Amanda','Neva','Berylia','1962-12-29','norville','4931 Morningview Lane','amanda.neva@borderguard.baf.berylia.org'),(115,'Marcello','Robert','Berylia','1955-08-21','lambeck','25 County Line Road','marcello.robert@borderguard.baf.berylia.org'),(117,'Craig','Freeman','Berylia','1975-03-04','adeasa','2343 Lincoln Drive','craig.freeman@borderguard.baf.berylia.org'),(118,'Geraldine','Leroux','Berylia','1951-04-27','tettlewick','1630 Parkway Street','geraldine.leroux@borderguard.baf.berylia.org'),(119,'Minttu','Manni','Berylia','1950-10-18','kranin','21 Grasselli Street','minttu.manni@borderguard.baf.berylia.org'),(120,'Leo','Lampo','Berylia','1988-11-05','tettlewick','3499 Masonic Drive','leo.lampo@borderguard.baf.berylia.org'),(121,'Martin','Castro','Berylia','1948-01-23','paldar','131 Rockford Mountain Lane','martin.castro@borderguard.baf.berylia.org'),(122,'Daniel','Wiitala','Berylia','1990-07-06','carcastle','1580 Southern Street','daniel.wiitala@borderguard.baf.berylia.org'),(123,'Josua','Tutar','Berylia','1960-04-27','erack','1385 West Fork Street','josua.tutar@borderguard.baf.berylia.org'),(124,'Ferdinand','White','Berylia','1939-04-03','adeasa','1872 Godfrey Road','ferdinand.white@borderguard.baf.berylia.org'),(125,'Rebecca','Burito','Berylia','1969-03-15','kranin','704 Radio Park Drive','rebecca.burito@borderguard.baf.berylia.org'),(126,'Carlos','Suarez','Berylia','2002-12-17','lambeck','1811 Filbert Street','carlos.suarez@borderguard.baf.berylia.org'),(128,'Thomas','Anderson','berylia','1982-03-01','matrix','via le mani dal naso 22','admin@borderguard.baf.berylia.org'),(129,'Elliot','Alderson','Italy','1982-04-01','italy','piazza una bomba e scappa, 42','scoringbot@borderguard.baf.berylia.org'),(130,'zeno','kalaman','italy','1900-01-01','italy','via le mani dal naso, 22','gt@iam.god'),(131,'Pierre','Wolfgang','berylia','1980-01-01','Neva','empty street','wolfgang.pierre@borderguard.baf.berylia.org'),(132,'Arnaud','Wayne','Berylia','1995-04-27','carcastle','2437 hummingbird avenue','wayne.arnaud@borderguard.baf.berylia.org');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `fromDate` varchar(10) NOT NULL,
  `toDate` varchar(10) NOT NULL,
  `structure` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updating`
--

DROP TABLE IF EXISTS `updating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `updating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid_src` varchar(255) NOT NULL,
  `uid_dst` varchar(255) NOT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updating`
--

LOCK TABLES `updating` WRITE;
/*!40000 ALTER TABLE `updating` DISABLE KEYS */;
/*!40000 ALTER TABLE `updating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-21 12:10:46
