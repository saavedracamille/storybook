-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: thesis_data_david
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (88,'07/04/1998','birthday'),(89,'David','first_name'),(90,NULL,'middle_name'),(91,'Zinampan','last_name'),(92,'male','gender'),(93,'Makati','location'),(94,'Bacoor, Cavite','hometown');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (25,'Divine Light Academy','High School',0000,NULL,'155947541137535'),(26,'Divine Light Academy','High School',0000,NULL,'110720048952857'),(27,'De La Salle University','College',0000,NULL,'127612997282544'),(28,'Divine Light Academy Molino','College',0000,NULL,'114789135200446');
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
) ENGINE=InnoDB AUTO_INCREMENT=938 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (932,'#GIATURNS18','attending','Le RÃªve Pool Party Venue and Events Place','Quezon City','Philippines','1041336969325731'),(933,'DERECHO Christmas Fest 2016','attending','Samar Ave 58, Quezon City, Philippines',NULL,NULL,'972711976166805'),(934,'#TheForceIsStrongWithMild','attending','Fernbrook Inc.\'s Palazzo Verde','Las PiÃ±as','Philippines','160597324372462'),(935,'#LegallyE','unsure',NULL,NULL,NULL,'286732181704870'),(936,'Ella & Tricia turn 18','attending','Tagaytay City','Tagaytay City','Philippines','790071874461917'),(937,'No Pressure at Supremo','unsure','Supremo Grill','Makati','Philippines','271837306521898');
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (125,'Nikko Nitura Manaloto','family member','1444663248877132'),(126,'Alfred Dominic Laquian','family member','1460459820663409'),(127,'Aaron Magno','family member','1418334498190709'),(128,'Alvin Emmanuel','brother','1484166334927527'),(129,'Kobe Caronongan','brother','1558565024161165'),(130,'Justin Yana','brother','1604229376257125'),(131,'Juan Gabriel Abrogina','brother','1265111516859208'),(132,'Cj Dela Cruz','brother','1443462839038041'),(133,'Aaron Santos','brother','1458035984237507'),(134,'Bill Aeron Delos Reyes','brother','1421253917906000');
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
) ENGINE=InnoDB AUTO_INCREMENT=1701 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1353,'Funny Moments','Magazine','1703117756610886'),(1354,'CASI','Blogger','152620365176980'),(1355,'SLIV','Bags/Luggage','1011201398916030'),(1356,'Bootcamp Football Shop','Shopping & Retail','347386845294902'),(1357,'Mechanical Engineering Society, MES','Company','124047424273129'),(1358,'CE Week: Limitless Escapades','Organization','113504772450453'),(1359,'PhilDev Foundation','Non-Profit Organization','136319814988'),(1360,'One in Service, One La Salle','Event','602145356636297'),(1361,'GiveMeSport','News/Media Website','566760030037879'),(1362,'Archers Network','Local Business','740065782742153'),(1363,'Kalabaw Fitness Gym','Stadium, Arena & Sports Venue','898280510285080'),(1364,'Women In Business Week 2016','Community','158373941269576'),(1365,'Stef Monce','Public Figure','173058386447722'),(1366,'Santugon Sa Tawag Ng Panahon','Political Organization','244398732343'),(1367,'Engineers of La Salle','Community','1717614991811008'),(1368,'Kit Harington - Jon Snow','Community','147526858614404'),(1369,'Titan Comics','Book','370828649671760'),(1370,'Engr. Jerome Cuevas','Entrepreneur','930612976981478'),(1371,'My Fight Shorts Inc.','Clothing (Brand)','565930700108184'),(1372,'Charlie\'s Champs','Outdoor & Sporting Goods Company','1735801363312893'),(1373,'Trending in America','Media/News Company','173801092653589'),(1374,'Peenoise Republic','Sports Team','963703710353173'),(1375,'Tasty','Media/News Company','1614251518827491'),(1376,'BuzzFeed Food','Media/News Company','491452930867938'),(1377,'Round Juan','Society/Culture Website','211097552354028'),(1378,'70th ENG','Company','1647370928858454'),(1379,'Naughty Dog, LLC','Games/Toys','57327290245'),(1380,'Legacy','Community','299310450175055'),(1381,'Warner Bros. Pictures','Movie/Television Studio','137782652917951'),(1382,'Ankle Upgrade','Clothing (Brand)','1733537683542816'),(1383,'Dlsu Usg','Organization','283415475102221'),(1384,'Albert Valencia Para Sa Masa','Public Figure','259150947801'),(1385,'Rey Mysterio','Non-Profit Organization','708996479235630'),(1386,'Minimum A-WAGE-Ness','Community','1656434721312590'),(1387,'Planting Seeds of Relevance','Community','541770525966628'),(1388,'DLSU Karate','Organization','338603346157748'),(1389,'MuayThai LaSalle','Sports Team','1499137490354703'),(1390,'DC Comics','Company','11648563484'),(1391,'B\'lue. Live To Feel.','Food & Beverage Company','1439114389713775'),(1392,'Neil Patrick Harris','Artist','1603548173244904'),(1393,'Ust Ches','Organization','1477867142535616'),(1394,'LPEP 2K15','Community','1588399598100568'),(1395,'American Eagle Outfitters','Clothing (Brand)','195520837253717'),(1396,'Film Police Reviews','Entertainment Website','111306335644975'),(1397,'Elorde Southbox','Outdoor, Recreation & Fitness','495853943868139'),(1398,'Grand Theft Auto IV','Games/Toys','278156865622239'),(1399,'Kung Fu Panda','Other','18128947058'),(1400,'Manny Pacquiao','Athlete','1414171045553584'),(1401,'Ciuffi Rossi','Musician/Band','244760062202727'),(1402,'Foot Locker','Retail Company','67997232685'),(1403,'Castle Geek','Book Store','398776406845289'),(1404,'The Buildings','Musician/Band','453476981455000'),(1405,'Team Kramer','Public Figure','651113654922954'),(1406,'Jonvic Remulla','Public Figure','263452323765094'),(1407,'KFC','Chicken Joint','117373194958135'),(1408,'Date Night','Movie','1408777362692039'),(1409,'Infamous','Video Game','1407922119454027'),(1410,'Hoop City PH','Community','574746835894217'),(1411,'Pot of Gold','Local Business','277553949018648'),(1412,'Barney \"When I get sad, I stop being sad and be awesome instead\"','American Restaurant','176652289193642'),(1413,'Coleman Philippines','Outdoor & Sporting Goods Company','136502709749510'),(1414,'Ourselves the Elves','Musician/Band','117604841734894'),(1415,'Rachel Anne Daquis','Athlete','237328789935'),(1416,'BMC Turtrois','School','599296433434076'),(1417,'EA SPORTS FIFA','Games/Toys','191027189287'),(1418,'Whose Line Is It Anyway?','TV Show','144253865742989'),(1419,'NBA 2K','Games/Toys','221292025304'),(1420,'Batman Arkham','Games/Toys','140262999339534'),(1421,'Arrested Development','TV Show','213663452113501'),(1422,'inFAMOUS','Games/Toys','120752241439862'),(1423,'Shitting Bricks','Interest','378958978937'),(1424,'Computer games','Sport','150426751672388'),(1425,'Billiards','Sport','114967135183020'),(1426,'Kicking Ass','Sport','128462403882014'),(1427,'Icon Pop Quiz','App Page','506438596034640'),(1428,'Kevin Durant','Athlete','81781281654'),(1429,'Did You Know','Media/News Company','236963176319804'),(1430,'Rip The Road','Sports League','290591544391945'),(1431,'Alabang Town Center','Retail Company','352797395812'),(1432,'Zark\'s Burgers','Burger Restaurant','125052717215'),(1433,'MacLaren\'s pub','Bar','10150139961705112'),(1434,'Anti-Epal','Cause','382133678499208'),(1435,'Booster C Energy Shot','Food & Beverage Company','325959034129341'),(1436,'Dasca Sports Outlet','Local Business','221168037910491'),(1437,'Logo Quiz','Games/Toys','519844888042075'),(1438,'Sigma Theta Delta','Organization','208618575933846'),(1439,'Ralph Jay Triumfo','Musician/Band','184492391578'),(1440,'Outbreak Manila','Outdoor, Recreation & Fitness','150421941734231'),(1441,'Everybody Loves Raymond','TV Show','283863201721435'),(1442,'CHADD - Children & Adults with ADHD','Medical & Health','74917895690'),(1443,'IGN','Entertainment Website','59685491632'),(1444,'Adobe Photoshop','Software','6147239684'),(1445,'Rex Velvet','Public Figure','206141412837967'),(1446,'Dear Kit, Subukan mo lang Saktan Si Myrtle Mag-Aagaw Buhay KA','Company','302227229860823'),(1447,'Famous Objects from Classic Movies','Entertainment Website','137302453004091'),(1448,'Famous Objects From Classic Movies','Games/Toys','102464836503204'),(1449,'I (Almost) Got Away With It','TV Show','325350954185443'),(1450,'Mrs. Doubtfire','Arts & Entertainment','103152216486010'),(1451,'Oasis','Musician/Band','9949696967'),(1452,'Steve Terada (Official)','Public Figure','106225762745339'),(1453,'Myrtle Sarrosa','Public Figure','199429533501350'),(1454,'The Simpsons','TV Show','29534858696'),(1455,'I Don\'t Care If The Song Is Old, I Like It.','Community','304395793053'),(1456,'White Chicks','Movie','104151042954767'),(1457,'The Green-minded Kai','Public Figure','316589681715408'),(1458,'Victor Kim','Musician/Band','96273682136'),(1459,'The King of Queens','TV Show','172603662808685'),(1460,'Leo Messi','Athlete','176063032413299'),(1461,'Car Town','App Page','317965161575461'),(1462,'American Horror Story','TV Show','200060813363243'),(1463,'Pool Master','App Page','356428677717172'),(1464,'Miscrits: World of Creatures','App Page','258015770936718'),(1465,'The Sims','App Page','148919335222468'),(1466,'Fish Wrangler','Games/Toys','342729642405748'),(1467,'Coldplay','Musician/Band','15253175252'),(1468,'Weezer','Musician/Band','20355427272'),(1469,'Foster The People','Musician/Band','326149431743'),(1470,'YIFY Torrents','Community','198600486837598'),(1471,'Comics','School','112605852083973'),(1472,'Robot Unicorn Attack','Games/Toys','251225521575726'),(1473,'War for the Planet of the Apes','Movie','117612274953701'),(1474,'Attack The Block','Movie','174591965919967'),(1475,'Chuck Palahniuk','Author','39860039925'),(1476,'Man Up','TV Show','220487677968660'),(1477,'Adventure Time','TV Show','321031023382'),(1478,'The Middle','TV Show','142422188541'),(1479,'Junior dos Santos Cigano','Athlete','163609350341591'),(1480,'Brock Lesnar','Athlete','185950250927'),(1481,'Chuck','TV Show','23317869104'),(1482,'Breaking Bad','TV Show','6798562721'),(1483,'Volleyball is just a more intense game of\"Dont let balloon touch the floorâ','Book','262423247135303'),(1484,'Celebrity Deathmatch','TV Show','26458119432'),(1485,'Arrested Development','TV Show','108539909166109'),(1486,'Dexter','TV Show','15526475270'),(1487,'Mahirap magpigil na ngumiti, lalo na pag kinikilig ka. :\'>','Community','116023791763680'),(1488,'TAE! ANDAMi MONG TANONG! i.GOOGLE-MO-GAGO!>:)) *GMG*','Entertainment Website','114879261883285'),(1489,'Wag masyadong SLOW, nakakabobo! xD','Community','123165047775776'),(1490,'Poleng and the Pussycats (formerly The Morning Wood)','Musician/Band','177560832323031'),(1491,'Fully Booked','Book Store','88599481435'),(1492,'Running','Sport','109368782422374'),(1493,'Parkour','Sport','108140112539623'),(1494,'Comic Odyssey','Book Store','188717484478132'),(1495,'Sports','Newspaper','106303419405901'),(1496,'The All-American Rejects','Musician/Band','27422071944'),(1497,'Zombieland','Movie','105631116136110'),(1498,'Ì¶CÌ¶rÌ¶uÌ¶sÌ¶hÌ¶ Ì¶KÌ¶iÌ¶tÌ¶aÌ¶. Mahal Kita :\">','Community','138951622852117'),(1499,'/Film','Entertainment Website','183439626150'),(1500,'Wag mong LANDIIN kung wala kang balak MAHALIN.','Non-Profit Organization','233755900006295'),(1501,'Kiefer Ravena','Athlete','131798783517168'),(1502,'You an Angry Birds Fan?','Website','217526791626331'),(1503,'Penn & Teller: BULLSHIT!','TV Show','23854385573'),(1504,'The Simpsons Movie','Movie','106076356089324'),(1505,'Ang kuLit mo ah ! Kiss kita jan eh . :\">','Movie','234222306592925'),(1506,'Kwento Mo Sa Balbas ni James Harden','Community','129119150500622'),(1507,'Pag anjan si Crush todo titig ka, pero pag siya ang tumingin todo iwas ka.','Just For Fun','183725588355282'),(1508,'Grand Theft Auto IV','Video Game','104048226298711'),(1509,'Red Dead Redemption','Games/Toys','100975796807'),(1510,'The Beatles','Musician/Band','69116329538'),(1511,'The Cure','Religious Place of Worship','14276376401'),(1512,'Bob Marley','Musician/Band','117533210756'),(1513,'Goo Goo Dolls','Musician/Band','6041887965'),(1514,'UP Alliance of Development Communication Students','Organization','128578817153609'),(1515,'Ui , Sorry NA.','Community','134241163289253'),(1516,'Anderson \'The Spider\' Silva','Athlete','188836614470252'),(1517,'Hell\'s Kitchen','TV Show','13427984738'),(1518,'Tenacious D and the Pick of Destiny','Movie','111713802180344'),(1519,'Drinks Mixer','Website','116452988388680'),(1520,'See More','Landmark & Historical Place','232055110141048'),(1521,'Kwento mo sa Leeg ni Chris Bosh','Athlete','102531363174736'),(1522,'Kwento mo sa manok with feelings','Food & Beverage Company','209092622464164'),(1523,'Neon Trees','Musician/Band','79412962324'),(1524,'David DiMuzio','Musician/Band','32876667944'),(1525,'Howie Severino Docufest','Producer','225026234199140'),(1526,'Heavy Metal Syndrome','Musician/Band','145078935506497'),(1527,'True Beauty','TV Show','120129551335814'),(1528,'When In Rome','Movie','114800731878'),(1529,'The Hangover (film)','Movie','106062409425530'),(1530,'Kwento mo sa Kalbong may Bangs','Athlete','215720665116325'),(1531,'Eraserheads','Musician/Band','61448165661'),(1532,'Darwinista \\m/','Public Figure','241076805911566'),(1533,'Leverage','TV Show','31248741709'),(1534,'The King of Queens','Arts & Entertainment','109437465749175'),(1535,'Randy \"The Natural\" Couture','Athlete','166353781946'),(1536,'Shit! That was close, I almost gave a fuck.','Community','184431424943849'),(1537,'tipsOtricks','Computers/Internet Website','240614485218'),(1538,'Fight Night Round 4','Video Game','112413742103585'),(1539,'Mrs. Doubtfire','Landmark & Historical Place','103110576395440'),(1540,'Survivor','TV Show','59672943648'),(1541,'God of War III','Video Game','112512782095056'),(1542,'gta IV','Games/Toys','6975931563'),(1543,'Malcolm in the Middle','TV Show','107716979257871'),(1544,'Heavy Rain','Games/Toys','266281040335'),(1545,'UniSilver TIME','Jewelry/Watches','213759855210'),(1546,'BrÃ¼tal Legend','Video Game','107596655930183'),(1547,'Tim Schafer','Fashion','108395072518557'),(1548,'Double Fine Productions','Organization','108396992515524'),(1549,'Swap or Sell PS3 Games (Metro Manila, Philippines only)','Community','156064664434890'),(1550,'Green Lantern','Movie','52050093300'),(1551,'Angry Birds','Interest','108342995884711'),(1552,'Red Dead Redemption','Video Game','112418508772821'),(1553,'Uncharted 2','Video Game','111738242177766'),(1554,'Long Island Iced Z','Public Figure','186743451362512'),(1555,'Texas HoldEm Poker','Games/Toys','56531631380'),(1556,'Zynga RewardVille','Games/Toys','184192701612211'),(1557,'The Middle','TV Show','109332599084622'),(1558,'It\'s Always Sunny in Philadelphia','TV Show','10473091455'),(1559,'Dr Pepper','Food & Beverage Company','6278093869'),(1560,'Kobe Caronongan','Public Figure','196933037007528'),(1561,'Manchester United','Sports Team','7724542745'),(1562,'Georges St-Pierre','Athlete','39734800649'),(1563,'Batman: The Dark Knight','Movie','12887942787'),(1564,'7-Eleven Philippines','Retail Company','62739603227'),(1565,'Avatar','Movie','82771544063'),(1566,'Paramore','Musician/Band','5388374962'),(1567,'Wwe','TV Show','109942269035652'),(1568,'WWE SmackDown','TV Show','107942039226133'),(1569,'Movies','Interest','106057162768533'),(1570,'Painting','Field of Study','111925778823301'),(1571,'Toy Story 3','Movie','113242012023271'),(1572,'Avatar','Movie','111848228832068'),(1573,'Raising Hope','TV Show','124318344261878'),(1574,'Criss Angel Mindfreak','TV Show','108361495855646'),(1575,'Penn & Teller','Public Figure','16418494221'),(1576,'SpongeBob SquarePants','TV Show','42798291365'),(1577,'MythBusters','TV Show','28627688223'),(1578,'Boyce Avenue','Musician/Band','54624257279'),(1579,'Dwayne The Rock Johnson','Public Figure','406433779383'),(1580,'American Idol','TV Show','123984435600'),(1581,'Alodia Gosiengfiao','Local Business','127138020643279'),(1582,'Mad Science-Philippines','Education','103807163021335'),(1583,'Thor','Movie','162428943790332'),(1584,'Captain America: The First Avenger','Movie','173214802692599'),(1585,'Marvel','Product/Service','128965523837324'),(1586,'WWE NXT','TV Show','111122042270702'),(1587,'Divine Light Academy','Private School','110720048952857'),(1588,'Kamote Club','Public Figure','141792252504461'),(1589,'Green Hornet','Movie','193084362082'),(1590,'Iron Man','Fictional Character','7057882289'),(1591,'The Dark Knight','Movie','109500505734598'),(1592,'Jackass','Movie','21295715752'),(1593,'Modern Family','TV Show','130577231135'),(1594,'Drawn Together','TV Show','8694990902'),(1595,'WWE Raw','TV Show','105570302809557'),(1596,'Conan O\'Brien','Public Figure','108333439187470'),(1597,'Real Madrid C.F.','Sports Team','19034719952'),(1598,'Toy Story','Movie','10498014129'),(1599,'Scott Pilgrim vs. the World','Movie','49491894003'),(1600,'Easy A','Movie','117604218271416'),(1601,'Cavite City, Philippines','City','111929618832838'),(1602,'American Dad','TV Show','8315984716'),(1603,'Chelsea Football Club','Sports Club','86037497258'),(1604,'Real Madrid C.F.','Sports Team','111911618826348'),(1605,'NNNN (Ntertainment News Na Naman)','TV Show','89244898732'),(1606,'National Geographic','Media/News Company','23497828950'),(1607,'ALL TIME FAVORITE NG MGA TAGA DLA ANG MCDO!','Product/Service','113016798723536'),(1608,'Joel McHale','Public Figure','75004018682'),(1609,'Top Rank Manny Pacquiao Fan Page','Athlete','207150970887'),(1610,'Magic 89.9','Radio Station','59401015751'),(1611,'UFC','Sports League','176272595900226'),(1612,'Katy Perry','Musician/Band','7126051465'),(1613,'DLA STUDENTS <3','School','108830575830101'),(1614,'The Simpsons','TV Show','109535305740402'),(1615,'Kyle Broflovski','Public Figure','22193014176'),(1616,'Eric Cartman','Public Figure','107325192636835'),(1617,'i HATE it when my nail accidentally scratches the blackboard **goosebumps**','Community','322923367832'),(1618,'Kenneth \"Kenny\" McCormick','Public Figure','8989836574'),(1619,'Leopold \"Butters\" Stotch','Public Figure','8986263900'),(1620,'Futurama','TV Show','9588466619'),(1621,'Sheldon Cooper','Fictional Character','23519525029'),(1622,'Azriel still working hard for a deal','Community','179738268704947'),(1623,'Sheamus','Athlete','139548194814'),(1624,'Christian','Athlete','63590429032'),(1625,'Kane','River','10270726229'),(1626,'Batista','Company','10136951825'),(1627,'Undertaker','Athlete','33887045472'),(1628,'Brie Bella','Athlete','42070558672'),(1629,'Nikki Bella','Athlete','34835977009'),(1630,'Hacksaw Jim Duggan - WWE Universe','Athlete','10217821531'),(1631,'Eve Torres','Athlete','8389000757'),(1632,'Chris Jericho','Athlete','8122075826'),(1633,'R-Truth','Athlete','42888741032'),(1634,'Stone Cold Steve Austin','Athlete','8021824641'),(1635,'Randy Orton','Athlete','10117648713'),(1636,'Paul \"Triple H\" Levesque','Athlete','7550279682'),(1637,'Shawn Michaels','Athlete','9752007795'),(1638,'Kofi Kingston','Athlete','8089948555'),(1639,'Big Show','Athlete','10858891900'),(1640,'Adam Edge Copeland','Artist','8707340185'),(1641,'Julio von Matterhorn','Public Figure','219965922889'),(1642,'Lorenzo von Matterhorn','Community','174726602797'),(1643,'Mura ka ng mura hindi mo naman alam ibig sabhin.','Community','155455787823780'),(1644,'John Cena','Athlete','9899376497'),(1645,'CollegeHumor','Entertainment Website','6363207806'),(1646,'Neil Patrick Harris','Public Figure','103104823062518'),(1647,'Himym','TV Show','108296529202548'),(1648,'\"Have you met Ted ?\"','Fictional Character','71816595814'),(1649,'Barney Stinson','Fictional Character','68816265924'),(1650,'Robin Sparkles Fan Page','Musician/Band','126711064045192'),(1651,'Spongebob\'s face when he figured out Squidward likes Krabby Patties.','Community','291291599885'),(1652,'The Bro Code','Book','104237362941473'),(1653,'Jason Segel','Event Planner','107576835938933'),(1654,'Parokya ni Edgar','Musician/Band','108261248299'),(1655,'Appear Tayo','Community','124863090899967'),(1656,'Percy Jackson & the Olympians: The Lightning Thief','Movie','108008295889062'),(1657,'TMZ','TV Show','208421665712'),(1658,'Lost Tapes','TV Show','75673815268'),(1659,'Memorizing World Capitals','Interest','377861517067'),(1660,'Is It Real?','TV Show','112139672131785'),(1661,'Whose Line Is It Anyway?','TV Show','111625632186975'),(1662,'Hot Rod','Movie','107262152636932'),(1663,'Just Shout It','Community','116888758359771'),(1664,'Which DC Comics hero are you?','Games/Toys','128568477188529'),(1665,'Kip Drordy','Public Figure','109260392437693'),(1666,'Kick-Ass','Book','107787269244250'),(1667,'Tribong Cavitentoys','Community','153036874709446'),(1668,'Con Air','Movie','105610132806838'),(1669,'The Big Bang Theory','TV Show','22934684677'),(1670,'7-Eleven','Company','13457463254'),(1671,'That \'70s Show','TV Show','105653349468992'),(1672,'American Dad','TV Show','18957981609'),(1673,'Everybody Hates Chris','TV Show','108535365837313'),(1674,'Everybody Loves Raymond','TV Show','104029342967198'),(1675,'My Name Is Earl','TV Show','113499981996796'),(1676,'8 Simple Rules','TV Show','107705579252189'),(1677,'Rules of Engagement','TV Show','32130992246'),(1678,'The Soup','TV Show','12637555873'),(1679,'How I Met Your Mother','TV Show','7807422276'),(1680,'Kings of Queens','TV','111132715590564'),(1681,'Smallville','TV Show','10045457582'),(1682,'Step Brothers','Movie','12500648763'),(1683,'Zinedine Zidane','Public Figure','105536826147391'),(1684,'I hate Fridays if there\'s Saturday classes','Community','198203504717'),(1685,'Regina, Saskatchewan','City','109369119081169'),(1686,'Oddee','Entertainment Website','238779731616'),(1687,'1 GOAL','Non-Profit Organization','83919564636'),(1688,'DLA basketball','Public Figure','132965950070719'),(1689,'Watching TV','Interest','115550171789384'),(1690,'Using the Computer','Interest','389150546096'),(1691,'Having Fun With Friends','Interest','374969962946'),(1692,'RÃ©mi GAILLARD','Artist','20069718524'),(1693,'Kick-Ass','Movie','112173025466455'),(1694,'Drake & Josh','TV Show','108567602501905'),(1695,'Playing Drums','Interest','372281692522'),(1696,'Family Guy','TV Show','24609282673'),(1697,'South Park','TV Show','6708787004'),(1698,'Playing','School','111704735514882'),(1699,'Cristiano Ronaldo','Athlete','81221197163'),(1700,'VI - Proficient 10-11','Public Figure','127115997320185');
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
) ENGINE=InnoDB AUTO_INCREMENT=4431 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (4292,'racist...','1318527881526869','',NULL,NULL,NULL,'2017','02','08'),(4293,'I wanted to be generous. Now, I am generous.\n\nThis is what you can be. This is Santugon.\n\nJoin us this Student Government Annual Recruitment Week from October 10-13, at Henry Sy Grounds! See you there!\n\nFor more information, reach us on:\nfacebook: facebook.com/SANTUGON\ntwitter: @DerechoSantugon\nInstagram: @DerechoSantugon\nemail: botoderecho@santugon.com','1197189486994043','',NULL,NULL,NULL,'2016','11','25'),(4294,'Because it is our time, this is our generation.','1227207837325541','',NULL,NULL,NULL,'2016','11','13'),(4295,'Find out more this week.','1227207290658929','',NULL,NULL,NULL,'2016','11','13'),(4296,'Any electives that you want?\n\nAllow us to hear your say on this!\n\nAnswer this survey through this link:\nbit.ly/RW16FreeElectives\n\n#RW16 #BeInvolved','1220789967967328','',NULL,NULL,NULL,'2016','11','06'),(4297,'LUH','1216590365053955','Mildred Melissa Jane Saquing',NULL,NULL,NULL,'2016','11','02'),(4298,'Check out our week-long activities all set for you to kick-start your journey towards a Student-Centered University!\n#YourUSG #USGWeek2016','1195548997158092','',NULL,NULL,NULL,'2016','10','09'),(4299,'A USG THAT\'S YOURS!\nTogether, let\'s take off towards a Student-Centered University! Venture with us this USG Week at the Henry Sy Lobby from October 10-13, 2016!\n#YourUSG #USGWeek2016','1195548280491497','',NULL,NULL,NULL,'2016','10','09'),(4300,'knew it','1185925574787101','Anton Valdez',NULL,NULL,NULL,'2016','09','29'),(4301,'Eduardo Gargarita Diego Pantaleon John Gacal Matthew De Dios','1185394498173542','',NULL,NULL,NULL,'2016','09','27'),(4302,'solid','1185359954843663','',NULL,NULL,NULL,'2016','09','27'),(4303,'cute lol','1182705585109100','',NULL,NULL,NULL,'2016','09','24'),(4304,'Ako si David Zinampan. \nAko ay isang estudyante.\nPanahon na para labanan ang pagpatay nang hindi dumadaan sa batas.\nPanahon na para labanan ang pagpatay nang walang proseso.\nPanahon na para lumaban para sa #BuhayNgBayan.\nVisit the booth at SJ Bench 11 and 12 from August 8-11 and together let us make a stand.','1140141639365495','',NULL,NULL,NULL,'2016','08','07'),(4305,'Tristan Zinampan Dominic Zinampan','1083650378347955','',NULL,NULL,NULL,'2016','05','17'),(4306,'Christian Greg MaÃ±ibo mukha ka palang criminal e HAHAHAHA','1077718038941189','',NULL,NULL,NULL,'2016','05','08'),(4307,'John Gacal Diego Pantaleon Matthew De Dios Eduardo Gargarita IPPON!','1065555483490778','',NULL,NULL,NULL,'2016','04','17'),(4308,'Transparency in all our projects for you. I am David Zinampan, 70th ENG Executive for Logistics. #70thTreasury\n\nThat belt tho lol #70thEng','1038009622912031','',NULL,NULL,NULL,'2016','03','14'),(4309,'hi po kuya Nikko :> sorry po Kate :((','1006195616093432','',NULL,NULL,NULL,'2016','01','17'),(4310,'It\'s been a great year! Thanks for being a part of it.','822178077828521','',NULL,NULL,NULL,'2014','12','26'),(4311,'Iho Dancing Queens <3','805182426194753','',NULL,NULL,NULL,'2014','11','28'),(4312,'Sunflower sa gubat pose','778996945479968','Nikko Nitura Manaloto, Bill Aeron Delos Reyes, Justin Yana, Gus Daniel Gozar, Hans Murry Robis and Jet de Asis',NULL,NULL,NULL,'2014','10','03'),(4313,'Hiiii Siiiiir! Treb hahaha :D','769596936419969','',NULL,NULL,NULL,'2014','09','11'),(4314,'iho dancing queens <3 (c) napakagandang Catherine SeÃ±ires','741314179248245','Aaron Santos, Cj Dela Cruz, Nikko Nitura Manaloto, Alfred Dominic Laquian, Bill Aeron Delos Reyes, Aaron Magno, Raymund Galicia, Kobe Caronongan, Justin Yana, Patrick Allyson Cruz, Gus Daniel Gozar, Allen Genrev Sarefe, Jesmarem Lumabi, Hans Murry Robis, Sam Bernal and Patrick Aguilar',NULL,NULL,NULL,'2014','07','13'),(4315,'Happy Father\'s day, Dad. Thank you for all your hardwork. Thank you for always giving us our needs. Even though you are always working, you always have time for your family. I\'m sorry for being stubborn and I\'m also sorry for not being like my brothers and for always leaving the house. I admire you because throughout the years, your love for mom has not withered. Thank you for teaching me my values and thank you for being a good role model on how a true man should act. I\'m also thankful for your Chinese blood  People usually say \"you\'re the best dad ever!\" at the end of their messages..but I think it is unfair to the other fathers. That is why I\'m going to say..from all the fathers, I\'m grateful you were given to us. :)','727916800587983','Danny Tan Zinampan',NULL,NULL,NULL,'2014','06','15'),(4316,'aking mga kapatid <3','719184188127911','',NULL,NULL,NULL,'2014','05','28'),(4317,'Happy Mother\'s day, Mom. I\'m sorry if I seldom show how important you are to me because sometimes I take you for granted. Thank you for your patience in taking care of us. I love you...sana wag ka masyadong kiligin haha','710417019004628','Mate Brioso-Zinampan',NULL,NULL,NULL,'2014','05','11'),(4318,'nakikigaya nalang sa ibang Einstein..','678468435532820','',NULL,NULL,NULL,'2014','03','02'),(4319,'omaygash..hi guys <3','676008189112178','Bill Aeron Delos Reyes, Kobe Caronongan, Elias A Garcia and Eiran Phillip Fabricante',NULL,NULL,NULL,'2014','02','26'),(4320,'Hereâs my Facebook movie. Find yours at https://facebook.com/lookback/ #FacebookIs10','662975527082111','',NULL,NULL,NULL,'2014','02','11'),(4321,'1:35 idol e :3','636894446356886','',NULL,NULL,NULL,'2013','12','06'),(4322,'wtf? Hi Vail! haha','624844500895214','',NULL,NULL,NULL,'2013','11','15'),(4323,'Happy Birthday Aaron Magno at Allen Sarefe :D','619455661434098','',NULL,NULL,NULL,'2013','10','31'),(4324,'Happy Birthday Tristan Zinampan','614985485214449','',NULL,NULL,NULL,'2013','10','22'),(4325,'Maligayang kaarawan sa aking matalik na kaibigan :D salamat na tinuruan niyo ako nila cj na magcommute at gumala. Kung wala kayo, amboring siguro ng buhay ko haha...salamat rin dahil lagi kitang nakakasama tuwing friday at gumagala tayo. Sorry kung di ako sumasama sa ibang gala niyo, strict kasi ang parents ko haha, sana hanggang tumanda tayo ay magkakasama parin tayong magkakaibigan. Kung may problema ka, andito kami para makinig at tulungan ka...labyu pre :* hahaha pogi pa..','594501967262801','',NULL,NULL,NULL,'2013','09','10'),(4326,'May pasok ba?','581543538558644','',NULL,NULL,NULL,'2013','08','18'),(4327,'Salamat sa lahat ng bumati :))), tinatamad na ako magpasalamat sa lahat e XD','564906710222327','',NULL,NULL,NULL,'2013','07','04'),(4328,'(c) Cj Dela Cruz','517274398318892','',NULL,NULL,NULL,'2013','03','10'),(4329,'Gus Daniel Gozar Cj Dela Cruz BillAeron Delos Reyes Jm Lorenzo Hans Murry Robis Ano plano bukas?','516172128429119','',NULL,NULL,NULL,'2013','03','08'),(4330,'Kobe Caronongan Jet de Asis Juan Gabriel Abrogina James Alvarez','481164811929851','',NULL,NULL,NULL,'2012','12','26'),(4331,'James Alvarez Juan Gabriel Abrogina Jet de Asis Kobe Caronongan','481158645263801','Kobe Caronongan, Juan Gabriel Abrogina and Jet de Asis','Town And Country','Quezon City','Philippines','2012','12','29'),(4332,'Tristan Zinampan Wait for 1:03','430775023644458','',NULL,NULL,NULL,'2012','11','15'),(4333,'Jessica bawal ba? XD','437787702934229','',NULL,NULL,NULL,'2012','09','04'),(4334,'Christine -.- happy na?\n\n-What I call you:\n-How we met: \n-Who you are to me: \n-One word that describes you: \n-What I dislike about you: \n-Favourite memory: \n-First impression: \n-Do I trust you: \n-Rate out of 10: \n\nBest Feature:\n( ) Lips\n( ) Eyes\n( ) Hair\n( ) Personality\n( ) Everything\n( ) Nothing\n( ) Face\n\nIf You Hug Me, I Would:\n( ) Pull You In Closer\n( ) Push Away\n( ) Beat you up\n( ) It\'s Alright\n( ) Hug back :D\n( ) Stare at you like O.O\n\nYou Are My:\n( ) BABY\n( ) Boo\n( ) Flirting Buddy\n( ) Friend\n( ) Undefined Friend\n( ) (kindergarten) Best Friend :DD\n( ) Brother/Sister on fb we need to be!!!!\n( ) Undefined You Tell Me ?\n( ) I Don\'t Know Yet,\n( ) Texting Buddy','436282253084774','',NULL,NULL,NULL,'2012','08','31'),(4335,'Jemuel Aranda Post mo na yung video ng mga babae sa mcdo','417200108326322','',NULL,NULL,NULL,'2012','07','07'),(4336,'Hiï¼i just built a basketabllteam in Dream Team and got a legend super star playerD.Rose. Come on, and join us!','355269334519400','',NULL,NULL,NULL,'2012','03','29'),(4337,'Hiï¼i have just build a basketabll team in Dream Team and got a lengend super star playerD.Rose. Come on, and join us!æååå¨æ¢¦ä¹éæ¸¸æä¸­åå»ºäºå±äºèªå·±ççéï¼è·å¾äºä¼ å¥å·¨æD.Roseï¼èµ¶å¿«æ¥åæä¸èµ·å å¥æ¢¦ä¹éå§ï¼','341488259230841','',NULL,NULL,NULL,'2012','03','07'),(4338,'kay justin yan eh, unoriginal.','335274443185556','',NULL,NULL,NULL,'2012','02','26'),(4339,'Tristan Zinampan','299383940095133','',NULL,NULL,NULL,'2011','12','04'),(4340,'Say something about this...','189747814434960','',NULL,NULL,NULL,'2011','10','20'),(4341,'Kobe Caronongan,Jasper Miguel,Jet Plane,Jm Lumabi,Hans Murry Robis,Raph Olpindo Kuya Ronnie - 09182752205','253290678050600','',NULL,NULL,NULL,'2011','10','08'),(4342,'HAPPPPPPPPY','234276026618732','',NULL,NULL,NULL,'2011','08','26'),(4343,'Darwin','231257193587282','',NULL,NULL,NULL,'2011','08','20'),(4344,'CRUSH KO SI\n.\n.\n.\n.\nSee More','228275660552102','',NULL,NULL,NULL,'2011','08','14'),(4345,'Kobe, Cj, Justin, Juan, James, SHOMBAAAAAAA!','221167747929560','',NULL,NULL,NULL,'2011','07','31'),(4346,'Marri Ysabelle D Alcoriza, ung pics ha.Gusto ksi ni Justin Yana.... ay thanks pala knina sa ANGRY BIRDS.','220708034642198','',NULL,NULL,NULL,'2011','07','29'),(4347,'Astig ng slamdunk competition knina Justin Yana,Juan Gabriel Abrogina,Kobe Caronongan tinalunan si Emerson. Justin eto na: Ang sayang ng Miting De Avance kanina. Angry Birds!!!.....happy ka na justin','220667781312890','',NULL,NULL,NULL,'2011','07','29'),(4348,'may pasok na bukas :( dasal tayo na sana lumala','219722088074126','',NULL,NULL,NULL,'2011','07','27'),(4349,'Jesmar, ano pangalan ng PSN account mo','215023001877368','',NULL,NULL,NULL,'2011','07','17'),(4350,'BULLSHACKS!','214066628639672','',NULL,NULL,NULL,'2011','07','17'),(4351,'Say something about this...','161263870609079','',NULL,NULL,NULL,'2011','07','02'),(4352,'Cool, naapakan ko isang daga, pero nakatakas pa baka gantihan ako!','205645679481767','',NULL,NULL,NULL,'2011','06','29'),(4353,'GANUN PALA','205378956175106','Justin Yana, Edmund Zephaniah Rosero and Brian Verzosa',NULL,NULL,NULL,'2011','06','24'),(4354,'Say something about this...','210303982341371','',NULL,NULL,NULL,'2011','06','13'),(4355,'Tristan Zinampan Denzel Sia','190238184360876','',NULL,NULL,NULL,'2011','06','07'),(4356,'As a proud member of Team Bring It, I pledge to stand fearless in the face of adversity and bring it everyday.','192234447489557','',NULL,NULL,NULL,'2011','05','04'),(4357,'92 Facts','187596181286717','',NULL,NULL,NULL,'2011','04','15'),(4358,'FICK DICH!','187458951300440','',NULL,NULL,NULL,'2011','04','13'),(4359,'May araw na di pa ako natutulog >:(','186598361386499','',NULL,NULL,NULL,'2011','04','10'),(4360,'PS3!','186550754724593','',NULL,NULL,NULL,'2011','04','09'),(4361,'POWERBOMB IN MMA','214158028597632','',NULL,NULL,NULL,'2011','04','08'),(4362,'ASTIG!','198848080155105','',NULL,NULL,NULL,'2011','04','08'),(4363,'The most frustrating game since QWOP\n','217296381629754','',NULL,NULL,NULL,'2011','04','01'),(4364,'WHAT THE HELL! XD','184535964926072','',NULL,NULL,NULL,'2013','12','28'),(4365,'Tristan Zinampan','160076907383557','',NULL,NULL,NULL,'2011','03','19'),(4366,'Tristan Zinampan','191038907598512','',NULL,NULL,NULL,'2011','03','19'),(4367,'ang cute cute ko tlga!!!! sbi ni Sharah Bonguit','181545098558492','',NULL,NULL,NULL,'2011','03','19'),(4368,'1st person to like my status - I\'ll change my last name to yours for 1 month\n2nd person to like my status - I\'ll write I love you on your wall.\n3rd person to like my status - I will answer any question. (inbox Only)\n4th person to like my status - You can choose my next status.\nPut this as your status if you\'re brave enough:B','181540738558928','',NULL,NULL,NULL,'2011','03','19'),(4369,'2:06','159879614068284','',NULL,NULL,NULL,'2011','03','17'),(4370,'May nakatago','177763542269981','',NULL,NULL,NULL,'2011','03','05'),(4371,'THOR!!!','176861419026860','',NULL,NULL,NULL,'2011','02','28'),(4372,'Ano yung 50 na elements? Nkalimutan ko eh','161205800593379','',NULL,NULL,NULL,'2011','01','17'),(4373,'Iron Man!','165401810172821','',NULL,NULL,NULL,'2011','01','14'),(4374,'When I see your face, mukhang basag na flower vase','117151515025480','',NULL,NULL,NULL,'2011','01','08'),(4375,'Here I sit\nbroken hearted,\nTried to shit\nbut only farted.','157179770996425','',NULL,NULL,NULL,'2011','01','04'),(4376,'best number is 73 because 73 is the 21st prime number it\'s mirror number is 37 which is the 12th prime number. It\'s binary number is 1001001 it\'s mirror number is 1001001','178047382219543','',NULL,NULL,NULL,'2013','12','28'),(4377,'bading','186047508072555','',NULL,NULL,NULL,'2010','12','22'),(4378,'13.6m palang sa QWOP','116502641751348','',NULL,NULL,NULL,'2010','12','22'),(4379,'is learning how to play the guitar','149705605078074','',NULL,NULL,NULL,'2010','12','20'),(4380,'adik','127327190662508','',NULL,NULL,NULL,'2010','11','29'),(4381,'sawa na ako sa profile pic ko','132246806833972','',NULL,NULL,NULL,'2010','11','23'),(4382,'ang cool','143153659064303','',NULL,NULL,NULL,'2011','08','01'),(4383,'tsk.. ako ba!?!?!','149135978461130','',NULL,NULL,NULL,'2010','10','05'),(4384,'NALASING KAHAPON AKO','113467092046839','',NULL,NULL,NULL,'2010','10','03'),(4385,'Real-Life Wolverine','106846809379384','',NULL,NULL,NULL,'2010','10','01'),(4386,'The Real-Life Iron Man','155979211091616','',NULL,NULL,NULL,'2010','10','01'),(4387,'WAG NYO NGA AKONG ISEND NG CHAIN LETTERS!!!,NAKAKAPIKON EH','129877533731244','',NULL,NULL,NULL,'2010','10','01'),(4388,'Juan Gabriel Abrogina Ako Si Sijey Emerson Sabuya','158951640798794','',NULL,NULL,NULL,'2010','10','02'),(4389,'True Ninja Turtle','139551192757883','',NULL,NULL,NULL,'2010','09','30'),(4390,'TIGER BA YAN','139547576091578','',NULL,NULL,NULL,'2010','09','30'),(4391,'Real Life Pacman','139300666116269','',NULL,NULL,NULL,'2010','09','29'),(4392,'geh nga, HIHINTAYIN KO','163779453633548','',NULL,NULL,NULL,'2010','09','29'),(4393,'Ako Si Sijey Hyun-Ki Mun-Hee Daniel Gozar Jemuel Aranda','139088339470835','',NULL,NULL,NULL,'2012','12','26'),(4394,'Ako Si Sijey','139085452804457','',NULL,NULL,NULL,'2010','09','30'),(4395,'I â¥ 92','164201773594256','',NULL,NULL,NULL,'2010','09','28'),(4396,'hahahah','155000887853601','',NULL,NULL,NULL,'2010','09','24'),(4397,'just got back from our retreat','149853131719895','',NULL,NULL,NULL,'2010','09','24'),(4398,'Love is patient and is kind; love doesn\'t envy. Love doesn\'t brag, is not proud, doesn\'t behave itself inappropriately, doesn\'t seek its own way, is not provoked, takes no account of evil; doesn\'t rejoice in unrighteousness, but rejoices with the truth; bears all things, believes all things, hopes all things, endures all things   ---1 Corinthians 13','155591317791851','',NULL,NULL,NULL,'2010','09','19'),(4399,'di nga','161445237205741','',NULL,NULL,NULL,'2010','09','18'),(4400,'GLING!, 4 sa friends ko AGNES yung prof pic','130522520328676','',NULL,NULL,NULL,'2010','09','11'),(4401,'is playing Boomz!','140614392646978','',NULL,NULL,NULL,'2010','09','01'),(4402,'KILALA NYO BA KUNG SINO SI AGENTXD NG PROFICIENT,tnong lng fyi alm kung sno sya tnatnong ko lng','148800485142032','',NULL,NULL,NULL,'2010','09','01'),(4403,'Worst Day Ever!!','149847321709701','',NULL,NULL,NULL,'2010','09','01'),(4404,'GO TO HELL,JEMUEL','104542079606523','',NULL,NULL,NULL,'2011','03','20'),(4405,'you want a war, you\'ll get a war!','127251800655658','',NULL,NULL,NULL,'2010','08','30'),(4406,'totoo naman eh','148162505206722','',NULL,NULL,NULL,'2010','08','29'),(4407,'Which DC Comics hero are you? -- My Result: The Flash. http://quizme.heroku.com/quizzes/129117/referrals/status?aid=100001090082097','155241564492341','',NULL,NULL,NULL,'2010','08','29'),(4408,'Le monde est injuste. Pour ai-je toujours la malchance','151743184851701','',NULL,NULL,NULL,'2010','08','30'),(4409,'Juan Dela Cruz  at Nikko Nitura Manaloto saya knina nkta pa natin si sotto at aibby, nakakainis lng dhil andoon si Nicole Cabarles','155301301151385','',NULL,NULL,NULL,'2010','08','29'),(4410,'ASTIG','147805451907560','',NULL,NULL,NULL,'2010','08','26'),(4411,'TWILIGHT SUCKS SUCKSS!!!!!','131175196928458','',NULL,NULL,NULL,'2010','08','29'),(4412,'grabe yung Kidlat','125675924146156','',NULL,NULL,NULL,'2010','08','24'),(4413,'NASA CNN YUNG HOSTAGE','153702104645650','',NULL,NULL,NULL,'2010','08','23'),(4414,'EPAL!!','146564992030209','',NULL,NULL,NULL,'2010','08','21'),(4415,'funny','119697948080699','',NULL,NULL,NULL,'2010','08','21'),(4416,'adik mag yoyo','132692906775473','',NULL,NULL,NULL,'2010','08','20'),(4417,'Can you beat my Score??','129138410465828','',NULL,NULL,NULL,'2010','08','20'),(4418,'Can you beat my Score??','129138250465844','',NULL,NULL,NULL,'2010','08','20'),(4419,'Can you beat my Score??','129138127132523','',NULL,NULL,NULL,'2010','08','20'),(4420,'Can you beat my Score??','129137813799221','',NULL,NULL,NULL,'2010','08','20'),(4421,'KAKAPIKON, nasira celfone ko!!!','143977765635771','',NULL,NULL,NULL,'2010','08','20'),(4422,'Can you beat my Score??','128872283825774','',NULL,NULL,NULL,'2010','08','19'),(4423,'hahaha, paano nya alm','144656158889285','',NULL,NULL,NULL,'2010','08','15'),(4424,'is sick','138585002848882','',NULL,NULL,NULL,'2010','08','06'),(4425,'racist','125484444164558','Cj Dela Cruz, Alvin Emmanuel, Emerson Sabuya and James Alvarez',NULL,NULL,NULL,'2011','04','05'),(4426,'How to say I love you...THE EQUATION','125237560855913','',NULL,NULL,NULL,'2010','08','05'),(4427,'mukhang di ako makakaobstacle race dhil napilayan ako sa tuhod','133027300068374','',NULL,NULL,NULL,'2010','07','20'),(4428,'Congratulations Spain, for winning the World Cup \'10','131501523553103','',NULL,NULL,NULL,'2010','07','17'),(4429,'I BET you CAN\'T stare at this for LONGER than 10 SECONDS!','109469759103281','',NULL,NULL,NULL,'2010','07','10'),(4430,'Quiero dormir','141644995852313','',NULL,NULL,NULL,'2010','07','10');
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

-- Dump completed on 2017-04-02 17:51:50
