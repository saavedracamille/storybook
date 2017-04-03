-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: thesis_data_lorenzo
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (144,'07/21/1998','birthday'),(145,'Lorenzo','first_name'),(146,NULL,'middle_name'),(147,'Dyogi','last_name'),(148,'male','gender'),(149,'Las PiÃ±as','location'),(150,'Manila, Philippines','hometown');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (41,'PAREF Southridge School','High School',0000,NULL,'107886472572767');
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
) ENGINE=InnoDB AUTO_INCREMENT=1156 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1148,'Cecil\'s Birthday Celebration','attending','TGI Friday\'s, Evia Lifestyle Center','Las PiÃ±as','Philippines','657648284417061'),(1149,'Gabby\'s Dedication','attending','St. Joseph the Worker Chapel, Leonor Rivera St. Clarkfield, Pampanga','Clark','Philippines','1718542555067670'),(1150,'Johannes 7th Birthday','attending','The Columns Ayala Avenue','Makati','Philippines','1759098381045895'),(1151,'Noki\'s 3rd BIrthday Party','attending','Jollibee Blue Bay Walk','Pasay City','Philippines','446389155519360'),(1152,'Sleepover samin!','attending','Spring Forest Resort',NULL,NULL,'1619582548258360'),(1153,'FLIPTOP MUNTINLUPA PRESENTS: SAGUPAAN','attending','B - SIDE','Makati','Philippines','802213533204589'),(1154,'Romeo and Shanta\'s Wedding','attending','St. Pancratius Chapel, Paco Park, Paco, Manila','Ermita','Philippines','1386043255031416'),(1155,'Dyogi Christmas Party 2013','attending','Mabolo 2',NULL,NULL,'651484104874806');
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2958 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (2789,'The Glass House Flowers','Local Business','682558195218491'),(2790,'Charles Hwang, CPA Tutorial Services','Teacher','1182719245175749'),(2791,'C. Cassandra','Artist','786857121360166'),(2792,'IMES','Organization','1489018524747003'),(2793,'Daeho cha','Artist','125290264524107'),(2794,'DLSU Syntax','College & University','274942829355948'),(2795,'Winnie the Pooh','Movie','136775446236'),(2796,'Nihilist Memes','Community','583969258384704'),(2797,'8-bitfiction','Artist','1509802982608207'),(2798,'DLSU MHAW: From Me to We','Community','330370027355600'),(2799,'Noob the Loser','Entertainment Website','364924593643621'),(2800,'Sarcasm','News/Media Website','1515871602074952'),(2801,'Sarah\'s Scribbles','Artist','640010012685314'),(2802,'Huhsmile','Artist','140476345983694'),(2803,'DLSU CSO','Organization','245252766116'),(2804,'Puuung','Artist','708146355884739'),(2805,'DLSU-Manila Secret Files','Community','576825992449694'),(2806,'commonhat','Writer','1773575969549666'),(2807,'Guweiz','Artist','189581388055662'),(2808,'Engineers of La Salle','Community','1717614991811008'),(2809,'Writing About Writing','Entertainment Website','290072384435404'),(2810,'70th ENG','Company','1647370928858454'),(2811,'The Artidote','Community','742359879214163'),(2812,'Anzujaamu','Blogger','210531565782082'),(2813,'Sia','Musician/Band','10959868407'),(2814,'DLSU ECG','Organization','291637320929022'),(2815,'Tomia cosplay','Artist','137464896328430'),(2816,'JS Cosplay','Artist','162123393974426'),(2817,'Sushi Monster','Artist','140936409308223'),(2818,'Rainer Cosplay','Personal Blog','179040222274590'),(2819,'Planting Seeds of Relevance','Community','541770525966628'),(2820,'Anime Swarm','Just For Fun','871355729564824'),(2821,'Michelle Wong','Artist','1575938106005070'),(2822,'Halsey','Musician/Band','253431031498642'),(2823,'Daniela Andrade','Musician/Band','109834669140'),(2824,'Chihiro-åå°','Artist','407151656004640'),(2825,'Kiba Lee','Personal Blog','444436952242890'),(2826,'TEDxYouth.Muntinlupa','Non-Profit Organization','1485085541785472'),(2827,'Sakimi chan','Artist','1409836239257534'),(2828,'Art of JeffreyC','Artist','464808140221576'),(2829,'Wallpapers and Artworks','Arts & Entertainment','194350600621389'),(2830,'Lejean x3','Artist','1450621011904330'),(2831,'Lasallian Scholars Society','Education','1461377494116156'),(2832,'Dlsu Usg','Organization','283415475102221'),(2833,'Lily Ki','Public Figure','321639871268207'),(2834,'LPEP 2K15','Community','1588399598100568'),(2835,'The LaSallian','Media/News Company','149678604759'),(2836,'Cartoon Block','Artist','331464644422'),(2837,'Tasha Cosplay','Public Figure','206786492683442'),(2838,'Brenda Song','Artist','147808708711475'),(2839,'Ross Tran','Artist','398554757002230'),(2840,'NekoShei','Pet','1536023929972200'),(2841,'Echosmith','Musician/Band','55861771471'),(2842,'Playbox Gaming & Consoles','Cafe','311545422380034'),(2843,'Snoopy','Other','161564697227628'),(2844,'Misaki Cosplayer','Public Figure','133780710030502'),(2845,'TwistedGrim','Artist','227322867395953'),(2846,'Gerphil-Geraldine Flores','Musician/Band','804413326300996'),(2847,'Melissa a.k.a. Sade','Artist','389760937733538'),(2848,'Sarah Fong','Artist','371927929543870'),(2849,'Isis Vasconcellos','Musician/Band','238441106312129'),(2850,'De La Salle University','College & University','127612997282544'),(2851,'SKT Faker','Community','530819146997294'),(2852,'Cartoon Brew-ED','Education Website','357484307694830'),(2853,'Aza Miyuko','Public Figure','615867561775176'),(2854,'Gbay99','Public Figure','374253079334329'),(2855,'ç¥åçè Luna Kamisaka ( Cosplay )','Artist','475188905845837'),(2856,'Shiraga Yanko ãããæ³±','Public Figure','189909657775752'),(2857,'PURIN ã·ãã','Public Figure','340076739508195'),(2858,'Sjokz','Public Figure','154597961327363'),(2859,'Watsky','Musician/Band','42474459320'),(2860,'Rinnie Riot','Artist','191013042329'),(2861,'loish','Artist','245225465047'),(2862,'Shilin','Artist','167766283276131'),(2863,'Misa Chiang','Artist','391035614265417'),(2864,'Ilya Kuvshinov','Artist','1450562941848915'),(2865,'Belle Cosplay','Public Figure','667502563282808'),(2866,'ç¾å°ç½S.white','Public Figure','348526525258403'),(2867,'Taylor Davis','Musician/Band','138537392936536'),(2868,'Lindsey Stirling','Musician/Band','132255980139931'),(2869,'Gabriel Picolo','Artist','592251427531375'),(2870,'Carla Dunareanu','Actor','171302039623911'),(2871,'Surrender at 20','Computers/Internet Website','202030493258017'),(2872,'Bea Miller','Musician/Band','249358218414002'),(2873,'ä¸å¥Nanako','Public Figure','321026954718245'),(2874,'Alodia Memes','Public Figure','637659769594609'),(2875,'Vivid Vision','Artist','491712934184801'),(2876,'Kuroko no Basket Manga','Book','279574165482205'),(2877,'Persona 5','Community','127761197257987'),(2878,'Blorkishn','Artist','214109332027872'),(2879,'Mineski-League of Legends','Sports Team','365879073505924'),(2880,'Mga Ordinaryong Tao','Society/Culture Website','212417078942392'),(2881,'Garena LoL Collegiate League PH','Sports League','1546422262238347'),(2882,'Design Sketching','Artist','110765318934826'),(2883,'Riki \'Riddle\' Lecotey','Public Figure','150943718280673'),(2884,'Riku PH','Public Figure','548898721911815'),(2885,'Annchirisu','Public Figure','243043144654'),(2886,'Terry Pratchett','Author','43413980024'),(2887,'Skullgirls','Games/Toys','132276963506473'),(2888,'MsPudding','Public Figure','285314011539457'),(2889,'Ellen Page','Artist','21679407448'),(2890,'Big Hero 6','Movie','154132781425607'),(2891,'JOEL COLO Visual Artist','Local Business','159590537389473'),(2892,'goboiano','Media/News Company','138905109499102'),(2893,'Hatsune Miku','Musician/Band','10150149727825637'),(2894,'Mike Inel','Artist','161009323940691'),(2895,'Ataraxia Cosplay','Artist','1392404111032338'),(2896,'RaffyB','Just For Fun','350752438363550'),(2897,'Artgerm','Artist','27756180158'),(2898,'Ashley Gosiengfiao','Public Figure','148249834131'),(2899,'Eric Ejercito','Artist','191625354186953'),(2900,'Danny Choo','Comedian','143268796679'),(2901,'Magic 89.9','Radio Station','59401015751'),(2902,'Monster RX93.1','Radio Station','42824703039'),(2903,'Eraserheads','Musician/Band','115794205101812'),(2904,'Mark Mhel Morga #9','Athlete','588020624623325'),(2905,'Art drawings','Artist','225595030805426'),(2906,'AHO cosplay','Public Figure','712020365486949'),(2907,'Alodia Gosiengfiao','Artist','152138396746'),(2908,'Sketchy Stories','Artist','318830968199894'),(2909,'Sweet Revenge','Musician/Band','168281593244340'),(2910,'Community','TV Show','76613428183'),(2911,'University of Asia and the Pacific','College & University','120866421297027'),(2912,'Tokyo Otaku Mode','Entertainment Website','187477207946509'),(2913,'J. Scott Campbell','Artist','80791377580'),(2914,'Neil Gaiman','Author','300224781015'),(2915,'3d drawings','Artist','762376337119409'),(2916,'World Manga Academy','Education Website','267987146715684'),(2917,'Manga Fox','Entertainment Website','105903162796521'),(2918,'Monstercat','Record Label','127067944045954'),(2919,'Incidental Comics','Artist','143875519002831'),(2920,'How to Draw Cartoons','Education','171892166291047'),(2921,'DRAWING PENCIL','Artist','236259044902'),(2922,'Meiji Purin','Fictional Character','511839725499108'),(2923,'AFA - ANIME FESTIVAL ASIA','Product/Service','91683256021'),(2924,'Kotaku','Community','273824104039'),(2925,'League of Legends - LOLDB','Entertainment Website','470727542981684'),(2926,'Paul Rodriguez','Athlete','134230429962183'),(2927,'Foxdroplol','Public Figure','498178080243172'),(2928,'Wanna Fact!?','Education Website','229162103880856'),(2929,'Jason Statham','Artist','100827133412869'),(2930,'mr.zero','Artist','191583580876680'),(2931,'Urban Nerding','Arts/Humanities Website','243761645796915'),(2932,'Anne Frank','Author','281957145159091'),(2933,'I fucking love science','Science Website','367116489976035'),(2934,'Word Porn','Education Website','252006304935213'),(2935,'Art & Literature','News/Media Website','110676575751461'),(2936,'Red Hot Chili Peppers','Musician/Band','8335563918'),(2937,'Lorde','Musician/Band','508598672491191'),(2938,'Adventure Time','TV Show','321031023382'),(2939,'Joseph Gordon-Levitt','Actor','192551487435190'),(2940,'The Book Thief','Movie','483199805062138'),(2941,'Imagine Dragons','Musician/Band','39643821406'),(2942,'Moving Stills','Camera/Photo','522928021103654'),(2943,'Tophasic','Community','662003180534068'),(2944,'Foo Fighters','Musician/Band','25098475544'),(2945,'Avicii','Musician/Band','26435256798'),(2946,'Daft Punk','Musician/Band','22476490672'),(2947,'Oasis','Musician/Band','9949696967'),(2948,'Gorillaz','Musician/Band','6002137995'),(2949,'League of Legends - Philippines','Games/Toys','139801452706157'),(2950,'Hayley Williams','Religious Place of Worship','202941843073000'),(2951,'The Keybie CafÃ©','Product/Service','73392639484'),(2952,'Paramore','Musician/Band','5388374962'),(2953,'Will Smith','Artist','92304305160'),(2954,'Sarah Geronimo','Artist','257018236749'),(2955,'Vin Diesel','Other','89562268312'),(2956,'League of Legends','Video Game','82061850555'),(2957,'Too Much Gaming','News/Media Website','103331313086510');
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
INSERT INTO `template` VALUES (1,1,'<name><intro_optional><intro_current_education>.',0,0,0,0,0,0,0),(2,1,'<name><intro_optional><intro_current_work>.',0,0,0,0,0,0,0),(3,1,'<name><intro_optional><intro_birth_circumstances>.',0,0,0,0,0,0,0),(4,2,'<intro_birth_circumstances>',1,0,0,0,0,0,0),(5,2,'is a <age>-year old <gender> who',1,0,0,0,0,0,1),(6,3,', born on <birthday>,',1,0,0,0,0,0,0),(7,3,'was born on <birthday>',1,0,0,0,0,0,0),(10,4,'is from <hometown>, and is now living in <location>',0,0,0,0,1,1,0),(12,4,'hails from <hometown>, and is living in <location>',0,0,0,0,1,1,0),(14,4,'hailed from <hometown>, and is now living in <location>',0,0,0,0,1,1,0),(16,1,'<intro_education> and <intro_current_work>',0,0,0,0,0,0,0),(17,1,'<intro_education> and <intro_current_education>',0,0,0,0,0,0,0),(18,1,'<intro_education>',0,0,0,0,0,0,0),(19,1,'is now studying at <institution>',0,0,0,1,0,0,0),(20,11,'is now working at <institution>',0,1,0,0,0,0,0),(21,11,'worked from <job_start> to <job_end> at <institution>',0,1,0,0,0,0,0),(22,1,'worked from <job_start> to <job_end> at <institution> and <intro_current_work>',0,1,0,0,0,0,0),(23,1,'worked from <job_start> to <job_end> at <institution> and <intro_current_education>',0,1,0,0,0,0,0),(24,7,'graduated grade school in <institution> <intro_education_time>',0,0,0,1,0,0,0),(25,8,'graduated high school in <institution> <intro_education_time>',0,0,0,1,0,0,0),(26,9,'graduated college in <institution> <intro_education_time>',0,0,0,1,0,0,0),(27,7,'got his grade school diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(28,8,'got his high school diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(29,9,'got his college diploma from <institution> <intro_education_time>',0,0,0,1,0,0,0),(33,10,'last <grad_year>',0,0,0,1,0,0,0),(34,10,'in <grad_year>',0,0,0,1,0,0,0),(35,10,'on <grad_year>',0,0,0,1,0,0,0),(40,12,'is the son of <father> and <mother>',0,0,1,0,0,0,0),(42,12,'is the son of <father>',0,0,1,0,0,0,0),(43,12,'is the son of <mother>',0,0,1,0,0,0,0),(46,5,'is living in <location>',0,0,0,0,1,0,0),(47,6,'is from <hometown>',0,0,0,0,0,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5850 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (5818,'Mt. Gulugod DABoy','1765683243687879','',NULL,NULL,NULL,'2016','08','29'),(5819,'Thanks Raymond :)','1646506395605565','',NULL,NULL,NULL,'2015','09','27'),(5820,'Random Late Night','1636846629904875','',NULL,NULL,NULL,'2015','08','28'),(5821,'Not a well known game, but it\'s great','1623793587876846','',NULL,NULL,NULL,'2015','07','19'),(5822,'The monkey stage in Rhythm Heaven (wii version) was just the worst','1615210998735105','',NULL,NULL,NULL,'2015','06','23'),(5823,'#23','1584642745125264','',NULL,NULL,NULL,'2015','04','04'),(5824,'My deepest thanks to DLSU for giving me this opportunity to enter your university. Thank you so much. It\'s not only an enormous help to me but also to my parents  :))','1581713615418177','',NULL,NULL,NULL,'2015','03','29'),(5825,'https://www.youtube.com/watch?v=SgM5tAr7A6E Just too good','1579144092341796','',NULL,NULL,NULL,'2015','03','20'),(5826,'It\'s just the dead man himself who can do it. Different account tho. Jose','1577625725826966','',NULL,NULL,NULL,'2015','03','16'),(5827,'The mexican graves has done it. Paul, please gift me a pool party skin, especially for this guy','1544035682519304','',NULL,NULL,NULL,'2015','01','03'),(5828,'Thank the heavens again for this one :) 2 down and 1 more to go','1538110619778477','',NULL,NULL,NULL,'2014','12','26'),(5829,'Stormed the heavens with prayers and they were answered :) 1 down, 2 more to go.','1536429256613280','',NULL,NULL,NULL,'2014','12','20'),(5830,'It\'s Chie Satonaka cosplayed by Irori Asakura','1535614780028061','',NULL,NULL,NULL,'2014','12','21'),(5831,'Gogo :)','1535614783361394','',NULL,NULL,NULL,'2015','08','19'),(5832,'A must see :D','1535075550081984','',NULL,NULL,NULL,'2014','12','16'),(5833,'These are great! ','1519001038356102','',NULL,NULL,NULL,'2014','11','07'),(5834,'Made by an artist from the Philippines. wow.','1509406482648891','',NULL,NULL,NULL,'2014','10','15'),(5835,'I\'m really fond of these changes when it comes to classics or simply alternate endings itself','1503232066599666','',NULL,NULL,NULL,'2014','10','02'),(5836,'Amazing ','1483592935230246','',NULL,NULL,NULL,'2014','08','29'),(5837,'Who knew the Pasig river looked so good','1479110259011847','',NULL,NULL,NULL,'2014','09','04'),(5838,'Jacob Dyogi Bowler and Ghost peach ','1457660311156842','',NULL,NULL,NULL,'2014','07','22'),(5839,'makes me want to have pie and that cyborg dance at 0:24. http://www.youtube.com/watch?v=NKArng7ycI0 ','1430959117160295','',NULL,NULL,NULL,'2014','05','03'),(5840,'James Franco?!?','1423353274587546','',NULL,NULL,NULL,'2014','04','09'),(5841,'Field trip?!? HUH, OKAY!','1400032773586263','',NULL,NULL,NULL,'2014','01','30'),(5842,'Sorry, a word that some people repeatedly say','1392303324359208','',NULL,NULL,NULL,'2014','01','12'),(5843,'everything ish foyn','1392032627719611','',NULL,NULL,NULL,'2014','01','12'),(5844,'Happy birthday Jm Viloria. It says that you\'re 34 years old???','1391680011088206','',NULL,NULL,NULL,'2014','01','11'),(5845,'Jacob Dyogi\'s Birthday? HUH! OKAY!','1391017844487756','',NULL,NULL,NULL,'2014','01','10'),(5846,'Ma Ma, It\'s judgement time!','1381464905443050','',NULL,NULL,NULL,'2013','12','29'),(5847,'Guys like the page Too Much Gaming','1376685065921034','',NULL,NULL,NULL,'2013','12','22'),(5848,'Lets just do what we do!','1376460925943448','',NULL,NULL,NULL,'2013','12','22'),(5849,'It\'s time for FACEBOOK!!! AHH!','1375496872706520','',NULL,NULL,NULL,'2013','12','22');
/*!40000 ALTER TABLE `to_be_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verb_object`
--

DROP TABLE IF EXISTS `verb_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verb_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `verb` varchar(500) DEFAULT NULL,
  `noun` varchar(500) DEFAULT NULL,
  `sentence` varchar(5000) DEFAULT NULL,
  `post_type` varchar(100) DEFAULT NULL,
  `tagged` varchar(5000) DEFAULT NULL,
  `location` varchar(5000) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2625 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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

-- Dump completed on 2017-04-03 21:37:12
