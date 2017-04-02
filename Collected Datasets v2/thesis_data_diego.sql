-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: thesis_data_diego
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (102,'08/15/1998','birthday'),(103,'Diego','first_name'),(104,NULL,'middle_name'),(105,'Pantaleon','last_name'),(106,'male','gender'),(107,'','location'),(108,'','hometown');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (32,'Don Bosco Technical Institute, Makati','High School',0000,NULL,'108615515829522'),(33,'De La Salle University','College',2019,'BS Industrial Engineering','127612997282544');
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
) ENGINE=InnoDB AUTO_INCREMENT=985 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (957,'UAAP SEASON 78 FINALS: ADMU vs. UP','attending','Rizal Memorial Stadium','Manila','Philippines','1734284036809952'),(958,'UAAP Women\'s Football Finals: DLSU VS. UP','attending','Rizal Memorial Stadium','Manila','Philippines','221169494928818'),(959,'UAAP Semifinals: DLSU vs ADMU','attending','Rizal Memorial Stadium','Manila','Philippines','1711301085784646'),(960,'Semi-Finals: DLSU vs ATENEO #UAAP78MensFootball','unsure','Rizal Memorial Stadium','Manila','Philippines','1716807258594709'),(961,'BMS Presents: Unplugged','unsure','Track 30Th Bonifacio Global City','Taguig','Philippines','1559728654342958'),(962,'Roms\' party','unsure','18 Montclair St. Merville Subdivision Paranaque City',NULL,NULL,'1569707476638817'),(963,'TIMEOUT: A youth gathering of LOJ Youth PICC','unsure','Banquet Hall 1 & 2, Picc',NULL,NULL,'263029897234930'),(964,'Javier\'s 7th Birthday Celebration','attending','28 Kitanlad Street, Quezon City',NULL,NULL,'1421945154721260'),(965,'Numbers :-)','attending',NULL,NULL,NULL,'462984687148557'),(966,'Nuuumbers','attending',NULL,NULL,NULL,'173382262816035'),(967,'NUUMBERS PLEASE :)','attending',NULL,NULL,NULL,'480662571997823'),(968,'Alexis\' 1st and Jenny\'s Nth :  ) Birthday','attending',NULL,NULL,NULL,'277702439022151'),(969,'Lola Chony\'s 40th Day','attending',NULL,NULL,NULL,'397346380356872'),(970,'NUMBERSSSSS!!!!!','attending','House','Makati','Philippines','137804886382202'),(971,'Numbers Please! :3','attending',NULL,NULL,NULL,'358028374295376'),(972,'Numbers!!!','attending',NULL,NULL,NULL,'152213578259636'),(973,'Nuuuumbers pwease. :)','attending',NULL,NULL,NULL,'215498975244635'),(974,'BBM PINS! âº','attending',NULL,NULL,NULL,'448620875161364'),(975,'Numbers Please!! =))','attending',NULL,NULL,NULL,'269531176482338'),(976,'Numbers :(','attending',NULL,NULL,NULL,'351992781526418'),(977,'Found my phone :) now i need numbers ','attending',NULL,NULL,NULL,'442974015714511'),(978,'Numbers. :)','attending',NULL,NULL,NULL,'368479136529593'),(979,'Numbersss.','attending','Anywhere','Quezon City','Philippines','275005429243323'),(980,'Baptism of Alexis Martine Silayan','attending',NULL,NULL,NULL,'832910623462608'),(981,'Nuumbers!! :>','attending',NULL,NULL,NULL,'765747913543250'),(982,'Silayan Christmas Party: Let\'s ROCK this Christmas!','attending',NULL,NULL,NULL,'715713128539955'),(983,'Silayan Games v2.011','attending',NULL,NULL,NULL,'867737563273157'),(984,'SEMBREAK!','attending',NULL,NULL,NULL,'819534668094281');
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
INSERT INTO `family` VALUES (146,'Francisco PantaleÃ³n','brother','1067826526655053'),(147,'Raisa Quilet PantaleÃ³n','cousin','10154517460109423');
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
) ENGINE=InnoDB AUTO_INCREMENT=2150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1851,'DLSU Engineering Week 2017: Episode LXXI','Community Organization','394874057514518'),(1852,'Kaya F.C.','Interest','594871264044680'),(1853,'Diliman Football League','Sports League','132770153589497'),(1854,'Library of Most Controversial Files','News/Media Website','286753951410972'),(1855,'Radio One Lebanon','Just For Fun','124271334261942'),(1856,'Huffington Post UK','Other','143753582359049'),(1857,'Mike Posner','Musician/Band','35894276214'),(1858,'Economically Speaking','Community','1603246019982382'),(1859,'DLSU University Vision-Mission Week','Community','346414242402073'),(1860,'Mechanical Engineering Society, MES','Company','124047424273129'),(1861,'Intel Philippines','Product/Service','148168013639'),(1862,'Ta-ku','Musician/Band','179194324313'),(1863,'Green Giant FM','Radio Station','77443957603'),(1864,'Condodeal','Real Estate','158438284614980'),(1865,'Towards Uplifting Knowledge and Leadership Advancement Series','Organization','1150516855063207'),(1866,'DLSU CSO','Organization','245252766116'),(1867,'GineersNow','Media/News Company','979451052075778'),(1868,'Unilever Careers','Organization','226199974194125'),(1869,'DLSU-Manila Secret Files','Community','576825992449694'),(1870,'Luxury Food London','Community','1048074471917680'),(1871,'Influencive','Media/News Company','147558191967148'),(1872,'Updates Bieber','News/Media Website','1395020474085496'),(1873,'BabyFirstTV','TV Network','112284674585'),(1874,'Easy Travels - Pagadian','Tour Agency','131979850527500'),(1875,'Blorkishn','Artist','214109332027872'),(1876,'Finelines Corporation','Company','226261737510236'),(1877,'TVRUS','Local Business','685282931583791'),(1878,'The Gentleman Project','Jewelry/Watches','1512838648994384'),(1879,'Manila Tea Gang','Musician/Band','1062769617142476'),(1880,'Wanderland','Community','597401693622205'),(1881,'Herschel Supply Co.','Bags/Luggage','257650890955678'),(1882,'IndusTees','Clothing (Brand)','634779003354406'),(1883,'Sebago Philippines','Product/Service','261359793887932'),(1884,'crwn','Musician/Band','662294363828452'),(1885,'Football Manila','Sports Event','180592945421961'),(1886,'Engineers of La Salle','Community','1717614991811008'),(1887,'NeymarFan.com - Fans de Neymar','Recreation/Sports Website','113653978714425'),(1888,'Aklat for Culiat: A Book Drive for Culiat Elementary School','Event','555185911309390'),(1889,'Loki','Comedian','507150246035338'),(1890,'Neil Gaiman','Author','300224781015'),(1891,'Tardibae: Raising Awareness for Tardigrades','Community','1032784916800961'),(1892,'Alex Aiono','Musician/Band','182032895154467'),(1893,'Engineering Beyond Borders 2016','Company','1019186531461002'),(1894,'ASUS','Computers (Brand)','272213024956'),(1895,'Greenpeace International','Non-Profit Organization','7297163299'),(1896,'WWF','Non-Profit Organization','20373776304'),(1897,'The Huffington Post','Other','18468761129'),(1898,'Tech Insider','Other','352751268256569'),(1899,'DLSU Crushes','Community','643369445762552'),(1900,'Collision: Beyond Luminaria','Website','849973611688303'),(1901,'DLSU Lasallian Ambassadors','Organization','1471935109747396'),(1902,'Topman','Men\'s Clothing Store','131162253596623'),(1903,'Ankle Upgrade','Clothing (Brand)','1733537683542816'),(1904,'SkyJet Airlines','Cargo & Freight Company','274195365989433'),(1905,'Jetstar Asia','Travel Company','31975232581'),(1906,'Cebu Pacific Air','Travel Company','100352916677659'),(1907,'GiveMeSport','News/Media Website','566760030037879'),(1908,'70th ENG','Company','1647370928858454'),(1909,'BuzzFeed Australia','News/Media Website','1412984988933193'),(1910,'Bosker Fitness','Clothing (Brand)','906395196108470'),(1911,'Business Management Students\' Convention','Community','280010642195516'),(1912,'Grammarly','Education Website','139729956046003'),(1913,'Berlin ArtParasites','Arts/Humanities Website','199504240099510'),(1914,'De La Salle University Futsal Club','Organization','360049267493867'),(1915,'Pasikatan 2015','Community','552916441528753'),(1916,'DLSU JEMA','Non-Profit Organization','150272728495752'),(1917,'IMES','Organization','1489018524747003'),(1918,'ODESZA','Musician/Band','428904283808020'),(1919,'GTW by SM','Clothing (Brand)','1509065315989757'),(1920,'Shawn Wasabi','Producer','577978478901010'),(1921,'M4SONIC','Musician/Band','248049268604757'),(1922,'The LaSallian','Media/News Company','149678604759'),(1923,'De La Salle University','Food & Beverage','112961752051469'),(1924,'DLSU Green Media Group','Non-Profit Organization','155214171278514'),(1925,'LPEP 2K15','Community','1588399598100568'),(1926,'Exige','Musician/Band','282137035179916'),(1927,'Enrique \"xPeke\" CedeÃ±o-Martinez','Athlete','233094276709263'),(1928,'Regatta','Clothing (Brand)','103982866301404'),(1929,'Uniqlo Philippines','Clothing (Brand)','236722239730868'),(1930,'DLSU CSO: Frosh Welcoming and Annual Recruitment Week','College & University','1612387242349708'),(1931,'Kyjarly Travel Services','Travel Agency','466180480217778'),(1932,'Dlsu Usg','Organization','283415475102221'),(1933,'UFL Youth PH','Sports League','401475336691219'),(1934,'Global FC Youth Center','School','934208063278266'),(1935,'Felipe and Sons','Local Business','230381287109712'),(1936,'Slick Barbers Co.','Barber Shop','359273970926149'),(1937,'LOL Esports','Sports League','108310886008444'),(1938,'Mashd N Kutcher','Musician/Band','129845083851347'),(1939,'BuzzFeed','Media/News Company','21898300328'),(1940,'The Manta Resort','Travel Company','168487639867235'),(1941,'JCAN Fingerstyle','Musician/Band','779945952124186'),(1942,'Promote Philippines','Local/Travel Website','1061322177218383'),(1943,'Top Vines','Media/News Company','171112259610923'),(1944,'Mang Andres','Burger Restaurant','1420367684933851'),(1945,'FlipTrip.ph','Tour Agency','637507906310937'),(1946,'Primera','Clothing (Brand)','538450879590472'),(1947,'Wendy\'s','Food & Beverage Company','113385204488'),(1948,'RAVEManila','Entertainment Website','406096436134261'),(1949,'Progress','Clothing (Brand)','155562961198821'),(1950,'Excel Corporation','Company','784516111583830'),(1951,'Main Frame','Local Business','726288934159064'),(1952,'Kulor','Company','404168016412923'),(1953,'ZALORA','Clothing (Brand)','363577403658465'),(1954,'University of the Philippines','College & University','125780737444829'),(1955,'University of Santo Tomas','Private School','121328281212298'),(1956,'De La Salle University','College & University','127612997282544'),(1957,'COLOR Manila RUN','Community','325780124184340'),(1958,'Kimstore','Retail Company','119920974703814'),(1959,'Architecture & Design','Magazine','249880261833903'),(1960,'Sigma Delta Phi','Organization','341680249240153'),(1961,'DBXTRM','Dancer','303426589861581'),(1962,'McDonald\'s','Fast Food Restaurant','121863347862934'),(1963,'Kina Grannis','Musician/Band','21097416504'),(1964,'Straightforward','Shopping & Retail','128973047155157'),(1965,'TheSoundYouNeed','Radio Station','550777688284144'),(1966,'Majestic Casual','Radio Station','221646591235273'),(1967,'Ed Sheeran','Musician/Band','9189674485'),(1968,'Kygo','Musician/Band','512757958787342'),(1969,'Coloud Headphones','Electronics','211214872228401'),(1970,'Sperry','Retail Company','266696680025970'),(1971,'Iggy Azalea','Musician/Band','283647554985776'),(1972,'CHVRCHES','Musician/Band','334533196573280'),(1973,'Kicker Spaniel','Shopping & Retail','568304033253817'),(1974,'KFC','Chicken Joint','117373194958135'),(1975,'SURGE','Community','740985989259035'),(1976,'Zedd','Musician/Band','107281645968137'),(1977,'ETCorp.','Company','276603739163910'),(1978,'Switch Co.','Company','628378663893696'),(1979,'Autonomous','Community','632780043423735'),(1980,'Clique','Clothing (Brand)','577770708973813'),(1981,'Fnatic LoL Team','Sports Team','339065679446814'),(1982,'HyperX','Computer Company','179848128697913'),(1983,'Sam Tsui','Musician/Band','34356105818'),(1984,'FIFA World Cup','Home','606721589343692'),(1985,'Victoria Justice','Community','153243934771970'),(1986,'Mineski-League of Legends','Sports Team','365879073505924'),(1987,'Kurt Schneider','Musician/Band','132029000180393'),(1988,'Miranda Cosgrove','Musician/Band','9934379006'),(1989,'Avicii','Musician/Band','26435256798'),(1990,'Kaye Vintage','Clothing (Brand)','238446096312426'),(1991,'Unwind Clothing Co.','Clothing (Brand)','527073600694889'),(1992,'Marco Reus','Athlete','310111039010406'),(1993,'Stephan SchrÃ¶ck','Athlete','157088320985762'),(1994,'Eden Hazard','Athlete','21941054161'),(1995,'Mario GÃ¶tze','Athlete','185923878109545'),(1996,'Samsung Mobile Philippines','Electronics','146941488726138'),(1997,'BIG Shift Performing Arts Centrale','Dance Studio','367303819969076'),(1998,'8CRAP','Website','586487838060776'),(1999,'8FACT','Website','120709694789840'),(2000,'Musikapella','Non-Profit Organization','154634091236520'),(2001,'Jennifer Lawrence','Artist','52528756792'),(2002,'4play','Public Figure','356840747753590'),(2003,'Facebook','Residence','107885072567744'),(2004,'FC Barcelona','Mountain','104126576290438'),(2005,'Real Madrid C.F.','Sports Team','111911618826348'),(2006,'Rhett Price','Artist','80034696293'),(2007,'Don Bosco Makati Science Club','Education','542879629082878'),(2008,'GOM Pro Skills Program','Company','521076194590217'),(2009,'KARMALOOP.com','Clothing (Brand)','6560321844'),(2010,'Best Vines','Website','170901143077174'),(2011,'Soccer Memes','Community','309369765788612'),(2012,'League of Legends','Video Game','82061850555'),(2013,'Chrissy Costanza','Public Figure','117159768458728'),(2014,'E-Collidex','Consulting Agency','154438577954340'),(2015,'Trends PH','Shopping & Retail','406279522799560'),(2016,'United Football League Philippines','Sports League','284208234925328'),(2017,'Ariana Grande','Musician/Band','12384211026'),(2018,'Flying Dutchman Shoes','Shopping & Retail','247390848642733'),(2019,'HUGELOL','Entertainment Website','247575072037935'),(2020,'League of Legends - Philippines','Games/Toys','139801452706157'),(2021,'Azkals Global Football Academy','School Sports Team','277557862356836'),(2022,'Football Focus','Sports League','297321990372736'),(2023,'Bootcamp Football Shop','Shopping & Retail','347386845294902'),(2024,'Soccer','Soccer Field','102173226491776'),(2025,'Basketball','Sport','108614982500363'),(2026,'Alex Goot','Musician/Band','15054318061'),(2027,'CoG - Center of Gravity','Sporting Goods Store','160100644045817'),(2028,'Byte','Local Business','317582785027856'),(2029,'Quantum Works','Local Business','551582314871596'),(2030,'Pilipinas Futbol Gamers','Games/Toys','411956052214735'),(2031,'Scratchworx','Clothing (Brand)','294416457328606'),(2032,'Dragon Nest SEA','Games/Toys','169419756438855'),(2033,'Vans','Footwear Store','129594317087504'),(2034,'Red Mango','Restaurant','8351797411'),(2035,'SoccerBible','News/Media Website','298269803325'),(2036,'Eclectic Menus','Food & Beverage Company','243408922444588'),(2037,'BBZ Degrees','Product/Service','19901145027'),(2038,'Olivia \"Chachi\" Irene Gonzales','Dancer','310037042354558'),(2039,'Chachi Gonzales - www.ChachiSwag.com','Sports Team','224780904215080'),(2040,'Emma Watson','Artist','140216402663925'),(2041,'Nike Football','Sporting Goods Store','51212153078'),(2042,'artwork','Clothing (Brand)','56899063048'),(2043,'Neymar Jr.','Athlete','148456285190063'),(2044,'Younghusband Football','Amateur Sports Team','153797178005137'),(2045,'Orange Dance Studio','Company','165097140177800'),(2046,'David Choi','Musician/Band','39159190991'),(2047,'Razer','Video Game','13848807575'),(2048,'Don Bosco Technical Institute - Makati City (Official Site)','School','445086115536691'),(2049,'I Can\'t Believe It','Media/News Company','169143726508387'),(2050,'Chicser','Public Figure','256394914379737'),(2051,'Bakit Bestfriend Ko Pa :l','News Personality','134417303293101'),(2052,'World Soccer Shop','Sporting Goods Store','7009728572'),(2053,'Sleeping','Interest','102168219824412'),(2054,'Shoccer','Outdoor & Sporting Goods Company','411863945520612'),(2055,'Christina Grimmie','Musician/Band','113888165320453'),(2056,'Patrick Star','Fictional Character','50403195950'),(2057,'Manchester United Lovers','Community','143420355715712'),(2058,'KAYA Futbol Club','Sports Team','196089753735222'),(2059,'Neil Etheridge','Public Figure','105560096145214'),(2060,'Soccer Memes','Organization','318701758197324'),(2061,'Wayne Rooney','Athlete','245323855526590'),(2062,'Mike Wazowski','Movie Character','136573008414'),(2063,'Beats by Dre','Electronics','78986534109'),(2064,'Pixlr-o-matic','App Page','321944401163236'),(2065,'iPod Touch','Interest','109518919074429'),(2066,'MyMusicStore.com.ph','Website','268603386493914'),(2067,'UEFA Champions League','Sports League','154040584642412'),(2068,'UFL Philippines/PFF In FIFA 13','Games/Toys','364533343562601'),(2069,'New York Knicks','Sports Team','21410634615'),(2070,'Tetris Battle','App Page','345869588775471'),(2071,'adidas','Company','183334676308'),(2072,'Car Town','App Page','317965161575461'),(2073,'Jackie Marie Tran','Public Figure','183379175023626'),(2074,'David Guetta','Musician/Band','7619396355'),(2075,'David Villa SÃ¡nchez','Athlete','20714737025'),(2076,'Discover Philippines','Local/Travel Website','272403279490289'),(2077,'Backyard Monsters','App Page','304561816235995'),(2078,'JanSport','Bags/Luggage','8314408429'),(2079,'Xavi','Public Figure','104134816290969'),(2080,'Adidas f50','Clothing (Brand)','50091911757'),(2081,'RÃ©mi GAILLARD','Artist','20069718524'),(2082,'Real Steel','Movie','327836155819'),(2083,'Pizza','Food','105567999476390'),(2084,'A.C. Milan','Sports Team','147054831936'),(2085,'Sungha Jung (Official Fan Page)','Musician/Band','208669395824784'),(2086,'Ketchup Band','Musician/Band','254908444546530'),(2087,'Sugarbee','Food & Beverage Company','253954171322803'),(2088,'Chachi Gonzales','Dancer','138046499598485'),(2089,'Mama Mary','Public Figure','90520432292'),(2090,'David Beckham','Athlete','84218631570'),(2091,'Mentos','Food & Beverage Company','435331723202034'),(2092,'Dallas Mavericks','Sports Team','16555485460'),(2093,'Hayley Williams','Religious Place of Worship','202941843073000'),(2094,'Plants vs. Zombies','Video Game','57571168213'),(2095,'Google Chrome','Software','321662419491'),(2096,'Bruno Mars','Musician/Band','242567287243'),(2097,'7-Eleven Philippines','Retail Company','62739603227'),(2098,'Tron','Movie','99792857339'),(2099,'FC Barcelona','Sports Team','197394889304'),(2100,'Manchester United','Sports Team','7724542745'),(2101,'AndrÃ©s Iniesta','Athlete','79298470625'),(2102,'Ray Allen','Athlete','101003043318721'),(2103,'Leo Messi','Athlete','176063032413299'),(2104,'Iker Casillas','Athlete','189956894367877'),(2105,'Must.....stop....liking...things.......OH THATS SO TRUE!! *click*','Community','138790296178639'),(2106,'RnB','Musical Genre','111684185517141'),(2107,'Real Madrid C.F.','Sports Team','19034719952'),(2108,'Steve Nash','Athlete','77922840249'),(2109,'Star Movies','Interest','105649512801879'),(2110,'Velvet','Interest','103740382998744'),(2111,'HBO','TV Network','113408673932'),(2112,'Myself','Local Business','134533126605144'),(2113,'Iker Casillas','Public Figure','112739002071322'),(2114,'Portugal National Football Team','Sports Team','109601009059523'),(2115,'Usher','Musician/Band','6564142497'),(2116,'MYX Philippines','TV Channel','145388032112'),(2117,'Miami Heat','Sports Team','284300559123'),(2118,'Boston Celtics','Sports Team','8725012666'),(2119,'You almost bump into someone, you both go left, you both go right.','Community','286741196348'),(2120,'POINTS FOR EFFORT, please!','Community','308395320249'),(2121,'I love it when someone\'s laugh is funnier than the joke','Community','278131782990'),(2122,'to have fun','Company','118151904876953'),(2123,'What is the point of a white crayon?','Community','127805949980'),(2124,'how good water tastes when you\'re really thirsty.','Community','313142967286'),(2125,'I hate being blamed for crap i didn\'t do.','Community','179535306860'),(2126,'I Bite My Straw.','Community','293089423676'),(2127,'OREOS: First you twist it, then you... oh, it broke. :/','Community','254064314495'),(2128,'DORA THE BANANA TREE IS RIGHT IN FRONT OF YOU.YOU CALL YOURSELF AN EXPLORER','Community','195161118132'),(2129,'Paul Pierce','Athlete','48886437524'),(2130,'Rajon Rondo','Athlete','79102700030'),(2131,'Magic: The Gathering','Games/Toys','681035948631936'),(2132,'I am more sleepy when I wake up than when I go to bed.','Community','428009805540'),(2133,'Di naman ako snob, nahihiya lang akong maunang bumati. :)','Community','112031012146915'),(2134,'Chocolate','Food & Beverage Company','23488174815'),(2135,'Chocolate Milk','Community','15922754588'),(2136,'Waffles','Community','34835589312'),(2137,'Gummy Worms','Community','42843381184'),(2138,'Maltesers','Company','14186044387'),(2139,'Brownies','Community','63342779631'),(2140,'Toby\'s Sports','Product/Service','61884672898'),(2141,'Lay\'s','Food & Beverage Company','10139643057'),(2142,'bacon.','Community','111347755570347'),(2143,'Eating a lot of random snacks when you get home from school','Community','236850453848'),(2144,'if i text a person in the same room as me, i stare at them \'til they get it','Community','354340575890'),(2145,'Kobe Bryant','Athlete','69025400418'),(2146,'Sinisilip-silip ko noon ung ref kung mamamatay ung ilaw habang sinasara.:))','Community','317979850451'),(2147,'LEGO','Games/Toys','6665038402'),(2148,'HERSHEY\'S','Company','942468729120075'),(2149,'Fifa World Cup 2010','Interest','105793556127276');
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
  `tagged` varchar(500) DEFAULT NULL,
  `place` varchar(500) DEFAULT NULL,
  `city` varchar(500) DEFAULT NULL,
  `country` varchar(1000) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4758 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (4657,'âTrue compassion means not only feeling another\'s pain but also being moved to help relieve it.â \n- Daniel Goleman\nHow important is compassion in being a leader?\nFind out more on November 26, 2016 at 9:00AM at the 5th floor of Henry Sy Sr. Hall, De La Salle University - Manila as we bring you TUKLAS 2016 with the theme, Building Lasallian Advocates for Transformation.\nKeep posted on our social media accounts for more updates on TUKLAS 2016!\nFacebook: www.facebook.com/DLSUCSOTUKLAS\nTwitter: https://twitter.com/CSO_TUKLAS\n#TUKLASalle','1258070434254198','',NULL,NULL,NULL,'2016','11','04'),(4658,'Yes we heard you!\n\nThe deadline for registration is extended.\n\nBe the change with $1,000,000.\n\nDonât miss the chance to register for the second Hult Prize at DLSU with these 3 easy steps!\n\nFind a team of at least 3 members and no more than 4 and must be comprised of current DLSU students, with an option of one alumni!\n\nRegister for the Hult Prize at hultprizeat.com/dlsu\n\nTo get the latest updates, make sure to like and follow us on Facebook, Twitter and Instagram!\n\nFB: /hultprizeatDLSU\nTwitter: @hultprizedlsu\nInstagram: @hultprizedlsu\n#hp17 #crisis2action #hultprize #hultprizeatDLSU','1249826491745259','',NULL,NULL,NULL,'2016','10','26'),(4659,'d e a d','1233390370055538','',NULL,NULL,NULL,'2016','10','09'),(4660,'god','1174611902600052','',NULL,NULL,NULL,'2016','07','31'),(4661,'I think there are more important matters to attend to...','1088861347841775','',NULL,NULL,NULL,'2016','04','04'),(4662,'\"Iâd give up all the free time, the hours of sleep and the social life for just one more minute on the field.\"','1064084676986109','',NULL,NULL,NULL,'2016','03','14'),(4663,'oh my','1055518954509348','',NULL,NULL,NULL,'2016','02','29'),(4664,'ð»ð #bokeh #grammerph','1046639215397322','',NULL,NULL,NULL,'2016','02','14'),(4665,'edited by @pricklepod\n#grammerph (bc bonki said so)','1045447812183129','',NULL,NULL,NULL,'2016','02','12'),(4666,'chloe pls','1040176592710251','',NULL,NULL,NULL,'2016','02','02'),(4667,'chloe pls','1038385942889316','',NULL,NULL,NULL,'2016','01','30'),(4668,'bae','1036282069766370','',NULL,NULL,NULL,'2016','01','26'),(4669,'(c) Victor Mariano','1020850251309552','',NULL,NULL,NULL,'2016','01','27'),(4670,'lmao','1002377399823504','',NULL,NULL,NULL,'2015','11','21'),(4671,'HAHAHAH Renee Khyleen Julia Te','1000563813338196','',NULL,NULL,NULL,'2015','11','17'),(4672,'Cram!!','640097472718167','',NULL,NULL,NULL,'2014','01','12'),(4673,'Bricked my phone.','632803273447587','',NULL,NULL,NULL,'2013','12','30'),(4674,'Merry Christmas!!','630223147038933','',NULL,NULL,NULL,'2013','12','25'),(4675,'In elo hell right now','615117921882789','',NULL,NULL,NULL,'2013','11','24'),(4676,'GGMU','608071892587392','',NULL,NULL,NULL,'2013','11','10'),(4677,'http://www.youtube.com/watch?v=k8I0_9Q-hrk + http://www.rainymood.com/ <3 <3','603717406356174','',NULL,NULL,NULL,'2013','11','03'),(4678,'\"for we walk by faith, not by sight.\"','585319748195940','',NULL,NULL,NULL,'2013','10','04'),(4679,'Congratulations Boscorale!!','582742138453701','',NULL,NULL,NULL,'2015','02','17'),(4680,'Gameday!','575454049182510','',NULL,NULL,NULL,'2013','09','15'),(4681,'Ufl youth u-15 Kaya vs. Loyola tomorrow!!!','537551269639455','',NULL,NULL,NULL,'2013','06','28'),(4682,'Ufl youth 8am at UMak. Come and watch!!','524674900927092','',NULL,NULL,NULL,'2015','02','17'),(4683,'UFL Youth match tomorrow, Kaya FC vs. Nomads. Wish us luck!! Una Kaya!','516011748460074','',NULL,NULL,NULL,'2013','05','10'),(4684,'Brownout for 8 hours, dayum.','515234331871149','',NULL,NULL,NULL,'2015','02','17'),(4685,'UFL Youth U15 Army 1 - 3 Kaya. \\m/','510999418961307','',NULL,NULL,NULL,'2013','04','29'),(4686,'UFL Youth U15 Army vs. Kaya tomorrow at UMak 2pm. Watch!! =))','510532572341325','',NULL,NULL,NULL,'2013','04','28'),(4687,'#TheVoice','503818419679407','',NULL,NULL,NULL,'2013','04','10'),(4688,'http://www.youtube.com/watch?v=i7zSJFI9uXw\nMy replay button is stuck.','350845681700177','',NULL,NULL,NULL,'2013','02','28'),(4689,'Dbti High School Selection, game tomorrow vs. Claret. Meet-up sa field right after classes. \n-Coach Myk','485344451526804','',NULL,NULL,NULL,'2015','02','17'),(4690,'Now my forehead smells like ginger \'cause my lola cooked tinola! =))\n','113671875472937','',NULL,NULL,NULL,'2013','01','06'),(4691,'Bye bye, 2012! I had a great time with you!\n','394309023986504','',NULL,NULL,NULL,'2012','12','31'),(4692,'Christmas break! :D','450016301726286','',NULL,NULL,NULL,'2012','12','19'),(4693,'Who has Viber? :)','442456732482243','',NULL,NULL,NULL,'2012','12','06'),(4694,'High School Selection players playing for Binay Cup tomorrow, please be at Don Bosco Makati at around 1pm. Yung may parents encounter daw humabol. Dbti vs Dbtc at Umak at 3pm. -From Coach Myk','439272952800621','',NULL,NULL,NULL,'2012','11','23'),(4695,'Aspirants & Candidates, from Coach Myk: Bring your complete jersey and rubber shoes in case of opening for Binay Cup. Spread the word. :)','438819639512619','John Gacal, Carlo PeÃ±aflor, Miggy Lukban, Marvin Raymundo and Jet Muncada Cui',NULL,NULL,NULL,'2012','11','22'),(4696,'VP Binay Cup Invitational Games 2012 at the University of Makati Oval from November 23 - 30, 2012. Tickets are Php 50 each. PM me if interesred. :)','433795180001579','',NULL,NULL,NULL,'2012','11','12'),(4697,'Dope.','407320719341643','',NULL,NULL,NULL,'2012','11','05'),(4698,'Candidates and Aspirants: Training tomorrow. Please pass the message.\n-Coach Myk','431914236869826','',NULL,NULL,NULL,'2012','11','04'),(4699,'I\'m bored of being bored because being bored is boring.','428712577189992','',NULL,NULL,NULL,'2015','02','17'),(4700,'1 down, 2 to go. :/','422446867816563','',NULL,NULL,NULL,'2012','10','11'),(4701,'Bestfriend ko na si Jesus. Kuha mo? O:)','417594204968496','',NULL,NULL,NULL,'2015','02','17'),(4702,'Sino 2-4? =)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))','370558163005434','',NULL,NULL,NULL,'2012','06','04'),(4703,'i have raped your wall. -ari','351708644890386','',NULL,NULL,NULL,'2012','05','06'),(4704,'Hi, Diegs! It was nice seeing all of you! We miss you already! Hahahahaha :)\nP.S. You forgot to log out.. Hihi\nP.P.S. Don\'t get mad. :D','351706861557231','',NULL,NULL,NULL,'2012','05','05'),(4705,'Team Photos: Don Bosco Makati Midgets \"A\"','309679005760017','Gelo Lapid',NULL,NULL,NULL,'2012','03','05'),(4706,'\"Oh comet come down, kamikaze over me, and I come alive, my midnight melody.\"','309622385765679','',NULL,NULL,NULL,'2012','03','03'),(4707,'\"I\'ll stop the whole world from turning into a monster, eating us alive.\"','309611935766724','',NULL,NULL,NULL,'2012','03','03'),(4708,'BANANAAAAAA! POTATOOOOO! POTATOONANAAA! :))','154017801386059','',NULL,NULL,NULL,'2012','03','03'),(4709,'That moment when you lose . . . during the finals! :\'(','309562565771661','John Gacal, Carlo PeÃ±aflor, Mico Rillera, Kenn James, Miggy Lukban, Steve Hansen and Livan Reyeg',NULL,NULL,NULL,'2012','03','03'),(4710,'Team Photos: Don Bosco Makati Midgets \"A\"','309679229093328','Gelo Lapid',NULL,NULL,NULL,'2012','03','05'),(4711,'\"When tiger eyes begin making you blush, and when diamonds boast that they can\'t be crushed, let them go \'cause dreams don\'t turn to dust.\" ;)','305486016179316','',NULL,NULL,NULL,'2012','02','25'),(4712,'Linsane. :O','332515583465974','',NULL,NULL,NULL,'2012','02','23'),(4713,'\"You can count on me, like one, two, three, I\'ll be there.\" â«âª','303618633032721','',NULL,NULL,NULL,'2012','02','22'),(4714,':>','184336215008177','',NULL,NULL,NULL,'2012','02','22'),(4715,':>','274402865959704','',NULL,NULL,NULL,'2012','02','12'),(4716,'\"A player can make magic, but a team can make a miracle.\" ;)','279282678799650','',NULL,NULL,NULL,'2012','01','19'),(4717,'Watch the whole video!! Super laughtrip!! :DD','134762469973941','',NULL,NULL,NULL,'2012','01','11'),(4718,'Mico Rillera, sa penalty box pa talaga. Joke lang! :)','272435829484335','',NULL,NULL,NULL,'2012','01','08'),(4719,'I know it\'s not Halloween anymore but, it\'s just sooo adorable! <3','319626234724920','',NULL,NULL,NULL,'2012','01','02'),(4720,'New year, new beginnings, new challenges, new problems :|','268913076503277','',NULL,NULL,NULL,'2012','01','01'),(4721,'Happy New Year!! --School is coming near :| Oh well . . Back to waking up at 5am :(','268837909844127','',NULL,NULL,NULL,'2012','01','01'),(4722,'Kit Quilet PantaleÃ³n','282668978447567','',NULL,NULL,NULL,'2011','12','26'),(4723,'Merry Christmas! Again. :/','264555423605709','',NULL,NULL,NULL,'2011','12','24'),(4724,'Merry Christmas to all of you reading this! :D','264543240273594','',NULL,NULL,NULL,'2011','12','24'),(4725,'Christmas Eve <3','264415750286343','',NULL,NULL,NULL,'2011','12','24'),(4726,'No way out! >.< =))','198080446948217','',NULL,NULL,NULL,'2011','12','22'),(4727,'Fail.','241612682573992','',NULL,NULL,NULL,'2011','12','21'),(4728,'Ano pare, tirahin na natin to!!!','201305639958381','',NULL,NULL,NULL,'2011','12','16'),(4729,'Say this slow: \"God I need you and I love you â¥ \" now repost this and a miracle will happen. If you ignore it, bad things will happen.','250706828323902','',NULL,NULL,NULL,'2011','12','02'),(4730,'GOD IS WELCOMED IN MY HOUSE.\nÂ° ã Â° ËËË * _Î ____*ã*Ë\nË Ë â¢Ëâ¢Ë */________/~\\ãË Ë Ë\nË Ë â¢Ëâ¢ Ë ï½ ç°ç° ï½ éï½ â¢\nIf God is also welcome in your house, Share this. â¥','249604355100816','',NULL,NULL,NULL,'2011','11','30'),(4731,'5 years old : Mommy I love you â¥\n10 years old : Mom , okaay\n16 years old : My mom is so annoying\n18 years old : I\'m leaving this house\n25 years old : Mom you were right\n... ... 30 years old : Wanna go to Mom\'s house\n50 years old : Don\'t wanna lose my mom\n70 years old : I would give up everything to have my mom here with me\n\nYou have only one mommy . Put this as your status if you appreciate your mom . A girl ignored it and 365 days later her mom passed away =))\n\n-repost','249407848453800','',NULL,NULL,NULL,'2011','11','30'),(4732,'If you love your father repost this. ;)','249052991822619','',NULL,NULL,NULL,'2011','11','30'),(4733,'REPOST: To all my Facebook friends, post this on your wall for just an hour, please.\n\nHeavenly Father,\nWalk through my home and take away all my worries and any illnesses. Please watch over and heal my family and friends. Bless my home, family and friends with Peace, Love and Joy In Jesus Name. Amen.\n\nThis prayer is so powerful. Please stop what you are doing and post this as your status. Watch what He will do. With God all things are possible. (\",)','249039345157317','',NULL,NULL,NULL,'2011','11','30'),(4734,'IT\'S BROTHER WEEK: If you have a brother who has made you laugh, PUNCHED you, drove you CRAZY, annoyed you, hugged you, BEAT YOU UP, saw you fail, picked you back up and made you fall down again, cheered you on, made you strong, and is someone you are proud to have in life... Re-post this if you have brothers you love...','247326081995310','',NULL,NULL,NULL,'2011','11','26'),(4735,'if you love your mom post this as your status. A girl ignored this and her mom passed away 365 days later. Sorry guys, I\'m not risking this, I LOVE MY MOM (add a â¥ every time!!) â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥â¥â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥ â¥','247201235341128','',NULL,NULL,NULL,'2011','11','25'),(4736,'http://www.youtube.com/watch?v=F9ee_Ez6tFk','292430144121514','',NULL,NULL,NULL,'2011','11','22'),(4737,'Right now, I wish I could google: WTH is my wallet???!!! >:( =))','244198318974753','',NULL,NULL,NULL,'2015','06','03'),(4738,'11 year old girl asks her Dad, \"What are you going to get me for my 15th birthday, Daddy?\" The father replied \"Daughter, there\'s much time left.\" When the girl was 14, she fainted and was rushed to the hospital. The doctor came out and told the father she had a bad heart . When she\'s laying in the hospital bed, she asks her father, \"Daddy.. Have they told you I\'m going to die?\" The father started...... weeping leaves. The girl recovered. She reached 15 and got to go home, and on her bed is a letter from her father. The letter said, \"My Dearest Daughter, if you\'re reading this, it is because all went well as I was told. One day you asked me what I was gonna give you on your 15th birthday, and I didn\'t have an answer, but today, I present MY HEART.\" Her father donated his heart. \"Happy Birthday â¥.\" If you believe that God gave his only son to die for you, repost this as your status. Remember, the Bible says \"Deny me in front of your friends and I will deny you in front of your father. -Forward','244195498975035','',NULL,NULL,NULL,'2011','11','20'),(4739,'-----ââ---- Put this on\n-----ââ----- your Wall\nâââââââ---if you\'re not\n-----ââ----- embarrassed\n-----ââ----- to tell others\n-----ââ----- that you\n-----ââ----- believe in God.','244195335641718','',NULL,NULL,NULL,'2011','11','20'),(4740,'Facebook currently has 4 VIRUSES:\n\n1. If you get a notice of a PHOTO TAG. Do not open it.\n\n2. If you get a notification that a friend reported you for offensive behavior etc. Do not open it.\n\n3. Is a Video saying 99% of People can not watch this for more the 15 Sec. Do not open it is also a virus.\n\n4. All Messages from your friends via chat saying click this link. Do not open! These are BAD ones and will crash your computer.\n\nShare and warn friend.\n\nWARNING.PLEASE LISTEN UP! HACKERS ARE BUSY ON FACEBOOK AGAIN! They post some insulting messages on the wall of your friends with your regards, without you knowing about it. If you receive one of those messages in my name, it wasnât me posting them. Put this on your wall and warn your friends. Also, DONT open the video about a guy with a BIG ZIT. It is a virus. Share the news.','243493195711932','',NULL,NULL,NULL,'2011','11','19'),(4741,'My mom carried me in her womb for nine months. She felt sick for months with nausea, then she watched her feet swell & her skin stretch & tear; she struggled to climb stairs, she got breathless quick; she suffered many sleepless nights. She then went through excruciating pain to bring me into this world. Then, she became my nurse, my chef, my maid, my biggest fan, my teacher, & my best friend. She struggled for me, cried over me, hoped the best for me, & prayed for me. Most of us take our mom for granted. Re-post if you love your mom more than anything in this world.','243492852378633','',NULL,NULL,NULL,'2011','11','19'),(4742,'IT IS OFFICIAL. IT WAS EVEN ON THE NEWS. FACEBOOK WILL START CHARGING DUE TO THE NEW PROFILE CHANGES. IF YOU COPY THIS ON YOUR WALL, YOUR ICON WILL TURN BLUE AND FACEBOOK WILL BE FREE FOR YOU. PLEASE PASS THIS MESSAGE ON, IF NOT YOUR ACCOUNT WILL BE DELETED.','218285774899341','',NULL,NULL,NULL,'2011','09','26'),(4743,'Can I ask a favor from you? :) Please HOVER over my name, wait for the box to load and then HOVER over the \"Subscribe\" link (don\'t click it). Then uncheck the \"comments and likes\" option. I would rather my comments on friends\' posts not be made public. In fact, go on ahead and uncheck any of the other choices if you so choose. Thanks! (Then repost if you don\'t want your EVERY MOVE posted on the right for everyone to see!)','217782681616317','',NULL,NULL,NULL,'2011','09','24'),(4744,'Who will win?','189204971140755','',NULL,NULL,NULL,'2011','07','24'),(4745,'Who will win the second leg of Azkals vs. Kuwait WCup 2014 Qualifier?','189197871141465','',NULL,NULL,NULL,'2011','07','24'),(4746,':)','172987532762499','',NULL,NULL,NULL,'2011','06','12'),(4747,'Â¡ z Ê x Ê Ê n Ê s É¹ b d o u É¯ l Ê É¾ Ä± É¥ Æ É Ç p É q É','172952836099302','',NULL,NULL,NULL,'2011','06','12'),(4748,'HAPPY MOTHERS DAY TO ALL MOTHERS OUT THERE!!','165209496873636','',NULL,NULL,NULL,'2011','05','10'),(4749,'Thank you GOD!!!\n6 - 5\nSoccer: Gold\nBasketball: Gold\nVolleyball: Gold\n\n= 3G','149074328487153','',NULL,NULL,NULL,'2011','02','25'),(4750,'\"Love is the noblest frailty of the mind.\" (John Dryden)','196637507015638','',NULL,NULL,NULL,'2011','02','06'),(4751,'\"People are lonely because they build walls insted of bridges.\" (J.F. Newton)','161906123859600','',NULL,NULL,NULL,'2011','02','05'),(4752,'\"In love, there is no room for fear.\" (St. John)','197136820301379','',NULL,NULL,NULL,'2011','02','04'),(4753,'No classes for us tomorrow!! YAAY!!','182546861774282','',NULL,NULL,NULL,'2011','01','06'),(4754,'Ask your friends for today\'s item and share one with them too!','182903191739527','',NULL,NULL,NULL,'2015','06','03'),(4755,'So amazing!!','159890797384848','',NULL,NULL,NULL,'2010','10','31'),(4756,'Sembreak!!!!!','165681536794459','',NULL,NULL,NULL,'2010','10','29'),(4757,'Poreotix!!','128408990546766','',NULL,NULL,NULL,'2010','10','26');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
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

-- Dump completed on 2017-04-02 17:58:39
