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
  `type` varchar(100) DEFAULT 'null',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (109,'07/08/1997','birthday'),(110,'Ava','first_name'),(111,'Danica A.','middle_name'),(112,'Alimurong','last_name'),(113,'female','gender'),(114,'Pinamalayan, Mindoro Oriental, Philippines','location'),(115,'Pinamalayan, Mindoro Oriental, Philippines','hometown');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (33,'MIMAROPA Regional Science High School','High School',0000,NULL,'108394212525448'),(34,'RSHS','High School',2014,NULL,'106640076039500'),(35,'Regional Science High School for Region IV-MIMAROPA','High School',0000,NULL,'112504912108865'),(36,'De La Salle University','College',0000,NULL,'112961752051469');
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
) ENGINE=InnoDB AUTO_INCREMENT=917 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (884,'Rina: A Decade and Eight','attending','Dimalupig Hall A, Armed Forces of the Philippines Commissioned Officers Clubhouse, Camp General Emilio Aguinaldo, Quezon City',NULL,NULL,'1635312596766551'),(885,'YFC DLSU First General Assembly: Homecoming','attending','DLSU Retreat House',NULL,NULL,'1247021145328541'),(886,'August Bday Babies','attending','Laureano Di Trevi Towers','Makati','Philippines','1756744114573968'),(887,'Proactive Student Leaders Convention 2016','attending','20/F Multipurpose Hall, Andrew Gonzalez Bldg.',NULL,NULL,'833235823476543'),(888,'Praise & Worship: In Him Alone','attending','G210',NULL,NULL,'150967848621658'),(889,'YFC DLSU 2nd General Assembly - Show and Tell','attending','DLSU Yuchengco Terrace',NULL,NULL,'524146864432246'),(890,'YFC DLSU COVENANT ORIENTATION','attending','SJ 304',NULL,NULL,'1674381949513883'),(891,'ECHO : Praise Concert','attending','Physics Hall, Adamson University',NULL,NULL,'929132083834456'),(892,'YFC DLSU - Christmas Party!','attending','Merville Park, ParaÃ±aque City','ParaÃ±aque','Philippines','778059572340874'),(893,'CONTACTS PLEASE :)','attending',NULL,NULL,NULL,'521484394689579'),(894,'Bianca at 18','attending','Realship Yacht Charter and Rentals','Manila','Philippines','461304797410183'),(895,'Tiwala #KapitLang (A Praise & Worship Session)','attending','G208',NULL,NULL,'936341363070222'),(896,'Saint La Salle Pre-school Halloween Party','attending','Saint La Salle Preschool',NULL,NULL,'1072107489489335'),(897,'PTS General Assembly','unsure','G207',NULL,NULL,'125851464438075'),(898,'YFC DLSU 1st General Assembly: THE LORD\'S RIGHT TRACK','attending','Dlsu Retreat House','Manila','Philippines','463960053764643'),(899,'COSMIC: Campus Fresh Party','attending','FEU Diliman','Diliman','Philippines','1486065861714923'),(900,'Hello HRD','attending',NULL,NULL,NULL,'1602712610012455'),(901,'Arielle Part of Your World','attending','The Glass Garden','Pasig','Philippines','1569119396694006'),(902,'ITMATH3-S15B FINAL EXAMINATION','attending','De La Salle University-Manila','Manila','Philippines','1002868879725344'),(903,'ITMATH3-S15B THIRD LONG QUIZ','attending','De La Salle University','Manila','Philippines','1870499943174274'),(904,'ITMATH3-S15B SECOND LONG QUIZ','attending','Gokongwei Building, De La Salle University - Manila','Manila','Philippines','1604602963102146'),(905,'CROSS General Assembly','attending','DLSU Retreat House',NULL,NULL,'793311964050247'),(906,'YFC- DLSU GA','attending','J504 (SJ 5TH FLOOR)',NULL,NULL,'977851595560109'),(907,'ITMATH3-S15B FIRST LONG QUIZ','attending','Gokongwei Building, De La Salle University - Manila','Manila','Philippines','427152827442681'),(908,'Contacts plezzzz','attending','Encantadia','Manila','Philippines','554030794702009'),(909,'House Party, YFC-DLSU 2nd General Assembly','attending','2nd Floor DLSU Retreat House (near Enrique Razon Sports Center)',NULL,NULL,'1494177704171541'),(910,'CHANELLE @ 18','attending','Alchemy Bistro Bar','Makati','Philippines','830942053604962'),(911,'ITMATH1-S15 THIRD LONG QUIZ','attending','Room 201, Gokongwei Building, De La Salle University',NULL,NULL,'818421108190442'),(912,'ITMATH1-S15 SECOND QUIZ','attending','Room 201, Gokongwei Building, De La Salle University',NULL,NULL,'1498684047033253'),(913,'Term 1, General Assembly','attending','Natividad Fajardo Auditorium, Andrew Bldg., De La Salle University','Manila','Philippines','565509456893477'),(914,'ITMATH1-S15 FIRST LONG QUIZ','attending','Room 201, Gokongwei Building, De La Salle University - Manila',NULL,NULL,'774930539213301'),(915,'ALGECON-V26 FIRST LONG QUIZ','attending','Room 106, Saint Joseph Building, De La Salle University-Manila',NULL,NULL,'728002123908262'),(916,'Jonas Brothers Live Webcast 2PM EST','attending',NULL,NULL,NULL,'10153279171294283');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (128,'Ava Marcia Ansaldo Alimurong','mother','10154222382470759'),(129,'Arvin Ansaldo Alimurong','brother','10210130335353860'),(130,'Christian A. Alimurong','brother','1446440955366288'),(131,'Eugene Ansaldo Alimurong','brother','1591880217493051'),(132,'Jun P Alimurong','father','10155848674254951'),(133,'Venzel Byron Yap Revillosa','cousin','1466556013363612'),(134,'Ace Brian Ansaldo Alimurong','brother','10208799914614808'),(135,'Grace Bienne Constantine Manalo','sister','1249095285145739'),(136,'Anne Janelle Alimurong','cousin','1310078852393452'),(137,'Dondon Vazquez','uncle','1153934388038559'),(138,'Michael Hernandez','cousin','10211463430168690');
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
  `type` varchar(1000) DEFAULT NULL,
  `fbID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1021,'Center For Social Concern and Action','College & University','365484060239179'),(1022,'RVR COB Week 2017','Community','745949118890804'),(1023,'For The Kids','Community','202509823216131'),(1024,'Towards Uplifting Knowledge and Leadership Advancement Series','Organization','1150516855063207'),(1025,'Pillow Play','Games/Toys','1137831319593072'),(1026,'P&G Careers','Region','96261810969'),(1027,'HAWK bag','Outdoor & Sporting Goods Company','148649521358'),(1028,'Yellow Cab Pizza Co.','Food & Beverage Company','226322167379462'),(1029,'UA&P Floorball Club','School Sports Team','152683428502120'),(1030,'CFC YFC Metro Manila Central C Sector','Religious Organization','670853036318892'),(1031,'CROSs DLSU','Religious Organization','1458681277795400'),(1032,'Books from underground','Book Store','412203932181751'),(1033,'Pilipinas Floorball Focus','Community','196611990733930'),(1034,'Page Four Productions','Producer','448346345289858'),(1035,'Helping Hands CafÃ©','Restaurant','652115324930214'),(1036,'BMS REDux','Arts & Entertainment','269423776554900'),(1037,'MovieWeb','News/Media Website','46132502198'),(1038,'Youth for Christ - Centro Escolar University','Community','991203224258265'),(1039,'CCS Month 2014: Conexus','Community','996689880345669'),(1040,'Youth for Christ Campus Based','Community','103523353047479'),(1041,'Sheng-Aleng','Product/Service','1396459147319247'),(1042,'University Vision-Mission Week 2016','Community','1714153808806231'),(1043,'The Feast Manila','Religious Organization','245659595452992'),(1044,'Go Archers','Media/News Company','211497745544843'),(1045,'Where\'s Ramona?','Musician/Band','289715331223003'),(1046,'Peer Tutors Society','Non-Profit Organization','208440378090'),(1047,'De La Salle Floorball','School Sports Team','528169293904194'),(1048,'CATCH Twenty-Eighteen','College & University','544101589089347'),(1049,'Julie Anne San Jose','Artist','400990430109563'),(1050,'DLSU-Manila Secret Files','Community','576825992449694'),(1051,'Grab','App Page','527357467320600'),(1052,'Dine in the Dark','Community','1581222475487067'),(1053,'Bogz Wong','Blogger','179910085386883'),(1054,'YFC West Cluster Batangas','Religious Organization','662242140510619'),(1055,'Youth For Christ - UP Manila','Religious Organization','172100641589'),(1056,'DLSU Technology Summit','Computer Company','1572097723020867'),(1057,'Catch Twenty-Sixteen','Organization','142329109293517'),(1058,'Handog 2014','Community','295341430657720'),(1059,'Dlsu Usg','Organization','283415475102221'),(1060,'Alchemy Bistro Bar','Bar & Grill','838889959473030'),(1061,'DLSU Sprint','Non-Profit Organization','455948477834399'),(1062,'DLSU JEMA','Non-Profit Organization','150272728495752'),(1063,'DLSU CSG','Organization','174797889340539'),(1064,'David Henrie','Artist','261496807281704'),(1065,'YFC DLSU','Religious Organization','180350716999'),(1066,'De La Salle University-Manila Secret Files','Media/News Company','596767770358949'),(1067,'The LaSallian','Media/News Company','149678604759'),(1068,'The Magnitude Online','School','1404633763094347'),(1069,'Acer Philippines','Product/Service','308832612831'),(1070,'RSHSian\'s Journal','Community','229043323923686'),(1071,'De Castro\'s Events Place','Local Business','752596871433474'),(1072,'Twilight: New Moon','Movie','106268599409933'),(1073,'Youth for Christ - RSHS High School Based','Non-Profit Organization','145748795627946'),(1074,'UP MindoreÃ±os','Non-Profit Organization','116633568381309'),(1075,'Isang Patak, Tatatak','Community','538894662815272'),(1076,'YFC Meme','Entertainment Website','137534219766066'),(1077,'Candy Crush Saga','App Page','244944385603396'),(1078,'Sony Philippines','Company','122852567732763'),(1079,'Fc Lolongs','School Sports Team','413455522028939'),(1080,'Mimaropa Regional Science High School Supreme Student Government','Organization','249658921812778'),(1081,'Elmo and Julie Anne','Artist','122644961091022'),(1082,'JULIE ANNE SAN JOSE','Artist','101474113232028'),(1083,'YFC Bansud','Religious Organization','189616127756479'),(1084,'Facebook for Every Phone','App Page','331288023558058'),(1085,'My Shops','App Page','161676290609266'),(1086,'Barn Buddy','App Page','177393839031773'),(1087,'Hotel City','App Page','142368335881829'),(1088,'Restaurant City','App Page','275904399136748'),(1089,'Farm Town','App Page','314745418566392'),(1090,'FishWorld','App Page','302336176471249'),(1091,'Winwyn Marquez (Official Fan page)','Artist','122724947775272'),(1092,'~Admin Rain~','Public Figure','266078500098758'),(1093,'The Little Prince Official','Fictional Character','243775288975628'),(1094,'CSCA-DEPED','Government Organization','160583407907'),(1095,'MABAIT ako!! di nga lang HALATA >:]','Producer','197540763643783'),(1096,'The New Love Story on Video by Marcelo Santos III','Writer','139613276109630'),(1097,'HANDOG 2011','Community','173504832712683'),(1098,'AYY!ANG CUTE! :3','Public Figure','117693574918774'),(1099,'Frito-Lay','Food & Beverage Company','167658763270506'),(1100,'Quote Portal','Community','161779850537488'),(1101,'Crazy Little Thing Called Love a.k.a First Love (Thai Movie)','Community','152524271467239'),(1102,'III- ALEXANDER GRAHAM BELL (sy: 2010-2011)','Website','133467536687656'),(1103,'waiting around for something you know will probably never happen, but still hoping it might..','Interest','161233353889760'),(1104,'I LOVE JESUS AND IM PROUD TO SAY IT','News/Media Website','52440476277'),(1105,'Nick Jonas','Public Figure','103760939663187'),(1106,'MYX Philippines','TV Channel','145388032112'),(1107,'I Love Jesus, by iLoveJesusonline.com','News/Media Website','92047888071'),(1108,'Rl Stine Fear Street','Book','105695426127307'),(1109,'Nick Jonas','Musician/Band','173093076641'),(1110,'Jesus is the only one worthy of fans.....Let\'s make Him #1 by Tommy Gibson','Community','343697486050'),(1111,'Badminton','Interest','112285278784684'),(1112,'Miley Cyrus','Musician/Band','5845317146'),(1113,'Wizards of Waverly Place','Education','113470828663470'),(1114,'Jonas Brothers: Living the Dream','TV Show','103794709658655'),(1115,'Suite Life On Deck','TV Show','101880529854121'),(1116,'Jonas brothers 3d movie','Movie','116329471710496'),(1117,'Wizards of Waverly Place The Movie','Movie','115187608495886'),(1118,'J.O.N.A.S','TV Show','114365171913823'),(1119,'Table Tennis','Interest','108167272538953'),(1120,'Hannah Montana: The Movie','Movie','107522975943980'),(1121,'The Little Prince','Book','105618116139414'),(1122,'Hannah Montana','TV Show','103126219727083'),(1123,'Taylor Swift','Musician/Band','19614945368'),(1124,'Jonas Brothers','Musician/Band','5836432901');
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
) ENGINE=InnoDB AUTO_INCREMENT=4042 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (3786,'May Luna kaya mo yaan!! Andito kami for you. ð','10208861799328401','',NULL,NULL,NULL,'2017','02','25',NULL,NULL,NULL),(3787,'\"There is no limit to what we, as women, can accomplish.\"\nâMichelle Obama\n\nComing soon on March 2017!','10208856034144275','',NULL,NULL,NULL,'2017','02','24',NULL,NULL,NULL),(3788,'Happy birthday kuya Arvin Ansaldo Alimurong! :) ð love you. ð','10208690352722343','Christian A. Alimurong',NULL,NULL,NULL,'2017','02','05',NULL,NULL,NULL),(3789,'Congrats Youth For Christ - UP Manila!! :D','10208583934381951','',NULL,NULL,NULL,'2017','01','23',NULL,NULL,NULL),(3790,'Meet my Household. ð¯ð','10208536648759840','Cheelouvette Tiaga, Ivan Lawrence Arcilla, Deniel De Los Reyes, Zyra Joy Parafina, Rina Mutiangpili, Benja Rayos, Kyle Anne Taala, Ranica Casipit, Jeremiah Jacinto, John Pambid, Larenz Lojo and Josephine Ada Caparas',NULL,NULL,NULL,'2017','01','19',NULL,NULL,NULL),(3791,'Sunday Famday! â¤','10208351005838883','Ava Marcia Ansaldo Alimurong, Christian A. Alimurong, Arvin Ansaldo Alimurong, Jun P Alimurong, Eugene Ansaldo Alimurong and Ace Brian Ansaldo Alimurong',NULL,NULL,NULL,'2016','12','27',NULL,NULL,NULL),(3792,'Org is Life <3','10208138665370504','',NULL,NULL,NULL,'2016','12','03',NULL,NULL,NULL),(3793,'I will remember to log out of a public computer next time. :)','10208050866695592','',NULL,NULL,NULL,'2016','11','22',NULL,NULL,NULL),(3794,'I\'m the kind of person na never na kontento sa abilities ko but with YFC I know that I\'m capable to do stuff because I\'m not alone. I have Him and the whole YFC family with me. <3 \n\nGod made a lot of stories and my story is not one of the most inspiring but I know that my story is special in His heart. <3 This is not just my story, this is HIStory. <3 \n\nJoin the upcoming Youth Camp on Nov. 12-13, 2016! :) See you soon. <3','10207805537882525','',NULL,NULL,NULL,'2016','10','23',NULL,NULL,NULL),(3795,'So proud of you guys! #TeamBidaBida','10207766136897525','Cheelouvette Tiaga, Jeremiah Jacinto, Neyo Luzcelito Rivera Amparo, Cheska Elizaga, Andrea Culminas, Val Jason Guerra, Alyzza Vienn Mendoza Eclavea and Mark Cary Fatalla',NULL,NULL,NULL,'2016','10','20',NULL,NULL,NULL),(3796,'SectorCon Dance!! :) Nadine Tumbaga, Jarie Balbedina and Myra Gracia Villas Good job guys!! :D Turuan nyo na ko sumayaw(jk). :) So proud of you!! <3','10207752904806731','',NULL,NULL,NULL,'2016','10','18',NULL,NULL,NULL),(3797,'Dati may concept of Freedom is doing whatever I want kasi I\'m free to do so. Pero dahil sa Tredtwo class ko nag iba yung vision ko for that. And sa YFC ko narealize na I can have fun sa simple things. :) They also gave me the reason and stick to my new vision of freedom. :)','10207652067045850','Cheelouvette Tiaga, Zyra Joy Parafina, Benja Rayos, Meg Abuan, Benette Baladad and Chriss Warren Robles',NULL,NULL,NULL,'2016','10','06',NULL,NULL,NULL),(3798,'Before going to La Salle, I was scared na wala akong magiging friends and everything kasi galing ako sa province but I was wrong. I went to La Salle thinking that I was going to be alone but the exact opposite happened. YFC will always give me the EXTRA ORDINARY FRIENDSHIP that will always keep me safe. <3 \n\nDo you want to have the EXTRA ORDINARY FRIENDSHIP? Join Youth For Christ and experience the Fun and Friendship we could give you. :) Just try and we will give you the reason to stay. :)','10207647119802172','Ivan Lawrence Arcilla, Deniel De Los Reyes, Zyra Joy Parafina, Benja Rayos, Arvin Adajar, Ranica Casipit, Nicole Villahermosa, Ma Alyssa Jo Arcilla, Kae Abastillas, Nadine Tumbaga, John Pambid, Rochelle Aila C. Hernandez, Debbie Tatel, Danilo Galang, Jels Arcilla, Toni Rose Sarcida, Lhareine Gonzaga Javier, Cesar Adrian, Kenken Camarao, Camille Calipusan, Ma NiÃ±a Fradejas Baonguis, Marc Edgregg Roldan, Arlyssa Rica Bustillo, Benette Baladad, Dennis Christiane M. Roco, Ronnel Deinla, Diego QuiÃ±ones Fodulla, Lyka Casao Santos, Alyssa Nazareno, Van Cliff Carmona, Mikee Mampusti Mambil, Keats Mampusti, Kim Czar Bacongco, Nicole Marie Abella Cortes, Charlette Siega, Erika Machida, Airo Reyes and Angel Fradejas Casao',NULL,NULL,NULL,'2016','10','04',NULL,NULL,NULL),(3799,'FUN ba sa YFC? :)\n\nYES!! :) Can you see the picture? Everyone is smiling and lahat kami dyan ay YFC. ;) Can you see how fun could it be pag sumali ka ng YFC? :D Sometimes, nakakapagod ang event pero for sure sobrang saya ng event na yan! :D Will see you sa events ng YFC para mafeel  nyo din ang fun na mahirap iexplain pero madali mafeel pag kasama mo ang YFC! :D','10207637327157362','Jels Arcilla',NULL,NULL,NULL,'2016','10','05',NULL,NULL,NULL),(3800,'Youth For Christ - De La Salle University brings you back to the 80s! \n\nThis October 3-6 at Miguel Bench 7 from 9:00 AM - 5:00 PM, be excited for the Annual Recruitment Week and experience the 4F\'s that your YFC Friends keep on saying. FUN. FAITH. FREEDOM. FRIENDSHIP. â¤ \n\nHope to see you soon and let\'s all claim to have a blessed week ahead! :)','10207628902186743','',NULL,NULL,NULL,'2016','10','03',NULL,NULL,NULL),(3801,'ð','10207573675886120','Deniel De Los Reyes, Nicole Villahermosa and Jervin Mark Chagas',NULL,NULL,NULL,'2016','09','25',NULL,NULL,NULL),(3802,'Executive Committee Readiness Training with you guys is one of the greatest weekend ever. â¤ð The journey will definitely not be easy, but all the sacrifices we\'re willing to make will paid off. â¤ proooomise. Start pa lang ito and I\'m hoping and praying na in the end ay ganito pa din tayo ka clingy and strong. Love you YFC DLSU. ððð\n\nInsJosephine Ada Caparasaras and kJohn Ray Francia Amolozaloza. Namiss namin kayo. ðâ¤','10207509086591428','Cheelouvette Tiaga, Ivan Lawrence Arcilla, Deniel De Los Reyes, Zyra Joy Parafina, Rina Mutiangpili, Benja Rayos, Kyle Anne Taala, Arvin Adajar, Ranica Casipit, Nicole Villahermosa, Kae Abastillas, Jeremiah Jacinto, John Pambid, Danilo Galang and Earl Yambao',NULL,NULL,NULL,'2016','09','17',NULL,NULL,NULL),(3803,'yiieee. HAHAHAHA','10207375291766641','Rochelle Aila C. Hernandez',NULL,NULL,NULL,'2016','08','31',NULL,NULL,NULL),(3804,'It was indeed a great season and it wouldn\'t be possible without the club members! Thank you so much! ð and the legit season is coming up and I know that we\'re going to do better with each other!! â¤','10207291526792569','Mary Stephanie Carranza, Zacky Tamargo, Carlos Villafuerte, Ridge Reyes Rebello, Josh Manalili, Jayziel Rose Trinidad, Ralph Reyes Rebello, Karl Cirilos, Ryan Reyes Rebello, Ralph Andrew Ramos, Robin Samson and Koki Nagai',NULL,NULL,NULL,'2016','08','20',NULL,NULL,NULL),(3805,'It was a very good season!! Thank you Tiger cubs for being the best PE team!! ðð you guys gave your hearts out and i. So proud of you! ððð I hope this is not the last time you will play Floorball and may the 4.0 be with you!! ðððª','10207291484431510','Diane Deocampo, David Samson, Ryan Reyes Rebello, Abigail Abada, Ken Yokohama, Celine Dionisio, Patrick Ngo, Michael Salazar and Camille Therese Pastoriza',NULL,NULL,NULL,'2016','08','20',NULL,NULL,NULL),(3806,'HAPPY BIRTHDAY to one of the kindest person I know. :) â¤ God bless and see you soon. :) pmed you the rest of my message. ðð\n\nPs. I tried to be artistic.','10207215003959546','Anton Hans Ng',NULL,NULL,NULL,'2016','08','10',NULL,NULL,NULL),(3807,'Kuyaaa! HAPPY HAPPY BIRTHDAY TO YOU! Thank you for always spoiling me and loving me too much. ;) you know i love you too and im always here for you! â¤ more free food from you. ;) ako na lang muna girlfriend mo para happy tayo. God bless. â¤','10207214974478809','Christian A. Alimurong',NULL,NULL,NULL,'2016','08','10',NULL,NULL,NULL),(3808,'@lalalareyn HAPPY BIRTHDAY!! â¤ð ayaw ko na maging sweet kasi every year sweet tayo. :) just remember that i\'m always here for you! Love ya! ;) wag masyado madaming boys. God bless. â¤','10207179434470331','Lhareine Gonzaga Javier',NULL,NULL,NULL,'2016','08','04',NULL,NULL,NULL),(3809,'GOKONGRACE! :) \n\nFrom the bottom of my heart, i want to thank all the participants, pts friends, central committee, and cores of our orgs! â¤','10206939317147548','',NULL,NULL,NULL,'2016','07','01',NULL,NULL,NULL),(3810,'HAPPY HAPPY BIRTHDAY KUYA! :) I love and miss you already. :) Sorry wala kami dyan pero babalik na ko this week. ;) libree. Haha. â¤ï¸ð Good luck and God bless! Enjoy your day! And have a good year cus you\'re one of the best and you deserve good things!! â¤ï¸ love you!!','10206630555868709','Ace Brian Ansaldo Alimurong',NULL,NULL,NULL,'2016','05','15',NULL,NULL,NULL),(3811,'Play floorball with us! :)','10206564592459665','',NULL,NULL,NULL,'2016','05','05',NULL,NULL,NULL),(3812,'Travelling with my family is the most precious moments we have. Every normal place ay nagiging special basta complete kami. :) Yung completeness namin is the source of unity ng family namin. basta magkakasama kami ay masaya din kami. :) To more adventures with my family. <3 love you Ava Marcia Jun Arvin Ace Brian Christian Eugene','10206142003975217','',NULL,NULL,NULL,'2016','03','14',NULL,NULL,NULL),(3813,'To my Facilitator and a very good friend of mine,\n\n4 years ago, i went to a Youth Camp kasi ininvite mo ko and you became my Facilitator din. So basically, my YFC Life started with you talaga. :) I won\'t be serving until now siguro kung hindi mo talaga ako sobrang na evangelize.   \n\nThank you sa lahat, especially sa memories (not only sa YFC pero sa kasama yung ibang events and normal days) and lessons na natutunan ko sayo. :) You\'re the best facilitator ever for me. :) love you ate Kim C Bognot! :)\n#FaciAppreciation','10205955195985134','',NULL,NULL,NULL,'2016','02','12',NULL,NULL,NULL),(3814,'Let out your praises to the Lord as you take pride in our God through these statement shirts brought to you by YFC DLSU.\nShirts are open to all YFCs and Non-YFCs inside and outside the campus. Order your shirt now by filling up this form http://bit.ly/YFCDLSUshirtselling2016. For inquiries contact Arvin Adajar(0905 459 3225) or Kae Abastillas(0906 424 4532)','10205944146068893','',NULL,NULL,NULL,'2016','02','11',NULL,NULL,NULL),(3815,'HAPPY BIRTHDAY TO THE BEST PANGANAY!! ððð» I hope you had a good one and im always here for you kuya kahit lagi akong busy. Sorry. Love you. â¤ï¸','10205907846801434','',NULL,NULL,NULL,'2016','02','06',NULL,NULL,NULL),(3816,'A nice way to spend my Sunday. For The Kids. â¤ï¸ð¦ð½ð','10205804184729947','',NULL,NULL,NULL,'2016','01','17',NULL,NULL,NULL),(3817,'\"I want to become a leader who doesn\'t only leads but also follows.\"','10205778219320828','',NULL,NULL,NULL,'2016','01','13',NULL,NULL,NULL),(3818,'Pedal-Go-Kart','10205678622590972','',NULL,NULL,NULL,'2015','12','27',NULL,NULL,NULL),(3819,'Sobrang nakakaproud kuya Deniel De Los Reyes!! :) ðªð½ðªð½â¤ï¸ðð» nice one!','10205551843581576','',NULL,NULL,NULL,'2015','12','03',NULL,NULL,NULL),(3820,'I told myself a year ago na every metroCon ay sasama ako kasi sobrang fun and I\'m just so happy na nagawa ko yung promise ko sa sarili ko. :)\n\nIm just one of the luckiest to experience this kind of conference. This metroCon wont be my last metroCon. :) #YFCLeague2015 #MetroCon2015','10205377954994470','',NULL,NULL,NULL,'2015','10','26',NULL,NULL,NULL),(3821,'WHERE ARE YOU GOING?\n\nYouth For Christ - De la Salle University brings you to a weekend you will never forget.\n\nThis coming October 17 and 18, be excited for FUN-filled activities in our two-day youth camp where you can build new FRIENDSHIPS, and use your FREEDOM to experience God\'s love through FAITH.\n\nVisit us at Henry Sy Velasco Side on October 12, 13, and 15, and at Velasco Bench 1 on October 14 and 16 to find out more what\'s in store for you.\n\nMay God be praised!','10205311233366471','',NULL,NULL,NULL,'2015','10','10',NULL,NULL,NULL),(3822,'Today is a very important day for my mom, pero hindi lang sa kanya. Today is also an important day to me kasi if hindi pinanganak ang mommy ko wala din ako dito. :) HAPPY BIRTHDAY MOMMY!!!! :))))) \n\nIm the luckiest person because i have you as my mom. You\'re very understanding, and you trust me so much. â¤ï¸ i wont do anything to break that trust. Love na love ko po kayo. â¤ï¸ i know im a hardheaded person pero pinagtyatyagaan nyo ako and i thank you for that. â¤ï¸ thank you for being the best mom in the world. Love you to the moon and back.','10205307144104242','Ava Marcia Ansaldo Alimurong',NULL,NULL,NULL,'2015','10','12',NULL,NULL,NULL),(3823,'Naaalala ko pa nung 2nd year ako. I was invited to go to the YFC camp. At first I don\'t really want to go pero a close friend of mine invited me and i cant say no. Nahihiya ako kasi upperbatch sila and kaclose ko nga sila. Tapos sabi nina Lhareine at Angel pupunta daw sila and sila kasi yung lagi kong kasama sa school so parang ok lang na mag camp ako. Actually i just want an overnight sa school. ð­ but i never thought na yung camp na pinuntahan ko ang camp na magbabago ng buhay ko. I went to a camp without the purest intention or nicest intention but it doesn\'t matter because what matters the most is why did i stay. :) \n\n\"Where are you going?\" Oct 17-18. John:10:16','10205305014290998','',NULL,NULL,NULL,'2015','10','09',NULL,NULL,NULL),(3824,'Cheelouvette tiaga, 113. HAHAHAHA. ðð','10205224836086593','Cheelouvette Tiaga',NULL,NULL,NULL,'2015','09','22',NULL,NULL,NULL),(3825,'Join Youth For Christ and come journey with us towards the Lord\'s Right Track!\nVisit us on September 14-18 at the Central Plaza (front of Power Mac Store) and have the chance to experience fun, friendship, freedom, and faith. Don\'t miss out on the opportunity to form lifelong bonds with newly found brothers and sisters in Christ!\nEveryone is also invited to attend our 1st General Assembly of the academic year on September 18 at 1:00 pm at the DLSU Retreat House.\nMay God be praised! :>','10205167377610167','',NULL,NULL,NULL,'2015','09','12',NULL,NULL,NULL),(3826,'Wow. So ganito pala ang feeling pag maliit. ðð jk!! ð','10205162488127933','Janica Mae Lam, Shaila Mae Choa, Rois Climaco and Wrenzo Ubaldo',NULL,NULL,NULL,'2015','09','12',NULL,NULL,NULL),(3827,'HAPPY BIRTHDAY KUYA CHA!!!! ð°ð I love you!! â¤ï¸ I\'m always here for you! Ingat lagi. â¤ï¸','10204968219351335','',NULL,NULL,NULL,'2015','08','09',NULL,NULL,NULL),(3828,'HAPPY BIRTHDAY TO THE BEST DAD EVER! ððð love you. ðð»â¤ï¸','10204582821836638','',NULL,NULL,NULL,'2015','06','10',NULL,NULL,NULL),(3829,'CONGARTS!!! ðððð»ðð»ðð»ðð»ðð»ðð» I\'m so proud of you!! ð­ð­ððððð libre na to pag may trabaho. ððð»ðð» love you!! ððð','10204338108438956','Christian A. Alimurong',NULL,NULL,NULL,'2015','05','07',NULL,NULL,NULL),(3830,'To:\nAva Marcia Ansaldo Alimurong and Jun P Alimurong \n\nHAPPY HAPPY ANNIVERSARY!! :) MORE YEARS TO COME!!! aaminin ko, nakalimutan ko talaga. :( sobrang nastress kasi ako sa mga nangyayari sa school. finals pa namin next week. dami requirements. so sorry. :( kaya ako na lang siguro ang huli. :) \n\nAlam ko na super importante ng day na ito for our family. :) This day kayo nag pakasal. yay!! <3  Super thankful lang ako na kayo ang naging parents ko. :) I\'m so lucky to have you. :) Mahal na mahal nyo kami, inaalagan nyo kami, iniingatan, naspospoiled kami, and everything. tho we have bad attitudes never kayo nag give up and you just keep on loving us. :) THANK YOU!! love ko din po kayo. :) Sobraa. :)','10204213460322831','',NULL,NULL,NULL,'2015','04','18',NULL,NULL,NULL),(3831,'Get ready to experience fun, friendship, freedom, and faith in \none awesome adventure!\n\nAmazing experiences await you this coming March 9 - 13 at the \nHenry Sy grounds :D So what are you waiting for? Come and join\nthe ride!\n\n#YFCDLSU20thAvenue','10203953864713103','',NULL,NULL,NULL,'2015','03','09',NULL,NULL,NULL),(3832,'i love my fans!!!!\n\n..... my electric fans','10203729256338034','',NULL,NULL,NULL,'2015','01','29',NULL,NULL,NULL),(3833,'ako........ si ava','10203729246417786','',NULL,NULL,NULL,'2015','01','28',NULL,NULL,NULL),(3834,'I <3 Chanelle Moscardon #YOUDABEST','10203393206376995','',NULL,NULL,NULL,'2014','12','13',NULL,NULL,NULL),(3835,'Fun day with you guys! :)) see ya soon! :)','10203354791176639','Cesar Adrian, Miguel de Vera and Migs Jaudian',NULL,NULL,NULL,'2014','12','05',NULL,NULL,NULL),(3836,'SYD!! Nag tampo ka na ba sa aking HBD?! HAHAHA. :))))) Alam mo ba nagiisip talaga ako ng matinong ibabati sayo. kaso hindi talaga ako matino so ito lang. :) hihi. Nakita mo naman effort ko dito di ba? Yung thought naman yung naga count di ba? :) hihi. :))) Alam mo ba... nakakahiya tong ginawa ko kaya ikaw lang nakakakita nito! HAHAHA! :)))) at ngayon ay wala akong maisip na message. INISIP KO TONG GAGAWIN KO BUONG ARAW KAYA LATE NA TO. (busy ako masyado sa school kaya hindi ko din naisip nung mga nakaraang araw e. buhay college. -,-) ito ang napili kong gawin para pag stress ka na, panoorin mo lang to maiinis ka lalo. :((( huhu. joke. funny naman di ba?! well BTW, eto na message ko sayo. HAHA. hindi pa message yang nasa taas. once a year ka lang mag birthday di ba? susulitin ko na. :) \n\n\nHAPPY BIRTHDAY SYD!! :)) hihi. :)) wala na kong masabi pala. :(( 1st time to. hindi gumagana powers ko. alam mo namang talent ko to e. tsk. wala na. wala na akong talent.\n\nAlam ko, alam mo na simula nung umalis ako ng RS madami nang nagbago. :) syempre dahil hindi na kita kasama at hindi na kita napipilit na mag kwento. syempre dahil hindi na din kita nakikita at wala na kong alam. pero alam mo. May bagay na kahit hindi mo na nakikita, nababalitan at importante pa din sayo. :) Pag nawala di ba ang isang importanteng bagay, nawala lang sya pero importante pa din sya sayo. Sa puso at isip mo, andun pa din yung bagay na yun. kahit matagal man tong mawala, hindi mo sya makakalimutan kasi importante sya. :) Parang ganito tayo para sakin. malayo man tayo, hindi man tayo laging naguusap, wala man tayong time kasi parehas busy, importante ka pa din sakin. :) hindi man tayo laging naguusap ng personal/chat pinagprapray ko na lang na sana ok ka lagi dyan. :) Ano pa ang naging silbi ko na naging ate mo ko kung pag alis ko dyan ay nakalimutan na kita. :) \n\nMadami ka man maging bagong kaibigan, bagong ate, bagong pamilya (artificial to ha), wag mo kakalimutan na pag inaway ka nila, iniwan ka nila may ate kang matatakbuhan. isang chat lang, isang text alam mo naman na andito ako palagi sayo. Ikaw lang naman ang hindi lumalapit e. :) Wag kang mahihiya, di uso yun. Alam ko marami akong naging kasalanan sayo. sana mapatawad mo ako dun at hindi maging hindrance yun sa pag lapit mo sakin. :) Madami pang mangyayari sa buhay mo and alam ko naman na kayang kaya mo yun. :) Ikaw pa. Madami namang tao sa palibot mo ang nagmamahal sayo e, just accept them. wala naman bayad yun e. :)\n\n16 months na tayong magkakilala. :) 16 months lang yan, pero yung friendship na nabuo natin for a lifetime? sanaa. :)) I miss you Syd! :D God bless. ingat ka dyan ha. :)))\n\nHOY TINUAN MO NG REPLY SAKIN KUNDI. Hindi na ulit ako babati sayo ng mahaba ang magiisip ng message. haha. jk!!\n\nHAPPY BIRTHDAY  Led Yvette Reyes!! YOU DA BEST!! :)','10203164021047505','',NULL,NULL,NULL,'2014','11','01',NULL,NULL,NULL),(3837,'Nice to see you again ate and kuya!! :)) #StatusChrist #MetroCon','10203135619097474','Kenneth Avigel L. Valencia and Angge Javines',NULL,NULL,NULL,'2014','10','27',NULL,NULL,NULL),(3838,'\"Talk to Him. You can\'t find someone who\'s more understanding, more loving and more caring than He is.\"\n\n(c) Deniel Manuel DelosReyes','10203136300154500','',NULL,NULL,NULL,'2014','10','26',NULL,NULL,NULL),(3839,'CHESKIIEE!!! HAPPY HAPPY BIRTHDAY!! :))) Sorry hindi on the day itself. mag immersion kami bukas e. :( Better early kesa di ako makabati di ba? :((( KITA MO NAMAN EFFORT KO! HAHAHAHA! :) Ayos lang na magmukha akong ewan mapatawa ka lang. ;) GANYAN KA KALAKAS SAKIN E! HAHAHA. :))) Miss na miss na kita! Ingat ka dyan ha. pakabait ka. alam ko naman matalino ka na dyan, pero mag aral ka pa din. Wag kang magpapabaya. Uwi ka din dito ha!! :))) Tapos pag mayaman na ko dadalawin kita dyan! Pati si Rochelle! :))) Kahit anong mangyare, kahit magkakalayo pa tayong tatlo ay walang ga bago! Kung kailangan mo ng kaibigan, andito ako. kung kelangan mo ng kausap ng kahit ano. isang chat lang. :))) (alam mo naman na talent ko kumanta di ba?! HAHAHA. :) )\n\n\nAGAIN, HAPPY BIRTHDAY CHESKIEE!! I LOVE YOU!! :)))) <3 MISS YOU!! God bless. :D','10203039701859603','Cheska Faye De Castro',NULL,NULL,NULL,'2014','10','10',NULL,NULL,NULL),(3840,'HAPPY BIRTHDAY MOMMY!! :))) I love you so so so much. sana nandyan ako ngayon birthday mo. :( Sana magkakasama tayo. kaso may pasok kami. :) \n\nThank you po sa lahat ng binibigay nyo sakin na pagmamahal, at pagaalaga at etc. basta thank you mommy. :) Youre the best mom in the world!! <3 I\'m so lucky to have you. :) Sorry kung pasaway ako at makulit. hihi. :)) Alam mo naman na sobrang talented ko kaya nag lip sync na lang ako. VIDEO to para kahit wala ako dyan, makikita mo pa din ang presensya ko. :) I know hindi mo pa birthday pero mahirap kasi mag upload ng video. hahaha. :))) MORE BIRTHDAYS TO COME MOMMY!! :)) I LOVE YOU SO SO SO SO MUCH. :)))) SEE YOU SOON!!  <3 Best Mom in the WORLD!! :))','10203023839103044','',NULL,NULL,NULL,'2014','10','08',NULL,NULL,NULL),(3841,'Nominated by: Angel Casao \n\nMy bible verse is:\nJohn 1:3\n\"Through him all things were made; without him nothing was made that has been made.\"\n\nRochelle Aila C. Hernandez and Cheska Faye De Castro . :) Its your time to spread the word. ;)','10202831141165716','',NULL,NULL,NULL,'2014','09','06',NULL,NULL,NULL),(3842,'Arvin Ansaldo Alimurong Ace Brian Ansaldo Alimurong Eugene Ansaldo Alimurong si kuya Christian A. Alimurong ang pinaka pogi kong kuya! sya pa pinaka loves ko','10202757359281215','',NULL,NULL,NULL,'2014','08','26',NULL,NULL,NULL),(3843,'Oraaangeeee. <3','10202353891754779','',NULL,NULL,NULL,'2014','06','22',NULL,NULL,NULL),(3844,'Yeaaah I\'m a frosh. :) And I don\'t care. Mika Reyes to e. <3\n\nAnjo Sidron guess who? :)\n\n(c) Laurence Daryl R. Barin','10202231777702004','',NULL,NULL,NULL,'2014','06','04',NULL,NULL,NULL),(3845,'Talking to the lovers. :)','10202205501645119','John Kenneth Sixx',NULL,NULL,NULL,'2014','05','30',NULL,NULL,NULL),(3846,'Thank you for the day guys! :)','10202067703240245','Rochelle Aila C. Hernandez, Diego QuiÃ±ones Fodulla and Alyssa Nazareno',NULL,NULL,NULL,'2014','05','08',NULL,NULL,NULL),(3847,'New School. New Friends. And New Memories. :)','10202067734281021','',NULL,NULL,NULL,'2014','05','08',NULL,NULL,NULL),(3848,'Forever 2 Fuse. <3','10201874249324018','',NULL,NULL,NULL,'2014','04','06',NULL,NULL,NULL),(3849,'ang ganda ko talaga! diba Rochelle Aila C. Hernandez?','10201830511190592','',NULL,NULL,NULL,'2014','03','29',NULL,NULL,NULL),(3850,'Yeah. \\m/ \nForever 2 fuse. <3','10201778637453781','',NULL,NULL,NULL,'2014','03','19',NULL,NULL,NULL),(3851,'Sobrang proud lang ako sa sarili ko  kasi before ako grumaduate napag YFC ko tong 2 na to! :) And I\'m also proud of you Rochelle Aila C. Hernandez and Led Yvette Reyes. :) :*','10201693132556212','',NULL,NULL,NULL,'2014','03','04',NULL,NULL,NULL),(3852,'Hindi po lahat ng picture ng blind date booth ay nandito. ito ay sneak peak lang. in short picture ko. :)','10201658507370604','Led Yvette Reyes, Lyka Casao Santos, Alyssa Nazareno, Katherine Anthony and Mariane Molina',NULL,NULL,NULL,'2014','02','25',NULL,NULL,NULL),(3853,'Hindi po lahat ng picture ng blind date booth ay nandito. ito ay sneak peak lang. in short picture ko. :)','10201658504050521','Rochelle Aila C. Hernandez, Led Yvette Reyes, Diego QuiÃ±ones Fodulla, Marione Rodil, Anton Hans Ng, Erika Machida and Jean Paulene Rodil',NULL,NULL,NULL,'2014','02','25',NULL,NULL,NULL),(3854,'Come and Join us. <3','10201619993007769','',NULL,NULL,NULL,'2014','02','19',NULL,NULL,NULL),(3855,'(c) Shania Fajilan Manalo','10201604697265385','',NULL,NULL,NULL,'2014','02','17',NULL,NULL,NULL),(3856,'CHESKIIIEEEEE! Alam mo bang dapat e bukas pa ko mabati kasi Valentines dito. pero wala. mas feel ko ngayon. :D Hihi. BTW, ikaw lang nakakakita nito. :D hihi. ndi ako naga status e. :) \n\nOYYYYY! :D Babaee! Tignan mo twitter mo. :D Miss na kita! sobraa! as in. Parang hanggang ngayon nahanap pa din kita. yung kaguluhan mo yung kasungitan mo, kasamaan mo, kabaitan, pagkamoody mo. nakooo! miss na miss na talaga kita sobraa. Nakakainis ka lang kasi ndi ka na masyadong nagakwento. dati rati ako lagi nakwentuhan mo ng kalandian mo. hahaha. kahit hanggang madaling araw na tayo mag-usap basta kwento lang ng kwento. ayy. nakakamiss talaga. :/ tas pag me problema ka or ako. isang tawag lang on the rescuee na! isang text lang, tas multicab andyaan na! aaw. nakakamiss ano? imbaa. wala e. hiraap mag adjust boy! haha. lalo naman sayoo. peroo kayang kaya mo yan. Strong ka e. hinawaan mo lang ako. :D Thank youuu! :D ayiieee. <3 tama na ay. baka maiyak na ko dito. :/ Love you Inkaa! And miss na talaga kita. kwento ka na ulit ha? namimiss ko na talagaa. haha. ni ndi ko nga kilala boyfriend mo ngayon. hahaha. :D\n\nAy wait. me naalala ako. Before mag GSP medyo close na tayo pala nun. kasi laging kitang inaaway dahil nakita kitang kumakain ng 1 buong Gardenia. dun tayo naging close. kasi sobrang FC. ndi tayo close nun pero naaway kita. nasabihan kitang matakaw. :D hoho. yeah! \\m/','10201579707920667','Cheska Faye De Castro',NULL,NULL,NULL,'2014','02','14',NULL,NULL,NULL),(3857,'Super late upload na yan. -,-','10201501102395578','Rochelle Aila C. Hernandez, Led Yvette Reyes and Ma NiÃ±a Fradejas Baonguis',NULL,NULL,NULL,'2014','01','31',NULL,NULL,NULL),(3858,'Rochelle Aila C. Hernandez \nHAPPY BIRTHDAY TO YOU. HAPPY BIRTHDAY TO YOU. HAPPY BIRTHDAY, HAPPY BIRTHDAY HAPPY BIRTHDAY TO YOUU! sintonado pa yan ha! hahaha. :))))','10201474892380344','',NULL,NULL,NULL,'2014','01','27',NULL,NULL,NULL),(3859,'Grabeeee! Ancute/gwapo lang ni gec! :)) haha. Mahal na mahal ako netong batang to! Haha. :)) Halos ayaw na ko pauwiin kanina. :\"\"> ayiiee. Next time ulleeet! Jk. Nakakahiya na. \n\nSuper opposites lang namin, amputi at payat nya. -,-','10201383752941915','Led Yvette Reyes',NULL,NULL,NULL,'2014','01','11',NULL,NULL,NULL),(3860,'#1,000,000 actually ndi na ko nagawa kaso special ka. Kaya gagawan kita. Haha. Idol kitang sumayaw ee. Haha. Sobrang galing mo lang sumayaw. :) idol e! :) tas nakanta ka din. Ayie. Kasali sa choir e. :) tapos brass band pa! Syekee! Talented. Matalino pa! Ayy. Lahat na. Haha. :)) \n\nThank you lang kasi naging mavait ka, sayang ndi kita naging kaclose. Well, thank you. :) God bless. Love youu! :*','10201327756542040','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3861,'#16.18 ayuun! Haha. Alam mo sobrang nagagandahan ako sayo. :)) haha. Tapos mabait ka pa, friendly, magaling makisama, masayahin. Syekenemen! Hahaha. :)) ayun. Cintinue serving and sana maging close tayo sa mga activities. :) love youu! @*','10201326295825523','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3862,'#121.913 oyy! Hahaha. Natutuwa ako sayong bata ka. Mabait ka, makulit, masayahin and very friendly. :) haha. Continue serving. :) alam ko ndi tayo super close pero me nabalitaan akong future 2nd cousin ata kita? Ayiie. Good luck! :) love youu! :*','10201326258184582','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3863,'#2117 oyyy! Babae!! Alam mo bang miss na miss ko na kayo ni Reine Mhaye? Buti kayo magkasama, e ako. Nahiwalay. :/\n\nBtw, salamat sa lahat ng memories natin! Haha. Sorry kung lagi ko kayong naaway. Kanta ka na lang. Talent mo naman yan e. Haha. :)) love youu! :*','10201326251344411','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3864,'#03.0597 oyy! :)) grabe. Alam mo bang pag dating sa leadership ay talagang hangang hanga ako sayo. :) you do all things wih the Glory of God and sobrang mapapahanga mo ako lagi. Andami kong natutunan sayo, and I thank you for that. :) god bless. Love you! :**','10201326245104255','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3865,'#7 oy! Haha. Dati close tayo, tas ndi, tas ngayom close na ulit! Hahaha. :)) sorry dati ha? Hahaha. :)) wala e. Pabayaii na yun. Ang importane naman ay masaya ka na ngayon! :) alam ko naman na mabait ka, at maalagain ka. Kaya kahit ndi ako magbilin alam kong gagawin mo yun. :) wag kang ga bago ha? :) nakakatuwa ka na ng simpleng ganyan ka lang. :) bte nakakatuwa nga pala yung mga effort mo. Haha. Natutuwa ako sa inyo. :) haha. Kayang kaya mo yan.  Ikaw pa. :)  love youu! :*','10201326225663769','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3866,'#2812162000 oy babae! :) ang ganda mo. Idol kitang kumanta. :) yung cover ha? Naasa ako dun. :)\n\nThaank youu sa lahat lahat ng kabaitan mo sakin, as in lahat. Sorry kung lagi kaming makukit. Im always here for you! Wag mo.kakalimutan yan. Wag kang mahihiya, treat me as one of your ate na din. :) stay kind, pretty, ans everything. :) wag na wag maga bagoo. Sayang lang kasi 4th yr na ko. :) magiging mas. Close pa sana tayo. :) well. Love youu! :*','10201326016458539','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3867,'#13 haha. Ako ag nagtataka kung bat 13. Ndi ba to 19? Haha. Joke lang! :)\n\nUyyy! Babaee! Alam mo naman na love kita e. :) haha. I will be here for you always. :) susuportahan kita sa mga desisyon mo. :) wag ka.nang ga bago ha? Kung ayaw nila sayo samin ka pumunta. Haha. Love ka namin. :) love youu! :*','10201325976977552','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3868,'#267 uyy! Haha. Ang galing mong kumanta! Haha. Yun lagi ang alan ko pag ikaw natanong. Haha. :))) mavait ka, makulit, nakakatuwa, masayahin, palatawa masaya kasama. :) wag ka sana magbago. :) haha. :)) good luck sa SIP! Haha. Love youu! :*','10201325965177257','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3869,'#17 uyyy! Hahaha. :)) yung pictures ko! Hahaha. :)) \n\nOy. Stay mabait, makulit and eberything basta patangkad ka lang. Hahaha. :))) ayuun, alam ko.maman talnted ka kaya wag na puriin baka maflattered masyado. Haha. :)) good luck sayo, sa mga gusto mo sa buhay. :))) live youu. :*','10201325950576892','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3870,'#167 nakakainis ka! Ngayon lang kita maging kaclose. Tas last year nasungitan pa kita. Hahaha. Sorrry. Sayang tuloy. Kung alam ko lang na masaya ka pala kasama ay. Di naging clise tayo last yr pa. Alam mo.tuwang tuwa ako sayong bata ka. :) ambait mo sobra. Wag kang ga bago. Kahit anong mangyaree. :) I will always be here for you kahit grumaduate pa ko. :) stay strong little kid! Btw, piliin mo yung nasamahan mo ha? Wag kang papaabuso. :) love youu! :*','10201325927296310','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3871,'#61 oyy! Babae! :)))) nakakainis talaga kayoo. Bat ngayon taon ko lang kayo naging kaclose. Haha. Kung kelan naman graduating na ko ay. Pero ok lang. Akala ko dati masungit ka, takot pa ko sayo. Hahaha. :))) well,  mabait ka naman pala. Haha.sana mas maging close pa tayo, and kahit.ndi man tayo.super duper close ee I will be here for you kung me problema ka.  magsabi ka lang. :) haha. Love youu! :*','10201325907495815','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3872,'#14 uyyy! I miss you na! :))) tayo yung unang naging friends nun e! :) hahaha. Nakakamiss yung review ano? Kahit nakakaantok, nakakaumay ay basta magkakatabi ay okay na! :) hahaha. Nakakamiss talaga yung pagkavain natin! Haha. :) well, good luck sayo and stay the same. Love youu! :*','10201325874014978','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3873,'#212 oy! Haha. Nahiya tuloy ako. Haha. -,- kainis ka!\n\nWell, sigi na kahit ngayon new year aamin na ko. Ang gwapo mo boy! Haha. Ayuuun gusto ko lang mag thank you sayo.kasi mabait ka, matulungin ka, ndi ka nangiiwan. Ako ata yung nangiiwan e? Haha. :)) naaalala ko pa nung 1st yr at 2nd yr sobrang close lang natin. Haha. :) nakakamiss ka! :) lagi kasing wala. :) haha. Sorry na din kung lagi kitang naaway, nakulit, at nasabihang bading! Haha. :)) ayun alam ko naman na mabait ka na, sipagin ka na lang sana! Uyy. Magraduate na tayo? Pano ba yan? :) sana maging close pa din tayo, im still here for you. Chat ka lang. Mabait naman ako, mana sayo. Hahaha. :)) sana ma feel mo tong message ko. Haha. Yung matotouch ka baga. Haha. Love youu! :*','10201325864294735','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3874,'#11 babaaaeeeee! Alam mo naman na love na love kita. Grabee. Im so lucky to have you and your friends. :) magraduate na ko, pero promise babalik ako. Grabee lang ano? Ambilis. Sayang 2 yrs lang kita nakasama sa hs life ko. Pero ok lang kasi nasulit naman natin yun! :) and this 3 months sana mas masulit pa natin. Wag ka.na maga bago, love na love ka na namin e! :* btw, andito lang ako ha. Alam mo.maman yan e. Hanggang kayo na ang magsawa sakin ay nandito pa din ako! :) love youuu! :*','10201325794732996','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3875,'#101 oyyy! Ayyy. Mamimiss kita pag grumaduate na ko! Seryosoo. Yung kabaitan mo, kakulitan, kaguluhan, kasweetan, at kaweirduhan (siguro.kasi sobrang talino mo) ayiie flattered! :) well, atay the same. Wag ka na magbago. :))) God loves you for who you are and we also do! :) pakabait kang bata ka ha? :))) love youu! :*','10201325774812498','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3876,'#00 oyyy! Tanda ko pa dati sobrang close natin. Haha. Wala lang. Nakakatuwa lang. Haha. Taas sobrang galing mo lang sa sports! Ang alam ko naga basketball, volleyball, and badminton ka. Yan pa lang alam ko. Haha. Paano pa yung ndi? Well, ganyan talaga. And thank you nga pala sa kabaitan na pinakita mo samin. Wag ka po sana magbabago. Haha. Love youu! :*','10201325759092105','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3877,'#499 ateeee! :) namimiss na kita tawagin nyan. Actually namimiss na pala talaga kita. :) ndi ko alam pero ndi na tayo tuoad ng dati. Sana mabalik natin yun! I mean close pa din tayo pero ndi tulad ng dato na parehas tayong sobrang open sa isat isa. Last 3 months na? Sulitin na natin to! :)) hoyy! Kahit grumaduate tayo walang iwanan ha? :) stay beautiful, vain, kind, pretty, awesome, and everything you are. Wag kang magbabago para sa iba. Kung ayaw nila sayo, andito namab kami love na love ka. :) sorry nga pala kunv lagi kitang naaway. Lambing lang yuuun! Lovee youu! :[*','10201325750251884','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3878,'#18 hoyyy! Alam mo bang kahit ndi pa ko unaalis ee namimiss na kita? Special ka e! Sorry kung naoop ka namin, soery kun naaway kita, sorry kung madami akong kasalan, basta sorry. And I would like to thank you for everything. Alam mo bang kanina e sobrang touch na touch ako sa pm mo. :) grabee. Thank you, sa kwento mo, kakulitan, kacutan, kabaitan at lahat lahat. Please lang, wag na wag ka nang ga bagoo. You are perfect! :))) seryosoo. And you are really special for me. :) parang kapatid na din ang tinggin ko sayo. Omg. Nakakainis ka. Bat kasi ndi na lang kita kaklase? Ee di sana 4yrs tayong magkasama sa rs. Walanjoo ka! Haha. Nanisi pa ako ay. Haha. Sigi na ay. Love youuu! :**','10201325736691545','',NULL,NULL,NULL,'2014','01','01',NULL,NULL,NULL),(3879,'Ninaaa beeeaaar! Salamat sa cupcake! :\"\"> ayaan. HAAPPYYY BIRTHDAAAY!!! :))) :*','10201233968117388','Ma NiÃ±a Fradejas Baonguis',NULL,NULL,NULL,'2013','12','18',NULL,NULL,NULL),(3880,'Provincial kids village. :) thank you for the fun experience. :) Gooo kiidddsss. :*','10201098720776289','Ven Melano and Luel Hernandez',NULL,NULL,NULL,'2013','11','25',NULL,NULL,NULL),(3881,'Ayaaan. kahit hindi ngayong araw mo to makikita. ee birthday mo naman so. pagbigyaaan. :) HAPPY BIRTHDAY SYDDD! :) God bless. pakabait ka lagi. :)','10200921817633821','',NULL,NULL,NULL,'2013','10','31',NULL,NULL,NULL),(3882,'Sobrang ganda at sobrang bait ni Rochelle Aila C. Hernandez!! :)))))))','10200919281770426','',NULL,NULL,NULL,'2013','10','30',NULL,NULL,NULL),(3883,'Happppyyy Birthday Cheskiieeee! :))) miss ka na naminnnn. hoho. :D Ingat ka lagi dyaaan.. :)) \nsama ka bukas. ga celebrate kamii. :) haha','10200800776687873','',NULL,NULL,NULL,'2013','10','12',NULL,NULL,NULL),(3884,'ang bonaks mo mag tali ng sapatos. -,- wew..','10200639577738000','Led Yvette Reyes',NULL,NULL,NULL,'2013','09','16',NULL,NULL,NULL),(3885,'Playing Table Tennis is in my blood. <3','10200551903906209','',NULL,NULL,NULL,'2013','08','31',NULL,NULL,NULL),(3886,'Salamat. :)','10200277003793878','Alyssa Nazareno and Charlyne Mamador',NULL,NULL,NULL,'2013','07','13',NULL,NULL,NULL),(3887,'Thank you sa lahat ng bumati! :\">\nSa lahat ng me gifts, collage at efforts. thank you! :)\nSa mga bumati ng 12am thank you din! :D\nSa mga nakasama ko at nainspire ako. thank you. :D\nBasta. Thank you sa inyong lahat. :) Alam nyo na yun. :D\nGod bless everyone. :) Love lots. :*','10200252382018349','',NULL,NULL,NULL,'2013','07','08',NULL,NULL,NULL),(3888,'Happy birthday Eugene Ansaldo Alimurong. :)','10200237372403118','Lhareine Gonzaga Javier, Anton Hans Ng, Vanessa Mae Carmona and Erendave Artillaga',NULL,NULL,NULL,'2013','07','06',NULL,NULL,NULL),(3889,'Summer is not yet done. :) <3','4923564013052','Aeron Rodriguez, Keats Mampusti, Charlette Siega, Erjelyn Sonio Dela Cruz, Airo Reyes and Jake Lawrence Esteleydes',NULL,NULL,NULL,'2013','05','20',NULL,NULL,NULL),(3890,'\"I love making new friends and I respect people for a lot of different reasons\"','4824429974763','Jeanette Legaspi, Angel Garcia, Davie Wong Bonifacio, Raphael Santos, RA Alfonso and Arielle Macalino',NULL,NULL,NULL,'2013','05','02',NULL,NULL,NULL),(3891,'Today is \"National Siblings Day\" in Twitter.. :) And my dear brothers don\'t have one (twitter acct).. So? Dito na lang.. :) \r\n\r\nI love you! <3 And currently missing you! :D <3','4734502766639','Christian A. Alimurong, Arvin Ansaldo Alimurong, Eugene Ansaldo Alimurong and Ace Brian Ansaldo Alimurong',NULL,NULL,NULL,'2013','04','16',NULL,NULL,NULL),(3892,'GSP <3 :)','4665239395098','',NULL,NULL,NULL,'2013','03','26',NULL,NULL,NULL),(3893,'Hey RSians, School Year\'s about to end. Matatapos na exams, pawala na mga projects, wala ng lessons, wala ng quizzes, patapos na din pagiintindi ng Co-CA. Mukhang God\'s perfect timing has finally arrived.\n\nMRSHS Family,\nLet\'s end this year with a BLAST. Let\'s Furnish our SPIRITS more. Let\'s start another JOURNEY. Let\'s live a lot more meaningful LIFE. Let our HEARTS rejoice on contentment and happiness. Let\'s experience the most unforgettable WEEKEND we can ever have. Fellow RSians, let us GET IN LINE\n\n#RSHSyouthcamp #GetInLine\n\nMagkaka Pre-Registration po tayo tomorrow. Pwede po tayong magbayad ng 100 pesos muna or buoin na ung 260 pesos registration for camp para SUREBOL na diba? Kina ate Aira at ate Lei Ann po ibibigay ang payments\n\nKita kits na lang sa March 8','4560455695571','',NULL,NULL,NULL,'2013','03','05',NULL,NULL,NULL),(3894,'ganda ng post mo @caiz','4378976638708','Mariane Molina and Raizel Czarielle',NULL,NULL,NULL,'2013','02','01',NULL,NULL,NULL),(3895,'Friendship is more important than any position.. :D','4378898036743','Aeron Rodriguez',NULL,NULL,NULL,'2013','02','01',NULL,NULL,NULL),(3896,'thank you! :))','4225339277870','Erendave Artillaga',NULL,NULL,NULL,'2013','01','12',NULL,NULL,NULL),(3897,'happy new year! sa bawat taong lumilipas. lalo akong gumaganda!!!!','4173612704738','',NULL,NULL,NULL,'2013','01','01',NULL,NULL,NULL),(3898,'Unit Meet Players','3867702137165','Rochelle Aila C. Hernandez, Keith Fulla Claflin, Bojo Ng, Giddel Pacia, Jake Lawrence Esteleydes, Ma Roselyn K Malaluan, Laurence Linga, Aila Marie Valence, Crystal TD and Lance Ivan',NULL,NULL,NULL,'2012','10','20',NULL,NULL,NULL),(3899,'Salamat Cheska Faye De Castro :)) haha.. Happy birthday ulet!:))','3835560013632','',NULL,NULL,NULL,'2012','10','14',NULL,NULL,NULL),(3900,'Happy birthday Cheska!! :)) yan ha.. pambawi.. chos!','3835535733025','Cheska Faye De Castro',NULL,NULL,NULL,'2012','10','15',NULL,NULL,NULL),(3901,'covenant and family cuture.. Ã','3709558783680','',NULL,NULL,NULL,'2012','09','09',NULL,NULL,NULL),(3902,'watching prince and me.. Ã','3630899977259','Lhareine Gonzaga Javier and Hannah Valenzona',NULL,NULL,NULL,'2012','08','20',NULL,NULL,NULL),(3903,'Thanks kuya','3573591944594','Ace Brian Ansaldo Alimurong',NULL,NULL,NULL,'2012','08','04',NULL,NULL,NULL),(3904,'I.D IHMA','3399233545743','',NULL,NULL,NULL,'2012','06','15',NULL,NULL,NULL),(3905,'May 15, 2012','3269871431771','',NULL,NULL,NULL,'2012','05','19',NULL,NULL,NULL),(3906,'happy birthday kuya!','3269864991610','Ava Marcia Ansaldo Alimurong and Ace Brian Ansaldo Alimurong',NULL,NULL,NULL,'2012','05','19',NULL,NULL,NULL),(3907,'@giligans','3269855191365','Christian A. Alimurong and Ace Brian Ansaldo Alimurong',NULL,NULL,NULL,'2012','05','19',NULL,NULL,NULL),(3908,'24 years... :)) WOW!! So proud ako sa magulang ko na 24 years nang kasal!! :)) Happy 24th Anniversary Mom And Dad.. :)) Thank you sa lahat ng experiences, sa lahat ng lessons, at basta sa lahat lahat.. :)) Thank you and sorry na lang kung me mga kasalanan akong nagawa sa inyo.. >.< \n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\nI love you!! Ava Marcia Ansaldo Alimurong and Jun P Alimurong :))','3066138578577','',NULL,NULL,NULL,'2012','04','16',NULL,NULL,NULL),(3909,'Anjo Sidron si Lhareine Gonzaga Javier me ka holding hands ohh.. Laggooottt..','2966342563739','',NULL,NULL,NULL,'2012','03','26',NULL,NULL,NULL),(3910,'Nakaakbay?? Sweet! â¥','2966318723143','Lhareine Gonzaga Javier',NULL,NULL,NULL,'2012','03','26',NULL,NULL,NULL),(3911,'Ancute nyo dito!!! SWEAR!! :)) yiiee, bagay! â¥','2896049566458','Anjo Sidron and Lhareine Gonzaga Javier',NULL,NULL,NULL,'2012','03','14',NULL,NULL,NULL),(3912,'Antaray kumain ni Lhareine Gonzaga Javier','2896044366328','Anjo Sidron and Lhareine Gonzaga Javier',NULL,NULL,NULL,'2012','03','12',NULL,NULL,NULL),(3913,'Happy brithday Anjo Sidron :))','2896037606159','Anjo Sidron, Lhareine Gonzaga Javier, Miguel de Vera, Aeron Rodriguez, Angel Fradejas Casao, Ben Bico and Dennis Ilagan',NULL,NULL,NULL,'2012','05','31',NULL,NULL,NULL),(3914,'II- Albert Einstein :)) yiiee, galing naten!! Pati din ang II-Anders Celsius :)) Ate Kim Chaii, ate Airah, at ate Marian Keit... Salamat po nang madami sa pagaayos samen.. :D So Proud sa lahat ng 2nd year.. :D \n\nThank you Lord God sa masaya at successful na play!! :))','2877524583345','',NULL,NULL,NULL,'2012','03','08',NULL,NULL,NULL),(3915,'Me: God, can I ask You a question?\n\nGod: Sure\n\nMe: Promise You won\'t get mad\n...\nGod: I promise\n\nMe: Why did You let so much stuff happen to me today?\n\nGod: What do u mean?\n\nMe: Well, I woke up late\n\nGod: Yes\n\nMe: My car took forever to start\n\nGod: Okay\n\nMe: at lunch they made my sandwich wrong & I had to wait\n\nGod: Huummm\n\nMe: On the way home, my phone went DEAD, just as I picked up a call\n\nGod: All right\n\nMe: And on top of it all off, when I got home ~I just want to soak my feet in my new foot massager & relax. BUT it wouldn\'t work!!! Nothing went right today! Why did You do that?\n\nGod: Let me see, the death angel was at your bed this morning & I had to send one of My Angels to battle him for your life. I let you sleep through that\n\nMe (humbled): OH\n\nGOD: I didn\'t let your car start because there was a drunk driver on your route that would have hit you if you were on the road.\n\nMe: (ashamed)\n\nGod: The first person who made your sandwich today was sick & I didn\'t want you to catch what they have, I knew you couldn\'t afford to miss work.\n\nMe (embarrassed):Okay\n\nGod: Your phone went dead bcuz the person that was calling was going to give false witness about what you said on that call, I didn\'t even let you talk to them so you would be covered.\n\nMe (softly): I see God\n\nGod: Oh and that foot massager, it had a shortage that was going to throw out all of the power in your house tonight. I didn\'t think you wanted to be in the dark.\n\nMe: I\'m Sorry God\n\nGod: Don\'t be sorry, just learn to Trust Me.... in All things , the Good & the bad.\n\nMe: I will trust You.\n\nGod: And don\'t doubt that My plan for your day is Always Better than your plan.\n\nMe: I won\'t God. And let me just tell you God, Thank You for Everything today.\n\nGod: You\'re welcome child. It was just another day being your God and I Love looking after My Children...\n\nREPOST if you believe in GOD!','2694627171024','',NULL,NULL,NULL,'2012','02','04',NULL,NULL,NULL),(3916,'Everytime I miss you','2611659456883','',NULL,NULL,NULL,'2012','01','22',NULL,NULL,NULL),(3917,'11 year old girl asks her Dad, \"What are you going to get me for my 15th\nbirthday, Daddy?\" The father replied \"Daughter, there\'s much time left.\"\nWhen the girl was 14, she fainted and was rushed to the hospital. The\ndoctor came out and told the father she had a bad heart. When she\'s\nlaying in the hospital bed, she asks her father \"Daddy.. Have they told\nyou I\'m going to die? \" The father weeping ...leaves. The girl is recovering. She reaches 15 and gets to come home, On her bed is a letter from her father. The letter said \"My Dearest Daughter, if you\'re reading this it\'s because all went well as I was told . One day you asked me what I was gonna give you on your 15th birthday and I didn\'t have an answer but today I present MY HEART.\" Her father donated his heart. \"Happy Birthday â¥\" If you believe that God gave his only son to die for you, Repost this as your status. Remember, the bible says \"Deny me in front of your friends and I will deny you in front of your father.\"','2507563014537','',NULL,NULL,NULL,'2012','01','03',NULL,NULL,NULL),(3918,'GOD IS WELCOMED IN MY HOUSE.\nÂ° ã Â° ËËË * _Î ____*ã*Ë\nË Ë â¢Ëâ¢Ë */________/~\\ãË Ë Ë\nË Ë â¢Ëâ¢ Ë ï½ ç°ç° ï½ éï½ â¢\nIf God is also welcome in your house, Share this. â¥\n\nPS: He just saw you reading this','2332880567585','',NULL,NULL,NULL,'2011','11','30',NULL,NULL,NULL),(3919,'Happy Birthday sa napakabaet kong mommy na c mommy Ava Marcia Ansaldo Alimurong!! i love you mommy!! Sana po ndi ka magsawa sa kapilyahan, kakulitan, at kaguluhan na binibigay ko sa buhay mo.. Alam ko na masama akong anak, o kaya kapatid sa mga kapatid ko.. sorry na lang po.. Basta mommy I love you very very much!! =* =))','2140597080618','',NULL,NULL,NULL,'2011','10','09',NULL,NULL,NULL),(3920,'â²â­âââââ®â²â²â­âââââââââââââ®\nâ²ââ­â®â­â®â â² If you love JESUS\nââ«âââââ£ââ²â°â³â®copy this in your wall â²ââ°âââ¯âââââ¯â°âââââââââââ¯\nâ²â°â³âââ³â¯â²â²â²â²â²â²â²â²â²â²â²â²â²â²\nâ²â²ââ²â²ââ² â² â²\n\n(SPREAD THE LOVE â¥.â¥)','2029868192465','',NULL,NULL,NULL,'2011','08','28',NULL,NULL,NULL),(3921,'âDreams are like stars...you may never touch them, but if you follow them they will lead you to your destiny.â','2013120493783','',NULL,NULL,NULL,'2011','08','20',NULL,NULL,NULL),(3922,'http://www.youtube.com/watch?v=yUdSXQKlgKA&feature=related\n\n\nASTIG!! haha.. :))','240116236027118','',NULL,NULL,NULL,'2011','08','19',NULL,NULL,NULL),(3923,'Type MAHAL KITA with @ in each letter and see who comes first. DONT CHEAT!\n\nM Camille C. Misal\nA Cesar Adrian\nH Lhareine Gonzaga Javier\nA Princess Angel Fradejas Casao\nL Nicole Lyka Castillo\n\nK Kim Chie Nazareno Bognot\nI Mary Ellaine Arpia Juanzo\nT Charisse TriviÃ±o\nA Maria Angelica Grace Santos\n\n=))','2009369480010','',NULL,NULL,NULL,'2011','08','18',NULL,NULL,NULL),(3924,'Type your name with @ in each letter and see who comes first. DONT CHEAT!\nA - Cesar Adrian\nV - Andrea Faye Venturanza\nA - Princess Angel Fradejas Casao\n\nD - Daryl Roco\nA - Reine Mhaye Adove\nN - Nicole Lyka Castillo\nI - Jandennis Ilagan\nC - Kim Chie Nazareno Bognot\nA - Mary Ellaine Arpia Juanzo','1991687157963','',NULL,NULL,NULL,'2011','08','09',NULL,NULL,NULL),(3925,'Dear Smokers,\n\nPlease get a plastic bag and cover yourself whenever you want to start smoking to enable you to enjoy the smoke 100% by yourself. I don\'t want any percentage of it nor do my friends who don\'t smoke. Don\'t kill me if you want to kill yourself.\n\nP.S.: Copy and paste this message on your profile to support the keep-smoke-away campaign ;)','1942766974989','',NULL,NULL,NULL,'2011','07','15',NULL,NULL,NULL),(3926,'La lang.. try nyo.. hehe','221781251182854','',NULL,NULL,NULL,'2011','06','07',NULL,NULL,NULL),(3927,'Try lang...','217637684930544','',NULL,NULL,NULL,'2011','05','20',NULL,NULL,NULL),(3928,'My mom................. : ) : D','1777581765462','',NULL,NULL,NULL,'2013','03','05',NULL,NULL,NULL),(3929,'------[]------ put this\n--[][][][][]-- on your\n------[]------ page if\n------[]------ you\'re a christian\n------[]------ and not ashamed\n------[]------ to admit it\nI BELIEVE IN JESUS','1764007106104','',NULL,NULL,NULL,'2011','04','28',NULL,NULL,NULL),(3930,'Why do we sleep through Church but stay awake for a 3 hour movie? Why is it hard to pray, but easy to cuss? Why is it hard to re-post a Godly bulletin, but easy to re-post the mean ones? Why can people worship a celebrity but not God? Gonna ignore this? Afraid to get laughed at? The Lord said, \"If you deny me in front of your friends, I wil deny you in front of my Father.\" Re-post this if you believe in God -â¥','1755696378341','',NULL,NULL,NULL,'2011','04','23',NULL,NULL,NULL),(3931,'à³á¦âá¦à³ âââââââââââââââ\nâ¼ If you have an amazing MOTHER, put this as your status â¼\nâââââââââââââââ à³á¦âá¦à³ âââââââââââââââ','1747105323570','',NULL,NULL,NULL,'2011','04','18',NULL,NULL,NULL),(3932,'\"Magic happens when you\'re in love.\" - AJ Perez\n\nmay you rest in peace.. :(','1745532484250','',NULL,NULL,NULL,'2011','04','17',NULL,NULL,NULL),(3933,'\"Everyone wants a new car, a new cell phone or lose weight. A cancer patient has only one desire, to fight their disease. I know that 97% of you are not going to paste this on their wall, but I know that at least 3% of my friends will. Paste this into your wall, in honor of someone who has died and battling cancer!\" REPOST','1732891648237','',NULL,NULL,NULL,'2011','04','09',NULL,NULL,NULL),(3934,'When you carry the Bible, Satan gets a headache\nWhen you open it, he collapses\nWhen he sees you reading it he faints\nWhen he sees you living it, he flees\nAnd just when you are about to repost this, he\'ll try to discourage you.\n\nI JUST DEFEATED HIM!','1728552259755','',NULL,NULL,NULL,'2011','04','06',NULL,NULL,NULL),(3935,'<<< Para ke ate  Eunice na DIE HARD FAN ko>>> :) Ayos lang yan... :P','1650591270779','Audrey Eunice Rillorta',NULL,NULL,NULL,'2011','03','13',NULL,NULL,NULL),(3936,'Yan po yung front sa shirt ata natin.. <<not sure pa po>>\n\nC Jan Dennis po gumawa nyan!! ang Astig d b?','1669313818831','Yan Wyne Mistal and Dennis Ilagan',NULL,NULL,NULL,'2011','03','14',NULL,NULL,NULL),(3937,'Yiiieee,... ang sweet po nila d b?','1669023691578','Anjo Sidron, Lhareine Gonzaga Javier, Dennis Christiane M. Roco, Miguel de Vera, Kc Pineda, Aeron Rodriguez, Keats Mampusti, Arizza Gail Sario, Charlette Siega, Rachiel Singsing, Jake Lawrence Esteleydes, Gianna Rica Dote Labay, Dennis Ilagan, Raizel Czarielle, Migs Jaudian, Andrea Venturanza, Yan Wyne Mistal, Bill Miciano Sigue, Monamiele Faminialagao Yambao, Leo Jaminola and Bryantt Neri',NULL,NULL,NULL,'2013','01','05',NULL,NULL,NULL),(3938,'naalala ko si ate Grace nung pinituran ko yan.. haha.. kaya tinag kita.... :))','1669013331319','Grace Bienne Constantine Manalo',NULL,NULL,NULL,'2011','03','14',NULL,NULL,NULL),(3939,'I love the sound of violins\nAnd making someone smile','1657563685085','',NULL,NULL,NULL,'2011','03','06',NULL,NULL,NULL),(3940,'Kim Cyril Nazareno Bognot Be proud.. kahit grade 5 ka pa lang.. Isa ka na sa mga sinasaluduhan ko!! :D','139678716096349','',NULL,NULL,NULL,'2011','02','08',NULL,NULL,NULL),(3941,'Salamat ate NiÃ±a Manalo!!!! Sobrang na touch ako!!!!! :))) Salamat po ulit.. sayang nga po at senior ka na kagad.... I\'m going to miss you a lot... :(','146318892093221','',NULL,NULL,NULL,'2011','01','25',NULL,NULL,NULL),(3942,'is so WEAK!!!!! :((\nAkala nyo maaabot ko rin yan in the right time... Papakita ko pa sa inyo ate Nicole Lyka Castillo, ate Jerelyn Y. Co , ate Irish Remy M. Abuel , ate Celestial Jambalos  and ate Charisse TriviÃ±o   ...','156239507761224','',NULL,NULL,NULL,'2011','01','16',NULL,NULL,NULL),(3943,'Always smile and be happy!! :) Wag nang sad... baka tumanda ka kagad nyan.. :))','116164015122514','',NULL,NULL,NULL,'2011','01','05',NULL,NULL,NULL),(3944,'GOD grant me the SERENITY to accept the things I cannot change, COURAGE to change the things I can and WISDOM to know the difference...','179616988724082','',NULL,NULL,NULL,'2010','12','20',NULL,NULL,NULL),(3945,'haha... sana nga\n','117186205013301','',NULL,NULL,NULL,'2010','12','12',NULL,NULL,NULL),(3946,'if the gates of your heart are closed,i will not try to open it.instead i will wait,guard and take care of it with all my love til you decide to let me in...... \n\nNabasa ko lang un sa phrases..','149339421781538','',NULL,NULL,NULL,'2010','12','12',NULL,NULL,NULL),(3947,'B-day ko!! :D And laging maynangyayari pag 8... :D','147775448605874','',NULL,NULL,NULL,'2010','12','12',NULL,NULL,NULL),(3948,'Yes naman!! :D','113187768750665','',NULL,NULL,NULL,'2010','12','12',NULL,NULL,NULL),(3949,'3 yrs old: i love you mom!\n\n10 yrs old: mom whatever!! \n\n16 yrs old: omg!! My mom is so annoying!!\n\n18 yrs old: i wanna leave this house!!\n\n25 yrs old: mom you were right\n......30 yrs old: i wanna go back to my mom\'s house\n\n50 yrs old: i dont wanna lose my mom...\n\n70 yrs old: i would give up everything, for my mom to be here we only have one mom, post this on your wall if you appreciate your mom... =)','125845797479470','',NULL,NULL,NULL,'2010','12','12',NULL,NULL,NULL),(3950,'Kind daw ako!! :D','106529192753385','',NULL,NULL,NULL,'2010','11','29',NULL,NULL,NULL),(3951,'True Friends','169535353074111','',NULL,NULL,NULL,'2010','11','15',NULL,NULL,NULL),(3952,'Ang joke time naman nito!! :D','170323052996087','',NULL,NULL,NULL,'2010','11','14',NULL,NULL,NULL),(3953,'Ang cute nung butterfly... :D','101749536564118','',NULL,NULL,NULL,'2010','11','14',NULL,NULL,NULL),(3954,'Friends','168941393133507','',NULL,NULL,NULL,'2010','11','13',NULL,NULL,NULL),(3955,'Sino nga b?? hehe... ','127937540598405','',NULL,NULL,NULL,'2010','11','09',NULL,NULL,NULL),(3956,'Ang saya ng GSP!! :D :D Amazing race ata un!! Da best!! Ang dami kong 1st time dun lalo n nung nasa ambulance 1st time din un... :D','175223602491685','',NULL,NULL,NULL,'2010','11','08',NULL,NULL,NULL),(3957,'Innocent or guilty','165267910167522','',NULL,NULL,NULL,'2010','10','29',NULL,NULL,NULL),(3958,'100 truths about me :)','163600190334294','',NULL,NULL,NULL,'2010','10','23',NULL,NULL,NULL),(3959,'Hanggat andyan pa ang mga importanteng friends mo try na ndi sila awayin or something kasi malay mo mag sawa sila taz ndi k n nya mapatawad... Kaya promise ko sa sarili na itatry ko ung best ko na ndi mangaaway... Basta mapatawad mo lang ako....','100322823371137','',NULL,NULL,NULL,'2010','10','23',NULL,NULL,NULL),(3960,'Sana bukas ok na... Kahit un lang sana matupad... SANA.... Pls naman...','155509871152597','',NULL,NULL,NULL,'2010','10','21',NULL,NULL,NULL),(3961,'Reine Mhaye Adove Happy Birthday!! Miss na kita!! Good luck with everything!! Sana maging masaya ka sa lahat ng gagawin mo!!','159018070794679','',NULL,NULL,NULL,'2010','10','04',NULL,NULL,NULL),(3962,'Sana po maintindihan nyo ung story... :)','1465812571427','Jake Lawrence Esteleydes, Samboy Javier, Catherine Dimailig and Audrey Eunice Rillorta',NULL,NULL,NULL,'2010','10','07',NULL,NULL,NULL),(3963,'Nicole Lyka Castillo, Marian Keit, Viel Regencia Malalad... Thank you po tlaga!! I really appreciate it!! :))','124729930913280','',NULL,NULL,NULL,'2010','09','08',NULL,NULL,NULL),(3964,'Ndi nmn ako slow ahhh... :P\r\nPero yung last sentence tama ata... Hahaha :))','143449289027289','',NULL,NULL,NULL,'2010','08','29',NULL,NULL,NULL),(3965,'Nakakatuwa kanina yung mga ICE BREAKERS ng mga SSG... :)) Lalo na yung kay kuya Jhon Ray!! :))','140856552599009','',NULL,NULL,NULL,'2010','07','23',NULL,NULL,NULL),(3966,'Happy father\'s day po sa lahat ng mga daddy sa buong mundo... :))','126650757373650','',NULL,NULL,NULL,'2010','06','20',NULL,NULL,NULL),(3967,'Nakakapag FB pa ako kahit lahat sila busy na sa pag aayos... :)))','118042711565880','',NULL,NULL,NULL,'2010','05','18',NULL,NULL,NULL),(3968,':)))','117765594926024','',NULL,NULL,NULL,'2010','05','17',NULL,NULL,NULL),(3969,'Help naman... Plzzz... ','122481607766711','',NULL,NULL,NULL,'2010','04','28',NULL,NULL,NULL),(3970,'Natapos na rin ang interview namin sa Bansud... Ang unti pa namin 7 lang kami...','112581258778802','',NULL,NULL,NULL,'2010','04','28',NULL,NULL,NULL),(3971,'>_< 7 Lvl up na lang at lvl 70 na ako tapos wla na... ','120926157923568','',NULL,NULL,NULL,'2010','04','27',NULL,NULL,NULL),(3972,'help me naman plzzz...','114114541955383','',NULL,NULL,NULL,'2010','04','26',NULL,NULL,NULL),(3973,':))) heheheheheh','116313995059974','',NULL,NULL,NULL,'2010','04','23',NULL,NULL,NULL),(3974,'2 days na lang fiesta na d2!!! Sayang naman wla cla kuya Ace, kuya B.A, at ate Cheska... Ndi tuloy kami kompleto... :(((','116220091731871','',NULL,NULL,NULL,'2010','04','23',NULL,NULL,NULL),(3975,'I miss them na... :((( Nakakaazar...','111003602273387','',NULL,NULL,NULL,'2010','04','22',NULL,NULL,NULL),(3976,'Help naman... plz pag nag post kayo tutulong din ako... Promise','114691178560800','',NULL,NULL,NULL,'2010','04','21',NULL,NULL,NULL),(3977,'Sorry if I use ur name... Kaw kac ka-chat ko nung binili ko 2 eh... peace...(:','120914851252644','',NULL,NULL,NULL,'2010','04','21',NULL,NULL,NULL),(3978,'Plzzz.... Just click it... ','116163345069351','',NULL,NULL,NULL,'2010','04','20',NULL,NULL,NULL),(3979,'Grown up na cla ni Mhaye... Hahahaha... Mhaye at King tlaga ang pangalan ng pets ko... Hehehehehe','111503932216835','',NULL,NULL,NULL,'2010','04','16',NULL,NULL,NULL),(3980,'Pag minamalas naman oh... Dapat d ko na lang nalaman... Yan tuloy d na ako excited para dun... Pero sana mag change pa rin ng plan kahit impossible... :((( Huhuhuhu','112759752078077','',NULL,NULL,NULL,'2010','04','13',NULL,NULL,NULL),(3981,'Para 2 sa lahat ng TRUE FRIENDS ko\" You\'re a true friend...You\'re here till the end... You pull me aside...When somethin\' ain\'t right...Talk with me now...And into the night...Till it\'s alright again...You\'re a true friend\"- Miley Cyrus','112434378778905','',NULL,NULL,NULL,'2010','04','12',NULL,NULL,NULL),(3982,'Para na naman sayo 2\" I don\'t wanna fall asleep. \'cuz I don\'t know if I\'ll get up... And I don\'t wanna cause a scene... But I\'m dying without your love... BEGGING TO HEAR YOUR VOICE... Tell me you love me too... Cause I\'d rather just be alone if I know that I can\'t have you\" Jonas Brothers','116015518410989','',NULL,NULL,NULL,'2010','04','10',NULL,NULL,NULL),(3983,'Yehey!!! Yehey!!! Yehey!!! :))) ','112784698746678','',NULL,NULL,NULL,'2010','04','10',NULL,NULL,NULL),(3984,'Para 2 kay L___\" If it\'s you and forever... If it\'s you and me right now... That\'d be alright...Be right... We\'re chasing stars to lose our shadow... Peter Pan and Wendy turn out right... So won\'t you fly with me\"- Jonas Brothers','107889185915094','',NULL,NULL,NULL,'2010','04','09',NULL,NULL,NULL),(3985,'Apply now!!! Plz','116992418315182','',NULL,NULL,NULL,'2010','04','09',NULL,NULL,NULL),(3986,'Sa April 28 BKA magkita kami... Pero kung ibang araw ang schedule nila... Kawawa naman ako... Sana magkasabay kami... Plzz naman... I\'m going to be a good girl basta dapat sabay kami...Pag d kami nagkasabay this is the right song... \"Nanghihinayang nanghihinayang ang puso ko\"','109179285781621','',NULL,NULL,NULL,'2010','04','08',NULL,NULL,NULL),(3987,'\"I remember what you wore on the first day... You came into my life and I thought, hey... You know it could be something... \'Cause everything you do and words you say... You know it all takes my breath away... And now I\'m left with nothing\"- Boys Like Girls ft. Taylor Swift','116549971692335','',NULL,NULL,NULL,'2010','04','08',NULL,NULL,NULL),(3988,'\" He\'s the reason for the teardrops on my guitar... The only thing that keeps me wishing on a wishing star... He\'s the song in the car I keep singing... Don\'t know why I do\"- Taylor Swift','115539008460513','',NULL,NULL,NULL,'2010','04','05',NULL,NULL,NULL),(3989,'Para 2 kay \" Now I\'m speechless over the edge, I\'m just breathless... I never thought I\'d catch this lovebug again... Hopeless over the heels in a moment... I never though that I\'d get hit by this lovebug again\" -Jonas Brothers','111429952210003','',NULL,NULL,NULL,'2010','04','08',NULL,NULL,NULL),(3990,'Para 2 kay Arielle \" Wake up in the morning...Feeling like P Diddy (Hey, what up girl???) Got my glasses...I\'m out the door...I\'m gonna hit this city (Let\'s go)...Before I leave...Brush my teeth with a Bottle of jack...\'Cuz when I leave for...The night I ain\'t coming back\" Ke$ha','114163165267742','',NULL,NULL,NULL,'2010','04','03',NULL,NULL,NULL),(3991,'Para 2 kay faye \"Almost paradise...Tae-yangboda to ttaseuhan...Nal bo-neun noye nunbi-cheun...On sesang ta gachindeuthae\" - T-Max','115071005174050','',NULL,NULL,NULL,'2010','04','03',NULL,NULL,NULL),(3992,'Para 2 kay ____ \" If the heart is always searching... Can you ever find a home??? I\'ve been looking for that someone... I\'ll never make it on my own... Dreams can\'t take a place of loving you... There\'s gotta be a million reasons why it\'s true\" - Jonas Brothers','104666689573513','',NULL,NULL,NULL,'2010','04','01',NULL,NULL,NULL),(3993,'para 2 kay Mhaye \"Tell me Why??? Why??? Why???Does it hurt so bad...Tell me Why??? Why??? Why???Does it make me mad\" Jonas Brothers','108726652481514','',NULL,NULL,NULL,'2010','03','30',NULL,NULL,NULL),(3994,'Para 2 sa mga classmates ko \" You and I together we will fly... Across the sky above the world so high... Reach the stars and touch the morning sun... We\'ll be together, together we\'ll be one\"','113562051990790','',NULL,NULL,NULL,'2010','03','28',NULL,NULL,NULL),(3995,'Para 2 sa lahat ng teacher sa buong school \"Thank you for the sweat... Thank you for the best... Thank you for your patience and time\"- Florencio Chang','109063362444661','',NULL,NULL,NULL,'2010','03','27',NULL,NULL,NULL),(3996,'No matter what she was trying. Para 2 sakin \"We\'ve never been into honesty...So promise me you\'ll let me know...When you\'re lying...She wants to be an eagle...And when she\'s high she can fly\"- Nick Jonas and the administration','107788759243215','',NULL,NULL,NULL,'2010','03','26',NULL,NULL,NULL),(3997,'Para 2 kay Gail-\" Words nothing but words...For me to show...How much my love for you unfolds...Through trouble and fears...This love feels so real...And I need you to know\"- Erik Santos','111228382227577','',NULL,NULL,NULL,'2010','03','24',NULL,NULL,NULL),(3998,'Para 2 kay Mhaye- The best thing \'bout tonight\'s that we\'re not fighting... Could it be that we have been this way before??? I know you don\'t think that I am trying... I know you\'re wearing thin down to the core- Secondhand Serenade','107520702605349','',NULL,NULL,NULL,'2010','03','23',NULL,NULL,NULL),(3999,'Para ulit 2 kay Nicole- Today was a fairytale... You were the prince... I used to be a damsel in distress... You took me by the hand and you picked me up at six... Today was a fairytale- Taylor Swift','110421552307813','',NULL,NULL,NULL,'2010','03','23',NULL,NULL,NULL),(4000,'Tnx po sa mga nag gift sa akin... Dun sa mga d nakapag gift sana po next time mag gift din kayo sa akin... T...N...X... ulit','100608723312168','',NULL,NULL,NULL,'2010','03','20',NULL,NULL,NULL),(4001,'Hey, Last one na lang... Plz help me... One and only na 2','100360693337996','',NULL,NULL,NULL,'2010','03','19',NULL,NULL,NULL),(4002,'Kug sino man yung kumukuha ng mga gamit ko para sayo ito... I\'m your biggest fan... I\'ll  follow you until you love me... papa-paparazzi- Lady Gaga','372313324519','',NULL,NULL,NULL,'2010','03','19',NULL,NULL,NULL),(4003,'Para 2 kay ____ ...Just the fraction of your love fills the air... And I fall inlove with you once again... You\'re the light the feed the sun in my world... I\'d face a thousand years of pain for my girl- Justin Bieber','372543654804','',NULL,NULL,NULL,'2010','03','20',NULL,NULL,NULL),(4004,'Today\'s recollection was awesome...hahahaha... Many cry because we say sorry to each other and tell them how we feel about them... I hope we will always cherish this in our hearts... I love all of You... Muah','414115116631','',NULL,NULL,NULL,'2010','03','16',NULL,NULL,NULL),(4005,'Para naman 2 kay Nicole...You are the thunder and I am the lightning...And I love the way you know who you are...And to me it\'s exciting...- Selena Gomez','363129584645','',NULL,NULL,NULL,'2010','03','16',NULL,NULL,NULL),(4006,'\"Everybody needs inspiration... Everybody needs a soul... A beautiful melody... When the nights so long\"- Miley Cyrus','364028695425','',NULL,NULL,NULL,'2010','03','14',NULL,NULL,NULL),(4007,'YeHeY!1! ','10150151168625641','',NULL,NULL,NULL,'2010','03','14',NULL,NULL,NULL),(4008,'We were both young when I first saw you... I closed my eyes and the flash back start I\'m standing there... On the balcony on summer air-T Swift','378394655856','',NULL,NULL,NULL,'2010','03','14',NULL,NULL,NULL),(4009,'You would not believe your eyes... If ten million fireflies... Lit up the word as I asleep- Owl City...','360482300686','',NULL,NULL,NULL,'2010','03','13',NULL,NULL,NULL),(4010,'Para 2 kay Mhaye \"You know you love... I know you care... Just shout whenever and I\'ll be there... You are my love, you are my heart... And we will never, ever, ever be apart...- Justin Bieber...','355122554569','',NULL,NULL,NULL,'2010','03','13',NULL,NULL,NULL),(4011,'\"Shawty\'s like a melody in my head...that I can\'t keep out... got me singin\' like... na na na everyday.. like my iPod stuck on replay, replay-ay-ay-ay\"- Iyaz','352275118043','',NULL,NULL,NULL,'2010','03','11',NULL,NULL,NULL),(4012,'\" I want someone to love me for who I am... I want someone to need me is that so bad... I wanna break all the madness but it\'s all I have... I want someone to love me for who I am\"- Nick Jonas','350633742793','',NULL,NULL,NULL,'2010','03','10',NULL,NULL,NULL),(4013,'S','349941378615','',NULL,NULL,NULL,'2010','03','09',NULL,NULL,NULL),(4014,'YeHeY!1!','361000529960','',NULL,NULL,NULL,'2010','03','07',NULL,NULL,NULL),(4015,'Level 52','10150097276295019','',NULL,NULL,NULL,'2010','02','28',NULL,NULL,NULL),(4016,'Going to church... :)','333840539572','',NULL,NULL,NULL,'2010','02','28',NULL,NULL,NULL),(4017,'Night to all of you!!! Sweet dreams!!!','326800148607','',NULL,NULL,NULL,'2010','02','25',NULL,NULL,NULL),(4018,'YEHEY!!! YEHEY!!! YEHEY!!! YEHEY!!! ','336541316528','',NULL,NULL,NULL,'2010','02','23',NULL,NULL,NULL),(4019,'H...E...L...P... ulit','312599280903','',NULL,NULL,NULL,'2010','02','20',NULL,NULL,NULL),(4020,'Tnx po sa pag help nyo!!!','317030789510','',NULL,NULL,NULL,'2010','02','20',NULL,NULL,NULL),(4021,'H...E...L...P','342637709251','',NULL,NULL,NULL,'2010','02','19',NULL,NULL,NULL),(4022,'Hehehehee','348475971202','',NULL,NULL,NULL,'2010','02','19',NULL,NULL,NULL),(4023,'Pinamalayan Filipino-Chinese Friendship Day 2010','1261021891788','',NULL,NULL,NULL,'2015','10','07',NULL,NULL,NULL),(4024,'YEHEY!!! ','311998573394','',NULL,NULL,NULL,'2010','02','14',NULL,NULL,NULL),(4025,'First Time na!!! ulit...','328277328139','',NULL,NULL,NULL,'2010','02','12',NULL,NULL,NULL),(4026,'First Time na!!! hehehe','297363517710','',NULL,NULL,NULL,'2010','02','11',NULL,NULL,NULL),(4027,'First time na ulit!!! Hehehehe! Everyday na yan...','299528465123','',NULL,NULL,NULL,'2010','02','09',NULL,NULL,NULL),(4028,'hehehehe... YES!!!','474485950314','',NULL,NULL,NULL,'2010','02','09',NULL,NULL,NULL),(4029,'First Time na!!! HAhahahaha','289067967100','',NULL,NULL,NULL,'2010','02','09',NULL,NULL,NULL),(4030,'Help ulit... hehehee','288965758526','',NULL,NULL,NULL,'2010','02','06',NULL,NULL,NULL),(4031,'Yung mga naka online pa help naman... hehehe','294392922282','',NULL,NULL,NULL,'2010','02','06',NULL,NULL,NULL),(4032,'Just took the Typing Challenge and scored 41 words per minute with 98% accuracy. What\'s your typing speed?','1250490788517','',NULL,NULL,NULL,'2010','02','05',NULL,NULL,NULL),(4033,'Just took the Typing Challenge and scored 34 words per minute with 92% accuracy. What\'s your typing speed?','1249847412433','',NULL,NULL,NULL,'2010','02','04',NULL,NULL,NULL),(4034,'HEHEHEHEHEHE!!! I\'m good!!! Right???','269518538067','',NULL,NULL,NULL,'2010','01','27',NULL,NULL,NULL),(4035,'HEHEHEEHEHEHE!!! ','301058684306','',NULL,NULL,NULL,'2010','01','23',NULL,NULL,NULL),(4036,'Sana manalo kami bukas!!!','259222109861','',NULL,NULL,NULL,'2010','01','21',NULL,NULL,NULL),(4037,'Heheheheheheh!!!','273745448551','',NULL,NULL,NULL,'2010','01','11',NULL,NULL,NULL),(4038,'hehehehe','391305185262','',NULL,NULL,NULL,'2010','01','02',NULL,NULL,NULL),(4039,'Thank you sa mga nag gift sa kin!!! :)','224033961417','',NULL,NULL,NULL,'2009','12','07',NULL,NULL,NULL),(4040,'NICK JONAS!!! HAHAHA','1201161995328','',NULL,NULL,NULL,'2009','11','29',NULL,NULL,NULL),(4041,'yay','124386589518','',NULL,NULL,NULL,'2009','08','27',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (3,'University Student Government, DLSU','2013-09-01','2014-04-30','Manila, Philippines','3459628907221'),(4,'DLSU Sprint','0000-00','',NULL,'10207176231193888'),(5,'Philippine Computing Organizations Alliance','0000-00','',NULL,'10207088206113316'),(6,'La Salle Computer Society','0000-00','',NULL,'10205773326762154'),(7,'Bdo Private Bank','0000-00','',NULL,'10206569210815015'),(8,'De La Salle University','','',NULL,'10200740604503500'),(9,'Business Management Society','0000-00','0000-00',NULL,'10200682504051025');
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

-- Dump completed on 2017-03-10  0:47:00
