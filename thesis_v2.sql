-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: thesis_v2
-- ------------------------------------------------------
-- Server version	5.7.10

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
-- Table structure for table `co_locating_words`
--

DROP TABLE IF EXISTS `co_locating_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_locating_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_locating_word` varchar(45) NOT NULL,
  `post_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_locating_words`
--

LOCK TABLES `co_locating_words` WRITE;
/*!40000 ALTER TABLE `co_locating_words` DISABLE KEYS */;
INSERT INTO `co_locating_words` VALUES (1,'Thank you',1),(2,'Get',1),(3,'New',1),(4,'Pay',1),(5,'Salary',1),(6,'Buy',1),(7,'Birthday',2),(8,'Celebrate',2),(9,'God bless',2),(10,'Bless',2),(11,'Wish',2),(12,'Happy',2),(13,'Season',3),(14,'Watch',3),(15,'Netflix',3),(16,'iflix',3),(17,'TV Series',3),(18,'TV',3),(19,'Movie',3),(20,'Film',3),(21,'Cinema',3),(22,'Theatre',3),(23,'Finished watching',3),(24,'Play',4),(25,'Video game',4),(26,'Game',4),(27,'Platinum',4),(28,'Trophy',4),(29,'Achievement',4),(30,'Finished playing',4),(31,'PS4',4),(32,'XBOX',4),(33,'PC',4),(34,'Vita',4),(35,'Cook',5),(36,'Eat',5),(37,'Dine',5),(38,'Breakfast',5),(39,'Lunch',5),(40,'Dinner',5),(41,'Chicken',5),(42,'Burger',5),(43,'Grill',5),(44,'Bake',5),(45,'Fry',5),(46,'Knit',6),(47,'Do',6),(48,'Create',6),(49,'Make',6),(50,'Craft',6),(51,'Cheers',7),(52,'Drink',7),(53,'Drunk',7),(54,'Club',7),(55,'Bar',7),(56,'Beer',7),(57,'Shot',7),(58,'Beer pong',7),(59,'Listen',8),(60,'Music',8),(61,'Sound',8),(62,'Album',8),(63,'Artist',8),(64,'Chart',8),(65,'Read',9),(66,'Book',9),(67,'Finished reading',9),(68,'Done reading',9),(69,'Chapter',9),(70,'Author',9),(71,'Publish',9),(72,'Book series',9),(73,'Go',10),(74,'Travel',10),(75,'At',10),(76,'Visit',10),(77,'Drive',10),(78,'Road',10),(79,'Place',10),(80,'Far',10),(81,'Miss',11),(82,'Remember',11),(83,'Reminisce',11),(84,'Here',12),(85,'Attend',12),(86,'Event',12),(87,'Think',13),(88,'Should',13),(89,'Maybe',13),(90,'Probably',13),(91,'Opinion',13),(92,'Honest',13),(93,'Funny',14),(94,'Wow',14),(95,'Haha',14),(96,':))',14);
/*!40000 ALTER TABLE `co_locating_words` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (19,'05/25/1996','birthday'),(20,'Robee Khyra','first_name'),(21,NULL,'middle_name'),(22,'Te','last_name'),(23,'Manila, Philippines','location'),(24,'Manila, Philippines','hometown');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (7,'Chiang Kai Shek College','',2013,NULL,'105584222807516'),(8,'De La Salle University','',0000,'Bachelor of Science in Computer Science with specialization in Software Technology','112961752051469');
/*!40000 ALTER TABLE `educational_bg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educational_bg_type`
--

DROP TABLE IF EXISTS `educational_bg_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educational_bg_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `educational_bg` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg_type`
--

LOCK TABLES `educational_bg_type` WRITE;
/*!40000 ALTER TABLE `educational_bg_type` DISABLE KEYS */;
INSERT INTO `educational_bg_type` VALUES (1,'Grade School'),(2,'High School'),(3,'College');
/*!40000 ALTER TABLE `educational_bg_type` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (76,'Publication Writing Workshop','attending',NULL,NULL,NULL,'958282690938493'),(77,'LSCS Christmas Party!','attending','The Manila Residences Tower II','Manila','Philippines','341032832938478'),(78,'CCS Month 2016: Festivo','attending','Henry Sy Bldg, De La Salle University - Manila','Manila','Philippines','298533423821364'),(79,'Technology Summit 2016 Forum','attending','De La Salle University','Manila','Philippines','1175552835819020'),(80,'Can You be My Data Symposium','attending','A1703',NULL,NULL,'825768760867204'),(81,'IV-4 Christmas Lunch','attending','Wellington Building,Binondo','Manila','Philippines','889971251118074'),(82,'Lelilu (Ja)','attending','Sofitel Philippine Plaza Manila','Pasay City','Philippines','852552214799271'),(83,'COAN (CCS Organizations Awards Night)','attending','Br. Andrew Gonzalez 20th Floor Multipurpose Hall',NULL,NULL,'1591417681116459'),(84,'KPUB PLAN :)','attending',NULL,NULL,NULL,'392126877613408'),(85,'AJT 18 :)','attending','Maynila Ballroom, Manila Hotel','Manila','Philippines','300090580164060'),(86,'CCS 113 Batch General Assembly!!','attending','Andrew Building, De La Salle University, 20th Floor',NULL,NULL,'832460290106779'),(87,'Your Numbers Please!','attending',NULL,NULL,NULL,'625614210868734'),(88,'LSCS AVP Recruitment Interview','attending',NULL,NULL,NULL,'502943683161517'),(89,'#Realtalk','attending','Y506-507',NULL,NULL,'169251693275082'),(90,'USG 101 Training','attending','Y605',NULL,NULL,'529974430413268'),(91,'CKSC Scout Center Junior Scouts Section Annual Investiture Ceremonies','attending',NULL,NULL,NULL,'837499316338935'),(92,'Closing and Court of Honor Ceremonies','attending',NULL,NULL,NULL,'814460095269513'),(93,'HaPpY nEw YeAr CoUnTdOwN','attending',NULL,NULL,NULL,'876796662387082'),(94,'Cartoon Character as Profile Pic','attending',NULL,NULL,NULL,'1070667136294827'),(95,'CHILLURZ','attending',NULL,NULL,NULL,'849200941812683'),(96,'Sophomore: \'GlamorZious\'  Selling Day!','attending',NULL,NULL,NULL,'803873129661694'),(97,'Pac Snak','attending',NULL,NULL,NULL,'842239915812455'),(98,'Pac snak!','attending',NULL,NULL,NULL,'930126637009380'),(99,'Scout@ 60  Enchanted Kingdom','attending',NULL,NULL,NULL,'982793118397606'),(100,'Scouts Fun Familia Day at Enchanted Kingdom','attending',NULL,NULL,NULL,'910449919012479');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (40,'Renee Khyleen Julia Te','sister','10206076325026895'),(41,'Ruzel Khyvin Te','brother','1418766314802474'),(42,'Mark Lao','cousin','10156906252794619'),(43,'Cksc Junior Angels','niece','1315889075168504'),(44,'Reg Chua','cousin','10154945239456103'),(45,'Berenice Myvanwy Chua','cousin','10158014987190109'),(46,'Jo Lao','cousin','10154541300544355'),(47,'Richie Chua','cousin','10155767991516632'),(48,'Marvin Lao','cousin','10158240021765160'),(49,'Katherine Ann Te','mother','10202453331650515'),(50,'Jennilyn Wang','sister','1513062718708116'),(51,'Julienne Kirsten Khoo','sister','10210127788929427'),(52,'Ian Quintin','father','1565602423454296');
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_relationship_type`
--

DROP TABLE IF EXISTS `family_relationship_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family_relationship_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relationship` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_relationship_type`
--

LOCK TABLES `family_relationship_type` WRITE;
/*!40000 ALTER TABLE `family_relationship_type` DISABLE KEYS */;
INSERT INTO `family_relationship_type` VALUES (1,'Mother'),(2,'Father'),(3,'Daughter'),(4,'Son'),(5,'Sister'),(6,'Brother'),(7,'Aunt'),(8,'Uncle'),(9,'Niece'),(10,'Nephew'),(11,'Cousin (male)'),(12,'Cousin (female)'),(13,'Grandmother'),(14,'Grandfather'),(15,'Granddaughter'),(16,'Grandson'),(17,'Stepsister'),(18,'Stepbrother'),(19,'Stepfather'),(20,'Stepmother'),(21,'Stepdaughter'),(22,'Stepson'),(23,'Sister-in-law'),(24,'Brother-in-law'),(25,'Father-in-law'),(26,'Mother-in-law'),(27,'Daughter-in-law'),(28,'Son-in-law'),(29,'Pet');
/*!40000 ALTER TABLE `family_relationship_type` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (76,'Technology Impact Summit 2017','Community','766192900200402'),(77,'Taft 4 Dead','Media/News Company','324002017689032'),(78,'RVR COB Week 2017','Community','745949118890804'),(79,'Elisa Tailor Shop','Clothing (Brand)','894856137309113'),(80,'MCG Design Center - Interior Designer','Fashion','172501926513937'),(81,'agoda','Travel Company','620309468141539'),(82,'Annyeong Oppa','Community','254206934910642'),(83,'KBS World','TV Channel','171137272905826'),(84,'Intel Philippines','Product/Service','148168013639'),(85,'Dreamcatcha','Local Business','165957140545763'),(86,'Romance of the Three Kingdoms','Community','229569884135072'),(87,'Green & White 2017','Media/News Company','715824991888959'),(88,'Facebook for Developers','Product/Service','19292868552'),(89,'Switch MNL','Clothing (Brand)','1843529465882955'),(90,'Lights Out','App Page','785062311600434'),(91,'Bliss Planner','Brand','1623004994640346'),(92,'TableTaft Boardgame CafÃ©','Restaurant','1683005318648904'),(93,'Team GG Fanpage','Fictional Character','850207778449225'),(94,'Ohnue shabu-shabu buffet','Restaurant','241535292901390'),(95,'Mi','Telecommunication Company','250677251634542'),(96,'OnePlus','Internet Company','424613314311146'),(97,'Lasallian Aide','Organization','684874025000236'),(98,'Anteriore Inc.','Computer Company','1773116882901210'),(99,'Kim Woo Bin Philippines','Organization','442133355799369'),(100,'Pokemon-Go','Entertainment Website','661667727331478');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_type`
--

DROP TABLE IF EXISTS `likes_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `likes` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_type`
--

LOCK TABLES `likes_type` WRITE;
/*!40000 ALTER TABLE `likes_type` DISABLE KEYS */;
INSERT INTO `likes_type` VALUES (1,'Actor/Director'),(2,'Aerospace/Defence'),(3,'Airport'),(4,'Album'),(5,'Amateur Sports Team'),(6,'App Page'),(7,'Appliances'),(8,'Artist'),(9,'Arts/Entertainment/Nightlife'),(10,'Attractions/Things to Do'),(11,'Author'),(12,'Baby Goods/Kids Goods'),(13,'Bags/Luggage'),(14,'Bank/Financial Services'),(15,'Bank/Financial Institution'),(16,'Bar'),(17,'Biotechnology'),(18,'Blogger'),(19,'Board Game'),(20,'Book'),(21,'Book Series'),(22,'Bookshop'),(23,'Building Materials'),(24,'Business Person'),(25,'Business Services'),(26,'Camera/Photo'),(27,'Cars'),(28,'Cars and Parts'),(29,'Cause'),(30,'Chef'),(31,'Chemicals'),(32,'Church/Religious Organisation'),(33,'Cinema'),(34,'Clothing'),(35,'Club'),(36,'Coach'),(37,'Comedian'),(38,'Commercial Equipment'),(39,'Community Organisation'),(40,'Community/Government'),(41,'Company'),(42,'Computers'),(43,'Computers/Technology'),(44,'Concert Tour'),(45,'Concert Venue'),(46,'Consulting/Business Services'),(47,'Concert Venue'),(48,'Dancer'),(49,'Designer'),(50,'DIY'),(51,'Doctor'),(52,'Education'),(53,'Entertainer'),(54,'Entrepreneur'),(55,'Electronics'),(56,'Energy/Utility'),(57,'Engineering/Construction'),(58,'Event Planning/Event Services'),(59,'Farming/Agriculture'),(60,'Fictional Character'),(61,'Film'),(62,'Film Character'),(63,'Food/Beverages'),(64,'Food/Groceries'),(65,'Furniture'),(66,'Games/Toys'),(67,'Government Official'),(68,'Health/Beauty'),(69,'Health/Medical/Pharmaceuticals'),(70,'Health/Medical/Pharmacy'),(71,'Home Decor'),(72,'Hospital/Clinic'),(73,'Hotel'),(74,'Household Supplies'),(75,'Industrials'),(76,'Insurance Company'),(77,'Internet/Software'),(78,'Jewellry/Watches'),(79,'Journalist'),(80,'Kitchen/Cooking'),(81,'Landmark'),(82,'Lawyer'),(83,'Legal/Law'),(84,'Library'),(85,'Local Business'),(86,'Magazine'),(87,'Media/News/Publishing'),(88,'Medications'),(89,'Middle School'),(90,'Mining/Materials'),(91,'Movie'),(92,'Museum/Art Gallery'),(93,'Musician/Band'),(94,'Music Award'),(95,'Music Chart'),(96,'Music Video'),(97,'News Personality'),(98,'Non-governmental Organisation (NGO)'),(99,'Non-profit Organisation'),(100,'Office Supplies'),(101,'Organisation'),(102,'Outdoor Gear/Sporting Goods'),(103,'Patio/Garden'),(104,'Performance Art'),(105,'Pet'),(106,'Pet Services'),(107,'Pet Supplies'),(108,'Phone/Tablet'),(109,'Photographer'),(110,'Political Organisation'),(111,'Political Party'),(112,'Politician'),(113,'Preschool'),(114,'Primary School'),(115,'Producer'),(116,'Product/Service'),(117,'Professional Service'),(118,'Property'),(119,'Public Figure'),(120,'Public Places'),(121,'Radio Station'),(122,'Record Label'),(123,'Restaurant/Cafe'),(124,'Retail and Consumer Merchandise'),(125,'School'),(126,'School Sports Team'),(127,'Scientist'),(128,'Shopping/Retail'),(129,'Small Business'),(130,'Song'),(131,'Software'),(132,'Spas/Beauty/Personal Care'),(133,'Sports League'),(134,'Sports Team'),(135,'Sports Venue'),(136,'Sportsperson'),(137,'Sports/Recreation/Activities'),(138,'Teacher'),(139,'Telecommunication'),(140,'Theatrical Play'),(141,'Tools/Equipment'),(142,'Tours/Sightseeing'),(143,'Transport'),(144,'Transport/Freight'),(145,'Travel/Leisure'),(146,'TV Channel'),(147,'TV Network'),(148,'TV Programme'),(149,'TV Show'),(150,'TV/Film Award'),(151,'University'),(152,'Vehicles'),(153,'Video Game'),(154,'Vitamins/Supplements'),(155,'Website'),(156,'Wine/Spirits'),(157,'Writer');
/*!40000 ALTER TABLE `likes_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_of_speech_type`
--

DROP TABLE IF EXISTS `part_of_speech_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part_of_speech_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos` varchar(45) NOT NULL,
  `pos_value` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_of_speech_type`
--

LOCK TABLES `part_of_speech_type` WRITE;
/*!40000 ALTER TABLE `part_of_speech_type` DISABLE KEYS */;
INSERT INTO `part_of_speech_type` VALUES (1,'Coordinating conjunction','CC'),(2,'Cardinal number','CD'),(3,'Determiner','DT'),(4,'Existential there','EX'),(5,'Foreign word','FW'),(6,'Preposition or subordinating conjunction','IN'),(7,'Adjective','JJ'),(8,'Adjective, comparative','JJR'),(9,'Adjective, superlative','JJS'),(10,'List item marker','LS'),(11,'Modal','MD'),(12,'Noun, singular or mass','NN'),(13,'Noun, plural','NNS'),(14,'Proper noun, singular','NNP'),(15,'Proper noun, plural','NNPS'),(16,'Predeterminer','PDT'),(17,'Possesive ending','POS'),(18,'Personal pronoun','PRP'),(19,'Possessive pronoun (prolog version PRP-S)','PRP$'),(20,'Adverb','RB'),(21,'Adverb, comparative','RBR'),(22,'Adverb, superlative','RBS'),(23,'Particle','RP'),(24,'Symbol','SYM'),(25,'to','TO'),(26,'Interjection','UH'),(27,'Verb, base form','VB'),(28,'Verb, past tense','VBD'),(29,'Verb, gerund or present participle','VBG'),(30,'Verb, past participle','VBN'),(31,'Verb, non-3rd person singular present','VBP'),(32,'Verb, 3rd person singular present','VBZ'),(33,'Wh-determiner','WDT'),(34,'Wh-pronoun','WP'),(35,'Possessive wh-pronoun (prolog version WP-S)','WP$'),(36,'Wh-adverb','WRB');
/*!40000 ALTER TABLE `part_of_speech_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_type`
--

DROP TABLE IF EXISTS `post_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_type`
--

LOCK TABLES `post_type` WRITE;
/*!40000 ALTER TABLE `post_type` DISABLE KEYS */;
INSERT INTO `post_type` VALUES (1,'New item'),(2,'Celebrating'),(3,'Watching'),(4,'Playing video games'),(5,'Eating'),(6,'Making'),(7,'Drinking'),(8,'Music'),(9,'Reading'),(10,'Traveling'),(11,'Remembering'),(12,'Event'),(13,'Opinion'),(14,'Humor');
/*!40000 ALTER TABLE `post_type` ENABLE KEYS */;
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
-- Table structure for table `relation_type`
--

DROP TABLE IF EXISTS `relation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relation_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation` varchar(100) NOT NULL,
  `relation_value` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_type`
--

LOCK TABLES `relation_type` WRITE;
/*!40000 ALTER TABLE `relation_type` DISABLE KEYS */;
INSERT INTO `relation_type` VALUES (1,'adjectival complement','acomp'),(2,'adverbial clause modifier','advcl'),(3,'adverb modifier','advmod'),(4,'agent','agent'),(5,'adjectival modifier','amod'),(6,'appositional modifier','appos'),(7,'auxiliary','aux'),(8,'passive auxiliary','auxpass'),(9,'coordination','cc'),(10,'clausal complement','ccomp'),(11,'conjunct','conj'),(12,'copula','cop'),(13,'clausal subject','csubj'),(14,'clausal passive subject','csubjpass'),(15,'dependent','dep'),(16,'determiner','det'),(17,'discourse element','discourse'),(18,'direct object','dobj'),(19,'expletive','expl'),(20,'goes with','goeswith'),(21,'indirect object','iobj'),(22,'marker','mark'),(23,'multi-word expression','mwe'),(24,'negation modifier','neg'),(25,'noun compound modifier','nn'),(26,'noun phrase as adverbial modifier','npadvmod'),(27,'nominal subject','nsubj'),(28,'passive nominal subject','nsubjpass'),(29,'numeric modifier','num'),(30,'element of compound number','number'),(31,'parataxis','parataxis'),(32,'prepositional complement','pcomp'),(33,'object of a preposition','pobj'),(34,'possession modifier','poss'),(35,'possessive modifier','possessive'),(36,'preconjunct','preconj'),(37,'predeterminer','predet'),(38,'prepositional modifier','prep'),(39,'prepositional clausal modifier','prepc'),(40,'phrasal verb particle','prt'),(41,'punctuation','punct'),(42,'quantifier phrase modifier','quantmod'),(43,'relative clause modifier','rcmod'),(44,'referent','ref'),(45,'root','root'),(46,'temporal modifier','tmod'),(47,'reduced non-finite verbal modifier','vmod'),(48,'open clausal complement','xcomp'),(49,'controlling subject','xsubj');
/*!40000 ALTER TABLE `relation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `id` int(11) NOT NULL,
  `story_intro` varchar(1000) NOT NULL,
  `story_body` varchar(1000) NOT NULL,
  `story_con` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
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
  `birthday` int(11) NOT NULL,
  `work` int(11) NOT NULL,
  `family` int(11) NOT NULL,
  `education` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `hometown` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
INSERT INTO `template` VALUES (1,1,'<name><intro_optional><intro_current_education>',0,0,0,0,0,0,0),(2,1,'<name><intro_optional><intro_current_work>',0,0,0,0,0,0,0),(3,1,'<name><intro_optional><intro_birth_circumstances>',0,0,0,0,0,0,0),(4,2,'<intro_birth_circumstances>',1,0,0,0,0,0,0),(5,2,'a <age>-year old <gender>',1,0,0,0,0,0,1),(6,3,'born on <birthday>',1,0,0,0,0,0,0),(7,3,'was born on <birthday>',1,0,0,0,0,0,0),(8,1,'born on <birthday> in <birth_city>',1,0,0,0,0,0,0),(9,1,'was born on <birthday> in <birth_city>',1,0,0,0,0,0,0),(10,4,'he is from <hometown>, and is now living in <location>',0,0,0,0,1,1,0),(11,4,'she is from <hometown>, and is now living in <location>',0,0,0,0,1,1,0),(12,4,'he hails from <hometown>, and is living in <location>',0,0,0,0,1,1,0),(13,4,'she hails from <hometown>, and is living in <location>',0,0,0,0,1,1,0),(14,4,'he hailed from <hometown>, and is now living in <location>',0,0,0,0,1,1,0),(15,4,'she hailed from <hometown>, and is now living in <location>',0,0,0,0,1,1,0),(16,1,'<intro_education> and <intro_current_work>',0,0,0,0,0,0,0),(17,1,'<intro_education> and <intro_current_education>',0,0,0,0,0,0,0),(18,1,'<intro_education>',0,0,0,0,0,0,0),(19,1,'is now studying at <institution>',0,0,0,1,0,0,0),(20,11,'is now working at <institution>',0,1,0,0,0,0,0),(21,11,'worked from <job_start> to <job_end> at <institution>',0,1,0,0,0,0,0),(22,1,'worked from <job_start> to <job_end> at <institution> and <intro_current_work>',0,1,0,0,0,0,0),(23,1,'worked from <job_start> to <job_end> at <institution> and <intro_current_education>',0,1,0,0,0,0,0),(24,7,'graduated grade school in <institution> <intro_education_time>',0,0,0,1,0,0,0),(25,8,'graduated high school in <institution> <intro_education_time>',0,0,0,1,0,0,0),(26,9,'graduated college  in <institution> <intro_education_time>',0,0,0,1,0,0,0),(27,7,'got his grade school diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(28,8,'got his high school diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(29,9,'got his college diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(30,7,'got her grade school diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(31,8,'got her high school diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(32,9,'got her college diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(33,10,'last <grad_year>',0,0,0,1,0,0,0),(34,10,'in <grad_year>',0,0,0,1,0,0,0),(35,10,'on <grad_year>',0,0,0,1,0,0,0),(36,1,'he <intro_current_education>',0,0,0,0,0,0,0),(37,1,'she <intro_current_education>',0,0,0,0,0,0,0),(38,1,'he <intro_current_work>',0,0,0,0,0,0,0),(39,1,'she <intro_current_work>',0,0,0,0,0,0,0),(40,12,'he is the son of <father> and <mother>',0,0,1,0,0,0,0),(41,12,'she is the daughter of <father> and <mother>',0,0,1,0,0,0,0),(42,12,'he is the son of <father>',0,0,1,0,0,0,0),(43,12,'he is the son of <mother>',0,0,1,0,0,0,0),(44,12,'she is the daughter of <father>',0,0,1,0,0,0,0),(45,12,'she is the son of <mother>',0,0,1,0,0,0,0),(46,5,'is living in <location>',0,0,0,0,1,0,0),(47,6,'is from <hometown>',0,0,0,0,0,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_group`
--

LOCK TABLES `template_group` WRITE;
/*!40000 ALTER TABLE `template_group` DISABLE KEYS */;
INSERT INTO `template_group` VALUES (1,'intro_first_sentence'),(2,'intro_birthday'),(3,'intro_birth_circumstances'),(4,'location, hometown'),(5,'intro_location'),(6,'intro_hometown'),(7,'intro_education_gs'),(8,'intro_education_hs'),(9,'intro_education_college'),(10,'intro_education_time'),(11,'intro_current_work'),(12,'intro_family');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (11,'Miss ko na to :(','10202715590848662','Janica Mae Lam, Janine Tan, Bianca Regala, Raisa Gennel Lee, ',NULL,NULL,NULL,'2017','01','17'),(12,'Si Miguel Sietereales adik na dba Janine Tan?','10202687959477895','',NULL,NULL,NULL,'2017','01','10'),(13,'Met back during 4th year HS, and now we\'re in 4th year college ð­ð·\n*insert Jannie and Madge*','10202630051750238','Jennilyn Wang, Julienne Kirsten Khoo, Shanelle Briette Yu, Alyssa Ramirez, ','Todd English Food Hall Manila','Taguig','Philippines','2016','12','27'),(14,'','10202620046300108','',NULL,NULL,NULL,'2016','12','24'),(15,'THS-ST1 â','10202514342657583','Janica Mae Lam, Camille Saavedra, Alds Hade, ',NULL,NULL,NULL,'2016','12','01'),(16,'Miss ko na to :(','10202715590848662','Janica Mae Lam, Janine Tan, Bianca Regala, Raisa Gennel Lee, ',NULL,NULL,NULL,'2017','01','17'),(17,'Si Miguel Sietereales adik na dba Janine Tan?','10202687959477895','',NULL,NULL,NULL,'2017','01','10'),(18,'Met back during 4th year HS, and now we\'re in 4th year college ð­ð·\n*insert Jannie and Madge*','10202630051750238','Jennilyn Wang, Julienne Kirsten Khoo, Shanelle Briette Yu, Alyssa Ramirez, ','Todd English Food Hall Manila','Taguig','Philippines','2016','12','27'),(19,'','10202620046300108','',NULL,NULL,NULL,'2016','12','24'),(20,'THS-ST1 â','10202514342657583','Janica Mae Lam, Camille Saavedra, Alds Hade, ',NULL,NULL,NULL,'2016','12','01');
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

-- Dump completed on 2017-02-23 20:04:16
