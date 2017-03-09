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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (81,'12/04/1998','birthday'),(82,'Eduardo','first_name'),(83,NULL,'middle_name'),(84,'Gargarita','last_name'),(85,'male','gender'),(86,'Makati','location'),(87,'','hometown');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (22,'St. Paul College of Makati','High School',2010,NULL,'109974669032540'),(23,'Don Bosco Technical Institute, Makati','High School',2011,NULL,'108615515829522'),(24,'De La Salle University','College',0000,NULL,'127612997282544');
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
) ENGINE=InnoDB AUTO_INCREMENT=932 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (924,'TUKLASalle: Competence','attending','DLSU- Henry Sy Hall','Manila','Philippines','1790705527915029'),(925,'Hult Prize at DLSU 2016 Finals','unsure','Natividad Fajardo Auditorium, Andrew Bldg., De La Salle University','Manila','Philippines','1779543502294685'),(926,'Find Your Old Books a New HOME!','attending','De La Salle University','Manila','Philippines','557438714463402'),(927,'37th Year Anniversary: SEA Games - 1st General Assembly','attending','4th Floor Multipurpose Room, Henry Sy Sr. Hall',NULL,NULL,'257462927982785'),(928,'numbers please.','attending',NULL,NULL,NULL,'1404235713159845'),(929,'LSM\'s Concert \"Sound Trip 2013\"','unsure','Lourdes School Of Mandaluyong City','Pasig','Philippines','421047041303206'),(930,'Christmas Partey!! :\"> 8)','attending',NULL,NULL,NULL,'873022062754374'),(931,'filed trip','unsure',NULL,NULL,NULL,'906350466054764');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (123,'Lu Unabia Gargarita','mother','1369399209787143'),(124,'Karina Gargarita Galanga','sister','10154461394712549');
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
) ENGINE=InnoDB AUTO_INCREMENT=1353 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1045,'WeeQuizz En','Community','1765624153463044'),(1046,'Reasons to Smile','Media/News Company','282603482159328'),(1047,'Worldstar Hip Hop','News/Media Website','253968658003230'),(1048,'Office of Student LIFE','College & University','343303555782076'),(1049,'Doggo News','Community','539699922880031'),(1050,'Borrowed Memes Won\'t Fade','Public Figure','1203372606364263'),(1051,'BMS Presents: Art & Appetite','Organization','1664751987122514'),(1052,'Shooting Stars meme','Entertainment Website','1357776277576126'),(1053,'Shitheadsteve','Artist','1444105205919421'),(1054,'SoulPancake','Media/News Company','73478266116'),(1055,'Janjan Comics','Entertainment Website','1377913788915976'),(1056,'Bow Wow','Public Figure','106764142756920'),(1057,'Konektado suplado','Local Business','162321073780159'),(1058,'Krisha Guico','Public Figure','367585753604104'),(1059,'Taft 4 Dead','Media/News Company','324002017689032'),(1060,'Buhay Kolehiyo','Just For Fun','1760706184164995'),(1061,'Stranger Things Posts','TV Show','798601976901786'),(1062,'Business Fish','Fictional Character','1525316157723031'),(1063,'Chelsea Football Club','Sports Club','86037497258'),(1064,'All Things Hair PH','Arts/Humanities Website','271285709922054'),(1065,'John Cena Memes','Comedian','497082180467842'),(1066,'DLSU Academic Services Group','Education','1472956159688249'),(1067,'Arsenal','Sports Team','20669912712'),(1068,'Serious Studio','Website','621593211228497'),(1069,'Golden Retriever','Pet','536874819667722'),(1070,'wansapunataym','Fictional Character','276322502483368'),(1071,'The Body Coach','Public Figure','201801253227152'),(1072,'Unlad Buhay: Pagbabahagi ng Talino at Karanasan sa Negosyo','Community','995370567241390'),(1073,'DLSU Business College Government','Government Organization','538531999608247'),(1074,'BLAZE Twenty-Eighteen','College & University','584550865025348'),(1075,'Ugnayan: ADMU x DLSU','Organization','257920424378230'),(1076,'Getty Images','Photographic Service','59323386296'),(1077,'Pro-Thomas Carandang Coalition','Community','686570224823423'),(1078,'CNN','Media/News Company','5550296508'),(1079,'DLSU Administration','Community','157394521107873'),(1080,'Towards Uplifting Knowledge and Leadership Advancement Series','Organization','1150516855063207'),(1081,'Hult Prize at De La Salle University','Non-Profit Organization','1687828458102530'),(1082,'KaBlam!','TV Show','135745956446986'),(1083,'Niana Guerrero','Public Figure','388339914658185'),(1084,'ANC 24/7','Media/News Company','262155953790'),(1085,'Nobel Prize','Non-Profit Organization','81239734102'),(1086,'Ranz and Niana','Public Figure','1405715926394069'),(1087,'Tredtwo Community Service Program','Education','282396708531188'),(1088,'RVR COB Office of the Vice Dean','College & University','425481477549275'),(1089,'Devvon Terrell','Musician/Band','133104574216'),(1090,'Turks Savemore Green Residences','Grocery Store','1082798061785802'),(1091,'DLSU Outdoor Club','Organization','73215158320'),(1092,'TableTaft Boardgame CafÃ©','Restaurant','1683005318648904'),(1093,'The Three of Us','Musician/Band','1541640876114673'),(1094,'DLSU Crushes','Community','643369445762552'),(1095,'Clickthecity','Local/Travel Website','39681309468'),(1096,'Gaten Matarazzo','Public Figure','140068252756331'),(1097,'Grab','App Page','527357467320600'),(1098,'Lasallian Personal Effectiveness Program','Event','698763360282780'),(1099,'88rising','Media/News Company','1711974572421873'),(1100,'Drew League','Outdoor, Recreation & Fitness','130536767023437'),(1101,'Ozzy Man Reviews','Comedian','687383314630872'),(1102,'AJ Rafael','Musician/Band','23617677216'),(1103,'Dota World','Community','610371239011518'),(1104,'Archers Network','Local Business','740065782742153'),(1105,'Cats of DLSU','Community','544897239005706'),(1106,'Rich Chigga','Artist','1673561712897655'),(1107,'Engineers of La Salle','Community','1717614991811008'),(1108,'Brienne of Art','Artist','1735639076689105'),(1109,'Smite','Video Game','187573977929373'),(1110,'Anna of the North','Musician/Band','674097152626216'),(1111,'BuzzFeed Philippines','Media/News Company','336350663190375'),(1112,'Kaskade','Musician/Band','61011643972'),(1113,'Tardibae: Raising Awareness for Tardigrades','Community','1032784916800961'),(1114,'DLSU LEAP','Event','718257501579821'),(1115,'Go Archers','Media/News Company','211497745544843'),(1116,'UEFA Champions League','Sports League','154040584642412'),(1117,'Sole Academy','Local Business','101031616671693'),(1118,'Alex Aiono','Musician/Band','182032895154467'),(1119,'American Ultimate Disc League','Sports League','148314748537921'),(1120,'DLSU-Manila Secret Files','Community','576825992449694'),(1121,'Clara Benin','Musician/Band','424259907610231'),(1122,'Tom sawyer memes','Community','329800867201399'),(1123,'BMS Presents: Unplugged','Community','482677655269140'),(1124,'StoneMountain64','Entrepreneur','319578698071948'),(1125,'Facebook','Residence','107885072567744'),(1126,'Cirque: Engineering Week 2016','Community','1079253202125328'),(1127,'Korni si Mark','Public Figure','461690157355188'),(1128,'University Vision-Mission Week 2016','Community','1714153808806231'),(1129,'Lasallian Excellence Awards','Organization','263372990525777'),(1130,'Warner Bros. Pictures','Movie/Television Studio','137782652917951'),(1131,'Radio One Lebanon','Just For Fun','124271334261942'),(1132,'For The Kids','Community','202509823216131'),(1133,'Urban Athletics','Local Business','236971671861'),(1134,'La Salle Sports Commission','Organization','125557394258467'),(1135,'70th ENG','Company','1647370928858454'),(1136,'Collision: Beyond Luminaria','Website','849973611688303'),(1137,'AppCola','Cultural Gifts Store','1702596176637693'),(1138,'William Singe','Musician/Band','138701700619'),(1139,'Ankle Upgrade','Clothing (Brand)','1733537683542816'),(1140,'Felipe and Sons','Local Business','230381287109712'),(1141,'G-Eazy','Musician/Band','11646162187'),(1142,'UNILAD','Advertising/Marketing','146505212039213'),(1143,'EDM Paraguay','News/Media Website','561729153862962'),(1144,'DLSU Eco Car Team','Energy Company','259171564150141'),(1145,'The Chainsmokers','Musician/Band','198933856805679'),(1146,'Lance Stewart','Public Figure','794496627281435'),(1147,'Eh Bee','Public Figure','498505146890911'),(1148,'Logan Paul','Actor','148364602028392'),(1149,'Piques','Artist','1407167032831912'),(1150,'DLSU CSO','Organization','245252766116'),(1151,'LA Lakers','Sports Team','144917055340'),(1152,'Green Giant FM','Radio Station','77443957603'),(1153,'De La Salle University','College & University','127612997282544'),(1154,'The LaSallian','Media/News Company','149678604759'),(1155,'UAAP - NCAA Memes','School Sports Team','321841241236767'),(1156,'Blacklight','Games/Toys','156941091039420'),(1157,'Pasikatan 2015','Community','552916441528753'),(1158,'UAAP Sports TV','Sports League','140200659447862'),(1159,'B\'lue. Live To Feel.','Food & Beverage Company','1439114389713775'),(1160,'DLSU JEMA','Non-Profit Organization','150272728495752'),(1161,'HYPEBEAST','Society/Culture Website','10862404186'),(1162,'IMES','Organization','1489018524747003'),(1163,'Handog 2015','Community','894937367252001'),(1164,'DLSU Harlequin Theatre Guild','College & University','164114206968244'),(1165,'DLSU CSO: Frosh Welcoming and Annual Recruitment Week','College & University','1612387242349708'),(1166,'LPEP 2K15','Community','1588399598100568'),(1167,'Dlsu Usg','Organization','283415475102221'),(1168,'Angry Birds','App Page','314467614927'),(1169,'King Bach','Artist','606246146140197'),(1170,'AutoCAD','Software','7434219475'),(1171,'crwn','Musician/Band','662294363828452'),(1172,'Mang Andres','Burger Restaurant','1420367684933851'),(1173,'SM Accessories','Retail Company','291083781726'),(1174,'bp valenzuela','Musician/Band','650148631676641'),(1175,'Donnalyn Bartolome','Public Figure','196934133652011'),(1176,'Main Frame','Local Business','726288934159064'),(1177,'Excel Corporation','Company','784516111583830'),(1178,'Ashley Gosiengfiao','Public Figure','148249834131'),(1179,'Daniela Andrade','Musician/Band','109834669140'),(1180,'Flying Dutchman Shoes','Shopping & Retail','247390848642733'),(1181,'The Wants','Musician/Band','585078978192301'),(1182,'Dearest,','Musician/Band','138104719702421'),(1183,'DJ CRAZE','Musician/Band','130322440330003'),(1184,'Jeremy Lin ææ¸è±ª','Athlete','1456505354584068'),(1185,'Who2bet','Sports League','364501570357185'),(1186,'DBTI Makati High School Student Council','High School','565808053488338'),(1187,'McDonald\'s','Fast Food Restaurant','121863347862934'),(1188,'Spinnin\' Records','Record Label','77677035678'),(1189,'Martin Garrix','Musician/Band','275648462478015'),(1190,'Primera','Clothing (Brand)','538450879590472'),(1191,'Echosmith','Musician/Band','55861771471'),(1192,'20th Century Fox','Clothing (Brand)','10150147379345582'),(1193,'Mom and Tina\'s','Local Business','112887348781649'),(1194,'Don Bosco Technical Institute','Private School','109454882414731'),(1195,'9GAG','App Page','21785951839'),(1196,'Grayson \'Professor\' Boucher','Public Figure','23394359986'),(1197,'Oklahoma City Thunder','Sports Team','159957123994'),(1198,'Razer','Video Game','13848807575'),(1199,'Gearbox Software Official','Games/Toys','298652701947'),(1200,'Borderlands','Games/Toys','104080139080'),(1201,'ThinkGeek','Retail Company','6399067073'),(1202,'How It Should Have Ended','Public Figure','119309631477965'),(1203,'Basketball Above All','Website','514668385258523'),(1204,'Russell Westbrook','Athlete','58643286604'),(1205,'The Fault in Our Stars','Movie','1374238589472726'),(1206,'The 1975','Musician/Band','365648163464988'),(1207,'Charlotte Hornets','Sports Team','53844953429'),(1208,'L.A. Clippers','Sports Team','40605971876'),(1209,'Imagine Dragons','Musician/Band','39643821406'),(1210,'Adult Swim Games','Games/Toys','349778578424462'),(1211,'Urbandub','Musician/Band','98787288158'),(1212,'Funny gags','Community','407111662758225'),(1213,'Tata Lino','Comedian','574305799277557'),(1214,'Switch Co.','Company','628378663893696'),(1215,'Cristine Reyes','Public Figure','122010853049'),(1216,'Cyanide & Happiness','Comedy Club','67400590475'),(1217,'Call of Duty','Games/Toys','229899403738458'),(1218,'Alodia Gosiengfiao','Artist','152138396746'),(1219,'The Lord of the Rings Trilogy','Movie','212216417436'),(1220,'Boo','Movie Character','132180523866'),(1221,'Avicii','Musician/Band','26435256798'),(1222,'MTV','News/Media Website','7245371700'),(1223,'Drake','Musician/Band','83711079303'),(1224,'Shaquille O\' Neal','Athlete','126456347482147'),(1225,'Megan Fox','College & University','26748225422'),(1226,'DJ Zwackery','Musician/Band','450091600391'),(1227,'MOBA Player','Entertainment Website','578219092231480'),(1228,'Gamersbook','Entertainment Website','141795922505718'),(1229,'Be aware: Help save a GRIZZLY BEAR','Community','649506311749186'),(1230,'The Alliance','Sports Team','506574272736611'),(1231,'Dota2Lounge','Organization','505041109541447'),(1232,'The Magical hexOr','Artist','149350985099495'),(1233,'Emma Watson','Artist','140216402663925'),(1234,'Facebook for Every Phone','Business Service','331288023558058'),(1235,'adidas','Company','183334676308'),(1236,'Bruno Mars','Musician/Band','242567287243'),(1237,'Selecta Cornetto','Ice Cream Shop','113518575338079'),(1238,'Heavy Arm Online Gamestore','Games/Toys','105953492781584'),(1239,'St. Paul College of Makati','Local Business','171554163024061'),(1240,'Battlefield','Games/Toys','449823405103036'),(1241,'iTunes','Product/Service','100484820802'),(1242,'Best Vines','Website','170901143077174'),(1243,'Natus Vincere','Sports Team','160647443979176'),(1244,'Dota 2','Games/Toys','106876872711112'),(1245,'Maroon 5','Musician/Band','5330548481'),(1246,'Foster The People','Musician/Band','326149431743'),(1247,'YouTube','Product/Service','7270241753'),(1248,'Percy Jackson','Book','120471101332984'),(1249,'NESCAFÃ','Foodservice Distributor','99351244175'),(1250,'Ranked Gaming Client','Games/Toys','109948679031029'),(1251,'Axe Philippines','Health/Beauty','350337822785'),(1252,'FourDeltaOne','Community','380779431946121'),(1253,'Vans','Organization','113478655329046'),(1254,'KitKat','Food & Beverage Company','156333434394547'),(1255,'Don Bosco Technical Institute - Makati City (Official Site)','School','445086115536691'),(1256,'PewDiePie','Public Figure','193844937315070'),(1257,'Intel Philippines','Product/Service','148168013639'),(1258,'Red Crucible: Firestorm','App Page','126605594124234'),(1259,'So, you\'re exited about Diablo III?','Other','455293747821425'),(1260,'Scariest game ever','Other','401274143229379'),(1261,'Just being Pirate like a Captain','Other','358636324184724'),(1262,'CARAGA TRAVEL LINKS','Public Figure','10150122246945527'),(1263,'LeBron James','Athlete','64637653943'),(1264,'Usher','Musician/Band','6564142497'),(1265,'Windows','Home','105707926288500'),(1266,'Comedy','Book Genre','109469405746262'),(1267,'My Chemical Romance','Musician/Band','9297927892'),(1268,'Jabbawockeez','Public Figure','8575300901'),(1269,'The Walking Dead','TV Show','110475388978628'),(1270,'Kobe Bryant','Athlete','69025400418'),(1271,'Samsung Mobile','Product/Service','114219621960016'),(1272,'Call of Duty: Black Ops','Interest','137501782936246'),(1273,'LEFT 4 DEAD - THE MOVIE','Movie','183947398465'),(1274,'PlayStation','Product/Service','14104316802'),(1275,'Derrick Rose','Athlete','51926382304'),(1276,'Jesus','Public Figure','104332632936376'),(1277,'Dogs','Animal','114197241930754'),(1278,'The Bible','Book','110288948999058'),(1279,'7-Eleven','Company','13457463254'),(1280,'World of Warcraft','Games/Toys','127759447261049'),(1281,'Call of Duty: Modern Warfare 3','Video Game','204322856262065'),(1282,'Quickly Philippines','Food & Beverage Company','110249305692803'),(1283,'Tetris Battle','App Page','345869588775471'),(1284,'New York Knicks','Sports Team','21410634615'),(1285,'NBA','Sports League','8245623462'),(1286,'Hotel City','App Page','142368335881829'),(1287,'Ninja Saga','App Page','315390295169855'),(1288,'GodsWar: Best 3D MMO RPG Browser Game','App Page','246619235413038'),(1289,'Mercenaries of War','App Page','315163938520465'),(1290,'couponsdealscenter.com','Community','137391353014293'),(1291,'Barack Obama','Politician','6815841748'),(1292,'Backyard Monsters','App Page','304561816235995'),(1293,'Zombie Cafe','App Page','282670818457333'),(1294,'NANOFLUX','Company','357710790911271'),(1295,'Ninja Society','App Page','188867071129005'),(1296,'Ninja Warz','App Page','286834098039842'),(1297,'Kevin Durant','Athlete','81781281654'),(1298,'IntenCT2','Local Business','335403763151103'),(1299,'Desktop Defender','App Page','310305532345504'),(1300,'See More','Artist','170357476364022'),(1301,'StarCraft II Sync','App Page','243056412434857'),(1302,'Entertainment on Facebook','Community','81557462601'),(1303,'The Skoll Foundation','Non-Profit Organization','193147324041812'),(1304,'CityWars','App Page','117158271735970'),(1305,'Basketball','Sport','108614982500363'),(1306,'Henyo KA :O, Na GETS ko YUN','Comedian','110882379010956'),(1307,'Continue Reading','Community','188430521250180'),(1308,'Christmas','Holiday','108085475886344'),(1309,'Firefox','Product/Service','14696440021'),(1310,'Blizzard','Games/Toys','152083869857'),(1311,'Wild Ones','App Page','294968260535143'),(1312,'Ruben Villa','Public Figure','254403287915524'),(1313,'Nike Basketball','Product/Service','5941596308'),(1314,'Support the Convention on Enforced Disappearances','Other','143257222382013'),(1315,'Olivia Chachi Gonzales','Dancer','142526855817823'),(1316,'Chachi Gonzales','Dancer','138046499598485'),(1317,'A.B. Repro-health','Medical Company','252663254782484'),(1318,'Monstermind','App Page','164145873660311'),(1319,'Yahoo','Media/News Company','7040724713'),(1320,'We The Kings','Musician/Band','7569176974'),(1321,'Chicago Bulls','Sports Team','37152881613'),(1322,'Lets go Gamers','Community','190641150967217'),(1323,'Columbia Pictures Philippines','Movie/Television Studio','196647134027'),(1324,'Movies Philippines (Paramount - Universal - DreamWorks Animation)','Movie','144437552283546'),(1325,'Steve Jobs','Public Figure','134790706613033'),(1326,'Real Steel Philippines','Movie','171174072953518'),(1327,'Futurama','TV Show','9588466619'),(1328,'Darkspore','Video Game','142176019146957'),(1329,'Ang Tunay Na Lalake','Society/Culture Website','161969187195214'),(1330,'Classes are suspended due to heavy Prayers of students :>','Professional Service','185721964823978'),(1331,'Gameloft','Shopping & Retail','216238295505'),(1332,'Jackass','Movie','21295715752'),(1333,'Stick Run','Games/Toys','221375297878489'),(1334,'The Lonely Island','Island','7187318041'),(1335,'I Dislike this','Internet Company','267251303287680'),(1336,'Starcraft 2 Tournament at Netgamix!','Website','261651223855897'),(1337,'The Simpsons','TV Show','29534858696'),(1338,'Family Guy','TV Show','24609282673'),(1339,'South Park','TV Show','6708787004'),(1340,'NOTD','Games/Toys','155730404791'),(1341,'The Annoying Orange','Food Truck','209118161295'),(1342,'NAKAKABANAS UNG MGA TEACHER NA NANGENGEELAM NG HAIRSTYLE!!!!!','Community','309178653383'),(1343,'Free 400token','Community','122744451122586'),(1344,'Facebooking','Travel & Transportation','114721225206500'),(1345,'Facebook','Product/Service','20531316728'),(1346,'Daybreakers','Movie','112417400445'),(1347,'Gm Ayla Crossfire','Athlete','144617325568762'),(1348,'Carlos Dante\'s Club','Games/Toys','101802699878984'),(1349,'Night club city','Community','119981648035451'),(1350,'StarCraft','Games/Toys','178337772456'),(1351,'YoVille','Video Game','105628842803732'),(1352,'My Fairy Bag Lady','Company','117412164953965');
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
) ENGINE=InnoDB AUTO_INCREMENT=4292 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (4251,'Lumipas na ang taon. Natatandaan mo pa ba ako? #LEAP2K17','1482820275092337','',NULL,NULL,NULL,'2017','03','06',NULL,NULL,NULL),(4252,'\"Competency is such a rare bird in these woods, that I always appreciate it when I see it.\" - Frank Underwood\nDiscover what it takes to be an effective leader through competence! Come join us on March 3, 2017 at the 5th floor of Henry Sy Sr. Hall, De La Salle University - Manila as we bring you the second module of TUKLAS 2016 with the theme, Building Lasallian Advocates for Transformation.\nDelegate form: http://tinyurl.com/TUKLASDelegateSignUps\nPrimer: http://tinyurl.com/TUKLASDelegatePrimer\nKeep posted on our social media accounts for more updates on TUKLAS 2016!\nFacebook: www.facebook.com/DLSUCSOTUKLAS\nTwitter: https://twitter.com/CSO_TUKLAS\n#TUKLASalle','1457856997588665','',NULL,NULL,NULL,'2017','02','12',NULL,NULL,NULL),(4253,'The Council of Student Organizations\' Green Card Alliance is from November 21-25!\nDiscounts and privileges await you! Claim your membership cards from your organization.\nKnow more soon.','1331217603585939','',NULL,NULL,NULL,'2016','11','19',NULL,NULL,NULL),(4254,'âTrue compassion means not only feeling another\'s pain but also being moved to help relieve it.â \n- Daniel Goleman\n\nHow important is compassion in being a leader?\n\nFind out more on November 26, 2016 at 9:00AM at the 5th floor of Henry Sy Sr. Hall, De La Salle University - Manila as we bring you TUKLAS 2016 with the theme, Building Lasallian Advocates for Transformation.\n\nKeep posted on our social media accounts for more updates on TUKLAS 2016!\nFacebook: www.facebook.com/DLSUCSOTUKLAS\nTwitter: https://twitter.com/CSO_TUKLAS\n#TUKLASalle','1314319495275750','',NULL,NULL,NULL,'2016','11','04',NULL,NULL,NULL),(4255,'Yes we heard you!\n\nThe deadline for registration is extended.\n\nBe the change with $1,000,000.\n\nDonât miss the chance to register for the second Hult Prize at DLSU with these 3 easy steps!\n\nFind a team of at least 3 members and no more than 4 and must be comprised of current DLSU students, with an option of one alumni!\n\nRegister for the Hult Prize at hultprizeat.com/dlsu\n\nTo get the latest updates, make sure to like and follow us on Facebook, Twitter and Instagram!\n\nFB: /hultprizeatDLSU\nTwitter: @hultprizedlsu\nInstagram: @hultprizedlsu\n#hp17 #crisis2action #hultprize #hultprizeatDLSU','1304558362918530','',NULL,NULL,NULL,'2016','10','26',NULL,NULL,NULL),(4256,'Matthew De Dios  tama na please','1281821855192181','',NULL,NULL,NULL,'2016','10','05',NULL,NULL,NULL),(4257,'HAHAHAHAHAHA','1272674339440266','',NULL,NULL,NULL,'2016','09','28',NULL,NULL,NULL),(4258,'Welcome to De La Salle University ID 116! We\'re here to help you catch \'em all (freebies, fun experiences, and new friends)!\nPrepare for the warmest welcome on September 5-6!\nBrought to you by:\nDLSU CSO: Frosh Welcoming and Annual Recruitment Week DLSU CSO\n#PokeworldDLSU #AnimoGo #FW2K16','1246781298696237','',NULL,NULL,NULL,'2016','09','05',NULL,NULL,NULL),(4259,'hindi ko na kaya kagwapuhan ko :(','1199813923392975','',NULL,NULL,NULL,'2016','07','15',NULL,NULL,NULL),(4260,'I have started playing Live Holdâem on Facebook. Why donât you join me?','714056925302013','',NULL,NULL,NULL,'2014','04','17',NULL,NULL,NULL),(4261,'NW: Silent Hill Revelation','506424542731920','',NULL,NULL,NULL,'2013','02','07',NULL,NULL,NULL),(4262,'Bamboo concert\nok lang naman','497215030319538','',NULL,NULL,NULL,'2013','01','25',NULL,NULL,NULL),(4263,'Happy New Year!! :D','484631238244584','',NULL,NULL,NULL,'2012','12','31',NULL,NULL,NULL),(4264,'Thank you sa lahat ng bumati!! =)','471293749578333','',NULL,NULL,NULL,'2012','12','04',NULL,NULL,NULL),(4265,'hahahahaha','321966347898788','',NULL,NULL,NULL,'2012','08','17',NULL,NULL,NULL),(4266,'LUMAKAS KA PA ULAN.','423168474390861','',NULL,NULL,NULL,'2012','07','30',NULL,NULL,NULL),(4267,'Y U NO BUY STARCRAFT 2!','391406844233691','',NULL,NULL,NULL,'2012','05','21',NULL,NULL,NULL),(4268,'125 lines!!','390581334307739','',NULL,NULL,NULL,'2012','04','20',NULL,NULL,NULL),(4269,'105 lines','335231843203914','',NULL,NULL,NULL,'2012','04','08',NULL,NULL,NULL),(4270,'100!!','252436924843518','',NULL,NULL,NULL,'2012','03','13',NULL,NULL,NULL),(4271,'102!!!!!!!!','361284333892657','',NULL,NULL,NULL,'2012','03','06',NULL,NULL,NULL),(4272,'93 kulang pa','243360365750158','',NULL,NULL,NULL,'2012','02','15',NULL,NULL,NULL),(4273,'sayang 100 nasana','216324451797553','',NULL,NULL,NULL,'2012','02','14',NULL,NULL,NULL),(4274,'Juega Tig Arena 3 ','320985394609170','',NULL,NULL,NULL,'2012','01','31',NULL,NULL,NULL),(4275,'Friends, sign up to save our free internet....','338874806136274','',NULL,NULL,NULL,'2012','01','19',NULL,NULL,NULL),(4276,'Happy New year!!!! :DDDD','302387439802299','',NULL,NULL,NULL,'2011','12','31',NULL,NULL,NULL),(4277,'!Ì¸Ì¶ÍÍÍÌ©Ì»Ì©ÌÍÌ®ÌÌÍÍÌÍÌÌÍ£Í©ÌÍ¨ÌÌÌÌÌÌÌÍÍ Í Ì·Ì§Ì¢ÌÍÌ¤ÌÌºÌ«ÌÍÌÍÍªÌÌÌÌÌÍ¥ÌÍ«ÌÍ¤ÌÍ¥Í Ì¡ÌÍÌ Í«ÌÍ¦ÌÌÌÍ§Í®ÍÌ½Í¦Í©ÍÌÍÌÌÒÌµÍÌ Did you think someÄ±Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¨ting was on your screen? !Ì¸Ì¶ÍÍÍÌ©Ì»Ì©ÌÍÌ®ÌÌÍÍÌÍÌÌÍ£Í©ÌÍ¨ÌÌÌÌÌÌÌÍÍ Í Ì·Ì§Ì¢ÌÍÌ¤ÌÌºÌ«ÌÍÌÍÍªÌÌÌÌÌÍ¥ÌÍ«ÌÍ¤ÌÍ¥Í Ì¡ÌÍÌ Í«ÌÍ¦ÌÌÌÍ§Í®ÍÌ½Í¦Í©ÍÌÍÌÌÒÌµÍÌ','296803977027312','',NULL,NULL,NULL,'2011','12','21',NULL,NULL,NULL),(4278,'Juega Tig Arena 3 ','286359738071736','',NULL,NULL,NULL,'2011','12','03',NULL,NULL,NULL),(4279,'I\'m using www.facecons.info/fb/ to send cool emoticons','259524534088590','',NULL,NULL,NULL,'2011','10','06',NULL,NULL,NULL),(4280,'FACEBOOK JUST RELEASED THEIR PRICE GRID FOR MEMBERSHIP. $9.99 PER MONTH FOR GOLD MEMBER SERVICES, $6.99 PER MONTH FOR SILVER MEMBER SERVICES, $3.99 PERMONTH FOR BRONZE MEMBER SERVICES, FREE IF YOU COPY AND PASTE THIS MESSAGE BEFORE MIDNIGHT TONIGHT. WHEN YOU SIGN ON TOMORROW MORNING YOU WILL BE PROMPTED FOR PAYMENT INFO...IT IS OFFICIAL IT WAS EVEN ON THE NEWS. FACEBOOK WILL START CHARGING DUE TO THE NEW PROFILE CHANGES. IF YOU COPY THIS ON YOUR WALL YOUR ICON WILL TURN BLUE AND FACEBOOK WILL BE FREE FOR YOU. PLEASE PASS THIS MESSAGE ON IF NOT YOUR ACCOUNT WILL BE DELETED IF YOU DO NOT PAY','255238744517169','',NULL,NULL,NULL,'2011','09','26',NULL,NULL,NULL),(4281,'Did you think someÄ±Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¸Ì¨ting was on your screen?','248007758573601','',NULL,NULL,NULL,'2011','09','09',NULL,NULL,NULL),(4282,'http://www.sinthaistudio.com/thehouse/alrena/\n','225442840806052','',NULL,NULL,NULL,'2011','05','11',NULL,NULL,NULL),(4283,'Why should your friends work for you?','184121531615838','',NULL,NULL,NULL,'2011','01','05',NULL,NULL,NULL),(4284,'If you think I\'m nice, [ LIKE ] this status.\nIf you love me, put a [ â¥ ].\nIf I\'m a good friend, put a [ :) ].\nIf I\'m your best friend put a [:D ].\nIf you ever had a crush on me , put a [ XD ]\n............If you don\'t like me, put a [ :( ].\nIf you hate me, put a [ x( ].\nAnd if you are brave enough, post this as your status. :)','162833060428405','',NULL,NULL,NULL,'2010','12','21',NULL,NULL,NULL),(4285,' Add Me!Amazing!! I just got a big pile of Coins & Cash, so have over 52,488 People!!! MY GOD IM THE BIGGEST NINJA IN HISTORY!! :D  Go to: http://www.free400token.blogspot.com','177543855596601','',NULL,NULL,NULL,'2010','12','13',NULL,NULL,NULL),(4286,'happy birthday Joshua:ã','150391035008202','',NULL,NULL,NULL,'2010','12','05',NULL,NULL,NULL),(4287,'hahahahahahahahhahaha','137054562994848','',NULL,NULL,NULL,'2010','07','22',NULL,NULL,NULL),(4288,'Sorry Wolfgang utos ng nanay natin eh! :)','102707856447063','',NULL,NULL,NULL,'2010','06','21',NULL,NULL,NULL),(4289,'(Let your friends know that you\'ve sent a free gift!)','124749320891536','',NULL,NULL,NULL,'2010','06','06',NULL,NULL,NULL),(4290,'(Let your friends know that you\'ve sent a free gift!)nan ','117154551660117','',NULL,NULL,NULL,'2010','05','28',NULL,NULL,NULL),(4291,'(Let your friends know that you\'ve sent a free gift!)','112516622124626','',NULL,NULL,NULL,'2010','05','21',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
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

-- Dump completed on 2017-03-10  1:31:17
