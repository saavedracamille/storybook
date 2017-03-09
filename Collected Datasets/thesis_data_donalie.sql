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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (60,'02/22/1997','birthday'),(61,'Donalie','first_name'),(62,NULL,'middle_name'),(63,'Yap','last_name'),(64,'female','gender'),(65,'Manila, Philippines','location'),(66,'Malabon City','hometown');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (19,'Saint Jude Catholic School','High School',0000,NULL,'104191776282661'),(20,'Saint Jude Catholic School','College',0000,NULL,'134485206540'),(21,'De La Salle University','College',0000,'Industrial Engineering','127612997282544');
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
) ENGINE=InnoDB AUTO_INCREMENT=924 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (894,'LMN Presents: Only For The Strong 3','unsure','Henry-Lee Irwin Theater, ADMU','Quezon City','Philippines','1633111020340461'),(895,'Evana\'s Birthday :)','attending','4305 Jose Abad Santos Drive Bayview Village, Paranaque',NULL,NULL,'852936311481638'),(896,'Selene Julianne turns 18','attending','Dusit Thani Manila','Makati','Philippines','994698783925284'),(897,'Raissa Tan @18','attending','Quezon City Sports Club','Quezon City','Philippines','135199296835935'),(898,'Christine\'s turning 18 :D','attending','Diana Garden, Patio Victoria, Intramurous, Manila',NULL,NULL,'152543758423182'),(899,'FROSH BLOCK ASSEMBLY 2015: Be The Leader You Can Be','attending','De Lasalle University Manila William Shaw Theater','Manila','Philippines','530743497079714'),(900,'Nicole\'s 18th','attending','Cities Events Place','Quezon City','Philippines','860031410782931'),(901,'Rissa\'s 18th Debut','attending','11 Dinalupihan St. Damar Village Q.C.',NULL,NULL,'527630254055394'),(902,'Ver @ 18','attending','Barbara\'s, Intramuros','Intramuros','Philippines','1511296899162334'),(903,'Manila International Book Fair 2015','attending','SMX Convention Center','Pasay City','Philippines','1624162291199759'),(904,'Eunice @ 18','attending','Crowne Plaza Manila','Quezon City','Philippines','1631869290418183'),(905,'Diane Justine @ 18','attending','The Peninsula Manila','Makati','Philippines','857955910986586'),(906,'Kate Aivon @ 18','attending','New World Manila Bay Hotel','Manila','Philippines','1470162246629778'),(907,'18','attending','Maria Luisa\'s Garden Room At Makati Garden Club','Makati','Philippines','896637353736553'),(908,'Cassie @ 18','attending','City of Dreams Manila','ParaÃ±aque','Philippines','1379146855738423'),(909,'The Heart at Play Visit â¤','unsure','Sacred Heart of Jesus Parish','Quezon City','Philippines','1557257201196194'),(910,'ACET Results','unsure','Blue Eagle Gym, Ateneo De Manila University','Quezon City','Philippines','845192665524125'),(911,'New number :D','attending',NULL,NULL,NULL,'693504817366827'),(912,'H2C\'s DRAGON KNIGHT','unsure','Xavier School','San Juan','Philippines','314528272000536'),(913,'Lost  My Contacts :(','attending',NULL,NULL,NULL,'514271648592528'),(914,'Lost My Contacts','unsure',NULL,NULL,NULL,'423197564413817'),(915,'2A Pool Party!! :))','attending',NULL,NULL,NULL,'345938378829662'),(916,'NEED HELP FOR MY PROJECT','attending',NULL,NULL,NULL,'429625843739731'),(917,'NUMBERS! :> sun and globe! :\"> thanksss!!!','unsure',NULL,NULL,NULL,'871062149602419'),(918,'girls only!!!!!!','attending',NULL,NULL,NULL,'987463124598439'),(919,'PARTY!!!!!!!!!!!!!!!!!!!!!','attending',NULL,NULL,NULL,'964220266971284'),(920,'PARTY!!!!!!!!!!!!!!!!!!!!!','attending',NULL,NULL,NULL,'815774225125534'),(921,'christmas ','attending',NULL,NULL,NULL,'899483470108354'),(922,'Fre3 Slim PS3 for xmass','unsure',NULL,NULL,NULL,'838388496196859'),(923,'Belly Mama and All About Baby Fait','unsure',NULL,NULL,NULL,'923265894390569');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (110,'Jianne Marie Uy','sister','1480886951924477'),(111,'Michiko Pearl Palaran','sister','10212216468354752'),(112,'Shannon Dy','sister','1368880559836464'),(113,'Angelica Pitao','sister','10155090519629907'),(114,'Noreen Uy','cousin','1659146450767646'),(115,'Neale Eucariza','son','10208946080755072'),(116,'Auldwin Einstein Hui','son','10208514239878550'),(117,'Dominique Yap','sister','1407716485926369'),(118,'Veronica Tangcueco','sister','1718223914858025'),(119,'Ivan Angelo Limkico','son','1448724378502466'),(120,'Camille Agero','sister','10206463247099404'),(121,'Yolly Yap','mother','958218394315474'),(122,'Charlene Uy','cousin','1420060964681075');
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
) ENGINE=InnoDB AUTO_INCREMENT=1045 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (724,'Beauty Tutorial in 1 minute','Magazine','1864478310458910'),(725,'PupLife','Company','184808028685419'),(726,'BiteSized','Media/News Company','604637739689084'),(727,'Galore','Entertainment Website','414027951999273'),(728,'Absolute New York PH','Health/Beauty','620700381445847'),(729,'The Makeup Addicts','Personal Blog','1667830563457961'),(730,'Michael Faudet','Author','55252050115'),(731,'YummyYummy','Community','1706587886319180'),(732,'Calyxta','Health/Beauty','861247310582050'),(733,'Storyhaven.ph','Local Business','1670052619677606'),(734,'Max Factor','Cosmetics Store','147834272000846'),(735,'Sephora Philippines','Health/Beauty','1677242412540485'),(736,'Pretty Girl Manila','Health/Beauty','510864815595938'),(737,'The Girl on TV','Entertainment Website','1121974801198611'),(738,'Lasallian Excellence Awards','Organization','263372990525777'),(739,'Clozette.co','Media/News Company','160716953947826'),(740,'Candy Magazine','Teens/Kids Website','5886078129'),(741,'Sugar And Cotton','Clothing (Brand)','1708668382795851'),(742,'ZALORA','Clothing (Brand)','363577403658465'),(743,'The Mad Batter','Food & Beverage Company','244848712637211'),(744,'OFRA Cosmetics Laboratories','Company','149004249771'),(745,'Bun Revolution','Restaurant','1289103341157865'),(746,'Make Up Tips 101','Community','180968849012093'),(747,'BeautyMNL','Health/Beauty','1565571303669131'),(748,'The Scribbled Stories','Media/News Company','1156243537722760'),(749,'Project Vanity','Website','151812294854750'),(750,'Yummy PH','Magazine','7292251411'),(751,'NYX Professional Makeup Philippines','Health/Beauty','200692246728474'),(752,'Topshop Philippines','Clothing (Brand)','153686301310424'),(753,'MAC Cosmetics','Product/Service','16126780553'),(754,'RVR COB Week 2017','Community','745949118890804'),(755,'Archers Network','Local Business','740065782742153'),(756,'Maybelline Philippines','Health/Beauty','114944116100'),(757,'Cosmopolitan Philippines','Publisher','8623892949'),(758,'Trendsetter\'s Bazaar','Organization','212525368783071'),(759,'The Benildean Yearbook (Ad Astra)','Education','360652033964268'),(760,'La Salle Sports Commission','Organization','125557394258467'),(761,'Burger King Philippines','Restaurant','107720949105'),(762,'Nifty','Media/News Company','1679616822293043'),(763,'MetroDeal Manila','Internet Company','269962893036329'),(764,'Beauty Bar Philippines','Health/Beauty','109043165808685'),(765,'DesignHatch','Product/Service','100313203638612'),(766,'9GAG','App Page','21785951839'),(767,'Dlsu Usg','Organization','283415475102221'),(768,'L\'Oreal Paris Philippines','Health/Beauty','142092567176'),(769,'Funny World','Community','1285351848152038'),(770,'The Idealist','Arts/Humanities Website','212514318782022'),(771,'Sbarro Philippines','Italian Restaurant','100921516668929'),(772,'Cartridge for a Cause','Community','609479709262427'),(773,'Karabella Dairy','Party Supply & Rental Shop','370433423114856'),(774,'We Bare Bears','TV Show','794258940629247'),(775,'DLSU ECG','Organization','291637320929022'),(776,'DLSU MHAW: From Me to We','Community','330370027355600'),(777,'The Glass House Flowers','Local Business','682558195218491'),(778,'Elvy\'s Floral Design','Florist','388021014629598'),(779,'Lasallian Mission at DLSU','College & University','1434870233474888'),(780,'UniQube PH','Retail Company','1068425153172611'),(781,'Towards Uplifting Knowledge and Leadership Advancement Series','Organization','1150516855063207'),(782,'National Youth Business Convention','Non-Profit Organization','865401900263127'),(783,'National Book Store','Book Store','72546266913'),(784,'DTI - Design Center of the Philippines','Government Organization','222705441086675'),(785,'Yabu: House of Katsu','Restaurant','234592719930545'),(786,'Potter Drug','Community','474565416083206'),(787,'Project UPlift','Organization','1220868507965644'),(788,'Sundae Kids','Artist','1522018888083950'),(789,'Turks Savemore Green Residences','Grocery Store','1082798061785802'),(790,'Puuung','Artist','708146355884739'),(791,'Mood Board','Community','1651405211844575'),(792,'commonhat','Writer','1773575969549666'),(793,'The Most Beautiful Words','Society/Culture Website','741756475843612'),(794,'GineersNow','Media/News Company','979451052075778'),(795,'UST Interior Design Innovators','Interior Designer','473635126048219'),(796,'Santugon Sa Tawag Ng Panahon','Political Organization','244398732343'),(797,'UST Scarlet Architecture','Organization','665576780199339'),(798,'The Daily Dot','Media/News Company','127559550648374'),(799,'Fyi Shirts','App Page','1031403240241387'),(800,'Panda Security','Region','95000441700'),(801,'Chris Gardner','Author','101825001717'),(802,'Before I Fall','Book','278153405562568'),(803,'Art & Psychology','News/Media Website','149559765078597'),(804,'Artists Without Borders','Community','295207343847728'),(805,'Visual Art','Arts/Humanities Website','117828485053340'),(806,'Vainstream MNL','Product/Service','544634785696741'),(807,'DRAWING PENCIL','Artist','236259044902'),(808,'MovieWeb','News/Media Website','46132502198'),(809,'Quote Catalog','Website','415755701856463'),(810,'Drawing the Soul','Artist','406721062686530'),(811,'Art Times','Media/News Company','193852600651637'),(812,'Poems Ex','Community','666788006793720'),(813,'Movie Quotes','Movie','145452342247976'),(814,'Karl Davin Hui Photography','Photographer','1744180402467341'),(815,'Poemgasm','Society/Culture Website','861418100587090'),(816,'The last thing I want to do is hurt you. But it\'s still on the list.','Musician','173926809373197'),(817,'Amaan Shaikh','Public Figure','204525509895513'),(818,'Premium Brand SJ','Clothing (Brand)','374591736018753'),(819,'Lang Leav','Author','175921115793636'),(820,'Maroon FM','Organization','557286961039787'),(821,'Love and happiness','Other','1047317471997391'),(822,'Berlin ArtParasites','Arts/Humanities Website','199504240099510'),(823,'Scream Poems.','Public Figure','1607091886245506'),(824,'The Artidote','Community','742359879214163'),(825,'Investment Summit 2016: Make Your Money Work','Finance Company','766766303455424'),(826,'Poems Porn','Health/Wellness Website','638963772825875'),(827,'The Art Struggle','Community','205640079778384'),(828,'Cirque: Engineering Week 2016','Community','1079253202125328'),(829,'Paragon Business Summit','Education','1692479617700053'),(830,'SJCS G10 Production: The Wedding Singer','Theatrical Play','209078629442420'),(831,'Thought Catalog','Website','166652001866'),(832,'The Lunatics','Community','359449774112666'),(833,'The Honest Musings','Writer','736066066468341'),(834,'Muchacho','Local Business','1062128473807535'),(835,'J. Cookies','Food & Beverage Company','1724109837821353'),(836,'Collision: Beyond Luminaria','Website','849973611688303'),(837,'Wonderland: SJCS Fair 2016','Organization','1673426709564979'),(838,'Preview Magazine','Magazine','30709126500'),(839,'The Border Collective','Community','1100355433322215'),(840,'Ankle Upgrade','Clothing (Brand)','1733537683542816'),(841,'Old Navy','Clothing (Brand)','642172419170228'),(842,'GTW by SM','Clothing (Brand)','1509065315989757'),(843,'Word Porn','Education Website','252006304935213'),(844,'Beeloved by Laura','Grocery Store','1099494696757952'),(845,'SPARK Online Magazine','Magazine','824217557675366'),(846,'Harry Potter','Movie','156794164312'),(847,'Animal Fans','Cause','1495280870766845'),(848,'IMES','Organization','1489018524747003'),(849,'Frozen','Movie','482368755113431'),(850,'LPEP 2K15','Community','1588399598100568'),(851,'spot.ph','News/Media Website','95376613038'),(852,'Andi Guck-Eigenmann','Artist','474556239371194'),(853,'SJCS Alumni Association','Non-Profit Organization','132541283468473'),(854,'Mga Kontemporaryong Isyu','Community','1871408919751376'),(855,'Enfant Shop','Baby Goods/Kids Goods','988311957880737'),(856,'Unifying the World with English','Community','714200848701910'),(857,'The Burger Transit #TBT','Local Business','984717211563173'),(858,'BuzzFeed','Media/News Company','21898300328'),(859,'You Especially','Local Business','993826197308245'),(860,'The Penthouse','Retail Company','1552433141657248'),(861,'Asia\'s Got Talent','TV Show','703304123049906'),(862,'SJCS Comelec','Community','641470342648113'),(863,'Luis Antonio Tagle','Public Figure','398381820327147'),(864,'American Idol','TV Show','123984435600'),(865,'Elite Daily','Media/News Company','237865036265136'),(866,'Enigma: The 2015 SJCS Junior Senior Promenade','Community','1519164088366672'),(867,'Apartment 8 Clothing','Clothing (Brand)','164317030351368'),(868,'Power Plant Mall','Shopping District','24627376975'),(869,'Segway Tours Manila','Tour Agency','305626516289904'),(870,'Alterchitecture: An Ideas Competition on Architectural Innovation','Education','779831138751263'),(871,'Freemake','Computers/Internet Website','125351867496875'),(872,'Philippine Model Congress','Community Organization','315470055213201'),(873,'Elevation - The SJCS Dance Troupe','Organization','422615587879373'),(874,'Lucy in the Sky Cafe','Restaurant','512537465543024'),(875,'Saint Jude Catholic School - High School Department (Basic Education)','Education','325618054182379'),(876,'STAR World Asia','TV Network','201857354576'),(877,'The Filipino Physician-Scientist','Community','861346450559034'),(878,'El Carnaval Supremo','Community','244229815770742'),(879,'OASIS Science - Saint Jude Catholic School','Organization','183314495060826'),(880,'LOLA - Cinemalaya 2014 Short Film','Movie','220267714838164'),(881,'Enfant','Baby Goods/Kids Goods','34709794182'),(882,'BatteRice','Community','259082317615294'),(883,'Sarah Geronimo','Artist','257018236749'),(884,'Baby Daddy','TV Show','232121346835096'),(885,'Pitch Perfect','Movie','220023461397598'),(886,'Jump Street Movies','Movie','162936223795683'),(887,'Titanic','Movie','216410885045047'),(888,'Ted','Movie','317928348241564'),(889,'Pitong Demonyo ng Modernismo','Community','239123052948120'),(890,'The Fault in Our Stars','Movie','1374238589472726'),(891,'Video2mp3','Website','208429991436'),(892,'Yeng Constantino','Musician/Band','108906725836105'),(893,'John Wall','Athlete','120812557944565'),(894,'Walden Media','Movie/Television Studio','47604716120'),(895,'Trending Topics Worldwide','Website','227816007417133'),(896,'Sandwich Corner','Grocery Store','482279298566926'),(897,'DADS Glorietta','Restaurant','674525582586380'),(898,'123 Smile','Camera/Photo','179585672076725'),(899,'Panic! At The Disco','Musician/Band','6087073417'),(900,'Gracenote','Musician/Band','76745547282'),(901,'The Quirky Shop','Clothing (Brand)','674467492594195'),(902,'Patrick Dempsey','Artist','1446218465605053'),(903,'BMS Presents: The Attic Bazaar','Shopping & Retail','1401298526782393'),(904,'silent sanctuary','Musician/Band','8254084266'),(905,'Callalily','Musician/Band','13062710791'),(906,'The All-American Rejects','Musician/Band','27422071944'),(907,'Parokya ni Edgar','Musician/Band','108261248299'),(908,'Rico Blanco','Musician/Band','22484103962'),(909,'Chicosci','Musician/Band','119227080079'),(910,'Miley Cyrus','Musician/Band','5845317146'),(911,'Red Jumpsuit Apparatus','Musician/Band','107159332655487'),(912,'Sponge Cola','Musician/Band','11467460228'),(913,'Secondhand Serenade','Musician/Band','5681198769'),(914,'Robert Downey Jr','Artist','154213784747095'),(915,'Tokyo Otaku Mode','Entertainment Website','187477207946509'),(916,'Hyalure','Health/Beauty','268256933274464'),(917,'Artkits','Professional Service','204639116241663'),(918,'Kaley Cuoco','Artist','23828249681'),(919,'Josh Duhamel','Artist','8236753001'),(920,'Dr. Sheldon Cooper','Fictional Character','146215045528205'),(921,'ACTS Review & Tutorial Center','Education','36077886121'),(922,'The Pen: The Ultimate Creative Writing Challenge','Community','311878062280929'),(923,'Sheldon Cooper from Big Bang Theory','Public Figure','123800034354148'),(924,'Pepperazzi','Public & Government Services','629020250454589'),(925,'JS Prom 2014','School','1419011008328567'),(926,'Coolman Enterprise','Company','168325730022565'),(927,'Anjo Damiles','Movie Character','119969201409320'),(928,'Grey\'s Anatomy','TV Show','68471055646'),(929,'Sheldon Cooper','Fictional Character','23519525029'),(930,'Cara Mia Cakes & Gelato','Local Business','323309083546'),(931,'Makabata Para sa Bayan, Inc.','Local Business','158341037542747'),(932,'SPARKNOTES','Company','93416890090'),(933,'Girls\' Generation','Musician/Band','112074815472107'),(934,'Sherri Hill','Company','156739572204'),(935,'Narnia Fans','Entertainment Website','166834386695758'),(936,'Prom Dresses Sherri Hill','Clothing (Brand)','130131917131721'),(937,'My Little Art Place','Art Gallery','9070897855'),(938,'Gossip Girl','Entertainment Website','118350410327'),(939,'Gossip Girl','Book','7945514907'),(940,'Gossip Girl','TV Show','8811587900'),(941,'Pao Pao Xiao Chi','Restaurant','253414801471037'),(942,'Peak Performance Dance and Fitness','Outdoor, Recreation & Fitness','157139881012583'),(943,'IMDb','Entertainment Website','15925638948'),(944,'Kwick Industrial Technologies, Inc','Company','143684572441464'),(945,'SJCS Student Council Central Board','Government Organization','324187347637584'),(946,'Communist Party of China','Political Party','106289742735035'),(947,'The Bourne Legacy','Movie','170195956338914'),(948,'SuperSale Bazaar','Shopping & Retail','209022395803680'),(949,'Cellular','Movie','119303898093466'),(950,'Growing Up','TV Show','176342692420853'),(951,'Gandang Gabi Vice','TV Show','210116562344852'),(952,'Burberry','Clothing (Brand)','122792026424'),(953,'It Girl','App Page','361832257177247'),(954,'CSI: Crime City','App Page','325669294118466'),(955,'Res|Toe|Run','Product/Service','147576781856'),(956,'The Mortal Instruments','Book','221358454555895'),(957,'ìëìë(Girls\' Generation)','Musician/Band','216732611680045'),(958,'Rotten Tomatoes','Entertainment Website','7899892356'),(959,'Park Dong Joo','Fictional Character','153088981379829'),(960,'Kimi Ni Todoke','TV Show','186322970768'),(961,'Leap Year','Movie','196307690738'),(962,'George Sampson','Actor','29798024456'),(963,'Laughing','Interest','137069046317139'),(964,'Fairy Tail','Book Series','109748592385403'),(965,'ShutUpImTalking.com','Company','25499962056'),(966,'Orphan','Movie','68003267181'),(967,'Friends','TV Show','112335462112397'),(968,'Clash of the Titans','Movie','107322412447'),(969,'My Best Friend\'s Wedding','Movie','103765812995397'),(970,'The Social Network Movie','Movie','160640653979986'),(971,'CeRtified Single!![Single nga ba?] xd','Community','119611071385255'),(972,'Ratatouille','Movie','17377140236'),(973,'Oreo','Food & Beverage Company','114998944652'),(974,'Maltesers','Company','14186044387'),(975,'ayokong isipin mo na hindi na ko masaya :|','Community','134188636596947'),(976,'Saint Jude Catholic School','High School','134485206540'),(977,'All Gladiator Sandals','Website','121566904549795'),(978,'Fully Booked','Book Store','88599481435'),(979,'AKON','Musician/Band','16929140023'),(980,'Britney Spears','Musician/Band','39677118233'),(981,'Lacoste','Company','1691107967789681'),(982,'Avril Lavigne','Musician/Band','5413509299'),(983,'Carrie Underwood','Musician/Band','5240049567'),(984,'Chris Brown','Musician/Band','6329881653'),(985,'CrowdStar','Company','182924960506'),(986,'Jonas Brothers','Musician/Band','5836432901'),(987,'Cheer Up, Emo Kid Comics','Entertainment Website','35184964143'),(988,'Iyaz','Musician/Band','115879212562'),(989,'Eminem','Musician/Band','45309870078'),(990,'Drake','Musician/Band','83711079303'),(991,'Witness to the Word','Book','110576278527'),(992,'Lola Techie','Local Business','86566829719'),(993,'Ann Louie Li ææå®','Public Figure','108830117947'),(994,'Fall Out Boy','Musician/Band','7218745779'),(995,'Paris Hilton\'s My New BFF','TV Show','25736998929'),(996,'I Hate when You Write Someone a Whole Paragraph, and They Reply \"ok\"','Community','178740797765'),(997,'Daughtry','Musician/Band','6299270457'),(998,'I\'m sorry, I love you','Telecommunication Company','39984726266'),(999,'Music <3','Community','107016675990227'),(1000,'Patrick Star','Fictional Character','50403195950'),(1001,'BeyoncÃ©','Musician/Band','28940545600'),(1002,'Ferrero Rocher','Food & Beverage Company','202986543445543'),(1003,'ZARA','Clothing (Brand)','33331950906'),(1004,'The Box','Movie','79526063932'),(1005,'Open Water','Public Figure','115062217089'),(1006,'Open Water','Movie','107679655928193'),(1007,'*NSYNC','Musician/Band','58435282258'),(1008,'Don\'t give up on God because he never gave up on you..:)','Media/News Company','377084603901'),(1009,'Staplers','Community','10406384262'),(1010,'Ashley Tisdale','Artist','6845141683'),(1011,'De La Salle Green Archers','Amateur Sports Team','16634852850'),(1012,'Facebook','Product/Service','20531316728'),(1013,'Kelly Clarkson','Musician/Band','18481194560'),(1014,'Monopoly','Games/Toys','11384491516'),(1015,'John LLoyd Cruz','Artist','185475218118'),(1016,'Hayden Christensen','Artist','43728377888'),(1017,'PhilippineBeaches.org','Local/Travel Website','93092782294'),(1018,'Jason Mraz','Musician/Band','6135205697'),(1019,'Enrique Iglesias','Musician/Band','19061333123'),(1020,'The Social Network','Movie','105460422821089'),(1021,'Up','Movie','118194755634'),(1022,'Backstreet Boys','Musician/Band','5736008378'),(1023,'Linkin Park','Musician/Band','8210451787'),(1024,'David Archuleta','Musician/Band','15381227659'),(1025,'Fretzie Joans R. Bercede','Artist','112164395477925'),(1026,'Big Time Rush','Musician/Band','175461263128'),(1027,'MLTR','Musician/Band','115556265123418'),(1028,'Tyra Banks','Public Figure','189777398751'),(1029,'Americaâs Next Top Model','TV Show','8816160747'),(1030,'Winnie the Pooh','Movie','136775446236'),(1031,'FlyFF (Fly For Fun) Game','Video Game','132199219122'),(1032,'Flyff','Games/Toys','12112034035'),(1033,'Hobbes and Landes','Product/Service','118772023479'),(1034,'PBB TEEN CLASH of 2010','TV Show','105524269487142'),(1035,'I\'m Not RELIGIOUS, I just LOVE JESUS!','Public Figure','257367959033'),(1036,'BETTER LATE THAN \"ABSENT\"','Community','323422579693'),(1037,'JOHN WONG','Community','112946985401114'),(1038,'MYX Philippines','TV Channel','145388032112'),(1039,'Logan Lerman','Public Figure','172192712664'),(1040,'Giving someone you hate a code name so you can talk about them freely','Community','214507227149'),(1041,'Pretending that my eyes are itchy when I REALLY cant hold the TEARS anymore','Community','105243082838680'),(1042,'On Air with Ryan Seacrest','Radio Station','24636146951'),(1043,'Earth Hour','Non-Profit Organization','6867084435'),(1044,'I hate when my parents rush me to get ready and then when I am, they\'re not','Community','244490774885');
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
) ENGINE=InnoDB AUTO_INCREMENT=4178 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (4055,'2 decades down.\nAnd a million more pringles to go :)\nTo my out-of-this-world friends who made my birthday extra special, thank you.\nThank you for making me feel so so young at heart â¡','1568056023224532','',NULL,NULL,NULL,'2017','02','23',NULL,NULL,NULL),(4056,'Redefining beauty.\n\nMake up by my one and only favorite sister, Dominique Yap :)\n#makeupbydomyap','1523483541015114','',NULL,NULL,NULL,'2017','01','11',NULL,NULL,NULL),(4057,'I put my heart and soul into my art, and i lost my mind in the process. - Van Gogh','1483605151669620','',NULL,NULL,NULL,'2016','12','11',NULL,NULL,NULL),(4058,'This picture truly encapsulates how happy I am (or should i say you are :p) when we\'re together. ;) have a safe trip Sherry! \nI\'ll miss you <3\n(c) Michiko Pearl Palaran','1476357622394373','',NULL,NULL,NULL,'2016','12','07',NULL,NULL,NULL),(4059,'Uy Rad \'friends\' daw tayo\nChristine Tan','1439292636100872','Rad Chua',NULL,NULL,NULL,'2016','11','04',NULL,NULL,NULL),(4060,'ganda ko talaga','1340960375934099','',NULL,NULL,NULL,'2016','07','26',NULL,NULL,NULL),(4061,'pak ganern','1340960259267444','',NULL,NULL,NULL,'2016','07','26',NULL,NULL,NULL),(4062,'ang ganda ko','1325337744163029','',NULL,NULL,NULL,'2016','07','05',NULL,NULL,NULL),(4063,'When you tired as hell but still remain cute','1324830420880428','',NULL,NULL,NULL,'2016','07','06',NULL,NULL,NULL),(4064,'Thanks mama Yolly Yap and papa for always saying the three words :)','1303081959721941','',NULL,NULL,NULL,'2016','06','05',NULL,NULL,NULL),(4065,'To the adorkable woman who taught me that impossible is just a word when you do things for the people that you love.\nHAPPY MOTHER\'S DAY, my Mama Yolly!\nLove, \nYour one and only baby Dona','1285379711492166','',NULL,NULL,NULL,'2016','05','10',NULL,NULL,NULL),(4066,'Happy birthday Justine T. Saria ;)) i know you dont like posting pictures but i will anyway. 7 years of \'best friendship\' and counting-- i know it will last a lifetime. Longer-- than forever. ;) enjoy the day! You know the rest :)','1273466922683445','',NULL,NULL,NULL,'2016','04','20',NULL,NULL,NULL),(4067,'Damn right this is','1263745583655579','',NULL,NULL,NULL,'2016','04','06',NULL,NULL,NULL),(4068,'HAPPY HAPPY BIRTHDAY MATT! sana nakabawi na ako dito! hihihi :) i didnt forget it after all hahaha','1175479999148805','Matthew De Dios',NULL,NULL,NULL,'2015','12','03',NULL,NULL,NULL),(4069,'HAPPY HAPPY BIRTHDAY GWWYYY :)) enjoy the day!','1160144327349039','Ma Victoria Valderrama, Celine Solis, David Zinampan, Curtis Garcia, Renee Khyleen Julia Te, Gwynette Sy, Eduardo Gargarita, Matthew De Dios, Diego Pantaleon, Jordan See, John Gacal and Cali Delos Reyes',NULL,NULL,NULL,'2015','11','03',NULL,NULL,NULL),(4070,'Angee! Before the day ends, I just want to thank you sa lahat, sa tagal tagal na nating magkaibgan, you\'ve always accepted me for who I truly am. Alam ko lagi ka lang nanjan for me, and il always be here for you. Happy happy birthday! I super miss you haha','1157389060957899','Angelica Pitao',NULL,NULL,NULL,'2015','10','29',NULL,NULL,NULL),(4071,'Para sa isa sa mga pinakamaalalahanin, mapagmahal, at baliw na kaibigan, sobrang nagpapasalamat ako dahil ako\'y nabiyayaan ng isang taong katulad mo. :) salamat sa lahat ng pasensya, pag-unawa at pag-alaga (haha) sa akin, dahil dito hindi ko lubusang kayang gunitain ang isang buhay na wala ka roon. At ngayong may nagpapatibok na ng puso mo, ang tanging hangad ko lang ay maging mas mas maligaya, at sana\'y harapin mo ang buhay, na puno ng pagmamahal. Maligayang kaarawan, champy! \'Why do you love christine?\' \'Because i just really really do.\' HAHAHAHA','1157353004294838','Christine Tan',NULL,NULL,NULL,'2015','10','28',NULL,NULL,NULL),(4072,'To one of the most talented and sweetest girl i know, happy happy birthday Nicole Sean Chiang! Love you hihi :)','1152478598115612','Veronica Tangcueco, Christine Tan, Kate Au, Zeus Keyns Chua, Francis Choa Jr., Monica Chen, Diane Ong, Frances To, Nicole Sean Chiang, Harold Tan and Kelsey Tiu',NULL,NULL,NULL,'2015','10','18',NULL,NULL,NULL),(4073,'To the lady that has never failed to make me smile, Happy Happy Birthday Diane Ong! Stay bubbly, and sympre crazy! HAHAHA love you!','1129523213744484','',NULL,NULL,NULL,'2015','09','06',NULL,NULL,NULL),(4074,'Christine Tan now u understand haha','1117337198296419','',NULL,NULL,NULL,'2015','08','16',NULL,NULL,NULL),(4075,'To the girl who has always been larger than life- I wouldn\'t be the same without you. Happy birthday Henrika Lim! :)','1113550378675101','Henrika Lim',NULL,NULL,NULL,'2015','08','10',NULL,NULL,NULL),(4076,'La Salle, get ready for Dona. Starting the school year with a bang! #LPEP2K15 #sabog','1112485348781604','',NULL,NULL,NULL,'2015','08','09',NULL,NULL,NULL),(4077,'Christine Tan','1110000275696778','',NULL,NULL,NULL,'2015','08','03',NULL,NULL,NULL),(4078,'Michiko Pearl Palaran HAHAHAHAHA','1102326303130842','',NULL,NULL,NULL,'2015','07','19',NULL,NULL,NULL),(4079,'#KCandBeyond','1093744203989052','Christine Tan, Raissa Tan, Angelica Pitao and Alexis Chua',NULL,NULL,NULL,'2015','07','05',NULL,NULL,NULL),(4080,'Throwback to a year ago Kate Au!! Happy happy birthday kate! Salamat sa pagiging isa sa pinakagkakatiwalaan at pinakaminamahal kong kaibigan. Read the letter nalang kate!! Along sa gift ko :) enjoy your day! #walangforever kasi umaalis na kaagad si enrique (hinanap ko pa naman sa backstage)','1093721987324607','',NULL,NULL,NULL,'2015','07','05',NULL,NULL,NULL),(4081,'Christine Tan ito un nhhhh','1089122524451220','',NULL,NULL,NULL,'2015','06','28',NULL,NULL,NULL),(4082,'#almostsolved. ALMOST.','1081834178513388','Justine T. Saria, Christine Tan, Sherry Te and Cecilia Estrada','Mystery Manila Makati Branch','Makati','Philippines','2015','06','14',NULL,NULL,NULL),(4083,'2A-3D reunion :)','1075494185814054','Curtis Garcia, Christine Tan, Erica Marie Kok, Sherry Te, Jillian Ang, Rad Chua, Francis Choa Jr., Kirsten Belle Tai, Rissa Lim, Michael Ron Lao, Marc Uy, Phillip Ng, Selene Julianne Tan and Clark Co','Project Pie, Blue Bay, Pasay','Pasay City','Philippines','2015','06','09',NULL,NULL,NULL),(4084,'Justine T. FINALLY hahaha','1051445238218949','',NULL,NULL,NULL,'2015','04','30',NULL,NULL,NULL),(4085,'Cherie Shu ito nalang panuorin ntn haha','1044730728890400','',NULL,NULL,NULL,'2015','04','13',NULL,NULL,NULL),(4086,'Cecilia Estrada!!!','1041656109197862','',NULL,NULL,NULL,'2015','04','09',NULL,NULL,NULL),(4087,'Christine Tan Kate Au','1038816599481813','',NULL,NULL,NULL,'2015','04','07',NULL,NULL,NULL),(4088,'SPOT ON','1032143170149156','',NULL,NULL,NULL,'2015','03','24',NULL,NULL,NULL),(4089,'Kate Au Christine Tan <3 <3 <3','1027737583923048','',NULL,NULL,NULL,'2015','03','16',NULL,NULL,NULL),(4090,'Justine T. Saria SANA BGYAN RN TAYO HAHAHAHA','1023686300994843','',NULL,NULL,NULL,'2015','03','10',NULL,NULL,NULL),(4091,'Vote wisely guys :-)','1001791683184305','',NULL,NULL,NULL,'2015','02','04',NULL,NULL,NULL),(4092,'Hihihihi <3 wish u were true <3','1000162690013871','',NULL,NULL,NULL,'2015','01','31',NULL,NULL,NULL),(4093,'Justine T. Saria 1 3 5 6 hahahaha','990426114320862','',NULL,NULL,NULL,'2015','01','16',NULL,NULL,NULL),(4094,'Kate Au bawal na tyo mtulog ng late nakakamatay daw','930961300267344','',NULL,NULL,NULL,'2014','10','16',NULL,NULL,NULL),(4095,'Guysss please like and share!!','930512166978924','',NULL,NULL,NULL,'2014','10','15',NULL,NULL,NULL),(4096,'Guyysss please like and shareee!','930511993645608','',NULL,NULL,NULL,'2014','10','15',NULL,NULL,NULL),(4097,'Distance will not only define our friendship, it will defy it. Happy birthday Janine Co! Hope everything is well!','915203361843138','',NULL,NULL,NULL,'2014','09','20',NULL,NULL,NULL),(4098,'Ordered mcflurry and McSpaghetti at Jolibee. Muntik na ako magalit dhl bakit hnd makuha ng tindera. Stupid mistake, the tindera absolutely did not look happy. Laughed my ass off when i left the store haahaha # sabaw#sabog','897513950278746','',NULL,NULL,NULL,'2014','08','21',NULL,NULL,NULL),(4099,'Christine Tan Justine T. Saria Cecilia Estrada\nSherry Te will bring us everywhere yeeeyyy!!','887114614652013','',NULL,NULL,NULL,'2014','07','31',NULL,NULL,NULL),(4100,'Michiko Pearl Palaran OH NOOO','887013247995483','',NULL,NULL,NULL,'2014','07','31',NULL,NULL,NULL),(4101,'WTFFF THIS CANT BE HAPPENINGGGGGGGGG Justine T. Saria Shannon Dy','885032968193511','',NULL,NULL,NULL,'2014','07','28',NULL,NULL,NULL),(4102,'Justine T. Saria Aldwin Dee Uy Willard Ong go to korea now guys.(cant believe this is happening)','808903195806489','',NULL,NULL,NULL,'2014','03','23',NULL,NULL,NULL),(4103,'<3','806767339353408','Erica Marie Kok, Jillian Ang, Guadalein Tanunliong and Selene Julianne Tan',NULL,NULL,NULL,'2014','03','18',NULL,NULL,NULL),(4104,'wish i could do this','799424980087644','',NULL,NULL,NULL,'2014','03','05',NULL,NULL,NULL),(4105,'kahit na tapos na birthday ko, i just want to sincerely thank all the people who exerted their time, effort and energy na mapasaya ako sa special day ko. You guys made me smile, and cry at the same time :) sorry sa lateeeee post!!!! love you guys :) Erica Marie KokChristine TanJillian Ang Guadalein Tanunliong Selene Julianne Tan Nathaniel Santiago Ernest Pua Alexis Chua Matthew Tanking Andrey Chan Michael Ron Lao Stephanie MIchelle Ng Curtis Garcia Phillip Ng Franklin Ng Marc Uy Johnson Shi Henrika Ann Sze Lim Shannon Dy Sherry Te Kirsten Belle Tai Veronica Co Clark Co Justine T. SariaGiana Nuncio Willard Ong','794844113879064','',NULL,NULL,NULL,'2016','01','17',NULL,NULL,NULL),(4106,'damn','765273416836134','',NULL,NULL,NULL,'2014','01','07',NULL,NULL,NULL),(4107,'hi erich! nice one\r\nErica Marie Kok Christine Tan','755230834507059','',NULL,NULL,NULL,'2013','12','23',NULL,NULL,NULL),(4108,'lumitaw ka na kasi!','680813441948799','',NULL,NULL,NULL,'2013','08','18',NULL,NULL,NULL),(4109,'JUST MET IRON MAN HAHA :)))','623399691023508','','Hysan Place','Causeway Bay','Hong Kong','2013','05','09',NULL,NULL,NULL),(4110,'\"Some painters transform the sun into a yellow spot, others transform a yellow spot into a sun.\" - Pablo Picasso','608927012470776','',NULL,NULL,NULL,'2013','04','05',NULL,NULL,NULL),(4111,'Erica Marie KokRissa LimJillian Ang Selene Julianne Tan eto un eh! \r\nChristine Tan Andrey Chan a girl from the nail something said that i look like a girl from this movie! :0','601269999903144','',NULL,NULL,NULL,'2013','03','21',NULL,NULL,NULL),(4112,'The itsy bitsy spider went up the water spout.\nDown came the rain and washed the spider out.\nOut came the sun and dried up all the rain\nAnd the itsy bitsy spider went up the spout again.','558435264186618','',NULL,NULL,NULL,'2013','01','08',NULL,NULL,NULL),(4113,'Absence, makes the heart grow fonder. :)','528792207150924','',NULL,NULL,NULL,'2012','11','05',NULL,NULL,NULL),(4114,'Johnson Shi kaya mo to haha','369998933077767','',NULL,NULL,NULL,'2012','09','16',NULL,NULL,NULL),(4115,'SINO ANG LOSER NGAYON. SUS WATCHED IT NA DN :)\nChristine Tan Julian Uy Nicolle Yao Rissa Lim','464025636964604','',NULL,NULL,NULL,'2012','08','30',NULL,NULL,NULL),(4116,'pissed off. pissed off. pissed off.','494059153957563','',NULL,NULL,NULL,'2012','08','22',NULL,NULL,NULL),(4117,'give me paintbrushes and speakers.\nNOW.\nJustine T. Saria','490266877670124','',NULL,NULL,NULL,'2012','08','11',NULL,NULL,NULL),(4118,'not decent. \nJustine T. Saria','490265161003629','',NULL,NULL,NULL,'2012','08','11',NULL,NULL,NULL),(4119,'God didn\'t do everything in one day.\nwhat makes me think i can?','482393978457414','',NULL,NULL,NULL,'2012','07','24',NULL,NULL,NULL),(4120,'If i look into her eyes, it\'s as if, i could reach the unreachable.\n- peter parker','467144619982350','',NULL,NULL,NULL,'2012','06','22',NULL,NULL,NULL),(4121,'Get a Booth at the Superb and SuperSale Bazaars + Marketing Add-ons','442550749108404','',NULL,NULL,NULL,'2012','05','16',NULL,NULL,NULL),(4122,'just signed up for first dibs on premium deals, exclusively through Deal Dozen','442546595775486','',NULL,NULL,NULL,'2012','05','16',NULL,NULL,NULL),(4123,'Get a Booth at the Superb and SuperSale Bazaars + Marketing Add-ons','442522205777925','',NULL,NULL,NULL,'2012','05','16',NULL,NULL,NULL),(4124,'Get a Booth at the Superb and SuperSale Bazaars + Marketing Add-ons','442488805781265','',NULL,NULL,NULL,'2012','05','16',NULL,NULL,NULL),(4125,'bonding with sistah! :p :p','435940233102789','Dominique Yap','Vikings-Moa','Pasay City','Philippines','2012','05','10',NULL,NULL,NULL),(4126,'ang init super! even in the pool! 0.0','431270150236464','',NULL,NULL,NULL,'2012','05','02',NULL,NULL,NULL),(4127,'Marvel\'s The Avengers http://t.co/bLjH7zF via @RottenTomatoes','428782267151919','',NULL,NULL,NULL,'2012','04','29',NULL,NULL,NULL),(4128,'just got a new twitter :)) follow meh!','409678369062309','',NULL,NULL,NULL,'2012','04','07',NULL,NULL,NULL),(4129,'http://t.co/2yNOxKU','409677202395759','',NULL,NULL,NULL,'2012','04','07',NULL,NULL,NULL),(4130,'It\'s not about me or any of the members of this party. It\'s about you, Judenites. And together, we shall make your LEGACY!\n\nPresident: Renz Chong\nVice President: Carissa Lim\nSecretary: Evangeline Huang\nAsst. Secretary: Ava Lee\nTreasurer: Justine Lesley Sy Chan\nAsst. Treasurer: Lowell Tiu\nBusiness Manager: Marjerie Go\nAsst. Business Manager: Abegail Lee\nP.R.O. : Ria Chong\nAsst. P.R.O. : Diane Ong\nBoy Marshall: Raymond Chua\nGirl Marshall: Alexandra Go\n\nVOTE STRAIGHT! VOTE LEGACY\nLeaders Empowering the Growth, Aspirations and Choices of the Youth!!!','347843828579097','',NULL,NULL,NULL,'2012','01','19',NULL,NULL,NULL),(4131,'glng kay Justine T. Saria\nwag ka nga epal, taken na cya eh. kht tanggalin mo ang T, aken pa dn cya wahahahaha','252966488066832','',NULL,NULL,NULL,'2011','08','09',NULL,NULL,NULL),(4132,'nahulog ako sa hagdan, ang dapat gumamot sa akin ay may ginagamot pang iba :(','246721078691373','',NULL,NULL,NULL,'2011','08','04',NULL,NULL,NULL),(4133,'Andrea Christianne Uy eto na haha! :) ang sad ng vid eh..','197160013675672','',NULL,NULL,NULL,'2011','07','27',NULL,NULL,NULL),(4134,'Francis SaezAndrea Christianne Uy\nsaez: d k pnost ung original music vid, medyo bastos eh.. but okay ung song super whahaha! :) nakakarelate.\n','144381912308184','',NULL,NULL,NULL,'2011','07','22',NULL,NULL,NULL),(4135,'Piglet: \"How do you spell LOVE?\" \nWinnie The Pooh: \"You donât spell it. You, feel it.\"','230501273646687','',NULL,NULL,NULL,'2011','07','13',NULL,NULL,NULL),(4136,'WTF!! donalie I can\'t believe you\'re in this vid','130840136991170','',NULL,NULL,NULL,'2011','05','16',NULL,NULL,NULL),(4137,'OMG donalie why are you tagged in this video','222528331092261','',NULL,NULL,NULL,'2011','05','16',NULL,NULL,NULL),(4138,'love people and use things.\nnot love things and use people.','216323541731127','',NULL,NULL,NULL,'2011','05','19',NULL,NULL,NULL),(4139,'my heart skips a beat :) \nJustine T. Saria','214715378558610','',NULL,NULL,NULL,'2011','05','12',NULL,NULL,NULL),(4140,'plantation bay. cebu :)','213139318716216','',NULL,NULL,NULL,'2011','06','27',NULL,NULL,NULL),(4141,'its not bad to dream.. libre pa :)','206572196039595','',NULL,NULL,NULL,'2011','04','16',NULL,NULL,NULL),(4142,'True love is an acceptance of all that is, has been, will be, and will not be.','201907359839412','',NULL,NULL,NULL,'2011','04','04',NULL,NULL,NULL),(4143,'everyone wants happiness, no one wants pain.. but you cant make a rainbow, without a little rain.. :))','187039024663437','',NULL,NULL,NULL,'2011','02','11',NULL,NULL,NULL),(4144,'happy :))','181018051933914','',NULL,NULL,NULL,'2011','02','07',NULL,NULL,NULL),(4145,'if you feel like you are at the bottom of the rope, tie a knot.. and hang on :))','196080077072119','',NULL,NULL,NULL,'2011','01','24',NULL,NULL,NULL),(4146,'hnd k kailangang lumaban upang ipakita na hnd ako nagpapatalo at nagpapaapi, i already won in my own way.. i have TRUE friends.. tnx for always being there when evrybody else is not.. :)) \nMichiko Pearl Palaran Angelica Pitao Camille Janine Monica Bianca Morales Joshua Ty Cayetano Raissa Tan Joshe Calvin Tiu Julian Uy','126381254096203','',NULL,NULL,NULL,'2011','01','20',NULL,NULL,NULL),(4147,'life is not about waiting for the storms to pass.. it\'s about learning to dance with the rain. :)','124577037607680','',NULL,NULL,NULL,'2011','01','11',NULL,NULL,NULL),(4148,'ganun???? hahahahahaha!','178237832206365','',NULL,NULL,NULL,'2010','12','22',NULL,NULL,NULL),(4149,'you might miss the moon.. when you are too busy counting the stars.. :))','137098066346952','',NULL,NULL,NULL,'2010','12','23',NULL,NULL,NULL),(4150,'Girl: how much do you love me?      boy: i love you very much..\ngirl: if you love me, scream it to the whole world..\nboy: *whispers to the girl* i love you very much..\ngirl: why did you whisper it to me?   boy: because YOU are my whole world :))','106552409417472','',NULL,NULL,NULL,'2010','12','05',NULL,NULL,NULL),(4151,'the best part of loving is not wishing that the person loves you as much as you do, but in feeling that you love the person more than you could.. ECHOS!!!! hahahaha!!','175081052518943','',NULL,NULL,NULL,'2010','11','28',NULL,NULL,NULL),(4152,'mga taong nasa utak ko :))','169554463062710','',NULL,NULL,NULL,'2010','11','21',NULL,NULL,NULL),(4153,'Auldwin: May prince charming k b?\nMe: oo naman.. but my prince charming.. has another princess.. :(','177302968949186','',NULL,NULL,NULL,'2010','11','19',NULL,NULL,NULL),(4154,'part of the reason we hold on to something for so long is we are afraid something so great won\'t happen TWICE..','141353465916345','',NULL,NULL,NULL,'2010','11','17',NULL,NULL,NULL),(4155,'dream boy ko :))','169043283113828','',NULL,NULL,NULL,'2010','11','16',NULL,NULL,NULL),(4156,'\" a recent study shows that the heart grows weaker every time we do something opposite of what we feel.. \" - reader\'s digest :)','168138406544401','',NULL,NULL,NULL,'2010','11','15',NULL,NULL,NULL),(4157,'...','175281995819629','',NULL,NULL,NULL,'2010','11','04',NULL,NULL,NULL),(4158,'50 truths about you','165670016784488','',NULL,NULL,NULL,'2010','11','06',NULL,NULL,NULL),(4159,'you may find love and lose it.. but when love dies.. you never have to die with it.. </3','150421845002033','',NULL,NULL,NULL,'2010','11','06',NULL,NULL,NULL),(4160,'no comment haha partly true :)','172417826101996','',NULL,NULL,NULL,'2010','10','29',NULL,NULL,NULL),(4161,'A girl asks the boy that loves her, \"If someone kills me and I die, will you come to my funeral?\"And the boy answers, \"No... I\'d be in jail for killing the person who hurt you.\" aww.. <3','164596156897831','',NULL,NULL,NULL,'2010','10','29',NULL,NULL,NULL),(4162,'as requested by auldwin haha :))\n Auldwin Einstein Hui\n Joshe Calvin Tiu\n Michiko Pearl Palaran   \n Camille Janine\n Raissa Tan','133239293394460','',NULL,NULL,NULL,'2010','10','20',NULL,NULL,NULL),(4163,'Joshe Calvin Tiu\n Auldwin Einstein Hui\n Camille Janine\n Michiko Pearl Palaran\n Raissa Tan','164374286921711','',NULL,NULL,NULL,'2010','10','20',NULL,NULL,NULL),(4164,'a smile is a curve that makes everything straight :)','140069169373022','',NULL,NULL,NULL,'2010','10','14',NULL,NULL,NULL),(4165,'there is magic in love.. we follow the rule, \"love one another\" and if it doesn it work out, jst swap the last two words, \"love ANOTHER ONE..\"','150279721673869','',NULL,NULL,NULL,'2010','09','30',NULL,NULL,NULL),(4166,'luv is lyk a smile,, luv is lyk a song,, luv is a great emotion,,dat kips us growng strong,, i luv u wid ol my hart,, my body and my soul,, i luv d way i kip lovng u,,its a thng i cnt control,,so remember wen ur eyes meet mine,,i luv u wid all my hart,, and i have poured my entire soul in2 u,,ryt from d very start ;)','122278391157080','',NULL,NULL,NULL,'2010','09','04',NULL,NULL,NULL),(4167,'Joshe Calvin Tiu\n Michiko Pearl Palaran\n Phillip Ng\n Shannon Dy','147938575236124','',NULL,NULL,NULL,'2010','08','25',NULL,NULL,NULL),(4168,'love is like a bar of soap.. when you think you\'ve got it, it slips away.. ^.^','102954336430050','',NULL,NULL,NULL,'2010','08','09',NULL,NULL,NULL),(4169,'it\'s hard to let go of someone who touched your life.. but its much harder to say gudbye with someone whom you are not sure if he really became yours yet changed your life most ; )','138209716208232','',NULL,NULL,NULL,'2010','07','19',NULL,NULL,NULL),(4170,'sunburn.. ugh.. ang skt pla..~_~','111284278915045','',NULL,NULL,NULL,'2010','05','17',NULL,NULL,NULL),(4171,'JOSH DUHAMEL :)) gwapo oh phillip!','190647274298754','Raissa Tan, Judy Tse and Phillip Ng',NULL,NULL,NULL,'2011','03','13',NULL,NULL,NULL),(4172,'don\'t cry over someone who won\' t cry over you.. don\'t think about someone who won\'t devote thier time thinking about you.. some people aren\'t just worth your time..','116911735008397','',NULL,NULL,NULL,'2010','05','17',NULL,NULL,NULL),(4173,'hey guys...try nyo 2... haha cool','267614190311','',NULL,NULL,NULL,'2010','01','09',NULL,NULL,NULL),(4174,'hey.. i hav a prob.. di pa nacocomfirm ang account k sa facebk.. bummer','252017147243','',NULL,NULL,NULL,'2009','12','31',NULL,NULL,NULL),(4175,'going to the mall to have fun! haha','235087622920','',NULL,NULL,NULL,'2009','12','29',NULL,NULL,NULL),(4176,'hay...sitting around.. aalis mamaya','230529060956','',NULL,NULL,NULL,'2009','12','29',NULL,NULL,NULL),(4177,'hey there people.... i\'m soooooooooooo bored','225415095278','',NULL,NULL,NULL,'2009','12','28',NULL,NULL,NULL);
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

-- Dump completed on 2017-03-10  1:21:12
