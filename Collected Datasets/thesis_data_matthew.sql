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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'PERSON'),(2,'LOCATION'),(3,'ORGANIZATION'),(4,'MISC'),(5,'MONEY'),(6,'NUMBER'),(7,'ORDINAL'),(8,'PERCENT'),(9,'DATE'),(10,'TIME'),(11,'DURATION'),(12,'SET'),(13,'O');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

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
  `data` varchar(5000) DEFAULT 'null',
  `type` varchar(5000) DEFAULT 'null',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (116,'12/03/1997','birthday'),(117,'Matthew','first_name'),(118,NULL,'middle_name'),(119,'De Dios','last_name'),(120,'male','gender'),(121,'','location'),(122,'','hometown');
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
  `institution` varchar(5000) DEFAULT NULL,
  `type` varchar(5000) DEFAULT NULL,
  `yr_graduated` year(4) DEFAULT NULL,
  `course` varchar(5000) DEFAULT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (37,'Ateneo de Manila High School','High School',0000,NULL,'110915725599192'),(38,'De La Salle University','College',2019,'Industrial Engineering','127612997282544');
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
  `name` varchar(5000) DEFAULT NULL,
  `rsvp_status` varchar(45) DEFAULT NULL,
  `place` varchar(5000) DEFAULT NULL,
  `city` varchar(5000) DEFAULT NULL,
  `country` varchar(5000) DEFAULT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1014,'De La Salle DWTL MS Batch 203','attending',NULL,NULL,NULL,'1845783289025684'),(1015,'Franz\'s 20th','attending','Pablo\'s Pub and Restaurant','Taguig','Philippines','1050491128392119'),(1016,'Alfonso\'s 21st Birthday/Manbut','attending','Vu\'s Sky Bar and Lounge Marco Polo Ortigas','Pasig','Philippines','193591351092982'),(1017,'18th','attending','24 Don Jose st. Don Antonio Heights Quezon City',NULL,NULL,'1830468330523986'),(1018,'FAITH 12','attending','Xavier School','Manila','Philippines','1255853521123425'),(1019,'37th Year Anniversary: SEA Games - 1st General Assembly','attending','4th Floor Multipurpose Room, Henry Sy Sr. Hall',NULL,NULL,'257462927982785'),(1020,'Alex @ 18','attending','The Palace Pool Club','Fort Bonifacio','Philippines','106377653149664'),(1021,'Surprise debut + despedida!','attending','Manila Polo Club Turf B',NULL,NULL,'237123956656098'),(1022,'Babble Reunion/Despediad','attending','bahay ko',NULL,NULL,'588565411317076'),(1023,'KC 18','attending','CHAOS Night Club at City of Dreams Manila','ParaÃ±aque','Philippines','1134839166554047'),(1024,'BEA IS 18','attending','Clubhouse Swimming Pool Filinvest 1','Quezon City','Philippines','827757604016656'),(1025,'CTK 31','attending','Xavier School','Manila','Philippines','812901698846510'),(1026,'#DazzlingDyp19 #JustJay19 #MagnificentMartin19','attending','Blue Ridge B, Quezon City',NULL,NULL,'1531659280479450'),(1027,'Pat\'s 18th birthday surprise','attending','St. Luke\'s Medical Center 279 E. Rodriguez Sr. Boulevard, Quezon City Metro Manila, Philippines. ',NULL,NULL,'1527150317603054'),(1028,'Ry @ 18','attending','Greenmeadows Clubhouse, Warbler St., Greenmeadows, QC',NULL,NULL,'836618986455820'),(1029,'Trizia\'s 18th','attending','Grandview Events Place','Makati','Philippines','1386421214998757'),(1030,'#Final4wardDLSU Movement','attending','Smart Araneta Coliseum','Cubao','Philippines','444502802341288'),(1031,'Mai\'s Surprise 18th','attending','Cerchio Grill & Lounge','Quezon City','Philippines','703955879735778'),(1032,'Bostre\'s 18th','attending','The KEG','Taguig','Philippines','453226424863598'),(1033,'Trina\'s 18th','attending','Moonshine PUB x Public Urban Bar','Pasig','Philippines','375239062681792'),(1034,'Julianne at 18','attending','Blue Leaf Silk Pavilion, Mckinley Hill Village, Fort Bonifacio','Taguig','Philippines','103323116688504'),(1035,'Nucci\'s 18th','attending','Valkyrie, the Palace, Uptown BGC Mezzanine 1-6',NULL,NULL,'1630172973928634'),(1036,'#Rianna18','attending','Ayala Hillside Clubhouse','Quezon City','Philippines','1584286895168951'),(1037,'AJMA LAUNCH 1516','attending','Decagon, Silver City, Pasig, Philippines',NULL,NULL,'451903568344760'),(1038,'FAITH DWTL BATCH 9','attending','Ateneo John Pollock Renewal Center','ParaÃ±aque','Philippines','552839951531467'),(1039,'CTK 30','attending','LEAP School For Young Children','Quezon City','Philippines','771181926332468'),(1040,'Nikki\'s 18th','attending','The Grove by Rockwell 117 E. Rodriguez Jr. Ave. (C5),  Barangay Ugong, Pasig City ',NULL,NULL,'1596387447297771'),(1041,'Missy\'s Eighteenth!','attending','The Blue Leaf','Taguig','Philippines','863415223727345'),(1042,'Served/ Only For The Strong','attending','Henry-Lee Irwin Theater, ADMU','Quezon City','Philippines','494461287373771'),(1043,'Nikki\'s 18th','attending','Moksha','San Juan','Philippines','397014063820191'),(1044,'Sharlaine Alexis 18','attending','The Glass Garden','Pasig','Philippines','1649000165323098'),(1045,'#SHARnival','attending','Social Hall, Ayala Hillside Clubhouse, Quezon City',NULL,NULL,'463344917161915'),(1046,'SURPRISE MUTHAFUCKA','attending','4 Homer St., FIlinvest Homes East, Marcos Highway, Cainta',NULL,NULL,'365306360330662'),(1047,'DREAM.','attending','Henry-Lee Irwin Theater, ADMU','Quezon City','Philippines','480762355409242'),(1048,'CTK 29 Evals and Movie Night','unsure',' 571 Mariano Marcos St. Barangay Maytunas San Juan',NULL,NULL,'396414507209877'),(1049,'Meggy\'s 18th!','attending','Loyola Grand Villas Quezon City','Quezon City','Philippines','844642345596130'),(1050,'#BORACRAY2015','attending',NULL,NULL,NULL,'1497447800540494'),(1051,'18','attending',NULL,NULL,NULL,'1549995695272013'),(1052,'FAITH DWTL BATCH 7','attending','Xavier School','San Juan','Philippines','860765700633045'),(1053,'nanabeng\'s ballposal!!!!','attending',NULL,NULL,NULL,'1531942750402963'),(1054,'Ateneo VS De La Salle Zobel','attending','FEU-FERN College','Quezon City','Philippines','1048137638535657'),(1055,'Kat\'s 18th Birthday Celebration','attending','Whitespace Manila','Makati','Philippines','1551956331720572'),(1056,'Teatro Paulino Season 6: Blue Jeans the Musical','attending','Bishop Frederick Rooker Auditorium St. Paul College Pasig','Pasig','Philippines','613497548782677'),(1057,'18th','attending','Aracama-Filipino Cuisine, Global City','Taguig','Philippines','991643847519612'),(1058,'Bee Gees (4B 4G soirÃ©e)','attending',NULL,NULL,NULL,'721258171321479'),(1059,'CTK 29','attending','LEAP School For Young Children','Quezon City','Philippines','1524165341177781'),(1060,'M','attending',NULL,NULL,NULL,'331459277045305'),(1061,'Numbers pls','attending',NULL,NULL,NULL,'1507802979495702'),(1062,'Despidida','unsure','Ymca Hotel, 7 Sacred Heart Street, San Antonio, Makati City',NULL,NULL,'741211092635802'),(1063,'Ry\'s 17th Birthday!!','attending','Valle Verde 1 Clubhouse','Pasig','Philippines','717816114977195'),(1064,'Exsto: Picnic. Movie. Concert.','attending',NULL,NULL,NULL,'571332066346661'),(1065,'Rosehill & Ateneo SoirÃ©e (section G)','attending','9 Riviera Street, Saint Ignatius Quezon City',NULL,NULL,'396644583834531'),(1066,'FAITH DWTL BATCH 6','attending','Fr.John Pollock Renewal Center',NULL,NULL,'1536353436580112'),(1067,'48th Anniversary Mass','attending',NULL,NULL,NULL,'1548614172020774'),(1068,'Veo: The Neon Runcert','attending','Ateneo de Manila High School','Quezon City','Philippines','1694807820744398'),(1069,'Numbers!','attending',NULL,NULL,NULL,'1542087986008346'),(1070,'Gio\'s 14th bday','attending','Valle Verde 3 Pasig City','Pasig','Philippines','1552649124971329'),(1071,'SPECTRUM: Run The Night','attending',NULL,NULL,NULL,'773525576041894'),(1072,'SSS (Senior Saturday Salubong)','attending','Capitol Green Street','Quezon City','Philippines','1476772805913615'),(1073,'SENIOR SATURDAY','attending','The Annex Penthouse, #24 Gen. Araneta St. corner Gen. Atienza St., San Antonio Village, Pasig City',NULL,NULL,'263657053838645'),(1074,'Coup De Grace 3: Supremacy','attending','Ateneo de Manila High School','Quezon City','Philippines','461186380653611'),(1075,'Numbers, please.','attending',NULL,NULL,NULL,'565493663527326'),(1076,'WR-AHS Soiree','attending','23 North Concha Cruz Drive Extension, Paranaque City',NULL,NULL,'622140574503504'),(1077,'Liwanag 2013','unsure','Albergus','Quezon City','Philippines','591778814198896'),(1078,'3G St. Paul soirÃ©e','attending','71 del pilar st. Ayala heights',NULL,NULL,'533527066706911'),(1079,'Numbers','attending',NULL,NULL,NULL,'462377020510032'),(1080,'Punta Fuego','attending','Peninsula De Punta Fuego','Nasugbu','Philippines','436050366478469'),(1081,'Ateneo High School Batch 2015 Sophomores\' Night: Encanta el Sur','attending',NULL,NULL,NULL,'199077450217016'),(1082,'In 2013 I will watch 2012 and LAUGH!!','attending',NULL,NULL,NULL,'813352655380106'),(1083,'Numbers !!','attending',NULL,NULL,NULL,'349651098467322'),(1084,'Pins And Numbers Please :)','attending',NULL,NULL,NULL,'169179796556873'),(1085,'Birthday Party','unsure',NULL,NULL,NULL,'474650179242059'),(1086,'Number and BBM pins :))','attending',NULL,NULL,NULL,'397779450264711'),(1087,'2B-2G SOIREE âº','attending',NULL,NULL,NULL,'341888789227544'),(1088,'II-4 and 2G! :)','attending',NULL,NULL,NULL,'301034279995560'),(1089,'Numbers!!','attending',NULL,NULL,NULL,'273691126065136'),(1090,'Numbers and bbm pins please!','attending',NULL,NULL,NULL,'169214429878375'),(1091,'Dulaang Sibol\'s \"Hervacio Tubulan\" - June 22, 2012','attending',NULL,NULL,NULL,'338017609599852'),(1092,'Dulaang Sibol\'s \"Hervacio Tubulan\" - June 8, 2012','attending',NULL,NULL,NULL,'371085709621226'),(1093,'Numbers Please! :)','attending',NULL,NULL,NULL,'423355437694787'),(1094,'Can I Ha\' Yo\' Numbuh ','attending',NULL,NULL,NULL,'316263941784670'),(1095,'Numbers pls :)))','attending',NULL,NULL,NULL,'327856907276460'),(1096,'Numbers Please!','attending',NULL,NULL,NULL,'183100048473060'),(1097,'Numbers Please!!','attending',NULL,NULL,NULL,'132297980227530'),(1098,'Tagaytay!!','unsure',NULL,NULL,NULL,'117333245057512'),(1099,'X: Exist. Experience. Extend.','attending','Henry-Lee Irwin Theater, ADMU','Quezon City','Philippines','412289198785286'),(1100,'World Go Blue','unsure',NULL,NULL,NULL,'968310043187797'),(1101,'Long Test 3','attending','Ateneo de Manila High School','Quezon City','Philippines','637206159714337'),(1102,'P1TSTOP! AHS FreshDay 2012!','attending','Ateneo de Manila High School','Quezon City','Philippines','803446573080005'),(1103,'NUMBERS PLEASE? âº','attending',NULL,NULL,NULL,'962225617155470'),(1104,'Ateneo de Manila High School 16th fair: Zero : Hour','attending','Ateneo de Manila High School','Quezon City','Philippines','812621022161494'),(1105,'The first 1 000 000 participants Will Get the new Facebook/Twitter Shoes','unsure',NULL,NULL,NULL,'911572388906186'),(1106,'Ateneo A vs LSGH MYBALL Semis!','attending',NULL,NULL,NULL,'903669816322466'),(1107,'Third Long Test','attending','Ateneo de Manila High School','Quezon City','Philippines','835890019799264'),(1108,'Long Test 2','attending','Ateneo de Manila High School','Quezon City','Philippines','844831655607933'),(1109,'ATENEO BONFIRE 2011!!!!!','attending',NULL,NULL,NULL,'976028365742629'),(1110,'Anghel ng Buhay,Biyayang Tunay! (AGS Fair!)','attending','Ateneo de Manila Grade School','Quezon City','Philippines','907914342580104'),(1111,'1st Long Test for the 2nd Term','attending','Ateneo de Manila High School','Quezon City','Philippines','1092846654063948'),(1112,'UAAP Jrs Basketball Ateneo vs. La Salle','attending',NULL,NULL,NULL,'803354619747976'),(1113,'Third Long Test','attending','Ateneo de Manila High School','Quezon City','Philippines','848488038554083'),(1114,'DRENCHED','attending',NULL,NULL,NULL,'830431103703203'),(1115,'Kung Fu Panda 2 in Eastwood. :D','attending',NULL,NULL,NULL,'826784654076694'),(1116,'Real Madrid at Barcelona','attending','Estadi Camp Nou - Barcelona','Barcelona','Spain','928335650520877'),(1117,'Mabini reunion ','attending',NULL,NULL,NULL,'951933151493372'),(1118,'Grad Party','attending',NULL,NULL,NULL,'811575498918096'),(1119,'Miriam College Grade 7 BATCH NIGHT!','attending',NULL,NULL,NULL,'807242385980260'),(1120,'BLUE DOWN LOW!','attending',NULL,NULL,NULL,'922572761140971'),(1121,'Friday','attending',NULL,NULL,NULL,'872129026158639'),(1122,'Parteh','unsure',NULL,NULL,NULL,'946658095368104'),(1123,'Last Days in Grade School','attending',NULL,NULL,NULL,'882867511771144'),(1124,'Blue Run 4 Green Life (AGSCOM Run)','unsure','Ateneo de Manila Grade School','Quezon City','Philippines','878331568880093'),(1125,'INFANZIA - MCHS Fair 2010','unsure',NULL,NULL,NULL,'1103153216367375'),(1126,'PAYA Finals','attending',NULL,NULL,NULL,'885225484877735'),(1127,'AGS Fair: Bawat Atenista... Angel para sa iba!!','attending',NULL,NULL,NULL,'935030139882848'),(1128,'Trick or Treat UNICEF lesson ','attending',NULL,NULL,NULL,'10152851635287828'),(1129,'Live Webcast #3','attending',NULL,NULL,NULL,'10153269578172710'),(1130,'Live Webcast #2','attending',NULL,NULL,NULL,'10155325106860538');
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
  `family_name` varchar(5000) NOT NULL,
  `relationship` varchar(5000) NOT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (168,'Miguel Dypiangco','sister','10206487666310829'),(169,'Mari Ferrer','brother','1656580067691200'),(170,'Randel Tugade','brother','1526797797342620'),(171,'David Kabigting','stepfather','10206401408594059'),(172,'Ann Jornacion Niro','cousin','10208632416236320'),(173,'Nico T Maralit','brother','10212289964546853'),(174,'Mafe Sanchez','granddaughter','10209412354889355'),(175,'Paeng Pajaro','brother','10154539351682903'),(176,'Ac Medina','brother','10212779975680996'),(177,'Mark Cruz','brother','10208531152613183'),(178,'Simon Domingo','brother','10203116569950404'),(179,'Arvin Rulloda','brother','10206401675640585'),(180,'Mimi Jornacion','mother','10155176914128944'),(181,'Oey Calderon','sister','10210709233025293'),(182,'Miggy Ortiz','brother','10202637761741825'),(183,'Jigo Macalino Sison','brother','10212431776295411'),(184,'Ray Palad','brother','10208897410298656'),(185,'Gabe Santos','brother','1492487730781933'),(186,'Brian Olmedo','brother','1669626643053874'),(187,'Miggy Saluta','brother','10203039700750186'),(188,'Marla Ruiz','sister','10208776780636759'),(189,'Natasha Besquillo','sister','10208735467170508'),(190,'Camille Bartolome','sister','10208890245473400'),(191,'Sean MuÃ±oz Santos','brother','10212139201932957'),(192,'Tristan Guevarra Baco','brother','1647058088642719');
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
  `interest` varchar(5000) DEFAULT NULL,
  `type` varchar(5000) DEFAULT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2372 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (2324,'Marian Rivera','Public Figure','249952272128670'),(2325,'Comment','Local Business','109754715723945'),(2326,'Bacardi','Wine/Spirits','142247279279826'),(2327,'Juro','Artist','565144206953544'),(2328,'De La Salle Days With The Lord','Religious Organization','1113513002055104'),(2329,'Made in China','Food & Beverage Company','1155472944540433'),(2330,'Thinking Of Something','Community','356098108568'),(2331,'70th ENG','Company','1647370928858454'),(2332,'The Three of Us','Musician/Band','1541640876114673'),(2333,'Krispy Kreme Doughnuts','Food & Beverage Company','130424181000'),(2334,'Engineers of La Salle','Community','1717614991811008'),(2335,'Song Hye Kyo','Artist','488770197914698'),(2336,'Ampersand Clothing','Clothing (Brand)','118184341926767'),(2337,'Lang Leav','Author','175921115793636'),(2338,'Clara Benin','Musician/Band','424259907610231'),(2339,'De La Salle University','College & University','127612997282544'),(2340,'Poems Porn','Health/Wellness Website','638963772825875'),(2341,'CrowdStar','Company','182924960506'),(2342,'Kumpar3s','Grocery Store','123367754693718'),(2343,'RUNtarantantan','Outdoor, Recreation & Fitness','205803566161817'),(2344,'When I Miss You Just I Close My Eyes And I,M With You','Community','1393014757636659'),(2345,'NBA','Sports League','8245623462'),(2346,'Ankle Upgrade','Clothing (Brand)','1733537683542816'),(2347,'De La Salle University-Manila Secret Files','Media/News Company','596767770358949'),(2348,'IMES','Organization','124594677623149'),(2349,'IMES','Organization','1489018524747003'),(2350,'Handog 2015','Community','894937367252001'),(2351,'DLSU Animo Squad','Athlete','694031873988203'),(2352,'Teddy Bear','Artist','1636720699895039'),(2353,'The LaSallian','Media/News Company','149678604759'),(2354,'LPEP 2K15','Community','1588399598100568'),(2355,'Running Up The Stairs Because You Think A Monster is Going To Grab You','Community','1400160026978231'),(2356,'De La Salle Ghost Stories','Community','197687580431999'),(2357,'Top Vines','Media/News Company','171112259610923'),(2358,'The BULLY Project','Movie','107214895991663'),(2359,'JEROME JARRE','Public Figure','837566182929757'),(2360,'YOUnique','Community','1598005460430887'),(2361,'FallBack','Community','1530686660531297'),(2362,'Diary of a Wimpy Kid','Company','48745321227'),(2363,'The LongGang','Food & Beverage Company','1486908624919064'),(2364,'Sanggunian ng Mga Mag-aaral ng Mataas na Paaralang Ateneo de Manila','Government Organization','481731238563608'),(2365,'McDonald\'s','Fast Food Restaurant','121863347862934'),(2366,'Ateneo High School Blue Babble','School Sports Team','289927977836151'),(2367,'OptiMist','Food & Beverage Company','1552595894963793'),(2368,'Party Incorporated','Event Planner','1539456622956977'),(2369,'Impressive Things','News/Media Website','293637100786683'),(2370,'Spectrum PAREF Rosehill School Fair 2014','Organization','407372072699308'),(2371,'Entice','Grocery Store','720316281316982');
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
-- Table structure for table `part_of_speech`
--

DROP TABLE IF EXISTS `part_of_speech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part_of_speech` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos` varchar(45) NOT NULL,
  `pos_value` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_of_speech`
--

LOCK TABLES `part_of_speech` WRITE;
/*!40000 ALTER TABLE `part_of_speech` DISABLE KEYS */;
INSERT INTO `part_of_speech` VALUES (1,'Coordinating conjunction','CC'),(2,'Cardinal number','CD'),(3,'Determiner','DT'),(4,'Existential there','EX'),(5,'Foreign word','FW'),(6,'Preposition or subordinating conjunction','IN'),(7,'Adjective','JJ'),(8,'Adjective, comparative','JJR'),(9,'Adjective, superlative','JJS'),(10,'List item marker','LS'),(11,'Modal','MD'),(12,'Noun, singular or mass','NN'),(13,'Noun, plural','NNS'),(14,'Proper noun, singular','NNP'),(15,'Proper noun, plural','NNPS'),(16,'Predeterminer','PDT'),(17,'Possesive ending','POS'),(18,'Personal pronoun','PRP'),(19,'Possessive pronoun (prolog version PRP-S)','PRP$'),(20,'Adverb','RB'),(21,'Adverb, comparative','RBR'),(22,'Adverb, superlative','RBS'),(23,'Particle','RP'),(24,'Symbol','SYM'),(25,'to','TO'),(26,'Interjection','UH'),(27,'Verb, base form','VB'),(28,'Verb, past tense','VBD'),(29,'Verb, gerund or present participle','VBG'),(30,'Verb, past participle','VBN'),(31,'Verb, non-3rd person singular present','VBP'),(32,'Verb, 3rd person singular present','VBZ'),(33,'Wh-determiner','WDT'),(34,'Wh-pronoun','WP'),(35,'Possessive wh-pronoun (prolog version WP-S)','WP$'),(36,'Wh-adverb','WRB');
/*!40000 ALTER TABLE `part_of_speech` ENABLE KEYS */;
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
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation` varchar(100) NOT NULL,
  `relation_value` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation`
--

LOCK TABLES `relation` WRITE;
/*!40000 ALTER TABLE `relation` DISABLE KEYS */;
INSERT INTO `relation` VALUES (1,'adjectival complement','acomp'),(2,'adverbial clause modifier','advcl'),(3,'adverb modifier','advmod'),(4,'agent','agent'),(5,'adjectival modifier','amod'),(6,'appositional modifier','appos'),(7,'auxiliary','aux'),(8,'passive auxiliary','auxpass'),(9,'coordination','cc'),(10,'clausal complement','ccomp'),(11,'conjunct','conj'),(12,'copula','cop'),(13,'clausal subject','csubj'),(14,'clausal passive subject','csubjpass'),(15,'dependent','dep'),(16,'determiner','det'),(17,'discourse element','discourse'),(18,'direct object','dobj'),(19,'expletive','expl'),(20,'goes with','goeswith'),(21,'indirect object','iobj'),(22,'marker','mark'),(23,'multi-word expression','mwe'),(24,'negation modifier','neg'),(25,'noun compound modifier','nn'),(26,'noun phrase as adverbial modifier','npadvmod'),(27,'nominal subject','nsubj'),(28,'passive nominal subject','nsubjpass'),(29,'numeric modifier','num'),(30,'element of compound number','number'),(31,'parataxis','parataxis'),(32,'prepositional complement','pcomp'),(33,'object of a preposition','pobj'),(34,'possession modifier','poss'),(35,'possessive modifier','possessive'),(36,'preconjunct','preconj'),(37,'predeterminer','predet'),(38,'prepositional modifier','prep'),(39,'prepositional clausal modifier','prepc'),(40,'phrasal verb particle','prt'),(41,'punctuation','punct'),(42,'quantifier phrase modifier','quantmod'),(43,'relative clause modifier','rcmod'),(44,'referent','ref'),(45,'root','root'),(46,'temporal modifier','tmod'),(47,'reduced non-finite verbal modifier','vmod'),(48,'open clausal complement','xcomp'),(49,'controlling subject','xsubj');
/*!40000 ALTER TABLE `relation` ENABLE KEYS */;
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
INSERT INTO `template` VALUES (1,1,'<name><intro_optional><intro_current_education>.',0,0,0,0,0,0,0),(2,1,'<name><intro_optional><intro_current_work>.',0,0,0,0,0,0,0),(3,1,'<name><intro_optional><intro_birth_circumstances>.',0,0,0,0,0,0,0),(4,2,'<intro_birth_circumstances>',1,0,0,0,0,0,0),(5,2,'is a <age>-year old <gender> who',1,0,0,0,0,0,1),(6,3,', born on <birthday>,',1,0,0,0,0,0,0),(7,3,'was born on <birthday>',1,0,0,0,0,0,0),(10,4,'is from <hometown>, and is now living in <location>',0,0,0,0,1,1,0),(12,4,'hails from <hometown>, and is living in <location>',0,0,0,0,1,1,0),(14,4,'hailed from <hometown>, and is now living in <location>',0,0,0,0,1,1,0),(16,1,'<intro_education> and <intro_current_work>',0,0,0,0,0,0,0),(17,1,'<intro_education> and <intro_current_education>',0,0,0,0,0,0,0),(18,1,'<intro_education>',0,0,0,0,0,0,0),(19,1,'is now studying at <institution>',0,0,0,1,0,0,0),(20,11,'is now working at <institution>',0,1,0,0,0,0,0),(21,11,'worked from <job_start> to <job_end> at <institution>',0,1,0,0,0,0,0),(22,1,'worked from <job_start> to <job_end> at <institution> and <intro_current_work>',0,1,0,0,0,0,0),(23,1,'worked from <job_start> to <job_end> at <institution> and <intro_current_education>',0,1,0,0,0,0,0),(24,7,'graduated grade school in <institution> <intro_education_time>',0,0,0,1,0,0,0),(25,8,'graduated high school in <institution> <intro_education_time>',0,0,0,1,0,0,0),(26,9,'graduated college in <institution> <intro_education_time>',0,0,0,1,0,0,0),(27,7,'got his grade school diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(28,8,'got his high school diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(29,9,'got his college diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(33,10,'last <grad_year>',0,0,0,1,0,0,0),(34,10,'in <grad_year>',0,0,0,1,0,0,0),(35,10,'on <grad_year>',0,0,0,1,0,0,0),(40,12,'He is the son of <father> and <mother>',0,0,1,0,0,0,0),(41,12,'She is the daughter of <father> and <mother>',0,0,1,0,0,0,0),(42,12,'He is the son of <father>',0,0,1,0,0,0,0),(43,12,'He is the son of <mother>',0,0,1,0,0,0,0),(44,12,'She is the daughter of <father>',0,0,1,0,0,0,0),(45,12,'She is the daughter of <mother>',0,0,1,0,0,0,0),(46,5,'is living in <location>',0,0,0,0,1,0,0),(47,6,'is from <hometown>',0,0,0,0,0,1,0);
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
  `data` varchar(10000) DEFAULT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  `tagged` varchar(5000) DEFAULT NULL,
  `place` varchar(1000) DEFAULT NULL,
  `city` varchar(1000) DEFAULT NULL,
  `country` varchar(1000) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  `verb` varchar(500) DEFAULT NULL,
  `noun` varchar(500) DEFAULT NULL,
  `post_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5248 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (4901,'hi','10155203529788489','',NULL,NULL,NULL,'2017','03','08',NULL,NULL,NULL),(4902,'Ã¼','10155197703333489','',NULL,NULL,NULL,'2017','03','06',NULL,NULL,NULL),(4903,'HAHAHAHAHA','10155179131743489','',NULL,NULL,NULL,'2017','02','28',NULL,NULL,NULL),(4904,'masyadong pogi to \'di ako worthy John','10155179115558489','',NULL,NULL,NULL,'2017','02','28',NULL,NULL,NULL),(4905,'muntik ko na mabato laptop ko','10155174774608489','',NULL,NULL,NULL,'2017','02','27',NULL,NULL,NULL),(4906,'it u Nikki Gomez jk','10155171232433489','',NULL,NULL,NULL,'2017','02','25',NULL,NULL,NULL),(4907,'HAHAHAHAHA','10155163832173489','',NULL,NULL,NULL,'2017','02','22',NULL,NULL,NULL),(4908,'ð','10155162712933489','',NULL,NULL,NULL,'2017','02','22',NULL,NULL,NULL),(4909,':)','10155115561598489','',NULL,NULL,NULL,'2017','02','07',NULL,NULL,NULL),(4910,'10/11 ez','10155112306718489','',NULL,NULL,NULL,'2017','02','05',NULL,NULL,NULL),(4911,'Josh De Dios Kyle De Dios','10155088275978489','',NULL,NULL,NULL,'2017','01','28',NULL,NULL,NULL),(4912,'HHAHHAHAHH','10155082777138489','',NULL,NULL,NULL,'2017','01','26',NULL,NULL,NULL),(4913,'one of my fave books/movies','10155066277448489','',NULL,NULL,NULL,'2017','01','22',NULL,NULL,NULL),(4914,'aw','10155011130368489','',NULL,NULL,NULL,'2017','01','08',NULL,NULL,NULL),(4915,'Always and forever will be momma\'s boy â¤ï¸','10154996590973489','Mimi Jornacion',NULL,NULL,NULL,'2017','01','02',NULL,NULL,NULL),(4916,'I put the MATT in Matterhorn ð¤¡ (2/2)','10154987660703489','','Disneyland','Anaheim','United States','2016','12','30',NULL,NULL,NULL),(4917,'Where dreams come true ð° (1/2)','10154987658298489','','Disneyland','Anaheim','United States','2016','12','30',NULL,NULL,NULL),(4918,'ð','10154968579248489','',NULL,NULL,NULL,'2016','12','25',NULL,NULL,NULL),(4919,'Sorry na','10152823812893489','',NULL,NULL,NULL,'2016','11','13',NULL,NULL,NULL),(4920,'CORE DD #FAITHxCTK #RECTOR #STAFFCOORD','10154748953628489','Josh De Dios',NULL,NULL,NULL,'2016','10','22',NULL,NULL,NULL),(4921,'Aabangan ko \'to','10154692919518489','',NULL,NULL,NULL,'2016','10','05',NULL,NULL,NULL),(4922,'Eduardo Ma Victoria John David Diego Gwynette Celine Renee Khyleen Julia mahal ko talaga kayo no','10154687600988489','',NULL,NULL,NULL,'2016','10','03',NULL,NULL,NULL),(4923,'Google PLS','10154680779968489','',NULL,NULL,NULL,'2016','10','01',NULL,NULL,NULL),(4924,'pacute kasi ako eh','10154534912393489','',NULL,NULL,NULL,'2016','08','18',NULL,NULL,NULL),(4925,'Happy birthday to my term mate  Victoria!! Thank you for everything!!! You deserve the best and I hope that you have a blessed birthday!! Love you Via!! ð','10154396012053489','Ma Victoria Valderrama',NULL,NULL,NULL,'2016','07','01',NULL,NULL,NULL),(4926,'Diego Pantaleon','10154269644598489','',NULL,NULL,NULL,'2016','05','11',NULL,NULL,NULL),(4927,'\"Don\'t cry because it\'s over, smile because it happened.\" 05/04/16 âï¸','10154254410263489','',NULL,NULL,NULL,'2016','05','05',NULL,NULL,NULL),(4928,'it all started when i played with her hair','10154235167613489','',NULL,NULL,NULL,'2016','04','28',NULL,NULL,NULL),(4929,'dat face','10154234889213489','',NULL,NULL,NULL,'2016','04','27',NULL,NULL,NULL),(4930,'John Gacal Diego Pantaleon Eduardo Gargarita','10154064490598489','',NULL,NULL,NULL,'2016','03','06',NULL,NULL,NULL),(4931,'Gwapo ako','10154061476753489','',NULL,NULL,NULL,'2016','03','05',NULL,NULL,NULL),(4932,'shet','10154052771608489','',NULL,NULL,NULL,'2016','03','01',NULL,NULL,NULL),(4933,'how to front flip in judo Gwynette Sy Renee Khyleen Julia Te','10154047598248489','',NULL,NULL,NULL,'2016','02','28',NULL,NULL,NULL),(4934,'allahu akbar','10154014503028489','',NULL,NULL,NULL,'2016','02','15',NULL,NULL,NULL),(4935,'Sarap mong sipain marlou','10153991735913489','',NULL,NULL,NULL,'2016','02','05',NULL,NULL,NULL),(4936,'â«ï¸âï¸â«ï¸','10153896748548489','',NULL,NULL,NULL,'2015','12','25',NULL,NULL,NULL),(4937,'Trio','10153891463628489','',NULL,NULL,NULL,'2015','12','23',NULL,NULL,NULL),(4938,'Always happy when I\'m with these guys. â¤âï¸ï¸ #WhiteChristmas','10153888329253489','',NULL,NULL,NULL,'2015','12','22',NULL,NULL,NULL),(4939,'Fam. ð #birthdaytrio','10153853316798489','John Gacal, Eduardo Gargarita, Celine Solis, David Zinampan, Ma Victoria Valderrama, Donalie Yap, Diego Pantaleon, Renee Khyleen Julia Te, Curtis Garcia, Gwynette Sy, Jordan See and Cali Delos Reyes',NULL,NULL,NULL,'2015','12','06',NULL,NULL,NULL),(4940,'huhu','10153830532408489','',NULL,NULL,NULL,'2015','11','24',NULL,NULL,NULL),(4941,'IDOOOOOLS Renee Esteban Shasha Sto Tomas','10153828893623489','',NULL,NULL,NULL,'2015','11','23',NULL,NULL,NULL),(4942,'HAHAHAHA Pierce Alarcon Chun Franco','10153826392023489','',NULL,NULL,NULL,'2015','11','22',NULL,NULL,NULL),(4943,'hayley i love u','10153821004253489','',NULL,NULL,NULL,'2015','11','19',NULL,NULL,NULL),(4944,'Proud to make it to the semi-finals with these guys ðð» #SYNTAXMathContest','10153747720438489','Renee Khyleen Julia Te and Mark Lanz Llido',NULL,NULL,NULL,'2015','11','25',NULL,NULL,NULL),(4945,'da trio is back Â© Kat Sanchez','10153659858848489','',NULL,NULL,NULL,'2015','08','31',NULL,NULL,NULL),(4946,'So proud of this girl','10153252182878489','',NULL,NULL,NULL,'2015','03','23',NULL,NULL,NULL),(4947,'Family. #GBoys','10153244492183489','',NULL,NULL,NULL,'2015','03','20',NULL,NULL,NULL),(4948,'Inquirer photoshoot with Battalion. #BBB','10152939807718489','',NULL,NULL,NULL,'2014','11','25',NULL,NULL,NULL),(4949,'Sorry na','10152823812893489','',NULL,NULL,NULL,'2016','11','13',NULL,NULL,NULL),(4950,'Solid night with family! Love you all! #CTK28','10152710232883489','',NULL,NULL,NULL,'2014','08','23',NULL,NULL,NULL),(4951,'Happy birthday to my eldest brother @joshdedios !! Thank you for being a good brother to me. Kahit sinasabi mong ikaw pinakapanget sating tatlo, alam naman nating lahat ikaw pinakagwapo. Love you bro!! Basta ikaw!','10152697564543489','',NULL,NULL,NULL,'2014','08','17',NULL,NULL,NULL),(4952,'Credits to Tonichi!!','10152599661158489','',NULL,NULL,NULL,'2014','07','07',NULL,NULL,NULL),(4953,'G Boys #tbt','10152489600018489','',NULL,NULL,NULL,'2014','05','22',NULL,NULL,NULL),(4954,'Happy mother\'s day to the best mom in the world! Thank you for everything. Thank you for always believing in me and for making me the person I am right now. I love you mom @miejdedios','10152463689013489','',NULL,NULL,NULL,'2014','05','11',NULL,NULL,NULL),(4955,'G Boys in #Grandeur #tbt','10152329839118489','',NULL,NULL,NULL,'2014','03','13',NULL,NULL,NULL),(4956,'so accurate o.o','10152192351638489','',NULL,NULL,NULL,'2014','01','11',NULL,NULL,NULL),(4957,'Dafuq fb','10151832996348489','',NULL,NULL,NULL,'2013','08','12',NULL,NULL,NULL),(4958,'Sophcomm! \n\n(c) Inez Louisa Celestino','10151506503623489','',NULL,NULL,NULL,'2013','02','27',NULL,NULL,NULL),(4959,'Boracay Sunset','10151036034173489','',NULL,NULL,NULL,'2012','06','30',NULL,NULL,NULL),(4960,'AHS Blue Babble Battalion try-outs\n\nWhere: 4th year quad.\nWhen: Starting June 25 (monday). 4pm-6pm\nReq: Wear sports attire\n\nBe the force behind the One Big Fight! Sali na, Atenista!','10151022417758489','',NULL,NULL,NULL,'2012','06','24',NULL,NULL,NULL),(4961,'HAHAHAHAHA photo booth. :) nice face david. :)','10150708332088489','',NULL,NULL,NULL,'2012','03','17',NULL,NULL,NULL),(4962,'http://www.youtube.com/watch?v=T9ETxBHYBAU relaxiiing. :)','269835216428989','',NULL,NULL,NULL,'2012','03','13',NULL,NULL,NULL),(4963,'Bayaran niyo ako. -.- =)))) David Kabigting Paeng Pajaro buti pa si Marla Ruiz willing magbayad.... =)))))','10150545200258489','',NULL,NULL,NULL,'2012','01','09',NULL,NULL,NULL),(4964,'Ang boring sa antipolo. :/','10150498534633489','',NULL,NULL,NULL,'2011','12','18',NULL,NULL,NULL),(4965,'I\'m excited for the mass and the partyyy. :) Sana hindi umulan.','10150494182233489','',NULL,NULL,NULL,'2011','12','16',NULL,NULL,NULL),(4966,'Summative quiz pala bukas. -.-','10150490675873489','',NULL,NULL,NULL,'2011','12','14',NULL,NULL,NULL),(4967,'Bad trip grades ko. :/','10150488454818489','',NULL,NULL,NULL,'2011','12','13',NULL,NULL,NULL),(4968,'December. :)\nWhich baby are you? \n\nJANUARY BABY\nPretty/handsome. Loves to dress up. Easily bored. Fussy. Seldom shows emotions. Takes time to recover when hurt. Sensitive. Down-to-Earth. Stubborn. Repost this in 5 mins and you will meet someone new in 8 days that will perfectly balance your personality.\n\nFEBRUARY BABY\nAbstract thoughts. Loves reality and abstract. Intelligent and clever. Changing personality. Attractive. Sexiest out of everyone. Temperamental. Quiet, shy and humble. Honest And loyal. Determined to reach goals. Loves freedom. Rebellious when restricted. Loves aggressiveness. Too sensitive and easily hurt. Gets angry really easily but does not show it. Dislikes unnecessary things. Loves making friends but rarely shows it. Horny. Daring and stubborn. Ambitious. Realizing dreams and hopes. Sharp. Loves entertainment and leisure. Romantic on the inside not outside. Superstitious and ludicrous. Spendthrift. Tries to learn to show emotions. Repost this in 5 mins and you will talk to someone new and realize that you are a perfect match.\n\nMARCH BABY\nAttractive personality. Sexy. Affectionate Shy and reserved. Secretive. Naturally honest, generous and sympathetic. Loves peace and serenity. Sensitive to others. Great kisser. Easily angered. Trustworthy. Appreciative and returns kindness. Hardly shows emotions. Tends to bottle up feelings. Observant and assesses others. If you repost this in the next 5 mins, you will meet your new love in 8 days.\n\nAPRIL BABY\nSuave and compromising. Funny and humorous. Stubborn. Very talkative. Calm and cool. Kind and sympathetic. Concerned and detailed. Loyal. Does work well with others. Very confidant. Sensitive. Positive Attitude. Thinking generous. Good memory. Clever and knowledgeable. Loves to look for information. Able to cheer everyone up and/or make them laugh. Able to motivate oneself and others. Understanding. Fun to be around. Outgoing. Hyper. Bubbly personality. Secretive. Boy/girl crazy. Loves sports, music, leisure and traveling. Systematic. Hot but has brains. If you repost this in 5 mins, a cutie that\'s caught your eye will introduce themselves and you will realize that you are very much alike in the next 2 days.\n\nMAY BABY\nStubborn and hard-hearted. Strong-willed and highly motivated. Sharp thoughts. Easily angered. Attracts others and loves attention. Deep feelings. Beautiful physically and mentally. Firm Standpoint. Needs no motivation. Shy towards opposite sex. Easily consoled. Systematic (left brain). Loves to dream. Strong clairvoyance. Understanding. Sickness usually in the ear and neck. Good imagination. Good physical. Weak breathing. Loves literature and the arts. Loves traveling. Dislike being at home. Restless. Not having many children. Hardworking. High-spirited. If you repost this in the next 5 minutes, you will become close to someone you do not speak too much in the next 4 days.\n\nJUNE BABY\nYou\'ve got the best personality and are an absolute pleasure to be around. You love to make new friends and be outgoing. You are a great flirt and more than likely have an a very attractive partner. A wicked hottie. It is also more than likely that you have a massive record collection. You have a great choice in films, and may one day become a famous actor/actress yourself - heck, you\'ve got the looks for it!!! IN the next 6 days you will meet someone that may possibly become one of your closest friends, if you repost this in 5 minutes.\n\nJULY BABY\nFun to be with. Secretive. Difficult to fathom and to be understood. Quiet unless excited or tensed. Takes pride in oneself. Has reputation. Easily consoled. Honest. Concerned about people\'s feelings. Tactful. Friendly. Approachable. Emotional temperamental and unpredictable. Moody and easily hurt. Witty and sparkly. spazzy at times. Not revengeful. Forgiving but never forgets. dislikes nonsensical and unnecessary things. Guides others physically and mentally. Sensitive and forms impressions carefully. Caring and loving. Treats others equally. Strong sense of sympathy. Wary and sharp. Judges people through observations. Hardworking. No difficulties in studying. Loves to be alone. Always broods about the past and the old friends. Waits for friends. Never looks for friends. Not aggressive unless provoked. Loves to be loved. Easily hurt but takes long to recover. Repost this in the next 5 mins and your reputation will boost someway in the next 12 days\n\nAUGUST BABY\nOutgoing personality. takes risks. feeds on attention. No self-control. Kind hearted. Self-confident. Loud and boisterous. VERY revengeful. Easy to get along with and talk to. Has an \"every thing\'s peachy\" attitude. Likes talking and singing. Loves music. Daydreamer. Easily distracted. Hates not being trusted. BIG imagination. Loves to be loved. Hates studying. in need of \"that someone\". Longs for freedom. Rebellious when withheld or restricted. Lives by \"no pain no gain\" caring. Always a suspect. Playful. Mysterious. \"charming\" or \"beautiful\" to everyone. stubborn. curious. Independent. Strong willed. A fighter. Repost in 5 mins and you will meet the love of your life sometime next month.\n\nSEPTEMBER BABY\nActive and dynamic. Decisive and haste but tends to regret. Attractive and affectionate to oneself. Strong mentality. Loves attention. Diplomatic. Consoling, friendly and solves people\'s problems. Brave and fearless. Adventurous. Loving and caring. Suave and generous. Usually you have many friends. Enjoys to make love. Emotional. Stubborn. Hasty. Good memory. Moving, motivates oneself and others. Loves to travel and explore. Sometimes sexy in a way that only their lover can understand. If you do not repost this in the next 5 mins, someone very close to you will become mad at you in the next 8 days.\n\nOCTOBER BABY\nLoves to chat. Loves those who love them. Loves to takes things at the center. Inner and physical beauty. Lies but doesn\'t pretend. Gets angry often. Treats friends importantly. Brave and fearless. Always making friends. Easily hurt but recovers easily. Daydreamer. Opinionated. Does not care to control emotions. Unpredictable. Extremely smart, but definitely the hottest AND sexiest of them all. repost this in 5 mins or you will not meet the love of your life for 10 years.\n\nNOVEMBER BABY\nTrustworthy and loyal. Very passionate and dangerous. Wild at times. Knows how to have fun. Sexy and mysterious. Everyone is drawn towards your inner and outer beauty and independent personality. Playful, but secretive. Very emotional and temperamental sometimes. Meets new people easily and very social in a group. Fearless and independent. Can hold their own. Stands out in a crowd. Essentially very smart. Usually, the greatest men are born in this month. If you ever begin a relationship with someone from this month, hold on to them because their one of a kind. Repost in 5 mins & you will excel in a major event coming up sometime this month.\n\nDECEMBER BABY\nThis straight-up means you are the most good-looking person possible... Better than all of these other months! Loyal and generous. Patriotic. Competitive in everything. Active in games and interactions. Impatient and hasty. Ambitious. Influential in organizations. Fun to be with. Easy to talk to, though hard to understand. Thinks far with vision, yet complicated to know. Easily influenced by kindness. Polite and soft-spoken. Having lots of ideas. Sensitive. Active mind. Hesitating tends to delay. Choosy and always wants the best. Temperamental. Funny and humorous. Loves to joke. Good debating skills. Has that someone always on his/her mind. Talkative. Daydreamer. Friendly. Knows how to make friends. Abiding. Able to show character. One guy/girl kind of person. Loveable. Easily hurt. Prone to getting colds. Loves music. Pretty/handsome. Loves to dress up. Easily bored. Fussy. Seldom shows emotions. Takes time to recover when hurt. Sensitive.','10150446571538489','',NULL,NULL,NULL,'2011','11','26',NULL,NULL,NULL),(4969,'Repost if you love God. He already saw you read it.','10150429392633489','',NULL,NULL,NULL,'2011','11','17',NULL,NULL,NULL),(4970,'Why is AP so hard? :(','10150414314248489','',NULL,NULL,NULL,'2011','11','09',NULL,NULL,NULL),(4971,'Puss in Boots and In Time was good. :)','10150408513523489','',NULL,NULL,NULL,'2011','11','05',NULL,NULL,NULL),(4972,'Gonna watch Puss In Boots then In Time after! Omw to Shangrila. :)','10150408265678489','',NULL,NULL,NULL,'2011','11','05',NULL,NULL,NULL),(4973,'Cheese roll and ensaymada from Mary Grace for breakfast. :)','10150408137123489','',NULL,NULL,NULL,'2011','11','05',NULL,NULL,NULL),(4974,'stressed. :|','10150395785388489','',NULL,NULL,NULL,'2011','10','26',NULL,NULL,NULL),(4975,'disappointing day. haaay.','10150387629068489','',NULL,NULL,NULL,'2011','10','20',NULL,NULL,NULL),(4976,'sarap ng feeling ng walang org. :D Math LT tomorrow, gonna study. perfect ko yaaan. :>','10150386316158489','',NULL,NULL,NULL,'2011','10','19',NULL,NULL,NULL),(4977,'done with other subjects. time to study my favorite subject. MATH. :D','10150385242413489','',NULL,NULL,NULL,'2011','10','19',NULL,NULL,NULL),(4978,'Please pray for my brother Kyle De Dios. He has dengue. Thank you.','10150383849263489','',NULL,NULL,NULL,'2011','10','17',NULL,NULL,NULL),(4979,'Ate fish and salad for dinner. Mhmm so gooood. :)','10150366630948489','',NULL,NULL,NULL,'2011','10','04',NULL,NULL,NULL),(4980,'On my way home. Lupet ng training. =)))))','10150366546413489','',NULL,NULL,NULL,'2011','10','04',NULL,NULL,NULL),(4981,'In araneta. Very excited for the game. With the high school battalion. =)) ONE BIG FIGHT!!','10150362331798489','',NULL,NULL,NULL,'2011','10','01',NULL,NULL,NULL),(4982,'Game tomorrow. Sure win for the Eagles! :)','10150356054688489','',NULL,NULL,NULL,'2011','09','26',NULL,NULL,NULL),(4983,'Just got home! Time to redo my art project. :)','10150350535768489','',NULL,NULL,NULL,'2011','09','22',NULL,NULL,NULL),(4984,'On my way home. Grabe daming kailangan gawin. :/','10150350531948489','',NULL,NULL,NULL,'2011','09','22',NULL,NULL,NULL),(4985,'just got home. tired. :|','10150349015373489','',NULL,NULL,NULL,'2011','09','21',NULL,NULL,NULL),(4986,'nakakabad trip pa rin. talo ateneo. :|','10150347530803489','',NULL,NULL,NULL,'2011','09','20',NULL,NULL,NULL),(4987,'We can get third place. Puso lang yan.','10150347519648489','',NULL,NULL,NULL,'2011','09','20',NULL,NULL,NULL),(4988,'Tangina david. -matt','10150334219858489','',NULL,NULL,NULL,'2011','09','10',NULL,NULL,NULL),(4989,'I hate to admit it but i have to. Im soon to be a father...','10150334218668489','',NULL,NULL,NULL,'2011','09','11',NULL,NULL,NULL),(4990,'Good luck to Juniors later! OBF!!','10150333954488489','',NULL,NULL,NULL,'2011','09','10',NULL,NULL,NULL),(4991,'sarap ng feeling na walang org. :)','10150330564898489','',NULL,NULL,NULL,'2011','09','07',NULL,NULL,NULL),(4992,'In my house','10150326251988489','David Kabigting',NULL,NULL,NULL,'2011','09','03',NULL,NULL,NULL),(4993,'In blue eagle gym. Waiting for game. With kabigting, jiggy, Miggy, tonichi and others. :)','10150326050158489','',NULL,NULL,NULL,'2011','09','03',NULL,NULL,NULL),(4994,'Excited for the game later. :)','10150319555883489','',NULL,NULL,NULL,'2011','08','27',NULL,NULL,NULL),(4995,'Woo, WiFi in school. =))))))','10150318606448489','',NULL,NULL,NULL,'2011','08','25',NULL,NULL,NULL),(4996,'done studying for science! time to study for cle now. :)','10150318027143489','',NULL,NULL,NULL,'2011','08','25',NULL,NULL,NULL),(4997,'I regret, what I did.. And I will make up for it.','10150315212568489','',NULL,NULL,NULL,'2011','08','22',NULL,NULL,NULL),(4998,'On my way to San Juan for ateneo game! Nervous. =)))','10150313006248489','',NULL,NULL,NULL,'2011','08','19',NULL,NULL,NULL),(4999,'In profiles with paco. :)','10150302653373489','',NULL,NULL,NULL,'2011','08','08',NULL,NULL,NULL),(5000,'WOOO! GO ATENENO! NATAKPAN AKO NI ALLADO. -.-','10150294089568489','',NULL,NULL,NULL,'2017','02','25',NULL,NULL,NULL),(5001,'In italianni\'s right now with family and friend. :) Saya nung PBA NBA GAME. :)','10150288750583489','',NULL,NULL,NULL,'2011','07','23',NULL,NULL,NULL),(5002,'Gonna watch nba pba game on sunday! :) \\:D/','10150287823658489','',NULL,NULL,NULL,'2011','07','24',NULL,NULL,NULL),(5003,'Performance. @-) IMBA. lol (c) tito pavia :)','10150280214523489','',NULL,NULL,NULL,'2011','07','14',NULL,NULL,NULL),(5004,'ugh, stupid AP homework. -.-','10150272695063489','',NULL,NULL,NULL,'2011','07','06',NULL,NULL,NULL),(5005,'ugh stresssss. :|','10150270917343489','',NULL,NULL,NULL,'2011','07','04',NULL,NULL,NULL),(5006,'Bad trip naman tong power point presentation. -.-','10150270915268489','',NULL,NULL,NULL,'2011','07','04',NULL,NULL,NULL),(5007,'Pancakes for breakfast. :)','10150252437428489','',NULL,NULL,NULL,'2011','06','24',NULL,NULL,NULL),(5008,'hirap naman nung IP research na yan. -.- =))) INDIGENOUS PEOPLES. @-)','10150248981953489','',NULL,NULL,NULL,'2011','06','23',NULL,NULL,NULL),(5009,'sarap maging president. :> =)))))))','10150248963183489','',NULL,NULL,NULL,'2011','06','24',NULL,NULL,NULL),(5010,'Passed babble tryouts. :)','10150244044108489','',NULL,NULL,NULL,'2011','06','18',NULL,NULL,NULL),(5011,'UGHHH. BAT NATALO MIAMI!!?!??! :|','10150237196618489','',NULL,NULL,NULL,'2011','06','10',NULL,NULL,NULL),(5012,'Miami on 7 yaaannn. :> =))','10150235941678489','',NULL,NULL,NULL,'2011','06','09',NULL,NULL,NULL),(5013,'BABAWI HEAT. SANA MA INJURE SI DIRK. >:) ,,|,,','10150230526243489','',NULL,NULL,NULL,'2011','06','03',NULL,NULL,NULL),(5014,'Miami wins bitches. HAHAHAHA :> =))','10150228760183489','',NULL,NULL,NULL,'2011','06','01',NULL,NULL,NULL),(5015,'TOLD YOU MIAMI WILL WIN. :> =)))))))))','10150224644233489','',NULL,NULL,NULL,'2011','05','28',NULL,NULL,NULL),(5016,'I don\'t know my section.... Di na lang ako papasok. :> =))','10150222530068489','',NULL,NULL,NULL,'2011','05','25',NULL,NULL,NULL),(5017,'YES. GO MIAMI. F BULLS. ,,|,,','10150222529178489','',NULL,NULL,NULL,'2011','05','25',NULL,NULL,NULL),(5018,'Just finished watching How I met your mother season 1. Now I\'m gonna borrow season 2. :)','10150221866428489','',NULL,NULL,NULL,'2011','05','24',NULL,NULL,NULL),(5019,'Hehe. Didn\'t sleep. :) =))','10150218454898489','',NULL,NULL,NULL,'2011','05','21',NULL,NULL,NULL),(5020,'Hehe. Still awake. :) =))','10150218363443489','',NULL,NULL,NULL,'2011','05','20',NULL,NULL,NULL),(5021,'Wala naman palang kwenta yung May 21. BULLSHIT. @-)','10150218162663489','',NULL,NULL,NULL,'2011','05','20',NULL,NULL,NULL),(5022,'Like this and I\'ll answer:\n1. I call you - \n2. You remind me of - \n3. What you\'re good at - \n4. What you are to me - \n5. One word to describe you - \n6. Post this as your status!! :) :) :)','10150217048488489','',NULL,NULL,NULL,'2011','05','20',NULL,NULL,NULL),(5023,'First time I failed on cheering up someone. :| F THAT.','10150216109178489','',NULL,NULL,NULL,'2011','05','18',NULL,NULL,NULL),(5024,'I can\'t believe you really won\'t let me help you..','10150216108333489','',NULL,NULL,NULL,'2011','05','18',NULL,NULL,NULL),(5025,'Gonna have trouble sleeping tonight... :(','10150216101833489','',NULL,NULL,NULL,'2011','05','18',NULL,NULL,NULL),(5026,'BABAWI HEAT. F YOU BULLS. ,,|,,','10150213745793489','',NULL,NULL,NULL,'2011','05','16',NULL,NULL,NULL),(5027,'I beat my brother in Black Ops.... Again. =))))','10150213744393489','',NULL,NULL,NULL,'2011','05','16',NULL,NULL,NULL),(5028,'Just got home from church. :)','10150213110053489','',NULL,NULL,NULL,'2011','05','16',NULL,NULL,NULL),(5029,'Hehe. Still can\'t sleep cause I still have the \"Bieber Vibes\" =)))) BORED. @-)','10150207864088489','',NULL,NULL,NULL,'2011','05','10',NULL,NULL,NULL),(5030,'Had fun in Justin Bieber concert with Paeng Pajaro Nico Maralit Manoli Montinola Mia Nitorreda Natasha Besquillo Patricia Chong and others. =))) \\:D/ :)','10150207784713489','',NULL,NULL,NULL,'2011','05','11',NULL,NULL,NULL),(5031,'Not going to sleep again...... HAHAHAHA. :)','10150201545788489','',NULL,NULL,NULL,'2011','05','04',NULL,NULL,NULL),(5032,'HAHA. ITS LIKE 5:00 AND IM STILL AWAKE. HAHAHAHA. @-)','10150200890703489','',NULL,NULL,NULL,'2011','05','02',NULL,NULL,NULL),(5033,'Who\'s still awake ? @-) Getting bored here. :|','10150200814623489','',NULL,NULL,NULL,'2011','05','02',NULL,NULL,NULL),(5034,'Osama Bin Laden is DEAD.','10150200211103489','',NULL,NULL,NULL,'2011','05','02',NULL,NULL,NULL),(5035,'I\'M BORED. ONCE AGAIN. :| @-)','10150199772013489','',NULL,NULL,NULL,'2011','05','02',NULL,NULL,NULL),(5036,'Chicago SUCKS. HEHEHEHEHEHE.','10150198773373489','',NULL,NULL,NULL,'2011','04','30',NULL,NULL,NULL),(5037,'I\'M STARING AT MY IPAD AGAIN. @-) @-)','10150197209718489','',NULL,NULL,NULL,'2011','04','28',NULL,NULL,NULL),(5038,'6 divided by 2x(1+2) ain\'t 1. It\'s 9 ! GEMDAS LANG YAN. =))))) Franco Mendoza','10150197075623489','',NULL,NULL,NULL,'2011','04','28',NULL,NULL,NULL),(5039,'I\'M NOT GOING TO SLEEP AGAIN LATEEERRRR. \\:D/ =))','10150196860648489','',NULL,NULL,NULL,'2011','04','28',NULL,NULL,NULL),(5040,'I am not going to sleep.. =)))) @-)','10150196334348489','',NULL,NULL,NULL,'2011','04','27',NULL,NULL,NULL),(5041,'STARING AT MY IPAD. @-)','10150196318143489','',NULL,NULL,NULL,'2011','04','27',NULL,NULL,NULL),(5042,'Hehe. Twitterrrrrrr. =))) I ain\'t bored now. :))','10150196307568489','',NULL,NULL,NULL,'2011','04','27',NULL,NULL,NULL),(5043,'I\'m not going to sleeeeeep. =))','10150196214188489','',NULL,NULL,NULL,'2011','04','27',NULL,NULL,NULL),(5044,'Ugh, Sep again. :|','10150193804523489','',NULL,NULL,NULL,'2011','04','25',NULL,NULL,NULL),(5045,'Finally. I have internet nowwww.=)))','10150192890438489','',NULL,NULL,NULL,'2011','04','24',NULL,NULL,NULL),(5046,'Cause we\'re YOUNG WILD AND FREE. <3','10150189606033489','',NULL,NULL,NULL,'2011','04','20',NULL,NULL,NULL),(5047,'Let\'s offer a prayer to Aj Perez. Who died in a carcrash. He is a 4th year ateneo student. May he rest in peace.','10150186594378489','',NULL,NULL,NULL,'2011','04','17',NULL,NULL,NULL),(5048,'Going to have Oatmeal for dinner again. Yuuuuuuummmmm. :))) DIET ! :>','10150182782888489','',NULL,NULL,NULL,'2011','04','13',NULL,NULL,NULL),(5049,'Oatmeal for dinner. DIET ! =)))','10150181865338489','',NULL,NULL,NULL,'2011','04','12',NULL,NULL,NULL),(5050,'Nakakatamad bumangon sa bed. :| =)))','10150181846718489','',NULL,NULL,NULL,'2011','04','12',NULL,NULL,NULL),(5051,'It\'s better to fail with honor, than to succeed with fraud. -Sophocies','10150179962733489','',NULL,NULL,NULL,'2011','04','11',NULL,NULL,NULL),(5052,'I\'m so pissed off right now. :|','10150179721048489','',NULL,NULL,NULL,'2011','04','10',NULL,NULL,NULL),(5053,'Wow. It\'s early. :)))','10150179151683489','',NULL,NULL,NULL,'2011','04','09',NULL,NULL,NULL),(5054,'Marami pa palang hindi nag family interview... I thought I was the only one left. :)))))','10150178152623489','',NULL,NULL,NULL,'2011','04','09',NULL,NULL,NULL),(5055,'Interview just finished. Wow. :|','10150176988238489','',NULL,NULL,NULL,'2011','04','07',NULL,NULL,NULL),(5056,'I\'m bored. :/ @-)','10150174604113489','',NULL,NULL,NULL,'2011','04','04',NULL,NULL,NULL),(5057,'Going to school tomorrow. =)))). SEP kasi. :\\','10150173468188489','',NULL,NULL,NULL,'2011','04','03',NULL,NULL,NULL),(5058,'Tomorrow won\'t be a boring day. :> =))))','10150173460618489','',NULL,NULL,NULL,'2011','04','03',NULL,NULL,NULL),(5059,'Graduation !','10150151143968489','',NULL,NULL,NULL,'2011','03','25',NULL,NULL,NULL),(5060,'Are we really going to graduate ? :(','10150149790068489','',NULL,NULL,NULL,'2011','03','24',NULL,NULL,NULL),(5061,'I can\'t believe i didn\'t get an award. :|','10150148344598489','',NULL,NULL,NULL,'2011','03','22',NULL,NULL,NULL),(5062,'It hurts when i did everything ang got nothing.. Diba Patrick Jingco ?','10150148342378489','',NULL,NULL,NULL,'2011','03','22',NULL,NULL,NULL),(5063,'Blue Down Low was AWESOME !!!!! =)))))))','10150145918198489','',NULL,NULL,NULL,'2011','03','19',NULL,NULL,NULL),(5064,'I got a new phooooneee. AWESOME. =)))))))))))','10150142129788489','',NULL,NULL,NULL,'2011','03','15',NULL,NULL,NULL),(5065,'ba\'t ayaw masunog ng JIMBOO ? :| LABO.','10150125017238489','',NULL,NULL,NULL,'2011','02','21',NULL,NULL,NULL),(5066,'i will burn my JIMBOO book now. =)))))))))','10150125014983489','',NULL,NULL,NULL,'2011','02','21',NULL,NULL,NULL),(5067,'going to mass......','10150124217283489','',NULL,NULL,NULL,'2011','02','20',NULL,NULL,NULL),(5068,'tinatamad ako magbasa ng jimboo. :|. even if i\'m low in filipino.','10150124216313489','',NULL,NULL,NULL,'2011','02','20',NULL,NULL,NULL),(5069,'My hand is killing meeee. :|','10150124207473489','',NULL,NULL,NULL,'2011','02','20',NULL,NULL,NULL),(5070,'I have a cast. Damn it. :|','10150124183673489','',NULL,NULL,NULL,'2011','02','23',NULL,NULL,NULL),(5071,'Let\'s go ROOKIES !!!!! Blake Griffin for the win ! =)))))','10150123351993489','',NULL,NULL,NULL,'2011','02','19',NULL,NULL,NULL),(5072,'Confirmation ! :>','10150119447158489','',NULL,NULL,NULL,'2011','02','13',NULL,NULL,NULL),(5073,'I am soooo screwed. :| :|','148669571853251','',NULL,NULL,NULL,'2011','01','22',NULL,NULL,NULL),(5074,'Thank God i PASSED. =)))))))). Sa wakas, relaxed na ako. =))','172472066129377','',NULL,NULL,NULL,'2011','01','21',NULL,NULL,NULL),(5075,'scored 27,250 in Bouncing Balls, beating his previous high score, along with Jed Dela Cruz\'s, Victor Rivera\'s, Emil Santos\'s, Migo Misa\'s, Anthony G. Peralta\'s, Miguel Jaime Miranda\'s, Paolo Derilo\'s, Patita Tumpalan\'s, Randy MaÃ±alac\'s, Paolo Mawis\'s, Kaye Aliwate\'s, Jao Cuartero\'s, Carlo Hernandez\'s, and Nithaniel Cruz\'s.','10150089642338489','',NULL,NULL,NULL,'2010','12','21',NULL,NULL,NULL),(5076,'scored 15,160 in Bouncing Balls, beating his previous high score, along with Andi Arellano\'s and Migo Misa\'s.','501221083488','',NULL,NULL,NULL,'2010','12','18',NULL,NULL,NULL),(5077,'thank you to all who greeted me! :> =)))))','154746967905635','',NULL,NULL,NULL,'2010','12','04',NULL,NULL,NULL),(5078,'awesome fieldtrip/brithday! =)))))))))))).','170671722956080','',NULL,NULL,NULL,'2010','12','03',NULL,NULL,NULL),(5079,'It\'s so easy to hack. =))))))))). -josh ambrosio. =))','106274772778760','',NULL,NULL,NULL,'2010','11','28',NULL,NULL,NULL),(5080,'Haaaaayyyyyyzzzz, boring sembreak...... :|','141758299205358','',NULL,NULL,NULL,'2010','10','30',NULL,NULL,NULL),(5081,'Going to antipolo tomorrow. Darn, I won\'t be able to use the internet. :|','107940712606160','',NULL,NULL,NULL,'2010','10','29',NULL,NULL,NULL),(5082,'Sarap gamitin young iPad. :>','159654284069118','',NULL,NULL,NULL,'2010','10','23',NULL,NULL,NULL),(5083,'For the first time sa middle school, 2nd honors ako! WOOHOO!','160741817280122','',NULL,NULL,NULL,'2010','10','19',NULL,NULL,NULL),(5084,'ANG HIRAP NG ENTRANCE TEST.... :|:|:|:|','151086811595660','',NULL,NULL,NULL,'2010','10','04',NULL,NULL,NULL),(5085,'BORED.','104168016311062','',NULL,NULL,NULL,'2010','08','31',NULL,NULL,NULL),(5086,'Everyone is in MC, and I am the only one here.... :| :| :| :|','146893955341174','',NULL,NULL,NULL,'2015','10','26',NULL,NULL,NULL),(5087,'\"Brebeuf\", Are we going to wear P.E sa Tuesday..?','149897288371480','',NULL,NULL,NULL,'2010','08','29',NULL,NULL,NULL),(5088,'What\'s our song for CLE..?','132947206748031','',NULL,NULL,NULL,'2010','08','11',NULL,NULL,NULL),(5089,'Bored. :|','117479121634675','',NULL,NULL,NULL,'2010','08','03',NULL,NULL,NULL),(5090,'Love the way you lie. - EMINEM.','145484195465402','',NULL,NULL,NULL,'2010','07','19',NULL,NULL,NULL),(5091,'Not Afraid. - EMINEM. :>','143954102282182','',NULL,NULL,NULL,'2010','07','19',NULL,NULL,NULL),(5092,'LET\'S GO MIAMI HEAT! :>','139488039410169','',NULL,NULL,NULL,'2010','07','11',NULL,NULL,NULL),(5093,'WEIRD. :|','137101859651335','',NULL,NULL,NULL,'2010','07','11',NULL,NULL,NULL),(5094,'WEIRD.','139437776081674','',NULL,NULL,NULL,'2010','07','10',NULL,NULL,NULL),(5095,'DARN IT. I failed a quiz in MATH. :|','122013494509580','',NULL,NULL,NULL,'2010','07','11',NULL,NULL,NULL),(5096,'LET\'S GET PHYSICAL! =)))))))))))))))))))','141943052486574','',NULL,NULL,NULL,'2010','07','07',NULL,NULL,NULL),(5097,'In Baguio until Saturday. Bored. :|:|:|','112910705392503','',NULL,NULL,NULL,'2010','03','31',NULL,NULL,NULL),(5098,'I miss my classmates. :|','102348579804339','',NULL,NULL,NULL,'2010','03','23',NULL,NULL,NULL),(5099,'I know it\'s summer and I can do anything I want to do, but I don\'t know why I keep on getting bored. :|:|:|:|','104354239598695','',NULL,NULL,NULL,'2010','03','22',NULL,NULL,NULL),(5100,'BORED. :|:|:|:|:|','102434749793740','',NULL,NULL,NULL,'2010','03','22',NULL,NULL,NULL),(5101,'In my tita\'s house because it\'s her birthday.... Getting bored already. :|. :|:|:|:|:|:|','107857415898620','',NULL,NULL,NULL,'2010','03','21',NULL,NULL,NULL),(5102,'I\'m going to school tommorow. :>:>:>:>. Just to visit 6-MABINI CLASSROOM. :>:>:> =))','102289369806196','',NULL,NULL,NULL,'2010','03','21',NULL,NULL,NULL),(5103,'Darn, I have to wake up at 6:00 in the morning. :|:|:|:|:|:|:|:|:|.','103878292976820','',NULL,NULL,NULL,'2010','03','19',NULL,NULL,NULL),(5104,'Hahahahahaha. Solve this riddle. ( Mr.Angeles). \"Pang-ilang pangulo si GMA?\" Translate this into English pero dapat kapag ginawa mo Filipino yung English Translation mo, kailangan kaparehas ng Translation mo yung \"Pang-ilang pangulo si GMA?\". :>:>:>:> =))))))))). HIRAP! :>','370705409842','',NULL,NULL,NULL,'2010','03','18',NULL,NULL,NULL),(5105,'I can\'t believe it\'s summer. :|. I\'M GOING TO MISS MY FRIENDS. :|:|:|:|','367983268847','',NULL,NULL,NULL,'2010','03','17',NULL,NULL,NULL),(5106,'Bored. :|:|:|:|:|....Again.:|:|:|:|:|:|:|','369601217061','',NULL,NULL,NULL,'2010','03','16',NULL,NULL,NULL),(5107,'Hayyyyyyyyzzz. Wala na makausap. :| Exams na lang tommorow. :|:|:|:|','364305467219','',NULL,NULL,NULL,'2010','03','14',NULL,NULL,NULL),(5108,'Still bored. Staring at the screen to see something new.... :|','362400759734','',NULL,NULL,NULL,'2010','03','14',NULL,NULL,NULL),(5109,'Bored. :|:|:|:|','366283624395','',NULL,NULL,NULL,'2010','03','14',NULL,NULL,NULL),(5110,'Me and Jason Bautista got cut in the tryouts! :|:|:|:|:|:|:|.','350102899681','',NULL,NULL,NULL,'2010','03','10',NULL,NULL,NULL),(5111,'I wonder why Matthew Moises is not online today.... =)). Every weekend he is online.... Hmmmmm. =)))))))','342148342269','',NULL,NULL,NULL,'2010','03','06',NULL,NULL,NULL),(5112,'Nababanas pa rin.....','378240900751','',NULL,NULL,NULL,'2010','03','06',NULL,NULL,NULL),(5113,'Just woke up... Now I am BORED. :|','341555588315','',NULL,NULL,NULL,'2010','03','06',NULL,NULL,NULL),(5114,'I put the album naaaaaaaaaa. =)) <3 :>','10150132909205721','',NULL,NULL,NULL,'2010','03','06',NULL,NULL,NULL),(5115,'I can\'t believe that only a few friends are online.... :O','333879419648','',NULL,NULL,NULL,'2010','03','05',NULL,NULL,NULL),(5116,'Still Pissed Off..........','341754696740','',NULL,NULL,NULL,'2010','03','05',NULL,NULL,NULL),(5117,'I can\'t believe that I don\'t have any classmates online! Only friends...... (sigh).....','313952829117','',NULL,NULL,NULL,'2010','02','21',NULL,NULL,NULL),(5118,'Going to mass then going to Eastwood to have fun with family! <3','338800595801','',NULL,NULL,NULL,'2010','02','21',NULL,NULL,NULL),(5119,'Going to MOA later.:> Might not go online until 9:00. Well I\'ll miss my classmates of course. =)))))))','350172719256','',NULL,NULL,NULL,'2010','02','20',NULL,NULL,NULL),(5120,'GOOD NIGHT EVERYBODY! I\'M GETTING BORED. NOT YET SLEEPY BUT GOING OFFLINE','317936452444','',NULL,NULL,NULL,'2010','02','19',NULL,NULL,NULL),(5121,'About to watch Drake and Josh. Very fun week. :>','315856262082','',NULL,NULL,NULL,'2010','02','19',NULL,NULL,NULL),(5122,'From \"FREE SOAP!\" to \"FREE FOOD!\". =))). PIZZA AND CHICKEN. GOOD TIMES. :>','317039913735','',NULL,NULL,NULL,'2010','02','19',NULL,NULL,NULL),(5123,'MATTHEW MOISES. GO ONLINE IN Y!M FOR MUSIC.','310423372580','',NULL,NULL,NULL,'2010','02','15',NULL,NULL,NULL),(5124,'Matthew go online on Y!M. We need to find music for the lyrics I made.','309513222610','',NULL,NULL,NULL,'2010','02','15',NULL,NULL,NULL),(5125,'Having fun in eastwood. :>.','314113745744','',NULL,NULL,NULL,'2010','02','13',NULL,NULL,NULL),(5126,'Grabe, Chino Mendiola is such a \"BLABBER MOUTH\". Do you remember the story in Grade 5 na merong guy na sobrang talkative?','484273105363','',NULL,NULL,NULL,'2010','02','12',NULL,NULL,NULL),(5127,'Hehe. I like pressing \"Like\" on posts.','463664765042','',NULL,NULL,NULL,'2010','02','12',NULL,NULL,NULL),(5128,'I want to have another field trip with my class. I want my classmates wierd songs again that would make our fieldtrip more \"AWESOMER\". :> =))).','274987077793','',NULL,NULL,NULL,'2010','01','29',NULL,NULL,NULL),(5129,'Today\'s Field Trip was one of the best.... All of us had a great time in the bus. My classmates were singing funny songs. This will be a memorable one. :>','301485856254','',NULL,NULL,NULL,'2010','01','29',NULL,NULL,NULL),(5130,'Please â¥ put â¥ this â¥ on â¥ your â¥ status â¥ if â¥ you â¥ care â¥ for â¥ the â¥ people â¥ who â¥ lost â¥ their â¥ lives â¥ through â¥ the â¥ earthquake â¥ in â¥ Haiti â¥ make â¥ a â¥ donation â¥ just â¥ for â¥ them â¥ it â¥ can â¥ make â¥ a â¥ difference','305882806489','',NULL,NULL,NULL,'2010','01','24',NULL,NULL,NULL),(5131,'TODAY IS CALLED \"HOME STUDY DAY\", BUT ALL I DO IS USE THE LAPTOP AND OTHERS, BUT NOT STUDY. I GUESS \"HOME STUDY DAYS\" ARE USELESS. =))))))))))','254878914436','',NULL,NULL,NULL,'2010','01','18',NULL,NULL,NULL),(5132,'Matthew Moises.... Go online on Yahoo Messenger. We need to do the lyrics for AP.','251808993925','',NULL,NULL,NULL,'2010','01','14',NULL,NULL,NULL),(5133,'Haven\'t started with the English Spelling \"REVIEWER\".','257696911984','',NULL,NULL,NULL,'2010','01','09',NULL,NULL,NULL),(5134,'I need 1st-2nd Quarter Spelling List. Amp.DARN JUG. :|','288347981040','',NULL,NULL,NULL,'2010','01','09',NULL,NULL,NULL),(5135,'I GOT SOME LOW GRADES. :|','207337311323','',NULL,NULL,NULL,'2009','12','16',NULL,NULL,NULL),(5136,'Ahhhhh, Freedom at last, No more torture. :-bd :>','218966964216','',NULL,NULL,NULL,'2009','12','15',NULL,NULL,NULL),(5137,'HELP PLEASE.','193011237380','',NULL,NULL,NULL,'2009','12','05',NULL,NULL,NULL),(5138,'Group!','215437629487','',NULL,NULL,NULL,'2009','11','20',NULL,NULL,NULL),(5139,'Ahhhh. Home at last. Where I can find peace. And Relax.','177957977719','',NULL,NULL,NULL,'2009','11','19',NULL,NULL,NULL),(5140,'KATY PERRY CONCERT WAS AWESOME.','181569020543','',NULL,NULL,NULL,'2009','11','15',NULL,NULL,NULL),(5141,'BORED. :|','194671776952','',NULL,NULL,NULL,'2009','11','13',NULL,NULL,NULL),(5142,':O :| =)))))))))))))','171684873675','',NULL,NULL,NULL,'2009','11','07',NULL,NULL,NULL),(5143,'Takot ako kay Mr.Sanchez.... baka delete niya yung profile ko sa facebook so i changed my name =))))))))))))','169857648261','',NULL,NULL,NULL,'2009','11','06',NULL,NULL,NULL),(5144,'Singapore is AWESOME! Still there but coming home soon :D','319045875180','',NULL,NULL,NULL,'2009','10','28',NULL,NULL,NULL),(5145,'RANDOM..... DON\'T KNOW THEM. BUT I VOTED THROUGH THE LOOKS. LOL','5003252919935','',NULL,NULL,NULL,'2009','09','27',NULL,NULL,NULL),(5146,'LOL :))))))))))))))))','168398661549','',NULL,NULL,NULL,'2009','09','27',NULL,NULL,NULL),(5147,'Move over LOSER!, there\'s a new HERO in town!','139276869785','',NULL,NULL,NULL,'2009','09','25',NULL,NULL,NULL),(5148,'YES! SELENA IS LEADING!','5003213499670','',NULL,NULL,NULL,'2009','09','19',NULL,NULL,NULL),(5149,'BOOM! ANSWER NOW','5003206557943','',NULL,NULL,NULL,'2009','09','19',NULL,NULL,NULL),(5150,':>','137108464067','',NULL,NULL,NULL,'2009','09','19',NULL,NULL,NULL),(5151,'....','167634858367','',NULL,NULL,NULL,'2009','09','19',NULL,NULL,NULL),(5152,'YES!','134463115889','',NULL,NULL,NULL,'2009','09','19',NULL,NULL,NULL),(5153,'BORED','137158952565','',NULL,NULL,NULL,'2009','09','19',NULL,NULL,NULL),(5154,'i was here a long time ago','138844784259','',NULL,NULL,NULL,'2009','09','18',NULL,NULL,NULL),(5155,'i could help too','135649811444','',NULL,NULL,NULL,'2009','09','18',NULL,NULL,NULL),(5156,'responded \'Team Taylor!\'','168498011048','',NULL,NULL,NULL,'2009','09','17',NULL,NULL,NULL),(5157,'JASON HUGAWAGA JUST TELL JASON THE TRUTH! PARA WALA NG GULUHAN','159975720621','',NULL,NULL,NULL,'2009','09','17',NULL,NULL,NULL),(5158,'WOOOOHOOOO! 3rd honors!!!','132296784659','',NULL,NULL,NULL,'2009','09','13',NULL,NULL,NULL),(5159,'boom!','129272677862','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5160,'I AM HERE','131273402468','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5161,'YUN NAG HONORSNA RIN AKO! 3RD!!!!! WOOOOOHOOOOOOOOOOOO','149668016293','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5162,'BOOM!','151213512600','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5163,'Can\'t wait for September 16!','129988112775','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5164,'okay gtg','148519781659','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5165,'Drake and Josh','153599353454','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5166,'ummmm','145532287773','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5167,'ayoko yung mga pelikulang pilipino eh','128559723262','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5168,'i hate it','159985454055','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5169,'Philippines','133608171911','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5170,'nope','146339317640','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5171,'actually turning 12','133687478855','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5172,'i am turning 13','151160114065','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5173,'no','150544100986','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5174,'yeah?','132112227002','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5175,'1996','129648398380','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5176,'wala na ata','137154752524','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5177,'what now?','135295971306','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5178,'LOL','153962963898','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5179,'.......','163504947064','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5180,'5:00','131089066918','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5181,'accept my friend request ann!','150542780986','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5182,'well i am','158568132743','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5183,'what\'s up?','146810852663','',NULL,NULL,NULL,'2014','04','12',NULL,NULL,NULL),(5184,'i am here','274890590715','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5185,'i added you also Ann!','131877138530','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5186,'She did not do any thing wrong anyway','146460562800','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5187,'September 16','135463861914','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5188,'LOL','135576756338','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5189,'Philippines','153146116017','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5190,'oh','163495246561','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5191,'I am 12','125420754631','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5192,'BOOM!','273552010446','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5193,'i think afternoon','135615556745','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5194,'ummmm','136891970765','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5195,'yeah','139031267413','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5196,'opo','145405252912','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5197,'LOL','174898821112','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5198,'WHAT DID I DO FUNNY?','156001427811','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5199,'ikaw kamusta ka na?','130079244087','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5200,'not in your house','130431574759','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5201,'i want to go there','129816128917','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5202,'cool','133879522041','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5203,'we know already ok?','130537146697','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5204,'you?','151698627847','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5205,'Philippines','133082202229','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5206,'LOL','146645126476','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5207,':P','253559560012','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5208,'close but not enough','133647537426','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5209,'i think','136436406314','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5210,'actually september 16 is the next webcast','160729329166','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5211,'i do not know but she always go online every morning','135246767260','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5212,'sure sure whatever you say','135172337932','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5213,'hello there :)','136565476721','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5214,'ok','138955546002','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5215,'do you have proof?','276205605214','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5216,'i live in the philippines where do you live?','135017306821','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5217,'once a week','156481532515','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5218,'yeah i know every week only right?','135860281700','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5219,'yeah','132946664491','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5220,'does she go online everyday?','277320720397','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5221,'oh yeah september 16 i think','129132820913','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5222,'yeah when?','130479814036','',NULL,NULL,NULL,'2009','09','12',NULL,NULL,NULL),(5223,'HAHAHA','231055840455','',NULL,NULL,NULL,'2009','08','15',NULL,NULL,NULL),(5224,'HIRAP!?! :>','114080924067','',NULL,NULL,NULL,'2009','08','07',NULL,NULL,NULL),(5225,'PLEASE!?! I\'LL RETURN A FAVOR IF YOU GIVE ME THESE!?!','118373856721','',NULL,NULL,NULL,'2009','08','07',NULL,NULL,NULL),(5226,' Garfield is so cute even if he is not fat!','109803527706','',NULL,NULL,NULL,'2009','07','31',NULL,NULL,NULL),(5227,':> BEAT ME IF YOU CAN!','127711053687','',NULL,NULL,NULL,'2009','07','26',NULL,NULL,NULL),(5228,'MALAMANG','5002783658050','',NULL,NULL,NULL,'2009','07','26',NULL,NULL,NULL),(5229,':> ','5002783162695','',NULL,NULL,NULL,'2009','07','26',NULL,NULL,NULL),(5230,'YOU SUCK!','109369189586','',NULL,NULL,NULL,'2009','07','25',NULL,NULL,NULL),(5231,':>','5002777457667','',NULL,NULL,NULL,'2009','07','25',NULL,NULL,NULL),(5232,'FAVORITES','5002771122265','',NULL,NULL,NULL,'2009','07','24',NULL,NULL,NULL),(5233,'PLEASE IF SOMEBODY HAVE, CAN I HAVE IT!?!','105951433118','',NULL,NULL,NULL,'2009','07','24',NULL,NULL,NULL),(5234,'HAHAHAHAHAHA','148737750096','',NULL,NULL,NULL,'2009','07','24',NULL,NULL,NULL),(5235,'hirap ng RIDE','102638744332','',NULL,NULL,NULL,'2009','07','18',NULL,NULL,NULL),(5236,':>','103886734857','',NULL,NULL,NULL,'2009','07','18',NULL,NULL,NULL),(5237,'WOLVERINE! ROCKS! THE BEST!','5002644738320','',NULL,NULL,NULL,'2009','07','10',NULL,NULL,NULL),(5238,'WOLVERINE ROCKS!','99402113194','',NULL,NULL,NULL,'2009','07','10',NULL,NULL,NULL),(5239,'ITO RIN !?!','100828389909','',NULL,NULL,NULL,'2009','07','09',NULL,NULL,NULL),(5240,'ATENEO NAMAN TALAGA EH :>','5002636260823','',NULL,NULL,NULL,'2009','07','09',NULL,NULL,NULL),(5241,'SURE WIN!!!!','5002636081759','',NULL,NULL,NULL,'2009','07','09',NULL,NULL,NULL),(5242,'WHOS HE?!?','120570761809','',NULL,NULL,NULL,'2009','07','09',NULL,NULL,NULL),(5243,'......','113783763392','',NULL,NULL,NULL,'2009','07','09',NULL,NULL,NULL),(5244,'COOL @-)','214882170603','',NULL,NULL,NULL,'2009','06','08',NULL,NULL,NULL),(5245,':>:>','94025150903','',NULL,NULL,NULL,'2009','06','08',NULL,NULL,NULL),(5246,'HAHAHAH LIMITED EDITION AGAIN :> :))','104455981552','',NULL,NULL,NULL,'2009','06','08',NULL,NULL,NULL),(5247,'HAHAHA You never got this eh? i got it too bad :))))))) =))) joke','103908577928','',NULL,NULL,NULL,'2009','06','08',NULL,NULL,NULL);
/*!40000 ALTER TABLE `to_be_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `part_of_speech_id` int(11) NOT NULL,
  `to_be_processed_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=716 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (358,'Happy',7,1),(359,'3rd',7,1),(360,'friendversary',7,1),(361,'thesismate',12,1),(362,'HAHAHA',12,1),(363,'Happy',7,2),(364,'3rd',7,2),(365,'anniversary',12,2),(366,'Janine',14,2),(367,'Tan',14,2),(368,'HAHA',14,2),(369,'D',14,2),(370,'Met',14,3),(371,'back',20,3),(372,'during',6,3),(373,'4th',7,3),(374,'year',12,3),(375,'HS',12,3),(376,'and',1,3),(377,'now',20,3),(378,'were',28,3),(379,'in',6,3),(380,'4th',7,3),(381,'year',12,3),(382,'college',12,3),(383,'insert',12,3),(384,'Jannie',14,3),(385,'and',1,3),(386,'Madge',14,3),(387,'THSST1',12,5),(388,'writing',29,6),(389,'our',19,6),(390,'thesis',12,6),(391,'paper',12,6),(392,'document',12,6),(393,'New',7,7),(394,'way',12,7),(395,'of',6,7),(396,'thesis',12,7),(397,'meeting',12,7),(398,'S19s',13,8),(399,'team',12,8),(400,'redef',12,8),(401,'HAHA',12,8),(402,'RoadToMOTA',14,9),(403,'HAHAHA',14,9),(404,'OMG',14,10),(405,'Park',14,10),(406,'Bo',14,10),(407,'Gum',14,10),(408,'in',6,10),(409,'Cebu',14,10),(410,'Janica',14,10),(411,'Mae',14,10),(412,'Lam',14,10),(413,'Shaila',14,10),(414,'Mae',14,10),(415,'Choa',14,10),(416,'DLSUTechSummit2016',12,11),(417,'3',2,11),(418,'WE',14,13),(419,'WANT',14,13),(420,'YOULa',14,13),(421,'Salle',14,13),(422,'Computer',14,13),(423,'Society',14,13),(424,'wants',32,13),(425,'you',18,13),(426,'to',25,13),(427,'become',27,13),(428,'the',3,13),(429,'very',20,13),(430,'best',9,13),(431,'If',6,13),(432,'you',18,13),(433,'want',31,13),(434,'to',25,13),(435,'become',27,13),(436,'an',3,13),(437,'innovator',12,13),(438,'of',6,13),(439,'technology',12,13),(440,'a',3,13),(441,'person',12,13),(442,'full',7,13),(443,'of',6,13),(444,'passion',12,13),(445,'for',6,13),(446,'service',12,13),(447,'and',1,13),(448,'an',3,13),(449,'explorer',12,13),(450,'of',6,13),(451,'a',3,13),(452,'whole',7,13),(453,'new',7,13),(454,'world',12,13),(455,'of',6,13),(456,'possibilities',13,13),(457,'catch',31,13),(458,'us',18,13),(459,'from',6,13),(460,'September',14,13),(461,'2630',2,13),(462,'8AM5PM',14,13),(463,'in',6,13),(464,'front',12,13),(465,'of',6,13),(466,'ISR',12,13),(467,'I',18,14),(468,'am',31,14),(469,'Robee',14,14),(470,'Khyra',14,14),(471,'Te',14,14),(472,'ID113',14,14),(473,'CSST',14,14),(474,'and',1,14),(475,'I',18,14),(476,'choose',31,14),(477,'La',14,14),(478,'Salle',14,14),(479,'Computer',14,14),(480,'Society',14,14),(481,'I',18,14),(482,'am',31,14),(483,'ready',7,14),(484,'to',25,14),(485,'become',27,14),(486,'the',3,14),(487,'very',20,14),(488,'best',20,14),(489,'and',1,14),(490,'catch',27,14),(491,'all',16,14),(492,'the',3,14),(493,'4sWE',12,14),(494,'WANT',14,14),(495,'YOU',18,14),(496,'to',25,14),(497,'be',27,14),(498,'a',3,14),(499,'part',12,14),(500,'of',6,14),(501,'this',3,14),(502,'too',20,14),(503,'Catch',27,14),(504,'us',18,14),(505,'from',6,14),(506,'September',14,14),(507,'2630',2,14),(508,'8AM5PM',14,14),(509,'in',6,14),(510,'front',12,14),(511,'of',6,14),(512,'ISR',14,14),(513,'See',27,14),(514,'you',18,14),(515,'happy',7,15),(516,'7th',7,15),(517,'D',12,15),(518,'httpsayscommyfun20thingsyoullonlyunderstandifyouwenttoachineseschool',12,16),(519,'Thank',27,17),(520,'you',18,17),(521,'for',6,17),(522,'this',3,17),(523,'3PS',12,17),(524,'hindi',12,17),(525,'po',12,17),(526,'ako',12,17),(527,'nadisappoint',12,17),(528,'na',25,17),(529,'ikaw',27,17),(530,'nagbigay',12,17),(531,'niyan',7,17),(532,'natouch',7,17),(533,'nga',12,17),(534,'ako',12,17),(535,'e',24,17),(536,'HAHA',14,17),(537,'HAHAHAHA',14,18),(538,'Janica',14,18),(539,'Mae',14,18),(540,'Lam',14,18),(541,'Jan',14,18),(542,'Kristoffer',14,18),(543,'Cheng',14,18),(544,'Jake',14,18),(545,'Seo',14,18),(546,'Jake',14,18),(547,'Lacquias',14,18),(548,'si',5,18),(549,'mac',5,18),(550,'mac',5,18),(551,'HAHAHAHAHA',12,18),(552,'c',12,19),(553,'Albert',14,19),(554,'Lorenz',14,19),(555,'Dizon',14,19),(556,'Angeline',14,20),(557,'J',14,20),(558,'Tan',14,20),(559,'Jennilyn',14,20),(560,'Wang',14,20),(561,'3',2,20),(562,'Saw',14,21),(563,'Lee',14,21),(564,'Byung',14,21),(565,'Hoon',14,21),(566,'inperson',12,21),(567,'and',1,21),(568,'had',28,21),(569,'a',3,21),(570,'moment',12,21),(571,'with',6,21),(572,'Kim',14,21),(573,'Woo',14,21),(574,'Bin',14,21),(575,'3',2,21),(576,'3',2,21),(577,'3',2,21),(578,'Miguel',14,25),(579,'Sietereales',14,25),(580,'Jennilyn',14,25),(581,'Wang',14,25),(582,'Bianca',14,25),(583,'Regala',14,25),(584,'Janica',14,25),(585,'Mae',14,25),(586,'Lam',14,25),(587,'Hi',14,26),(588,'John',14,26),(589,'Israel',14,26),(590,'Caingles',14,26),(591,'Janica',14,26),(592,'Mae',14,26),(593,'Lam',14,26),(594,'laro',12,26),(595,'na',25,26),(596,'din',27,26),(597,'HAHA',14,26),(598,'HAHAHA',14,28),(599,'ADVANOS',12,29),(600,'homework',12,29),(601,'The',3,30),(602,'expedition',12,30),(603,'has',32,30),(604,'arrived',30,30),(605,'The',3,30),(606,'captain',12,30),(607,'requested',28,30),(608,'to',25,30),(609,'land',27,30),(610,'immediately',20,30),(611,'to',25,30),(612,'find',27,30),(613,'out',23,30),(614,'more',8,30),(615,'about',6,30),(616,'this',3,30),(617,'planet',12,30),(618,'Find',27,30),(619,'out',23,30),(620,'this',3,30),(621,'March',14,30),(622,'2016',2,30),(623,'CCSDR2016',14,30),(624,'An',3,31),(625,'unknown',7,31),(626,'planet',12,31),(627,'has',32,31),(628,'been',30,31),(629,'found',30,31),(630,'in',6,31),(631,'our',19,31),(632,'galaxy',12,31),(633,'around',6,31),(634,'35',2,31),(635,'light',7,31),(636,'YEARS',13,31),(637,'away',20,31),(638,'We',18,31),(639,'have',31,31),(640,'sent',30,31),(641,'out',23,31),(642,'an',3,31),(643,'expedition',12,31),(644,'to',25,31),(645,'investigate',27,31),(646,'and',1,31),(647,'it',18,31),(648,'is',32,31),(649,'currently',20,31),(650,'on',6,31),(651,'its',19,31),(652,'way',12,31),(653,'to',25,31),(654,'its',19,31),(655,'destination',12,31),(656,'CCSDR2016',12,31),(657,'I',18,32),(658,'am',31,32),(659,'Robee',14,32),(660,'Khyra',14,32),(661,'Te',14,32),(662,'Associate',14,32),(663,'Vice',14,32),(664,'President',14,32),(665,'for',6,32),(666,'FinanceLSCS',14,32),(667,'gave',28,32),(668,'me',18,32),(669,'an',3,32),(670,'opportunity',12,32),(671,'to',25,32),(672,'use',27,32),(673,'my',19,32),(674,'skills',13,32),(675,'to',25,32),(676,'serve',27,32),(677,'my',19,32),(678,'college',12,32),(679,'It',18,32),(680,'also',20,32),(681,'helped',28,32),(682,'me',18,32),(683,'improve',27,32),(684,'as',6,32),(685,'an',3,32),(686,'officer',12,32),(687,'In',6,32),(688,'return',12,32),(689,'I',18,32),(690,'would',11,32),(691,'give',27,32),(692,'my',19,32),(693,'time',12,32),(694,'to',25,32),(695,'serve',27,32),(696,'this',3,32),(697,'org',12,32),(698,'3La',12,32),(699,'Salle',14,32),(700,'Computer',14,32),(701,'SocietyServing',14,32),(702,'you',18,32),(703,'since',6,32),(704,'1986Photo',12,32),(705,'by',6,32),(706,'Joanna',14,32),(707,'LauPostprocessed',14,32),(708,'by',6,32),(709,'the',3,32),(710,'Publicity',12,32),(711,'Creatives',15,32),(712,'Committee',14,32),(713,'Heneral',14,34),(714,'Miguel',14,34),(715,'Malvar',14,34);
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institution` varchar(5000) DEFAULT NULL,
  `date_started` varchar(45) DEFAULT NULL,
  `date_ended` varchar(45) DEFAULT NULL,
  `location` varchar(5000) DEFAULT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (6,'70th ENG','0000-00','',NULL,'10154655813993489'),(7,'Ateneo de Manila High School','','',NULL,'10154519079763489');
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-10  2:09:29
