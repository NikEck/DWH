CREATE DATABASE  IF NOT EXISTS `simtrade2_cube` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `simtrade2_cube`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: simtrade2_cube
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `dim_participation`
--

DROP TABLE IF EXISTS `dim_participation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_participation` (
  `rank` int(4) NOT NULL,
  `points` int(4) NOT NULL,
  `value` float NOT NULL,
  `money` float NOT NULL,
  `bankrupt` int(1) NOT NULL,
  `skey` int(11) NOT NULL,
  `id_Simulation` int(11) NOT NULL,
  PRIMARY KEY (`skey`,`id_Simulation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_simulation`
--

DROP TABLE IF EXISTS `dim_simulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_simulation` (
  `simulation_name` varchar(45) NOT NULL,
  `simulation_id` int(11) NOT NULL,
  `system` int(11) NOT NULL,
  PRIMARY KEY (`simulation_id`,`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_time`
--

DROP TABLE IF EXISTS `dim_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_time` (
  `day` varchar(10) NOT NULL,
  `month` varchar(7) NOT NULL,
  `year` varchar(4) NOT NULL,
  `isWorkDay` varchar(1) NOT NULL,
  `quartal` varchar(2) NOT NULL,
  `system` int(2) NOT NULL,
  PRIMARY KEY (`day`,`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_user`
--

DROP TABLE IF EXISTS `dim_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_user` (
  `firstname` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `username` tinytext,
  `group` varchar(5) DEFAULT NULL,
  `skey` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `skey_1` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`skey_1`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fac_events`
--

DROP TABLE IF EXISTS `fac_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_events` (
  `amount` bigint(20) DEFAULT NULL,
  `typ` varchar(1) NOT NULL,
  `id_user` int(11) NOT NULL,
  `system` int(11) NOT NULL,
  PRIMARY KEY (`typ`,`id_user`,`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fac_simulation_time`
--

DROP TABLE IF EXISTS `fac_simulation_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_simulation_time` (
  `day` varchar(10) NOT NULL,
  `simulation_minutes` int(11) NOT NULL,
  `skey` int(2) NOT NULL,
  PRIMARY KEY (`skey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fac_trades`
--

DROP TABLE IF EXISTS `fac_trades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_trades` (
  `amount` int(11) NOT NULL,
  `typ` varchar(1) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`typ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-29 15:42:43
CREATE DATABASE  IF NOT EXISTS `log_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `log_db`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: log_db
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `idLog_ID` int(11) NOT NULL AUTO_INCREMENT,
  `transfm` varchar(45) DEFAULT 'Null',
  `lastend` varchar(45) DEFAULT 'Null',
  `system` varchar(45) DEFAULT '1',
  PRIMARY KEY (`idLog_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `surrogate_user`
--

DROP TABLE IF EXISTS `surrogate_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surrogate_user` (
  `skey` int(11) NOT NULL AUTO_INCREMENT,
  `bkey` int(11) DEFAULT NULL,
  `sys` int(11) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`skey`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-29 15:42:43
CREATE DATABASE  IF NOT EXISTS `simtrade2_staging` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `simtrade2_staging`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: simtrade2_staging
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `event_log`
--

DROP TABLE IF EXISTS `event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_log` (
  `user_id` int(11) NOT NULL,
  `zeit` int(11) NOT NULL DEFAULT '0',
  `typ` varchar(1) NOT NULL,
  `event_log_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`event_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `participation`
--

DROP TABLE IF EXISTS `participation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participation` (
  `id_user` int(11) NOT NULL,
  `id_simulation` int(11) NOT NULL,
  `onlinetime` int(15) DEFAULT NULL,
  `rank` int(4) DEFAULT NULL,
  `points` int(4) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `money` float DEFAULT NULL,
  `bankrupt` int(1) DEFAULT NULL,
  `system` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`id_simulation`,`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `simulation`
--

DROP TABLE IF EXISTS `simulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simulation` (
  `id_simulation` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `startat` datetime DEFAULT NULL,
  `endat` datetime DEFAULT NULL,
  `logfile` varchar(45) DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT NULL,
  `simulation_minutes` int(11) DEFAULT NULL,
  `system` int(11) NOT NULL,
  PRIMARY KEY (`id_simulation`,`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trade_log`
--

DROP TABLE IF EXISTS `trade_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_log` (
  `zeit` decimal(11,0) NOT NULL,
  `typ` varchar(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(1) NOT NULL,
  `volumen` int(11) NOT NULL,
  `limit` int(11) NOT NULL,
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12269 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `group` varchar(5) DEFAULT NULL,
  `ticket` varchar(45) DEFAULT NULL,
  `salt` int(11) DEFAULT NULL,
  `passhash` varchar(45) DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT NULL,
  `date_from` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `date_to` datetime NOT NULL DEFAULT '2099-12-31 23:59:59',
  `version` int(5) NOT NULL DEFAULT '1',
  `system` int(5) NOT NULL,
  PRIMARY KEY (`id_user`,`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-29 15:42:43
CREATE DATABASE  IF NOT EXISTS `simtrade2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `simtrade2`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: simtrade2
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `participation`
--

DROP TABLE IF EXISTS `participation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participation` (
  `id_user` int(11) NOT NULL,
  `id_simulation` int(11) NOT NULL,
  `onlinetime` int(15) DEFAULT NULL,
  `rank` int(4) NOT NULL,
  `points` int(4) NOT NULL,
  `value` float NOT NULL,
  `money` float NOT NULL,
  `bankrupt` int(1) NOT NULL,
  PRIMARY KEY (`id_user`,`id_simulation`),
  KEY `fk_part_user` (`id_user`),
  KEY `fk_part_sim` (`id_simulation`),
  CONSTRAINT `fk_part_sim` FOREIGN KEY (`id_simulation`) REFERENCES `simulation` (`id_simulation`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_part_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `simulation`
--

DROP TABLE IF EXISTS `simulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simulation` (
  `id_simulation` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `startat` datetime NOT NULL,
  `endat` datetime NOT NULL,
  `logfile` varchar(45) NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_simulation`)
) ENGINE=InnoDB AUTO_INCREMENT=2072 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `did` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `vorname` tinytext,
  `nachname` tinytext,
  PRIMARY KEY (`did`),
  KEY `idx_test_lookup` (`sid`),
  KEY `idx_test_tk` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `group` varchar(5) NOT NULL DEFAULT 'prg',
  `ticket` varchar(45) NOT NULL,
  `salt` int(11) NOT NULL,
  `passhash` varchar(45) NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-29 15:42:44
