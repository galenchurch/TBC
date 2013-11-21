-- MySQL dump 10.13  Distrib 5.1.69, for redhat-linux-gnu (x86_64)
--
-- Host: 192.237.246.191    Database: bndr_s002
-- ------------------------------------------------------
-- Server version	5.1.69-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bom`
--

DROP TABLE IF EXISTS `bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bom` (
  `item` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `part` varchar(16) DEFAULT NULL,
  `parent` int(10) unsigned DEFAULT NULL,
  `parent_pn` varchar(16) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `qty` int(10) unsigned DEFAULT NULL,
  `unit` varchar(4) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `manufacturer` varchar(64) DEFAULT NULL,
  `manufacturer_pn` varchar(64) DEFAULT NULL,
  `supplier` varchar(64) DEFAULT NULL,
  `supplier_pn` varchar(64) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `cost_u` float DEFAULT NULL,
  `cost_e` float DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL,
  `tuples` varchar(255) DEFAULT NULL,
  `top` tinyint(1) DEFAULT NULL,
  `chksum` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`item`),
  KEY `item` (`item`),
  KEY `part` (`part`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom`
--

LOCK TABLES `bom` WRITE;
/*!40000 ALTER TABLE `bom` DISABLE KEYS */;
INSERT INTO `bom` VALUES (1,'',0,'','BeagleBoard-xM SBC',1,'','','CircuitCo','BeagleBoard-xM','Mouser','595-BEAGLEBOARD-XM','http://www.mouser.com/ProductDetail/BeagleBoard-by-CircuitCo/BeagleBoard-xM/?qs=sGAEpiMZZMsi5STK09QP%252bKiOKGrBbCoZ','','',0,0,NULL,NULL,1,'67cbc8480ac19d659d49d490208dc3002543e5df');
INSERT INTO `bom` VALUES (2,'',0,'','TBC BASE',1,'','','','','','BASE','https://www.dropbox.com/s/vj2tyexa3n5xf6p/BASE.PDF','','',0,0,NULL,NULL,1,'c2cfec61820836c55ca920686cdc436108ad6474');
INSERT INTO `bom` VALUES (3,'STANDOFF',0,'','Standoff Assy',4,'','','','','','','https://www.dropbox.com/s/6n92c35nsf1xhch/STANDOFF.PDF','','',0,0,NULL,NULL,1,'90457020dcd01bc29377ba271ffb0fdbf427142a');
INSERT INTO `bom` VALUES (4,'',3,'','Standoff, Metric, ALU, Threaded 4.5 x 16mm',1,'','','McMaster-Carr','95947A128','McMaster-Carr','95947A128','http://www.mcmaster.com/#95947a128/=otktrt','','',0,0,NULL,NULL,0,'35d256f5f208062da9db35110dcb8221c8fc7be0');
INSERT INTO `bom` VALUES (5,'',3,'','SHCS, M3, SS, 8mm',1,'','','McMaster-Carr','91292A112','McMaster-Carr','91292A112','http://www.mcmaster.com/#91292a112/=otkvh8','','',0,0,NULL,NULL,0,'ea539dfaedcf481a8f0cb07eb0f8a3807690c5a3');
INSERT INTO `bom` VALUES (6,'',3,'','FHSC, M3, SS, 16mm',1,'','','McMaster-Carr','92125A134','McMaster-Carr','92125A134','http://www.mcmaster.com/#92125a134/=otkxol','','',0,0,NULL,NULL,0,'494911a5741740479ab95c136803e22f635dbcf4');
/*!40000 ALTER TABLE `bom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-21 11:58:07
