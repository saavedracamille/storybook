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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (102,'12/07/1994','birthday'),(103,'Jonas','first_name'),(104,NULL,'middle_name'),(105,'Lam','last_name'),(106,'male','gender'),(107,'Manila, Philippines','location'),(108,'Manila, Philippines','hometown');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (31,'St. Stephen\'s High School','High School',2011,NULL,'106154902757823'),(32,'De La Salle University','College',2015,'Business Management and Economics','112961752051469');
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
) ENGINE=InnoDB AUTO_INCREMENT=884 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (838,'You love, You lose!','attending','heaven',NULL,NULL,'346813182119385'),(839,'bYUrthday pYUrty','attending','The Backyard Kitchen + Brew, the Grove','Pasig','Philippines','164740057340237'),(840,'Color Manila Run Year 5','attending','SM Mall Of Asia Open Grounds','Pasay City','Philippines','342921726088278'),(841,'SMDC Run Leg 2 - September 25, 2016','unsure','SM Mall of Asia (MOA), Pasay City, Metro Manila, Philippines','Pasay City','Philippines','1802271419992278'),(842,'Nickelodeon Slime Cup Run 2016','unsure','SM Mall of Asia','ParaÃ±aque','Philippines','983854278317188'),(843,'CoÃ±yohan Sa Starbucks Vito Cruz','unsure','Starbucks Vito Cruz','Pasay City','Philippines','570739906436969'),(844,'Batman Vs Superman Run 2016','attending',NULL,NULL,NULL,'155499654832886'),(845,'National Breakfast Day 2016','attending','McDonald\'s',NULL,NULL,'496595710520335'),(846,'Run United 1 2016','attending','SM Mall of Asia','ParaÃ±aque','Philippines','117841401929466'),(847,'Batch 2011 (Christmas Party/Reunion)','attending','Wharton Parksuites','Manila','Philippines','748752401895998'),(848,'Avon Kiss Goodbye to Breast Cancer Run 2015','attending','SM MOA','Pasay City','Philippines','488328998003208'),(849,'Englicom\'s Mid-Autumn Festival: Roll the Dice','attending','The Grand Towers Vito Cruz Manila','Quezon City','Philippines','1000290663334901'),(850,'P&G Career Caravan at DLSU','attending','DLSU- Henry Sy Hall','Manila','Philippines','1236070903085220'),(851,'Subaru Marathon 2015','attending','SM Mall of Asia','ParaÃ±aque','Philippines','1587475064835095'),(852,'Sofitel Manila Half-Marathon 2015','attending','SM MOA','Pasay City','Philippines','915812531790654'),(853,'Takbo.ph RunFest 2015 (BGC)','attending','Bonifacio Global City','Fort Bonifacio','Philippines','1647395982159511'),(854,'BMS: First General Assembly','attending','Yuchengco Lobby, De La Salle University - Manila','Manila','Philippines','783034248394759'),(855,'Digits Please! :D','attending',NULL,NULL,NULL,'787452677973178'),(856,'Contacts po','attending',NULL,NULL,NULL,'589582777805823'),(857,'My Despedida','attending','Plato Bar','Manila','Philippines','597017887039965'),(858,'Club Red 9','unsure',NULL,NULL,NULL,'228467707350271'),(859,'Lost Phone!!!','attending',NULL,NULL,NULL,'275843855869694'),(860,'A Decade and Eight','attending','The Heritage Hotel Manila','Manila','Philippines','199121756938251'),(861,'BMS Cares: Supporting ALS','attending','Alternative Learning System ',NULL,NULL,'689216214440281'),(862,'Contacts please','attending',NULL,NULL,NULL,'161440884045985'),(863,'1st Term Midterm Tutorials','attending',NULL,NULL,NULL,'139978359538948'),(864,'18th Birthday!:D','attending','Ramon Magsaysay Reception Hall','Manila','Philippines','634244516590320'),(865,'BLOCK 8  LUNCH!','attending',NULL,NULL,NULL,'574121799278344'),(866,'Bridging Construction and Entrepreneurship Seminar','attending',NULL,NULL,NULL,'224837204328100'),(867,'My Event!','attending',NULL,NULL,NULL,'628646447151420'),(868,'Chantelle\'s Debut :D','attending','Makati Shangri-La Hotel','Makati','Philippines','220581421384683'),(869,'Birthday party','unsure','Pacific Plaza, Ayala Ave., Makati City','Makati','Philippines','289757787799772'),(870,'Debut â¥','attending','Officer\'s Clubhouse, Villamor Airbase','Pasay City','Philippines','511492142200882'),(871,'Contact number please thanks:)','attending',NULL,NULL,NULL,'114932965316135'),(872,'NUMBERS PLEASE :(','attending',NULL,NULL,NULL,'448077688550742'),(873,'18th. <3','attending',NULL,NULL,NULL,'439779072701780'),(874,'EK :)','attending','Enchanted Kingdom','Santa Rosa','Philippines','293661934052848'),(875,'BLOCK 8 CHRISTMAS PARTY :)))))))))))','attending',NULL,NULL,NULL,'892732787452525'),(876,'Raizza @ 18: A White Greek-Themed Party','attending','Oceana MOA','Pasay City','Philippines','612808088820426'),(877,'Breaking Dawn Movie Screening','unsure',NULL,NULL,NULL,'804801406281849'),(878,'NO TO PLASTICs --->PLEASE LIKE THE PAGE. :)','attending',NULL,NULL,NULL,'1049305615099207'),(879,'please vote for me!','attending',NULL,NULL,NULL,'767686663330683'),(880,'IMPORTANT.','unsure',NULL,NULL,NULL,'1093987820616629'),(881,'Centennial Annual Recruitment Week','unsure',NULL,NULL,NULL,'949501198414352'),(882,'The Spoof to get 750 Credits right now... spoodab','attending',NULL,NULL,NULL,'1051987934828526'),(883,'ALL IN THE FAMILY: AN EVENING OF SONGS FROM JOSE MARI CHAN & FAMILY','unsure',NULL,NULL,NULL,'956856164349123');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (121,'Emsky Lam','mother','10154944365392731'),(122,'Kathleen Marinas','sister','10209225247813117'),(123,'Imelda Dy','aunt','1585251351491614'),(124,'Janica Mae Lam','sister','10207575653011620'),(125,'Wilson Martinez','uncle','10154858631848467'),(126,'Eden Martinez','aunt','10154097531481105'),(127,'Maria Camille Ng','sister','10212260896216481');
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
) ENGINE=InnoDB AUTO_INCREMENT=1021 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (671,'Paprika by Kathryn','Clothing (Brand)','764785980352789'),(672,'Sandra Prikker','Athlete','839324442839293'),(673,'Zark\'s Burgers','Restaurant','125052717215'),(674,'Ozzy Man Reviews','Comedian','687383314630872'),(675,'Lele Pons','Public Figure','1519334114988183'),(676,'GreenTeaNeko\'s Moe Factory','Artist','446667775380373'),(677,'Lindsey Kevitch','Public Figure','505380926322387'),(678,'Jess Conte','Public Figure','1595954257284945'),(679,'Monster Breaker Hero','Software','1779923698943365'),(680,'Maya Nyan','Artist','517839298242858'),(681,'RBC','Finance Company','205757452769482'),(682,'Ana Cheri','Public Figure','680966755299017'),(683,'COLOR Manila RUN','Community','325780124184340'),(684,'Things that are not aesthetic','Musician/Band','641409145982346'),(685,'BDO Private Bank Christmas Party 2016','Album','1097349703695757'),(686,'pH Care Philippines','Health/Beauty','1575907252711573'),(687,'8-bitfiction','Artist','1509802982608207'),(688,'Marty\'s Kitchen','Food & Beverage Company','140772553014368'),(689,'Clever Ideas','Media/News Company','1414016895544040'),(690,'Anllela Sagra','Public Figure','466521906818912'),(691,'Zesty Supreme','Community','1622919201368691'),(692,'Mizuno Running','Product/Service','114139438890'),(693,'Libreng Komiks','Book Series','453379681488867'),(694,'Spark - Leader of Team Instinct','Fictional Character','280261919003574'),(695,'Lindsey Pelas','Public Figure','620950571303787'),(696,'Sam Pinto','Artist','108214705870117'),(697,'LÃ©moon','Food & Beverage Company','874534072684111'),(698,'Owlturd Comix','Website','218730561600219'),(699,'JMX Travel and TOURS','Tour Agency','142054679537553'),(700,'Kirstin Maldonado','Public Figure','669166536499383'),(701,'Lilymaymac','Public Figure','1749416622010633'),(702,'Onepicten','Website','233853340047041'),(703,'UNILAD','Other','146505212039213'),(704,'MMDA','Government Organization','135621806476490'),(705,'Ensogo','Local Business','1034756549925038'),(706,'Sarcasm','News/Media Website','1515871602074952'),(707,'Dohtonbori Philippines','Restaurant','589785647787073'),(708,'Allison Stokke','Athlete','332022033588676'),(709,'DLSU Technology Summit','Computer Company','1572097723020867'),(710,'Katrina Bowden','Artist','875527572543365'),(711,'Charlotte Mckinney','Public Figure','1470238489869643'),(712,'Sophie Rose Official','News/Media Website','758991057511251'),(713,'Maureen Emily Schrijvers','Athlete','415727898449319'),(714,'TED-Ed','Education Website','203906229622591'),(715,'Emily Ratajkowski','Public Figure','281505075294327'),(716,'Haley Jade Poston','Public Figure','657795350949575'),(717,'Your EDM','Media/News Company','240577849383245'),(718,'JPMorgan Chase & Co.','Finance Company','11465191261'),(719,'Michelle Jenneke','Athlete','481490248546201'),(720,'The Awkward Yeti','Entertainment Website','127722993970051'),(721,'Misa Chiang','Artist','391035614265417'),(722,'Iskra Lawrence','Public Figure','177137252420892'),(723,'AllisonNYC','Athlete','134788003297797'),(724,'Bri Teresi','Public Figure','348960301938472'),(725,'My Run Time','Community','174717885911057'),(726,'New York Supreme','Local Business','158360527562225'),(727,'St. Stephen\'s High School','School','1076989095676984'),(728,'Life and Social Media','Community','294626187641'),(729,'Ann B. Mateo','Public Figure','1697323927171144'),(730,'Mga iba\'t ibang Bagay','Just For Fun','613554175353848'),(731,'Miss Universe','Public Figure','293243119046'),(732,'Gabrielle Grace Epstein','Public Figure','602842143191733'),(733,'Alyssa Miller','Public Figure','111394658892085'),(734,'Piques','Artist','1407167032831912'),(735,'Master, Wendell','Media/News Company','504646816271724'),(736,'May','Community','200934393342232'),(737,'Amanda Cerny','Artist','100344450058745'),(738,'BroBible','Society/Culture Website','108698394910'),(739,'Bro Science','Comedian','394865543923437'),(740,'Logan Paul','Actor','148364602028392'),(741,'Gabriel Conte','Public Figure','1537512523160704'),(742,'Wii-Fit Trainer','Athlete','393134820803804'),(743,'Vinci Glodove','Coach','694159033936850'),(744,'~Draco the Death Eating Cupcake~','Community','300699026650781'),(745,'MrTechnicalDifficult','Public Figure','161807307199981'),(746,'Bored AF','Media/News Company','474457116054698'),(747,'The Wall of Comedy','Public Figure','131079793665171'),(748,'DLSU Career Services','Education','231750466948223'),(749,'Cara Delevingne','Public Figure','1453470311647266'),(750,'5 Mins Clip','Music Production Studio','997701433594974'),(751,'Ariana Marcos','Just For Fun','736495146454697'),(752,'Mara X Clara Manga','Just For Fun','587939027938469'),(753,'Lenso Wheels Philippines','Cars','858174864219694'),(754,'Decision Sciences and Innovation Department','School','234438723252206'),(755,'The SkepDick','News Personality','1456027077981725'),(756,'AirAsiaPhilippines','Community','119566078103278'),(757,'AirAsia','Travel Company','18801397386'),(758,'Legends of the Hidden Temple','TV Show','136108209751507'),(759,'Poems Porn','Health/Wellness Website','638963772825875'),(760,'Yanet GarcÃ­a','Public Figure','1442599296013326'),(761,'SMBC Comics','Entertainment Website','244830742251856'),(762,'Jen Selter','Public Figure','244183679061369'),(763,'GE - Good Ending','Magazine','324270190474'),(764,'Pokemon: Type Wild','Community','407009652691608'),(765,'Dragonarte','Community','580630255334865'),(766,'Foodbeast','News Personality','171981399280'),(767,'BobbyBox Philippines','Restaurant','1422796801280304'),(768,'Anna Faith Carlson','Community','300386860138405'),(769,'FHM Philippines','Magazine','368188218595'),(770,'Arianny Celeste','Public Figure','454417684592095'),(771,'Best of Cartoons','Community','352007635002212'),(772,'GAMEVIL','Games/Toys','60786996731'),(773,'Jenna Jenovich','Public Figure','297386000366169'),(774,'This Week in Pseudoscience','Community','485501288225656'),(775,'Nikki Blackketter','Athlete','552002171493411'),(776,'Aqua Flow','Community','1593251160960135'),(777,'Black People Vines','Just For Fun','639972269398546'),(778,'Daphne Joy','Public Figure','117083525011396'),(779,'Jessy Mendiola - fans club','Public Figure','193005324223057'),(780,'Shanda Rogers','Public Figure','1445466542380740'),(781,'WhiteTrash','Entertainment Website','188734351179875'),(782,'Hannah Jeter','Public Figure','134102113417911'),(783,'imPRESSiveDesign','Product/Service','857548930969913'),(784,'Autistic Yui','Community','334857613325393'),(785,'Everything Nerdy and Anything in Between','Community','229145477207495'),(786,'Memrise','App Page','149149908445051'),(787,'DLSU BMS Annual Bazaar','Shopping/Retail','1558520877713109'),(788,'The EDSA Traffic Transformation','Community','370710489778365'),(789,'Four Seasons Hotpot City: SM Mall of Asia','Restaurant','695161813924540'),(790,'High School DÃD','Book Series','191358574280982'),(791,'Lazar Angelov','Athlete','443229005693699'),(792,'Kendall Jenner','Public Figure','173567062703796'),(793,'Aiko Climaco','Artist','200728699951423'),(794,'DJ Brandon Jon','Musician/Band','462418737146111'),(795,'Dorkly','Website','113383062038446'),(796,'Rapping Dad','Public Figure','367524273403331'),(797,'Daniela Andrade','Musician/Band','109834669140'),(798,'Mari Henud','Public Figure','426430390827728'),(799,'ERIN by Etsy','Footwear Store','1388393594800337'),(800,'Humans of BTI and Group','Fictional Character','833333680063949'),(801,'Donnalyn Bartolome','Public Figure','196934133652011'),(802,'Neneng B. (Bubble Gang)','Public Figure','303583536342809'),(803,'CollegeHumor','Entertainment Website','6363207806'),(804,'Manga Town','Entertainment Website','1457374847842194'),(805,'The Legend of Korra','TV Show','209565489060052'),(806,'Green & White 2015','Organization','608031339304102'),(807,'The Last: Naruto the Movie','Movie','713636802005452'),(808,'Naruto the Movie  on OtakuKart.com','Entertainment Website','643496872414099'),(809,'Virgin Radio Lebanon','Radio Station','275155342593810'),(810,'Michelle Lewin','Martial Arts School','293653810646372'),(811,'No Time Wheysted','Clothing (Brand)','589272811169399'),(812,'goboiano','Media/News Company','138905109499102'),(813,'YMCA','Local Business','265259986940763'),(814,'TwistedGrim','Artist','227322867395953'),(815,'Lasallian Excellence Awards','Organization','263372990525777'),(816,'Mari Jasmine','Writer','1430408753861385'),(817,'Brilliant.org','Education Website','542971019063265'),(818,'Lavinia Herbert','Public Figure','292753607585316'),(819,'Some Amazing Facts','Education Website','231807496842494'),(820,'Business Management Students\' Convention','Community','280010642195516'),(821,'Mars Needs MG','Company','226813494115104'),(822,'Promatrix7','Health/Beauty','173427639480873'),(823,'Jessica Brown','Musician/Band','205851212777897'),(824,'Prince Ea','Musician/Band','71760664768'),(825,'DLSU LEAP','Event','718257501579821'),(826,'Being noticed by Senpai','Community','455515651138185'),(827,'Marquina Shoemaker','Local Business','1386472671613338'),(828,'Gordon Ramsay','Public Figure','170304082992864'),(829,'Paige Hathaway','Athlete','288596241260375'),(830,'Tenashar','Musician/Band','152556131426155'),(831,'alab.ph','Education Website','788040061241262'),(832,'Emily Skye','Public Figure','147170835314482'),(833,'Philippine Junior Marketing Association | PJMA','Organization','242100545900455'),(834,'Jordan Carver','Public Figure','285388056416'),(835,'Grammarly','Education Website','139729956046003'),(836,'Dan Bilzerian','Public Figure','1423830694520861'),(837,'Britthebadger','Artist','390914514254750'),(838,'Sonic The Hedgehog','Games/Toys','23050342417'),(839,'ASEAN','Government Organization','52094913853'),(840,'Intense Passion','Community','1455001198052853'),(841,'EDM (Electronic Dance Music | E.D.M)','Musician/Band','179496798844228'),(842,'DVBBS','Musician/Band','449657210522'),(843,'Dimitri Vegas and Like Mike','Musician/Band','109878972400482'),(844,'Adriana Lima','Public Figure','37255037041'),(845,'Miranda Kerr','Public Figure','169571172540'),(846,'Second To None Nutrition','Vitamins/Supplements','378939318817147'),(847,'Kid On Crack','Public Figure','596750830443299'),(848,'Lindsay Elyse','Artist','539104339453014'),(849,'Dwayne The Rock Johnson','Public Figure','406433779383'),(850,'Ninja Warrior','TV Show','110349489394'),(851,'Spinnin\' Records','Record Label','77677035678'),(852,'Jennette McCurdy','Public Figure','96981971171'),(853,'Closeup','Product/Service','161336633903790'),(854,'Julia Barretto (Official JBeauties)','Artist','307608155970918'),(855,'Manga Fox','Entertainment Website','105903162796521'),(856,'Nicky Romero','Musician/Band','153464388031637'),(857,'Martin Garrix','Musician/Band','275648462478015'),(858,'Boss Girls','Athlete','1438030553093296'),(859,'Kuroko no Basket','TV Show','351019824946321'),(860,'Avicii','Musician/Band','26435256798'),(861,'The Tonight Show Starring Jimmy Fallon','TV Show','31732483895'),(862,'Bar Brothers','Public Figure','181408008701698'),(863,'Wake up in middle of night, look at clock yes I still have time to sleep','Community','688315054567867'),(864,'Oh im sorry, i forgot i only exist to you when you need something from me','Community','242172209319927'),(865,'Selfies in washroom','Community','647989921932918'),(866,'The Swon Brothers','Musician/Band','103101076403003'),(867,'Kevin Hart','Comedian','80500707044'),(868,'The Economist, Asia','Media/News Company','272702579503296'),(869,'VISAGE #NoFilter','Community','282650541892865'),(870,'Bogart the Explorer from Davao City','Comedian','164269863615160'),(871,'Natalia Poklonskaya','Community','496984517080221'),(872,'Econorg: Gemini','Organization','252778484886879'),(873,'Mr. Peabody & Sherman','TV Show','394263260619219'),(874,'Shiny Stamp Philippines','Product/Service','167083406666354'),(875,'Dong-A Philippines','Product/Service','175285999188930'),(876,'Faber-Castell Philippines','Product/Service','114556481954117'),(877,'Wanna Fact!?','Education Website','229162103880856'),(878,'111uminate: The Centennial Batch Graduation Party','Community','254050088102713'),(879,'Max Axe','App Page','529535787078516'),(880,'Doublemint Philippines','Food & Beverage Company','389585817750302'),(881,'Double funny Entertainment','Industrial Company','467782400017006'),(882,'BMS Presents: The Attic Bazaar','Shopping/Retail','1401298526782393'),(883,'Walt Disney World for Grownups (www.wdwforgrownups.com)','Local/Travel Website','46026652014'),(884,'Doyoueven','Product/Service','128255247330838'),(885,'Yeah, She Squats.','Health/Wellness Website','399839513421588'),(886,'Economics Memes','Business/Economy Website','290120487744451'),(887,'Welcome to the Internet','Public Figure','176890359032890'),(888,'LEAP 2K14','Community','1410881352471562'),(889,'Gym Memes','Athlete','394897053880873'),(890,'The Fight Depot','Media/News Company','143214639167391'),(891,'Revine King','Media/News Company','432055950243655'),(892,'Ateneo de Manila Secret Files','Community','216073025233008'),(893,'De La Salle University-Manila Secret Files','Media/News Company','596767770358949'),(894,'Arethemost.com','Entertainment Website','226321140715935'),(895,'People Please','Musician/Band','216346515186953'),(896,'CauseWereGuys','Entertainment Website','171516226294684'),(897,'Filipino Vines','Community Organization','195336200641672'),(898,'DLSU Chinoy Hunk Stephen Cua','Athlete','435423376564823'),(899,'JS Serata Toy Balloons & Party Needs, Co.','Event Planning Service','297763030359651'),(900,'Go Archers','Media/News Company','211497745544843'),(901,'8CRAP','Website','586487838060776'),(902,'Cutest Faces In DLSU','Entertainment Website','104507489621278'),(903,'Happytwins','Local Business','528196280563341'),(904,'Child Friendly Spaces','Community','142908675791033'),(905,'The Script (album)','Album','106210362744365'),(906,'De La Salle Project for Asian and International Relations','Organization','306717849459609'),(907,'CFMoto Phils','Cars','397168527055997'),(908,'Powered By Print','Local Business','551618114877060'),(909,'DLSU School of Economics Government','Education','407579339356335'),(910,'Sun Stoked','Food & Beverage Company','143240845878885'),(911,'TAO YUAN RESTAURANT','Local Business','365549333231'),(912,'POGI SI RENZO :))','Community','127489787266636'),(913,'Danielle Bradbery','Musician/Band','173145822836649'),(914,'Sara Jean Underwood','Public Figure','294965691744'),(915,'Marketing Strategies','Personal Blog','553415538012028'),(916,'BMS Academic Core Assistance','Community','532390000131296'),(917,'Ryan Higa','Public Figure','274524094746'),(918,'The Adobo Conspiracy','Musician/Band','202444553230922'),(919,'Amazing and Crazy videos','Community','528315427198079'),(920,'Fishing Superstars','Games/Toys','373191689407469'),(921,'De La Salle University','College & University','127612997282544'),(922,'Lloyd Cafe Cadena','Comedian','196422610403217'),(923,'\"I won\'t forget, I won\'t forget..\" \"So did you bring it?\" \"Sh*t..\"','Entertainment Website','374843179902'),(924,'Chrissy Costanza','Public Figure','117159768458728'),(925,'Living with Hipstergirl and Gamergirl','Community','467833996597806'),(926,'Emma Stone','Artist','106183659413100'),(927,'DLSU Community Engagement','Community','392374254165171'),(928,'Cosa Nostra','College & University','273551402767212'),(929,'Dont Stop Dreaming - Motivation','Education Website','419494028119886'),(930,'NBA SHOW','TV Show','122663971239830'),(931,'The Urban Hour','Clothing (Brand)','189785941152099'),(932,'Tredtwo Community Service Program','Education','282396708531188'),(933,'HSG (Hayop Sa Ganda)','Community','288043677977086'),(934,'Word Derby','App Page','348698438535196'),(935,'Times Square Bazaar','Shopping/Retail','481510181900586'),(936,'Megan Fox','College & University','26748225422'),(937,'Sprite','Food & Beverage Company','354324801407162'),(938,'Maroon 5','Musician/Band','5330548481'),(939,'Flo Rida','Musician/Band','53856904324'),(940,'Jabbawockeez','Public Figure','8575300901'),(941,'Admiral General Aladeen','Politician','218432914898636'),(942,'Plants vs. Zombies','Video Game','57571168213'),(943,'Dragon Island','Games/Toys','265783756800542'),(944,'De La Salle Philippines','College & University','69975336072'),(945,'MilkisPH','Food & Beverage Company','158311157644770'),(946,'We Want Tekken Tag Tournament 2 For PSP','Community','215128795202909'),(947,'See more memes','Public Figure','199077356806843'),(948,'Marksam (charlson)','Local Business','468973866469513'),(949,'Tribe Sports','Product/Service','119899971399874'),(950,'DLSU - Manila Microsoft Student Partners','Computer Company','306531972771445'),(951,'DLSU memes','Society/Culture Website','316397358409025'),(952,'Limsanity','Comedian','271684166278266'),(953,'Alodia Gosiengfiao','Artist','152138396746'),(954,'Intellectual jokes','Just For Fun','403340046346275'),(955,'American Corner De La Salle University - Manila','Library','130395030332475'),(956,'De La Salle University Libraries','College & University','108525848800'),(957,'Crafts 4 Me','Shopping/Retail','343679299001457'),(958,'Chachi Gonzales','Dancer','245283208824876'),(959,'Carlyn Ocampo','Public Figure','102754806455051'),(960,'RÃ©mi GAILLARD','Artist','20069718524'),(961,'Jack TV Bring it Back: WWE','Amateur Sport Team','354751821222171'),(962,'Jack TV needs WWE because it\'s good for business.','Company','302356829827993'),(963,'NBA Memes','Media/News Company','367810133247517'),(964,'St. Stephens High School','Local Business','105881496110637'),(965,'Backyard Monsters','App Page','304561816235995'),(966,'Ninja Warz','App Page','286834098039842'),(967,'GAF','Author','154055244704697'),(968,'Trust Me, I\'m an \"Engineer\"','Science Website','290539813359'),(969,'9GAG','App Page','21785951839'),(970,'Enji Night','Artist','185875681447633'),(971,'Chachi Gonzales','Dancer','138046499598485'),(972,'America\'s Best Dance Crew','TV Show','11777891135'),(973,'Keanu Yu is Cornyyyy','Public Figure','114426378613812'),(974,'Uy, I love you!','Personal Website','127072183985708'),(975,'The Script','Musician/Band','10638675398'),(976,'Revenge? Nah I\'m too lazy, I\'m gonna sit here and let karma fuck you up.','Community','191081837578327'),(977,'Classes are suspended at all levels today due to strong prayers of students','Community','263925820289633'),(978,'Two and a Half Men','TV Show','36211311648'),(979,'Green Giant FM','Radio Station','77443957603'),(980,'Best ever game as a child: make sure the balloon does not touch the floor','Community','102232723185514'),(981,'YouTube','Product/Service','7270241753'),(982,'Tulog muna \'ko, para mamaya magrereview na (pero hindi na nagising)','News Personality','277009459761'),(983,'Saying \"I\'m almost there\" when you actually haven\'t even left the House','Community','331377567834'),(984,'Saint Stephen\'s High School','Local Business','104037689632972'),(985,'Jason Mraz','Musician/Band','6135205697'),(986,'Going on school trips and realising that the bus ride was the best part :D','Community','193617246919'),(987,'Pag may bagyo College lang may klase anong tingin niyo samin WaterProof','Community','141291475933457'),(988,'You call it Lazy, I call it energy Efficient.','Community','349205195365'),(989,'Jack TV','TV Network','105619339471493'),(990,'I HATE WHEN I FORGET TO PRESS SEND ON MY PHONE AND IâM SITTING LIKE AN IDIOT WAITING FOR A REPLY','Games/Toys','174504929231511'),(991,'YEAH I STUDIED. Then I forgot everything when I saw the paper.','Community','427490750400'),(992,'Miami Heat','Sports Team','284300559123'),(993,'Got Bored So i Logged Off, Then Logged back on Because i got bored..','Community','238419247108'),(994,'Bored = Mabagal ang Oras.:| Fun = Ang bilis ng oras.:(','Community','10150137079035112'),(995,'Di Bale Tamad Hindi Naman Pagod','Community','104401998193'),(996,'SANA TAMARIN AKONG MAGING TAMAD!','Community','120744051281524'),(997,'ang tunay na MATALINO hindi nagrereview, STOCK KNOWLEDGE LANG.','Entertainment Website','285517281220'),(998,'Ateneo de La Salle University','Society/Culture Website','39562664303'),(999,'LeBron James','Athlete','64637653943'),(1000,'Bruno Mars','Musician/Band','242567287243'),(1001,'Chuck Bartowski','Public Figure','47177955387'),(1002,'Nigahiga','Community','194010435510'),(1003,'John Cena','Athlete','9899376497'),(1004,'WWE SmackDown Live','TV Show','141584589185157'),(1005,'WWE','Sports League','7175346442'),(1006,'WWE Raw','TV Show','105570302809557'),(1007,'LPEP 2k11 May 4 - May 14','Product/Service','206533386047583'),(1008,'Batch Dos Mil Onse','Product/Service','143281119057634'),(1009,'Travie McCoy','Musician/Band','53390741957'),(1010,'Taio Cruz','Musician/Band','6679099553'),(1011,'Jason Derulo','Musician/Band','93944052260'),(1012,'Daughtry','Musician/Band','6299270457'),(1013,'Boys Like Girls','Musician/Band','5136344181'),(1014,'Bowling For Soup','Musician/Band','14622883803'),(1015,'Far East Movement','Musician/Band','5980403598'),(1016,'Black Eyed Peas','Musician/Band','58332338082'),(1017,'Sola Gracia 2011','Organization','162103420515248'),(1018,'Green Day','Musician/Band','21275344520'),(1019,'Computer','Interest','112916755385663'),(1020,'Games','Interest','111094678916711');
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
) ENGINE=InnoDB AUTO_INCREMENT=3786 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (3783,'Belated Happy Birthday Keanu! # pasimflex','10208799701895898','Marcelle Galera, Keanu Yu and Nicole Lim Choa',NULL,NULL,NULL,'2017','01','28',NULL,NULL,NULL),(3784,'Pretty sure the guys in purple have something against me\n\nWho\'s your friend who likes to play?\nBing Bong, Bing Bong\nHis rocket makes you yell \"Hooray!\"\nBing Bong, Bing Bong\nWho\'s the best in every way, and wants to sing this song to say\nBing Bong, Bing Bong!','10208625909351193','',NULL,NULL,NULL,'2017','01','08',NULL,NULL,NULL),(3785,'The Christmas calm before the New Year storm \n\nMerry Christmas!!!','10208519764497638','',NULL,NULL,NULL,'2016','12','25',NULL,NULL,NULL);
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

-- Dump completed on 2017-03-10  1:58:09
