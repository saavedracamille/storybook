-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: thesis_data_jomari
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_knowledge`
--

LOCK TABLES `direct_knowledge` WRITE;
/*!40000 ALTER TABLE `direct_knowledge` DISABLE KEYS */;
INSERT INTO `direct_knowledge` VALUES (116,'01/23/1998','birthday'),(117,'Jomari','first_name'),(118,NULL,'middle_name'),(119,'Reyes','last_name'),(120,'male','gender'),(121,'Las PiÃ±as','location'),(122,'Las PiÃ±as','hometown');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_bg`
--

LOCK TABLES `educational_bg` WRITE;
/*!40000 ALTER TABLE `educational_bg` DISABLE KEYS */;
INSERT INTO `educational_bg` VALUES (36,'Divine Light Academy Las Pinas','High School',0000,NULL,'112398878786438'),(37,'De La Salle University','College',0000,'Industrial Engineering','127612997282544');
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
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (994,'ORSP National Student Congress 2017: Breakthrough','attending','Teresa Yuchengco Auditorium','Manila','Philippines','294320740971062'),(995,'ValentiMES','unsure','Henry Sy 5th',NULL,NULL,'1329091680481584'),(996,'Fantastic Beasts And Where to Find Them Midnight Screening','unsure','Select SM Cinema, IMAX, and Director\'s Club Cinema Branches Nationwide',NULL,NULL,'317539471948431'),(997,'Regina\'s 18th','attending','Villar SIPAG','Las PiÃ±as','Philippines','1838903439679430'),(998,'Hintayan ng Forever sa Alabang Town Center','unsure','Alabang Town Center','ParaÃ±aque','Philippines','997566310332668'),(999,'Harry Potter and the Cursed Child Release Party','unsure','National Book Store, Glorietta 1',NULL,NULL,'918326688313369'),(1000,'Book Club: The Mythology Class','unsure','Y505',NULL,NULL,'1086177081498000'),(1001,'WOW Now you can see anyone who looks at your profile!','attending',NULL,NULL,NULL,'832424946843554'),(1002,'ice skating','unsure',NULL,NULL,NULL,'1058710344157942');
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
) ENGINE=InnoDB AUTO_INCREMENT=3056 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (2603,'Joey Muha','Musician/Band','166527520074688'),(2604,'Comment','Local Business','109754715723945'),(2605,'Marian Rivera','Public Figure','249952272128670'),(2606,'Mechanical Engineering Society, MES','Company','124047424273129'),(2607,'Quartz','Media/News Company','444654488901592'),(2608,'DLSU Engineering Week 2017: Episode LXXI','Community Organization','394874057514518'),(2609,'Skittlez Crew','Organization','114601885230119'),(2610,'Ramon Bautista','Public Figure','168316123208459'),(2611,'Bruno Mars 2','Artist','1928179204074967'),(2612,'E Novel Advisor Writer\'s Forum','Website','561315263931766'),(2613,'Beerkada Comics','Book','389012254493476'),(2614,'Bohol Viners 2.0','Artist','1337734079585443'),(2615,'Maynilad Study Center','Non-Profit Organization','702226073186429'),(2616,'a girl','Magazine','1517897278540114'),(2617,'DLSU CSO','Organization','245252766116'),(2618,'Operations Research Society of the Philippines - Student Federation','Organization','1647661718847178'),(2619,'The Nook Cafe','Restaurant','1605196639739883'),(2620,'Catholic Doctrine Class at Maynilad Study Center','Education Website','901057803272130'),(2621,'The Smart Filipino','Media/News Company','1164008373660723'),(2622,'Summit Books','Publisher','96282424221'),(2623,'Book Museum cum Ethnology Center','Museum/Art Gallery','186194054873380'),(2624,'We love Harry Potter','Community','219610025132727'),(2625,'UNILAD Gaming','Magazine','659974074026473'),(2626,'HugotSnap.','Local Business','339969129510172'),(2627,'MetroSunnies','Product/Service','650827728284492'),(2628,'Hugot CafÃ© Las PiÃ±as - Times','Restaurant','962618840522077'),(2629,'DLSU ECG','Organization','291637320929022'),(2630,'ScienceDump','Science Website','111815475513565'),(2631,'vonvon','Entertainment Website','364422757097773'),(2632,'Viewers\' Choice Philippines','Movie','556404764485609'),(2633,'Art Capitol','Product/Service','578204008985823'),(2634,'SLIV','Bags/Luggage','1011201398916030'),(2635,'Comedy Central Asia','TV Network','299859073443982'),(2636,'JUN CHIU Illustration','Artist','1375065336133944'),(2637,'Trese','Book','341255042637934'),(2638,'IMAX_SMCinema','Movie Theater','202769206475469'),(2639,'Harry Potter Wands and Collectibles Online Store Philippines','Shopping & Retail','388328294562166'),(2640,'Bookstr','Media/News Company','126075698378'),(2641,'PIIE NSC Academic Support Group','Education','944934992224774'),(2642,'GineersNow','Media/News Company','979451052075778'),(2643,'IMAX','Movie Theater','63677016638'),(2644,'FHM Philippines','Magazine','368188218595'),(2645,'Seafarers and OFW\'s Journey: Be Financially Free','Community','129131850862954'),(2646,'Potter Legacy PH','Merchandising Service','625069977654587'),(2647,'The Voice','TV Show','167555906615100'),(2648,'Work Travel Make A Difference','Travel Company','686279048204394'),(2649,'Ninja Academy - PH','Outdoor, Recreation & Fitness','573484489406645'),(2650,'spot.ph','News/Media Website','95376613038'),(2651,'Rain_ë¹&ì ì§í','Public Figure','1555744014738855'),(2652,'Tredtwo Community Service Program','Education','282396708531188'),(2653,'WuffWich','Food & Beverage Company','306839833029767'),(2654,'Divine Light Academy Alumni Association','Education','1375141592710576'),(2655,'VNN','Media/News Company','120030849154'),(2656,'TableTaft Boardgame CafÃ©','Restaurant','1683005318648904'),(2657,'DLA Alumni Association','Education','490657874305944'),(2658,'Komikon','Product/Service','195614103824519'),(2659,'BuzzFeed Philippines','Media/News Company','336350663190375'),(2660,'SchÃ¼tzen','Office Supplies','109292602427768'),(2661,'Splatt.MNL','Product/Service','179894328690530'),(2662,'The Whispering Owl','Accessories Store','908548772502381'),(2663,'UniQube PH','Retail Company','1068425153172611'),(2664,'Alden T. Oblena','Blogger','1176895229020216'),(2665,'The Perfect White Shirt','Clothing (Brand)','108032574154'),(2666,'The Potter Heritage','Shopping & Retail','431998796834714'),(2667,'Dlsu Usg','Organization','283415475102221'),(2668,'Best Of Manila','Media/News Company','1771348546436217'),(2669,'The Aswang Project','Society/Culture Website','101949063205291'),(2670,'Manila International Book Fair','Website','158015744252118'),(2671,'De La Salle University-Manila Secret Files','Media/News Company','596767770358949'),(2672,'De La Salle University','College & University','127612997282544'),(2673,'Power of Positivity','Home','107787352370'),(2674,'Engineering Problems','Just For Fun','955219094534846'),(2675,'DLSU Writers\' Guild','Organization','1653037504930774'),(2676,'National Book Store','Book Store','72546266913'),(2677,'PokÃ©mon Rocks My World','Community','269843733392524'),(2678,'Engineers of La Salle','Community','1717614991811008'),(2679,'Yexel\'s Toy Museum','Museum/Art Gallery','220182878025289'),(2680,'Yexel Sebastian','Public Figure','1449308358699498'),(2681,'Hogwart\'s School Of Witchcraft & Wizardry','High School','1013514825328915'),(2682,'Youth Engage','Non-Profit Organization','1608209692830173'),(2683,'Thatscoop','Media/News Company','642837059071146'),(2684,'DLSU LEAP','Event','718257501579821'),(2685,'Fully Booked','Book Store','88599481435'),(2686,'Potatocodes','Consulting Agency','1467795470116509'),(2687,'Emilio Jose Andres del Pilar / Philippines (Axis Powers Hetalia OC)','Fictional Character','379095362110871'),(2688,'Archers Network','Local Business','740065782742153'),(2689,'Axe Philippines','Health/Beauty','350337822785'),(2690,'Pepeng Thug Life','Personal Blog','853334778129245'),(2691,'TigaSouth Ka Ba','Community Organization','1435212350108261'),(2692,'PokÃ©mons of Manila','Community','559708350841129'),(2693,'The House of Comedy','Performance Art','1160027324025725'),(2694,'It\'s Aya Seyer','Blogger','1125920020764390'),(2695,'Taft 4 Dead','Media/News Company','324002017689032'),(2696,'Trese','Book Series','294597737222218'),(2697,'University Vision-Mission Week 2016','Community','1714153808806231'),(2698,'Cirque: Engineering Week 2016','Community','1079253202125328'),(2699,'NBA','Sports League','8245623462'),(2700,'Legacy','Community','299310450175055'),(2701,'Our Daily Bread Ministries Philippines, Inc.','Religious Organization','607741642691404'),(2702,'Our Daily Bread','Non-Profit Organization','223392630672'),(2703,'DLSU Crushes','Community','643369445762552'),(2704,'DLSU-Manila Secret Files','Community','576825992449694'),(2705,'Ankle Upgrade','Clothing (Brand)','1733537683542816'),(2706,'Rey Mysterio','Non-Profit Organization','708996479235630'),(2707,'70th ENG','Company','1647370928858454'),(2708,'Planting Seeds of Relevance','Community','541770525966628'),(2709,'Your A-micable Virtual Professional at Your SERVICE','Consulting Agency','473334659517564'),(2710,'blankong limbagan','Community','929446733809082'),(2711,'Harry Potter','Movie','156794164312'),(2712,'New Moon','Movie','123550087751787'),(2713,'IMES','Organization','1489018524747003'),(2714,'GAS LOST EVENT','Organization','384620238415454'),(2715,'Superman','Public Figure','6281148998'),(2716,'The Phantom of the Opera','Performance Art Theatre','53351527050'),(2717,'Be Health Wise','Health/Wellness Website','1399885620314693'),(2718,'Youth on Road','Community','501535460005782'),(2719,'League of Legends FTW','Fictional Character','552064604913458'),(2720,'James Reid','Artist','1469948366590932'),(2721,'Diary of a Wimpy Kid','Book Series','460918790675739'),(2722,'Chica','Community','806475896071669'),(2723,'Pou Costumes','Pet','301214576732689'),(2724,'McDonald\'s','Fast Food Restaurant','121863347862934'),(2725,'League of Legends Pre- Release','News/Media Website','597180797003121'),(2726,'Aseagas Corporation','Biotechnology Company','907404689287434'),(2727,'Modernong PEPE','Public Figure','675442735880080'),(2728,'Cathy Valencia Advanced Skin Clinic','Local Business','441003529302434'),(2729,'Percabeth','Fictional Character','706284836094721'),(2730,'Yah, I\'m a demigod. Gotta problem ?','Fictional Character','230808606978233'),(2731,'Smosh Games','Public Figure','289103811197001'),(2732,'League of Legends','Video Game','82061850555'),(2733,'Doritos','Food & Beverage Company','726315847385449'),(2734,'Alex Goot','Musician/Band','15054318061'),(2735,'Fireflies (Owl City song)','Song','108051095883101'),(2736,'Charice','Public Figure','564489820300665'),(2737,'PewDiePie','Public Figure','193844937315070'),(2738,'Barney Stinson','Fictional Character','68816265924'),(2739,'Zimbio','News/Media Website','91841853028'),(2740,'ViralNova','Other','157958141046266'),(2741,'I Solemnly Swear That I Am Up To No Good','Book Series','425248584271690'),(2742,'Anonymous Dumaguete','Community','713548801990644'),(2743,'Anonymous Philippine Supporters','Computers/Internet Website','543514592406230'),(2744,'Just For Vines','Just For Fun','493264160758150'),(2745,'Harvey Tragico','Public Figure','300961690016443'),(2746,'Legions Code','Public Figure','277480982389019'),(2747,'Goddelle April Butalid','Public Figure','228562510661275'),(2748,'Negros Oriental High School','High School','156715557847378'),(2749,'Ako cute ikaw pangit','Community','108644825906927'),(2750,'NOHS Confessions','Community','287282124744752'),(2751,'Sword Art Online','TV Show','438372792865374'),(2752,'Crossfire Philippines','Games/Toys','107230795049'),(2753,'Ryan Higa','Public Figure','274524094746'),(2754,'Marvel: Avengers Alliance Season 2','Community','527046744028348'),(2755,'DLA Dance Community','Organization','246177282200802'),(2756,'The Heroes of Olympus Series','Book','117624291590933'),(2757,'The Mark of Athena','Book','294517293907523'),(2758,'Marvel: Avengers Alliance Freebies','Community','506169366097577'),(2759,'Adventure Time','TV Show','321031023382'),(2760,'I Love PewDiePie','Community','437601586284682'),(2761,'M&M\'s U.S.A.','Food & Beverage Company','30634981956'),(2762,'SM Mall of Asia Official','Shopping & Retail','126585560768227'),(2763,'Transformers','Movie','108064815881447'),(2764,'Phantom of the Opera (2004 film)','Movie','105966529443254'),(2765,'iTunes','Product/Service','100484820802'),(2766,'Manga Fox','Entertainment Website','105903162796521'),(2767,'Smosh','Public Figure','72947896764'),(2768,'Maroon 5','Musician/Band','5330548481'),(2769,'Avengers','Fictional Character','126757470715601'),(2770,'Pinoy Anime Fanatic Community','Community','125453777485976'),(2771,'Happy Wheels','Games/Toys','149887765064197'),(2772,'Ivan Dorschner','Artist','290896587704183'),(2773,'Hunger Games Page','Book Series','140504009302351'),(2774,'Spider-Man','Movie','101198429956076'),(2775,'Disaster Movie','Movie','23306294666'),(2776,'Cartoon Network','Company','84917688371'),(2777,'The Fairly OddParents','TV Show','162387970438104'),(2778,'Phineas and Ferb','TV Show','103817652989914'),(2779,'Finn The-Human','Fictional Character','173950129339530'),(2780,'Sleeq Crew','Organization','359372377477323'),(2781,'J.K. Rowling','Author','277489075693049'),(2782,'Sir Michael HELE/TLE Class','Education','154873234652999'),(2783,'Outbreak Manila','Outdoor, Recreation & Fitness','150421941734231'),(2784,'God','Fictional Character','140737019293770'),(2785,'Family Guy','TV Show','24609282673'),(2786,'Listening to music','Concert Tour','132306990157912'),(2787,'SPLASH ISLAND','Outdoor, Recreation & Fitness','112719145644'),(2788,'Koaleske Clothing Line','Product/Service','300956523321250'),(2789,'Micheal Jordan','Public Figure','108052715896185'),(2790,'Chocolate','Interest','113472061996206'),(2791,'Percy Jackson and the Olympians','Book Series','110725275615040'),(2792,'Troll Emoticons','Community','103178049784956'),(2793,'Troll Emoticons','Computers/Internet Website','204280876297392'),(2794,'Hunger Games','Book','114531238562971'),(2795,'The Hunger Games','Movie','159746560708670'),(2796,'Taking Care of Your Heart','Community','370862862927818'),(2797,'GoD OF WaR','Community','51800648975'),(2798,'Adele','Musician/Band','9770929278'),(2799,'Ninja Saga','App Page','315390295169855'),(2800,'J. K. Rowling','Teacher','112585118757481'),(2801,'Backyard Monsters','App Page','304561816235995'),(2802,'YoWorld','App Page','301414489891800'),(2803,'Photography','Workplace & Office','108170975877442'),(2804,'Toy Story','Movie','10498014129'),(2805,'Wild Ones','App Page','294968260535143'),(2806,'The Phantom of the Opera','Movie','205598742848129'),(2807,'Camp Half-Blood','School','172578142795067'),(2808,'AgentSentral','Community Organization','152850258123084'),(2809,'The Kane Chronicles','Book','252847373908'),(2810,'Percy Jackson','Book','120471101332984'),(2811,'Andy Samberg','Public Figure','108240575863415'),(2812,'Manga','Book Genre','103091413063976'),(2813,'Fun','Interest','101898273185773'),(2814,'Coolbuddy Games','Games/Toys','177306910591'),(2815,'Shamcey Supsup','Public Figure','171914266193657'),(2816,'Disney Channel','TV Network','263870783641395'),(2817,'Paintball World Cup Asia','Sports League','118485447926'),(2818,'maNga','Musician/Band','50741735729'),(2819,'Hogwarts School of Witchcraft and Wizardry','College & University','160918770601337'),(2820,'Stick Run','Games/Toys','221375297878489'),(2821,'Harry Potter Kept Alive','Website','219536138089935'),(2822,'Trolls','Public Figure','250122758335228'),(2823,'Transformers2','Movie','114603381889513'),(2824,'Perpect by Simple Plan','Music','104677459572331'),(2825,'Freedom Falcons 2011-2012','Education','197039173677082'),(2826,'Playhaven Zombie Lane','App Page','201783849848131'),(2827,'K-Zone Philippines','Magazine','109937624164'),(2828,'Dirk Nowitzki','Athlete','119017024793036'),(2829,'Taylor Lautner','Movie Theater','129280043816404'),(2830,'Star Wars','Other','288958367907207'),(2831,'Ps2','Games/Toys','188193491195121'),(2832,'Marvel','Product/Service','128965523837324'),(2833,'Captain America','Fictional Character','122352024462380'),(2834,'Thor','Fictional Character','113589202010624'),(2835,'Jurassic World','Movie','170889472955944'),(2836,'MTV','News/Media Website','7245371700'),(2837,'Kathryn Bernardo','Artist','119084744796173'),(2838,'Barack Obama','Politician','6815841748'),(2839,'Cristine Reyes','Public Figure','122010853049'),(2840,'Cosplay Network Philippines','Organization','121123537931473'),(2841,'Laughing','Interest','137069046317139'),(2842,'Monopoly','Games/Toys','11384491516'),(2843,'WWE','Sports League','7175346442'),(2844,'My Chemical Romance','Musician/Band','9297927892'),(2845,'Monsters, Inc.','Movie','11215611028'),(2846,'JanSport','Bags/Luggage','8314408429'),(2847,'Alicia Keys','Musician/Band','6558867050'),(2848,'Boys Like Girls','Musician/Band','5136344181'),(2849,'CÃ©line Dion','Musician/Band','6624036650'),(2850,'Avatar','Movie','82771544063'),(2851,'ABS-CBN','TV Network','196309417055528'),(2852,'Usher','Musician/Band','6564142497'),(2853,'F4','Musician/Band','32937891960'),(2854,'The Sims','Games/Toys','7427438063'),(2855,'Eating','Interest','105819692786271'),(2856,'Francis M','Musician/Band','134496255390'),(2857,'Mustachios','Public Figure','122050174535446'),(2858,'ZOOM','Public Figure','192913090732244'),(2859,'Grapefruit','Public Figure','130257267031411'),(2860,'Dallas Mavericks','Sports Team','16555485460'),(2861,'DOMO KUN','Public Figure','32607640613'),(2862,'Despicable Me','Movie','111802472165289'),(2863,'Alodia Gosiengfiao','Artist','152138396746'),(2864,'National Geographic','Media/News Company','23497828950'),(2865,'Pear','Public Figure','138330859556167'),(2866,'Simple Plan','Musician/Band','6085906515'),(2867,'Transformers','Science, Technology & Engineering','180774635291325'),(2868,'Divine Light Academy','Private School','110720048952857'),(2869,'Xbox','Product/Service','16547831022'),(2870,'Video Games','Just For Fun','115625065118585'),(2871,'Drawing','Field of Study','112608815418540'),(2872,'DeviantArt','Media/News Company','6452638289'),(2873,'Miku Hatsune','Musical Instrument','17111156915'),(2874,'Discovery','TV Network','6002238585'),(2875,'Logan Lerman','Public Figure','172192712664'),(2876,'Japanese Vocaloid Music Maker','Community','171589289551777'),(2877,'May NAGTEXT! - Vice Ganda','Community','373315475654'),(2878,'Gilbert \'Gibo\' Teodoro, Jr.','Public Figure','103173344186'),(2879,'Reading Books','Interest','350065477608'),(2880,'Chuvachuchu','Public Figure','109717049076199'),(2881,'Chess','Games/Toys','103154896390858'),(2882,'Thea Stilton','Book Series','108113779221898'),(2883,'Showtime (ABS CBN)','TV Show','173116234940'),(2884,'Mahal ko siya pero hindi ko masabi :(','Local Business','124261417601918'),(2885,'I use \"ANO\" to substitute any word (ex. Yung ano kasi, alam mo na yung ano)','Community','343585437196'),(2886,'The Disloyal Subjects of the Mad Hatter','Public Figure','102270346654'),(2887,'Otakuzine Anime Magazine','Local Business','104778351847'),(2888,'Shugo Chara!','TV Show','31859992496'),(2889,'Maid-sama! [Kaichou wa Maid-sama]','Public Figure','102640559778245'),(2890,'Mad Science-Philippines','Education','103807163021335'),(2891,'C.C.C (Cosplay Critic Center)','Community','266778113654'),(2892,'Anong Page Ng Page Na Page Ng page Na Page Mo At Yung Page Mo PageKu Rin!!!','Community','291385904508'),(2893,'Ferrero Rocher','Food & Beverage Company','202986543445543'),(2894,'Steve Nash','Athlete','77922840249'),(2895,'Avril Lavigne','Musician/Band','5413509299'),(2896,'7-Eleven Philippines','Retail Company','62739603227'),(2897,'Skittles','Food & Beverage Company','7914733474'),(2898,'Rin Kagamine','Community','163465130364735'),(2899,'Kagamine Len','Musician/Band','54225738633'),(2900,'Hatsune Miku','Musician/Band','10150149727825637'),(2901,'Cars','Movie','31159065182'),(2902,'Movies','Interest','106057162768533'),(2903,'K Zone','Book','104548196243067'),(2904,'AY HINDEEEE!','Public Figure','303526536844'),(2905,'Kingdom Hearts','Video Game','76090440840'),(2906,'Star Wars trilogy','Movie','110866415603842'),(2907,'FRED HATERS!!!','Community','112546776115'),(2908,'Mama Mary','Public Figure','90520432292'),(2909,'Mariel Rodriguez Padilla','Artist','60631855849'),(2910,'Mar Roxas','Public Figure','32626764352'),(2911,'iCarly','Other','53523601754'),(2912,'Jonas Brothers','Musician/Band','5836432901'),(2913,'Spending Time With Friends','Interest','10150132850155434'),(2914,'Miranda Cosgrove','Musician/Band','9934379006'),(2915,'BeyoncÃ©','Musician/Band','28940545600'),(2916,'Eminem','Musician/Band','45309870078'),(2917,'PlayStation','Product/Service','14104316802'),(2918,'Starbucks','Food & Beverage Company','22092443056'),(2919,'Picnik','Product/Service','5870137990'),(2920,'Hanazakarino Kimitachihe','TV Show','103095103064176'),(2921,'Mariah Carey','Musician/Band','6162457765'),(2922,'MELASON','Public Figure','188378886452'),(2923,'Reborn (The Arcobaleno)','Public Figure','131281810216327'),(2924,'Adam Sandler','Artist','9098498615'),(2925,'Vongola Family','Community','164991623530492'),(2926,'Manny Villar','Public Figure','52563164846'),(2927,'Vice Ganda','Artist','56771207447'),(2928,'Vin Diesel','Other','89562268312'),(2929,'Our Mother of Perpetual Help','Religious Organization','38122663867'),(2930,'Ashley Tisdale','Artist','6845141683'),(2931,'Kim Chiu','Artist','74361779753'),(2932,'Twilight Saga','Book Series','114654718547333'),(2933,'Plants vs. Zombies','Video Game','57571168213'),(2934,'Erich Gonzales','Public Figure','145035156843'),(2935,'Enchong Dee','Public Figure','161483084257'),(2936,'New Moon (2009 film)','Movie','106480922723118'),(2937,'Kobe Bryant','Athlete','69025400418'),(2938,'Katy Perry','Musician/Band','7126051465'),(2939,'Pinoy Big Brother Double Up!','Local Business','125879299323'),(2940,'ASAP XV (OFFICIAL FAN PAGE)','TV Show','124825087543049'),(2941,'Angel Locsin','Home','122338327152'),(2942,'Jovit Baldivino','Musician/Band','335652897166'),(2943,'The Twilight Saga','Movie','8526405673'),(2944,'Nick Jonas','Musician/Band','173093076641'),(2945,'Twilight','Book Series','107825249240945'),(2946,'Megan Fox','College & University','26748225422'),(2947,'Pringles','Food & Beverage Company','1418645685056683'),(2948,'Cookie Dough','Food','53365754271'),(2949,'Pizza','Food','105567999476390'),(2950,'Linkin Park','Musician/Band','8210451787'),(2951,'Music','Music','112936425387489'),(2952,'Sleeping','Interest','102168219824412'),(2953,'Will Smith','Artist','92304305160'),(2954,'I Love Music!','Community','62584727474'),(2955,'Staying Up Late','Community','41734912516'),(2956,'Coca-Cola','Workplace & Office','40796308305'),(2957,'Batman: The Dark Knight','Movie','12887942787'),(2958,'Taylor Swift','Musician/Band','19614945368'),(2959,'Iron Man','Fictional Character','7057882289'),(2960,'Biking','Interest','106052116101781'),(2961,'LA Lakers','Sports Team','144917055340'),(2962,'Definitely Filipino','News/Media Website','106259116938'),(2963,'David Archuleta','Musician/Band','15381227659'),(2964,'Lacoste','Company','1691107967789681'),(2965,'Google Chrome','Software','321662419491'),(2966,'Glee','TV Show','55482772043'),(2967,'Diary of a Wimpy Kid','Book','105579489475013'),(2968,'Geronimo Stilton','Book Series','104096352960927'),(2969,'CONVERSE','Clothing (Brand)','23402039579'),(2970,'The Lost World: Jurassic Park (console game)','Video Game','107872149234206'),(2971,'\"Aanhin mo pa ang PAGREREVIEW, kung may KATABI naman\"','Community','110534365651725'),(2972,'LeBron James','Athlete','64637653943'),(2973,'John Cena','Athlete','9899376497'),(2974,'Las PiÃ±as','City','107940845907034'),(2975,'Avatar: The Last Air Bender Movie','Movie','390005202512'),(2976,'avatar : the last air bender','Community','12716152431'),(2977,'æé¾ Jackie Chan','Artist','30382852317'),(2978,'The Spy Next Door','Movie','90735185974'),(2979,'Captain Jack Sparrow','Movie Character','56368119740'),(2980,'Tsunayoshi Sawada','Fictional Character','115798538433392'),(2981,'Tekken 6','Local Business','175539496434'),(2982,'100% Music Lover','Public Figure','122074787826312'),(2983,'ALL TIME FAVORITE NG MGA TAGA DLA ANG MCDO!','Product/Service','113016798723536'),(2984,'PBB TEEN CLASH of 2010','TV Show','105524269487142'),(2985,'Jesse McCartney','Public Figure','19669729688'),(2986,'Archie Comics','Book','103849689649384'),(2987,'Nike','Product/Service','15087023444'),(2988,'Michael Jackson\'s This Is It','Movie','161290494111'),(2989,'Ultimate Spider-Man','Book','108273532538134'),(2990,'Tekken - No Limits','Games/Toys','80744115025'),(2991,'Uni','Fictional Character','66111059089'),(2992,'Facebook Security','Other','31987371885'),(2993,'Prince of Tennis','TV Show','81801940453'),(2994,'I Love Jesus, by iLoveJesusonline.com','News/Media Website','92047888071'),(2995,'Krispy Kreme Doughnuts','Food & Beverage Company','130424181000'),(2996,'Michael Jackson','Musician/Band','19691681472'),(2997,'Hibari Kyoya (Katekyo Hitman Reborn)','Public Figure','55220793659'),(2998,'Nike Basketball','Product/Service','5941596308'),(2999,'NE-YO','Musician/Band','14866607011'),(3000,'The All-American Rejects','Musician/Band','27422071944'),(3001,'Anime','Arts & Entertainment','112421635436437'),(3002,'Sean Kingston','Musician/Band','5128508749'),(3003,'Cosmo','Artist','26943382046'),(3004,'Vanessa Hudgens','Artist','5803783606'),(3005,'Noynoy Aquino (P-Noy)','Politician','141976959168393'),(3006,'Bionicle Adventures','Book Series','133536020020336'),(3007,'Bionicle','Interest','112285088788113'),(3008,'Hero Factory','Art','132877636756160'),(3009,'Ang init, TARA SWIMMING.','Local/Travel Website','357516596593'),(3010,'Jabbawockeez','Public Figure','8575300901'),(3011,'Peaberry Cafe','Restaurant','143369090689'),(3012,'SpongeBob SquarePants','TV Show','42798291365'),(3013,'Unofficial: Toni Gonzaga','Artist','60698162413'),(3014,'Marshmallow','Public Figure','164091736952718'),(3015,'Midget Apple','Website','140162552697543'),(3016,'Selena Gomez','Artist','7961985974'),(3017,'Paramore','Musician/Band','5388374962'),(3018,'Harry Potter','Book Series','107641979264998'),(3019,'Oreo','Food & Beverage Company','114998944652'),(3020,'Miley Cyrus','Musician/Band','5845317146'),(3021,'Facebook','Product/Service','20531316728'),(3022,'LEFT 4 DEAD - THE MOVIE','Movie','183947398465'),(3023,'Avatar: The Last Airbender','TV Show','104956949616'),(3024,'Divine Light Academy las pinas','College & University','319082955733'),(3025,'Lady Gaga','Musician/Band','10376464573'),(3026,'TV5','TV Network','38395351800'),(3027,'YouTube','Product/Service','7270241753'),(3028,'Patrick Star','Fictional Character','50403195950'),(3029,'Michael Angelo Lobrin','Community','130701613616808'),(3030,'ANTI-Jejejmon!','Community','115633321798780'),(3031,'Spider-Man: Shattered Dimensions','Games/Toys','130945206945027'),(3032,'Sino maglike CUTE','Local Business','152254948141644'),(3033,'F6 Ng Fortitude Hawks 2010-2011','Public Figure','153659791326325'),(3034,'Demi Lovato','Musician/Band','9208539755'),(3035,'Justin Bieber','Musician/Band','67253243887'),(3036,'Spider-Man 3','Movie','112856332061626'),(3037,'The Last Airbender','Movie','106059130632'),(3038,'Wag Ka Muna Umalis,Gusto Ko Sabay Tau.','Local Business','132818503397645'),(3039,'Reg Pagunsan','Sports Team','127277537299359'),(3040,'ICE CREAM. :\">','Local Business','124770757550270'),(3041,'Fred','Comedian','40071240909'),(3042,'The Annoying Orange','Food Truck','209118161295'),(3043,'Bakit Si Dora Tao,Pero Yung Mga Kaibigan Niya Hayop,Pintuan,Plato at IBP.?!','Community','484169465494'),(3044,'ANG SARAP MAG KNOCK KNOCK JOKES!!!','Community','267132769979'),(3045,'SY 2009-2010, You have been a great school year! We will never forget you!!','Community','355391533705'),(3046,'Ben 10','TV Show','105310924507'),(3047,'Bionicle: The Legend Reborn','Movie','103144409726500'),(3048,'Harry Potter series','Book Series','111155405573220'),(3049,'Brighter Than Sunshine','Song','103101016397573'),(3050,'21 Guns','Song','107483149274122'),(3051,'Playing Psp Games','Interest','376012084429'),(3052,'Surfing the Internet','Interest','263335229945'),(3053,'Playing Ps 2 at Home','Interest','375796362299'),(3054,'Bionicle (film)','Movie','106302332741950'),(3055,'DISSIDIA FINAL FANTASY','Games/Toys','99147887307');
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
) ENGINE=InnoDB AUTO_INCREMENT=5428 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_be_processed`
--

LOCK TABLES `to_be_processed` WRITE;
/*!40000 ALTER TABLE `to_be_processed` DISABLE KEYS */;
INSERT INTO `to_be_processed` VALUES (5093,'-_-','1448152601885869','',NULL,NULL,NULL,'2017','03','02'),(5094,'I prefer Joan Marie but whatever...','1442215049146291','',NULL,NULL,NULL,'2017','02','24'),(5095,'^_^','1438666412834488','',NULL,NULL,NULL,'2017','02','21'),(5096,'Pag-ibig o pangarap?','1436369866397476','',NULL,NULL,NULL,'2017','02','19'),(5097,'02.19.17','1436166353084494','Justine Reyes and Justo Reyes',NULL,NULL,NULL,'2017','02','19'),(5098,'BIGGER. BETTER.\n\nFor this term\'s General Assembly, we hit 140+ participants! ð Big thanks to everyone who came! We hope more can join us next term! See you soon! â¤','1434934339874362','',NULL,NULL,NULL,'2017','02','18'),(5099,'02.16.17','1441838979183898','',NULL,NULL,NULL,'2017','02','16'),(5100,'Grace under pressure...','1429792793721850','',NULL,NULL,NULL,'2017','02','14'),(5101,'Self Reliance: 81%','1420602201307576','',NULL,NULL,NULL,'2017','02','05'),(5102,'Lucky 7 :)','1407844345916695','',NULL,NULL,NULL,'2017','01','25'),(5103,'Mamma Mia!','1388745434493253','',NULL,NULL,NULL,'2017','01','07'),(5104,'\"Beer? Shots?\" \n\nNah...','1355418277825969','',NULL,NULL,NULL,'2016','12','09'),(5105,'#yearinreview2016','1350571928310604','',NULL,NULL,NULL,'2016','12','05'),(5106,'WTF','1344647868903010','',NULL,NULL,NULL,'2016','12','02'),(5107,'Where did we first meet? \nCopy this on your wall and lets see who remembers.','1340838925950571','',NULL,NULL,NULL,'2016','11','29'),(5108,'11.10.16','1323204507714013','Kyle Cheng and Jordan See','De La Salle University','Manila','Philippines','2016','11','11'),(5109,'Everything is not what it seems.\n\n@sm_cinema \n#DoctorStrangeAtSMCinema #SMMallofAsia #DoctorStrangePH #OpenYourMind','1308238885877242','','SM Mall of Asia (MOA), Pasay City, Metro Manila, Philippines','Pasay City','Philippines','2016','10','27'),(5110,'Whenever I hear the question \"Kamusta ka na sa engineering?\"','1302594986441632','',NULL,NULL,NULL,'2016','10','22'),(5111,'Are you feeling stressed about the transition from highschool to college?\nFeeling the need to relax and socialize with your fellow IE\'s?\nFret not because you can be part of something bigger as IMES welcomes you to YOUR IE family in a night filled with fun activities, new friends, and FREE FOOD!\nSo what are you waiting for? Make the most out of your college experience by attending this year\'s IMES FROSH WELCOMING.\nBefore the FROSH WELCOMING, make sure to go to the FROSH CONVOCATION on Friday, Oct. 21, 2016 from 1pm to 5 pm, 18th Br. Andrew Gonzales Hall, because this is where you will meet your respective academic advisers and you also will be oriented on how to cope with your new engineering life by an IE graduate and the different IE profs.\nAng sarap maging IE!\nStephen Trinidad: 09174002036 for more information\nPoster by Alvin Gamboa','1300611933306604','',NULL,NULL,NULL,'2016','10','19'),(5112,'Thank you for helping me when I was a JO... \n:)','1299329286768202','Keith Co Lim',NULL,NULL,NULL,'2016','10','18'),(5113,'Do you want to be part of the IMES executive committee and get the chance to hone your leadership skills?\nWell now is your time!!\nBe a Junior Officer to serve your fellow IE\'s at the same time make new memories!\nApplication is from October 10 to October 23, 2016\nVisit http://tinyurl.com/imesjorecruitment or text Julia Guintu: 09176393902 for more information\nDon\'t miss the chance!\nPoster by Isaiah Pinto','1291197530914711','',NULL,NULL,NULL,'2016','10','10'),(5114,'ððð','1291195200914944','Margaux Velasquez',NULL,NULL,NULL,'2016','10','11'),(5115,'There\'s always a better way with IMES! Catch us in Velasco Bench 6, from 9am to 5pm on Sept. 26-30! Be part of the family and maximize your college experience with your fellow IEs!','1277628008938330','',NULL,NULL,NULL,'2016','09','25'),(5116,'There\'s always a better way with IMES! Catch us in Velasco Bench 6, from 9am to 5pm on Sept. 26-30! Be part of the family and maximize your college experience with your fellow IEs!','1277627332271731','',NULL,NULL,NULL,'2016','09','25'),(5117,':)','1258049804229484','Eduardo Gargarita',NULL,NULL,NULL,'2016','09','03'),(5118,'Returning to the Summoner\'s Rift... #leagueoflegends #wukong','1252327874801677','',NULL,NULL,NULL,'2016','08','29'),(5119,'Day 2','1252453138122484','',NULL,NULL,NULL,'2016','08','27'),(5120,'Talagang nakatadhana ako na maging isang Lasallian...','1240857069282091','',NULL,NULL,NULL,'2016','08','15'),(5121,'This is why I don\'t do \"HappyT\"...','1240731445961320','',NULL,NULL,NULL,'2016','08','15'),(5122,'YES tama yung age','1238515952849536','',NULL,NULL,NULL,'2016','08','12'),(5123,'Now you know...','1223185534382578','',NULL,NULL,NULL,'2016','07','24'),(5124,'Last day','1223181287716336','Mark Lanz Llido, Curtis Garcia, Gwynette Sy and Jordan See',NULL,NULL,NULL,'2016','07','22'),(5125,'Kaya pala...','1219881518046313','',NULL,NULL,NULL,'2016','07','19'),(5126,'Want to show your IE and school pride?\n\nFOR DLSU STUDENTS,\nCome and visit us from July 11- 14, 2016, from 9AM to 5PM, at the Velasco Walk Bench 6 to pre-order.\n\nFOR OUTSIDE DLSU ORDERS:\nPlease fill up this form: http://tinyurl.com/IEMerch2016\nPrices:\nP220- Animo Shirt\nP250- Industrial Engineering White\nP250- Industrial Engineering Black\n\nDiscounts apply for bundles of 5 shirts and up!\n\nSo what are you waiting for? Grab your shirts now.\nFor any other inquiries, please contact:\nAdrianne Tiu -0923 921 9129 / Jason Pagsisihan - 0917 857 0679\nBrought to you by the Industrial Management Engineering Society!','1213455148688950','',NULL,NULL,NULL,'2016','07','10'),(5127,'4th Day of Community Service','1207884015912730','',NULL,NULL,NULL,'2016','07','02'),(5128,'3rd Day of Community Service','1207033925997739','',NULL,NULL,NULL,'2016','06','25'),(5129,'Remembering the past and making the future...','1198779416823190','','Intramuros','Intramuros','Philippines','2016','06','14'),(5130,'1st day of Community Service','1198816946819437','EJ Baillo, Pat Ang, Matthew De Dios, Mark Lanz Llido, Donalie Yap, Celine Solis, Cali Delos Reyes, Shaleen Dy, Genesis Salmete, Ma Victoria Valderrama, Charles Chua, Gwynette Sy, Alexandra Medina, Martina Casa, Jordan See, Ken Chan, Diego Pantaleon and Nicole Uy',NULL,NULL,NULL,'2016','06','10'),(5131,'Kung ang balat ko ay moreno kaysa chinito...','1172979786069820','EJ Baillo',NULL,NULL,NULL,'2016','05','13'),(5132,'Hmmm...','1162722297095569','',NULL,NULL,NULL,'2016','04','27'),(5133,'Amazing... :)','1162719950429137','',NULL,NULL,NULL,'2016','04','27'),(5134,'Sana meron ito sa Civil War...','1161902900510842','',NULL,NULL,NULL,'2016','04','26'),(5135,'EJ Naomi Charles Samuel','1161771560523976','',NULL,NULL,NULL,'2016','04','26'),(5136,'Dahil malapit na matapos finals ko\nComment a number between 1-30 and check your inbox. Rule 1: What happens there, stays there. I\'ll keep it as a secret ðGame?','1153834491317683','',NULL,NULL,NULL,'2016','04','14'),(5137,'Good Friday, Black Saturday, Easter Sunday','1140885092612623','',NULL,NULL,NULL,'2016','03','28'),(5138,'Good Friday, Black Saturday, Easter Sunday','1140880699279729','Ana Lyn Mercader Oblena and Gracy Carmela Gocon',NULL,NULL,NULL,'2016','03','28'),(5139,'Do you want to be the very best like no one ever was?','1140868139280985','Samuel Chen and Phoebe Mae Ching',NULL,NULL,NULL,'2016','03','17'),(5140,'STRIKE','1125283487506117','',NULL,NULL,NULL,'2016','03','09'),(5141,'Best birthday ever!','1097644530270013','',NULL,NULL,NULL,'2016','01','25'),(5142,'Best birthday ever!','1097639396937193','Cali Delos Reyes',NULL,NULL,NULL,'2016','01','25'),(5143,'Palaro 2016','1097002133667586','','Divine Light Academy Las Pinas','Manila','Philippines','2016','01','22'),(5144,'Wooo try!\n\nSince 2015 is over in a few hours, so here\'s a game. BE HONEST.\n-If you hate me, delete me from your Friends List and let me know.\n-If you think I\'m nice, like my status. \n-If you consider me a good friend, then comment anything.\n-If you ever had a crush on me, poke me (no one will know)\n-If you love (or if you ever did), send a heart on my inbox keeping it a secret.\n-If you\'re brave, set this up as a status.','1084543068246826','',NULL,NULL,NULL,'2015','12','31'),(5145,'Merry Christmas to everyone! \n#animolasalle #xmas','1080452451989221','',NULL,NULL,NULL,'2015','12','26'),(5146,'Best gift I ever had... \n#lego #bionicle2015','1080278598673273','',NULL,NULL,NULL,'2015','12','25'),(5147,'The broforce awakens.\n#starwars','1079930402041426','',NULL,NULL,NULL,'2015','12','24'),(5148,'Sponsored by Jollibee','1079885442045922','',NULL,NULL,NULL,'2015','12','24'),(5149,'The Force Awakens...','1079872858713847','',NULL,NULL,NULL,'2015','12','21'),(5150,'The Force Awakens...','1079872228713910','',NULL,NULL,NULL,'2015','12','15'),(5151,'Tinder, you had one job...','1071720396195760','',NULL,NULL,NULL,'2015','12','09'),(5152,'Sweet  holiday treats from #krispykreme ...','1071280419573091','',NULL,NULL,NULL,'2015','12','08'),(5153,'\"May the Force be with you.\"\n*Animo style #starwars #animolasalle','1069351973099269','',NULL,NULL,NULL,'2015','12','04'),(5154,'New haircut from Bench Fix...','1060026707365129','',NULL,NULL,NULL,'2015','11','14'),(5155,'Last day...','1059664740734659','Kang PeÃ±as and Camille Tan',NULL,NULL,NULL,'2015','11','13'),(5156,'Watching UP vs DLSU\n#greenarchers #animolasalle','1058606654173801','','De La Salle University','Manila','Philippines','2015','11','11'),(5157,'Last day of ChemLab...\n#EDwow','1055873797780420','',NULL,NULL,NULL,'2015','11','05'),(5158,'IGNITE possibilities. BREAK boundaries. EXPLORE opportunities.','1055437597824040','',NULL,NULL,NULL,'2015','10','24'),(5159,'IGNITE possibilities. BREAK boundaries. EXPLORE opportunities.','1055421397825660','',NULL,NULL,NULL,'2015','10','24'),(5160,'A new family...\n#IEPride #AngSarapMagingIE\n#IMES39','1048149728552827','Camille Tan','De La Salle University','Manila','Philippines','2015','10','19'),(5161,'Thunder Mac n Cheese','1047870495247417','','Zark\'s Burgers','Manila','Philippines','2015','10','18'),(5162,'Battle of the Blocks','1048130281888105','',NULL,NULL,NULL,'2015','10','15'),(5163,'Battle of the Blocks','1048145588553241','',NULL,NULL,NULL,'2015','10','15'),(5164,'Bagong branch...','1035299766504490','',NULL,NULL,NULL,'2015','09','20'),(5165,'Up all night...','1034388109928989','',NULL,NULL,NULL,'2015','09','18'),(5166,'First win of the season\n#animolasalle #greenarchers','1027393140628486','',NULL,NULL,NULL,'2015','09','06'),(5167,'Really?','1027101873990946','',NULL,NULL,NULL,'2015','09','05'),(5168,'\"Tonight, we UNITE...\"','1027001507334316','EJ Baillo and Rojeene Bondoc',NULL,NULL,NULL,'2015','09','04'),(5169,'\"Tonight, we UNITE...\"','1026996300668170','Pat Ang, David Zinampan, Lorenzo Dyogi and James Bugayong',NULL,NULL,NULL,'2015','09','04'),(5170,'Heroes...','1022867421081058','','DLSU- Henry Sy Hall','Manila','Philippines','2015','08','28'),(5171,'Our ulam for tonight...','1019911148043352','',NULL,NULL,NULL,'2015','08','22'),(5172,'Rampage 2K15 freebies...','1019837968050670','',NULL,NULL,NULL,'2015','08','25'),(5173,'League of Legends','1019871198047347','',NULL,NULL,NULL,'2015','08','25'),(5174,'League of Legends','1019841434716990','Kevin Ty and Ua Jose',NULL,NULL,NULL,'2015','08','25'),(5175,'>_<','1019474174753716','',NULL,NULL,NULL,'2015','08','21'),(5176,'Oh My Ganda','1019386758095791','',NULL,NULL,NULL,'2015','08','21'),(5177,'Meet my bae, Baemax!','1019191304782003','',NULL,NULL,NULL,'2015','08','21'),(5178,'Wacky!','1018888428145624','',NULL,NULL,NULL,'2015','08','20'),(5179,'Incredible...','1015624048472062','',NULL,NULL,NULL,'2015','08','14'),(5180,'Sa Berbanya...','1015050008529466','',NULL,NULL,NULL,'2015','08','13'),(5181,'Closer to the nightmare...\n#fnaf #nearlythere','1013865898647877','',NULL,NULL,NULL,'2015','08','11'),(5182,'\"The head is always the dupe.\"','1013427638691703','',NULL,NULL,NULL,'2015','08','11'),(5183,'Last Farewell Party as a Divinian','939495012751633','Jaimee Lyn Perez, Ma Lizelle Donguines, Jophat Anhag, Richelle Anne Enriquez Joson, Jarred Domingo, Rya Catabas, Dreff Lanto, Heather Elizabeth, Sammy Jo, Michael Agustin, Joshua Vedeo, Zeus Corral and Sushie Mae Woo','Divine Light Academy Las Pinas','Manila','Philippines','2015','03','30'),(5184,'Last intermission number of PALARO MMXV','915492561818545','','Divine Light Academy Las Pinas','Manila','Philippines','2015','02','14'),(5185,'https://www.youtube.com/watch?v=l18A5BOTlzE\nMUST.NOT.FALL.ASLEEP.','843057115728757','',NULL,NULL,NULL,'2014','10','09'),(5186,'At natapos ko na ang Blood of Olympus... Finally, makakapag-aral po ako','842995802401555','',NULL,NULL,NULL,'2014','10','09'),(5187,'Last adventure w/ the demigods of Olympus...','841685789199223','Kevin Ty, Karen Solis and Pride',NULL,NULL,NULL,'2014','10','09'),(5188,'Last field trip as a Divinian','919081411459660','',NULL,NULL,NULL,'2015','02','20'),(5189,'Last field trip as a Divinian','919063311461470','Knoll Nivera, Ua Jose, Josh Sundiam and John Dela Cruz',NULL,NULL,NULL,'2015','02','20'),(5190,'Last field trip as a Divinian','919063214794813','',NULL,NULL,NULL,'2015','02','20'),(5191,'Palagi sinasabi ng mga guro natin na tuwing presentasyon, parang last minute lang ito ginawa. Pero hindi naman palagi ito totoo. Nasanay kami na grace under pressure.','818873818147087','',NULL,NULL,NULL,'2014','08','22'),(5192,'First blood sa UPCAT...','815642015136934','',NULL,NULL,NULL,'2014','08','16'),(5193,'\"We rejoice in our SUFFERINGS, knowing that suffering produces ENDURANCE, and endurance produces CHARACTER, and character produces HOPE.\" âRomans 5:3-4\n\nHuman suffering is observed when we struggle in our obstacles in life, exposing our weaknesses. It causes us to hide in our comfort zones, isolate from others, and even hurt ourselves. Sometimes when we suffer, we tend to lose hope and question God\'s purpose in our sufferings. \nHowever, we must look at our sufferings more optimistic for God\'s true purpose is to guide us to endure in our struggles, change ourselves for the better, and have hope of receiving His love and grace.','797579856943150','',NULL,NULL,NULL,'2014','07','13'),(5194,'Ang kalayaan ng Pilipinas ay ating panatilihin sa pamamagitan ng paghihikayat sa ating mga kababayan ang taos-pusong pagunawa sa esensiya ng tunay na kalayaanâang paggamit ng mga ating karapatan na ibinigay sa atin para sa kabutihan katulad ng kusang pagserbisyo o pagtulong sa ating kapwa, mga kababayang Pilipino pag sila\'y inaapi o may krisis, kalamidad, at iba pa. :)\n\nIpagpatuloy natin ang paggamit ng mga ating karapatan para sa kabutihan! Mabuhay ang Pilipinas! Maligayang Araw ng Kalayaan! :D','781689015198901','',NULL,NULL,NULL,'2014','06','12'),(5195,'Wala pang magandang sine sa IMAX...','777114652323004','Justine Reyes',NULL,NULL,NULL,'2014','06','04'),(5196,'Just watched the Amazing Spider-Man 2 on IMAX\n...','758636410837495','Justine Reyes and Justo Reyes',NULL,NULL,NULL,'2014','04','30'),(5197,'watching insidious 2 with Jero Ã Cabaluna Celzo and Justine Reyes....','744262318941571','',NULL,NULL,NULL,'2014','04','03'),(5198,'Talagang c SpiderMan ang idol ko...\nThis proves it... :D','743698802331256','',NULL,NULL,NULL,'2014','04','02'),(5199,'I\'m sorry if it\'s blurred. I\'m still learning.','740571422643994','',NULL,NULL,NULL,'2014','03','27'),(5200,'I\'m sorry if it\'s blurred. I\'m still learning.','740553785979091','Jophat Anhag, Gloucille Marie Jariol Villacastin and Mikael Diokno',NULL,NULL,NULL,'2014','03','27'),(5201,'W/o flash...','737691739598629','','Divine Light Academy Las Pinas','Manila','Philippines','2014','03','21'),(5202,'W/ flash','737689626265507','','Divine Light Academy Las Pinas','Manila','Philippines','2014','03','21'),(5203,'Spending the day w/ my beautiful cousins...','737348026299667','Eleora Elicanal',NULL,NULL,NULL,'2014','03','20'),(5204,'Ay naku... Napagod na ako maglaro ng LOL.. GG all the time kasi.','735904913110645','',NULL,NULL,NULL,'2014','03','18'),(5205,'Nakakapagod magwall climbing pero na-enjoy ko naman. 1st try pa lang, natapos ko lahat na for beginners. :)))','735299116504558','',NULL,NULL,NULL,'2014','03','16'),(5206,'Feeling artista part 2...','735290959838707','',NULL,NULL,NULL,'2014','03','16'),(5207,'Feeling artista...','734286083272528','',NULL,NULL,NULL,'2014','03','14'),(5208,'XD!!!','733820779985725','',NULL,NULL,NULL,'2014','03','13'),(5209,'Survivor....','732795956754874','',NULL,NULL,NULL,'2014','03','11'),(5210,'Kuya Justine at Kuya Zehel Sancho,\n  Hindi biro pala ang photography. Kailangan serious ka talaga....','731368610230942','',NULL,NULL,NULL,'2014','03','09'),(5211,'âª As I\'ve got my suit and tie, we danced all night to the best song ever and I just wanna feel this moment! âª','720935997940870','','Bellevue Hotel','Alabang','Philippines','2014','02','16'),(5212,'âª As I\'ve got my suit and tie, we danced all night to the best song ever and I just wanna feel this moment! âª','720340431333760','','Bellevue Hotel','Alabang','Philippines','2014','02','16'),(5213,'âª As I\'ve got my suit and tie, we danced all night to the best song ever and I just wanna feel this moment! âª','720356527998817','Rean Mendoza and Nikko Aguila',NULL,NULL,NULL,'2014','02','16'),(5214,'Eren or Levi? U decide...','689093867791750','',NULL,NULL,NULL,'2013','12','17'),(5215,'nailed it....','680150288686108','',NULL,NULL,NULL,'2013','11','29'),(5216,'i chus fail','680147048686432','',NULL,NULL,NULL,'2013','11','29'),(5217,'Never EVER piss off Mikasa...','663047557063048','',NULL,NULL,NULL,'2013','10','29'),(5218,'I\'ll show you my greatest masterpieces.','641097482591389','',NULL,NULL,NULL,'2013','09','20'),(5219,'when i was ur man...','625386300829174','',NULL,NULL,NULL,'2013','08','18'),(5220,'mag-aaral na muna ako...\nmamaya ko na lang gagawin sa ap...','625256910842113','',NULL,NULL,NULL,'2013','08','18'),(5221,'Naaantok na ako...\nTime to listen some tunes...','624780387556432','',NULL,NULL,NULL,'2013','08','17'),(5222,'true story...','614850305216107','',NULL,NULL,NULL,'2013','07','28'),(5223,'Black Widow','603082066392931','Jerad Reyes',NULL,NULL,NULL,'2013','07','04'),(5224,'Just playing God of War...\n8)','556327151068423','',NULL,NULL,NULL,'2013','03','22'),(5225,'Starbucks!!!! Yey! :D','550737041627434','',NULL,NULL,NULL,'2013','03','10'),(5226,'First day sa Starbucks...\nAwesome!!! XD','550735958294209','',NULL,NULL,NULL,'2013','03','09'),(5227,'Natsu, the Fire Dragon Slayer of Fairy Tail','544887308879074','',NULL,NULL,NULL,'2013','02','25'),(5228,'Kumain ka ba ng asukal? Kasi ang tamis ng ngiti mo eh...','544455185588953','',NULL,NULL,NULL,'2013','02','24'),(5229,'Playing Wii can be tiring but it can be used for exercising...','544453305589141','',NULL,NULL,NULL,'2013','02','24'),(5230,'I\'ll show you my greatest masterpieces.','543553382345800','',NULL,NULL,NULL,'2013','02','22'),(5231,'Happy Valentine\'s Day!','540089332692205','',NULL,NULL,NULL,'2013','02','14'),(5232,'\"Honor your father and your mother.\"\n\nThis is the 4th Commandment of the 10 Commandments. It means that we should respect our parents. Loving them is one way of honoring and respecting them.\n\nFirst of all, I want to thank my parents for being there with me through all my life. I also want to thank them for their sacrifice for me. I\'m very good to my parents and I help them every day. When I\'m in trouble or lonely, they\'re always there when I need them at most. When I do mistakes, they always correct me. \n\nI love my parents very much. I wish that they can recognize that I love them and they\'ll happy forever. I hope that they\'ll never leave me at my side. But I know that they\'ll always be with me in my heart along with my loved ones. I trust them with all my heart, body, mind, soul, and spirit.\n\nFor my final remark, I will say this: \"I have the best parents in the world and I love them as they love me.\"','529601613740977','',NULL,NULL,NULL,'2013','01','29'),(5233,'grabe naman ang araw na i2.\nman.......','527524700615335','',NULL,NULL,NULL,'2013','01','25'),(5234,'Thank you all for greeting me happy birthday!\nI love you all very much!! :))\n----\nProud to be Pinoy! xD','526614310706374','',NULL,NULL,NULL,'2013','01','23'),(5235,'HAPPY NEW YEAR 2 EVERY1!!! :)))','515177058516766','',NULL,NULL,NULL,'2012','12','31'),(5236,'Woah...','220231641446506','',NULL,NULL,NULL,'2012','12','30'),(5237,'Ang saya ng araw na ito! Nakakapagod ang sura kanina... (ang sura ay pamimigay ng mga piso na biglaan) Parang mga gutom na isda na lumalangoy para sa pagkain... XD Marami ako nakuha! Yeah! May ipon na ako! :D','513691928665279','',NULL,NULL,NULL,'2012','12','28'),(5238,'Merry Christmas! :D and a Happy New Year! :D to everyone!','511792808855191','',NULL,NULL,NULL,'2012','12','24'),(5239,'Wala pang nangyayaring masama....\nSo far, so good! :)','510329219001550','',NULL,NULL,NULL,'2012','12','21'),(5240,'Try it! Try it! Try it NOW! I dare you! >:D','397613590305644','',NULL,NULL,NULL,'2012','08','31'),(5241,'Paalam Dolphy...\nRest in Peace...\n:((','444673442233795','',NULL,NULL,NULL,'2012','07','10'),(5242,'Sayang...\nNatalo c Pacquiao.\n...\nMagkakaroon ng impeachment na.\nxD','428640837170389','',NULL,NULL,NULL,'2012','06','10'),(5243,'Forever Alone...','412120432155763','',NULL,NULL,NULL,'2012','05','21'),(5244,'Avengers is the most awesome movie EVER!!!\nXDDD','393146540719819','',NULL,NULL,NULL,'2012','04','25'),(5245,'Avengers Assemble!','392324554135351','',NULL,NULL,NULL,'2012','04','24'),(5246,'World\'s Greatest Heroes','387299531304520','',NULL,NULL,NULL,'2012','04','24'),(5247,'Astig ng Hunger Games kanina!\nIbibigay ko ng 5 out of 5 stars!','375375215830285','',NULL,NULL,NULL,'2012','04','01'),(5248,'Mapapanood ko na ang Hunger Games sa SM!\nYES!!\nSo much win!!!','375186175849189','',NULL,NULL,NULL,'2012','04','01'),(5249,'Ang boring naman ang summer na ito...\n:(','374096279291512','',NULL,NULL,NULL,'2012','03','30'),(5250,'This is FUNNY!!!\nXDDD','376629565691085','',NULL,NULL,NULL,'2012','03','27'),(5251,'I will miss HighSchool especially First Year...\n:((','367274979973642','',NULL,NULL,NULL,'2012','03','19'),(5252,':)','380534021965615','',NULL,NULL,NULL,'2012','03','16'),(5253,'This is the best day ever! xD','365176606850146','',NULL,NULL,NULL,'2012','03','16'),(5254,'Ipopost ko ang mga photos ko (mamaya o sometime)\nmula sa mga nakaraang linggo hanggan sa latest.\n...\nPa-like ito kung gusto niyo! :)','361140430587097','',NULL,NULL,NULL,'2012','03','09'),(5255,'Uuwi muna sa probinsya ako\n...\nI shall return.','361137543920719','',NULL,NULL,NULL,'2012','03','09'),(5256,'This is it..\n...\nTHIS IS IT!!!\n...\nPeriodical Test na!!!','357744814259992','',NULL,NULL,NULL,'2012','03','04'),(5257,'Nagpapractice para sa Music..\nWHAT?!!','356456434388830','',NULL,NULL,NULL,'2012','03','02'),(5258,'Is watching Anaconda 3 with lights off in the room.','352723414762132','',NULL,NULL,NULL,'2012','02','25'),(5259,'Happy Teachers\' Day! :))','352078341493306','',NULL,NULL,NULL,'2012','02','24'),(5260,'This is the best Valentine\'s Day EVER!!!\n...\n:))','345077422193398','',NULL,NULL,NULL,'2012','03','06'),(5261,'YARN!!!\n...\nXD','340791829288624','',NULL,NULL,NULL,'2012','02','08'),(5262,'I\'ll do my best this year...\nKung hindi, may next year pa... :))','333283126706161','',NULL,NULL,NULL,'2012','01','29'),(5263,'Thank you sa mga nagbati sa akin ng \"Happy Birthday\"...\nThank You All so Much!!! xD','329757737058700','',NULL,NULL,NULL,'2012','01','24'),(5264,'Happy Birthday to Me!\nHappy Birthday to Me!!\nYEHEY!!!','328759767158497','',NULL,NULL,NULL,'2012','01','23'),(5265,'HAPPY NEW YEAR!!!!\n\nWOOHOO!! \n\nPARTY! PARTY!','314493481918459','',NULL,NULL,NULL,'2011','12','31'),(5266,'3 days before a \"Happy New Year\"!','313159432051864','',NULL,NULL,NULL,'2011','12','29'),(5267,'Merry Christmas sa inyong lahat!\n..\nAt Happy Birthday sa Jesus!\n..\nIkaw ang star ng Pasko ng mga Pilipino! :))','310350552332752','',NULL,NULL,NULL,'2011','12','24'),(5268,'bored...\nbingo na...','310210852346722','',NULL,NULL,NULL,'2011','12','24'),(5269,'I want to have a Nintendo 3DS because of this...','286884728029821','',NULL,NULL,NULL,'2011','12','22'),(5270,'What will you do to make your life worth living?','307180899316384','',NULL,NULL,NULL,'2011','12','19'),(5271,'Sana sa Pasko, everybody happy! :)','300386483329159','',NULL,NULL,NULL,'2011','12','08'),(5272,'Gusto ko na maglaro pero may maraming gagawin pa ako... :(','299821193385688','',NULL,NULL,NULL,'2011','12','07'),(5273,'There is nothing absolute in this world...','299156683452139','',NULL,NULL,NULL,'2011','12','06'),(5274,'Hahanda na ako sa Field Trip bukas.....\nExcited na ako!!! XD','295314477169693','',NULL,NULL,NULL,'2011','11','30'),(5275,'Kung totoo ang Theory of Evolution ni John Dalton, bakit may mga tao na mukhang kabayo?\n\n*JOKE lang \'to.','291983397502801','',NULL,NULL,NULL,'2011','11','25'),(5276,'Bakit may common sense kung hindi ito common sa iba?','290980590936415','',NULL,NULL,NULL,'2011','11','22'),(5277,'Magkakaroon ako ng Son of Neptune bukas!\nYAHOO! XD','278032278897913','',NULL,NULL,NULL,'2011','10','27'),(5278,'Yes! Tapos na ang Periodical Test!','275199812514493','',NULL,NULL,NULL,'2011','10','21'),(5279,'Rain, rain, go away...\nCome again another day....','271180149583126','',NULL,NULL,NULL,'2011','10','12'),(5280,'Excited na ako bukas sa Ibong Adarna.....\nI can\'t wait...','268463206521487','',NULL,NULL,NULL,'2011','10','06'),(5281,'Kinakabahan na ako bukas....\nGud luck nalang ako. XD','267126936655114','',NULL,NULL,NULL,'2011','10','03'),(5282,'I gotta feeling, woohoo, that tonight\'s gonna be a good night\nThat tonight\'s gonna be a good night\nThat tonight\'s gonna be a good, good night\nWoohoo','263661837001624','',NULL,NULL,NULL,'2011','09','25'),(5283,'ASTIG!!! >:)','249151981789247','',NULL,NULL,NULL,'2011','09','16'),(5284,'Good bye today........\nHello tomorrow.........','249589301742211','',NULL,NULL,NULL,'2011','08','26'),(5285,'last day na ng periodical test bukas...\nsana hindi naman mahirap...','245169762184165','',NULL,NULL,NULL,'2011','08','17'),(5286,'Nakaka-adik na maglaro ng Angry Birds!!!! X)','235053353195806','',NULL,NULL,NULL,'2011','07','27'),(5287,'Inaantok na me.........\nGusto ko na magtimpla ng kape....... XD','231390333562108','',NULL,NULL,NULL,'2011','07','22'),(5288,'Getting bored here......','227870507247424','',NULL,NULL,NULL,'2011','07','12'),(5289,'ang hirap ng mga assignments ngayon........... =(','227383397296135','',NULL,NULL,NULL,'2011','07','11'),(5290,'Autobots, rollout!','224632304237911','',NULL,NULL,NULL,'2011','07','07'),(5291,'Optimus Prime','223661564334985','',NULL,NULL,NULL,'2011','07','03'),(5292,'gusto ko ng ps3.......','213244622043346','',NULL,NULL,NULL,'2011','05','30'),(5293,'Today I don\'t feel like doing anything\nI just wanna lay in my bed\nDon\'t feel like picking up my phone, so leave a message at the tone\n\'Cause today I swear I\'m not doing anything','209764245724717','',NULL,NULL,NULL,'2011','05','15'),(5294,'nasasanay na ako sa guitar lessons...','207192419315233','',NULL,NULL,NULL,'2011','05','04'),(5295,'ang init...........\ngusto ko na mag- aircon..........','206450279389447','',NULL,NULL,NULL,'2011','05','01'),(5296,'My Top Profile Viewers: \n Colleen Cristobal - 436 views \n Ana Elemely C. Celzo - 83 views \n Clauds Oblena - 42 views \n Ashley Alegada - 30 views \n See who views your profile @ http://www.facebook.com/pages/Proviewer/204924796207243?81488','206203199414155','',NULL,NULL,NULL,'2016','09','26'),(5297,'Gusto ko na maglaro ng Duodecim ulit......\nTinago ang psp namin ni kuya........... :((','206065022761306','',NULL,NULL,NULL,'2011','04','29'),(5298,'nonood ng thor sa sm.,.,.,.,\nYAY! XD','205975616103580','',NULL,NULL,NULL,'2011','04','29'),(5299,'ay naglalaro ng Crisis Core. :)','203425233025285','',NULL,NULL,NULL,'2011','04','18'),(5300,'Dear Boredom, please leave me alone. Sincerely, Me','202961333071675','',NULL,NULL,NULL,'2011','04','16'),(5301,'I just completed the Notice Uncle Mortimer is very distracted lately lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','202752399759235','',NULL,NULL,NULL,'2011','04','15'),(5302,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','202752323092576','',NULL,NULL,NULL,'2011','04','15'),(5303,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','199816713386137','',NULL,NULL,NULL,'2011','04','02'),(5304,'Di ko kayang tanggapin\nNa mawawala ka na sa akin\nNapakasakit na marinig\nNa ayaw mo na sa akin','199096473458161','',NULL,NULL,NULL,'2011','03','30'),(5305,'nakakainis,.,.,.,.,\nwala pa ako ng dissidia 012!','198597476841394','',NULL,NULL,NULL,'2011','03','28'),(5306,'I just completed the Finish your wizard and non-wizard homework lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','198578203509988','',NULL,NULL,NULL,'2011','03','28'),(5307,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','198578140176661','',NULL,NULL,NULL,'2011','03','28'),(5308,'Earth Hour Day....\nisang oras naman ito...','198139153553893','',NULL,NULL,NULL,'2011','03','26'),(5309,'kumakin ng mais con yelo habang nagnonood ng scooby doo kasama ang kuya ko,.,..,.,','197423850292090','',NULL,NULL,NULL,'2011','03','23'),(5310,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','197174150317060','',NULL,NULL,NULL,'2011','03','22'),(5311,'d ako makatulog.,.,,.','196754377025704','',NULL,NULL,NULL,'2011','03','20'),(5312,'LONG LIVE FINAL FANTASY!!! XD','195685037132638','',NULL,NULL,NULL,'2011','03','16'),(5313,'\"Poverty never ends.....\"','195217877179354','',NULL,NULL,NULL,'2011','03','14'),(5314,'NAKAKAINIS WALA NG SPIDERMAN 4!!!! >:(','195210897180052','',NULL,NULL,NULL,'2011','03','14'),(5315,'I just completed the Head back home... double time lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','195197813848027','',NULL,NULL,NULL,'2011','03','14'),(5316,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','195197653848043','',NULL,NULL,NULL,'2011','03','14'),(5317,'GUSTO KO NA MAG-PS2 NA!!! PLEASE!!! KAHIT PS3 NA LANG!!!','194761620558313','',NULL,NULL,NULL,'2011','03','12'),(5318,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','193982813969527','',NULL,NULL,NULL,'2011','03','09'),(5319,'MAY PATAPON 3 NA!!!!','158444964209074','',NULL,NULL,NULL,'2011','03','04'),(5320,'I just completed the Find the main path out of the forest the next morning lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','192749517426190','',NULL,NULL,NULL,'2011','03','04'),(5321,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','192749467426195','',NULL,NULL,NULL,'2011','03','04'),(5322,'YAY!!!\nnext week ang NAT!!!','192055174162291','',NULL,NULL,NULL,'2011','03','03'),(5323,'waiting waiting waiting of IT','191808270853648','',NULL,NULL,NULL,'2011','02','28'),(5324,'march 22 ang release ng dissidia 012 :)','191355664232242','',NULL,NULL,NULL,'2011','02','26'),(5325,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','191303934237415','',NULL,NULL,NULL,'2011','02','26'),(5326,'I just completed the Survive the night in the Mystical Forest lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','190886357612506','',NULL,NULL,NULL,'2011','02','24'),(5327,'mahirap ang periodical test bukas...........','190639910970484','',NULL,NULL,NULL,'2011','02','23'),(5328,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','189847284383080','',NULL,NULL,NULL,'2011','02','20'),(5329,'\'Cause I get a thouands hugs\nTo ten thousand lightning bugs\nAs they teach me how to dance\n\nA foxtrot above my head\nA sock hop beneath my bed\nA disco ball is hanging by a thread','189670867734055','',NULL,NULL,NULL,'2011','02','19'),(5330,'naglaro kami ng left 4 dead 1 & 2 kasama ng mga pinsan at ang kuya ko pero palagi kami namamatay at pa ulit-ulit kami namamatay.,.,.\n(nagagalit) >:(','189668651067610','',NULL,NULL,NULL,'2011','02','19'),(5331,'I just completed the Find shelter for the night and gather berries to eat lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','189652184402590','',NULL,NULL,NULL,'2011','02','19'),(5332,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','189372521097223','',NULL,NULL,NULL,'2011','02','18'),(5333,'I just completed the Fight off the goblins lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','188977681136707','',NULL,NULL,NULL,'2011','02','16'),(5334,'I wanna be a billionaire so fricking bad\nBuy all of the things I never had\nUh, I wanna be on the cover of Forbes magazine\nSmiling next to Oprah and the Queen','148513345210374','',NULL,NULL,NULL,'2011','02','15'),(5335,'Happy Valentine\'s Day!!!','194590677235646','',NULL,NULL,NULL,'2011','02','14'),(5336,'Bukas na ang â¥Valentine\'s Dayâ¥!','129037593831841','',NULL,NULL,NULL,'2011','02','13'),(5337,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','187993781235097','',NULL,NULL,NULL,'2011','02','12'),(5338,'I just completed the Follow Uncle Mortimer to the Wizard Gateway lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','187993717901770','',NULL,NULL,NULL,'2011','02','12'),(5339,'2 Days Before Valentine\'s Day...','151296234929358','',NULL,NULL,NULL,'2011','02','12'),(5340,'I just completed the Return unicorns back to the wizard world lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','187704997930642','',NULL,NULL,NULL,'2011','02','11'),(5341,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','187704881263987','',NULL,NULL,NULL,'2011','02','11'),(5342,'wala akong magawa basta mag-aral at mag-facebook','177751532267761','',NULL,NULL,NULL,'2011','02','09'),(5343,'nagnonood ng fullmetal alchemist brotherhood bago tulugan na','152453994810045','',NULL,NULL,NULL,'2011','02','06'),(5344,'Ventus from Kingdom Hearts: Birth by Sleep','186424484725360','',NULL,NULL,NULL,'2011','02','06'),(5345,'naglalaro ng GTA: San Andreas','182402508465704','',NULL,NULL,NULL,'2011','02','04'),(5346,'maraming test bukas.....\nhumanda na kayo bukas....','195529383792861','',NULL,NULL,NULL,'2011','02','03'),(5347,'is listening Dj Bumbay by Michael V.!!!XD','186485798040161','',NULL,NULL,NULL,'2011','01','31'),(5348,'is getting bored everyday and everytime doing the same stuff.,.,.,,','125690247499708','',NULL,NULL,NULL,'2011','01','30'),(5349,'bukas maging 13 na ako!\nHappy Advance Birthday 2 me!!','129794007087523','',NULL,NULL,NULL,'2011','01','22'),(5350,'-nagrereview sa hekasi at filipino;\n-excited sa PALARO at birthday ko;\n-gusto ng sariling gameboy o ds (possible) XD','189609277718389','',NULL,NULL,NULL,'2011','01','10'),(5351,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','178899035477905','',NULL,NULL,NULL,'2011','01','09'),(5352,'Pasok na bukas.,.,.,.,','181563428529918','',NULL,NULL,NULL,'2011','01','04'),(5353,'HAPPY NEW YEAR SA INYONG LAHAT!!!','166147116764011','',NULL,NULL,NULL,'2010','12','31'),(5354,'I just completed the Gather up unicorns from the Mystical Forest  lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','176278552406620','',NULL,NULL,NULL,'2010','12','29'),(5355,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','175284225839386','',NULL,NULL,NULL,'2010','12','26'),(5356,'Merry Christmas sa inyong lahat!!! :))','186893371325508','',NULL,NULL,NULL,'2010','12','24'),(5357,'2 Days Before Christmas','149639638421037','',NULL,NULL,NULL,'2010','12','23'),(5358,'3 Days Before Christmas','137485159642567','',NULL,NULL,NULL,'2010','12','22'),(5359,'4 Days Before Christmas','182247271802151','',NULL,NULL,NULL,'2010','12','21'),(5360,'5 Days Before Christmas','182477465111950','',NULL,NULL,NULL,'2010','12','20'),(5361,'pag- uwi namin kasama ng kuya ko mula sa skul, ako ay naglalaro sa ps2 namin buong maghapon hanggang 6 pm.,.,..,..\npero d pa ako napapagod.,.,,..,. XD','173871835977144','',NULL,NULL,NULL,'2010','12','18'),(5362,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','172871469413995','',NULL,NULL,NULL,'2010','12','17'),(5363,'I just completed the Practice more basic spells lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','172871456080663','',NULL,NULL,NULL,'2010','12','17'),(5364,'YES!!!\nNATAPOS NA ANG PERIODICAL TEST!!!\nYAHOO!!!','138898932829879','',NULL,NULL,NULL,'2010','12','17'),(5365,'is reviewing 4 da periodical test tomorrow.,.,.,.','184795028202698','',NULL,NULL,NULL,'2010','12','13'),(5366,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','171492609551881','',NULL,NULL,NULL,'2010','12','11'),(5367,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','169833626384446','',NULL,NULL,NULL,'2010','12','04'),(5368,'I just completed the Make it back home safely... lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','169643593070116','',NULL,NULL,NULL,'2010','12','03'),(5369,'NEW PROFILE PIC!!!','110833725651884','',NULL,NULL,NULL,'2010','12','02'),(5370,'I just completed the Confront Big Jimmy the Bully at the movies lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','169382976429511','',NULL,NULL,NULL,'2010','12','02'),(5371,'If you can\'t solve your problems all by yourself, you will need support on others. You can\'t do it alone.','175504202477288','',NULL,NULL,NULL,'2010','12','01'),(5372,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','168950406472768','',NULL,NULL,NULL,'2010','11','30'),(5373,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','168203763214099','',NULL,NULL,NULL,'2010','11','27'),(5374,'I just completed the Uncle says read another chapter in the History of Magic lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','168203176547491','',NULL,NULL,NULL,'2010','11','27'),(5375,'Astig toh!XD','105338839538199','',NULL,NULL,NULL,'2010','11','25'),(5376,'isang buwan na lang, periodical test na.....\nano naman yan.....\npiling ko para na-busted na ako','169488789737879','',NULL,NULL,NULL,'2010','11','25'),(5377,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','167582633276212','',NULL,NULL,NULL,'2010','11','24'),(5378,'I just completed the Form a new bond with your newfound old wizard friends! lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','167341556633653','',NULL,NULL,NULL,'2010','11','23'),(5379,'ay nagrereview sa Hekasi at Science.....\nDo not disturb.','162805820421925','',NULL,NULL,NULL,'2010','11','23'),(5380,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','166611453373330','',NULL,NULL,NULL,'2010','11','20'),(5381,'I just completed the Buy wizard robes and head home after a long day out lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','166611403373335','',NULL,NULL,NULL,'2010','11','20'),(5382,'I just completed the Your second duel! lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','166169626750846','',NULL,NULL,NULL,'2010','11','18'),(5383,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','166169186750890','',NULL,NULL,NULL,'2010','11','18'),(5384,'Yeah, Yeah, Yeah, Yehey!!! Yeah, Yeah, Yeah, Yehey!!!\nBukas na ang field trip!!! pero wala na ang P.E..\n=(','142307312488704','',NULL,NULL,NULL,'2010','11','18'),(5385,'Personality Test','102701059802337','',NULL,NULL,NULL,'2010','11','17'),(5386,'Haayy.... Salamat. Natapos na ang project sa Science. Kulang nalang ang procedures.','167166823306076','',NULL,NULL,NULL,'2010','11','16'),(5387,'Practice makes perfect but nobody\'s perfect. So why practice?Hmmm?','167390369950200','',NULL,NULL,NULL,'2010','11','16'),(5388,'Sa core values- 3 lang ang AA ko.\nHumility,Love, at Trustworthiness','169200123103935','',NULL,NULL,NULL,'2010','11','13'),(5389,'bumaba ang grades ko sa card\nLang.-89\nRead.-86\nMath-83\nScience-85\nFilipino-85\nMakabayan-86\nHekasi-82\nTLE-88\nComp.-86\nMAPE-88\nCLVE-87\nConduct-88\nSa','117165958348211','',NULL,NULL,NULL,'2010','11','13'),(5390,'Sana may ps3 na ako. Astig nitong laro!!!!Go Spider-Men!!!','101139096626368','',NULL,NULL,NULL,'2010','11','12'),(5391,'ay gumagawa ng HW. Wag kayo magulo.\nPS: Seriyoso to. Pagod na me din.','164454646919898','',NULL,NULL,NULL,'2010','11','10'),(5392,'I just completed the Go to the secret magic shop in the middle of town on the way home lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','163204137047395','',NULL,NULL,NULL,'2010','11','06'),(5393,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','163182327049576','',NULL,NULL,NULL,'2010','11','06'),(5394,'I just completed the Your first duel! lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','163006893733786','',NULL,NULL,NULL,'2010','11','05'),(5395,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','163006017067207','',NULL,NULL,NULL,'2010','11','05'),(5396,'I just completed the Learn to duel  lesson! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','162953983739077','',NULL,NULL,NULL,'2010','11','05'),(5397,'I just leveled up! Come join my order in School of Wizardry: http://apps.facebook.com/wizard_/linkinvite','162442467123562','',NULL,NULL,NULL,'2010','11','03'),(5398,'YEHEY!!!!\nSembreak na!!!\nXD','102512206485825','',NULL,NULL,NULL,'2010','10','29'),(5399,'is watching \"World is Mine\" in Youtube.','166608080034245','',NULL,NULL,NULL,'2010','10','28'),(5400,'4 days to Halloween','145036978875949','',NULL,NULL,NULL,'2010','10','27'),(5401,'is studying 4 HEKASI at CLVE.\nMajor Major ang hirap ng HEKASI. X(','164185633609723','',NULL,NULL,NULL,'2010','10','20'),(5402,'next week na ang periodical test\nhay...............\nmahirap na ang buhay','146574422054222','',NULL,NULL,NULL,'2010','10','16'),(5403,'long live Dissidia!!!\nYahoo!!! XD','153443471360022','',NULL,NULL,NULL,'2010','10','13'),(5404,'Good Night 2 All','115368098524075','',NULL,NULL,NULL,'2010','10','09'),(5405,'is playing Kingdom Hearts : Birth by Sleep.','156113201088385','',NULL,NULL,NULL,'2010','10','08'),(5406,'is doing his HW\'s now. Do not disturb.','137725109606560','',NULL,NULL,NULL,'2010','09','28'),(5407,'yehey!!!\nretreat na bukas!!!','155995281092560','',NULL,NULL,NULL,'2010','09','12'),(5408,'good 4 everybody, even pepper himself.\nHAHAHAHAHAHAHAHA!!!!!!!!!!','109766905746063','',NULL,NULL,NULL,'2010','08','27'),(5409,'sana mawawala na ang sakit ko............\npero may all-rest day d2..........\nwish me luck!!!','143425519031773','',NULL,NULL,NULL,'2010','08','25'),(5410,'zzzzzzzzzzzzzz..............\nwhat??? how said that??/','146758508677772','',NULL,NULL,NULL,'2010','08','21'),(5411,'hope it doesn\'t rain tomorrow.....\ni had enough of it.......','121489917899842','',NULL,NULL,NULL,'2010','08','19'),(5412,'gud luck tayong lahat para sa peridical test!!!!','131658080211882','',NULL,NULL,NULL,'2010','08','16'),(5413,'i\'m not hot. i\'m not emo. i\'m cool. HAHAHAHA!!!!!!','135342276507207','',NULL,NULL,NULL,'2010','08','11'),(5414,'lahat nasa perseverance, check niyo ang bagong photo album ko. mag-comment kayo kung gusto niyo lalagay pa ako ng tekken 6 pa!!!','132909293418642','',NULL,NULL,NULL,'2010','08','11'),(5415,'for anyone who read this post, kung bibili kayo ng bagong damit, tignan niyo ang damit ang pinili mo at tanungin ang sarili niyo \"Is this me?\"(The Blind Side-Leigh Anne)','104931482897691','',NULL,NULL,NULL,'2010','08','11'),(5416,'i luv video games!!!!!!!!','141526435881832','Javier Rafael Alonzo, Griarte John Ivan, Dreff Lanto, Michael Agustin, Mark Bumanlag, Fidel Lim, Verna Aquino, Zeus Corral, Javier Rafael Alonzo and Javier Rafael Alonzo',NULL,NULL,NULL,'2010','08','11'),(5417,'Yesterday is history. Tomorrow is future. Today is present.','103671203024840','',NULL,NULL,NULL,'2010','08','07'),(5418,'anong assignment sa compter?','115325808520379','',NULL,NULL,NULL,'2010','08','03'),(5419,'please.........\nnagmamakaawa naman ako......','147957111882785','',NULL,NULL,NULL,'2010','08','02'),(5420,'gud night everybody!!!','107492585972400','',NULL,NULL,NULL,'2010','08','01'),(5421,'if you choose something that\'s best to you, it\'s better to do it before trouble starts.','130365337007159','',NULL,NULL,NULL,'2010','08','01'),(5422,'top 3 para palaging handa:\n#1- Chillax!\n#2- Gawin ang lahat ng mga kailangan\n#3- DON\'T PANIC!','142535522437204','',NULL,NULL,NULL,'2010','07','31'),(5423,'wow...\nilang linggo na lang, malapit na ang periodic. test\nat pwede na ang commute!!!','140736889279695','',NULL,NULL,NULL,'2010','07','27'),(5424,'top 3 ng mga gagawin sa gabi\n1. tulog\n2. tulog\n3. tulog ng bongga','139907002706167','',NULL,NULL,NULL,'2010','07','24'),(5425,'i\'m bored. someone tell me a joke or something......','106276519422436','',NULL,NULL,NULL,'2010','06','30'),(5426,'Watch it or your an apple. HAHAHAHAHA!','133595269986382','',NULL,NULL,NULL,'2010','06','11'),(5427,'hay naku... wala na ako magawa ngayon... ano ang gagawin ko?','114277195256740','',NULL,NULL,NULL,'2010','04','12');
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

-- Dump completed on 2017-04-03 21:36:34
