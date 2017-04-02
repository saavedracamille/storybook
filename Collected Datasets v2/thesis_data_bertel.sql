-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: thesis_data_bertel
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
INSERT INTO `direct_knowledge` VALUES (46,'01/22/1998','birthday'),(47,'Jan Bertel','first_name'),(48,NULL,'middle_name'),(49,'Ngo','last_name'),(50,'male','gender'),(51,'Manila, Philippines','location'),(52,'','hometown');
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
INSERT INTO `educational_bg` VALUES (15,'Chiang Kai Shek College','High School',2015,NULL,'505665972836191'),(16,'De La Salle University','College',2019,'Computer science','127612997282544');
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
) ENGINE=InnoDB AUTO_INCREMENT=836 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (799,'Denki Megatech Convention','unsure','Philippine Trade Training Center','Pasay City','Philippines','1736885633220587'),(800,'DY Chinese New Year Celebration','attending','Ludo: Boardgame Bar & Cafe','Quezon City','Philippines','1258462097549302'),(801,'LSCS Christmas Party!','attending','The Manila Residences Tower II','Manila','Philippines','341032832938478'),(802,'Spark CenComm Interviews','attending',NULL,NULL,NULL,'349895105364977'),(803,'LSCS: Junior Officer Recruitment Week','attending',NULL,NULL,NULL,'524764327722225'),(804,'#SeeYouAgain: DY104 Batch Reunion','attending','6th Floor Liberty Hall',NULL,NULL,'1670606349927895'),(805,'Alumni Homecoming','attending','De La Salle University','Manila','Philippines','1547239322252145'),(806,'CCS Month 2016: Festivo','unsure','Henry Sy Bldg, De La Salle University - Manila','Manila','Philippines','298533423821364'),(807,'Easy Steps to a Brighter Life','attending','G205',NULL,NULL,'1115559938486216'),(808,'Charlize at 18','attending','Pearl of the Orient Tower','Manila','Philippines','242267879464244'),(809,'Technology Summit 2016 Forum','attending','De La Salle University','Manila','Philippines','1175552835819020'),(810,'LSCS Block Screening - Captain America: Civil War','attending','Sm Mall of Asia Cinema 1','Pasay City','Philippines','1021398767914209'),(811,'Keighleen Elise 1st Birthday','attending','Pan Pacific, Grand Ball Room, Manila, Philipine','Manila','Philippines','933182413429915'),(812,'Young Professionals Summit 2016','unsure','Bro. Andrew Gonzalez FSC Hall, DLSU',NULL,NULL,'837449253032225'),(813,'Second General Assembly','attending','Gokongwei Lobby',NULL,NULL,'1681178198789745'),(814,'Introduction to ACM','unsure','G304B',NULL,NULL,'235009596831996'),(815,'Bertel Birthday Celebration','attending','Vikings Makati','Makati','Philippines','594651927349021'),(816,'CHRISTMAS PARTY','attending','Shari\'s place!! :)',NULL,NULL,'1070565592994239'),(817,'PTS General Assembly','unsure','G207',NULL,NULL,'125851464438075'),(818,'Pwa Tiong Chiu','attending','Andrew\'s Place (New Manila)',NULL,NULL,'834127586684621'),(819,'Team Takas Mooncake Festival Celebration','attending',NULL,NULL,NULL,'449255808587418'),(820,'Englicom\'s First General Assembly','unsure','Henry Sy 12th Floor',NULL,NULL,'1654119571495377'),(821,'Group 2 Reunion!','attending','1190 Tamarind Rd. Dasmarinas Village, Makati',NULL,NULL,'679492715518026'),(822,'Ang <3 Ngo Nuptials','attending',NULL,NULL,NULL,'735646269779035'),(823,'SUPPORT','attending','Facebook',NULL,NULL,'1471161326445412'),(824,'Eryll\'s Debut','attending',NULL,NULL,NULL,'128710370642041'),(825,'NEW YEARS PARTY 2013. Because the world will not end in 2012.','attending',NULL,NULL,NULL,'10153281606151952'),(826,'Bev is graduating!','attending',NULL,NULL,NULL,'337051216359902'),(827,'R&C Tie The Knot','attending',NULL,NULL,NULL,'816945065059165'),(828,'The first 1 000 000 participants Will Get the new Facebook/Twitter Shoes','attending',NULL,NULL,NULL,'911572388906186'),(829,'32nd YHE PHOTO EXHIBIT','attending','Angelo King International Center','Manila','Philippines','747019138745726'),(830,'NUMBERSSS PLEASE... =)))))))','attending',NULL,NULL,NULL,'800659650016754'),(831,'Long Test A-Y subs','attending',NULL,NULL,NULL,'1083042031711447'),(832,'Long Test A-Y subs','attending',NULL,NULL,NULL,'893994343975362'),(833,'Chiang Kai Shek College: Graduation of Grade 6 Students-Batch 2010~2011','attending',NULL,NULL,NULL,'977245512293713'),(834,' Chiang Kai Shek College : Grade School \'s Graduation','attending',NULL,NULL,NULL,'897946116894510'),(835,'Threshold','unsure',NULL,NULL,NULL,'820183954717813');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (92,'Kathleen Joyce Ngo-Ang','cousin','10154966663106067'),(93,'Neil Patrick Sia','brother','1473187956024574'),(94,'Thea Gernandiso','cousin','10209962311666958'),(95,'Audrey Co','cousin','10103757337891599'),(96,'Grace T Lim','aunt','10155260097471178'),(97,'Jansen Ngo','cousin','10155156251946869'),(98,'Phebe Ong','cousin','1377606982282620'),(99,'Charm Ngo-Cua','cousin','10158276350310503');
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
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (176,'Troll People','Just For Fun','188927124541843'),(177,'SPARK 2017','Event','382960472068919'),(178,'Initialize: I.T. Conference 2017','College & University','1845698642376030'),(179,'Sheng-Aleng','Product/Service','1396459147319247'),(180,'Learn PH Hokkien','Education','1366962276709949'),(181,'Royal Canin Philippines','Pet Supplies','108604289227955'),(182,'Tredtwo Community Service Program','Education','282396708531188'),(183,'CodeChef','Non-Profit Organization','53227312798'),(184,'RVR COB Week 2017','Community','745949118890804'),(185,'SLIV','Bags/Luggage','1011201398916030'),(186,'Romance of the Three Kingdoms','Book','164584194009709'),(187,'beep card','Product/Service','2113439685463415'),(188,'J-Priam School','Education','467141915553'),(189,'Mediscount Pharmacy','Pharmacy / Drugstore','991303850939510'),(190,'Grant Gustin','Artist','157656600995233'),(191,'Jollibee','Food & Beverage Company','170055766373991'),(192,'FORMDEV','Community Organization','211394671157'),(193,'Charles The French','Public Figure','1669122510011580'),(194,'Ancozia','Beauty, Cosmetic & Personal Care','797765666966698'),(195,'S&R Membership (Official)','Retail Company','277396802337298'),(196,'Denki Megatech','Event','1008758285872483'),(197,'XEIA','Bags/Luggage','314056548942783'),(198,'Pose And Print Photo Booth','Shopping & Retail','313747946798'),(199,'DLSU SCoOp (Student Co-Operative)','Local Business','218318888685'),(200,'ASUS','Computers (Brand)','272213024956'),(201,'RAZE All About Cars','Automotive','489677631187898'),(202,'CCS Month 2016: Festivo','Community','1106937012702633'),(203,'Photoman','Local Business','421777611239260'),(204,'PSID Evolution','Event','914173138692019'),(205,'BMS REDux','Arts & Entertainment','269423776554900'),(206,'DLSU LEAP','Event','718257501579821'),(207,'Paint the City Green: An Urban Gardening Campaign','Community','156227911445956'),(208,'ç å¿ç® - è²è¯ææææç ç¿','Event','499187276939632'),(209,'BMS Presents: Art & Appetite','Organization','1664751987122514'),(210,'Lloyd Cafe Cadena','Comedian','196422610403217'),(211,'Oms Giving','Community','1571068206479688'),(212,'NOTA PH','Community','253698484977081'),(213,'Philippine Computing Organizations Alliance','Computer Company','446066582255757'),(214,'INKOMPASS','Company','502975673136093'),(215,'Action Project','Education','811642455647042'),(216,'Urban Luggage','Bags/Luggage','885874288178461'),(217,'Digital Freedom Wall','Cause','1692708174348266'),(218,'TeeTitans','Clothing (Brand)','1640566649527244'),(219,'Hey Idiot ,\' I Love U Ok','Park','649969645048727'),(220,'AKTIVshow','Public Figure','266851726758838'),(221,'Marvel','Product/Service','128965523837324'),(222,'Catch Twenty-Sixteen','Organization','142329109293517'),(223,'Investment Summit 2016: Make Your Money Work','Finance Company','766766303455424'),(224,'Office of Student LIFE','College & University','343303555782076'),(225,'Facebook','Residence','107885072567744'),(226,'University Vision-Mission Week 2016','Community','1714153808806231'),(227,'DLSU School of Economics Government','Education','407579339356335'),(228,'Microsoft','Workplace & Office','131664630202173'),(229,'DLSU Crushes','Community','643369445762552'),(230,'Taft 4 Dead','Media/News Company','324002017689032'),(231,'Peer Tutors Society','Non-Profit Organization','208440378090'),(232,'DLSU CSO','Organization','245252766116'),(233,'DLSU Sprint','Non-Profit Organization','455948477834399'),(234,'Warner Bros. Pictures','Movie/Television Studio','137782652917951'),(235,'Chiang Kai Shek College Alumni Association, Inc. è²å¾æ¿±ä¸­æ­£å­¸é¢æ ¡åç¸½æ Ckscaai','Organization','917906451591084'),(236,'WarnerTV Asia','TV Channel','158135080919841'),(237,'Center For Social Concern and Action','College & University','365484060239179'),(238,'3D New Generation','Appliances','1656678014582302'),(239,'Run for Life: A Love Run','Recreation & Fitness','160669037619078'),(240,'Axele Talent Casting Agency','Local Business','609522039096465'),(241,'Pets Society','Pet Supplies','429018173958265'),(242,'MARYGRACEvents Host & Singer','Artist','1951284531762699'),(243,'Never Okay','Community','734923869939998'),(244,'Iskolarship ng OLCP','Community','417746111768789'),(245,'Lasallian SAGE','Community','979610408719233'),(246,'INFLVENCE PH','Shopping/Retail','557611307725854'),(247,'Barista Cafe','Food & Beverage Company','629068690492421'),(248,'Kagwapuhan ni Nixon Sy','Photographer','103875329957955'),(249,'Krazyk','Clothing (Brand)','391130087629487'),(250,'BuzzFeed Food','Media/News Company','491452930867938'),(251,'DLSU Administration','Community','157394521107873'),(252,'Harry Potter','Movie','156794164312'),(253,'Santa\'s Attic: A Christmas Bazaar','Shopping/Retail','829100237121823'),(254,'Cartoon Kingdom Phils.','Bags/Luggage','619368821537636'),(255,'Jonvic Remulla','Public Figure','263452323765094'),(256,'Santugon Sa Tawag Ng Panahon','Political Organization','244398732343'),(257,'Teatro Tomasino - UST','College & University','172180909507283'),(258,'Craft Coffee Revolution Eastwood','Coffee Shop','519656084852515'),(259,'DLSU - Manila Microsoft Student Partners','Computer Company','306531972771445'),(260,'DLSU JEMA','Non-Profit Organization','150272728495752'),(261,'Tralulu','Travel Company','727351374077054'),(262,'How to Get Away With Murder','TV Show','611490952256306'),(263,'Pixie Dreams Manila','Shopping/Retail','875965759123506'),(264,'The SM Store (Department Store Official Page)','Department Store','184100765047970'),(265,'DLSU - Student Discipline Formation Office','Education','109697479183299'),(266,'Archers Network','Local Business','740065782742153'),(267,'Handog 2015','Community','894937367252001'),(268,'DLSU Academic Services Group','Education','1472956159688249'),(269,'Frozen','Movie','482368755113431'),(270,'Disney','Company','11784025953'),(271,'The Baker\'s Co.','Bakery','1573660809523912'),(272,'Life Hacks','Community','204334673108037'),(273,'DLSU CSG','Organization','174797889340539'),(274,'Ang Pahayagang Plaridel','Media/News Company','120845801284732'),(275,'Team Communication','Organization','239993106030175'),(276,'La Salle Computer Society','Non-Profit Organization','183915671213'),(277,'American Eagle Outfitters','Clothing (Brand)','195520837253717'),(278,'Jomoo Philippines','Building Materials','923391047726251'),(279,'Englicom DLSU','Organization','290637217796773'),(280,'The Penthouse','Retail Company','1552433141657248'),(281,'The AdCreate Society','Organization','182730868473480'),(282,'Vans','Footwear Store','129594317087504'),(283,'TOYM Philippines: The Outstanding Young Men Awards','Non-Profit Organization','1580681052149854'),(284,'DC\'s Legends of Tomorrow','TV Show','1567187933555959'),(285,'DLSU CSO: Frosh Welcoming and Annual Recruitment Week','College & University','1612387242349708'),(286,'The LaSallian','Media/News Company','149678604759'),(287,'LPEP 2K15','Community','1588399598100568'),(288,'Now You See Me 2','Movie','494219247258520'),(289,'Miriam Santiago Lines','Book','1433284036968402'),(290,'Whimsical World PH','Local Business','905471166177543'),(291,'Mr. and Ms. Gerry Roxas Leadership Awardee','Community','1483214378635966'),(292,'Kung Fu Panda','Other','18128947058'),(293,'Finderskeepers_ph','Retail Company','294203144109368'),(294,'Angry Birds','App Page','314467614927'),(295,'Authorial Intent','Performance Art','1593806620894255'),(296,'Dlsu Usg','Organization','283415475102221'),(297,'æµ·å¤è¯è£éå¹´å°ç£è§æ©å Overseas Compatriot Youth Taiwan Study Tour','Community','343861655649320'),(298,'ååå§å¡æocac-iå','Government Organization','831304670221434'),(299,'Overseas Community Affairs Council','Interest','512549272197233'),(300,'è²å¾å®¾ä¾¨ä¸­å­¦é¢æ°ä¹å¢ Philippine Cultural College Chinese Orchestra','Musician/Band','252364431466126'),(301,'Philippine Cultural College','School','103111383062229'),(302,'è²å¾å®¾åæä¸­å¿ ï¼Philippine Chinese Education Research Center)','Education','441261642572580'),(303,'De La Salle University, College of Computer Studies','College & University','110273299074'),(304,'Fast & Furious Neon','Media/News Company','1619436418280377'),(305,'Arrow','TV Show','104137579724283'),(306,'The Flash','TV Show','583390655086575'),(307,'Food-O-Graphy','Community','418160848347815'),(308,'Camscanner','Product/Service','167881543241929'),(309,'N.Cat Philippines','Jewelry/Watches','710126619004828'),(310,'Sword Art Online','TV Show','1374301222830407'),(311,'Shama KIDS\' World','Education','318795158245220'),(312,'Pasiklaban Sa Pidabs 2014','College & University','337075289796902'),(313,'FallBack','Community','1530686660531297'),(314,'Advance Gemsfire System Industries','Industrial Company','1429243277318821'),(315,'Filebook','Internet Company','409029495784916'),(316,'Sum Racing','Automotive','872347696112099'),(317,'Buffet101','Restaurant','241445782579766'),(318,'Shopping Made Easy For Ã','Shopping/Retail','530345660390420'),(319,'Voce Fich','Musician/Band','226856947329051'),(320,'Versailles','Musician/Band','901845829849832'),(321,'BRUSCO Car Club official fan page','Automotive Company','165893380143301'),(322,'Samsung Mobile Philippines','Electronics','146941488726138'),(323,'TrendCrafters Inc','Bags/Luggage','493175727489580'),(324,'Chiang Kai Shek College Secret Files','Community Organization','772422119494942'),(325,'Code A Generation','Dancer','1659648484261497'),(326,'Donggie\'s','Clothing (Brand)','812164192155261'),(327,'FedRun','Community','1452038231751218'),(328,'Lucky Chinatown Mall','Local Business','395335000603372'),(329,'DLSU Technology Summit','Computer Company','1572097723020867'),(330,'HENRY','Building Materials','415483755205582'),(331,'Gift Avenue','Company','119168001487904'),(332,'Bittersweet Waxing Studio - Boni','Beauty','364380693722042'),(333,'Brown Butter','Grocery Store','1435976123311347'),(334,'Collision: Beyond Luminaria','Website','849973611688303'),(335,'CENSOREDph','Local Business','306575092859851'),(336,'McDonald\'s','Food & Beverage Company','121863347862934'),(337,'De La Salle University','College & University','127612997282544'),(338,'Office of Admission and Aid - Ateneo de Manila University','College & University','127027544168458'),(339,'CKSC Language Center','College & University','304648319703292'),(340,'Foot Prints','Clothing (Brand)','1038934059455199'),(341,'Federation of Filipino Chinese Chamber of Commerce and Industry, Inc.','Organization','417489391657879'),(342,'Architecture & Design','Magazine','249880261833903'),(343,'ONIX Enterprise Philippines Inc.','Business Center','572436262874238'),(344,'DepEd Philippines','Government Organization','359105487482485'),(345,'CKSC Crushes','Community','1503777309858606'),(346,'TOMS','Product/Service','214333750883'),(347,'Apple Inc.','Computer Repair Service','105596369475033'),(348,'COCA-COLA Philippines','Food & Beverage Company','309290079117037'),(349,'SM City North Edsa','Shopping/Retail','198076995260'),(350,'The Shop-Thru General Merchandise','Shopping/Retail','1440532246178350'),(351,'DLSU Harlequin Theatre Guild','College & University','164114206968244'),(352,'KFC','Chicken Joint','117373194958135'),(353,'Sweet Bliss','Food & Beverage Company','547472365372592'),(354,'Cakes by Miriam','Food & Beverage Company','453639581433583'),(355,'é¦¬ç¾å°å¤«èå¨çå¤¢å¹»æµ·å³¶åº¦åæé','Local/Travel Website','173195254290'),(356,'FEDERATION OF FILIPINO CHINESE ALUMNI ASSOCIATIONS, INC. è²è¯åæ ¡åæè¯èª¼ç¸½æ','Non-Profit Organization','207561734995'),(357,'The Originals','TV Show','374781015962594'),(358,'The Vampire Diaries','TV Show','106357469967'),(359,'Like this Page for a Better Manila','Community','271298503035744'),(360,'Power Mac Center','Retail Company','42315864162'),(361,'J.CO Donuts & Coffee, Philippines','Food & Beverage Company','362077767139247'),(362,'Project Motion: Ignite your Passion. Build a Movement.','Community','233153880173263'),(363,'Philippine Mingsheng Wenyang Sports Association','Non-Profit Organization','201737939953852'),(364,'Isko Moreno Domagoso','Government Official','235030693233048'),(365,'Injustice','Games/Toys','364971353555486'),(366,'Cathay Pacific Airways','Travel Company','174054492652585'),(367,'Fast & Furious 7','Movie','202193463294957'),(368,'Brains over Tits','Clothing (Brand)','472670429517309'),(369,'Definitely Filipino','News/Media Website','106259116938'),(370,'Jennifer Lawrence','Artist','52528756792'),(371,'Patronum Photobooth','Event Planning Service','123114911201404'),(372,'Francis Perez Photography','Photographer','237882359566744'),(373,'CKSC Basketball','Organization','704974429531864'),(374,'Colgate Philippines','Health/Beauty','387639861342080'),(375,'The Fast & Furious  7','Outdoor & Sporting Goods Company','185903154907965'),(376,'Pomskies','Community','214769385366477'),(377,'Shop All You Can','Product/Service','588859864492946'),(378,'Wisdom Light Christian Academy (official)','Education','127208113956085'),(379,'Uniqlo Philippines','Clothing (Brand)','236722239730868'),(380,'The Animation Journey','Museum/Art Gallery','355280981175841'),(381,'Fast & Furious Series','Movie','1415248265364491'),(382,'Cut the Rope','Games/Toys','159526264081185'),(383,'DZMM TeleRadyo','TV Channel','192436084619'),(384,'Fairy Tail','Book Series','109748592385403'),(385,'Angel Beats!','TV Show','108503245841023'),(386,'Unigoods Enterprise','Local Business','364712506942112'),(387,'Emphasis Travel and Tours Inc.','Tour Agency','186675068172892'),(388,'Chiang Kai Shek College','Education','505665972836191'),(389,'UP Chinese Student Association','Non-Profit Organization','219478571421279'),(390,'The Big Bang Theory','TV Show','22934684677'),(391,'TZP','Movie','131163930317669'),(392,'Suits','TV Show','121349517944687'),(393,'Manga Fox','Entertainment Website','105903162796521'),(394,'PokÃ©mon','Company','230809307041021'),(395,'Vin Diesel','Other','89562268312'),(396,'God\'s Children','Religious Organization','191414034315740'),(397,'adidas','Company','183334676308'),(398,'Chiang Kai Shek College','College & University','105584222807516'),(399,'We Kewl \\m/ : )','Dancer','351230044978943'),(400,'Dell','Workplace & Office','287798400543'),(401,'Goldilocks','Food & Beverage Company','81789923849'),(402,'PAL (Philippine Airlines)','Local/Travel Website','105058546215928'),(403,'Philippine Airlines Promos','Local/Travel Website','112076072282623'),(404,'Philippine Airlines Promo Fares','Local/Travel Website','219688218054799'),(405,'Philippine Airlines','Product/Service','117387315866'),(406,'Dislike','News/Media Website','298171420179'),(407,'Toy Story','Movie','10498014129'),(408,'Glee','TV Show','55482772043'),(409,'The Legend of Korra','TV Show','209565489060052'),(410,'Boo','Movie Character','132180523866'),(411,'Mr Bean','Public Figure','17774451468'),(412,'Plankton','Chef','153692784641672'),(413,'Harry Potter (character)','Fictional Character','104162239621057'),(414,'Starbucks Philippines','Food & Beverage Company','225073057924'),(415,'iPhone Fans','Website','214456561919831'),(416,'Chat Emoticons, Pictures and Symbols','Community','117435884953608'),(417,'JanSport','Bags/Luggage','8314408429'),(418,'The Annoying Orange','Food Truck','209118161295'),(419,'Drawing','Field of Study','112608815418540'),(420,'Dug','Movie Character','124459772217'),(421,'Beats by Dre','Electronics','78986534109'),(422,'I Love Jesus, by iLoveJesusonline.com','News/Media Website','92047888071'),(423,'iPad','Organization','109436922409408'),(424,'PokÃ©mon Black and White','Video Game','134855396536281'),(425,'Johnny English','Movie','270411656307097'),(426,'Columbia Pictures Philippines','Movie/Television Studio','196647134027'),(427,'Oreo','Food & Beverage Company','114998944652'),(428,'Harry Potter','Book Series','107641979264998'),(429,'Ellen DeGeneres','Public Figure','26012002239'),(430,'God','Fictional Character','140737019293770'),(431,'Facebooking','Travel & Transportation','114721225206500'),(432,'Paul Pierce','Athlete','48886437524'),(433,'Garena FPS','Games/Toys','70561584358'),(434,'Cartoon Network','TV Network','84917688371'),(435,'Mr. Krabs','Artist','113791948674562'),(436,'ABS-CBN','TV Network','196309417055528'),(437,'Globe Telecom','Telecommunication Company','30433734747'),(438,'Thor','Fictional Character','113589202010624'),(439,'Iron Man','Fictional Character','7057882289'),(440,'Avatar','Movie','82771544063'),(441,'Kiefer Ravena','Athlete','131798783517168'),(442,'Jeron Teng','Athlete','391221640914580'),(443,'Alvin and the Chipmunks 2','Movie','106033546104198'),(444,'Phineas and Ferb','TV Show','103817652989914'),(445,'Vice Ganda','Artist','56771207447'),(446,'Ben 10','TV Show','105310924507'),(447,'SpongeBob SquarePants','TV Show','42798291365'),(448,'Patrick Star','Fictional Character','50403195950'),(449,'Squidward Tentacles','Artist','146753095355080'),(450,'Transformers','Science & Engineering','180774635291325'),(451,'National Book Store','Book Store','72546266913'),(452,'YouTube','Product/Service','7270241753'),(453,'The Fairly OddParents','TV Show','162387970438104'),(454,'Nickelodeon','Other','268035966640514'),(455,'Avatar: The Last Airbender','TV Show','104956949616'),(456,'LINE Japan','Internet Company','129790443796714'),(457,'Once Upon a Time','TV Show','168914433164059'),(458,'Happy Lemon Philippines','Food & Beverage Company','188844541166203'),(459,'SJCS Student Council Central Board','Government Organization','324187347637584'),(460,'M-Edge','Product/Service','190018231946'),(461,'Teavana Canada','Food & Beverage Company','248437765193852'),(462,'Russell','Movie Character','123326669164'),(463,'Le D\'mond','Jewelry/Watches','282998881809001'),(464,'PSY','Musician/Band','165106760172502'),(465,'Draw My Thing','App Page','363536043663190'),(466,'Wordox | English','App Page','293881037311354'),(467,'Once Upon A Time: The Search for Mr. & Ms. Marketing Personality 2012','Education','216907811772062'),(468,'Magulang Magulang [Official]','Education','206449502752588'),(469,'3 Idiots (2010 film)','Education','115184375160791'),(470,'Lucky Chinatown','Shopping/Retail','219867201432984'),(471,'Hoiio','Internet Company','106808319339915'),(472,'Mob Wars','App Page','343577262321215'),(473,'App Store','Product/Service','286893159420'),(474,'9GAG','App Page','21785951839'),(475,'HTC','Product/Service','101063233083'),(476,'Seagull Office Products Stationery','Office Supplies','289732304385269'),(477,'Maki Place (Shin Din Kha)','Restaurant','182004328497219'),(478,'CKSC Student Council','Organization','242928969083408'),(479,'Thanks sa like :))','Computers/Internet Website','129503333739065'),(480,'Don\'t Make Promises That You Can\'t Keep','Community','248339711860427'),(481,'Chinoy TV è²è¯é»è¦å°','TV Show','142617495813487'),(482,'CKSC Planking','Community','123168777772887'),(483,'Chiang Kai Shek College Manila','School','114517625232219'),(484,'Vikings: Luxury-Buffet Restaurant','Restaurant','113225315413751'),(485,'Nike','Product/Service','15087023444'),(486,'Starbucks','Food & Beverage Company','22092443056'),(487,'Mr. Bean','Public Figure','133745019998329'),(488,'The Artifice','Games/Toys','149072157029'),(489,'Facebook','Product/Service','20531316728'),(490,'Google Chrome','Software','321662419491'),(491,'Chiang Kai Shek College Alumni Association :2008-2015','Organization','74231303372'),(492,'Plants vs. Zombies','Video Game','57571168213'),(493,'Social Media Games','Website','271177828730'),(494,'maypasokba.com - may pasok ba?','Local Business','215887740074'),(495,'Chiang Kai Shek College Batch 2009','Organization','152414303933'),(496,'Texas HoldEm Poker','Games/Toys','56531631380');
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
) ENGINE=InnoDB AUTO_INCREMENT=3720 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (3705,'\"There is no limit to what we, as women, can accomplish.\" â Michelle Obama\nComing soon on March 2017!','10208524841388300','',NULL,NULL,NULL,'2017','02','24'),(3706,'I am Jan Bertel Ngo, Assistant Vice President for Training and Development of La Salle Computer Society!\n\nTo grow together with my organization, I am ready and willing to give my best for the development and happiness of every LSCS officer. \n\nLiving Yesterday\'s Vision. Setting Today\'s Trends. Inspiring Tomorrow\'s Leaders.\n\nPhotos taken by Albert Lorenz Dizon.\nPost processed by Alec Tan and Joseph Ryan Nobleza','10208299273669248','',NULL,NULL,NULL,'2017','01','25'),(3707,'This Teacherâs Appreciation Week, weâre going back in time for some serious 80âs vibes. Itâs time to make our professors shine like a neon sign this week.\nLetâs show our beloved CCS professors how much they mean to us. Visit the Wall of Appreciation booth at Gokongwei Lobby and post a note for our professors!','10207373885975134','',NULL,NULL,NULL,'2016','10','03'),(3708,'WE WANT YOU.\nLa Salle Computer Society wants you to become the very best! If you want to become an innovator of technology, a person full of passion for service, and an explorer of a whole new world of possibilities, catch us from September 26-30, 8AM-5PM, in front of ISR!','10207286425468676','',NULL,NULL,NULL,'2016','09','21'),(3709,'I am Jan Bertel Ngo ID115, and I choose La Salle Computer Society! I am ready to become a the very best and catch all the 4s!\nWE WANT YOU to be a part of this, too! Catch us from September 26-30, 8AM-5PM, in front of ISR! See you!','10207286424188644','',NULL,NULL,NULL,'2016','09','21'),(3710,'Vote iVolunteer!','10207074251204452','',NULL,NULL,NULL,'2016','08','24'),(3711,'Â© Aaron Steven OlaÃ±o','10206909123396360','',NULL,NULL,NULL,'2016','07','31'),(3712,'I am ready! Are RIO?\n\nCCS Del Rio presents\nFESTIVO: Show your colors.\n07 July 2016.\n\nCome join us as we end our month-long celebration of CCS\' 35th anniversary with a blast!\n\nLike our page, facebook.com/Festivo2016 for more updates!','10206710251184679','',NULL,NULL,NULL,'2016','07','01'),(3713,'SHOW YOUR COLORS','10206710252384709','',NULL,NULL,NULL,'2016','08','16'),(3714,'Are Rio Ready?\n  \nThis coming June 20, 2016 - July 7, 2016, join us as we celebrate with food, friends and festivities in\n  \nCCS DEL RIO: The 35th Year of Empowerment, Engagement & Excellence!','10206623357492391','',NULL,NULL,NULL,'2016','06','18'),(3715,'Shaila Mae Choa Hahahahahahaha xD','10206575477855430','Shaila Mae Choa, Janica Mae Lam, \'Jaylica Anne Tan, Edward Rainier C. Curugan and Jolo Simeon',NULL,NULL,NULL,'2016','06','11'),(3716,'Yeheeeyyyyy!!!!!! So proud so proud :))) \n\nI like cupcakes :3','10206575473695326','Janica Mae Lam',NULL,NULL,NULL,'2016','06','11'),(3717,'Are Rio Ready? #CCSDR2016 #June2016','10206512071870320','',NULL,NULL,NULL,'2016','06','01'),(3718,'#DLSUTechnologySummit2016','10206490133201867','',NULL,NULL,NULL,'2016','05','29'),(3719,'Dont forget to register through the link(http://goo.gl/forms/MpQkoCu7Pl) if you are going to this year\'s awesome Technology Summit 2016 forum!\n\n#DLSUTechSummit2016','10206490131041813','',NULL,NULL,NULL,'2016','05','29');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (3,'University Student Government, DLSU','2013-09-01','2014-04-30','Manila, Philippines','3459628907221'),(4,'DLSU Sprint','0000-00','',NULL,'10207176231193888'),(5,'Philippine Computing Organizations Alliance','0000-00','',NULL,'10207088206113316'),(6,'La Salle Computer Society','0000-00','',NULL,'10205773326762154');
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

-- Dump completed on 2017-04-02 17:43:53
