-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: thesis_data_john
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (109,'12/13/1997','birthday'),(110,'John','first_name'),(111,NULL,'middle_name'),(112,'Gacal','last_name'),(113,'male','gender'),(114,'Makati','location'),(115,'Malaybalay, Bukidnon','hometown');
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
INSERT INTO `educational_bg` VALUES (34,'Don Bosco Technical Institute, Makati','High School',2011,NULL,'108615515829522'),(35,'Don Bosco Technical Institute, Makati','High School',0000,NULL,'108615515829522'),(36,'De La Salle University','College',0000,'Industrial Engineering','127612997282544');
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
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (985,'ELAINE @ 18','attending','Hideout BGC','Taguig','Philippines','1174278049358318'),(986,'Nagsasa Cove Nature Retreat','unsure','Nagsasa Cove, Zambales','Olongapo City','Philippines','986767191427758'),(987,'#Doni','attending','Club Filipino','San Juan','Philippines','1786415698283211'),(988,'bertday bash','attending','Parc Regent Condominium Makati','Makati','Philippines','612408458941755'),(989,'Elusive Silence: Sud\'s 21st Birthday Salubong!','attending','Route 196 Bar','Quezon City','Philippines','1743255849255531'),(990,'Loud: Life Over Cancer','attending','Amphitheatre, DLSU','Manila','Philippines','1633670256949960'),(991,'FeteIndie2016','attending','The Axon, Green Sun','Makati','Philippines','485807991616530'),(992,'WALWAL(yca)','attending','Reminisque bistro - scout lozano cor tomas morato qc',NULL,NULL,'1694367707447406'),(993,'Roms\' party','attending','18 Montclair St. Merville Subdivision Paranaque City',NULL,NULL,'1569707476638817'),(994,'Numbers please!!!','attending',NULL,NULL,NULL,'451157058329957'),(995,'Guys can I have your numbers ~_~ all my contacts got erased','attending',NULL,NULL,NULL,'481073228667183'),(996,'Numberssssssss','attending',NULL,NULL,NULL,'143289255873091'),(997,'Numbers and BBMs please! :)','attending',NULL,NULL,NULL,'417661098325674'),(998,'NUMBERS Plss!!!','attending','Lamayan St., Sta. Ana','Manila','Philippines','342638245837422'),(999,'NUMBERSSSSS!!!!!','attending','House','Makati','Philippines','137804886382202'),(1000,'Numbers and BBMs :)','attending',NULL,NULL,NULL,'311647928942873'),(1001,'NUMBEEEEER :)','attending','Makati','Makati','Philippines','311736428908254'),(1002,'Numbers Please!! =))','attending',NULL,NULL,NULL,'269531176482338'),(1003,'Numbers','attending','Pasay City','Pasay City','Philippines','342414419146582'),(1004,'numbers please! fck. na security wipe phone ko.. ','attending',NULL,NULL,NULL,'237244049706691'),(1005,'Laro ng football or some shit','attending',NULL,NULL,NULL,'347442705290761'),(1006,'NUMBERS PLEASE :(','attending',NULL,NULL,NULL,'398854090143286'),(1007,'Hey YOU! :)','unsure',NULL,NULL,NULL,'812135808839953'),(1008,'CSA FAMILY FUN RUN','unsure','Movie Stars Cafe SM Mall of Asia','Pasay City','Philippines','935306106489795'),(1009,'57th FOUNDATION DAY CELEBRATION January 29-31,2011','attending',NULL,NULL,NULL,'818706858178864'),(1010,'Don Bosco Makati - Run for a cause (BOSCORUN)','attending',NULL,NULL,NULL,'982071315151488'),(1011,'Visit of the Relic of Saint John Bosco','attending',NULL,NULL,NULL,'861727457195780'),(1012,'birthday ko','attending',NULL,NULL,NULL,'881429925236310'),(1013,'SSC School Fair :)','unsure',NULL,NULL,NULL,'977558818929734');
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (148,'Miggy Lukban','brother','1590489787632445'),(149,'Patrick Jolo Hualde','brother','1578677248812463'),(150,'Cee Mjrs','sister','1356556567700381'),(151,'EJ Bitancor','brother','1397198143635506'),(152,'Gio Guerrero','brother','10155091786449803'),(153,'Elijah Buenafe','grandfather','10208786400285907'),(154,'Steve Hansen','uncle','10210570255326218'),(155,'Carlo PeÃ±aflor','brother','1438408482849772'),(156,'John Carlo Lake Eusebio','father','1473967282637392'),(157,'AJ Yabut','sister','10203268630753858'),(158,'Miguel Sadorra','brother','1625152910834393'),(159,'Christian Segui','nephew','10207488763691408'),(160,'Luis Castro','brother','10210824737726804'),(161,'Stephanie Lagan','sister','1417400468312740'),(162,'Jc Alonzo Mayuga','brother','1406378919434163'),(163,'Dhenise Amias','sister','1264187986982620'),(164,'Kesha Allison','sister','612035318920891'),(165,'Popeye Thesailor','family member','1248493825229232'),(166,'Pamela Jane Victoria','cousin','1436998949653394'),(167,'Ej Barroso','uncle','1835213353396764');
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
) ENGINE=InnoDB AUTO_INCREMENT=2324 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (2150,'DLSU CSO','Organization','245252766116'),(2151,'Bleacher Report','Broadcasting & Media Production Company','7331091005'),(2152,'Nobel Prize','Non-Profit Organization','81239734102'),(2153,'DLSU Outdoor Club','Organization','73215158320'),(2154,'Engineers of La Salle','Community','1717614991811008'),(2155,'WWG','Video Game','1688576428052667'),(2156,'Luca\'s Test Kitchen','Restaurant','1502466473395716'),(2157,'ConfederaÃ§Ã£o Brasileira de Futebol','Sports Team','309787402639'),(2158,'Brilliant.org','Education Website','542971019063265'),(2159,'GiveMeSport','News/Media Website','566760030037879'),(2160,'DC Shoes','News/Media Website','1637160719876509'),(2161,'Top Vines','Media/News Company','171112259610923'),(2162,'Robin van Persie','Athlete','162280197182417'),(2163,'Turbine Corp.','Local Business','1536845836567720'),(2164,'DBTI Makati High School Student Council','High School','565808053488338'),(2165,'Daniela Andrade','Musician/Band','109834669140'),(2166,'SkillTwins','Athlete','184871551562612'),(2167,'Alvaro','Musician/Band','195961183787613'),(2168,'DBXTRM','Dancer','303426589861581'),(2169,'Don Bosco Technical Institute Makati','Local Business','511886122161987'),(2170,'I fucking love science','Science Website','367116489976035'),(2171,'Mario Balotelli - Official','Public Figure','1421605904778968'),(2172,'Make It Makati','Landmark & Historical Place','178139428941222'),(2173,'MFL playlists','News/Media Website','200720539942219'),(2174,'Fifty Grains of Rice','Media/News Company','818555521493513'),(2175,'SURGE','Community','740985989259035'),(2176,'Did You Know','Media/News Company','236963176319804'),(2177,'SelecciÃ³n EspaÃ±ola de FÃºtbol (SeFutbol)','Sports Team','382548541841095'),(2178,'Pentatonix','Musician/Band','153739784703700'),(2179,'Robert Downey Jr','Artist','154213784747095'),(2180,'Jennifer Lawrence','Artist','52528756792'),(2181,'League Of Legends Vines','Entertainment Website','247732328715807'),(2182,'ELO HELL','Community','238762096159825'),(2183,'Emma Watson','Artist','140216402663925'),(2184,'Cyanide & Happiness','Comedy Club','67400590475'),(2185,'Freekickerz','Athlete','124404060940116'),(2186,'Hayley Williams','Religious Place of Worship','202941843073000'),(2187,'Elizabeth Gillies','Musician/Band','160059308492'),(2188,'League of Legends PH Memes','Community','148528891971208'),(2189,'Ariana Grande','Musician/Band','12384211026'),(2190,'Jennette McCurdy','Public Figure','96981971171'),(2191,'Stephan SchrÃ¶ck','Athlete','157088320985762'),(2192,'Best Vines Philippines','Community','554595627930709'),(2193,'La Galaxy','Interest','111816722178886'),(2194,'UEFA Champions League','Sports League','105632246136477'),(2195,'Red Hot Chili Peppers','Musician/Band','8335563918'),(2196,'Daft Punk','Musician/Band','22476490672'),(2197,'Best Vines','Website','170901143077174'),(2198,'8FACT','Website','120709694789840'),(2199,'Retweet Traffic Revolution','Consulting Agency','574588062593006'),(2200,'adidas','Company','183334676308'),(2201,'Today I Learned','Community','342422379172885'),(2202,'REDux: Life Through Expression','Non-Profit Organization','316275801816662'),(2203,'HUGELOL','Entertainment Website','247575072037935'),(2204,'Ramon Yabut At Your Service','Political Organization','279915408800643'),(2205,'Quantum Works','Local Business','551582314871596'),(2206,'National Geographic','Media/News Company','23497828950'),(2207,'Manchester United Latest News','News/Media Website','399052800124620'),(2208,'Skittles','Food & Beverage Company','7914733474'),(2209,'artwork','Clothing (Brand)','56899063048'),(2210,'True Story','Artist','221904857845832'),(2211,'Younghusband Football','Amateur Sports Team','153797178005137'),(2212,'PewDiePie','Public Figure','193844937315070'),(2213,'McKayla Maroney','Athlete','149265818507991'),(2214,'Like A BOSS','Public Figure','219799051443373'),(2215,'Neymar Jr.','Athlete','148456285190063'),(2216,'Manchester United Lovers','Community','143420355715712'),(2217,'SoccerBible','News/Media Website','298269803325'),(2218,'The Last Stand','App Page','120478611378231'),(2219,'Wayne Rooney','Athlete','245323855526590'),(2220,'Chat Meme Codes','Community','312080468826419'),(2221,'MADz','Public Figure','155265187869241'),(2222,'Ektagon','Business Service','193031807382536'),(2223,'PelÃ©','Athlete','372164252802700'),(2224,'CityVille','App Page','168232079864416'),(2225,'Hotel City','App Page','142368335881829'),(2226,'My Empire','App Page','265722780164153'),(2227,'Restaurant City','App Page','275904399136748'),(2228,'Agila MSA Youth FC','Amateur Sports Team','298887363491514'),(2229,'Google Chrome','Software','321662419491'),(2230,'TinyChat','App Page','189512847734707'),(2231,'9GAG','App Page','21785951839'),(2232,'SocialCity','App Page','252492084811430'),(2233,'Wild Ones','App Page','294968260535143'),(2234,'See Less','Entertainment Website','173446402728168'),(2235,'Halloween','Holiday','108362245859090'),(2236,'Real Steel','Movie','327836155819'),(2237,'Who Cares?','Religious Place of Worship','8519818518'),(2238,'Adidas f50','Clothing (Brand)','50091911757'),(2239,'Don Bosco High School','High School','104099226292520'),(2240,'Ketchup Band','Musician/Band','254908444546530'),(2241,'LA Galaxy','Sports Team','9893397034'),(2242,'We Customize Ballers.','Product/Service','128019633945809'),(2243,'Empires & Allies','App Page','201463033201766'),(2244,'The Simpsons','TV Show','29534858696'),(2245,'Bruno Mars','Musician/Band','242567287243'),(2246,'Leo Messi','Athlete','176063032413299'),(2247,'Iker Casillas','Athlete','189956894367877'),(2248,'Thirty Seconds to Mars','Musician/Band','5618127822'),(2249,'Mukha kang tae akala mo kung sino ka, LOSER ka naman! :)) B*bo!','Community','104804312886068'),(2250,'IKAW NA NGA NAG`POST. IKAW PA MAGCO`COMMENT AT IKAW PA MAGLI`LIKE. (loner ka??)','Community','115289578484827'),(2251,'Rayban','Company','116471075030338'),(2252,'LoL!!','Community','30541572964'),(2253,'Nutella','Food & Beverage Company','1406621842911228'),(2254,'TARA MCDO','Community','114282438583629'),(2255,'UEFA Champions League','Sports League','154040584642412'),(2256,'Soccer','Soccer Field','102173226491776'),(2257,'David Beckham','Athlete','84218631570'),(2258,'DOMO KUN','Public Figure','32607640613'),(2259,'JanSport','Bags/Luggage','8314408429'),(2260,'Hugs Not Drugs','Public & Government Services','8491331263'),(2261,'Shakira','Musician/Band','5027904559'),(2262,'Humingi ka. Di kita Binigyan. Tapos ikaw pa galit?','Local Business','113692772018563'),(2263,'Slurpee','Product/Service','27698210866'),(2264,'Rocketeer','Music','115411951802783'),(2265,'Xavi','Public Figure','104134816290969'),(2266,'BOSCOLASTICANS','Non-Profit Organization','259568678038'),(2267,'Yahoo Sports','Media/News Company','37510781596'),(2268,'RÃ©mi GAILLARD','Artist','20069718524'),(2269,'Gio Guerrero','Community','252054982399'),(2270,'Maroon 5','Musician/Band','5330548481'),(2271,'Avril Lavigne','Musician/Band','5413509299'),(2272,'Sports','TV','113432555336732'),(2273,'Rafa Nadal','Athlete','64822581025'),(2274,'Linkin Park','Musician/Band','8210451787'),(2275,'Family Guy','TV Show','24609282673'),(2276,'Barack Obama','Politician','6815841748'),(2277,'Ferrero Rocher','Food & Beverage Company','202986543445543'),(2278,'Jabbawockeez','Public Figure','8575300901'),(2279,'Facebook','Product/Service','20531316728'),(2280,'Mama Mary','Public Figure','90520432292'),(2281,'Vans','Footwear Store','129594317087504'),(2282,'will.i.am','Musician/Band','5120148605'),(2283,'7-Eleven','Company','13457463254'),(2284,'Cute Is What We Aim For','Musician/Band','5819212401'),(2285,'Grade 6 Bl.Zatti SY.2010-2011','Community','103400079713790'),(2286,'Will Smith','Artist','92304305160'),(2287,'Adam Sandler','Artist','9098498615'),(2288,'Top Gear','Media/News Company','282681245570'),(2289,'A.C. Milan','Sports Team','147054831936'),(2290,'CONVERSE','Clothing (Brand)','23402039579'),(2291,'Mr Bean','Public Figure','17774451468'),(2292,'Cristiano Ronaldo','Athlete','81221197163'),(2293,'Xbox','Product/Service','16547831022'),(2294,'PlayStation','Product/Service','14104316802'),(2295,'æé¾ Jackie Chan','Artist','30382852317'),(2296,'adidas Football','Company','84237528530'),(2297,'BarÃ§a','Geographical Place','114991068515354'),(2298,'World Soccer Shop','Sporting Goods Store','7009728572'),(2299,'Far East Movement','Musician/Band','5980403598'),(2300,'Fall Out Boy','Musician/Band','7218745779'),(2301,'Arsenal','Sports Team','20669912712'),(2302,'FC Barcelona','Sports Team','197394889304'),(2303,'Ricardo KakÃ ','Athlete','201014990178'),(2304,'Nike Football','Sporting Goods Store','51212153078'),(2305,'All Day Everyday','Product/Service','204781169534181'),(2306,'HBO','TV Network','113408673932'),(2307,'Real Madrid C.F.','Sports Team','19034719952'),(2308,'action games','Games/Toys','175229625829252'),(2309,'Comics','School','112605852083973'),(2310,'Anything','Music','110317695668933'),(2311,'Entertainment','Interest','105660332801243'),(2312,'Action and Comedy','Movie','358989664109'),(2313,'David Villa','Athlete','108019782553179'),(2314,'Azkals (Philippine National Soccer Team)','Sports Team','117847078288767'),(2315,'Manchester United','Sports Team','7724542745'),(2316,'Spain National Football Team','Sports Team','112489942098618'),(2317,'Brazil National Football Team','Sports Team','107752142581576'),(2318,'Myself','Local Business','134533126605144'),(2319,'SMP = Samahan ng Malalamig ang Pasko','Producer','173083476051719'),(2320,'BV','Society/Culture Website','67221622603'),(2321,'Gwapo ba hanap mo? Punta ka Bosco.','Community','142291799139053'),(2322,'I\'m a Christian','Local Business','147258181960057'),(2323,'John\'s Farm','Games/Toys','115495385148503');
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
) ENGINE=InnoDB AUTO_INCREMENT=4901 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (4758,'Siiickk','1459720177401512','',NULL,NULL,NULL,'2016','12','26'),(4759,'this is so sick Pocholo idol','1392385537468310','',NULL,NULL,NULL,'2016','11','09'),(4760,'The striker to my midfield. Solid bromance â½ï¸','1376280695745461','Diego Pantaleon',NULL,NULL,NULL,'2016','10','27'),(4761,'RIP on behalf of the DB makati community','1370223596351171','',NULL,NULL,NULL,'2016','10','22'),(4762,'boy u better retire after trying to defend that','1354584281248436','',NULL,NULL,NULL,'2016','10','09'),(4763,'\"..a Duterte fan has issued a public apology for having supported him during the elections, but now regrets everything by citing the Presidentâs promises and what heâs been actually doing.\" \n\nit has begun lol','1345996585440539','',NULL,NULL,NULL,'2016','10','01'),(4764,'Pico ð» \n09-24-2016','1338274126212785','',NULL,NULL,NULL,'2016','09','24'),(4765,'fifa pls','1330190657021132','',NULL,NULL,NULL,'2016','09','17'),(4766,'it all goes down to proper education','1279543908752474','',NULL,NULL,NULL,'2016','08','01'),(4767,'Celine Solis :(','1271129959593869','',NULL,NULL,NULL,'2016','07','22'),(4768,'What a beast this guy Kenn James dont forget your original teammates mate!!!','1206406956066170','',NULL,NULL,NULL,'2016','04','28'),(4769,'Investors know whats up','1206258179414381','',NULL,NULL,NULL,'2016','04','27'),(4770,'\"cocosine\"','1180747038632162','',NULL,NULL,NULL,'2016','03','27'),(4771,'sad','1167893763250823','',NULL,NULL,NULL,'2016','03','14'),(4772,'i feel ya buddy','1157763490930517','',NULL,NULL,NULL,'2016','02','28'),(4773,'nostalgia','1065072886866245','',NULL,NULL,NULL,'2015','09','23'),(4774,'Mt. Talamitam climb with loyola mountaineers \n\nPhoto by Miguel Mendoza nice shot by the way','1025700057470195','',NULL,NULL,NULL,'2016','05','13'),(4775,'wifi plssssss','987604921279709','',NULL,NULL,NULL,'2015','05','12'),(4776,'useless reasoning','987065618000306','',NULL,NULL,NULL,'2015','05','12'),(4777,'bumped into your Tita and Mom Justine Eugenio at the crown regency breakfast hehe','974508765922658','Franco Nemesio Gacal, Corvus Gurda and Justine Eugenio',NULL,NULL,NULL,'2015','04','21'),(4778,'Confirmed','970289483011253','',NULL,NULL,NULL,'2015','04','11'),(4779,'Thank you so much Mama Dolly for coming to my high school Graduation. Papa Joe would be proud of me also :) i love you mama D. hehe','963101387063396','',NULL,NULL,NULL,'2015','04','10'),(4780,'Batch mmxv in a nutshell','962789750427893','',NULL,NULL,NULL,'2015','03','28'),(4781,'good read','941704079203127','',NULL,NULL,NULL,'2015','02','19'),(4782,'sad','941632015877000','',NULL,NULL,NULL,'2015','02','19'),(4783,'\"Hopes And Dreams \"  prom court. Feb 13 2015','938796976160504','',NULL,NULL,NULL,'2015','02','14'),(4784,'Congratulations ate Dindin Hernandez!!!!!','926891764017692','',NULL,NULL,NULL,'2015','01','25'),(4785,'locos','919972368042965','',NULL,NULL,NULL,'2015','01','12'),(4786,'Color Run Manila 2015','915727638467438','',NULL,NULL,NULL,'2015','01','06'),(4787,'1 hour na unresponsive parin pc','883370498369819','',NULL,NULL,NULL,'2014','11','21'),(4788,'wala palang fox sports....... cant watch el clasico :(((((((((( asgagdghadhfhh','867260456647490','',NULL,NULL,NULL,'2014','10','26'),(4789,'grabe pldt internet','866013353438867','',NULL,NULL,NULL,'2014','10','23'),(4790,'performance task 2 in Analytic Geometry and Trigonometry, had fun doin this  :)','859969334043269','',NULL,NULL,NULL,'2014','10','14'),(4791,'Teaching Kids here in Calauan was an amazing experience. \'Twas awesome being a Kuya to many and a Teacher for a day :) God bless them #Outreach','855201064520096','',NULL,NULL,NULL,'2014','11','25'),(4792,'looking for portable wifi','853152531391616','',NULL,NULL,NULL,'2014','10','03'),(4793,'di nalang pagbigyan','850320055008197','',NULL,NULL,NULL,'2014','09','28'),(4794,'i would buy my own pc but then no cash lol','845495935490609','',NULL,NULL,NULL,'2014','09','19'),(4795,'broken pc','845495722157297','',NULL,NULL,NULL,'2014','09','19'),(4796,'net so slow','845493405490862','',NULL,NULL,NULL,'2014','09','19'),(4797,'azkalz game and i cant watch :/','836203833086486','',NULL,NULL,NULL,'2014','09','03'),(4798,'cant play this saturday against DB manda. sigh. this is crap','816908888349314','',NULL,NULL,NULL,'2014','07','31'),(4799,'cant hear the lecture videos haha,','794763193897217','',NULL,NULL,NULL,'2014','06','24'),(4800,'solo internet pls','776424912397712','',NULL,NULL,NULL,'2014','05','27'),(4801,'if i only had my own internet','766343753405828','',NULL,NULL,NULL,'2014','05','11'),(4802,'done with tfios :)','761757730531097','',NULL,NULL,NULL,'2014','05','04'),(4803,'no appetite everyday','759259720780898','',NULL,NULL,NULL,'2014','04','30'),(4804,'accepting internet donations','757300394310164','',NULL,NULL,NULL,'2014','04','27'),(4805,'sand boarding :D','755692754470928','',NULL,NULL,NULL,'2014','04','24'),(4806,'lost my confirmation stuff haha nakikialam pa sa room ko e. nawala tuloy','746853912021479','',NULL,NULL,NULL,'2014','04','09'),(4807,'kung may sariling internet lang talaga ako...','746764942030376','',NULL,NULL,NULL,'2014','04','09'),(4808,'Alesso\'s \"under control\".  @CloseupPH :)))) Gian Bautista Joshua Aguilar nakakahiya boses natin! :D party all night woo!','744939545546249','',NULL,NULL,NULL,'2014','04','07'),(4809,'want most crappy internet? pick pldt','742420362464834','',NULL,NULL,NULL,'2014','04','01'),(4810,'pldt sucks','742418809131656','',NULL,NULL,NULL,'2014','04','01'),(4811,'internet pls','741989795841224','',NULL,NULL,NULL,'2014','03','31'),(4812,'accepting internet donations :(','741950139178523','',NULL,NULL,NULL,'2014','03','31'),(4813,'pang squater net','741942109179326','',NULL,NULL,NULL,'2014','03','31'),(4814,'pang squatter lang','741446469228890','',NULL,NULL,NULL,'2014','03','30'),(4815,'internet sucks','741425979230939','',NULL,NULL,NULL,'2014','03','30'),(4816,'passed final Chem exam :D','736012203105650','',NULL,NULL,NULL,'2014','03','21'),(4817,'fb can be a tool of productivity too, di niyo lang alam','731829490190588','',NULL,NULL,NULL,'2014','03','13'),(4818,'Who\'s going to forever summer? :D','729529637087240','',NULL,NULL,NULL,'2014','03','09'),(4819,'60th FDC :(','708408822532655','',NULL,NULL,NULL,'2014','01','30'),(4820,'Mas gusto ko pa mag-aral :(','708395789200625','',NULL,NULL,NULL,'2014','01','31'),(4821,'Franco \\m/ wooooo. One love jah love :) 3:15 RASTAFARI','705632646143606','',NULL,NULL,NULL,'2014','01','24'),(4822,'This is ten percent luck, twenty percent skill\nFifteen percent concentrated power of will\nFive percent pleasure, fifty percent pain\nAnd a hundred percent reason to remember the name\n\n#FootballIsPassion','703895816317289','',NULL,NULL,NULL,'2014','01','21'),(4823,'Willing to buy pocket wifi. PM me','697992756907595','',NULL,NULL,NULL,'2014','01','12'),(4824,'Vacation is nearly at it\'s end. It\'ll be a another year again before I get to come back :/','691772790862925','',NULL,NULL,NULL,'2013','12','31'),(4825,'Happy Birthday Bro :) have a good one','687715647935306','',NULL,NULL,NULL,'2013','12','26'),(4826,'Chemistry','684199121620292','',NULL,NULL,NULL,'2013','12','17'),(4827,'Declined a slot for makati team :( hope i made the right choice.','677396592300545','',NULL,NULL,NULL,'2013','12','04'),(4828,'Thanks for spoiling the fight guys, thanks','671975546175983','',NULL,NULL,NULL,'2013','11','24'),(4829,'sana wag ka na bumalik-balik every weekend','671973709509500','',NULL,NULL,NULL,'2013','11','24'),(4830,'Excited for the Weekend <3 \\m/','670402539666617','',NULL,NULL,NULL,'2013','11','21'),(4831,'panget perf task 2 xD ko','670362456337292','',NULL,NULL,NULL,'2013','11','21'),(4832,'gonna buy a new router cause, the new one\'s used a lot :(','667489949957876','',NULL,NULL,NULL,'2013','11','17'),(4833,'The best leaders throughout history aren\'t remembered because they prevented huge disasters, they are remembered because when disaster inevitably struck, they inspired and rallied the people.\n\nBiboy Alimangohan on PNoy\nFormerly of San Jose, Tacloban City\nCurrent address: N/A','665287560178115','',NULL,NULL,NULL,'2013','11','13'),(4834,'M5 ','665276386845899','',NULL,NULL,NULL,'2013','11','13'),(4835,'chemistry quiz :I','662192867154251','',NULL,NULL,NULL,'2013','11','07'),(4836,'1. crowded school bus\n2. ipis\n3. shoe missed it\n4. ipis gone\n5. chaos','661214333918771','',NULL,NULL,NULL,'2013','11','06'),(4837,'binigya sakin pinakamahirap na tessellation -_- hayyyyyy','653429101363961','',NULL,NULL,NULL,'2013','10','22'),(4838,'English easy to speak, hard to study -_- huhuhuh','651903308183207','',NULL,NULL,NULL,'2013','10','18'),(4839,'new topic 1-3 days before exams -_-\n\n#BosconianLife','651056848267853','',NULL,NULL,NULL,'2013','10','17'),(4840,'We walk by Faith, Not by Sight O:)\n#Banal','641388052568066','',NULL,NULL,NULL,'2013','10','01'),(4841,'Kasambahay lost another shirt again hay nako -_-','638982086141996','',NULL,NULL,NULL,'2013','09','26'),(4842,'Magsalamin siguro ako para sana di na lumabo ang lesson sa geom :/','638046859568852','',NULL,NULL,NULL,'2013','09','24'),(4843,'wanna Rematch with ya\'ll. this time no foul plays','636323689741169','',NULL,NULL,NULL,'2013','09','21'),(4844,'Saturday classes incentive \n#intrams','635927699780768','',NULL,NULL,NULL,'2013','09','20'),(4845,'NCR MEET :((((((((((\n\nfeeling super down','635229783183893','',NULL,NULL,NULL,'2013','09','19'),(4846,'\"Turnstile sucks...\"\nsincerely, Bosconians','627224423984429','',NULL,NULL,NULL,'2013','09','03'),(4847,'Several guys, a frisbee, a basketball and some rad skills. Just plain awesomeness :) \\m/','626808237359381','',NULL,NULL,NULL,'2013','09','02'),(4848,'My periodic table magically vanished from my bag.... amazing -_-','626257750747763','',NULL,NULL,NULL,'2013','09','01'),(4849,'Got punched earlier in today\'s game. Upper lip got cut. Still continued playing. #NoPainNoGain','625657874141084','',NULL,NULL,NULL,'2013','09','03'),(4850,'Philippines, way back 1950s. what the hell happened','624460414260830','',NULL,NULL,NULL,'2013','08','28'),(4851,'dont wanna be the guy on the right.... hell, i dont wanna be any of the guys.','620320441341494','',NULL,NULL,NULL,'2013','08','20'),(4852,'This week was a good week','619969648043240','',NULL,NULL,NULL,'2014','08','27'),(4853,'I think we have classes on Saturday :/ PERO STILL WOOOO','619967488043456','',NULL,NULL,NULL,'2013','08','19'),(4854,'Binay wag ka na magpa-OP, gayahin mo sila lim oh.','619961024710769','',NULL,NULL,NULL,'2014','08','27'),(4855,'Sana when i wake up tomorrow it\'s 8 am :)','619959051377633','',NULL,NULL,NULL,'2013','08','19'),(4856,'walang pasok','619918854714986','',NULL,NULL,NULL,'2013','08','19'),(4857,'Deym lakas ulan... hoping walang pasok tom but keep people safe','619906308049574','',NULL,NULL,NULL,'2013','08','19'),(4858,'Pasong Tamo River once again :))','619476831425855','',NULL,NULL,NULL,'2013','08','19'),(4859,'I need to improve on geometry. Chem is ok for now.....','617473984959473','',NULL,NULL,NULL,'2013','08','14'),(4860,'L.P was awesome :)','617413931632145','',NULL,NULL,NULL,'2013','08','14'),(4861,'Linkin Park tomorrow!','616375721735966','',NULL,NULL,NULL,'2013','08','12'),(4862,'Brace yourselves... gilas sympathizers are comin.','615964185110453','',NULL,NULL,NULL,'2013','08','11'),(4863,'Weekend workout done whew!','615426298497575','',NULL,NULL,NULL,'2013','08','10'),(4864,'study English for 2 hours then... 4 hours chemistry.','613897908650414','',NULL,NULL,NULL,'2013','08','12'),(4865,'Someone made me his bed :)','613859321987606','',NULL,NULL,NULL,'2013','08','08'),(4866,'AP test questions are opinionated.....','613558172017721','',NULL,NULL,NULL,'2013','08','06'),(4867,'Exams? Come at me bro :)','613073002066238','',NULL,NULL,NULL,'2013','08','05'),(4868,'The doctor said i have the worst case of Dysania :(((','609895049050700','',NULL,NULL,NULL,'2013','08','11'),(4869,'5 quizzes tomorrow, i think i\'m gonna study for 3 quizzes only','606785056028366','',NULL,NULL,NULL,'2013','07','24'),(4870,'4 quizzes tomorrow? pwede ba yun','606745026032369','',NULL,NULL,NULL,'2013','07','25'),(4871,'My goal yesterday :) assist by Paolo Cristobal video by Matthew Almeda','604776919562513','',NULL,NULL,NULL,'2016','07','21'),(4872,'Friday training and workout donee :)','600242210015984','',NULL,NULL,NULL,'2013','07','13'),(4873,'How football is sport of all Don Bosco schools from a batch waaaaaayy back\n\n\"It was raining hard. We were only 34 in the class. We like to consider ourselves the elite of the dirty dozen type. Nobody may want us, but each other is all we need. 15 of us dressed up in the classroom in our athletic uniforms like Roman Legionnaires off to the Spanish Moors. \n\nIt\'s football time in the rain. In a situation like this, we are the only class who would dare to stand up against these hard as nails individuals who can muscle even the best Greek Phalanx like the Persian Cavalry of Darius the great. The Bakal Boys were waiting for us in the muddy field.\n\nThey were all raring to get a piece of us, not knowing the onslaught that will happen in the fray that will ensue. We know who we\'re up against and it isn\'t gonna be easy. We all gathered to one corner, prayed One Our Father, three Hail Maries and one Glory be before marching out like the Crusaders of old. \n\nWe know how dirty this can get. Shall we ask for postponement of the game due to the heavy downpour to escape the wrath of these lathe-machine jocks? We don\'t think so.\n\nSo in the pouring rain, the referee asked us: \"Tuloy pa ba?\" The Bakal Boys giving us tiger looks across the field look like they\'re not gonna turn back. So why should we?\n\nSo we said: Oo tuloy. Tuloy na tuloy.\n\nWe took our positions. Our advisers were watching in the shade as we got ready to engage each other in an eyeball to eyeball confrontation. \n\nThe moment the game kicked off, it was a dogfight. Splashing mud was all over our faces as we traded tackles and kicks with our ferocious opponents. Whap! Something hit me from behind. Splash! Another one bites the mud . After minute after minute of leg-breaking play, we finally scored our first goal. From then on, our opponents were seen crashing all over the place as we teach them who\'s the boss. The Mud People rule! We are the new masters of the storm. Finally, we won. 3-1. In favor of our class. \n\nHave you figured out what shop can beat the Bakal Boys in a heavy rainpour soccer game? You guessed it, it\'s us. The Few, The Proud, the Legendary RAC Technology.\"','598299376876934','',NULL,NULL,NULL,'2013','07','08'),(4874,'Sunday workout doneee :)','597870260253179','',NULL,NULL,NULL,'2014','08','27'),(4875,'weather for this week','597838033589735','',NULL,NULL,NULL,'2013','07','07'),(4876,'geom and english quizzzz bukas','594907217216150','',NULL,NULL,NULL,'2013','07','01'),(4877,'Class > Swag\nswag is for jejemons','594424763931062','',NULL,NULL,NULL,'2013','08','08'),(4878,'\'murican picnic #throwback','594423593931179','',NULL,NULL,NULL,'2013','06','30'),(4879,'#omnomnom','594416380598567','',NULL,NULL,NULL,'2016','10','20'),(4880,'ready for chem :(( NOT','592919530748252','',NULL,NULL,NULL,'2013','06','28'),(4881,'#Marcos>Aquino','592853347421537','',NULL,NULL,NULL,'2013','06','27'),(4882,'i want to be caught during a test with this written on my palm :)','591934470846758','',NULL,NULL,NULL,'2013','06','26'),(4883,'sci math football :)','591930404180498','',NULL,NULL,NULL,'2013','06','25'),(4884,'Gareth Bale. remains in Tottenham :))','591866644186874','',NULL,NULL,NULL,'2013','06','25'),(4885,'Umitim slight :(','591420120898193','',NULL,NULL,NULL,'2013','06','25'),(4886,'New number :)','584629261577279','',NULL,NULL,NULL,'2013','06','10'),(4887,'Finally bought some weights thanks ma and pa :)','583819031658302','',NULL,NULL,NULL,'2013','06','08'),(4888,'Adviser ko si sir John Nico Alejandro Urgena :)','580601775313361','',NULL,NULL,NULL,'2013','06','02'),(4889,'Last night in LA :( leaving for the PH','580372708669601','',NULL,NULL,NULL,'2013','06','01'),(4890,'Whew.. Done with disney, universal studios, Las Vegas, CALI adventure, Sta. monica beach, Beverly Hills, Hollywood. On the way to San Diegooo :)','579597665413772','',NULL,NULL,NULL,'2013','05','31'),(4891,'California tomorrow!!!','576022272437978','',NULL,NULL,NULL,'2013','05','22'),(4892,'Beach football with Kuwait and Armenian dudes \\m/\r\n#bestbuds','574450495928489','',NULL,NULL,NULL,'2013','05','22'),(4893,'Philippines Named âMost Stupid Country to Elect a 20-Year OJT as a Senatorâ by Time Magazine. Embarrassing','572527132787492','',NULL,NULL,NULL,'2013','05','15'),(4894,'Le Whitehouse','570566056316933','',NULL,NULL,NULL,'2013','05','12'),(4895,'All the Best Sir Alex Ferguson You will be Missed....','570127316360807','',NULL,NULL,NULL,'2013','05','08'),(4896,'Damn big chocolates','567770139929858','',NULL,NULL,NULL,'2013','05','06'),(4897,'Football laterr :)','567273073312898','',NULL,NULL,NULL,'2013','05','02'),(4898,'Tae AT2.... ngayon ko lang nalaman. me wanty AT1','565439363496269','',NULL,NULL,NULL,'2013','04','28'),(4899,'http://tlaststand.wikia.com/wiki/Component','564674873572718','',NULL,NULL,NULL,'2013','04','25'),(4900,'That\'s it I\'m a Dortmund fan now \\m/','564322116941327','',NULL,NULL,NULL,'2013','04','24');
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

-- Dump completed on 2017-04-02 18:18:11
