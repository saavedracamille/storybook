-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: thesis_data_ryan
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (95,'12/05/1988','birthday'),(96,'Ryan','first_name'),(97,NULL,'middle_name'),(98,'Pangalangan','last_name'),(99,'male','gender'),(100,'Taguig','location'),(101,'Quezon City, Philippines','hometown');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (29,'Don Bosco Technical Institute, Makati','High School',2011,NULL,'108615515829522'),(30,'De La Salle University','College',0000,NULL,'127612997282544'),(31,'Don Bosco Technical Institute, Makati','College',0000,NULL,'108615515829522');
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
) ENGINE=InnoDB AUTO_INCREMENT=957 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (938,'ELAINE @ 18','attending','Hideout BGC','Taguig','Philippines','1174278049358318'),(939,'#Doni','attending','Club Filipino','San Juan','Philippines','1786415698283211'),(940,'Reina @ 18','attending','Esquivel\'s Garden and Resort','San Pedro','Philippines','1791162824473252'),(941,'37th Year Anniversary: SEA Games - 1st General Assembly','attending','4th Floor Multipurpose Room, Henry Sy Sr. Hall',NULL,NULL,'257462927982785'),(942,'(SURPRISE) Tiki Party For Micha','attending','Louisse Private Resort - Taytay, Rizal','Taytay','Philippines','1737784836476534'),(943,'bertday bash','attending','Parc Regent Condominium Makati','Makati','Philippines','612408458941755'),(944,'#SamRoaring20s : The Great Gatsby Debut','attending','Eastwood Richmonde Hotel','Quezon City','Philippines','601890996656668'),(945,'Dana\'s 18th: Home for the Aged Party','attending','Luwalhati Ng Maynila Home for the Aged','Marikina City','Philippines','898895840237995'),(946,'Angel\'s Intimate Get Together','attending','Wooden Spoon Kapitolyo Branch','Pasig','Philippines','178305822571614'),(947,'Univ Week Cat Hunting','unsure','De La Salle University','Manila','Philippines','789252927840986'),(948,'WALWAL(yca)','unsure','Reminisque bistro - scout lozano cor tomas morato qc',NULL,NULL,'1694367707447406'),(949,'UAAP SEASON 78 FINALS: ADMU vs. UP','attending','Rizal Memorial Stadium','Manila','Philippines','1734284036809952'),(950,'Semi-Finals: DLSU vs ATENEO #UAAP78MensFootball','attending','Rizal Memorial Stadium','Manila','Philippines','1716807258594709'),(951,'UAAP 78 FOOTBALL ADMU vs. FEU','unsure','Emperador Football Stadium, Mckinley Hill, Taguig City','Taguig','Philippines','550772551754990'),(952,'Roms\' party','unsure','18 Montclair St. Merville Subdivision Paranaque City',NULL,NULL,'1569707476638817'),(953,'REUNION DAW SA BAHAY NI IRVIN','unsure','Depende',NULL,NULL,'613145692086197'),(954,'numbers please.','attending',NULL,NULL,NULL,'1404235713159845'),(955,'Numbers and BBMs please! :)','attending',NULL,NULL,NULL,'417661098325674'),(956,'Closing Party, Bonding ng Unity :)','attending',NULL,NULL,NULL,'958949440803551');
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
) ENGINE=InnoDB AUTO_INCREMENT=1851 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1701,'Vickie Marie Rushton','Public Figure','425358034469542'),(1702,'DLSU CSO','Organization','245252766116'),(1703,'DLSU Crushes','Community','643369445762552'),(1704,'Greaser','Beauty, Cosmetic & Personal Care','1761869857380576'),(1705,'SAFE 2016','Community','346803472319952'),(1706,'Dlsu Usg','Organization','283415475102221'),(1707,'ASUS Republic of Gamers','Shopping & Retail','1493812764260739'),(1708,'Engineers of La Salle','Community','1717614991811008'),(1709,'Grab','App Page','527357467320600'),(1710,'NowThis Future','Media/News Company','1010847105623136'),(1711,'ClutchPoints','Media/News Company','519355568130521'),(1712,'Cirque: Engineering Week 2016','Community','1079253202125328'),(1713,'The LaSallian','Media/News Company','149678604759'),(1714,'Drift City Webzen','Games/Toys','1675414059412328'),(1715,'Pets Society','Pet Supplies','429018173958265'),(1716,'AlphaDraft','Video Game','710166675719464'),(1717,'KP','TV Show','1382790765327034'),(1718,'Mayor Edwin Olivarez','Government Official','424689020943339'),(1719,'Urban Athletics','Local Business','236971671861'),(1720,'Logan Paul','Actor','148364602028392'),(1721,'King Bach','Artist','606246146140197'),(1722,'PATTS Secret Files','Community','184098225126470'),(1723,'CeeJay Apple Services','Entrepreneur','108999749137894'),(1724,'Top Vines','Media/News Company','171112259610923'),(1725,'Mechanism','Company','419310838224601'),(1726,'Kate Upton','Public Figure','269428459847723'),(1727,'MCA Montessori School','Local Business','216259095080901'),(1728,'DBXTRM','Dancer','303426589861581'),(1729,'Don Bosco Technical Institute Makati','Local Business','511886122161987'),(1730,'League of Legends - Philippines','Games/Toys','139801452706157'),(1731,'Wingman','American Restaurant','146072705448402'),(1732,'Best Instagram & Vine Videos','Entertainment Website','627260763981738'),(1733,'Grayson \'Professor\' Boucher','Public Figure','23394359986'),(1734,'Master Beyts','Fictional Character','419590004766798'),(1735,'Zark\'s Burgers','Burger Restaurant','125052717215'),(1736,'Julia Barretto (Official JBeauties)','Artist','307608155970918'),(1737,'Coleen Garcia','Local Business','610046045748554'),(1738,'Ariana Grande','Musician/Band','12384211026'),(1739,'Zark\'s Burgers','Burger Restaurant','200827549953570'),(1740,'Jamich','Public Figure','234409963239932'),(1741,'Mechanicorp','Local Business','1455980241290494'),(1742,'NBA 2K','Games/Toys','221292025304'),(1743,'JackFrags','Public Figure','277260452334725'),(1744,'St. Paul College Pasig','School','269513829743735'),(1745,'The Hunger Games','Movie','159746560708670'),(1746,'Vikings SM North Edsa','Buffet Restaurant','133761616789773'),(1747,'DataBlitz','Shopping & Retail','116292905180055'),(1748,'Lloyd Cafe Cadena','Comedian','196422610403217'),(1749,'Anne Curtis','Mosque','195556317129736'),(1750,'Drake Bell','Musician/Band','12959858420'),(1751,'Best Vines','Website','170901143077174'),(1752,'NovoDDTank.com','Entertainment Website','290331754426756'),(1753,'Best Vines Philippines','Community','554595627930709'),(1754,'Play Park Rudy','Community','275870182453501'),(1755,'Sports Central','Retail Company','108532269201285'),(1756,'Chrissy Costanza','Public Figure','117159768458728'),(1757,'DDTank_Game321','App Page','163984540291017'),(1758,'Battlefield 3','Video Game','137409672949139'),(1759,'Vikings: Luxury-Buffet Restaurant','Buffet Restaurant','113225315413751'),(1760,'Kobe Bryant','Athlete','69025400418'),(1761,'The Walking Dead','TV Show','110475388978628'),(1762,'NBA Memes','Media/News Company','367810133247517'),(1763,'Batman Arkham','Games/Toys','140262999339534'),(1764,'Basketball','Sport','108614982500363'),(1765,'Rachel Anne Daquis','Athlete','237328789935'),(1766,'Bama Grill Bar-Restaurant Boracay','Burger Restaurant','133498636733188'),(1767,'Sam Pinto','Artist','108214705870117'),(1768,'Tv-ShowsHD','Community','128533493961847'),(1769,'GM_Kishi','Public Figure','489816491050714'),(1770,'Rakion','Games/Toys','118216954869037'),(1771,'Don Bosco Technical Institute - Makati City (Official Site)','School','445086115536691'),(1772,'Aeria Games','Games/Toys','47329794654'),(1773,'MITI - Baguio (Medline International Training Institute)','School','420602857983359'),(1774,'The Legend of Korra','TV Show','209565489060052'),(1775,'Playing Sf','Interest','378095855998'),(1776,'Carmelo Anthony','Athlete','308496539234273'),(1777,'Dwyane Wade','Athlete','79979913992'),(1778,'The Simpsons','TV Show','29534858696'),(1779,'Adagon Ag Gold','Musician/Band','280006525399648'),(1780,'Don Bosco Technical Institute, Makati','School','108615515829522'),(1781,'Ninja Saga','App Page','315390295169855'),(1782,'Ravenwood Fair','App Page','298474660188064'),(1783,'Restaurant City','App Page','275904399136748'),(1784,'Family Tree','Community','343062732385940'),(1785,'Special Force 2 Online','Games/Toys','269471113096489'),(1786,'DFI PH Mod Tenchi','Community','262239317155871'),(1787,'DFI Shake','Public Figure','308371199178412'),(1788,'Special Force: Philippines Chapter','Games/Toys','164511256958125'),(1789,'FD Amateur Dota Team','Public Figure','170924132990690'),(1790,'Kate Upton Fanpage','Public Figure','210002562368059'),(1791,'Don Bosco High School','High School','104099226292520'),(1792,'The Simpsons','TV Show','109535305740402'),(1793,'Walang babaeng PAKIPOT, sa lalakeng TAPAT at TODO kung MAG-EFFORT! :D','Community','237320152962545'),(1794,'Ninja Society','App Page','188867071129005'),(1795,'Ashley Gosiengfiao','Public Figure','148249834131'),(1796,'[GM]Miel','Public Figure','121672074524135'),(1797,'Crossfire Philippines','Games/Toys','107230795049'),(1798,'Special Force GM DarkWeed','Community','146617605366050'),(1799,'GameClub Philippines','Games/Toys','491371755071'),(1800,'Special Force GM Hannya','Community','127281553985148'),(1801,'Cristine Reyes','Public Figure','122010853049'),(1802,'AJ Perez','Artist','185004416598'),(1803,'Chixsense','Sports Team','109009802451716'),(1804,'Special Force GM Shogun','Community','100329486693130'),(1805,'Orlando Magic','Sports Team','74947776908'),(1806,'New York Knicks','Sports Team','21410634615'),(1807,'Miami Heat','Sports Team','284300559123'),(1808,'LA Lakers','Sports Team','144917055340'),(1809,'Sundalo Clan','Games/Toys','110187122329909'),(1810,'Internatioanal Dota university','College & University','185044474853256'),(1811,'Special Force','Just For Fun','80274530979'),(1812,'Special Force GM Solstice','Public Figure','145414535480615'),(1813,'Special Force Online Philippines','Internet Company','196611842502'),(1814,'Dwayne The Rock Johnson','Public Figure','406433779383'),(1815,'Jabbawockeez','Public Figure','8575300901'),(1816,'Boston Celtics','Sports Team','8725012666'),(1817,'Special Force GM Miel','Product/Service','141598495880837'),(1818,'Dino Imperial','Artist','374630622228'),(1819,'Charity 10-11','Community','132148650149557'),(1820,'Mark Zuckerberg','Scientist','112845672063384'),(1821,'Jalen Testerman/bboyJstyles','Community','115649798493239'),(1822,'Vice Ganda','Artist','56771207447'),(1823,'Angel Locsin','Home','122338327152'),(1824,'Christine Reyes','Artist','113776318654479'),(1825,'Family Guy','TV Show','24609282673'),(1826,'NS Pilipinas Clan','Games/Toys','122883067738226'),(1827,'40 Facebook Credits','Product/Service','167743456575019'),(1828,'Facebook Games','Games/Toys','111724015524891'),(1829,'Dwayne Wade','Public Figure','110401235654238'),(1830,'LeBron James','Athlete','64637653943'),(1831,'Dwight Howard','Athlete','74504778787'),(1832,'Soul Plane','Movie','108054732549213'),(1833,'Ninja Saga','Community','126216970417'),(1834,'The SamuraiZ','Public Figure','158566037521059'),(1835,'Adam Sandler','Artist','9098498615'),(1836,'Eddie Guerrero','Athlete','57015140733'),(1837,'Raymark Mantala Rapada','Community','115427928521342'),(1838,'Bboying','Movie Genre','114741511871936'),(1839,'Dello','Musician/Band','133447160022624'),(1840,'Alodia Gosiengfiao','Artist','152138396746'),(1841,'Mca Montessori School','Organization','111168718926739'),(1842,'Ellen DeGeneres','Public Figure','26012002239'),(1843,'Linkin Park','Musician/Band','8210451787'),(1844,'VI-Unity SY.2010-2011 :] â¥','Community','119739511402248'),(1845,'Women','Just For Fun','114654995218453'),(1846,'Comp','Interest','113546041994797'),(1847,'Hindi Ako Bakla','Music','100682149973552'),(1848,'Suiciding','Interest','370526377764'),(1849,'Ultimate Game Card','Product/Service','217647105270'),(1850,'Elite GUNZ  - EliteKingdoms','Games/Toys','222512955610');
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
) ENGINE=InnoDB AUTO_INCREMENT=4657 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (4431,'Smile lang sa may mga problema dyan, malalagpasan niyo yan #DAM2017','1471568406196173','',NULL,NULL,NULL,'2017','02','22'),(4432,'Hello po ate','1432545066765174','Michaella Papa Lichauco',NULL,NULL,NULL,'2017','01','16'),(4433,'Pogi ni Eduardo Gargarita!! :))','1395546500465031','',NULL,NULL,NULL,'2016','12','09'),(4434,'lam na','1324036780949337','',NULL,NULL,NULL,'2016','10','06'),(4435,'well, same','1316792155007133','',NULL,NULL,NULL,'2016','09','28'),(4436,'John Gacal','1258504910835858','',NULL,NULL,NULL,'2016','07','22'),(4437,'this is so inspiring','1255235227829493','',NULL,NULL,NULL,'2016','07','17'),(4438,'IDOL SIR','1238625156157167','',NULL,NULL,NULL,'2016','06','22'),(4439,'more fun for engi. students','1181085155244501','',NULL,NULL,NULL,'2016','03','27'),(4440,'gaypose :)','776907892328898','',NULL,NULL,NULL,'2015','07','31'),(4441,'Thanks for the 4 years Don Bosco ! #ForeverBosconians','981087275244291','',NULL,NULL,NULL,'2015','03','29'),(4442,'I LOVE @j0hn4b3ju3l4','935329583153394','',NULL,NULL,NULL,'2015','01','09'),(4443,'Hi','921898514496501','',NULL,NULL,NULL,'2014','12','24'),(4444,'at calauan with Alexie Espinosa Joshua Aguilar Phillip Bravo (c) Carl Wayne Casalda Ramo','857403534279333','',NULL,NULL,NULL,'2014','09','02'),(4445,'Thank you Charles Castor and Antonino Leonardo NuÃ±ez for nominating me to do the #ALSicebucketchallenge, I would like to nominate Rafael Goco, Franco Lorenzo M. Buencamino, Kenn James Diego Jacob Santos Jaycee Reinier Tolosa , You guys have 24 hours to do this, good luck!','853350128018007','',NULL,NULL,NULL,'2016','06','13'),(4446,'gaypose :)','776907892328898','','Pico de Loro Beach and Country Club','Nasugbu','Philippines','2014','04','09'),(4447,'Hi, badingdingers ako! :)','774897715863249','',NULL,NULL,NULL,'2014','04','04'),(4448,'Hi','774830765869944','',NULL,NULL,NULL,'2014','04','04'),(4449,'Automotive 1\nSY 13-15','771365919549762','',NULL,NULL,NULL,'2014','03','28'),(4450,'Deathnote','767479016605119','',NULL,NULL,NULL,'2014','03','20'),(4451,'Geloy , ang sakit pre :<','750456198307401','',NULL,NULL,NULL,'2014','02','16'),(4452,'outbound 2014.\nGelo pugi :)','731136430239378','',NULL,NULL,NULL,'2014','01','10'),(4453,'sige pa Nic :) \r\n\r\n(c) Kenn James','730700153616339','',NULL,NULL,NULL,'2014','01','10'),(4454,'with cousins','726710620681959','Jaden G. Jardiolin and Justin Jardiolin',NULL,NULL,NULL,'2014','01','02'),(4455,'Nagpapicture samin :)','725457590807262','',NULL,NULL,NULL,'2013','12','31'),(4456,'3-1 :)','672710486081973','',NULL,NULL,NULL,'2013','09','28'),(4457,'Hi, I\'m gay!','654519121234443','',NULL,NULL,NULL,'2013','08','23'),(4458,'James Sayno ito na!','652645611421794','',NULL,NULL,NULL,'2013','08','18'),(4459,'nakisuot lng :D , sa ate ko ito','635335926486096','',NULL,NULL,NULL,'2013','07','17'),(4460,'I got \"2-3 Months\" on the how long can you live If Zombies Attacked you? quiz! http://apps.quizbone.com/portal/390992/1355412030?ref2=f_asp','529087600444263','',NULL,NULL,NULL,'2012','12','13'),(4461,'tunay na bosconian, kalbo at madasalin :D','497864776899879','Nathanael James Ceriola Sayno',NULL,NULL,NULL,'2012','10','07'),(4462,'Diego Jacob Santos, Anton Vizcarra \r\nTODA MAX! \r\n5-0 Sabay quit! nyak :D','466845920001765','',NULL,NULL,NULL,'2012','07','23'),(4463,'galing mag dive ','368781266520324','',NULL,NULL,NULL,'2012','07','15'),(4464,'ehem :D saksak si GM_Sparks :D Gilbert Monteiro Sumayang','447428811943476','',NULL,NULL,NULL,'2016','06','12'),(4465,'wag naman sobrang diket ^^','242595105760182','',NULL,NULL,NULL,'2012','03','06'),(4466,'http://www.customink.com/lab/?\nGumawa nalang kayo ng sarili niyong design tapos mag botohan tayo.','245922158817412','',NULL,NULL,NULL,'2012','02','03'),(4467,'Diego Santos\nhaha hanap ka pa ng rason haha talo weak 12-16 nung una tapos naging 20-16?\nhaha weak kapa negro \nmag rason kapa POV on daw haha\ntlga? kwento mo sa nanay mo haha\niiyak na yan','346510945368597','',NULL,NULL,NULL,'2012','01','23'),(4468,'Jesus ; Santa .\n Santa ; Yes ?\n Jesus ; I\'m Sad .\n Santa ; Why Are You Sad ?\n Santa ; It\'s Christmas Right? It\'s Your\n ... Birthday !\n Jesus ; Yeah. That\'s The Point .\n Santa ; Why ?\n Jesus ; Because Whenever It\'s Christmas\n The Kids Only Wait For You And Not Me !\n They Only Celebrate Christmas Because\n Of You ! Why Santa , Why Not Jesus ?\n Dec. 25 Is For Jesus Not Just For Santa .\n Re-Post This If You Love Jesus .','324805714205787','',NULL,NULL,NULL,'2011','12','20'),(4469,'GOD IS WELCOMED IN MY HOUSE.\n Â° ã Â° ËËË * _Î ____*ã*Ë\n Ë Ë â¢Ëâ¢Ë */________/~\\ãË Ë Ë\n Ë Ë â¢Ëâ¢ Ë ï½ ç°ç° ï½ éï½ â¢\n If God is also welcome in your house, Share this. â¥\n \nPS: He just saw you reading this.\n :)))','312734188746273','',NULL,NULL,NULL,'2011','12','02'),(4470,'http://www.youtube.com/watch?v=xxw5IukjRJI','311363342221791','',NULL,NULL,NULL,'2011','12','03'),(4471,'5% marunong na mag guitara :)','304720689547623','',NULL,NULL,NULL,'2011','11','18'),(4472,'teacher: get out a piece of paper\n \nstudent: look at me now\n \nteacher: excuse me\n \nstudent: im gettingï»¿ paper','300719066614452','',NULL,NULL,NULL,'2014','07','18'),(4473,'http://www.youtube.com/watch?v=2GGGF9KX61E','125506594222892','',NULL,NULL,NULL,'2011','10','31'),(4474,'http://www.youtube.com/watch?v=6K7okRhJWfg&feature=related','234043409986961','',NULL,NULL,NULL,'2011','10','16'),(4475,'SAWAKAS!!!! PAGTAPOS NG ILANG BUWAN NA PAG HIHIRAP! NAKUHA KO NA RIN!!!#!# YEEA!!\nNO EDit e2!!#! Diego Jacob Santos,Anton Vizcarra,Ian Ã RambayOn,Irvin Ã Tagacay','286205534732472','',NULL,NULL,NULL,'2011','10','12'),(4476,'http://www.youtube.com/watch?v=aW2yPzZQaKQ\nPaniz kau d2!!','272314859458568','',NULL,NULL,NULL,'2011','10','01'),(4477,'http://www.youtube.com/watch?v=9xlUHHhrTvo\ne2 na second movie ko! sorry kung bulok quality, hirap ma upload ung original na ginawa ko , inaus ko nalang para madali ma upload\nDiego Jacob Santos,Anton Vizcarra,Leo Angelo Regis','254242977952382','',NULL,NULL,NULL,'2011','09','30'),(4478,'http://www.youtube.com/watch?v=QUhxKU3Gd0c&feature=mh_lolz&list=HL1316873215\nDiego Jacob Santos,Anton Vizcarra,Leo Angelo Regis,Irvin Ã Tagacay,Ian Ã RambayOn,Leo Miguel Regis','196262467113627','',NULL,NULL,NULL,'2011','09','25'),(4479,'Diego Jacob Santos,Anton Vizcarra,Leo Angelo Regis','275438689142490','',NULL,NULL,NULL,'2011','09','19'),(4480,'<--------- may Stip Nik','275424522477240','',NULL,NULL,NULL,'2011','09','19'),(4481,'http://www.youtube.com/watch?v=MnBEQLIc314\n','287749361239801','',NULL,NULL,NULL,'2011','09','16'),(4482,'bad3p, tambak kami basketbol ,10-26 \nbawi nalang kami 2nd game','274019832617709','',NULL,NULL,NULL,'2011','09','16'),(4483,'http://apps.facebook.com/stick_run/?invite=100000290846243 <-------CLICK THE LINK!!\nPLAY STICK RUN NOW! THE MOST AWSOME GAME IN FACEBOOK!!','198606213539821','',NULL,NULL,NULL,'2011','09','04'),(4484,'collector ako bukas sa misa! bgay mo sakin lahat ng pera mo Diego Jacob Santos ^^, lagyan mo na rin ecoin','263135790372780','',NULL,NULL,NULL,'2011','08','25'),(4485,'Ateneo De La Salle','263125117040514','',NULL,NULL,NULL,'2015','05','12'),(4486,'http://apps.facebook.com/stick_run/?invite=100000290846243 LARO NA PO KAYO PLEASE','182799545121471','',NULL,NULL,NULL,'2011','08','21'),(4487,'tumubo na pakpak ko!! Leo Angelo Regis,Irvin Ã Tagacay,Diego Gener Santos,Ian Ã Rambayon','254221184597574','Irvin Tagacay and Leo Angelo Regis',NULL,NULL,NULL,'2011','08','10'),(4488,'kupal DepEd!','251824204837272','',NULL,NULL,NULL,'2014','07','18'),(4489,'NO CLASSES TOMORROW!!!!!\n.\n.\n.\n.\n.\n.\n..\n.\n.\n.\n.\n.\n.\n.\n..\n.\n.\nJowk, TOKIS SI KUYA KIM sabi niya \"Ang Metro Manila ay makakaranas ng malakas na pag-ulan.\" Diego Gener Santos, Ian Ã Rambayon','248463415173351','',NULL,NULL,NULL,'2011','07','27'),(4490,'wag naman sobrang diket ^^','242595105760182','',NULL,NULL,NULL,'2011','09','01'),(4491,'Join to Pockie Ninja Released New Chapter: Revenge of Aizen.','234574096562283','',NULL,NULL,NULL,'2011','06','28'),(4492,'aun! SF regional finals sa SM North Edsa Annex sa sabado! ^^ picturan ko nga sila miel Irvin Ã Tagacay','234572469895779','',NULL,NULL,NULL,'2011','06','28'),(4493,'la pasok !','233273403359019','',NULL,NULL,NULL,'2011','06','23'),(4494,'la pasok wew!','222845107735182','',NULL,NULL,NULL,'2011','06','08'),(4495,'wew la kilala sa don bosco ! ^^ diego lang , dieg dla ka bola bukas','222161751136851','',NULL,NULL,NULL,'2011','06','06'),(4496,'http://www.youtube.com/watch?v=2MAqT-mLJjo&feature=youtu.be Amp.! merun na pla laro n2! download ko nga haha! Diego Jacob Santos Irvin Ã TagacayDarwin Santos Adrian Ã Rambayon','171765726217960','',NULL,NULL,NULL,'2011','06','05'),(4497,'Join to Pockie Ninja Released New Chapter: Revenge of Aizen.','219419788077714','',NULL,NULL,NULL,'2011','05','26'),(4498,'Join to Pockie Ninja Released New Chapter: Revenge of Aizen.','218732181479808','',NULL,NULL,NULL,'2011','05','23'),(4499,'wenk','216976554988704','',NULL,NULL,NULL,'2011','05','16'),(4500,'KoBading!','216433138376379','Kyle Regala Dilapdilap, Arvin Jay Cristo, Irvin Tagacay and Oloap Oatab',NULL,NULL,NULL,'2011','05','17'),(4501,'http://www.youtube.com/watch?v=AfcB5kZfPAI&feature=related idol amp. prng no recoil ang skills!','210692525628265','',NULL,NULL,NULL,'2011','05','14'),(4502,'kahiya nmn lakers talo dalas 4-0, heat na tlga champion','215641328455560','',NULL,NULL,NULL,'2011','05','13'),(4503,'http://www.youtube.com/watch?v=8W7zMpLr26A&feature=related','223543200994274','',NULL,NULL,NULL,'2011','05','07'),(4504,'SF ko kahit mababa head shot mamaw naman :)','214383015248058','Kristina F. Marquez, Darwin Santos, Irvin Tagacay and Lance Vi',NULL,NULL,NULL,'2011','05','07'),(4505,'aid ok ba gwa ko ?','213415238678169','Kristina F. Marquez, Jr Espinosa and Irvin Tagacay',NULL,NULL,NULL,'2015','05','12'),(4506,'haha nakasali ako ^^, score ko d2 9-4, si gm 11-4 ,kakampi ko siya, kung may PHX psg lang ako may prize sana me >:)','212341522118874','Kristina F. Marquez, Jr Espinosa and Irvin Tagacay',NULL,NULL,NULL,'2011','05','03'),(4507,'waw','212334845452875','',NULL,NULL,NULL,'2011','04','28'),(4508,'Lapit na Lt.Col!','211538358865857','Kristina F. Marquez and Irvin Tagacay',NULL,NULL,NULL,'2011','04','26'),(4509,'e2 bago pc namin','211056772247349','Ian Rambayon, Justin Jardiolin, Vince Benitez, Mia Francis Micayabas Ecija, Andrea Torres, Lance Adrianne Anciano Dabon, Randy Anico, Arjay Bonito Napod, Frinze Arida, Lheanne Patrice Vecinal Mantala, Leo Angelo Regis, Raymark Mantala Rapada and Irvin Tagacay',NULL,NULL,NULL,'2015','05','12'),(4510,'cnu ba pde ka sf diyan , boring eh','210128389006854','',NULL,NULL,NULL,'2011','04','19'),(4511,'aid ok ba? ^^','207873559232337','Kristina F. Marquez and Irvin Tagacay',NULL,NULL,NULL,'2011','04','10'),(4512,'haha marunong mag sf 2','207170979302595','Irvin Tagacay',NULL,NULL,NULL,'2011','04','07'),(4513,'SF Killer bananas membership request','213746201974739','',NULL,NULL,NULL,'2011','04','04'),(4514,'aid, pogi na ^^','206143762738650','Kristina F. Marquez, Kevin John Napuli and Irvin Tagacay',NULL,NULL,NULL,'2011','04','11'),(4515,'Chamba nanaman','205675099452183','Ian Rambayon and Irvin Tagacay',NULL,NULL,NULL,'2011','04','05'),(4516,'tng na! puro langgam twalya ko, todo panaman punas ko k jr.\ntng na sakit!!','204365946249765','',NULL,NULL,NULL,'2014','07','18'),(4517,'shet, sunog ako sa swimming','204251319594561','',NULL,NULL,NULL,'2011','03','26'),(4518,'aid , dedo ka sa lindol? Ian Ã Rambayon','202857483067278','',NULL,NULL,NULL,'2011','03','21'),(4519,'Diego inspiration!,Eto po ang aking acc. nag mamamaw lng nmn po ako sa team death. Kung napapansin niyo po ala na ako X3, Double UP sa aking acc........ pero may 30%exp parin ako dahil sa hachet...','202835663069460','Zed Ã Alejo and Irvin Tagacay',NULL,NULL,NULL,'2011','03','21'),(4520,'pakabusog bukas ^^','202825619737131','',NULL,NULL,NULL,'2011','03','21'),(4521,'Marine Uzi Diego Jacob Santos Dota Ã Kasper Dota Ã Irvin','202305306455829','',NULL,NULL,NULL,'2011','03','19'),(4522,'la kuha amp.','202063669813326','',NULL,NULL,NULL,'2011','03','18'),(4523,'Diego weak!\nparati palusot\nasa raw ako sa secondary\nd ko nga siya ginamitan\nasa! weak scared Diego Jacob Santos \ndva Ian Ã RambayOn ,Dota Ã Irvin\nPEACE','201556803197346','',NULL,NULL,NULL,'2011','03','16'),(4524,'mas mahirap pa test ko sa Don bosco k sa sa NAT ^^','201051086581251','',NULL,NULL,NULL,'2014','07','18'),(4525,'http://www.youtube.com/watch?v=JXBJLuaPNhA','103704266378547','',NULL,NULL,NULL,'2011','03','10'),(4526,'http://www.youtube.com/watch?v=TwDOWHu2Suk Diego Jacob Santos Dota Ã Irvin Ian Ã RambayOn gawin natin sa closing ^^','205222446171281','',NULL,NULL,NULL,'2011','03','09'),(4527,'^^','199585933394433','Irvin Tagacay',NULL,NULL,NULL,'2012','02','18'),(4528,'http://www.youtube.com/watch?v=xK_l07tK6LA','108287369251032','',NULL,NULL,NULL,'2011','03','05'),(4529,'waw','198788846807475','Irvin Tagacay',NULL,NULL,NULL,'2011','03','05'),(4530,'http://www.youtube.com/watch?v=mKBO6TqPFXU mga idol!! Dota Ã Irvin,Ian Ã RambayOn,Diego Jacob Santos','186570654713678','',NULL,NULL,NULL,'2011','03','04'),(4531,'haha','198301153522911','Irvin Tagacay',NULL,NULL,NULL,'2011','03','03'),(4532,'^^ Panis kau ^^','197593393593687','Irvin Tagacay',NULL,NULL,NULL,'2011','02','28'),(4533,'http://www.youtube.com/watch?v=gXrCy7lgKkM&feature=related Mga idol! ','205892756092659','',NULL,NULL,NULL,'2011','02','28'),(4534,'Panis sa Back item ko !!\nMahal yan ubos token ko dahil diyan','197181826968177','Irvin Tagacay and Raymark Mantala Rapada',NULL,NULL,NULL,'2011','02','28'),(4535,'Dragon M4A1','196801363672890','',NULL,NULL,NULL,'2011','02','25'),(4536,'iyak ka na dieg, sabi sau dinelete ko eh','196406157045744','Kristina F. Marquez, Raymark Mantala Rapada and Irvin Tagacay',NULL,NULL,NULL,'2011','02','24'),(4537,'http://www.youtube.com/watch?v=mqN0bwt1icI&feature=related Erika Jhule Gallestre Tronco','182243021818129','',NULL,NULL,NULL,'2011','02','22'),(4538,'omg ! :\">\nRyan : Papa n_ggs, wag ka tumingin sken.. nakooo , naiinlove ako sau :\"\"\">\nAdrian: saken kaya sia nakatngn !\nRyan : sken kaya ...\nAdrian : sken!\nRyan : SATEN nlng :\">\nAdrian : :\">\n\n-Ian Ã Rambayon,Diego Jacob Santos,Shania CheLsea Villato,Dota Ã Irvin','195872210432472','',NULL,NULL,NULL,'2011','02','21'),(4539,'Panis','194395620580131','Ian Rambayon and Irvin Tagacay',NULL,NULL,NULL,'2011','02','15'),(4540,'Haha amp. ^^','193433887342971','Ava Padilla, Allyssa Neyra, Lance Vi and Irvin Tagacay',NULL,NULL,NULL,'2011','02','13'),(4541,'Pasado donbosco','189605617726943','',NULL,NULL,NULL,'2011','02','11'),(4542,'Haha imba tlga ko pag horror ^^','193100954042931','Ian Rambayon and Irvin Tagacay',NULL,NULL,NULL,'2011','02','10'),(4543,'http://www.youtube.com/watch?v=vMDVbmuVu90 prng ako lang ah','188349974518800','',NULL,NULL,NULL,'2011','02','05'),(4544,'http://www.youtube.com/watch?v=Ky-VZ2nU7fE&feature=fvw wew ','143339552394452','',NULL,NULL,NULL,'2011','01','31'),(4545,'Yes napatay rin si pagong !!','189875577698802','Ian Rambayon and Irvin Tagacay',NULL,NULL,NULL,'2011','01','29'),(4546,'5 to go','130017130398709','',NULL,NULL,NULL,'2011','01','27'),(4547,'http://www.youtube.com/watch?v=-2aCCxjwfNM&feature=related Panis mga matatanda! ','184223888266946','',NULL,NULL,NULL,'2011','01','22'),(4548,'http://www.youtube.com/watch?v=ELLsyw-CL34&feature=related SOUND TRIP ni AID','184418384912733','',NULL,NULL,NULL,'2011','01','21'),(4549,'aid ganda ba spada ko ? ^^','187717227914637','Ian Rambayon',NULL,NULL,NULL,'2011','01','21'),(4550,'body','193172710698755','',NULL,NULL,NULL,'2011','01','19'),(4551,'haha','186335538052806','Irvin Tagacay',NULL,NULL,NULL,'2011','01','16'),(4552,'Mamaw nanaman ! ^^','186075991412094','Irvin Tagacay',NULL,NULL,NULL,'2011','01','16'),(4553,'lamon mo aid ^^','185789718107388','Irvin Tagacay',NULL,NULL,NULL,'2011','01','14'),(4554,'Wew.. 2nd fight plng kay Ape King, kill na at weapon pa ! ^_^ Swerte ko tlga !','184693744883652','Darwin Santos, Raymark Mantala Rapada and Irvin Tagacay',NULL,NULL,NULL,'2011','01','11'),(4555,'Natutulog sa guerra haha .','184399311579762','Irvin Tagacay',NULL,NULL,NULL,'2011','01','09'),(4556,'Imba bahay ni irvin!','136798526379300','',NULL,NULL,NULL,'2011','01','07'),(4557,'Top 1 whahahaa','124051690995991','',NULL,NULL,NULL,'2011','01','04'),(4558,'http://www.youtube.com/watch?v=RcmKbTR--iA','172177082817634','',NULL,NULL,NULL,'2011','01','02'),(4559,'Thank you NS ^^','182249958461364','Ian Rambayon and Irvin Tagacay',NULL,NULL,NULL,'2011','03','20'),(4560,'My new weapon','181740811845612','Ian Rambayon and Irvin Tagacay',NULL,NULL,NULL,'2015','05','12'),(4561,'Noche Buena na !!','180921025269190','',NULL,NULL,NULL,'2015','05','12'),(4562,'2am na haha , bat 2log na kau ? :P','167198959989011','',NULL,NULL,NULL,'2015','05','12'),(4563,'Shet mamaw ako sa warrock!','179623268724033','Ian Rambayon, Darwin Santos and Irvin Tagacay',NULL,NULL,NULL,'2011','03','20'),(4564,'Napadapa ko ung pusa haha , 2 lang kami xD','179167348769625','Ian Rambayon and Irvin Tagacay',NULL,NULL,NULL,'2015','05','12'),(4565,'http://www.youtube.com/watch?v=bkBxak_zFtg&feature=related','180611901964917','',NULL,NULL,NULL,'2010','12','19'),(4566,'Luhod mga homboys','178406045512422','Ian Rambayon and Irvin Tagacay',NULL,NULL,NULL,'2010','12','18'),(4567,'http://www.youtube.com/watch?v=u6yVysaI6P0&feature=related ','161932593852077','',NULL,NULL,NULL,'2010','12','14'),(4568,'Cnu mas pogi? haha','177170732302620','',NULL,NULL,NULL,'2015','05','13'),(4569,'http://www.youtube.com/watch?v=yqzNKqO3TlY&feature=related','109535409119368','',NULL,NULL,NULL,'2010','12','09'),(4570,'http://www.youtube.com/watch?v=PHXiYq5Np4E&feature=related','109626225775494','',NULL,NULL,NULL,'2010','12','09'),(4571,'http://warrock.amped.ph/HOME/tabid/36/Default.aspx','159220450789998','',NULL,NULL,NULL,'2010','12','09'),(4572,'http://warrock.amped.ph/','176424775720135','',NULL,NULL,NULL,'2010','12','09'),(4573,'Si Diego nag WARROCK','176200605732966','',NULL,NULL,NULL,'2010','12','08'),(4574,'srap cake ko ! galing red ribbon :P','174234515939720','',NULL,NULL,NULL,'2015','05','12'),(4575,'lolo na ko T_T d pa nga ako nag de debu haha :))\nsalamat po sa lahat ng bumati/babati skin!!','170040679695593','',NULL,NULL,NULL,'2010','12','05'),(4576,'Lapit na mag 13 :))','178278322198599','',NULL,NULL,NULL,'2015','05','12'),(4577,'hayz..\nkita 10-paks k bukas\nwhahaha','159891964054458','',NULL,NULL,NULL,'2010','11','29'),(4578,'http://www.youtube.com/watch?v=KpduGqGY6HA&feature=related\n\nkaibigan ko ung nasa gitna','132042286853666','',NULL,NULL,NULL,'2010','11','27'),(4579,'haha','130828896976014','',NULL,NULL,NULL,'2010','11','25'),(4580,'yea!! na dedo na rin si lvl 20 boss ','143780075671199','',NULL,NULL,NULL,'2010','11','20'),(4581,'haha lvl 28 na ko ngaun lang nging chunin ','162283337142199','',NULL,NULL,NULL,'2010','11','19'),(4582,'Faster!! 1079 Exp 2!','132838730103263','',NULL,NULL,NULL,'2010','11','15'),(4583,'yak ehem..','132319786822940','',NULL,NULL,NULL,'2010','11','12'),(4584,'srap pala mag paiwan','152590214785992','',NULL,NULL,NULL,'2015','05','13'),(4585,'weak naman','167266356635629','',NULL,NULL,NULL,'2010','11','04'),(4586,'http://www.youtube.com/watch?v=w4s6H4ku6ZY&ob=av3e','120469138012998','',NULL,NULL,NULL,'2010','11','04'),(4587,'lol 1st time Gift niyo ako haha','129591227095532','',NULL,NULL,NULL,'2010','11','04'),(4588,'GIFT BACK','165837516777987','',NULL,NULL,NULL,'2010','10','30'),(4589,'kainis wala nag dala bola !','104818919585308','',NULL,NULL,NULL,'2010','10','20'),(4590,'Gift niyo naman Ako','155216874516234','',NULL,NULL,NULL,'2010','10','19'),(4591,'http://www.speedbit.com/\nDownload it for free!\nDownload files up to 400% faster for your slow old trash computer/laptop!\nTry now!','120446254678125','',NULL,NULL,NULL,'2010','10','11'),(4592,'dpat Kobe Ryan','158943824128632','',NULL,NULL,NULL,'2010','10','10'),(4593,'http://www.youtube.com/watch?v=tQc30kqq1y8','151284858242003','',NULL,NULL,NULL,'2010','10','02'),(4594,'Aanuhin pa ang damo kung ang lupain mo ay cemento.','112492458812094','',NULL,NULL,NULL,'2010','09','28'),(4595,'Laos na SF,CF eto na!!\n','162309450451073','',NULL,NULL,NULL,'2010','09','24'),(4596,'SFF???','144968912205311','',NULL,NULL,NULL,'2010','09','06'),(4597,'nu byn la n notification\ntinatamad na pple','143595162348086','',NULL,NULL,NULL,'2010','08','28'),(4598,'Kawawa nman si Aljohn,iyak kanina aws\nMay sakit, hinawaan ni paco','149297048422150','',NULL,NULL,NULL,'2010','08','25'),(4599,'Ultimate Game Card The wait is finally over. Congrats to Ryan, our grand prize winner! Check here to see if you were one of the dozens of other winners: http://ht.ly/2tErs \n\nWe\'d like to thank all of you for participating and would love to hear your feedback, so that together, we can make our next event can be even better!School\'s Out for Summer Winners \nht.ly\nWere you one of the dozens of winners? Find out here!','141829475854678','',NULL,NULL,NULL,'2010','08','23'),(4600,'http://www.youtube.com/watch?v=pzCdimrNHbI&feature=related\nPanis si diego at aljohn iyak awws','120905097961196','',NULL,NULL,NULL,'2010','08','23'),(4601,'http://www.youtube.com/watch?v=M1uVi41I1oc\nParental Guidance is adviced.','148047695222711','',NULL,NULL,NULL,'2010','08','20'),(4602,'kpagod laru  kami ni jared 3~5pm ng basket bol','151736361507315','',NULL,NULL,NULL,'2010','08','13'),(4603,'http://www.youtube.com/watch?v=KDe6dpTwgPs','138737336163296','',NULL,NULL,NULL,'2010','08','10'),(4604,'http://www.youtube.com/watch?v=dyYWCUUnJU0','132299313480027','',NULL,NULL,NULL,'2010','08','09'),(4605,'http://www.youtube.com/watch?v=eVTXPUF4Oz4&feature=av2e','115970831788957','',NULL,NULL,NULL,'2010','08','06'),(4606,'http://www.youtube.com/watch?v=xwR6TCmuc-U','140835149272035','',NULL,NULL,NULL,'2010','08','03'),(4607,'oi anu ba gagawin sa Fil Page 40-D d ko lam eh tulong nman pple','139837236048595','',NULL,NULL,NULL,'2010','08','02'),(4608,'WaZZup!!!!\n','117794414935543','',NULL,NULL,NULL,'2010','07','27'),(4609,'naka facebook rin ulit \n','133613790007649','',NULL,NULL,NULL,'2010','07','21'),(4610,'Have you every wondered why food becomes POO?','102593283124588','',NULL,NULL,NULL,'2010','06','18'),(4611,'http://www.youtube.com/watch?v=8PTDv_szmL0','118675234841807','',NULL,NULL,NULL,'2010','06','15'),(4612,'bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored  bored bored bored bored bored bored bored bored bored bored bored bored bored bored bored  bored bored bored bored bored bored bored bored bored bored bored bored  bored bored','110573625643272','',NULL,NULL,NULL,'2010','04','13'),(4613,'may bagu na ko ate/pet!!!  tignan niyo pic ko.. nassa gitna siya','115927945085253','',NULL,NULL,NULL,'2010','04','09'),(4614,'http://www.youtube.com/watch?v=d0j4iIm4ik4','109255322442690','',NULL,NULL,NULL,'2010','04','09'),(4615,'http://www.youtube.com/watch?v=VuByLdDoMMM','111441202218873','',NULL,NULL,NULL,'2010','04','09'),(4616,'http://www.youtube.com/watch?v=XNtTEibFvlQ','113173272035315','',NULL,NULL,NULL,'2010','04','08'),(4617,'http://www.youtube.com/watch?v=eDgL23uF1XE','116585598352311','',NULL,NULL,NULL,'2010','04','08'),(4618,'http://www.youtube.com/watch?v=QTml2gGURxM','113041345380946','',NULL,NULL,NULL,'2010','04','08'),(4619,'http://www.youtube.com/watch?v=VDE3lXAY8AM','112431352114097','',NULL,NULL,NULL,'2010','04','08'),(4620,'pots nman.. la mgwa sa bhay -_-\"','105809166117300','',NULL,NULL,NULL,'2010','03','26'),(4621,'good morning...good bye..','108224222529191','',NULL,NULL,NULL,'2010','03','23'),(4622,'Attention:All former Grade 5 Students, if you are reading this, it means that you are a sad \"LOSER\" with no life.Thank You!','106740059350880','',NULL,NULL,NULL,'2010','03','23'),(4623,'wrote the ABC! WOW!! This is fast!','107581385928222','',NULL,NULL,NULL,'2010','03','21'),(4624,'wrote the ABC! WOW!! This is fast!','107581339261560','',NULL,NULL,NULL,'2010','03','21'),(4625,'wrote the ABC! WOW!! This is fast!','107581305928230','',NULL,NULL,NULL,'2010','03','21'),(4626,'wrote the ABC! WOW!! This is fast!','107581219261572','',NULL,NULL,NULL,'2010','03','21'),(4627,'good luck sa mga nag candle and garland sana ma PAHIYA KAU Jk =P','389493726807','',NULL,NULL,NULL,'2010','03','13'),(4628,'http://www.youtube.com/watch?v=mExcw00pVJY&feature=fvw','375644940816','',NULL,NULL,NULL,'2010','03','11'),(4629,'And all the kids on the hood come on wave and shake your hands,Hollywood we never going down.And when your drunk shake that ass like you know how to dance.Hollywood we never going down.Start gettin loud I wanna party now,If you hate an Undead thats a party foul.I only drink Mickeys,I cant afford the cans,I drink to much they call me Charlie 40 hands.','10150121091980347','',NULL,NULL,NULL,'2010','03','05'),(4630,'Damn!','363319659771','',NULL,NULL,NULL,'2010','03','02'),(4631,'http://www.youtube.com/watch?v=0E7evTk56Iw','335637743582','',NULL,NULL,NULL,'2010','03','02'),(4632,'http://5-truth-supot.webs.com/','335047533269','',NULL,NULL,NULL,'2010','03','01'),(4633,'http://www.youtube.com/watch?v=1CI4B06hQfw','322388107459','',NULL,NULL,NULL,'2010','02','21'),(4634,'http://www.youtube.com/watch?v=F1hi1y3lTiQ&feature=related','356385118331','',NULL,NULL,NULL,'2010','02','18'),(4635,'http://www.youtube.com/watch?v=6Jy3awenTtg#movie_player','318387464578','',NULL,NULL,NULL,'2010','02','08'),(4636,'Mag basa n2 tanga','272868484899','',NULL,NULL,NULL,'2010','01','28'),(4637,'http://www.maxgames.com/play/spiderman-city-raid.html','276610576243','',NULL,NULL,NULL,'2010','01','28'),(4638,'Mga utos ng pogi: 1.Tignan niyo ang inyung kamay. 2.Ipalo ito sa inyong muka. 3.Tumawa ng parang sira. 4.Maniwala dito tanga. Thank You!!','273469157530','',NULL,NULL,NULL,'2010','02','10'),(4639,'http://www.youtube.com/watch?v=VY2KkOsEpfI','264300338882','',NULL,NULL,NULL,'2010','01','23'),(4640,'http://www.youtube.com/watch?v=FwMsLWabU-Y','264015939297','',NULL,NULL,NULL,'2010','01','23'),(4641,'http://www.awsurveys.com/HomeMain.cfm?RefID=blazerboy362','266389411611','',NULL,NULL,NULL,'2010','01','22'),(4642,'<a href=\"http://www.AWSurveys.com/HomeMain.cfm?RefID=blazerboy362\"><img src=\"http://www.AWSurveys.com/Pictures/AWS2_ad2_600by100.jpg\" width=\"600\" height=\"100\"></a>','239496669158','',NULL,NULL,NULL,'2010','01','21'),(4643,'http://www.youtube.com/watch?v=psuRGfAaju4&feature=related','269178343424','',NULL,NULL,NULL,'2010','01','19'),(4644,'http://www.AWSurveys.com/HomeMain.cfm?RefID=blazerboy362','264481102591','',NULL,NULL,NULL,'2010','01','19'),(4645,'http://www.youtube.com/watch?v=AXBFun0ijYQ&feature=fvst','260405321309','',NULL,NULL,NULL,'2010','01','19'),(4646,'http://www.youtube.com/watch?v=G3XLph5YZB8','254841515925','',NULL,NULL,NULL,'2009','12','28'),(4647,'http://www.youtube.com/watch?v=_lNYt9XTwZ4','374384930243','',NULL,NULL,NULL,'2009','12','28'),(4648,'http://www.mixpod.com/playlist/36590076','192975271049','',NULL,NULL,NULL,'2009','12','02'),(4649,'Oi pa hingi naman flour\n:PPPP','160749239566','',NULL,NULL,NULL,'2009','11','16'),(4650,'3232','170099364113','',NULL,NULL,NULL,'2009','11','06'),(4651,'BR','165420044161','',NULL,NULL,NULL,'2009','11','01'),(4652,'hehe','188658809306','',NULL,NULL,NULL,'2009','10','24'),(4653,'ganyan tlga mga gwapo hirap patayin =D','162060042487','',NULL,NULL,NULL,'2009','10','24'),(4654,'ARUY YAN MGA BABOY D MAKATAKBO =P Click here to play Pet Society: http://bit.ly/hYndJ','101956743157353','',NULL,NULL,NULL,'2010','03','01'),(4655,'hahaaaaaa','149901521937','',NULL,NULL,NULL,'2009','10','07'),(4656,'lol manyakis ba ako ?','153032500669','',NULL,NULL,NULL,'2015','05','12');
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

-- Dump completed on 2017-04-03 21:39:01
