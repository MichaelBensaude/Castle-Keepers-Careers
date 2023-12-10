-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Granthem','Du Met');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'georges','lukasse'),(2,'mickael','dooglase'),(3,'frederic','lemoine'),(4,'sandrine','lastandardiste'),(5,'harry','potdefleur'),(6,'paulette','kalipstav'),(7,'olga','paslfala'),(8,'gregoires','paslagloire'),(9,'serge','grassia');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultant`
--

DROP TABLE IF EXISTS `consultant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_candidate` int(11) NOT NULL,
  `id_recruiters` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_recruiters` (`id_recruiters`),
  KEY `id_candidate` (`id_candidate`),
  CONSTRAINT `consultant_ibfk_1` FOREIGN KEY (`id_recruiters`) REFERENCES `recruiters` (`id`),
  CONSTRAINT `consultant_ibfk_2` FOREIGN KEY (`id_candidate`) REFERENCES `candidate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultant`
--

LOCK TABLES `consultant` WRITE;
/*!40000 ALTER TABLE `consultant` DISABLE KEYS */;
INSERT INTO `consultant` VALUES (1,1,1,'jean'),(2,2,1,'jean'),(3,3,2,'fleur'),(4,4,2,'fleur'),(5,5,3,'corinne'),(6,6,3,'corinne'),(7,7,1,'fleur'),(8,8,2,'jean'),(9,9,3,'fleur');
/*!40000 ALTER TABLE `consultant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `country` varchar(50) NOT NULL,
  `place_post` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'valet de chambre','La mission principale du valet de chambre : remettre au propre les chambres des clients en toute discr?tion. Il porte donc la bonne image de l ?tablissement dans lequel il travaille. Les t?ches du valet de chambre peuvent varier selon la taille et le type d h?tel dans lequel il exerce','londres',4),(2,'chef cuisine','Le chef de cuisine est notamment en charge de superviser la pr?paration et la cuisson des plats  de maintenir le stock de la cuisine et de respecter les normes de propret? et de s?curit?. Pour r?ussir ? ce poste  vous devrez ?tre capable de diriger le personnel de cuisine et de le guider pour servir des plats de qualit? dans les d?lais.','londres',1),(3,'Cuisinier/Cuisini?re','Le cuisinier ou la cuisini?re r?alise les plats qui seront servis aux clients. Mais en cuisine il existe toute une hi?rarchie : du commis au chef de partie et chef de cuisine. Il ou elle peut aussi officier dans la restauration collective. Description m?tier Le cuisinier ou la cuisini?re pr?pare les plats pr?sent?s au menu.','londres',10),(4,'Barman/Barmaid','Travailleur polyvalent qui accueille la client?le du bar  pr?pare et effectue le service des boissons chaude et/ou froides  simples ou compos?es (cocktails)  ainsi que des mets simples voire des snacks  des sandwichs ou et des cr?mes glac?es.','londres',1),(5,'R?ceptionniste','Le r?ceptionniste d h?tel accueille les clients d un ?tablissement et apporte des renseignements concernant certains ?v?nements ou sorties qui ont lieu pendant le s?jour des clients. Il est la premi?re personne avec qui le client entre en contact lors de son arriv?e ? l h?tel.','Londres',4);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruiters`
--

DROP TABLE IF EXISTS `recruiters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruiters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `adress` varchar(500) NOT NULL,
  `id_post` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_post` (`id_post`),
  CONSTRAINT `recruiters_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `job` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruiters`
--

LOCK TABLES `recruiters` WRITE;
/*!40000 ALTER TABLE `recruiters` DISABLE KEYS */;
INSERT INTO `recruiters` VALUES (1,'castleVaniea','11 rue du royaume perdu',1),(2,'manorOblivious','33 impasse de pas pars la',2),(3,'castleKingdom','222 porte des tenebres',3);
/*!40000 ALTER TABLE `recruiters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-10 16:25:32
