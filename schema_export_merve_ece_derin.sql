CREATE DATABASE  IF NOT EXISTS `derin_ece_merve` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `derin_ece_merve`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: derin_ece_merve
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apply` (
  `POSITION_ID` int NOT NULL,
  `TALENT_ID` int NOT NULL,
  PRIMARY KEY (`POSITION_ID`,`TALENT_ID`),
  KEY `talent_4_idx` (`TALENT_ID`),
  CONSTRAINT `position_2` FOREIGN KEY (`POSITION_ID`) REFERENCES `position` (`POSITION_ID`),
  CONSTRAINT `talent_4` FOREIGN KEY (`TALENT_ID`) REFERENCES `talent` (`TALENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` VALUES (1,5),(16,5),(24,5),(1,8),(17,8),(1,11),(17,11),(24,11),(2,30),(17,30),(2,45),(18,45),(2,56),(3,65),(18,65),(3,71),(18,71),(3,93),(19,93),(4,106),(19,106),(4,123),(4,126),(5,132),(5,143),(5,150),(19,150),(6,155),(20,155),(6,170),(6,172),(20,172),(7,182),(20,182),(7,203),(7,222),(8,224),(8,226),(8,229),(21,229),(9,234),(21,234),(9,254),(9,261),(11,266),(21,266),(11,272),(11,279),(22,279),(12,280),(12,288),(12,289),(13,296),(22,296),(13,301),(13,313),(14,329),(22,329),(14,335),(14,347),(15,353),(23,353),(15,358),(23,358),(15,364),(16,368),(16,373),(23,373),(24,379),(25,390),(25,408),(25,414),(26,453),(26,456),(26,459),(27,491),(27,494);
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attend`
--

DROP TABLE IF EXISTS `attend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attend` (
  `EVENT_ID` int NOT NULL,
  `TALENT_ID` int NOT NULL,
  PRIMARY KEY (`EVENT_ID`,`TALENT_ID`),
  KEY `talent_3_idx` (`TALENT_ID`),
  CONSTRAINT `event_1` FOREIGN KEY (`EVENT_ID`) REFERENCES `event` (`EVENT_ID`),
  CONSTRAINT `talent_3` FOREIGN KEY (`TALENT_ID`) REFERENCES `talent` (`TALENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attend`
--

LOCK TABLES `attend` WRITE;
/*!40000 ALTER TABLE `attend` DISABLE KEYS */;
INSERT INTO `attend` VALUES (1,5),(2,8),(3,11),(4,30),(6,45),(7,56),(8,65),(9,71),(10,93),(11,106),(12,123),(13,126),(14,132),(15,143),(16,150),(17,155),(18,170),(19,172),(20,182),(21,203),(22,222),(23,224),(24,226),(25,229),(26,234),(27,254),(28,261),(29,266),(30,272),(31,279),(32,280),(33,288),(34,289),(35,296),(36,301),(37,313),(38,329),(39,335),(40,347),(41,353),(42,358),(43,364),(44,368),(45,373),(46,379),(47,390),(48,408),(49,414),(50,453),(51,456),(1,459),(2,491),(3,494),(4,496),(6,501),(7,502),(8,504),(9,507),(10,508),(11,509),(12,511),(13,512),(14,515),(15,520),(16,527),(17,573),(18,580),(19,583),(20,587),(21,597),(22,598),(23,611),(24,612),(25,629),(26,634),(27,650),(28,651),(29,653),(30,655),(31,660),(32,661),(33,673),(34,674),(35,681),(36,692),(37,695),(38,699),(39,708),(40,724),(41,727),(42,737),(43,751),(44,753),(45,757),(46,773),(47,786),(48,788),(49,814),(50,835),(51,836),(1,837),(2,838),(3,839),(4,842),(6,873),(7,896),(8,902),(9,906),(10,915),(11,916),(12,936),(13,940),(14,952),(15,970),(16,973),(17,982),(18,989),(19,995),(20,998),(21,1000),(22,1025),(23,1074),(24,1163),(25,1176),(26,1181),(27,1231),(28,1274),(29,1275),(30,1344),(31,1431),(32,1453),(33,1521),(34,1535),(35,1587),(36,1592),(37,1647),(38,1725),(39,1747),(40,1770),(41,1777),(42,1803),(43,1810),(44,1837),(45,1842),(46,1845),(47,1849),(48,1873),(49,1908),(50,1923),(51,1954),(1,2006),(2,2079),(3,2106),(4,2174),(6,2193),(7,2248),(8,2279),(9,2369),(10,2386),(11,2401),(12,2480),(13,2516),(14,2521),(15,2523),(16,2578),(17,2593),(18,2648),(19,2697),(20,2706),(21,2741),(22,2759),(23,2855),(24,2932),(25,2961),(26,3027),(27,3030),(28,3035),(29,3057),(30,3075),(31,3115),(32,3314),(33,3378),(34,3403),(35,3424),(36,3434),(37,3446),(38,3472),(39,3528),(40,3530),(41,3604),(42,3608),(43,3612),(44,3640),(45,3806),(46,3886),(47,3940),(48,3964),(49,4090),(50,4099),(51,4115);
/*!40000 ALTER TABLE `attend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `EVENT_ID` int NOT NULL,
  `EVENT_NAME` varchar(45) NOT NULL,
  `EVENT_TYPE` varchar(45) NOT NULL,
  `EVENT_DATE` datetime NOT NULL,
  `RECRUITER_ID` int NOT NULL,
  PRIMARY KEY (`EVENT_ID`),
  UNIQUE KEY `EVENT_ID_UNIQUE` (`EVENT_ID`),
  KEY `recruiter_2_idx` (`RECRUITER_ID`),
  CONSTRAINT `recruiter_2` FOREIGN KEY (`RECRUITER_ID`) REFERENCES `recruiter` (`RECRUITER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'similique','Hackaton','1998-08-27 08:00:00',8),(2,'voluptas','aut','1994-07-07 08:00:00',22),(3,'dolorum','dolore','2008-11-02 08:00:00',30),(4,'hic','Hackaton','2001-02-09 08:00:00',4),(6,'eum','Hackaton','2002-01-30 08:00:00',1),(7,'iste','eos','1991-11-27 08:00:00',5),(8,'eveniet','a','1992-01-01 08:00:00',18),(9,'rerum','et','2004-05-10 08:00:00',2),(10,'exercitationem','et','1970-08-09 08:00:00',21),(11,'rerum','voluptatem','2011-06-08 08:00:00',0),(12,'debitis','officiis','1993-06-04 08:00:00',15),(13,'earum','sint','1990-04-04 08:00:00',7),(14,'nam','Hackaton','1978-01-02 08:00:00',23),(15,'facilis','ut','1999-03-28 08:00:00',10),(16,'culpa','veritatis','2021-01-31 08:00:00',9),(17,'maxime','consequuntur','2004-11-19 08:00:00',3),(18,'quo','occaecati','2007-07-22 08:00:00',36),(19,'soluta','aspernatur','2006-08-19 08:00:00',0),(20,'quis','ut','2020-07-27 08:00:00',7),(21,'sit','quo','1970-05-14 08:00:00',11),(22,'hic','Hackaton','1988-03-16 08:00:00',39),(23,'beatae','maiores','2011-06-23 08:00:00',6),(24,'et','Hackaton','2016-10-29 08:00:00',4),(25,'maxime','Hackaton','1987-02-18 08:00:00',31),(26,'aliquam','modi','1978-08-01 08:00:00',33),(27,'laborum','magnam','2018-06-08 08:00:00',26),(28,'qui','quis','1987-10-29 08:00:00',40),(29,'sequi','est','2006-03-10 08:00:00',35),(30,'aut','maxime','2002-03-09 08:00:00',3),(31,'a','rem','2013-11-26 08:00:00',27),(32,'quasi','minima','1977-03-29 08:00:00',16),(33,'alias','quidem','2012-04-09 08:00:00',9),(34,'reprehenderit','aspernatur','1978-03-23 08:00:00',37),(35,'qui','consequatur','1994-10-14 08:00:00',32),(36,'et','ea','2013-10-18 08:00:00',2),(37,'veniam','sit','1991-04-23 08:00:00',13),(38,'dolore','magni','1980-02-18 08:00:00',6),(39,'magni','repellat','1983-06-09 08:00:00',20),(40,'eaque','nostrum','2009-10-16 08:00:00',14),(41,'quo','et','2016-10-27 08:00:00',29),(42,'nobis','illo','2007-01-30 08:00:00',28),(43,'sunt','eius','2012-03-22 08:00:00',19),(44,'odit','culpa','1990-01-22 08:00:00',38),(45,'et','sed','2014-06-01 08:00:00',34),(46,'dolor','ratione','1972-08-16 08:00:00',24),(47,'tenetur','totam','1993-09-24 08:00:00',1),(48,'dolor','animi','1970-01-10 08:00:00',8),(49,'esse','nostrum','2014-07-13 08:00:00',12),(50,'ullam','sint','1999-04-11 08:00:00',17),(51,'non','Hackaton','2021-04-02 08:00:00',4);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `POSITION_ID` int NOT NULL,
  `POSITION_NAME` char(30) NOT NULL,
  `ESTIMATED_SALARY` int DEFAULT NULL,
  `RECRUITER_ID` int NOT NULL,
  `PROJECT_ID` int NOT NULL,
  `PROJECT_DURATION` int NOT NULL,
  `PROJECT_NAME` char(20) NOT NULL,
  PRIMARY KEY (`POSITION_ID`,`PROJECT_ID`),
  UNIQUE KEY `PROJECT_ID_UNIQUE` (`PROJECT_ID`),
  KEY `recruiter_1_idx` (`RECRUITER_ID`),
  CONSTRAINT `recruiter_1` FOREIGN KEY (`RECRUITER_ID`) REFERENCES `recruiter` (`RECRUITER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'quia',431045,38,159,3,'sunt'),(2,'fugit',585466,5,112,5,'sit'),(3,'nihil',785039,10,179,2,'rerum'),(4,'labore',403684,15,130,7,'nesciunt'),(5,'aut',465987,8,119,5,'rerum'),(6,'quia',407472,39,167,2,'voluptates'),(7,'velit',109755,13,134,4,'magnam'),(8,'consequatur',623422,27,129,2,'impedit'),(9,'velit',578524,17,100,7,'saepe'),(11,'molestias',206966,2,168,6,'accusamus'),(12,'sequi',422696,4,176,7,'incidunt'),(13,'Developer',744777,22,142,2,'reiciendis'),(14,'ea',143995,10,124,7,'exercitationem'),(15,'sunt',112011,19,146,6,'sed'),(16,'nulla',241888,34,148,3,'tempora'),(17,'error',341642,12,141,1,'ab'),(18,'et',131779,13,170,1,'dignissimos'),(19,'voluptas',431967,32,147,2,'similique'),(20,'nisi',279718,21,154,3,'a'),(21,'nostrum',449830,30,133,2,'consectetur'),(22,'ut',385955,28,163,5,'ut'),(23,'asperiores',88000,0,117,1,'sequi'),(24,'ullam',545742,20,120,6,'aut'),(25,'ut',697249,6,178,3,'omnis'),(26,'nam',380240,1,132,4,'autem'),(27,'tempora',602001,4,103,5,'rerum'),(28,'commodi',418391,39,164,7,'nam'),(29,'esse',502264,17,102,2,'quibusdam'),(30,'doloremque',387449,12,118,1,'quaerat'),(31,'magni',285836,38,139,3,'mollitia'),(32,'repudiandae',428005,24,123,7,'quaerat'),(33,'alias',414384,32,104,7,'distinctio'),(34,'cumque',316465,22,180,3,'ut'),(35,'dignissimos',734494,11,126,2,'enim'),(36,'deserunt',541167,29,111,5,'soluta'),(37,'magnam',618411,29,152,4,'quisquam'),(38,'et',120384,34,115,6,'repellendus'),(39,'quae',184254,20,169,5,'in'),(40,'voluptatem',342146,18,106,6,'aut'),(41,'quaerat',47464,15,155,7,'deleniti'),(42,'deserunt',404228,7,160,6,'qui'),(43,'sit',547416,37,109,5,'est'),(44,'et',477594,36,172,4,'natus'),(45,'maiores',92725,37,157,5,'omnis'),(46,'id',15716,21,143,6,'voluptatem'),(47,'tempore',32272,8,105,4,'labore'),(48,'deleniti',285348,9,121,7,'vitae'),(49,'qui',200731,35,108,4,'iusto'),(50,'omnis',53246,3,171,7,'qui'),(51,'quam',390950,5,166,5,'sapiente'),(52,'non',288372,7,114,5,'sit'),(53,'non',62623,18,162,1,'excepturi'),(54,'dolor',280193,0,175,2,'et'),(55,'voluptas',265132,23,110,2,'illum'),(56,'ea',271828,14,158,3,'qui'),(57,'et',540542,36,177,7,'dolorem'),(58,'molestiae',691117,26,140,1,'excepturi'),(59,'minus',339476,2,131,3,'a'),(60,'nesciunt',63851,6,137,1,'sed'),(61,'perferendis',784312,16,113,2,'itaque'),(62,'quisquam',10565,28,174,7,'quod'),(63,'commodi',216554,23,128,4,'libero'),(64,'voluptatibus',53550,40,161,3,'quas'),(65,'dolorem',356254,9,127,2,'veritatis'),(66,'ut',305438,30,107,2,'et'),(67,'unde',448141,35,138,6,'nemo'),(68,'inventore',628169,1,156,2,'voluptatem'),(69,'eligendi',85527,40,153,4,'modi'),(70,'ab',632506,16,135,2,'voluptate'),(71,'possimus',514492,33,165,6,'quasi'),(72,'facere',290234,19,136,4,'est'),(73,'deleniti',327647,27,151,7,'aut'),(74,'nihil',552017,11,173,3,'eos'),(75,'culpa',669689,3,122,1,'accusantium'),(76,'saepe',36371,14,145,5,'ipsa'),(77,'maiores',728241,24,144,1,'quaerat'),(78,'et',285974,33,116,1,'et'),(79,'facere',646640,31,149,7,'reiciendis'),(80,'corrupti',468777,31,101,2,'eos'),(81,'dicta',774752,26,150,5,'aut');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruiter`
--

DROP TABLE IF EXISTS `recruiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruiter` (
  `RECRUITER_ID` int NOT NULL,
  `COMPANY_NAME` varchar(45) NOT NULL,
  `LOCATION` varchar(45) DEFAULT NULL,
  `E_MAIL` varchar(45) NOT NULL,
  PRIMARY KEY (`RECRUITER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruiter`
--

LOCK TABLES `recruiter` WRITE;
/*!40000 ALTER TABLE `recruiter` DISABLE KEYS */;
INSERT INTO `recruiter` VALUES (0,'Çınar Inc','Toprak Caddesi 9\r 24747 /Kırklareli','iutku@example.org'),(1,'Onur and Sons','Aliye Mevkii 80\r 98995 /Kocaeli','toprak.mert@example.org'),(2,'Berke, Polat and Atakan','Arhan Kavşağı 418\r 62241 /Muğla','zeynep.göktürk@example.net'),(3,'Emirhanlı-Kutay','Baran Caddesi 497\r 14434 /Ordu','çınar.efe@example.com'),(4,'Mert and Sons','Mövsümov İş Hanı 8\r 22501 /Artvin','tuna.armağan@example.org'),(5,'Berke-Yiğit','Toprak Mevkii 086\r 23221 /Mersin','ggöktürk@example.org'),(6,'Emirhanlı, Şentürk and Koray','Zeynep İş Hanı 33\r 97499 /Batman','emirhan.zeynep@example.org'),(7,'Berke, Serhan and Kutay','Görkem Sokak 784\r 48382 /Elazığ','hcemşid@example.net'),(8,'Göktürk, Deniz and Kağan','Doruk Mevkii 2\r 91088 /Kırşehir','naila14@example.com'),(9,'Mert Group','Zeynep Kavşağı 95\r 02087 /Niğde','bartu.ferid@example.org'),(10,'Baran Ltd','Doruk Kavşağı 14\r 08579 /Van','berkay09@example.org'),(11,'Çınar-Aşkın','Aliye Caddesi 65\r 35362 /Çankırı','yiğit.armağan@example.org'),(12,'Güney, Derin and Emirhanlı','Bartu Sokak 982\r 03357 /Kastamonu','meriç84@example.net'),(13,'Mövsümov Inc','Berk Sokak 934\r 96783 /Bartın','berke.derin@example.net'),(14,'Burak LLC','Çınar Durağı 2\r 07105 /Kastamonu','fatimah.tuna@example.net'),(15,'Barlas-Doruk','Ege Caddesi 895\r 86805 /Hatay','rüzgar.arın@example.org'),(16,'Berk, Polat and Canberk','Yağız Mevkii 01\r 25366 /Ankara','güney.baran@example.org'),(17,'Şentürk PLC','Ege Sokak 292\r 45641 /Tokat','gşükür@example.net'),(18,'Şentürk, Çağan and Emirhanlı','Fatimah Mevkii 9\r 51016 /Samsun','görkem.yağız@example.net'),(19,'Deniz, Tuna and Sarp','Onur Durağı 1\r 03795 /Ankara','toprak.emir@example.com'),(20,'Berkay-Mert','Derin İş Hanı 218\r 32577 /Erzurum','efe42@example.com'),(21,'Derin-Tuna','Atakan Sokak 66\r 13016 /Rize','irtegün.ada@example.net'),(22,'Berkay LLC','Meriç Caddesi 0\r 50819 /Bingöl','serhan.mert@example.com'),(23,'Berkay-Yağız','Rüzgar Mevkii 6\r 34804 /Konya','xşentürk@example.org'),(24,'Mert, Emirhan and Tuna','Rasha Durağı 237\r 58557 /Kastamonu','baran.serhan@example.com'),(26,'Dağhan-Canberk','Sarp Caddesi 9\r 09622 /Aksaray','derin.rasha@example.com'),(27,'Mövsümov PLC','Fatimah Sokak 8\r 55159 /Adana','sarila.armağan@example.com'),(28,'Şentürk, Kağan and Görkem','Meriç Sokak 4\r 03495 /Van','arın.serhan@example.com'),(29,'Emre-Şentürk','Güney Durağı 775\r 84531 /Kahramanmaraş','tuna63@example.net'),(30,'Bora PLC','Sarp Durağı 1\r 34317 /Ordu','zeynep.derin@example.net'),(31,'Burak Inc','Kerem Sokak 30\r 79264 /Mersin','talp@example.com'),(32,'Serhan-Görkem','Görkem Sokak 6\r 10796 /Samsun','naila70@example.org'),(33,'Şükür-Koray','Arın Caddesi 4\r 35505 /Çorum','yağız.emirhan@example.com'),(34,'Yiğit, Baran and Göktürk','Güney Mevkii 83\r 92365 /Karaman','doruk.emre@example.com'),(35,'Bartu-Emirhan','Emirhan Kavşağı 98\r 37659 /Kayseri','toprak.aliye@example.org'),(36,'Armağan Group','Çağan İş Hanı 3\r 14244 /Mersin','cdağhan@example.com'),(37,'Berke LLC','Zeynep Sokak 10\r 78652 /Osmaniye','rasha.rüzgar@example.net'),(38,'Mert, Derin and Kağan','Ada İş Hanı 73\r 18846 /Ordu','doruk.baran@example.org'),(39,'Berkay Ltd','Emirhanlı Sokak 4\r 80854 /İstanbul','açınar@example.net'),(40,'Yiğit Group','Naila Caddesi 72\r 59060 /Mardin','bora.kerem@example.net');
/*!40000 ALTER TABLE `recruiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req_skill`
--

DROP TABLE IF EXISTS `req_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `req_skill` (
  `POSITION_ID` int NOT NULL,
  `SKILL` varchar(45) NOT NULL,
  PRIMARY KEY (`POSITION_ID`,`SKILL`),
  CONSTRAINT `position_1` FOREIGN KEY (`POSITION_ID`) REFERENCES `position` (`POSITION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req_skill`
--

LOCK TABLES `req_skill` WRITE;
/*!40000 ALTER TABLE `req_skill` DISABLE KEYS */;
INSERT INTO `req_skill` VALUES (1,'facilis'),(1,'maxime'),(2,'id'),(2,'ut'),(3,'facere'),(3,'oracle sql'),(4,'oracle sql'),(4,'sunt'),(5,'itaque'),(5,'sit'),(6,'eos'),(6,'hic'),(7,'consequuntur'),(7,'oracle sql'),(8,'minima'),(8,'tenetur'),(9,'architecto'),(9,'cum'),(11,'possimus'),(11,'temporibus'),(12,'ex'),(12,'voluptas'),(13,'et'),(13,'nostrum'),(14,'quaerat'),(14,'voluptatibus'),(15,'laudantium'),(15,'provident'),(16,'aut'),(16,'veniam'),(17,'in'),(17,'recusandae'),(18,'incidunt'),(18,'modi'),(19,'oracle sql'),(19,'quibusdam'),(20,'harum'),(20,'soluta'),(21,'maiores'),(21,'tempora'),(22,'dolores'),(23,'numquam'),(24,'similique'),(25,'esse'),(26,'fugiat'),(27,'eum'),(28,'ipsam'),(29,'consequatur'),(30,'dignissimos'),(31,'quo'),(32,'vero'),(33,'at'),(34,'officia'),(35,'eveniet'),(36,'illum'),(37,'amet'),(38,'sed'),(39,'perspiciatis'),(40,'voluptates'),(41,'magni'),(42,'qui'),(43,'cupiditate'),(44,'deleniti'),(45,'minus'),(46,'quidem'),(47,'nisi'),(48,'quia'),(49,'neque'),(50,'est'),(51,'porro'),(52,'inventore'),(53,'deserunt'),(54,'sint'),(55,'rerum'),(56,'dolorum'),(57,'officiis'),(58,'assumenda'),(59,'vel'),(60,'repudiandae'),(61,'aliquam'),(62,'vitae'),(63,'laboriosam'),(64,'totam'),(65,'ab'),(66,'nihil'),(67,'voluptatem'),(68,'ea'),(69,'oracle sql'),(70,'necessitatibus'),(71,'unde'),(72,'commodi'),(73,'ad'),(74,'oracle sql'),(75,'asperiores'),(76,'alias'),(77,'perferendis'),(78,'ratione'),(79,'oracle sql'),(80,'praesentium'),(81,'iste');
/*!40000 ALTER TABLE `req_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit`
--

DROP TABLE IF EXISTS `submit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submit` (
  `PROJECT_ID` int NOT NULL,
  `TALENT_ID` int NOT NULL,
  `RESULT` int DEFAULT NULL,
  PRIMARY KEY (`PROJECT_ID`,`TALENT_ID`),
  UNIQUE KEY `TALENT_ID_UNIQUE` (`TALENT_ID`),
  UNIQUE KEY `PROJECT_ID_UNIQUE` (`PROJECT_ID`),
  KEY `talent_1_idx` (`TALENT_ID`),
  CONSTRAINT `proj` FOREIGN KEY (`PROJECT_ID`) REFERENCES `position` (`PROJECT_ID`),
  CONSTRAINT `talent_1` FOREIGN KEY (`TALENT_ID`) REFERENCES `talent` (`TALENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit`
--

LOCK TABLES `submit` WRITE;
/*!40000 ALTER TABLE `submit` DISABLE KEYS */;
INSERT INTO `submit` VALUES (100,5,99),(101,8,69),(102,11,53),(103,30,95),(104,45,19),(105,56,33),(106,65,55),(107,71,80),(108,93,35),(109,106,48),(110,123,30),(111,126,2),(112,132,16),(113,143,30),(114,150,68),(115,155,20),(116,170,44),(117,172,49),(118,182,50),(119,203,44),(120,222,42),(121,224,67),(122,226,66),(123,229,61),(124,234,29),(126,254,7),(127,261,95),(128,266,60),(129,272,19),(130,279,0),(131,280,5),(132,288,82),(133,289,42),(134,296,43),(135,301,81),(136,313,72),(137,329,76),(138,335,61),(139,347,15),(140,353,35),(141,358,88),(142,364,53),(143,368,84),(144,373,98),(145,379,23),(146,390,51),(147,408,37),(148,414,87),(149,453,16),(150,456,1),(151,459,100),(152,491,51),(153,494,74),(154,496,8),(155,501,94),(156,502,52),(157,504,81),(158,507,37),(159,508,47),(160,509,42),(161,511,72),(162,512,66),(163,515,54),(164,520,46),(165,527,48),(166,573,6),(167,580,78),(168,583,48),(169,587,13),(170,597,75),(171,598,11),(172,611,58),(173,612,83),(174,629,59),(175,634,22),(176,650,78),(177,651,30);
/*!40000 ALTER TABLE `submit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `take`
--

DROP TABLE IF EXISTS `take`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `take` (
  `TEST_ID` int NOT NULL,
  `TALENT_ID` int NOT NULL,
  PRIMARY KEY (`TEST_ID`,`TALENT_ID`),
  UNIQUE KEY `TEST_ID_UNIQUE` (`TEST_ID`),
  KEY `talent_2_idx` (`TALENT_ID`),
  CONSTRAINT `talent_2` FOREIGN KEY (`TALENT_ID`) REFERENCES `talent` (`TALENT_ID`),
  CONSTRAINT `test_1` FOREIGN KEY (`TEST_ID`) REFERENCES `test` (`TEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `take`
--

LOCK TABLES `take` WRITE;
/*!40000 ALTER TABLE `take` DISABLE KEYS */;
INSERT INTO `take` VALUES (2,5),(3,8),(4,11),(5,30),(6,45),(8,56),(10,65),(12,71),(14,93),(16,106),(17,123),(18,126),(20,132),(21,143),(22,150),(23,155),(24,170),(25,172),(26,182),(27,203),(29,222),(30,224),(31,226),(32,229),(33,234),(34,254),(35,261),(37,266),(38,272),(39,279),(40,280),(41,288),(42,289),(44,296),(46,301),(47,313),(48,329),(49,335),(50,347),(54,353),(55,358),(57,364),(58,368),(59,373),(62,379),(63,390),(68,408),(69,414),(70,453),(72,456),(74,459),(75,491),(78,494),(79,496),(80,501),(81,502),(82,504),(83,507),(84,508),(86,509),(88,511),(89,512),(90,515),(92,520),(93,527),(94,573),(95,580),(97,583),(98,587),(101,597);
/*!40000 ALTER TABLE `take` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talent`
--

DROP TABLE IF EXISTS `talent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talent` (
  `TALENT_ID` int NOT NULL,
  `PHONE_NUMBER` int DEFAULT NULL,
  `E_MAIL` varchar(45) NOT NULL,
  `FIRST_NAME` varchar(45) NOT NULL,
  `LAST_NAME` varchar(45) NOT NULL,
  `CITY` varchar(45) NOT NULL,
  `AGE` int DEFAULT NULL,
  `EXPECTED_SALARY` int DEFAULT NULL,
  `TITLE` mediumtext NOT NULL,
  `GENDER` varchar(45) DEFAULT NULL,
  `RESUME_LINK` varchar(45) NOT NULL,
  PRIMARY KEY (`TALENT_ID`),
  UNIQUE KEY `TALENT_ID_UNIQUE` (`TALENT_ID`),
  UNIQUE KEY `E_MAIL_UNIQUE` (`E_MAIL`),
  UNIQUE KEY `PHONE_NUMBER_UNIQUE` (`PHONE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talent`
--

LOCK TABLES `talent` WRITE;
/*!40000 ALTER TABLE `talent` DISABLE KEYS */;
INSERT INTO `talent` VALUES (5,644353504,'tdeniz@example.com','Sarila','Toprak','Kırşehir',42,133579,'Corrupti corporis architecto vel voluptas minima iste.','erkek','http://sarp.info/'),(8,579967754,'eemirhan@example.com','Meriç','Güney','Yozgat',31,501964,'Aliquid consequuntur laborum asperiores rerum voluptas quis rerum.','erkek','http://www.emirhanlışükür.biz/'),(11,707236229,'zeynep.baran@example.com','Derin','Göktürk','Kastamonu',49,313277,'Dolores distinctio et et nostrum nesciunt rerum quia.','kadin','http://www.polat.com/'),(30,636173222,'yiğit.çınar@example.com','Naila','Çağan','Artvin',58,608195,'Magnam repellat qui provident laudantium aut rerum recusandae neque.','erkek','http://www.aşkın.org/'),(45,1238640542,'sarila.çınar@example.com','Meriç','Mövsümov','İstanbul',50,466545,'Software Developer','kadin','http://alp.com/'),(56,2036192788,'mert.rasha@example.com','Çağan','Çınar','Diyarbakır',24,621399,'Enim corrupti pariatur odio molestias repellendus.','kadin','http://www.utku.com/'),(65,1522244838,'tderin@example.org','Fatimah','Doruk','Tekirdağ',40,251598,'Software Developer','kadin','http://www.atakanderin.org/'),(71,1031137141,'dgöktürk@example.org','Berkay','Sarp','Bingöl',25,207405,'Consequatur vel ut ducimus sint id.','kadin','http://dağhan.net/'),(93,556779765,'cemşid.berk@example.net','Arın','Barlas','Van',57,89707,'Dolores dolorum tempore quis.','kadin','http://toprak.org/'),(106,798820205,'jbora@example.net','Toprak','Meriç','Artvin',46,795710,'Deleniti vel illo molestias et ut.','kadin','http://deniz.com/'),(123,979898846,'koray.aşkın@example.org','Rasha','Cemşid','Zonguldak',21,99516,'Expedita et voluptates debitis maxime vel.','erkek','http://www.burakkağan.net/'),(126,1180737406,'tefe@example.org','Tuna','Serhan','Karabük',33,217203,'Non quia asperiores eveniet.','erkek','http://www.armağan.com/'),(132,2080123080,'çağan.mövsümov@example.com','Aliye','Görkem','Çorum',35,706895,'Voluptatem harum est voluptatum voluptatibus quaerat tempore.','kadin','http://www.alp.info/'),(143,1053303767,'ada.baran@example.org','Baran','Barlas','Kastamonu',25,649726,'Et et nam ut reiciendis nobis non harum quam.','erkek','http://www.emreemre.com/'),(150,1564165139,'naila.alp@example.net','Sarila','Dağhan','Uşak',47,226726,'Quisquam officia necessitatibus provident sed ullam accusantium molestiae.','kadin','http://bartu.com/'),(155,1481734642,'utku52@example.net','Sarila','Deniz','Konya',43,484920,'Voluptas voluptas ipsa ab alias.','erkek','http://www.armağanirtegün.com/'),(170,2060029111,'qatakan@example.org','Bora','Yağız','Nevşehir',43,629475,'Software Developer','kadin','http://www.irtegün.biz/'),(172,1080253641,'msarp@example.net','Cem','Kerem','Rize',20,434440,'Eum sequi cum enim.','kadin','http://yağızarmağan.biz/'),(182,348024863,'dtoprak@example.org','Efe','Atakan','Konya',30,265368,'Voluptas sequi tempore ut sed quaerat quam repellat.','kadin','http://irtegün.com/'),(203,779157955,'arın82@example.net','Arın','Burak','Balıkesir',37,104142,'Quam mollitia vitae accusantium sed repellendus.','kadin','http://www.emirhan.com/'),(222,410265682,'meriç.kağan@example.org','Naila','Çağan','Bingöl',33,259690,'Software Developer','kadin','http://toprak.com/'),(224,689351476,'wkutay@example.com','Arhan','Alp','Kilis',18,402597,'Aperiam sit officia qui voluptas atque enim.','kadin','http://www.derin.net/'),(226,1694966312,'ntoprak@example.org','Rasha','Berke','Ağrı',48,275234,'Qui natus eaque sed voluptatibus doloremque magnam ut.','kadin','http://www.dağhan.com/'),(229,1548475275,'umert@example.org','Zeynep','Yağız','Batman',35,663480,'Software Developer','kadin','http://yiğitatakan.biz/'),(234,1759470912,'koray69@example.net','Tuna','Bartu','Kars',49,599635,'Aliquam vel labore molestiae distinctio.','erkek','http://www.arınarın.com/'),(254,663213248,'ada72@example.net','Fatimah','Onur','Artvin',22,178568,'Software Developer','erkek','http://çınar.info/'),(261,142466223,'pgörkem@example.net','Derin','Utku','Muş',18,231763,'Software Developer','erkek','http://doruk.com/'),(266,530033893,'aliye.yağız@example.com','Canberk','Efe','Amasya',45,531401,'Ipsam non ea odio inventore ut blanditiis facere.','erkek','http://www.kerem.com/'),(272,2076923532,'qderin@example.com','Aliye','Mert','Bartın',30,642420,'Software Developer','erkek','http://arhan.net/'),(279,2011233503,'kaşkın@example.com','Göktürk','Göktürk','İstanbul',45,664778,'Et maiores doloribus ut saepe illum voluptatem beatae.','kadin','http://www.bora.biz/'),(280,1736966772,'şükür.sarila@example.com','Arhan','Emirhan','Gaziantep',27,770509,'Quae vero voluptatem sapiente.','erkek','http://www.emirhanlı.com/'),(288,1189451098,'arın.kağan@example.net','Berk','Derin','Bayburt',56,565349,'Hic sed quo aliquid blanditiis rem sed inventore.','kadin','http://www.canberkaşkın.com/'),(289,2136742673,'rüzgar.meriç@example.org','Aliye','Rüzgar','Kahramanmaraş',52,714815,'Software Developer','kadin','http://www.toprakdoruk.info/'),(296,208189917,'aşkın41@example.net','Rüzgar','Emirhanlı','Şırnak',34,477884,'Atque aspernatur consequatur non unde ut ducimus alias neque.','kadin','http://derinmert.com/'),(301,2032610786,'sarila55@example.net','Ada','Göktürk','Siirt',54,123362,'Atque ab vero quia tenetur et.','kadin','http://berke.com/'),(313,1636773140,'ada.güney@example.com','Kerem','Ege','Erzincan',46,574581,'Software Developer','kadin','http://www.dorukege.net/'),(329,675430412,'meriç96@example.net','Kutay','Göktürk','Rize',51,278278,'Accusamus eum qui voluptates qui odio.','erkek','http://serhanburak.com/'),(335,917453733,'ssarp@example.com','Arın','Rüzgar','Sinop',46,625514,'Qui ipsa aperiam cum et.','kadin','http://utkuonur.biz/'),(347,1718405925,'fonur@example.org','Zeynep','Arın','Bolu',35,393126,'Consequatur nulla enim deleniti ex.','erkek','http://görkem.com/'),(353,1620233289,'canberk.berkay@example.org','Berke','Berke','Trabzon',56,200797,'Software Developer','kadin','http://şentürkdeniz.com/'),(358,609749916,'rüzgar.ferid@example.org','Arın','Yağız','Karaman',40,238761,'Enim eaque rerum sequi debitis rerum perspiciatis aliquam.','kadin','http://barlasgörkem.com/'),(364,1202805369,'efe.ada@example.org','Ege','Deniz','Balıkesir',54,171437,'Reiciendis est architecto ut eum nam.','kadin','http://www.aşkınemre.com/'),(368,573179011,'rasha.onur@example.org','Arın','Aşkın','Kars',55,661500,'Iusto quaerat modi officiis nulla voluptatem.','kadin','http://www.alp.com/'),(373,1069671968,'meriç35@example.net','Doruk','Efe','Adıyaman',40,590354,'Quis nam corporis est quam.','erkek','http://cemşid.biz/'),(379,1083951654,'rasha16@example.com','Yağız','Armağan','Balıkesir',39,526480,'In tempore tempora explicabo assumenda et reprehenderit.','erkek','http://görkem.com/'),(390,752982522,'rasha99@example.com','Sarila','Kutay','Bilecik',30,164255,'Quo perspiciatis ut est ut est possimus.','erkek','http://www.emre.net/'),(408,1786223636,'doruk.kerem@example.net','Zeynep','Arhan','Kütahya',28,496065,'Fugiat aliquid mollitia nostrum ut nihil enim.','kadin','http://bartu.biz/'),(414,2120954216,'ada.yağız@example.net','Berk','Dağhan','Kocaeli',30,706912,'Quaerat distinctio quo ex nostrum autem non iusto ullam.','erkek','http://koray.com/'),(453,959398569,'narmağan@example.com','Arhan','Bora','Tekirdağ',38,311912,'Voluptatum quae tempora doloribus sed iure omnis tempore.','kadin','http://derinarın.com/'),(456,850957692,'dutku@example.net','Görkem','İrtegün','Balıkesir',36,294158,'Optio dolor ipsum quia sit ullam.','erkek','http://www.şükür.org/'),(459,590071885,'gserhan@example.com','Sarila','Göktürk','Ankara',37,568663,'Eius voluptas odio fuga ut nemo in.','kadin','http://boraemirhan.com/'),(491,691965953,'onur09@example.com','Görkem','Toprak','Nevşehir',32,527204,'Veniam architecto unde nostrum ratione.','kadin','http://www.kutay.com/'),(494,312825222,'parın@example.com','Emre','Alp','Gümüşhane',25,692289,'Quod sapiente reiciendis non voluptas voluptate et.','erkek','http://www.çağan.com/'),(496,1076352448,'spolat@example.org','Sarp','Onur','Mardin',43,652841,'Quibusdam veritatis eaque velit in et est animi.','kadin','http://emirhanlıderin.com/'),(501,875814277,'ada.mert@example.net','Çınar','Derin','Amasya',54,586536,'Dicta esse dolores nesciunt.','kadin','http://kağandoruk.com/'),(502,1810349370,'ferid80@example.net','Zeynep','Baran','Adana',58,366494,'Qui quia a quisquam porro voluptate facilis.','kadin','http://emirhanlı.com/'),(504,297443630,'zeynep63@example.com','Naila','Kerem','İzmir',53,435107,'Aperiam velit similique itaque sint sit ut.','erkek','http://www.toprak.com/'),(507,2028171046,'aliye.cemşid@example.net','Doruk','Kutay','Erzurum',37,532929,'Qui soluta ut non rerum.','kadin','http://www.burak.org/'),(508,499772709,'sarila19@example.org','Arın','Berke','Rize',20,246059,'Mollitia explicabo sit voluptas sequi.','erkek','http://berkay.com/'),(509,250384,'aaşkın@example.org','Sarila','Alp','Aksaray',42,512183,'Est et ratione ea hic magnam maiores aut.','kadin','http://yağız.org/'),(511,1882727737,'sarila.ege@example.org','Sarila','Şükür','Bilecik',33,689502,'Voluptas maiores quis tempora debitis voluptatem aspernatur est quisquam.','erkek','http://www.şentürkcanberk.com/'),(512,689429050,'doruk.sarila@example.net','Fatimah','Baran','Kars',23,677216,'Sed dolorum hic at quis quae quis illo enim.','kadin','http://www.armağanrüzgar.net/'),(515,48860094,'yağız.atakan@example.net','Utku','Serhan','Burdur',59,498649,'Esse soluta id commodi.','kadin','http://baran.com/'),(520,289743434,'canberk.cemşid@example.com','Efe','Güney','Bingöl',35,443461,'Et eos et animi.','erkek','http://kerem.biz/'),(527,51911736,'polat25@example.com','Dağhan','Emirhanlı','Kahramanmaraş',51,587185,'Repellendus maiores doloremque placeat voluptatem quidem odio.','kadin','http://www.atakan.info/'),(573,904139312,'onur.arın@example.com','Meriç','Yağız','Kocaeli',41,46497,'Quia et at in illo.','erkek','http://derinbaran.com/'),(580,1557768861,'ybarlas@example.net','Zeynep','Yiğit','Bursa',24,565278,'Dolore quis harum voluptas non tempora.','kadin','http://serhan.com/'),(583,797776669,'aliye99@example.org','Sarila','Ege','Aydın',31,310878,'Modi vel voluptatem impedit dicta libero.','erkek','http://www.deniz.com/'),(587,1417113053,'naila00@example.net','Mert','Sarp','Kastamonu',43,538013,'Et nesciunt commodi est quasi quia et.','kadin','http://cemşid.com/'),(597,1093981982,'ayağız@example.com','Ada','Kerem','Adıyaman',36,177314,'Tempore voluptatem consequatur fugiat eius.','erkek','http://efe.com/'),(598,311413197,'burak.türker@example.org','Derin','Çağan','Ardahan',38,545815,'Quod repellendus quos molestiae id sed.','kadin','http://aşkınbaran.biz/'),(611,243872427,'onur.zeynep@example.org','Naila','Rüzgar','Sakarya',30,689929,'Impedit accusamus id nemo rerum non est qui.','erkek','http://www.keremonur.com/'),(612,2147483647,'görkem64@example.org','Rüzgar','Derin','Ankara',56,455156,'A eos dolores a.','kadin','http://dağhan.org/'),(629,1599821134,'çağan.ada@example.org','Naila','Rüzgar','Erzincan',19,738934,'Blanditiis eveniet qui deserunt nisi suscipit sint et.','kadin','http://onur.org/'),(634,1635108977,'akerem@example.net','Zeynep','Arhan','İzmir',28,501712,'Dolorem earum repudiandae animi.','kadin','http://www.dorukkerem.net/'),(650,2133883998,'irtegün.doruk@example.org','Barlas','Aşkın','Afyon',40,657960,'Rerum nemo dolorem tempore ut nihil recusandae aut.','kadin','http://derinşentürk.biz/'),(651,200646376,'aemirhan@example.net','Zeynep','Barlas','Şanlıurfa',26,491714,'Dolore quo assumenda ipsum nihil ratione.','kadin','http://www.bora.org/'),(653,1132755070,'mmövsümov@example.com','Arın','Efe','İstanbul',40,558913,'Et dolorum aut atque fugit veritatis occaecati totam tempore.','kadin','http://aşkıncanberk.com/'),(655,1432909616,'meriç.zeynep@example.net','Çağan','Atakan','Osmaniye',44,27154,'Aut cupiditate voluptatem dolorem modi.','kadin','http://tunakağan.biz/'),(660,1946256116,'sarila.mert@example.net','Sarila','Çınar','Iğdır',52,147979,'Suscipit amet suscipit in atque vitae non.','kadin','http://www.denizbaran.biz/'),(661,1237322554,'derin97@example.org','Sarila','Derin','Sivas',32,46149,'Vero quo earum doloremque debitis nostrum perspiciatis velit.','kadin','http://www.utkuarmağan.com/'),(673,1460532785,'utku.arın@example.net','Sarila','Cemşid','Erzincan',38,247882,'Minus non iste esse labore aut.','kadin','http://onur.com/'),(674,1048441880,'derin26@example.org','Alp','Armağan','Bayburt',27,120571,'Et cupiditate commodi quidem culpa similique aperiam.','kadin','http://irtegün.com/'),(681,1594590733,'zeynep.toprak@example.com','Tuna','Berkay','Batman',29,37002,'Laborum earum temporibus aperiam harum.','kadin','http://ege.com/'),(692,489045805,'arhan.naila@example.net','Efe','Yağız','Giresun',59,359398,'Error blanditiis animi nihil explicabo veritatis amet reiciendis.','kadin','http://cemşidsarp.com/'),(695,1894984806,'derin97@example.net','Berk','İrtegün','Trabzon',27,641510,'Adipisci aspernatur quisquam placeat odio perferendis vero.','kadin','http://www.dorukbarlas.org/'),(699,1976241457,'ada.canberk@example.com','Ege','Emirhan','Burdur',44,205959,'Et suscipit similique culpa unde molestias.','erkek','http://www.arın.org/'),(708,1645546729,'fatimah.mert@example.org','Naila','Berkay','Manisa',44,283975,'Provident laborum nisi quia veniam sed rem.','erkek','http://www.deniz.com/'),(724,641620834,'kutay15@example.org','Atakan','Çınar','Bitlis',51,646047,'Sit rerum neque omnis tempora libero dignissimos.','kadin','http://www.deniz.org/'),(727,651043221,'ycemşid@example.org','Derin','Arın','Niğde',24,307660,'Earum expedita debitis optio consequatur.','erkek','http://rüzgar.com/'),(737,337219148,'ymeriç@example.net','Zeynep','Canberk','Erzurum',39,392909,'Tenetur mollitia nulla ullam voluptas.','kadin','http://www.korayyiğit.net/'),(751,688335769,'ada21@example.net','Zeynep','Bora','Batman',57,398090,'Accusantium non qui voluptates tempora.','erkek','http://cemşidşükür.info/'),(753,2115316560,'pgüney@example.net','Emirhan','Ada','Gaziantep',23,185926,'Illum non nam optio reiciendis.','kadin','http://polatgörkem.com/'),(757,1791857619,'çınar.aliye@example.org','Ege','Sarp','Tekirdağ',36,118781,'Id voluptates accusamus error optio ipsum tempora.','kadin','http://arın.net/'),(773,316560600,'fberkay@example.com','Emre','Çağan','Isparta',43,364882,'Impedit omnis rerum blanditiis laboriosam velit animi consequatur.','erkek','http://aşkın.com/'),(786,272554811,'jada@example.com','Çağan','Derin','Kahramanmaraş',57,629837,'Neque voluptas sed hic harum.','erkek','http://ege.com/'),(788,1901250060,'onur.derin@example.net','Sarila','Ege','Hakkari',46,592052,'Amet unde consequatur et qui magni tempora voluptates.','kadin','http://adaarhan.com/'),(814,391748890,'barlas28@example.org','Türker','Sarp','Rize',29,779914,'Rerum non voluptates dignissimos vel.','kadin','http://görkem.com/'),(835,1469724255,'zeynep.alp@example.net','Ada','Berke','Tunceli',22,558037,'In velit voluptatum harum dolores quibusdam laborum.','kadin','http://canberkemirhanlı.info/'),(836,1698073759,'atakan.ada@example.net','Arın','Çınar','Adana',51,727023,'Voluptatibus tempore error sit aperiam et excepturi.','kadin','http://www.derin.com/'),(837,2009373656,'ssarp@example.org','Çınar','Yağız','Burdur',45,462225,'Dolores dolorum eum vel et et commodi eligendi numquam.','erkek','http://www.emirhanlıarmağan.com/'),(838,1411176462,'ege.serhan@example.com','Rasha','Armağan','Amasya',54,25197,'Earum aut delectus dolores eum.','erkek','http://www.koraybora.com/'),(839,1269601792,'meriç78@example.net','Türker','Arhan','Kastamonu',56,380959,'Incidunt corrupti id minima rerum.','kadin','http://utkumövsümov.com/'),(842,1606152943,'cemşid.göktürk@example.net','Aliye','Utku','Eskişehir',54,714417,'Architecto accusantium neque quia.','erkek','http://egetuna.com/'),(873,1456213373,'baran.berkay@example.net','Ada','Bartu','Çorum',34,350376,'Magnam sunt sit et et.','kadin','http://www.bartutuna.com/'),(896,1423086994,'ege.aşkın@example.org','Cem','Arın','Rize',60,719439,'Nemo tenetur non cumque quasi quia ea reiciendis.','erkek','http://arınirtegün.com/'),(902,1472080480,'sarp.berkay@example.com','Arın','Kağan','Isparta',45,260780,'Et laborum ducimus sint et quae quibusdam numquam.','kadin','http://serhanderin.com/'),(906,1715950371,'rasha.emre@example.net','Alp','Bartu','Sivas',56,245319,'Accusantium debitis asperiores mollitia quo aliquid.','kadin','http://www.dorukmövsümov.com/'),(915,1395304385,'hkerem@example.com','Emir','Ege','Zonguldak',28,594174,'Commodi eligendi aut nihil deleniti eos dolorum tenetur.','erkek','http://www.yağız.org/'),(916,1167771731,'lkutay@example.org','Fatimah','Derin','Karabük',22,315995,'In et ea architecto.','kadin','http://www.toprak.com/'),(936,1361892511,'cderin@example.net','Derin','Ada','Bartın',49,707246,'Similique assumenda sed ullam laudantium.','kadin','http://www.alpgöktürk.com/'),(940,283743561,'çağan.canberk@example.com','Aliye','Derin','Afyon',34,114467,'Impedit consequatur qui rem ea.','kadin','http://onuratakan.biz/'),(952,2009621210,'opolat@example.org','Rasha','Güney','Bilecik',47,348105,'Ut qui sapiente provident amet.','erkek','http://www.toprakpolat.com/'),(970,1126612987,'aliye83@example.net','Sarila','Canberk','Gaziantep',43,228125,'Fuga quaerat excepturi rerum suscipit non nostrum quaerat.','erkek','http://toprak.com/'),(973,1114931988,'larhan@example.org','Ferid','Ege','Şanlıurfa',43,665536,'Ab nam pariatur natus voluptatum facilis.','kadin','http://www.barantuna.com/'),(982,1745511260,'mçağan@example.net','Ada','Görkem','Sinop',18,426803,'Perferendis molestias laborum natus reprehenderit earum.','kadin','http://www.güney.com/'),(989,155296511,'zeynep94@example.net','Sarila','Alp','Zonguldak',39,463967,'Tenetur vero voluptatem rerum debitis perspiciatis.','erkek','http://göktürk.com/'),(995,1227400303,'görkem.derin@example.org','Baran','Tuna','Trabzon',58,641833,'Totam odio iste aut accusantium.','erkek','http://mertaşkın.net/'),(998,1903496810,'ada.tuna@example.net','Burak','Emirhan','Balıkesir',37,785543,'Mollitia et consequuntur voluptates est.','kadin','http://www.tunadağhan.com/'),(1000,1217496933,'arın08@example.org','Barlas','Görkem','Kayseri',39,488520,'Nihil vel possimus ipsum voluptatem et.','kadin','http://emre.net/'),(1025,197148186,'jirtegün@example.com','Naila','Dağhan','Manisa',53,287232,'Harum adipisci sequi ipsam perspiciatis voluptatum error molestiae.','kadin','http://sarpşentürk.com/'),(1074,412679031,'kutay.tuna@example.net','Zeynep','Aşkın','Bitlis',35,312438,'Quam animi rem dolor.','kadin','http://kerem.com/'),(1163,1828477569,'canberk39@example.org','Alp','Dağhan','Diyarbakır',23,229809,'Adipisci sint ipsam accusamus quia pariatur reiciendis impedit inventore.','kadin','http://kağan.com/'),(1176,902530291,'wrüzgar@example.org','Yiğit','Mövsümov','Bursa',42,350913,'Occaecati in facilis omnis et quam reiciendis corporis.','kadin','http://www.emirhan.com/'),(1181,1001448537,'derin50@example.org','Sarila','Emirhan','Kütahya',54,496359,'Cupiditate sed labore blanditiis iste qui quas nihil.','kadin','http://www.rüzgarirtegün.info/'),(1231,3640000,'gatakan@example.net','Emir','Şentürk','Şırnak',21,304841,'Odit nisi rerum repudiandae consequatur nulla aperiam enim.','kadin','http://dağhanpolat.com/'),(1274,916622165,'edağhan@example.com','Fatimah','Görkem','Yalova',27,610195,'Nihil ab nemo voluptatem.','erkek','http://dorukberke.net/'),(1275,1931351229,'emir44@example.com','Ferid','Emre','Iğdır',51,21671,'Molestias doloremque quis recusandae sit quo molestiae qui.','kadin','http://dağhan.com/'),(1344,851687328,'baran.berk@example.org','Sarila','Berke','İstanbul',50,79746,'Laboriosam aliquam molestiae blanditiis totam corporis quia.','erkek','http://emre.biz/'),(1431,16978229,'zemirhanlı@example.org','Derin','Emirhanlı','Bursa',50,627345,'Fugiat beatae quas enim aspernatur aut beatae nihil id.','erkek','http://armağan.info/'),(1453,814943597,'güney.yiğit@example.net','Atakan','Berk','Tokat',31,191927,'Impedit ipsum nemo voluptatem quas fugit et eos.','erkek','http://www.dorukdeniz.com/'),(1521,1667155063,'çınar.bartu@example.org','Kerem','Derin','Osmaniye',51,373137,'Vitae fugiat voluptates iste asperiores iure quia magnam.','kadin','http://www.baran.com/'),(1535,1664259880,'xpolat@example.com','Bartu','Ege','Zonguldak',42,222228,'Reprehenderit eum quae dolores quidem error dolorem dolorem.','kadin','http://www.kağankutay.com/'),(1587,192697862,'bora.çınar@example.net','Meriç','Polat','Erzincan',52,478595,'Temporibus fugit laboriosam corporis.','kadin','http://dağhan.net/'),(1592,1443163735,'türker.atakan@example.org','Bartu','Efe','Kars',51,62427,'Corrupti nihil est eum ad et.','erkek','http://serhan.com/'),(1647,538047834,'ibarlas@example.org','Toprak','Alp','Isparta',19,56266,'Quo at iste ut ut.','kadin','http://www.canberkege.com/'),(1725,1256554915,'rasha.armağan@example.com','Onur','Ada','Zonguldak',42,560186,'Quisquam incidunt nihil quo cum sunt non.','kadin','http://www.barandoruk.com/'),(1747,1492123098,'berkay29@example.org','Arın','Kutay','Ordu',35,348643,'Provident non deleniti blanditiis inventore et.','erkek','http://çınar.com/'),(1770,1144804600,'cem.mert@example.org','Fatimah','Cemşid','Iğdır',24,598922,'Odio voluptatem quisquam ad ut autem quia.','erkek','http://kutay.info/'),(1777,1804698921,'açınar@example.org','Armağan','Polat','Düzce',35,587100,'Sequi labore libero voluptatem nostrum et.','erkek','http://ege.com/'),(1803,132915225,'sarila.çınar@example.net','Cem','Yağız','Kütahya',53,251219,'Enim consequuntur asperiores fugit nemo.','kadin','http://www.aşkın.com/'),(1810,808452626,'canberk.canberk@example.com','Çağan','Alp','Hatay',24,484583,'Dolorum sed est quia harum.','erkek','http://www.denizemirhanlı.com/'),(1837,1276178133,'fatimah.irtegün@example.com','Derin','Bora','Isparta',38,688766,'Neque facere totam laboriosam ab quia rerum facere.','erkek','http://berk.com/'),(1842,284928304,'emirhanlı.ali@example.org','Aliye','Çağan','Osmaniye',46,283626,'Non ut sed quod dolores labore sint qui.','erkek','http://www.atakan.com/'),(1845,188718217,'ekağan@example.org','Berke','Şükür','Sinop',33,249711,'Vitae voluptatibus ullam adipisci quae officia aliquam exercitationem.','kadin','http://irtegün.com/'),(1849,2131787193,'fatimah.görkem@example.com','Naila','Berk','Bilecik',49,343276,'Velit exercitationem perspiciatis atque autem soluta natus temporibus.','kadin','http://www.güneyserhan.com/'),(1873,2088424796,'arın77@example.net','Arın','Ege','Bursa',29,618976,'Accusamus cupiditate hic rerum in iusto.','kadin','http://www.ada.com/'),(1908,1160002653,'polat28@example.org','Alp','Çağan','Rize',33,391586,'Quidem quis ducimus sed aspernatur.','erkek','http://aşkın.com/'),(1923,1851646524,'bora.rüzgar@example.net','Ada','Görkem','Çorum',38,563951,'Saepe placeat reprehenderit dolorum est sit aliquam ducimus et.','kadin','http://ege.biz/'),(1954,1382006386,'arın90@example.org','Cem','Yağız','Aksaray',21,386082,'Aliquam modi et libero rerum ad sint.','kadin','http://alpatakan.com/'),(2006,882908181,'meriç.irtegün@example.com','Derin','Göktürk','Muş',58,31586,'Culpa inventore maxime aut aspernatur aut.','erkek','http://kutaybartu.com/'),(2079,152563584,'koray.kutay@example.org','Arın','Polat','Elazığ',24,482207,'Natus et quod est fugit aut itaque doloremque consequatur.','erkek','http://yiğitpolat.org/'),(2106,1730516045,'jyiğit@example.org','Canberk','Canberk','İzmir',41,246561,'Quae laudantium eos voluptas officia itaque et et fugit.','erkek','http://berkaygüney.net/'),(2174,1463229949,'fgöktürk@example.net','Aliye','Mert','Bursa',51,258920,'Unde aperiam harum cumque molestiae aperiam voluptas a.','erkek','http://www.ege.net/'),(2193,1665667630,'efe.meriç@example.com','Sarila','Doruk','Ardahan',26,659199,'Aut quos quam deleniti.','kadin','http://berke.com/'),(2248,625076877,'naila.armağan@example.org','Fatimah','Tuna','Afyon',21,774210,'Atque laborum ab ratione molestias totam dolorem.','kadin','http://www.meriçonur.com/'),(2279,723127807,'şentürk.koray@example.net','Rasha','Bora','Uşak',19,504166,'Ea maiores porro nam hic et.','kadin','http://www.tuna.info/'),(2369,798403048,'alp.yağız@example.org','Sarila','Efe','İstanbul',49,123362,'Quis nemo vero cumque laborum ut dolorum voluptatum.','erkek','http://www.aşkın.info/'),(2386,100245054,'isarp@example.com','Arın','Barlas','Tunceli',32,572584,'Labore aut deleniti sit et sed quo architecto.','kadin','http://www.kutay.info/'),(2401,384144612,'çınar.dağhan@example.com','Rasha','Cemşid','Tekirdağ',38,295203,'Et quia nostrum eum corporis quisquam omnis.','erkek','http://şükürkoray.biz/'),(2480,2068858635,'fatimah.toprak@example.org','Çınar','Çınar','Tokat',50,768163,'Harum consequatur eos ea officiis.','kadin','http://www.egeyağız.net/'),(2516,739458539,'barlas05@example.net','Derin','Arın','Kocaeli',37,282770,'Laudantium explicabo provident recusandae et ullam.','kadin','http://derinderin.com/'),(2521,469002261,'derin.zeynep@example.com','Aliye','Arhan','Mersin',36,591468,'Odit deserunt non dolor nesciunt dicta sunt.','kadin','http://www.emre.com/'),(2523,920597715,'mçınar@example.net','Zeynep','Ada','Samsun',20,648884,'Voluptatem accusamus ut illo assumenda vel.','kadin','http://dağhan.com/'),(2578,302954664,'derin.emirhanlı@example.com','Çağan','Baran','Kilis',41,697213,'Vitae quasi eos eum cupiditate ipsa voluptatem earum.','kadin','http://www.efeemre.com/'),(2593,585077394,'cberkay@example.com','Naila','Kerem','Trabzon',40,171136,'Qui laboriosam repellat id veritatis.','kadin','http://arın.com/'),(2648,1380086796,'armağan.baran@example.net','Türker','Emirhanlı','Sinop',36,645997,'Quia perferendis repellat qui provident assumenda doloremque in.','erkek','http://çınar.com/'),(2697,1619278058,'emre.derin@example.org','Çınar','Derin','Konya',27,602435,'Itaque provident et autem soluta autem saepe.','erkek','http://www.borakutay.com/'),(2706,406334831,'deniz.aşkın@example.org','Arın','Berke','Niğde',34,775309,'Suscipit deleniti nihil amet voluptates.','kadin','http://www.doruk.net/'),(2741,1721561940,'bartu67@example.com','Toprak','Çınar','Trabzon',56,561363,'Ratione qui qui suscipit quibusdam assumenda culpa.','erkek','http://armağanbaran.biz/'),(2759,1574214771,'naila.efe@example.net','Meriç','Armağan','Yozgat',40,723981,'Debitis ut corrupti voluptates.','kadin','http://www.koray.com/'),(2855,502824570,'kerem.tuna@example.net','Meriç','Arın','Kırşehir',43,62328,'Aliquid ea repudiandae enim sapiente illo dolores unde.','erkek','http://armağan.com/'),(2932,1537266226,'spolat@example.com','Ege','Alp','Kırıkkale',27,131859,'Accusantium dolor ad vel cum inventore corporis.','kadin','http://cemşidrüzgar.com/'),(2961,1453670114,'oalp@example.com','Bartu','Arhan','Mardin',52,705986,'Ut facere voluptatem esse ut.','kadin','http://korayrüzgar.com/'),(3027,67121247,'polat.zeynep@example.org','Rasha','Güney','Bingöl',52,71495,'Unde eligendi ullam magni quia.','kadin','http://bartu.com/'),(3030,1690596143,'bartu.meriç@example.net','Fatimah','Serhan','Bolu',57,124034,'Mollitia dolores amet illo ipsam et.','erkek','http://www.sarpdeniz.org/'),(3035,752659888,'barlas.fatimah@example.org','Kerem','Tuna','Burdur',49,180035,'Aut fuga qui harum dolorem autem.','kadin','http://www.yağız.com/'),(3057,360187405,'wşentürk@example.net','Meriç','Efe','Rize',45,34767,'Officiis molestiae mollitia sunt quaerat.','erkek','http://www.burakmert.com/'),(3075,288936133,'fatimah34@example.org','Arın','Serhan','Tunceli',54,771415,'Aut expedita officiis nam molestias corrupti facere.','kadin','http://barlas.com/'),(3115,1393836279,'ege.arhan@example.net','Ada','Dağhan','Giresun',54,133362,'Incidunt repudiandae ut et voluptatem pariatur vel sed.','kadin','http://kağan.info/'),(3314,607208491,'meriç46@example.org','Aliye','Mert','Aydın',33,458726,'Eum saepe minus dolores repellendus quae ipsa.','kadin','http://www.arınarhan.net/'),(3378,1021999736,'sarp.berk@example.net','Güney','İrtegün','Rize',42,451738,'Nihil est voluptatum debitis perspiciatis dolores.','kadin','http://deniz.com/'),(3403,1551302345,'vcemşid@example.org','Arhan','Canberk','Bursa',18,670810,'Nemo quis sint eos illum voluptatem est.','kadin','http://cemşid.org/'),(3424,854742896,'tuna.rasha@example.org','Aliye','Polat','Karaman',39,578567,'Dolores corporis aut velit officiis et.','kadin','http://www.baran.info/'),(3434,229579127,'bartu.aliye@example.com','Dağhan','Kutay','Ardahan',38,245232,'Magni optio accusamus quia et.','kadin','http://onurtoprak.com/'),(3446,1658078585,'şükür.çınar@example.org','Kağan','Tuna','Burdur',37,718138,'Ipsam quasi assumenda aspernatur eos dolorem.','erkek','http://www.korayderin.info/'),(3472,1509337640,'polat00@example.com','Doruk','Emirhan','Antalya',56,182480,'Repudiandae minus excepturi eos autem ut sit sunt.','erkek','http://www.irtegün.com/'),(3528,747047411,'barlas69@example.com','Zeynep','Serhan','Kütahya',21,577302,'Deleniti dolorem dolores maiores sint tempora.','erkek','http://www.şentürk.com/'),(3530,2031826922,'polat.polat@example.com','Derin','Derin','Bayburt',21,105637,'Numquam sequi eaque quis placeat non et.','erkek','http://kutay.com/'),(3604,1021806102,'barlas.ada@example.org','Efe','Onur','Karaman',53,243038,'Repudiandae id alias optio perspiciatis.','erkek','http://utkuberke.com/'),(3608,1137105177,'sarp.efe@example.com','Zeynep','Berke','Denizli',21,56409,'Dolor ut doloribus rerum veritatis similique et ea.','erkek','http://dağhan.info/'),(3612,143034867,'sarila.barlas@example.net','Rasha','Şentürk','Düzce',26,754035,'Voluptatem rerum debitis qui.','erkek','http://baran.net/'),(3640,489638221,'şentürk.armağan@example.org','Derin','Bora','Amasya',54,389390,'Eos a quis voluptas quis.','kadin','http://www.mert.com/'),(3806,808390605,'naila73@example.net','Göktürk','Cemşid','Giresun',28,50159,'Nulla sunt quia ut qui ex.','kadin','http://görkemsarp.com/'),(3886,1940288558,'rşentürk@example.com','Berk','Aşkın','Adana',21,510170,'Libero aperiam sit ea quibusdam voluptatem minima.','kadin','http://www.çağanirtegün.com/'),(3940,677971035,'bora.görkem@example.net','Ada','Güney','Erzincan',19,593978,'Corrupti neque cum dolorem reprehenderit velit.','kadin','http://www.tunaderin.com/'),(3964,776429241,'sberke@example.org','Kağan','Utku','Kırşehir',37,540533,'At sunt culpa ducimus.','erkek','http://tuna.com/'),(4090,1575552975,'berkay.kutay@example.net','Derin','Sarp','Aksaray',26,746678,'Voluptatibus et provident beatae quas in quia beatae.','kadin','http://görkem.com/'),(4099,1654514685,'lbarlas@example.net','Naila','Efe','Mersin',30,177126,'Consequatur atque minima iste quia aperiam quia.','erkek','http://görkem.com/'),(4115,431380365,'nberk@example.net','Zeynep','Aşkın','Niğde',52,483462,'Neque quod et deleniti in natus nihil.','kadin','http://www.ege.com/'),(4125,168650687,'barlas68@example.org','Türker','Tuna','Diyarbakır',46,114708,'Praesentium non aliquid quod amet.','erkek','http://göktürkgüney.net/'),(4204,1327586410,'aliye76@example.com','Ferid','Deniz','Tunceli',42,783316,'Corporis natus eveniet omnis quas.','kadin','http://cemşidderin.net/'),(4207,577973280,'sburak@example.com','Emirhan','Görkem','Uşak',20,282060,'Perferendis voluptatem voluptas natus similique distinctio provident est.','kadin','http://mertege.biz/'),(4244,1883907922,'serhan.çağan@example.org','Ferid','Şentürk','Denizli',22,24873,'Cupiditate ratione vero cupiditate facere.','kadin','http://www.canberk.info/'),(4257,1139655753,'otoprak@example.org','Serhan','Serhan','Bolu',37,296953,'Vel ex assumenda autem accusamus.','kadin','http://www.irtegünefe.com/'),(4263,1073770489,'sarp.bartu@example.org','Zeynep','İrtegün','Çankırı',36,652082,'Quae illum autem neque rerum.','erkek','http://www.çağan.com/'),(4293,915634718,'irtegün.ada@example.org','Deniz','Barlas','Edirne',54,110585,'In quia voluptas qui expedita porro praesentium.','erkek','http://canberk.com/'),(4320,240585421,'doruk15@example.com','Doruk','Berke','Rize',43,727292,'Quia doloremque vitae repellat omnis beatae qui delectus.','erkek','http://şükür.com/'),(4471,428826855,'rasha.serhan@example.com','Berke','Şükür','Bartın',28,315053,'Dolores vel doloremque molestiae non voluptatem in officia.','erkek','http://çınarşükür.biz/'),(4494,711516128,'emir.serhan@example.net','Sarila','Barlas','Kastamonu',60,721030,'Et qui ea qui eum sed odio repudiandae.','erkek','http://mövsümov.net/'),(4497,442582413,'çağan.meriç@example.net','Baran','Cemşid','Mersin',41,340956,'Est voluptates eligendi eum blanditiis.','erkek','http://www.toprakatakan.com/'),(4548,495858184,'ykağan@example.org','Sarila','Göktürk','Kayseri',34,208090,'In beatae consequatur ab quisquam.','kadin','http://www.berkay.com/'),(4619,1387660433,'yağız.tuna@example.com','Ada','Yiğit','Batman',21,297589,'Qui accusantium nulla exercitationem reiciendis harum fugiat.','erkek','http://göktürk.org/'),(4629,242918728,'polat.aliye@example.com','Ada','Mövsümov','Çorum',30,386137,'Eos quia quidem velit in.','kadin','http://berke.com/'),(4660,1711624052,'mert40@example.com','Naila','Dağhan','Edirne',26,613845,'Rerum delectus dolorem at.','kadin','http://www.yiğityağız.biz/'),(4683,1218532972,'jemirhanlı@example.net','Derin','Alp','Kocaeli',20,35073,'Dignissimos omnis est placeat.','kadin','http://www.berkeberke.com/'),(4934,1888027409,'onur.mert@example.net','Serhan','Kerem','Burdur',21,272141,'Aut temporibus architecto consequuntur dolorem.','kadin','http://mert.com/'),(5035,667950129,'ali.cemşid@example.org','Sarila','Ada','Erzincan',49,391534,'Nihil ea voluptas ad qui autem quo.','kadin','http://www.onur.biz/'),(5103,427160599,'fatimah.baran@example.org','Barlas','Armağan','Kırşehir',39,769352,'Vel et quia amet at soluta esse.','erkek','http://www.güney.net/'),(5171,575714372,'meriç19@example.org','Meriç','Aşkın','Bingöl',24,276579,'Mollitia quo nulla nobis vero dolorem aspernatur.','kadin','http://berkay.info/'),(5182,859400389,'atakan48@example.org','Güney','Aşkın','Yalova',49,54794,'Et et autem aut dicta.','kadin','http://ada.org/'),(5192,208328197,'qmövsümov@example.org','Mert','Bartu','Hatay',20,309088,'Et soluta eveniet nobis excepturi expedita saepe quia inventore.','erkek','http://www.ada.org/'),(5222,930451795,'çınar.rüzgar@example.net','Arın','Arhan','Artvin',26,362673,'Ea id amet corrupti vero iste.','kadin','http://www.berk.com/'),(5269,1959847271,'berk.görkem@example.org','Zeynep','Ege','Düzce',46,478737,'Velit sint voluptate repudiandae deserunt nisi facilis sunt.','kadin','http://bartumövsümov.com/'),(5270,1321907822,'rüzgar.meriç@example.net','Arın','Meriç','Ağrı',38,42412,'Temporibus deleniti corrupti quia blanditiis et quis.','kadin','http://www.canberk.biz/'),(5340,930546272,'dağhan98@example.org','Berkay','Rüzgar','Ordu',36,622620,'Molestiae aliquam impedit velit eligendi hic est facere.','kadin','http://www.cemşid.com/'),(5364,1783342437,'rüzgar76@example.net','Atakan','Dağhan','Aksaray',20,144459,'Aut et blanditiis cumque occaecati neque eaque.','erkek','http://www.berke.com/'),(5449,169936221,'armağan.burak@example.com','Ege','Görkem','Denizli',36,762118,'Totam autem quidem expedita itaque dolor sed.','kadin','http://www.mertkutay.info/'),(5612,2030579996,'sarp07@example.net','Deniz','Meriç','Hakkari',23,574404,'Temporibus dolorem molestiae illo consequatur a ut est.','kadin','http://kağanalp.com/'),(5628,440232578,'naila48@example.net','Güney','Polat','Balıkesir',25,720317,'Quo adipisci eos repellendus dolorem in ut molestias et.','erkek','http://www.meriç.com/'),(5701,799847031,'yağız.alp@example.net','Fatimah','Utku','Iğdır',29,640828,'Ex optio dolorem laboriosam accusamus mollitia ut.','erkek','http://www.alp.com/'),(5734,309446203,'ryağız@example.net','Toprak','Burak','Mersin',52,709447,'Asperiores ut omnis sit dolor fugit.','erkek','http://cemşidege.org/'),(5782,948396668,'efe.zeynep@example.net','Derin','Çınar','Diyarbakır',39,49774,'Cum consequatur suscipit deleniti voluptas eos est.','kadin','http://www.tuna.com/'),(5837,720632491,'güney01@example.net','Derin','Derin','Manisa',22,455284,'Dolore qui in sit adipisci dolorum voluptas.','erkek','http://derin.com/'),(5928,1336156811,'mert.berk@example.com','Doruk','Berkay','Zonguldak',27,414214,'Quia molestiae nesciunt nihil tempora.','erkek','http://toprak.com/'),(5943,632915525,'türker23@example.org','Sarila','Mövsümov','Amasya',21,756685,'Aliquid deserunt tenetur et et quos consequuntur.','kadin','http://www.doruk.com/'),(5975,643396452,'fatimah99@example.net','Fatimah','Emre','Hakkari',58,417290,'Unde nam tenetur eaque enim illo.','erkek','http://yiğitgüney.com/'),(5983,302229132,'armağan.meriç@example.org','Efe','Göktürk','Kilis',49,705583,'Amet aut beatae aut asperiores quis dicta.','erkek','http://alptoprak.com/'),(6020,503324733,'fkoray@example.net','Toprak','Berke','Sakarya',21,588035,'Perferendis quo voluptas quis.','erkek','http://emre.com/'),(6098,21012723,'berk.emir@example.org','Canberk','Bartu','Rize',55,617160,'Praesentium aut omnis nisi rem voluptatum ut sequi in.','kadin','http://www.tuna.com/'),(6139,1321342919,'deniz.aliye@example.net','Burak','Mövsümov','Van',53,502820,'Expedita labore dignissimos exercitationem mollitia.','erkek','http://www.emirhanlı.net/'),(6182,1666229015,'sarila53@example.com','Meriç','Efe','Eskişehir',54,206999,'Perferendis aut aut asperiores sunt odio.','erkek','http://www.tuna.net/'),(6231,1375201123,'kçınar@example.org','Emirhan','Emre','Bartın',31,793993,'Adipisci esse sapiente mollitia.','erkek','http://kutaybartu.com/'),(6233,1794222229,'efe.rüzgar@example.org','Derin','Barlas','Karabük',50,344167,'Alias dolor consequuntur eos repudiandae.','kadin','http://www.barlas.com/'),(6241,793907338,'naila12@example.net','Rasha','Kutay','Gaziantep',31,377097,'Exercitationem impedit aut a quisquam delectus deserunt.','erkek','http://emirhanlı.com/'),(6245,765642028,'ege.yağız@example.org','Aliye','Deniz','Tokat',28,319830,'Velit magni at rerum voluptas voluptatem.','kadin','http://onur.com/'),(6289,1226148175,'sarila.armağan@example.com','Çağan','Burak','Aksaray',37,643138,'Animi sed minima facere aut.','erkek','http://www.armağanyağız.com/'),(6327,365525018,'mövsümov.rasha@example.org','Sarila','Aşkın','Eskişehir',36,246146,'Eos accusamus magni libero consectetur modi autem iure sit.','kadin','http://www.koray.biz/'),(6411,1450129775,'fatimah70@example.net','Fatimah','Emre','Adıyaman',55,425956,'Consequatur ad alias voluptas omnis.','erkek','http://www.şükür.com/'),(6478,483344176,'zeynep25@example.com','Aliye','Efe','Denizli',60,737164,'Repudiandae a dignissimos quae quisquam sed.','erkek','http://ada.info/'),(6512,1601631912,'yağız76@example.net','Görkem','Berk','Ordu',20,486338,'Ut rerum reprehenderit suscipit nesciunt minus quis in.','erkek','http://www.görkem.com/'),(6540,1692836526,'serhan.meriç@example.net','Fatimah','Baran','Siirt',25,496818,'Non aut in quisquam.','kadin','http://yağız.com/'),(6541,1211118285,'derin.deniz@example.org','Kutay','Ege','İzmir',20,403823,'Doloribus est error perspiciatis recusandae.','kadin','http://www.tuna.org/'),(6553,1116076291,'fatimah54@example.net','Derin','Emirhanlı','Erzurum',52,291888,'Voluptates id blanditiis soluta optio sed amet.','kadin','http://emirhanlı.biz/'),(6554,591928358,'jarmağan@example.net','Sarila','Armağan','Elazığ',59,682222,'Est tempore consequatur quam nihil ad totam expedita.','erkek','http://rüzgargörkem.com/'),(6558,125042743,'mrüzgar@example.com','Onur','Tuna','Siirt',53,722426,'Ex et laborum cum odit.','kadin','http://toprakgöktürk.com/'),(6591,1408628299,'arın.naila@example.com','Derin','Yağız','Samsun',42,19245,'Aliquam delectus esse cupiditate temporibus nihil et.','kadin','http://yiğit.com/'),(6593,1038903056,'fatimah.derin@example.com','Zeynep','Berk','Batman',35,777253,'Commodi nemo rerum quia minus.','erkek','http://www.utkuderin.net/'),(6759,642080700,'serhan.deniz@example.com','Naila','Güney','Isparta',31,38667,'Corrupti sed ut eius quaerat quidem expedita.','kadin','http://www.arın.com/'),(6783,464289708,'yiğit57@example.net','Ada','Serhan','Adıyaman',28,528308,'Quasi pariatur ut nihil ea.','kadin','http://www.bartubora.com/'),(6894,111814952,'deniz.sarp@example.org','Meriç','Emirhanlı','Hatay',30,422465,'Dignissimos aspernatur neque et amet necessitatibus illo.','erkek','http://www.derinmeriç.com/'),(7099,954630733,'derin59@example.com','Rasha','Şentürk','Burdur',25,739583,'Dolore alias quia sunt qui iste consequuntur sed.','kadin','http://www.egebora.com/'),(7212,1825604936,'zeynep36@example.org','Arın','Şükür','Erzurum',53,417054,'Velit quam omnis reprehenderit necessitatibus quis quia.','erkek','http://kağan.info/'),(7298,73286441,'qgöktürk@example.net','Aşkın','Ege','Çankırı',52,275064,'Placeat porro soluta dolor.','erkek','http://www.rüzgaratakan.com/'),(7325,1071711532,'utku46@example.com','Sarila','Toprak','Mardin',36,427772,'Repudiandae aliquid labore id deserunt animi nemo assumenda facilis.','kadin','http://deniz.com/'),(7381,1970926469,'mburak@example.com','Meriç','Polat','Yozgat',18,228554,'Voluptatem laboriosam et eligendi cum aut ratione iste.','kadin','http://polat.com/'),(7413,627273465,'çınar.rüzgar@example.org','Derin','Arhan','İstanbul',22,447669,'Sunt distinctio culpa aut quaerat est dignissimos.','kadin','http://kağan.com/'),(7494,38268633,'yberke@example.org','Rasha','Çınar','Afyon',24,208236,'Ea eius quidem architecto nesciunt omnis commodi.','kadin','http://www.şentürkkağan.org/'),(7527,495083970,'nmeriç@example.com','Onur','Barlas','Hakkari',26,388492,'Mollitia ad amet repellat provident et quae.','erkek','http://www.mert.com/'),(7603,49241957,'onur.görkem@example.com','Fatimah','Görkem','Iğdır',40,508913,'Ab officia et est nihil nostrum eum nihil ducimus.','erkek','http://www.serhan.net/'),(7648,2777522,'rasha54@example.org','Çınar','Burak','Bursa',20,70592,'Quis ab corrupti aut natus labore dolore.','kadin','http://www.deniz.com/'),(7660,382994790,'tuna.meriç@example.net','Zeynep','Çağan','Zonguldak',43,308196,'Fugiat laborum atque sit aliquid.','erkek','http://www.berk.com/'),(7674,2126051146,'arın27@example.com','Türker','Şükür','Erzincan',36,541939,'Culpa accusantium velit ipsam voluptas ut debitis in.','erkek','http://www.yiğit.com/'),(7747,758442262,'çınar.rasha@example.org','Bora','İrtegün','Yalova',40,411532,'Omnis sit et culpa nulla ea dolorum non doloremque.','erkek','http://alp.info/'),(7797,242520349,'efe.berkay@example.com','Naila','Polat','Karaman',22,763924,'Sapiente deserunt ex maxime enim eum.','kadin','http://baran.com/'),(7922,1643961633,'çağan68@example.org','Doruk','Bartu','Zonguldak',54,584639,'Similique ut eius illum est consectetur saepe.','kadin','http://www.onurbora.org/'),(8013,1799538362,'naila.deniz@example.org','Arın','Şükür','Çorum',55,722599,'Dolores voluptas omnis quibusdam est.','kadin','http://www.armağan.com/'),(8056,1125753596,'rüzgar.atakan@example.com','Rasha','Dağhan','İstanbul',46,175649,'Et iure nihil ea sed ad.','kadin','http://burak.biz/'),(8075,850228133,'emirhan.derin@example.com','Aliye','Kağan','İzmir',37,627168,'Accusamus harum nulla qui in ea corrupti est culpa.','erkek','http://tuna.net/'),(8149,72169154,'tuna.kağan@example.net','Canberk','Dağhan','Afyon',52,714125,'Qui possimus odit eum harum quam illo.','kadin','http://www.çağanyiğit.com/'),(8184,625619652,'koray.kerem@example.org','Aliye','Emirhan','Bartın',44,193653,'Quas quia et in vel omnis repellendus aut.','kadin','http://keremçınar.com/'),(8204,432294651,'göktürk.sarila@example.net','Sarila','Emre','Adıyaman',39,582857,'Debitis veniam porro veritatis voluptate quia.','kadin','http://www.mövsümov.com/'),(8358,1053665929,'uarmağan@example.org','Aşkın','Kağan','Ardahan',47,160945,'Sunt inventore saepe recusandae et voluptatum.','kadin','http://www.kağan.net/'),(8376,267869766,'koray.arhan@example.org','Ada','Kağan','Hatay',28,470541,'Reiciendis nesciunt enim aliquam voluptatem.','erkek','http://berkada.com/'),(8406,1824340899,'aliye.utku@example.com','Rasha','Canberk','Muğla',37,790686,'Et laboriosam sed voluptas assumenda esse quod tenetur.','kadin','http://www.görkem.info/'),(8445,648751472,'fatimah.bartu@example.com','Rüzgar','Berk','Kayseri',59,621252,'Voluptate voluptatem nihil quo voluptas sit possimus.','kadin','http://barandeniz.com/'),(8480,1368920193,'türker76@example.com','Tuna','Kerem','Antalya',57,221583,'Nulla nemo dicta facilis laudantium illum molestiae.','erkek','http://cemşid.info/'),(8491,597098044,'göktürk.fatimah@example.net','Armağan','Burak','Yozgat',38,658598,'Nobis eos sit labore eius quas.','erkek','http://emirhan.com/'),(8542,1482767050,'toprak.deniz@example.net','Meriç','Güney','Erzincan',23,15473,'Et assumenda modi facere itaque aut quidem mollitia.','kadin','http://www.koraypolat.com/'),(8576,233738961,'hefe@example.com','Barlas','Tuna','Gümüşhane',22,607007,'Quos esse tempore rerum nulla qui maxime.','erkek','http://www.burak.info/'),(8630,957857582,'arın.güney@example.net','Aliye','Kerem','Tunceli',58,643362,'Aut doloribus adipisci aperiam veritatis.','kadin','http://alpemre.com/'),(8640,27832580,'görkem.kutay@example.net','Aşkın','Mert','Aydın',54,310068,'Quos et vel blanditiis excepturi recusandae velit delectus laudantium.','kadin','http://cemşid.net/'),(8659,1427292537,'şükür.derin@example.net','Rüzgar','Utku','Karaman',42,95649,'Nemo ut necessitatibus cum repellendus hic similique at.','kadin','http://yiğit.org/'),(8662,1765386933,'gyağız@example.net','Mert','Ege','Antalya',48,249711,'Maxime eum aliquam ipsam odit voluptas velit ex.','erkek','http://berkay.biz/'),(8721,1028075250,'içağan@example.com','Arın','Şentürk','Giresun',54,713232,'Dolor id enim voluptatem dignissimos laboriosam autem.','kadin','http://alpdeniz.com/'),(8772,102322821,'qtuna@example.org','Arhan','Kutay','Osmaniye',28,676193,'Provident impedit id quidem.','erkek','http://çağan.net/'),(8773,1069514898,'zeynep.irtegün@example.net','Doruk','Derin','Bartın',21,193578,'Ad blanditiis qui dignissimos nobis non.','erkek','http://www.derinyağız.info/'),(8805,2057541141,'yağız.cemşid@example.net','Arın','Rüzgar','Bitlis',34,479322,'Earum voluptatum quia dolore.','erkek','http://çınar.com/'),(8850,647993195,'fkoray@example.org','Ege','Aşkın','Denizli',41,743567,'Laborum eveniet voluptatem commodi qui ut.','erkek','http://efe.org/'),(8909,479526549,'jrüzgar@example.net','Türker','Emre','İzmir',29,234686,'Veritatis aperiam assumenda tenetur et qui voluptatibus velit.','kadin','http://rüzgararhan.org/');
/*!40000 ALTER TABLE `talent` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TALENT_AGE_WARNING` BEFORE INSERT ON `talent` FOR EACH ROW IF NEW.AGE < 18 THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'TALENT SHOULD BE OLDER THAN 18 YEARS OLD!';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `SALARY_WARNING` BEFORE INSERT ON `talent` FOR EACH ROW BEGIN
IF NEW.EXPECTED_SALARY > (SELECT MAX(EXPECTED_SALARY)
FROM TALENT AS T, POSITION AS P, APPLY AS A 
WHERE A.POSITION_ID = P.POSITION_ID AND A.TALENT_ID = T.TALENT_ID AND EXPECTED_SALARY > ESTIMATED_SALARY)
THEN
SET NEW.EXPECTED_SALARY = MAX(ESTIMATED_SALARY);
END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `TEST_ID` int NOT NULL,
  `TEST_NAME` varchar(45) NOT NULL,
  `TEST_TYPE` varchar(45) NOT NULL,
  `RESULT` int DEFAULT NULL,
  PRIMARY KEY (`TEST_ID`),
  UNIQUE KEY `TEST_ID_UNIQUE` (`TEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (2,'molestiae','eaque',5),(3,'qui','eos',28),(4,'exercitationem','doloremque',69),(5,'aut','quidem',9),(6,'animi','et',87),(8,'aspernatur','recusandae',5),(10,'quis','ea',99),(12,'aut','non',0),(14,'aut','consequuntur',54),(16,'at','provident',59),(17,'voluptatibus','non',69),(18,'iusto','voluptatum',5),(20,'facere','debitis',6),(21,'dolore','delectus',38),(22,'recusandae','maxime',54),(23,'eveniet','soluta',33),(24,'molestiae','odit',82),(25,'aut','rerum',17),(26,'voluptatem','ut',32),(27,'quisquam','dolores',60),(29,'at','odit',82),(30,'modi','dolorem',71),(31,'earum','tempora',22),(32,'rerum','et',85),(33,'voluptas','impedit',21),(34,'aperiam','in',91),(35,'voluptas','ipsum',86),(37,'voluptatem','voluptatem',60),(38,'assumenda','quae',91),(39,'non','dolor',10),(40,'sit','dolor',6),(41,'numquam','numquam',42),(42,'nostrum','dolor',83),(44,'quasi','quia',78),(46,'sunt','qui',33),(47,'ut','dignissimos',94),(48,'laborum','aliquam',21),(49,'recusandae','excepturi',6),(50,'amet','fugit',24),(54,'aut','neque',91),(55,'rerum','exercitationem',99),(57,'consequatur','vel',14),(58,'dolor','itaque',10),(59,'dolores','possimus',26),(62,'ut','nihil',25),(63,'eveniet','voluptas',13),(68,'sequi','magnam',4),(69,'atque','est',90),(70,'consectetur','qui',84),(72,'nemo','dolores',67),(74,'doloremque','ullam',93),(75,'aut','impedit',49),(78,'eos','perspiciatis',16),(79,'voluptates','non',7),(80,'maiores','laudantium',11),(81,'doloremque','cum',20),(82,'sint','velit',92),(83,'omnis','animi',69),(84,'cum','alias',36),(86,'optio','amet',31),(88,'ut','est',45),(89,'et','possimus',44),(90,'repellendus','et',97),(92,'et','tempore',74),(93,'blanditiis','quo',47),(94,'quas','id',30),(95,'similique','assumenda',77),(97,'voluptatem','enim',85),(98,'eveniet','facere',30),(101,'rem','expedita',29);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `RESULT_WARNING` BEFORE INSERT ON `test` FOR EACH ROW BEGIN
IF NEW.RESULT < 0 THEN
SET NEW.RESULT = 0;
END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

SELECT p.position_id as PositionId, p.position_name as PositionName, p.estimated_salary as EstimatedSalary, AVG(t.expected_salary) as AvgExpectedSalary, r.company_name as CompanyName, 
	   SUBSTRING(r.location,locate('/',r.location),20) as CompanyLocation, count(*) as NumOfApplicants, AVG(age) as AverageAge, AVG(results) as AvgTestResults
FROM position p natural join recruiter r, apply a, talent t,
	(SELECT p.position_id, s.talent_id, s.result as results
	 FROM submit as s natural join position as p) as res
WHERE a.position_id = p.position_id AND res.position_id = p.position_id AND t.talent_id = a.talent_id
GROUP BY p.position_id, p.position_name, p.estimated_salary, r.company_name, r.location
ORDER BY AvgTestResults DESC;

SELECT r.rid as TotalRecruiters, t.tid as TotalApplicants, a.aid as TotalApplications, p.pid as TotalPositions, e.eid as TotalEvents, s.sid as TotalProjectsSubmitted
FROM (SELECT count(recruiter_id) rid FROM recruiter) r, 
	 (SELECT count(talent_id) tid FROM talent) t, 
     (SELECT count(position_id) pid FROM position) p, 
     (SELECT count(event_id) eid FROM event) e, 
     (SELECT count(*) sid FROM submit) s,
	 (SELECT count(*) aid FROM apply) a

-- Dump completed on 2023-01-20 21:15:21
