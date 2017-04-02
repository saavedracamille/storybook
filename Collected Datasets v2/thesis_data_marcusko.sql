-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: thesis_data_marcusko
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (46,'03/27/1996','birthday'),(47,'Marcus','first_name'),(48,NULL,'middle_name'),(49,'Ko','last_name'),(50,'male','gender'),(51,'Manila, Philippines','location'),(52,'Manila, Philippines','hometown');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (15,'Makati Hope Christian School','High School',2013,NULL,'111675538850118'),(16,'De La Salle University','College',0000,NULL,'127612997282544');
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
) ENGINE=InnoDB AUTO_INCREMENT=889 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (829,'LSCS Christmas Party!','attending','The Manila Residences Tower II','Manila','Philippines','341032832938478'),(830,'Christmas Dinner','unsure','Torch Greenbelt 5 Makati','Makati','Philippines','875013879300885'),(831,'My Birthday','attending','Somerset Alabang Manila','Muntinlupa City','Philippines','196174807455551'),(832,'Bryan\'s Birthday','attending','The Chillout Project Kitchen & Bar','Manila','Philippines','172661209843890'),(833,'LSCS: Junior Officer Recruitment Week','attending',NULL,NULL,NULL,'524764327722225'),(834,'Term End Celebration','attending',NULL,NULL,NULL,'1083159328434369'),(835,'Alumni Homecoming','attending','De La Salle University','Manila','Philippines','1547239322252145'),(836,'Third General Assembly','attending','A1103',NULL,NULL,'1057735374311733'),(837,'Project FamILY','attending',NULL,NULL,NULL,'824469844325598'),(838,'PLDT ALPHA- Digital Transformation and the Role of Big Data Analytics in Enabling the Enterprise','attending','DLSU, Gokongwei bldg. ISR Auditorium',NULL,NULL,'1002882519786817'),(839,'EDSA FRIENDSHIP CELEBRATION','attending','SM Cinemas MOA','Pasay City','Philippines','486220504918694'),(840,'BIRTHDAY!!','attending','YELLOW CAB',NULL,NULL,'799221396866455'),(841,'Second General Assembly','unsure','Gokongwei Lobby',NULL,NULL,'1681178198789745'),(842,'Introduction to ACM','unsure','G304B',NULL,NULL,'235009596831996'),(843,'Get Together Before School Starts','unsure','Capitol Commons','Pasig','Philippines','500571723456804'),(844,'My Birthday/ Pat and I\'s Anniversary','unsure','Sandbox Alviera Porac Pampanga','Porac','Philippines','167983100211580'),(845,'Marielle\'s New Number','attending',NULL,NULL,NULL,'1702655566637054'),(846,'Numbers','attending',NULL,NULL,NULL,'1590476251223575'),(847,'Hangover','attending','Sea Residences','Pasay City','Philippines','1626019820965759'),(848,'Tricia\'s 18th','attending','Casa Camba','Quezon City','Philippines','626904124121148'),(849,'COAN (CCS Organizations Awards Night)','unsure','Br. Andrew Gonzalez 20th Floor Multipurpose Hall',NULL,NULL,'1591417681116459'),(850,'Late Birthday','attending','Zong Restaurant Fort Bonifacio','Taguig','Philippines','865393060190187'),(851,'Dex & Arlene Wedding','attending','Shrine Of Jesus, SM Mall Of Asia','Pasay City','Philippines','674951469293243'),(852,'Hail! (The Culminating Concert for DLSU\'s University Week 2015)','unsure','DLSU- Henry Sy Hall','Manila','Philippines','810959098977401'),(853,'My Birthday Dinner','attending','Jade Garden',NULL,NULL,'751081991635337'),(854,'Thierry\'s 1st Birthday Party','attending','Greenhills Uno Seafood Palace','San Juan','Philippines','278693982336223'),(855,'Birthday Lunch :)','attending',NULL,NULL,NULL,'394883140680708'),(856,'CCS 113 Batch General Assembly!!','unsure','Andrew Building, De La Salle University, 20th Floor',NULL,NULL,'832460290106779'),(857,'Suprise Birthday for Pepper and Eli','attending','Project Pie, Blue Bay, Pasay','Pasay City','Philippines','1471991159753164'),(858,'Advance Birthday Party! :D','unsure','Pizza Hut Bistro, Glorietta 4','Makati','Philippines','293808434152768'),(859,'LIGHTS: Who lights up your world?','unsure','Covered Courts, Ateneo de Manila University','Quezon City','Philippines','1471583013128290'),(860,'One eight :)','attending','Cucina, Marco Polo Ortigas Manila','Pasig','Philippines','367090153439568'),(861,'Birthday!','unsure',NULL,NULL,NULL,'550135011782463'),(862,'Debut','attending',NULL,NULL,NULL,'730671333714003'),(863,'New number!','attending',NULL,NULL,NULL,'873188309361551'),(864,'Numbaaah Please :)','attending',NULL,NULL,NULL,'493882740712608'),(865,'LOST CONTACTS :)','attending',NULL,NULL,NULL,'644955285583858'),(866,'Numbers Pls :)','attending',NULL,NULL,NULL,'1377744482464274'),(867,'Clarisse\'s 18th! :) Rak en Roll \\m/','unsure',NULL,NULL,NULL,'675761962467270'),(868,'CP numbers please :)','attending',NULL,NULL,NULL,'1512274808998355'),(869,'My Birthday','attending','North Park - Glorietta 5','Makati','Philippines','1384545228434537'),(870,'Hello :)','attending','Manila Polo Club','Makati','Philippines','435863533195890'),(871,'NUMBERS','attending',NULL,NULL,NULL,'380348175400562'),(872,'Colleen\'s 17th celebration!','attending','Chili\'s Greenbelt 5, Ayala Center, Makati City','Makati','Philippines','376267975818277'),(873,'PULSE','attending','Marc 2000','Manila','Philippines','267460653398667'),(874,'EK','attending','Enchanted Kingdom','Santa Rosa','Philippines','132876213565461'),(875,'Movies!!','attending','Greenbelt 3 - Cinemas','Makati','Philippines','547442331953457'),(876,'My Birthday!!','attending','Yakimix, Greenbelt 3','Antipolo','Philippines','235371449930644'),(877,'My birthday','attending','Nuvali?',NULL,NULL,'286354831493517'),(878,'(Secret) Birthday Party!','attending','YellowCab - Glorietta 5','Makati','Philippines','370716009691105'),(879,'Patrick and Made Bday','attending',NULL,NULL,NULL,'467377449979820'),(880,'LIMITLESS','unsure','Henry-Lee Irwin Theater, ADMU','Quezon City','Philippines','374978579256763'),(881,'Rice and Shine: Breakfast has never been this long','unsure','Immaculate Conception Academy','San Juan','Philippines','535511459812110'),(882,'Devil\'s Cup 2012','unsure','UP Gym','Quezon City','Philippines','290217727764786'),(883,'GRANDIOSO','unsure','Teresa Yuchengco Auditorium','Manila','Philippines','503390029679764'),(884,'Waterpalooza: The JEMA Acquaintance Party','attending','Shanghai Garden Resort','ParaÃ±aque','Philippines','262725743828112'),(885,'Plugged \"Soulful Renditions\"','attending','Victory Malate','Manila','Philippines','271334932974340'),(886,'Cellphone Number','attending',NULL,NULL,NULL,'335341946537456'),(887,'3H\'s Super Maze','unsure',NULL,NULL,NULL,'829800603723664'),(888,'Gavin\'s 1st Birthday','attending','Annapolis Seafood Palace','San Juan','Philippines','777841448950575');
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
  `fbID` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (92,'Celine Ko','cousin','1319306468149858'),(93,'Neil Kendrick Go','cousin','1365050240183770'),(94,'Bryan Ko','cousin','1457878530903235'),(95,'Jan Go','cousin','1587876994563720'),(96,'Kimber Ong','cousin','10158198146990277'),(97,'Michael Ang','brother','1652837298065777'),(98,'Renz Joshua Go','cousin','1351542318200110'),(99,'Erika Go','cousin','1587807961246847'),(100,'Jarvey Ryle Go','cousin','1354662577913385'),(101,'Galvin Dy','family member','10154239994742321'),(102,'Joyce Lyn Ko','cousin','1290560804316640'),(103,'Francis Ko','cousin','1356200047751825');
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
) ENGINE=MyISAM AUTO_INCREMENT=690 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (176,'Sundae Kids','Artist','1522018888083950'),(177,'Margot Elise Robbie','Artist','303522710050691'),(178,'Yassi Pressman','Artist','708539895899305'),(179,'DLSU LEAP','Event','718257501579821'),(180,'Atlantica Online - NA','Games/Toys','485060885025662'),(181,'DLSU CSO','Organization','245252766116'),(182,'Yung Mavu','Artist','1727736887541602'),(183,'Salvatore Mann Shoes and Bags','Bags/Luggage','135595973138014'),(184,'Jess Conte','Public Figure','1595954257284945'),(185,'CollegeHumor','Entertainment Website','6363207806'),(186,'Felipe and Sons','Local Business','230381287109712'),(187,'Hublot','Jewelry/Watches','53352786534'),(188,'Dell','Workplace & Office','287798400543'),(189,'Lasallian Scholar Program','College & University','520547104683277'),(190,'Ivanka Trump','Public Figure','120745732681'),(191,'Hugot Snapchat','Public Figure','1374395569555096'),(192,'Philippine Computing Organizations Alliance','Computer Company','446066582255757'),(193,'Lights Out','App Page','785062311600434'),(194,'LaLiga','Sports League','187991754570725'),(195,'Jessica Alba','Artist','298334973652'),(196,'DLSU CSG','Organization','174797889340539'),(197,'Narcos','TV Show','917449554951993'),(198,'Green & White 2017','Media/News Company','715824991888959'),(199,'PSDFreebies.com','Website','119919441424355'),(200,'Jus & Jerry\'s Taft','Restaurant','164313830249118'),(201,'Sexual Harassment: Enough is Enough.','Community','1083132145075595'),(202,'Before You Exit','Musician/Band','54976564366'),(203,'Twitch','Website','491606594363878'),(204,'Leonides T. Son','Public Figure','1740263026212562'),(205,'Michael Phelps','Athlete','8938856246'),(206,'Gabriel Conte','Public Figure','1537512523160704'),(207,'The Football Community UK','Recreation/Sports Website','161081640961861'),(208,'looloo app','App Page','202201016483300'),(209,'Mildred\'s Grill Station','Grocery Store','231672997189452'),(210,'Dick Gordon','Government Official','225987507830'),(211,'Rody Duterte','Politician','373183260424'),(212,'Sweet things in life','Grocery Store','208292195876157'),(213,'The Border Collective','Community','1100355433322215'),(214,'Blogapalooza','Community Organization','197431113625922'),(215,'INKOMPASS','Company','502975673136093'),(216,'Em-Tech Symposium BLOG','Community','992040097541537'),(217,'Josh Paler Lin','Public Figure','227578044260007'),(218,'IU - Lee Ji Eun -','Musician/Band','111336658944445'),(219,'Ãlodie Yung','Artist','121115644642690'),(220,'Courtney Eaton','Public Figure','338462532890057'),(221,'Justin Trudeau','Politician','21751825648'),(222,'Papa John\'s Pizza','Fast Food Restaurant','127898463920397'),(223,'Danielle Robay','News Personality','192441013999'),(224,'The Revenant Movie','Movie','568876783246225'),(225,'Angelina H. Bee','Public Figure','801280139992222'),(226,'Whitney Cummings','Public Figure','171543010740'),(227,'Sofia Andres','Artist','253818898012664'),(228,'BRECK','Local Business','551468788367419'),(229,'NBA','Sports League','8245623462'),(230,'Freedom Film Festival','Event','844315378925486'),(231,'YL Fresh Fruits Trading','Grocery Store','208817132800567'),(232,'VN Design','Graphic Designer','327315617384624'),(233,'Kristaps Porzingis','Athlete','755949097788474'),(234,'Lily Maymac','Public Figure','709804645829995'),(235,'Ian Chen','Actor','127015507468884'),(236,'Bongbong Marcos','Public Figure','109924549061054'),(237,'Chris Pratt','Artist','116470741718097'),(238,'Ken Jeong','Public Figure','53700581869'),(239,'Yamada kun to 7-Nin no Majo','Book','176056059270614'),(240,'Fresh off the Boat','TV Show','1443588465873853'),(241,'Magic Rush: Heroes','App Page','1502384656709841'),(242,'Bryce Dallas Howard','Artist','137224399974196'),(243,'OfficialHuskylovers.com','Media/News Company','195819930466243'),(244,'Behati Prinsloo','Public Figure','103150156391659'),(245,'De La Salle Floorball','School Sports Team','528169293904194'),(246,'Harry Potter','Movie','156794164312'),(247,'Yanet GarcÃ­a','Public Figure','1442599296013326'),(248,'Green Giant FM','Radio Station','77443957603'),(249,'DLSU Hackercup 2015','Community','1128720273823998'),(250,'THRIVE','Event','1589626121320066'),(251,'Transire','Organization','1105131322844761'),(252,'Kristina Pimenova','Public Figure','141363675915670'),(253,'Google','Arts & Entertainment','1213288995362308'),(254,'La Salle Volleyball Club','Non-Profit Organization','873832449365491'),(255,'Leonardo DiCaprio','Artist','9085937115'),(256,'David Beckham','Athlete','84218631570'),(257,'Jason Statham','Artist','100827133412869'),(258,'Chris Evans','Other','177051245810097'),(259,'Tom Hiddleston','Artist','418706804839777'),(260,'The Maverick Pomade','Product/Service','666231710179520'),(261,'Booster C Energy Shot','Food & Beverage Company','325959034129341'),(262,'Bright Side','Media/News Company','727974550664624'),(263,'Disney','Company','11784025953'),(264,'Cara Delevingne','Public Figure','1453470311647266'),(265,'Sara Jean Underwood','Public Figure','294965691744'),(266,'Alyssa Miller','Public Figure','111394658892085'),(267,'Kendall Jenner','Public Figure','173567062703796'),(268,'Bar Refaeli','Public Figure','119267828223541'),(269,'Anna Akana','Comedian','345242775522258'),(270,'Donald J. Trump','Public Figure','153080620724'),(271,'Pau Gasol','Athlete','49824215862'),(272,'Ming-Na Wen','Artist','768010436552766'),(273,'Randall Park','Artist','1457654264464114'),(274,'Constance Wu','Artist','774501275907957'),(275,'Heat, Edsa Shangri-La, Manila','Local Business','139856596221310'),(276,'Bryce Dallas Howard','Public Figure','103136883060609'),(277,'Kevin Hart','Comedian','80500707044'),(278,'CLINICkO','Website','508697312489070'),(279,'Sophie Turner','Artist','470281616387368'),(280,'The Great Works','Artist','415950201917579'),(281,'Mission: Impossible','Movie','172924872766408'),(282,'Tom Cruise','Public Figure','81512169979'),(283,'Arnold Schwarzenegger','Public Figure','9269711759'),(284,'Danielle Panabaker','Actor','22134806791'),(285,'Supreme Laundry','Professional Service','356191171242024'),(286,'Shoenami','Shopping/Retail','422751554570571'),(287,'James Harden','Athlete','336263533098855'),(288,'Jessie Mendiola','Artist','102565223114035'),(289,'Shakeys Macapagal Blvd. Aseana City','Local Business','1448046208803095'),(290,'Bitcoin Billionaire','App Page','1553543524873933'),(291,'UkewithNix','Musician/Band','224353970995825'),(292,'Evanna Lynch','Artist','238235589546563'),(293,'Iman Shumpert','Athlete','228224477266957'),(294,'Klay Thompson','Athlete','183891904993647'),(295,'Minutes PH','Jewelry/Watches','228203724035702'),(296,'Viva Bianca','Artist','101810189906866'),(297,'Charli XCX','Musician/Band','171755106168792'),(298,'Neil deGrasse Tyson','Scientist','7720276612'),(299,'USA Network','TV Network','175492113249'),(300,'Robert Downey Jr','Artist','154213784747095'),(301,'Raina Ellison - Hein','Public Figure','281370741093'),(302,'Park Ji Yoon','Musician/Band','276919399048389'),(303,'ìì´ì (iu)','Musician/Band','215082308577534'),(304,'Han Ji Min','Artist','321527634535497'),(305,'ì´ì°í¬(Lee Yeon Hee)','Artist','124373680975106'),(306,'ì±ì ë¦¬ (Yuri Sung)','Artist','155662564445274'),(307,'Yuna Kim','Athlete','53417067377'),(308,'Anne Hathaway','Actor','1620123334882451'),(309,'SB Game Hacker','Community','305725602919519'),(310,'EA SPORTS FIFA','Games/Toys','191027189287'),(311,'The CW','TV Network','8062362435'),(312,'The Flash','TV Show','583390655086575'),(313,'Thibaut Courtois','Athlete','107777275982192'),(314,'Clark Gregg','Artist','146910928678409'),(315,'Eden Hazard','Athlete','21941054161'),(316,'Premier League','Sports League','220832481274508'),(317,'Fernandinho','Athlete','458890904162284'),(318,'Juan Mata','Athlete','123613977655127'),(319,'David Silva','Athlete','524788267629640'),(320,'Javi MartÃ­nez','Athlete','334555526660493'),(321,'James Rodriguez','Event','186676354713214'),(322,'AndrÃ©s Iniesta','Athlete','79298470625'),(323,'Vincent Kompany','Athlete','147389575324483'),(324,'Edin DÅ¾eko','Athlete','237510419640355'),(325,'Luis Suarez','Athlete','167866666571743'),(326,'Falcao','Athlete','221940704484621'),(327,'Sergio Aguero','Athlete','138770126141092'),(328,'The Bakit List','Community','1511857679098697'),(329,'NRJ Lebanon 99.1fm','Radio Station','155490294473010'),(330,'Gerard PiquÃ©','Athlete','168375189845177'),(331,'DLSU Technology Summit','Computer Company','1572097723020867'),(332,'George Orwell','Writer','124373627724679'),(333,'Dasuri (ë¤ì¬)','Artist','168677223155596'),(334,'Cutest Faces In DLSU','Entertainment Website','104507489621278'),(335,'BBVA World','Recreation/Sports Website','179196972095957'),(336,'L E G A C Y','Community','1486363448295866'),(337,'Lily Collins','Artist','168757053164021'),(338,'FC Barcelona','Sports Team','197394889304'),(339,'Kelvin Flores','Public Figure','486593958149208'),(340,'Fifa15 Ultimate Team','Community','328775713961282'),(341,'Tottenham Hotspur','Sports Team','351687753504'),(342,'Ronaldinho GaÃºcho','Athlete','142523572511686'),(343,'Real Madrid Basket','Sports Team','41549690725'),(344,'Manchester City','Sports Team','208411345454'),(345,'Real Madrid C.F.','Sports Team','19034719952'),(346,'Iker Casillas','College & University','189956894367877'),(347,'Pepe','Athlete','171837192882743'),(348,'Sergio Ramos','Stadium, Arena & Sports Venue','120885117945175'),(349,'Mesut Ãzil','Athlete','552825254796051'),(350,'Gareth Bale','Athlete','511845538832537'),(351,'Cristiano Ronaldo','Athlete','81221197163'),(352,'Neymar Jr.','Athlete','148456285190063'),(353,'Leo Messi','Athlete','176063032413299'),(354,'FIFA Ultimate Team','Games/Toys','76974959758'),(355,'EA SPORTS FIFA Ultimate Team (deutsch)','Games/Toys','469310116441128'),(356,'FIFA 17','Video Game','154218194738175'),(357,'Fifa 15','Community','511024455674458'),(358,'CLARA','Public Figure','449997995096836'),(359,'FIFA 15 Ultimate Team Cheats & Hack','Community','693928460697382'),(360,'CCSine','Community','801464169904852'),(361,'Nike+ Run Club','Recreation & Fitness Venue','65604112975'),(362,'Zeus PH','Product/Service','308824085893876'),(363,'Beings of La Salle','Arts/Humanities Website','656284507792757'),(364,'DLSU ID 113','College & University','125213440974825'),(365,'DeMar DeRozan','Athlete','98697349721'),(366,'Allen Iverson','Athlete','10960345836'),(367,'John Wall','Athlete','120812557944565'),(368,'Stephen Curry','Athlete','306767216014860'),(369,'Serge Ibaka','Athlete','478676110787'),(370,'Kevin Love','Athlete','139711619417377'),(371,'Englicom DLSU','Organization','290637217796773'),(372,'Anthony Davis','Athlete','119045328124234'),(373,'Sole Academy','Local Business','101031616671693'),(374,'Chachi Gonzales','Dancer','138046499598485'),(375,'Donnalyn Bartolome','Public Figure','196934133652011'),(376,'McDonald\'s','Food & Beverage Company','121863347862934'),(377,'Sony Mobile','Product/Service','35313373389'),(378,'Victoria\'s Secret Fashion Show','TV Show','153737227172'),(379,'Victoria\'s Secret','Clothing (Brand)','79775744089'),(380,'Miranda Kerr','Public Figure','169571172540'),(381,'DLSU 10 Days Of Happiness In CCS','Community','703832039666703'),(382,'Clash of Clans','Video Game','447775968580065'),(383,'Fast & Furious','Other','24098842630'),(384,'Marquina Shoemaker','Local Business','1386472671613338'),(385,'Cathy Valencia Advanced Skin Clinic','Local Business','441003529302434'),(386,'King Bach','Artist','606246146140197'),(387,'BS Information Systems','School','1449569935323475'),(388,'Bamboo Music Live','Musician/Band','194708053916682'),(389,'Sen. Miriam Defensor Santiago','Government Official','96427505351'),(390,'Dave Bautista (Batista)','Public Figure','48046200539'),(391,'James Harden (basketball)','Public Figure','105676799465715'),(392,'Pusheen','Other','384381901588038'),(393,'Hacked Games','Community','461941253916293'),(394,'SchedNinja','Product/Service','351809961526226'),(395,'NBA from B/R','Sports League','482556445104958'),(396,'Bleacher Report','Broadcasting & Media Production Company','7331091005'),(397,'Paul Pierce','Athlete','48886437524'),(398,'NBA 2K','Games/Toys','221292025304'),(399,'Maisie Williams','Artist','569505016493141'),(400,'Maisie Williams','Artist','159326984144469'),(401,'De La Salle University, College of Computer Studies','College & University','110273299074'),(402,'Foxy','Public Figure','175481012575933'),(403,'De La Salle University','College & University','127612997282544'),(404,'Campus BDJ','Community','166403923380437'),(405,'Precious Design & Things INC.','Product/Service','175777149177781'),(406,'CASIO G-SHOCK','Locality','970443619679310'),(407,'Ariana Grande','Musician/Band','12384211026'),(408,'True Blood','TV Show','69144888562'),(409,'Star Wars','Other','288958367907207'),(410,'Boardwalk Empire','TV Show','125938460770575'),(411,'Arrow','TV Show','104137579724283'),(412,'Vikings','TV Show','258436810927867'),(413,'Agents of S.H.I.E.L.D.','TV Show','421182894613231'),(414,'20th Century Fox','Clothing (Brand)','10150147379345582'),(415,'Unofficial: Maisie Williams','Public Figure','125670780842030'),(416,'HBO','TV Network','113408673932'),(417,'National Geographic Channel','TV Channel','129231660431299'),(418,'Peter Dinklage','Artist','112398542104781'),(419,'Andi Manzano','Artist','34528296895'),(420,'Sam Pinto','Artist','108214705870117'),(421,'Vans','Footwear Store','129594317087504'),(422,'Sports Central','Retail Company','108532269201285'),(423,'Nike Basketball','Product/Service','5941596308'),(424,'Ralph Lauren','Accessories Store','6797246895'),(425,'Sperry','Retail Company','266696680025970'),(426,'Christina Grimmie','Musician/Band','113888165320453'),(427,'KFC','Chicken Joint','117373194958135'),(428,'Robert Racasa','Organization','337782575177'),(429,'Dragon City','Games/Toys','356417261082215'),(430,'Phim Online Hay','Community','1462324673997409'),(431,'Free Gems - Dragon City','Community','1404627219805091'),(432,'Age of Empires','Video Game','140033766034038'),(433,'HBO Game of Thrones LAT','TV Show','211205182223077'),(434,'The Walking Dead','TV Show','110475388978628'),(435,'Emilia Clarke','Artist','509089922482210'),(436,'Jeremy Lin ææ¸è±ª','Athlete','1456505354584068'),(437,'DLSU Sprint','Non-Profit Organization','455948477834399'),(438,'Shiny Stamp Philippines','Product/Service','167083406666354'),(439,'Dong-A Philippines','Product/Service','175285999188930'),(440,'Faber-Castell Philippines','Product/Service','114556481954117'),(441,'Mywowvideos','Movie','555509041211997'),(442,'Russell Westbrook','Athlete','58643286604'),(443,'Carmelo Anthony','Athlete','308496539234273'),(444,'Game of Thrones','TV Show','74133697733'),(445,'Paul George','Athlete','347333162059330'),(446,'ABS-CBN Film Productions Inc. (Star Cinema)','Producer','102644633753'),(447,'Karworks Car Accessories','Automotive','228578530575830'),(448,'Kevin Durant Fanpage','Athlete','344850248924151'),(449,'LEAP 2K14','Community','1410881352471562'),(450,'The Warehouse','Shopping/Retail','1428813557354042'),(451,'De La Salle University-Manila Secret Files','Media/News Company','596767770358949'),(452,'Makati Hope Christian','School','713074872043710'),(453,'Tracy McGrady','Athlete','39494163418'),(454,'Imagine Dragons','Musician/Band','39643821406'),(455,'MAX','Musician/Band','194193987670'),(456,'Kurt Schneider','Musician/Band','132029000180393'),(457,'Cupfuls of Sugar','Food & Beverage Company','223419001177010'),(458,'Galaxy Life : Pocket Adventures','App Page','140985046035562'),(459,'Dreams Factory','Community','638245229553946'),(460,'The LaSallian','Media/News Company','149678604759'),(461,'NAILS Magazine','Magazine','54235414604'),(462,'Pogi Problems','Community','140366259450845'),(463,'Basketball Forever','Media/News Company','215317338498946'),(464,'Collision: Transcend Coexistence','Product/Service','601071889956146'),(465,'Chris Paul','Athlete','135563086577585'),(466,'Naruto ShippÅ«den','Community','534501596639114'),(467,'Makati Hope Christian Alumni Association','Community','491266910955385'),(468,'6th Business Management Students\'  Convention: Eco-Innovation','Community','452916588156100'),(469,'The Outstanding Coed - The Outstanding Young Man','Community','744884575528301'),(470,'PSG (Perfect Sa Ganda)','Media/News Company','202037313170141'),(471,'Dwight Howard','Athlete','74504778787'),(472,'Chrissy Costanza','Musician/Band','401231929969364'),(473,'NBA Memes','Media/News Company','367810133247517'),(474,'From Head To Toe','Public Figure','403125660649'),(475,'I-sitemobile','Professional Service','480679378669251'),(476,'Tiny Bakeshop','Local Business','249342585183379'),(477,'Filbert and Shanda Uy','Public Figure','142480002620135'),(478,'Anton Jeremiah Photo Video - Wedding Photographer Photo and Video Coverage','Artist','475673369147700'),(479,'1M Like Anti-pork barrel Philippines','Community','157310161130443'),(480,'Spotted Manila Clothing','Clothing (Brand)','173799066137064'),(481,'King Leonidas','Public Figure','688520024509927'),(482,'Dlsu Usg','Organization','283415475102221'),(483,'Suits (TV Show)','TV Show','178209515573032'),(484,'Augustus Caesar','Public Figure','520925327996380'),(485,'Alexander The Great','Monarch','499416286824171'),(486,'Asia Theological Association (ATA)','Education','300305729999393'),(487,'Naruto','TV Show','339976739458953'),(488,'Kelly Hu','Public Figure','109660719059479'),(489,'La Salle Computer Society','Non-Profit Organization','183915671213'),(490,'Emma Watson','Artist','140216402663925'),(491,'Justin Timberlake','Musician/Band','5718732097'),(492,'Chandler Parsons','Athlete','177867528941725'),(493,'Discovery','TV Network','6002238585'),(494,'\'\" Naruto World \"\'','Fictional Character','278917052131567'),(495,'\"Naruto Nation\"','Fictional Character','311582908909794'),(496,'OKC Thunder','Sports Team','106220066083357'),(497,'OKC Thunder','Sports Team','377719457412'),(498,'Oklahoma City Thunder','Sports Team','159957123994'),(499,'OKC','Product/Service','188970831150689'),(500,'Nike','Product/Service','15087023444'),(501,'Boys Like Girls','Musician/Band','5136344181'),(502,'Owl City','Musician/Band','65217182024'),(503,'Google Chrome','Software','321662419491'),(504,'Dwyane Wade','Athlete','79979913992'),(505,'Ferrero Rocher','Food & Beverage Company','202986543445543'),(506,'Derrick Rose','Athlete','51926382304'),(507,'Ashley Tisdale','Artist','6845141683'),(508,'KitKat','Food & Beverage Company','156333434394547'),(509,'Toni Gonzaga','Artist','60698162413'),(510,'De La Salle University','College & University','112961752051469'),(511,'æé¾ Jackie Chan','Artist','30382852317'),(512,'Rihanna','Artist','10092511675'),(513,'CONVERSE','Clothing (Brand)','23402039579'),(514,'Eminem','Musician/Band','45309870078'),(515,'Linkin Park','Musician/Band','8210451787'),(516,'Mineski-Dota','Sports Team','403923776832'),(517,'Miami Heat','Sports Team','284300559123'),(518,'Boston Celtics','Sports Team','8725012666'),(519,'Mama Mary','Public Figure','90520432292'),(520,'LeBron James','Athlete','64637653943'),(521,'Glee','TV Show','55482772043'),(522,'MYX Philippines','TV Channel','145388032112'),(523,'Selena Gomez','Artist','7961985974'),(524,'Alodia Gosiengfiao','Artist','152138396746'),(525,'I Love Jesus, by iLoveJesusonline.com','News/Media Website','92047888071'),(526,'Justin Bieber','Musician/Band','67253243887'),(527,'The Fast and the Furious: Tokyo Drift','Movie','103119883061561'),(528,'Lakers Nation','News/Media Website','127573752222'),(529,'Columbia Pictures Philippines','Movie/Television Studio','196647134027'),(530,'Maria Sharapova','Athlete','65920772679'),(531,'Chrissy Costanza','Public Figure','117159768458728'),(532,'LA Lakers','Sports Team','144917055340'),(533,'Houston Rockets','Sports Team','17729777319'),(534,'The Simpsons','TV Show','29534858696'),(535,'Sam Tsui','Musician/Band','34356105818'),(536,'Alex Goot','Musician/Band','15054318061'),(537,'League of Legends - Philippines','Games/Toys','139801452706157'),(538,'DLSU - Manila Microsoft Student Partners','Computer Company','306531972771445'),(539,'Mojo Forest','Company','177838358922402'),(540,'2Fuse Game','Games/Toys','513029182081414'),(541,'Green Day','Musician/Band','21275344520'),(542,'Katy Perry','Musician/Band','7126051465'),(543,'Usher','Musician/Band','6564142497'),(544,'Walk Off The Earth','Musician/Band','75075990356'),(545,'Animal Farm','Book','111831648833294'),(546,'Up','Movie','118194755634'),(547,'Smart Communications, Inc.','Telecommunication Company','137599377310'),(548,'Starbucks Philippines','Food & Beverage Company','225073057924'),(549,'OneRepublic','Musician/Band','24983228911'),(550,'Tunngle','Games/Toys','142127376906'),(551,'Joseph Gordon-Levitt','Actor','192551487435190'),(552,'Avril Lavigne','Musician/Band','5413509299'),(553,'Yokohama Makati','Automotive','272453936213951'),(554,'Fringe','TV Show','15576613667'),(555,'Avatar','Movie','82771544063'),(556,'Apple-Ã¯â¬â¬ Dota','Non-Profit Organization','149394461775298'),(557,'CNN','Media/News Company','5550296508'),(558,'Yahoo','Media/News Company','7040724713'),(559,'National Geographic','Media/News Company','23497828950'),(560,'Adventure Time','TV Show','321031023382'),(561,'Spider-Man','Movie','101198429956076'),(562,'LittleBigPlanet','Games/Toys','12427296830'),(563,'Jessie J','Music Chart','145300805513355'),(564,'Skittles','Food & Beverage Company','7914733474'),(565,'Earth Hour','Non-Profit Organization','6867084435'),(566,'Starbucks','Food & Beverage Company','22092443056'),(567,'HelenaMaria','Musician/Band','7166516947'),(568,'League of Legends','Video Game','82061850555'),(569,'Heroes of Newerth','Games/Toys','63037549101'),(570,'Chocolate chip cookies','Interest','111001888924149'),(571,'Chess','Games/Toys','103154896390858'),(572,'Adam Sandler','Artist','9098498615'),(573,'Power Mac Center','Retail Company','42315864162'),(574,'Megan Fox','College & University','26748225422'),(575,'Avengers','Fictional Character','126757470715601'),(576,'Captain America','Fictional Character','122352024462380'),(577,'Iron Man','Fictional Character','7057882289'),(578,'Toy Story','Movie','10498014129'),(579,'Suits','TV Show','121349517944687'),(580,'CityVille','App Page','168232079864416'),(581,'Chuck','TV Show','23317869104'),(582,'Gladiator','Lawyer','229197930430239'),(583,'Inception','Movie','91290503700'),(584,'æè¿æ° Jet Li','Artist','16382418987'),(585,'Harry Potter series','Book Series','111155405573220'),(586,'Brisinger','Book','115341918479555'),(587,'Transformers','Science & Engineering','180774635291325'),(588,'Eragon','Book','106019566095225'),(589,'Eldest','Book','103767389662187'),(590,'FM Static','Musician/Band','37828378880'),(591,'Age of Mythology','Video Game','104054506298545'),(592,'Bruno Mars','Musician/Band','242567287243'),(593,'Gorillaz','Musician/Band','6002137995'),(594,'Simple Plan','Musician/Band','6085906515'),(595,'Political Princesses','Community','393031984095888'),(596,'Maroon 5','Musician/Band','5330548481'),(597,'ChloÃ« Moretz','Public Figure','106034372761885'),(598,'Peyton List','Artist','164474146971873'),(599,'SM Mall of Asia Official','Shopping/Retail','126585560768227'),(600,'Casting Crowns','Musician/Band','48842713792'),(601,'I still remember the day when I first saw you  :)','Performance & Sports Venue','354237310027'),(602,'hillsong united','Musician/Band','8800570812'),(603,'Andrew Garfield','Artist','139367749408395'),(604,'Christian Bale','Local Service','112362215447738'),(605,'Anne Hathaway (actress)','Public Figure','108218652536267'),(606,'Emma Stone','Artist','106183659413100'),(607,'Enfant','Baby Goods/Kids Goods','34709794182'),(608,'The Smurfs & Co','App Page','260669897330818'),(609,'Naruto Stories','Personal Website','146589108778133'),(610,'Atlantica','Games/Toys','139094752222'),(611,'Barack Obama','Politician','6815841748'),(612,'9GAG','App Page','21785951839'),(613,'Hunger Games','Book','114531238562971'),(614,'The Hunger Games trilogy','Book Series','109294189097649'),(615,'The Hunger Games','Movie','159746560708670'),(616,'Hunger Games Page','Book Series','140504009302351'),(617,'Patrick Star','Fictional Character','50403195950'),(618,'Jason Mraz','Musician/Band','6135205697'),(619,'7-Eleven Philippines','Retail Company','62739603227'),(620,'Taylor Swift','Musician/Band','19614945368'),(621,'YouTube','Product/Service','7270241753'),(622,'Will Smith','Artist','92304305160'),(623,'Facebook','Product/Service','20531316728'),(624,'Princess Cruises','Travel Company','19788524059'),(625,'Naruto','Public Figure','150903461597517'),(626,'Naruto Shippuden: Ultimate Ninja Storm Generations','Games/Toys','167876583317275'),(627,'Battlefield 3','Video Game','137409672949139'),(628,'Hotel City','App Page','142368335881829'),(629,'My Empire','App Page','265722780164153'),(630,'GodsWar: Best 3D MMO RPG Browser Game','App Page','246619235413038'),(631,'Ninja Saga','App Page','315390295169855'),(632,'Car Town','App Page','317965161575461'),(633,'American Dad','TV Show','18957981609'),(634,'Family Guy','TV Show','24609282673'),(635,'Happy Aquarium','App Page','181543998551269'),(636,'Happy Pets','App Page','344807628876282'),(637,'Stamp Me','App Page','197611670298913'),(638,'Backyard Monsters','App Page','304561816235995'),(639,'Social Empires','App Page','162772593825182'),(640,'Desktop Defender','App Page','310305532345504'),(641,'Monopoly Millionaires','Games/Toys','297759586941003'),(642,'Games','Community','263529300371266'),(643,'Tower blocks','App Page','349025875113154'),(644,'Naruto Manga Anime','Book','105899216113313'),(645,'Naruto the movie','Movie','127011977329026'),(646,'Putek na assignments yan, Pati araw ng pahinga ko dinadamay','Local Business','114680071920584'),(647,'Carland Marketing','Automotive','107125972715674'),(648,'Stanton DJ','Product/Service','111725569300'),(649,'Jesus Daily','Broadcasting & Media Production Company','70630972354'),(650,'Kelly Hu','Artist','223633344361719'),(651,'MHCS\'s Mark Anthony G. Gano','Public Figure','113779185344590'),(652,'Daryl Parker','Author','181425931888123'),(653,'Jay Lim - Top Shot Season 2','Athlete','175893672422632'),(654,'Top Shot Season 2 - Chris Reed','Athlete','185669884785333'),(655,'Wolfteam','Games/Toys','230404327004550'),(656,'Razer','Electronics','13848807575'),(657,'Empires & Allies','App Page','201463033201766'),(658,'Marcus\'s Club','Games/Toys','116729001706946'),(659,'Zynga RewardVille','Games/Toys','184192701612211'),(660,'Naruto Shippuden','TV Show','102269348134'),(661,'Grand Chase Fans','Public Figure','142400929126033'),(662,'Crossfire Philippines','Games/Toys','107230795049'),(663,'Kevin Durant','Athlete','81781281654'),(664,'MangaStream','Arts/Humanities Website','243895256275'),(665,'CrowdStar','Company','182924960506'),(666,'Grand Chase Philippines','Games/Toys','209198130337'),(667,'Dota Allstars','Brand','106231936080508'),(668,'We Love Kim Chiu','Artist','129866727062708'),(669,'Cristine Reyes','Public Figure','122010853049'),(670,'Texas HoldEm Poker','Games/Toys','56531631380'),(671,'Kim Chiu (Kimmy Lovers)','Community','110963188968646'),(672,'Coca-Cola','Workplace & Office','40796308305'),(673,'Naruto manga','Book Series','114465085232909'),(674,'Alliance of Valiant Arms','Video Game','104098552959490'),(675,'Crossfire (2007 novel)','Book','112153795468374'),(676,'Kim Chiu','Public Figure','112685095411121'),(677,'Kim Chiu','Artist','74361779753'),(678,'CrossFire','Video Game','97460504492'),(679,'Kobe Bryant','Athlete','69025400418'),(680,'the Naruto: ShippÃ»den video The Mystery of Tobi','TV Show','141005009254885'),(681,'Naruto','Religion','103130939727157'),(682,'Cherry Credits','Product/Service','22970748502'),(683,'Makati Hope Christian School','Education Website','112892418727659'),(684,'Makati Hope Christian School','School','111675538850118'),(685,'Zac Poor','Musician/Band','173433273855'),(686,'Wolfteam','Organization','110336448994129'),(687,'Nightclub City','Community','117171671635527'),(688,'My Empire','Personal Website','122427031110075'),(689,'Manny Villar','Public Figure','52563164846');
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
  `verb` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_type`
--

LOCK TABLES `post_type` WRITE;
/*!40000 ALTER TABLE `post_type` DISABLE KEYS */;
INSERT INTO `post_type` VALUES (1,'New item','got'),(2,'Celebrating','celebrate'),(3,'Watching','watch'),(4,'Playing video games','play'),(5,'Eating','eat'),(6,'Making','make'),(7,'Drinking','drink'),(8,'Music','listen'),(9,'Reading','read'),(10,'Traveling','go'),(11,'Remembering','remember'),(12,'Event','attend'),(13,'Opinion','think'),(14,'Humor','laughed');
/*!40000 ALTER TABLE `post_type` ENABLE KEYS */;
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
  `place` varchar(500) DEFAULT NULL,
  `city` varchar(500) DEFAULT NULL,
  `country` varchar(500) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4053 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (3879,'Hi guys palike naman to for a friend! :)','1559902637357375','',NULL,NULL,NULL,'2017','02','16'),(3880,'Hi is eating and drinking','1552705471410425','',NULL,NULL,NULL,'2017','02','09'),(3881,'#friendsday','1545395138808125','',NULL,NULL,NULL,'2017','02','02'),(3882,'What\'s up!!\n\nI am Marcus Ko, Vice President for Human Resource Development of La Salle Computer Society!\n\nWorking hand in hand with the organization, I am ready and willing to give my best for the development and happiness of every LSCS member. To grow together along with my beloved organization in a pursuit of purpose and excellence through process, and to continually help the society by pursuing innovation in technology under the vision of the organization that helped me grow into the person I envisioned to become.\n\nYour VP-HRD at your service!  ;)\n\nLiving Yesterday\'s Vision. Setting Today\'s Trends. Inspiring Tomorrow\'s Leaders.\n\nPhotos taken by Albert Lorenz Dizon.\nPost processed by Alec Tan and Joseph Ryan Nobleza','1534387793242193','',NULL,NULL,NULL,'2017','01','26'),(3883,'Bryan TalabanGina Co pet show pt2','1532807990066840','',NULL,NULL,NULL,'2017','01','25'),(3884,'ð¦','1530835356930770','',NULL,NULL,NULL,'2017','01','24'),(3885,'ðð','1529848457029460','',NULL,NULL,NULL,'2017','01','22'),(3886,':O','1524621440885495','',NULL,NULL,NULL,'2017','01','17'),(3887,'Groupmates ð Patrick R. KahnGina Co','1522624424418530','',NULL,NULL,NULL,'2017','01','15'),(3888,'trut','1497112916969681','',NULL,NULL,NULL,'2016','12','19'),(3889,'Shermaine SyJanica Mae LamJan Kristoffer ChengLorenzo Hizon LibreKristin Te watchh','1484392014908438','',NULL,NULL,NULL,'2016','12','09'),(3890,'TBA success #stripes','1484238558257117','','Manila','Manila','Philippines','2016','12','09'),(3891,'almost  through! #yearinreview2016','1475582262456080','',NULL,NULL,NULL,'2016','12','03'),(3892,'https://www.youtube.com/watch?v=YaDvRdLMkHs&feature=youtu.be\n\nJohn San AgustinMarielle Lapidario','1475500512464255','',NULL,NULL,NULL,'2016','12','03'),(3893,'Tara HAHAHA\n\nLet\'s play a game. Like this post and I\'ll pm you a name. You\'ll go back here and you\'ll comment how you feel about that person. The name will stay between us.','1434281193252854','',NULL,NULL,NULL,'2016','11','10'),(3894,'panda panda panda?!','1429449830402657','',NULL,NULL,NULL,'2016','10','25'),(3895,'Good Read Jan Kristoffer ChengJake LacquiasRaisa Gennel LeeJanica Mae Lam HAHAHAHA','1422256017788705','',NULL,NULL,NULL,'2016','10','18'),(3896,'[TEACHER\'S APPRECIATION WEEK AWARDS]\n\"It is time to put our profs in the spotlight! Join us in voting for the professors you think best fit each category. The voting starts today 5:30 and will end on Friday, 12pm. What are you waiting for, CCS? Let us show our profs how much we appreciate them!\n\nNominate your beloved profs at:\n\nhttps://docs.google.com/a/dlsu.edu.ph/forms/d/e/1FAIpQLSeKDKEGfUgvDoKIZPGYIY22sgnIrOqyQ-R3D-1WrG2kzJMi5Q/viewform\n\n#AProfToRemember\n#AlyasProfNgDLSU\n#IkawAngProfNgBuhayKo\n#BaDumTeach\n#StarWarsTheProfAwakens\n#DLSUToughProf','1407530779261229','',NULL,NULL,NULL,'2016','10','04'),(3897,'This Teacherâs Appreciation Week, weâre going back in time for some serious 80âs vibes. Itâs time to make our professors shine like a neon sign this week. :)\n\nLetâs show our beloved CCS professors how much they mean to us. Visit the Wall of Appreciation booth at Gokongwei Lobby and post a note for our professors!','1406176792729961','',NULL,NULL,NULL,'2016','10','03'),(3898,'HAHAHAHA Jan Kristoffer Cheng Angeline J. Tan','1405660769448230','',NULL,NULL,NULL,'2016','10','02'),(3899,'WE WANT YOU.\nLa Salle Computer Society wants you to become the very best! If you want to become an innovator of technology, a person full of passion for service, and an explorer of a whole new world of possibilities, catch us from September 26-30, 8AM-5PM, in front of ISR!','1395025847178389','',NULL,NULL,NULL,'2016','09','21'),(3900,'I am Marcus Ko ID113 BS-INSYS, and I choose La Salle Computer Society! I am ready to become the very best and catch all the 4s! WE WANT YOU to be a part of this, too! Catch us from September 26-30, 8AM-5PM, in front of ISR! See you! <3','1395024997178474','',NULL,NULL,NULL,'2016','09','22'),(3901,'ðalumni homecoming(pokemon go session) Nikki CortezJm Gonzales','1351536561527318','Jm Gonzales and Nikki Cortez',NULL,NULL,NULL,'2016','08','06'),(3902,'Jan Kristoffer Cheng HAHA','1351487174865590','',NULL,NULL,NULL,'2016','08','07'),(3903,'HRD incomplete ð Edward Rainier C. CuruganJanica Mae LamNikki CortezJm Gonzales','1351480931532881','Janica Mae Lam, Jm Gonzales, Nikki Cortez and Edward Rainier C. Curugan',NULL,NULL,NULL,'2016','08','06'),(3904,'floppers','1344829508864690','',NULL,NULL,NULL,'2016','07','28'),(3905,'FO na nang dahil sa telegram ð','1337639236250384','',NULL,NULL,NULL,'2016','07','18'),(3906,'Retreat at Capuchin ðð','1325935104087464','Jm Gonzales, John San Agustin, Bryan Talaban, Eugene Harris See, Raphael Josef Chua, Kelvin Flores, Bj Delfin, Michael Gerald Gochioco, Sonny Lao, Myron Nicolas and Mike Daniel NuÃ±ez',NULL,NULL,NULL,'2016','07','03'),(3907,'Third General Assembly!  Jake Lacquias thank you for helping out in hosting! some photos courtesy of Janica Mae Lam.','1323973484283626','Jan Kristoffer Cheng, Janica Mae Lam, Jm Gonzales, Nikki Cortez, Raisa Gennel Lee, Angeline J. Tan, Dlsu Lscs, Joswin Paolo Go-Soco and Joshua Manto',NULL,NULL,NULL,'2016','06','29'),(3908,'usap usap pa tsk.','1289088357772139','',NULL,NULL,NULL,'2016','05','09'),(3909,'ð Jm GonzalesJohn San AgustinBryan TalabanRaphael Josef Chua','1239102702770705','',NULL,NULL,NULL,'2016','03','07'),(3910,'Last day of tredtri ð','1177918292222480','Jm Gonzales, Bryan Talaban, Raphael Josef Chua, Michael Gerald Gochioco, Myron Nicolas and Ej Calsado',NULL,NULL,NULL,'2015','11','25'),(3911,'Sonny Lao ito yun eh ahhah','1063203090360668','',NULL,NULL,NULL,'2015','04','26'),(3912,'Elijah San Pedro','1050678401613137','',NULL,NULL,NULL,'2015','04','07'),(3913,'IRRI','1044201985594112','Jan Kristoffer Cheng, Shermaine Sy, Kristen Rachel Ung, Tiger Francisco and Elijah San Pedro',NULL,NULL,NULL,'2015','03','27'),(3914,'Lol','1036780356336275','',NULL,NULL,NULL,'2015','03','14'),(3915,'John San Agustin Pat Honrado  bj Bj Delfin','1015771428437168','Raphael Josef Chua',NULL,NULL,NULL,'2015','02','10'),(3916,'Pat Honrado John San Agustin Bj Delfin','1015770581770586','Raphael Josef Chua',NULL,NULL,NULL,'2015','02','10'),(3917,'Si kuya =)) JedClinton L. AndalRaphael Josef ChuaJm GonzalesJohn San Agustin','1007047805976197','',NULL,NULL,NULL,'2015','01','26'),(3918,'aw.','975924485755196','',NULL,NULL,NULL,'2014','12','08'),(3919,'HAHA Jm Gonzales','972058746141770','',NULL,NULL,NULL,'2014','12','01'),(3920,'laptrip Jm Gonzales','971209239560054','',NULL,NULL,NULL,'2014','11','30'),(3921,'niceee 32 pts. Sonny Lao','970626909618287','',NULL,NULL,NULL,'2014','11','30'),(3922,'Close enough. John San AgustinJm GonzalesDiana Manglona','964539143560397','',NULL,NULL,NULL,'2014','11','18'),(3923,'Late night X hero siege though... Bryan TalabanBj DelfinRaphael Josef ChuaJohn San AgustinJm Gonzales','962900647057580','',NULL,NULL,NULL,'2014','11','15'),(3924,'One more down...','956867224327589','',NULL,NULL,NULL,'2014','11','05'),(3925,'hmmm','943212955693016','',NULL,NULL,NULL,'2014','10','13'),(3926,'aw. Elijah San Pedro magsimula ka na manuod =))','938010572879921','',NULL,NULL,NULL,'2014','10','06'),(3927,'Missed out on all the fun?\nHave no fear, LSCS is here!\nThe Council of Student Organizations would be extending Recruitment this coming\nSeptember 29, 2014 @ DLS-STC\nSeptember 30, 2014 Dlsu Manila\n#MoreFunInLSCS','933876713293307','',NULL,NULL,NULL,'2014','09','30'),(3928,'http://bleacherreport.com/articles/2207387-nba-2k15-new-mycareer-trailer-featuring-chrissmoove-new-voice-story-and-more?utm_source=facebook.com&utm_medium=referral&utm_campaign=programming-national\n\nJohn San AgustinJm Gonzales imba?','930514310296214','',NULL,NULL,NULL,'2014','09','23'),(3929,'CS is life =))) \nJm GonzalesJohn San AgustinRaphael Josef Ang ChuaKelvin FloresBj Delfin ','930504186963893','',NULL,NULL,NULL,'2014','09','23'),(3930,'Game face Jm Gonzales Jed Nuke John San Agustin Clinton Austin Andal','927593653921613','',NULL,NULL,NULL,'2014','09','18'),(3931,'Kelvin Flores ANG GALING MO MAG DOTA 2 HAHAHA  B@#*@U%)@U)%U!  ahhaha 10 assist wala man lang carry sainyo @#)(@$()&@$)(!!!@! HAHA','922969807717331','',NULL,NULL,NULL,'2014','09','09'),(3932,'John San AgustinMichael Gerald Gochioco KD is irreplaceable :P','905167676164211','',NULL,NULL,NULL,'2014','08','11'),(3933,'John San AgustinJed NukeJm GonzalesClinton Austin AndalMichael Gerald Gochioco\nKD','904501722897473','',NULL,NULL,NULL,'2014','08','08'),(3934,'LeBron left..... Lin goes to LA  :)  John San Agustin Jm Gonzales Jed Nuke Clinton Austin Andal Michael Gerald Gochioco','886739521340360','',NULL,NULL,NULL,'2014','07','12'),(3935,'Jm Gonzales Jed Nuke Lebron and Melo opted out na! haha thanks John San Agustin','874950935852552','',NULL,NULL,NULL,'2014','06','24'),(3936,'Marielle Lapidario Shermaine Sy import nalang lahat :)','867703406577305','',NULL,NULL,NULL,'2014','06','13'),(3937,'SPURS win 3-1! Michael Gerald Gochioco John San Agustin Jm Gonzales','867513489929630','',NULL,NULL,NULL,'2014','06','14'),(3938,'Bro hindi..ganda talaga ng Hilux... Jm Gonzales Raphael Josef Ang Chua','865219173492395','',NULL,NULL,NULL,'2014','06','09'),(3939,'StickSkills.com writes: NBA 2K15 is set to be released on Tuesday, October 7th, 2014 on the PlayStation 3, PlayStation 4, XBOX 360, XBOX One, and PC. The release date has been confirmed via both Amazon.com and GameStop. Pre orders for NBA 2K15 are now available at both of those retailers.  John San Agustin Clinton Austin Andal Raphael Josef Ang Chua Jed Nuke Jm Gonzales yun oh lapit na :)','852862211394758','',NULL,NULL,NULL,'2014','05','22'),(3940,'http://www.youtube.com/watch?v=UpzS0W1ofB4\n Clinton Austin Andal haha','852190128128633','',NULL,NULL,NULL,'2014','05','21'),(3941,'Okc! Di pa tapos ang laban hahaha','841533049194341','Jm Gonzales, John San Agustin, Clinton Andal, Jed Nuke, Michael Ang and Charlie Lim',NULL,NULL,NULL,'2014','05','04'),(3942,'Jerich King here you go medyo chill hahaha tinanggal ko supposed to be ftteams aga eh 7:30 am','823117641035882','',NULL,NULL,NULL,'2014','04','02'),(3943,'MVP','820853041262342','',NULL,NULL,NULL,'2014','03','29'),(3944,'http://www.youtube.com/watch?v=DnPWrkeSx4U\n\nElijah San Pedro sheyytttttttt','764886753525638','',NULL,NULL,NULL,'2013','12','22'),(3945,'http://www.youtube.com/watch?v=vZ6qjshOmhE\nKyrie vs Team USA weew \nJed Nuke Clinton Austin Andal','758309600850020','',NULL,NULL,NULL,'2013','12','10'),(3946,'2k14 for android \nBenson Ngo \n Eugene Harris See','736496836364630','',NULL,NULL,NULL,'2013','11','03'),(3947,'http://www.youtube.com/watch?v=DBXZWB_dNsw \nImba:)) Shermaine Sy Jan Kristoffer ChengElijah San Pedro Kristen Rachel Ung','727661260581521','',NULL,NULL,NULL,'2013','10','19'),(3948,'Tiwala lang kaya natin yan, Kunin natin Championship :) \nRobert Sanguyu Jonathan Aganekwu Bryan Talaban Jayson Revidad','725948744086106','',NULL,NULL,NULL,'2013','10','19'),(3949,'Woahh shhh...... Jan Kristoffer Cheng Kristoffer Antonio Christopher Lao Bryan Ko ','721340767880237','',NULL,NULL,NULL,'2013','10','09'),(3950,'Ernest Lao Bea Lim Elijah San Pedro Kristen Rachel Ung Michael Jazziell Antonio Shermaine Sy thanks! Madeliene Gwynne Lim','719649721382675','',NULL,NULL,NULL,'2013','10','07'),(3951,'http://www.youtube.com/watch?v=y0nLnMQmAdE\n\nElijah San Pedro Clinton Austin Andal','717337414947239','',NULL,NULL,NULL,'2013','10','01'),(3952,'Kunti langgg :) Clinton Austin Andal Kelvin Flores Bj Delfin Raphael Josef Ang Chua thanks Ariana Martinez','688313517849629','',NULL,NULL,NULL,'2013','08','08'),(3953,'Bj Delfin Kelvin Flores Raphael Josef Ang Chua Clinton Austin Andal','688313757849605','',NULL,NULL,NULL,'2016','08','08'),(3954,'Awesome App :)','687361844611463','',NULL,NULL,NULL,'2013','08','06'),(3955,'Mutalnglawin Part 1 Jed Nuke Jm Gonzales Clinton Austin Andal Kelvin Flores Bj Delfin','682560385091609','',NULL,NULL,NULL,'2013','07','29'),(3956,'Raphael Josef Ang Chua Clinton Austin Andal Bj Delfin Kelvin Flores Benson Ngo ano oras tayo sa friday? hahaha :))','679694488711532','',NULL,NULL,NULL,'2013','07','23'),(3957,'Jade.... James Sia HAHAHA :> :))','660235873990727','',NULL,NULL,NULL,'2013','06','18'),(3958,'Ian Kevin Dela Cruz and Alyssa Tan\nhahaha :))','659165504097764','',NULL,NULL,NULL,'2013','06','13'),(3959,'Kuw Sia, Dino Tan , John Stephen De Mesa , Ian Kevin Dela Cruz , Jan Kristoffer Cheng G na!! >.>','621896127824702','',NULL,NULL,NULL,'2013','03','28'),(3960,'DotA :)','607061319308183','',NULL,NULL,NULL,'2013','02','27'),(3961,'Micro-filter adapter.... tsk.@_@ Jan Kristoffer Cheng Kuw Sia Wap Salonga Ian Kevin Dela Cruz wala padin stock.... taee','593142950700020','',NULL,NULL,NULL,'2013','02','01'),(3962,'Dota na... Dino Tan GG :)','564436723570643','',NULL,NULL,NULL,'2012','12','19'),(3963,'AO event is up Mark Ang Kuw Sia Kelvin Ong Michael Ang Bryan Ko Elijah San Pedro Ernest Christopher Lao grind grind grind :)','561948087152840','',NULL,NULL,NULL,'2012','12','17'),(3964,'Sayang TBS points ko this week may natira pang 40  :O :(( Mark Ang Kuw Sia Michael Ang masyado busy... :(','561538933860422','',NULL,NULL,NULL,'2012','12','13'),(3965,'Araw araw na nagloloko pc ko..@_@ una net tas ngayon monitor iba iba kulay lumalabas... gusto na daw niya mapalitan... Kuw Sia Mark Ang Bryan Ko Michael Ang :))','550149674999348','',NULL,NULL,NULL,'2012','11','19'),(3966,'Mark Ang mag reklamo ka na lang sa Nexon compensation :D','547349281946054','',NULL,NULL,NULL,'2012','11','14'),(3967,'Goodbye AO...... Mark Ang Michael Ang Kuw Sia Bryan Ko :(  \nGoodbye xXDefianceXx   :(( huhuhuhu','546921295322186','',NULL,NULL,NULL,'2012','11','15'),(3968,'AO is still under maintainance.... :/  Kuw Sia,Mark Ang,Michael Ang and Bryan Ko','539267382754244','',NULL,NULL,NULL,'2012','10','27'),(3969,'please help me get 4 water dishes\r\n','337502782952820','',NULL,NULL,NULL,'2012','03','14'),(3970,'Awts. @_@','381856031828714','',NULL,NULL,NULL,'2012','02','12'),(3971,'Elijah San Pedro and Kuw Sia kktkot yung pusa knina sa School ahaa prng asoo! XD','253051934709125','',NULL,NULL,NULL,'2011','07','12'),(3972,'åé²é¨çå¤äºº','248458485168470','',NULL,NULL,NULL,'2011','07','03'),(3973,'I\'m mobile too','248453628502289','',NULL,NULL,NULL,'2011','07','03'),(3974,'Dinooo....tsk','248445211836464','',NULL,NULL,NULL,'2011','07','03'),(3975,'http://www.youtube.com/watch?v=lYoAwfh4QOU','247028845311434','',NULL,NULL,NULL,'2011','06','30'),(3976,'I\'m mobile too','247008158646836','',NULL,NULL,NULL,'2011','06','30'),(3977,'BRB>>>','247008015313517','',NULL,NULL,NULL,'2011','06','30'),(3978,'Wag kayo maniwala scam sila may psok bkas!!','244829572198028','',NULL,NULL,NULL,'2011','06','24'),(3979,'WAg kyo mag sya! may psok scam sila!','244829515531367','',NULL,NULL,NULL,'2011','06','23'),(3980,'Naruto 544 released!!','244807885533530','',NULL,NULL,NULL,'2011','06','23'),(3981,'Naruto 544 released!','244807828866869','',NULL,NULL,NULL,'2011','06','23'),(3982,'Yeah last 2 days na lng!!!','244526535561665','',NULL,NULL,NULL,'2011','06','22'),(3983,'Just recieved 1 million Coins and thousands of Empire Points for free from Empire and Allies!!','161469980586203','',NULL,NULL,NULL,'2011','06','16'),(3984,'Just recieved 1 million Coins and thousands of Empire Points for free from Empire and Allies!!','179956265392189','',NULL,NULL,NULL,'2011','06','16'),(3985,'need stamina please\r\n','227395983953207','',NULL,NULL,NULL,'2011','06','03'),(3986,'please kill jimmy the gooch please and thank you!\r\n','192263280819371','',NULL,NULL,NULL,'2011','05','15'),(3987,'every one please help me get more stamina please and thank you!\r\n','210394132316763','',NULL,NULL,NULL,'2011','05','15'),(3988,'please anyone there please buy a ski mask and send thank you!\r\n','193196937393136','',NULL,NULL,NULL,'2011','05','15'),(3989,'pls help rob akim\'s place\r\n','115622311855844','',NULL,NULL,NULL,'2011','05','06'),(3990,'pls join me to kill jimmy the gooch\r\npls','118212558261578','',NULL,NULL,NULL,'2011','05','06'),(3991,'help me pls to kill jimmy the gooch pls \r\n','158628187534683','',NULL,NULL,NULL,'2011','05','06'),(3992,'lets pls share energy','209736969047649','',NULL,NULL,NULL,'2011','05','06'),(3993,'help me get energy\r\n','197007317003120','',NULL,NULL,NULL,'2011','04','19'),(3994,'i need energy! help!\r\n','210900695606753','',NULL,NULL,NULL,'2011','04','15'),(3995,'Crossfire Hackers.. dmi nila','208240219190297','',NULL,NULL,NULL,'2011','03','12'),(3996,'??','207426175938368','',NULL,NULL,NULL,'2011','03','09'),(3997,'Universal MH,Drop hack vs. GAR3Na MasT3ER','100151553397633','',NULL,NULL,NULL,'2011','02','09'),(3998,'MH...wew..','197142213629417','',NULL,NULL,NULL,'2011','02','09'),(3999,'http://www.youtube.com/watch?v=3H8bnKdf654&feature=fvhr','157611290954688','',NULL,NULL,NULL,'2011','01','17'),(4000,'http://www.youtube.com/watch?v=brJw7DEs434','192902254059843','',NULL,NULL,NULL,'2011','01','17'),(4001,'http://www.youtube.com/watch?v=PxymwN7nYQQ&NR=1&feature=fvwp','180445038642520','',NULL,NULL,NULL,'2011','01','08'),(4002,'http://www.youtube.com/watch?v=CunBF9S5Y-4&NR=1&feature=fvwp','168804959829666','',NULL,NULL,NULL,'2011','01','04'),(4003,'http://ak.imgag.com/imgag/product/preview/flash/bws8Shell_fps24.swf?ihost=http://ak.imgag.com/imgag&brandldrPath=/product/full/el/&cardNum=/product/full/ap/3166187/graphic1','179866662038447','',NULL,NULL,NULL,'2010','12','25'),(4004,'Merry Christmas!','133279510064875','',NULL,NULL,NULL,'2010','12','25'),(4005,'Maliit na problema Pinapalaki.^_^','168325846540113','',NULL,NULL,NULL,'2010','12','13'),(4006,'No driver!!waH!!','162789030430644','',NULL,NULL,NULL,'2010','12','11'),(4007,'Futon Raseng Shuriken','167374569968591','',NULL,NULL,NULL,'2010','12','09'),(4008,'WEW!!! TROJAN...teting easy lng.','183270328354585','',NULL,NULL,NULL,'2010','12','07'),(4009,'Newest!! edition Rock Lee Manga http://www.mangastream.com/read/rock_lee/15083938/1','182319761781355','',NULL,NULL,NULL,'2010','12','05'),(4010,'Wew!!!4-1 (dya yung isa)...hahaha','128482830545458','',NULL,NULL,NULL,'2010','12','09'),(4011,'http://www.ancientegypt.co.uk/gods/story/main.html','167852696588444','',NULL,NULL,NULL,'2010','12','01'),(4012,'Dming version sa Egyptian Creation Story!!!','121704134558350','',NULL,NULL,NULL,'2010','12','01'),(4013,'...Got to go to school tomorrow.....^_^','174074545954589','',NULL,NULL,NULL,'2010','11','27'),(4014,'http://mangastream.com/read/naruto/96649938/1','125243244201549','',NULL,NULL,NULL,'2010','11','22'),(4015,'??!!!!','165597940140866','',NULL,NULL,NULL,'2010','11','15'),(4016,'BOBO ng wisp klaro ko.......hayzzz','165372096826681','',NULL,NULL,NULL,'2010','11','15'),(4017,'LMAO!!','171102796234861','',NULL,NULL,NULL,'2010','10','30'),(4018,'Naruto manga 512 so thrilling!','162061490490147','',NULL,NULL,NULL,'2010','10','13'),(4019,'LOL!\n','134054423310180','',NULL,NULL,NULL,'2010','10','10'),(4020,'lol','166085890068183','',NULL,NULL,NULL,'2010','10','10'),(4021,'......lol','129790727072854','',NULL,NULL,NULL,'2010','09','30'),(4022,'I just got the Mclaren F1 for Free! goto >> http://freecartownmclarenf1.tk <<','132165393498404','',NULL,NULL,NULL,'2010','09','20'),(4023,'I just got the Mclaren F1 for Free! goto >> http://freecartownmclarenf1.tk <<','156180874401782','',NULL,NULL,NULL,'2010','09','20'),(4024,'Generals!\r\n','114255588633078','',NULL,NULL,NULL,'2010','09','14'),(4025,'Naruto Manga 509!!!! ','125764940808370','',NULL,NULL,NULL,'2010','09','14'),(4026,'COD Ops coming in November 10 2010!!!!','139614049415438','',NULL,NULL,NULL,'2010','09','06'),(4027,'haha','157005420980444','Jan Kristoffer Cheng, Elijah San Pedro, Jerich King, Ian Kevin Dela Cruz, Erienne Yu, Dino Tan, Jae Jun, Gianne Ng, Joshua Venturanza Yu, Charlie Lim, Bejeweled Surish, Casvin Lee, Bea Lim, Wap Salonga, Christian Rodriguez, Ivan Wang, Elijah Mojares, Troy Alan Ong Keh, Gian Kenley Choa, Benedict Cai and ìµíì±',NULL,NULL,NULL,'2010','09','02'),(4028,'Sana ganun sa pinas!','103813959678485','',NULL,NULL,NULL,'2010','08','30'),(4029,'The world\'s largest!','122046177846368','',NULL,NULL,NULL,'2010','08','28'),(4030,'Naruto Chapter 507 so cool!!','149356821754865','',NULL,NULL,NULL,'2010','08','26'),(4031,'marcus','138598446178017','',NULL,NULL,NULL,'2010','08','10'),(4032,'See this!','141668045864098','',NULL,NULL,NULL,'2010','08','10'),(4033,'So funny!','151617794848278','',NULL,NULL,NULL,'2010','08','10'),(4034,'Cherry Credits!','141587999205043','',NULL,NULL,NULL,'2010','08','09'),(4035,'This is cool','142146642474922','',NULL,NULL,NULL,'2010','08','07'),(4036,'FREE 520 FACEBOOK CREDITS FOR LIMITED TIME ONLY HURRY UP!! - http://bit.ly/GetYourCredit','150132375000331','',NULL,NULL,NULL,'2010','08','07'),(4037,'helppls\r\n!','121228324592344','',NULL,NULL,NULL,'2010','08','07'),(4038,'Wah ! Business plan!','145986255418776','',NULL,NULL,NULL,'2010','07','29'),(4039,'Wolfteam sale','140394359322771','',NULL,NULL,NULL,'2010','07','23'),(4040,'Wolfteam patch again today!','136738093024671','',NULL,NULL,NULL,'2010','07','21'),(4041,'WOLFTEAM MODE!','139647986062089','',NULL,NULL,NULL,'2010','07','17'),(4042,'Wolfteam GO!','136548486366754','',NULL,NULL,NULL,'2010','07','12'),(4043,'help!!!','116682898377099','',NULL,NULL,NULL,'2010','06','16'),(4044,'help\r\n','131110900246503','',NULL,NULL,NULL,'2010','06','16'),(4045,'http://www.cashle.com/?ref=marcusko93','127513263936674','',NULL,NULL,NULL,'2010','06','07'),(4046,'http://www.cashle.com/?ref=marcusko93','130294023662658','',NULL,NULL,NULL,'2010','06','07'),(4047,'<a href=\"http://www.cashle.com/?ref=marcusko93\"><img src=\"http://www.cashle.com/images/promotionbanners/cashle/120x60-Banner.gif\" border=\"0\" /></a>\"','103073263075400','',NULL,NULL,NULL,'2010','06','07'),(4048,'<a href=\"http://www.cashle.com/?ref=marcusko93\"><img src=\"http://www.cashle.com/images/promotionbanners/cashle/120x60-Banner.gif\" border=\"0\" /></a>\"','128612280492152','',NULL,NULL,NULL,'2010','06','07'),(4049,'ah...','126234789078','',NULL,NULL,NULL,'2009','09','07'),(4050,'hmmmmm...\n','148528395934','',NULL,NULL,NULL,'2009','09','07'),(4051,'he!he!\n','129901701726','',NULL,NULL,NULL,'2009','09','04'),(4052,'hi! everyone!','126629127413','',NULL,NULL,NULL,'2015','03','27');
/*!40000 ALTER TABLE `to_be_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verb_object`
--

DROP TABLE IF EXISTS `verb_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verb_object` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `verb` varchar(500) DEFAULT NULL,
  `noun` varchar(500) DEFAULT NULL,
  `sentence` varchar(5000) DEFAULT NULL,
  `post_type` varchar(100) DEFAULT NULL,
  `tagged` varchar(5000) DEFAULT NULL,
  `location` varchar(5000) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verb_object`
--

LOCK TABLES `verb_object` WRITE;
/*!40000 ALTER TABLE `verb_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `verb_object` ENABLE KEYS */;
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
INSERT INTO `work` VALUES (3,'University Student Government, DLSU','2013-09-01','2014-04-30','Manila, Philippines','3459628907221'),(4,'La Salle Computer Society','0000-00','',NULL,'1435614536452853');
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

-- Dump completed on 2017-04-02 18:35:50
