-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: thesis
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concept`
--

DROP TABLE IF EXISTS `concept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concept` (
  `id` int(11) NOT NULL,
  `concept` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concept`
--

LOCK TABLES `concept` WRITE;
/*!40000 ALTER TABLE `concept` DISABLE KEYS */;
/*!40000 ALTER TABLE `concept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direct_knowledge`
--

DROP TABLE IF EXISTS `direct_knowledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direct_knowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(250) DEFAULT 'null',
  `type` varchar(100) DEFAULT 'null',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
/*!40000 ALTER TABLE `direct_knowledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educational_bg`
--

DROP TABLE IF EXISTS `educational_bg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educational_bg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institution` varchar(100) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `yr_graduated` year(4) DEFAULT NULL,
  `course` varchar(250) DEFAULT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
/*!40000 ALTER TABLE `educational_bg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `rsvp_status` varchar(45) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `family_name` varchar(100) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest_preferences`
--

DROP TABLE IF EXISTS `interest_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interest_preferences` (
  `id` int(11) NOT NULL,
  `interest` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest_preferences`
--

LOCK TABLES `interest_preferences` WRITE;
/*!40000 ALTER TABLE `interest_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `interest_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_of_speech`
--

DROP TABLE IF EXISTS `part_of_speech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part_of_speech` (
  `id` int(11) NOT NULL,
  `pos` varchar(45) NOT NULL,
  `pos_value` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_of_speech`
--

LOCK TABLES `part_of_speech` WRITE;
/*!40000 ALTER TABLE `part_of_speech` DISABLE KEYS */;
INSERT INTO `part_of_speech` VALUES (1,'unknown','UNKNOWN'),(2,'adjective','ADJ'),(3,'adposition','ADP'),(4,'adverb','ADV'),(5,'conjunction','CONJ'),(6,'determiner','DET'),(7,'noun','NOUN'),(8,'cardinal number','NUM'),(9,'pronoun','PRON'),(10,'particle','PRT'),(11,'punctuation','PUNCT'),(12,'verb','VERB'),(13,'others','X'),(14,'affix','AFFIX');
/*!40000 ALTER TABLE `part_of_speech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predefined_activities`
--

DROP TABLE IF EXISTS `predefined_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predefined_activities` (
  `id` int(11) NOT NULL,
  `verb` varchar(45) NOT NULL,
  `object` varchar(100) NOT NULL,
  `to_be_processed_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predefined_activities`
--

LOCK TABLES `predefined_activities` WRITE;
/*!40000 ALTER TABLE `predefined_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `predefined_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relation` (
  `id` int(11) NOT NULL,
  `relation` varchar(100) NOT NULL,
  `relation_value` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation`
--

LOCK TABLES `relation` WRITE;
/*!40000 ALTER TABLE `relation` DISABLE KEYS */;
INSERT INTO `relation` VALUES (1,'unknown','UNKNOWN'),(2,'abbrevuation modifier','ABBREV'),(3,'adjectival complement','ACOMP'),(4,'adverbial clause modifier','ADVCL'),(5,'adverbial modifier','ADVMOD'),(6,'adjectival modifier of an NP','AMOD'),(7,'appositional modifer of an NP','APPOS'),(8,'attribute dependent of a copular verb','ATTR'),(9,'auxiliary verb','AUX'),(10,'passive auxialiary','AUXPASS'),(11,'coordinating conjunction','CC'),(12,'clausal complement of a ver or adjective','CCOMP'),(13,'conjunct','CONJ'),(14,'clausal subject','CSUBJ'),(15,'clausal passive subject','CSUBJPASS'),(16,'dependency','DEP'),(17,'determiner','DET'),(18,'discourse','DISCOURSE'),(19,'direct object','DOBJ'),(20,'expletive','EXPL'),(21,'goes with','GOESWITH'),(22,'indirect object','IOBJ'),(23,'marker','MARK'),(24,'multi-word expression','MWE'),(25,'multi-word verbal expression','MWV'),(26,'negation modifier','NEG'),(27,'noun compound modifier','NN'),(28,'noun phrase used as an adverbial modifier','NPADVMOD'),(29,'nominal subject','NSUBJ'),(30,'passive nominal subject','NSUBJPASS'),(31,'numeric modifier of a noun','NUM'),(32,'element of compound number','NUMBER'),(33,'punctuation mark','P'),(34,'parataxis relation','PARATAXIS'),(35,'participial modifier','PARTMOD'),(36,'complement of a preposition is a clause','PCOMP'),(37,'object of a preposition','POBJ'),(38,'possession modifier','POSS'),(39,'postverbal negative particle','POSTENG'),(40,'predicate complement','PRECOMP'),(41,'preconjunt','PRECONJ'),(42,'predeterminer','PREDET'),(43,'prefix','PREF'),(44,'prepositional modifier','PREP'),(45,'relationship between a verb and verbal morpheme','PRONL'),(46,'particle','PRT'),(47,'associative or possessive marker','PS'),(48,'quantifier phrase modifier','QUANTMOD'),(49,'relative clause modifier','RCMOD'),(50,'complementizer in relative clause','RCMODREL'),(51,'ellipses without a preceding predicate','RDROP'),(52,'referent','REF'),(53,'remnant','REMNANT'),(54,'reparandum','REPARANDUM'),(55,'root','ROOT'),(56,'suffix specifying a unit of numbre','SNUM'),(57,'suffix','SUFF'),(58,'temporal modifier','TMOD'),(59,'topic marker','TOPIC'),(60,'clause headed by an infinite form of the verb that modifies a noun','VMOD'),(61,'vocative','VOCATIVE'),(62,'open clausal complement','XCOMP'),(63,'name suffix','SUFFIX'),(64,'name title','TITLE'),(65,'adverbial phrase modifier','ADVPHMOD'),(66,'causative auxiliary','AUXCAUS'),(67,'helper auxiliary','AUXVV'),(68,'rentaishi','DTMOD'),(69,'foreign words','FOREIGN'),(70,'keyword','KW'),(71,'list for chains of comparable items','LIST'),(72,'normalized clause','NOMC'),(73,'normalized clausal subject','NOMCSUBJ'),(74,'normalized clausal passive','NOMCSUBJPASS'),(75,'compound of numeric modifier','NUMC'),(76,'copula','COP'),(77,'dislocated relation','DISLOCATED');
/*!40000 ALTER TABLE `relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupID` int(11) NOT NULL,
  `template` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
INSERT INTO `template` VALUES (1,1,'<name><optional_clause><intro_current_education>'),(2,1,'<name><optional_clause><intro_current_work>'),(3,1,'<name><optional_clause><birth_circumstances>'),(4,2,'<birth_circumstances>'),(5,2,'a <age>-year old <gender>'),(6,3,'born on <birthday>'),(7,3,'was born on <birthday>'),(8,3,'born on <birthday> in <birth_city>'),(9,3,'was born on <birthday> in <birth_city>'),(10,4,'he is from <hometown>, and is now living in <location>'),(11,4,'she is from <hometown>, and is now living in <location>'),(12,4,'he hails from <hometown>, and is living in <location>'),(13,4,'she hails from <hometown>, and is living in <location>'),(14,4,'he hailed from <hometown>, and is now living in <location>'),(15,4,'she hailed from <hometown>, and is now living in <location>'),(16,4,'<intro_education> and <intro_current_work>'),(17,4,'<intro_education> and <intro_current_education>'),(18,4,'<intro_education>'),(19,5,'is now studying at <institution>'),(20,5,'is now working at <institution>'),(21,5,'worked from <job_start> to <job_end> at <institution>'),(22,5,'worked from <job_start> to <job_end> at <institution> and <intro_current_work>'),(23,5,'worked from <job_start> to <job_end> at <institution> and <intro_current_education>'),(24,5,'<name> graduated grade school in <institution> <intro_education_time>'),(25,5,'<name> graduated high school in <institution> <intro_education_time>'),(26,5,'<name> graduated college  in <institution> <intro_education_time>'),(27,5,'<name> got his grade school diploma from <institution> <intro_education_time>'),(28,5,'<name> got his high school diploma from <institution> <intro_education_time>'),(29,5,'<name> got his college diploma from <institution> <intro_education_time>'),(30,5,'<name> got her grade school diploma from <institution> <intro_education_time>'),(31,5,'<name> got her high school diploma from <institution> <intro_education_time>'),(32,5,'<name> got her college diploma from <institution> <intro_education_time>'),(33,6,'last <grad_year>'),(34,6,'in <grad_year>'),(35,6,'on <grad_year>'),(36,7,'he <intro_current_education>'),(37,7,'she <intro_current_education>'),(38,7,'he <intro_current_work>'),(39,7,'she <intro_current_work>'),(40,7,'he is the son of <father> and <mother>'),(41,7,'she is the daughter of <father> and <mother>'),(42,7,'he is the son of <father>'),(43,7,'he is the son of <mother>'),(44,7,'she is the daughter of <father>'),(45,7,'she is the son of <mother>');
/*!40000 ALTER TABLE `template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_group`
--

DROP TABLE IF EXISTS `template_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_group`
--

LOCK TABLES `template_group` WRITE;
/*!40000 ALTER TABLE `template_group` DISABLE KEYS */;
INSERT INTO `template_group` VALUES (1,'intro_first_sentence'),(2,'intro_optional'),(3,'intro_birth_circumstances'),(4,'intro_second_sentence'),(5,'intro_education'),(6,'intro_education_time'),(7,'intro_current_education'),(8,'intro_current_work'),(9,'intro_later_sentences');
/*!40000 ALTER TABLE `template_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_be_processed`
--

DROP TABLE IF EXISTS `to_be_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_be_processed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(500) DEFAULT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  `tagged` varchar(200) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_be_processed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-27 23:20:53
