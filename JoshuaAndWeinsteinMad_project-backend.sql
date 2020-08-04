CREATE DATABASE  IF NOT EXISTS `batman` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `batman`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: batman
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `character_appearsin_title`
--

DROP TABLE IF EXISTS `character_appearsin_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_appearsin_title` (
  `chid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`chid`,`tid`),
  KEY `cattid_fk` (`tid`),
  CONSTRAINT `catchid_fk` FOREIGN KEY (`chid`) REFERENCES `characters` (`chid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cattid_fk` FOREIGN KEY (`tid`) REFERENCES `title` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_appearsin_title`
--

LOCK TABLES `character_appearsin_title` WRITE;
/*!40000 ALTER TABLE `character_appearsin_title` DISABLE KEYS */;
INSERT INTO `character_appearsin_title` VALUES (119,1),(162,1),(66,2),(162,2),(85,3),(162,3),(7,4),(141,4),(162,4),(1,5),(73,5),(157,5),(158,5),(162,6),(3,7),(5,7),(16,7),(17,7),(32,7),(65,7),(70,7),(77,7),(99,7),(119,7),(125,7),(133,7),(148,7),(162,7),(163,7),(5,8),(66,8),(68,8),(125,8),(141,8),(158,8),(162,8),(5,9),(16,9),(68,9),(119,9),(162,9),(5,10),(51,10),(66,10),(68,10),(93,10),(141,10),(156,10),(162,10),(32,11),(162,11),(3,12),(5,12),(16,12),(17,12),(32,12),(65,12),(70,12),(77,12),(99,12),(119,12),(125,12),(133,12),(148,12),(162,12),(163,12),(32,13),(134,13),(141,13),(162,13),(68,14),(79,14),(162,14),(44,15),(162,15),(162,16),(162,17),(5,18),(24,18),(46,18),(68,18),(117,18),(162,18),(162,19),(3,20),(5,20),(16,20),(17,20),(24,20),(32,20),(50,20),(65,20),(68,20),(70,20),(77,20),(99,20),(119,20),(125,20),(133,20),(148,20),(162,20),(163,20),(141,21),(162,21),(68,22),(5,23),(15,23),(17,23),(45,23),(46,23),(48,23),(54,23),(66,23),(111,23),(117,23),(119,23),(125,23),(134,23),(141,23),(148,23),(154,23),(158,23),(162,23),(141,24),(162,24),(5,25),(68,25),(111,25),(125,25),(162,25),(16,26),(17,26),(43,26),(48,26),(66,26),(141,26),(148,26),(162,26),(70,27),(141,27),(162,27),(85,28),(162,28),(43,29),(141,29),(162,29),(15,30),(43,30),(48,30),(68,30),(141,30),(162,30),(5,31),(66,31),(68,31),(125,31),(141,31),(158,31),(162,31),(162,32),(162,33),(162,34),(46,35),(66,35),(128,35),(162,35),(46,36),(66,36),(128,36),(141,37),(162,37),(162,38),(66,39),(119,39),(125,39),(162,39),(48,40),(54,40),(111,40),(162,40),(162,41),(32,42),(148,42),(162,42),(24,43),(28,43),(5,44),(16,44),(43,44),(48,44),(54,44),(66,44),(68,44),(119,44),(141,44),(148,44),(162,44),(17,45),(46,45),(49,45),(162,45),(162,46),(162,47),(43,48),(162,48),(5,49),(66,49),(68,49),(125,49),(141,49),(158,49),(162,49),(50,50),(125,50),(162,50),(162,51),(15,52),(99,52),(162,52),(15,53),(16,53),(99,53),(117,53),(119,53),(125,53),(134,53),(162,53),(162,54),(154,55),(162,55),(16,56),(119,56),(162,56),(162,57),(162,58),(162,59),(117,60),(134,60),(162,60),(44,61),(119,61),(162,61),(32,62),(68,62),(162,62),(32,63),(68,63),(162,63),(32,64),(68,64),(162,64),(8,65),(119,65),(162,65),(16,66),(119,66),(141,66),(148,66),(162,66),(162,67),(25,68),(68,68),(141,68),(162,68),(119,69),(162,69),(16,70),(68,70),(141,70),(162,70),(2,71),(73,71),(153,71),(162,71),(24,72),(66,72),(68,72),(125,72),(162,72),(68,73),(141,73),(162,73),(32,74),(117,74),(119,74),(134,74),(162,74),(68,75),(162,75),(66,76),(119,76),(162,76),(70,77),(119,77),(121,77),(141,77),(162,77),(162,78),(162,79),(162,80),(68,81),(162,81),(10,82),(47,82),(143,82),(162,82),(46,83),(162,83),(162,84),(117,85),(162,85),(162,86),(16,87),(49,87),(162,87),(16,88),(162,89),(162,90),(16,91),(68,91),(117,91),(118,91),(119,91),(125,91),(162,91),(125,92),(5,93),(16,93),(48,93),(49,93),(66,93),(68,93),(77,93),(111,93),(119,93),(125,93),(141,93),(162,93),(68,94),(119,95),(141,96),(119,97),(16,98),(119,98),(162,98),(162,99),(70,100),(68,101),(111,101),(119,101),(162,101),(119,102),(119,103),(32,104),(162,106),(162,107),(68,108),(162,108),(5,109),(66,109),(68,109),(86,109),(141,109),(162,109),(162,110),(5,111),(15,111),(68,111),(86,111),(125,111),(134,111),(162,111),(119,112),(141,112),(162,112),(141,113),(16,114),(17,114),(43,114),(48,114),(66,114),(141,114),(148,114),(162,114),(167,115),(66,116),(119,116),(162,116),(54,117),(125,117),(141,117),(162,117);
/*!40000 ALTER TABLE `character_appearsin_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `chid` int(11) NOT NULL AUTO_INCREMENT,
  `chname` varchar(300) NOT NULL,
  PRIMARY KEY (`chid`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,'Aaron Cash'),(2,'Aaron Helzinger, Amygdala'),(3,'Ace the Bat Hound'),(4,'Alberto Falcone'),(5,'Alfred Thaddeus Crane Pennyworth'),(6,'Aliki, Margot Marceau, Double Dare'),(7,'Amadeus Arkham'),(8,'Anatoli Knyazev, KGBeast'),(9,'Anthony Tony Zucco'),(10,'Joseph Joe Chill Chilton'),(11,'Anthony Lupus, The Werewolf'),(12,'Arnold Etchison, Abattoir'),(13,'Arnold Wesker, The Ventriloquist, Scarface'),(14,'Arthur Brown, The Cluemaster'),(15,'Bane'),(16,'Barbara Gordon, Batgirl'),(17,'Basil Karlo, Clayface'),(18,'Bat-Mite'),(19,'Batzarro'),(20,'Bette Kane, Bat-Girl'),(21,'Bette Kane, Flamebird'),(22,'Brion Markov, Geo-Force'),(23,'Cameron van Cleer, Killer Moth'),(24,'Carmine The Roman Falcone'),(25,'Caroline Keene Carrie Kelley'),(26,'Catalina Flores, Tarantula'),(27,'Colin Wilkes, Abuse'),(28,'Commissioner Gillian B. Loeb'),(29,'Cornelius Stirk'),(30,'Court of Owls'),(31,'Crime Scene Unit officer Jim Corrigan'),(32,'Damian Wayne'),(33,'Damian Wayne, Robin IV'),(34,'Deever Tweed (Tweedledee)'),(35,'Detective Arnold John Flass'),(36,'Detective Crispus Allen'),(37,'Detective Stanley Lawrence Kitch'),(38,'District Attorney Janice Porter'),(39,'Doctor Aesop'),(40,'Doctor Karl Hellfern, Doctor Death'),(41,'Dr. Alexander Sartorius, Doctor Phosphorus'),(42,'Dr. Francine Langstrom, She-Bat'),(43,'Dr. Harleen Frances Quinzel, Harley Quinn'),(44,'Dr. Hugo Strange'),(45,'Dr. Jervis Tetch, The Mad Hatter'),(46,'Dr. Jonathan Crane, The Scarecrow'),(47,'Dr. Leslie Maurin Thompkins'),(48,'Dr. Pamela Lillian Isley, Poison Ivy'),(49,'Dr. Robert Kirkland Kirk Langstrom, Man-Bat'),(50,'Dr. Thomas Tommy Elliot, Hush'),(51,'Dr. Thomas Wayne'),(52,'Dudley Soames, Torque'),(53,'Dumfree Tweed (Tweedledum)'),(54,'Edward Nigma, The Riddler'),(55,'Edward Nygma, The Riddler'),(56,'Emily Lia Briggs, Looker'),(57,'Eric Needham, Black Spider'),(58,'Evan Gregory'),(59,'Ferris Boyle'),(60,'Floyd Lawton, Deadshot'),(61,'Frederick Rhino, Rhino'),(62,'Gabrielle Doe, Halo'),(63,'Giuseppe Pino Maroni'),(64,'Harlan Combs, Firebug'),(65,'Harold Allnut'),(66,'Harvey Dent, Two-Face'),(67,'Holly Robinson'),(68,'James Jim Worthington Gordon'),(69,'James Jim Worthington Gordon Sr.'),(70,'Jason Peter Todd, Red Hood'),(71,'Jean-Paul Valley, Azrael'),(72,'Jenna Duffy, The Carpenter'),(73,'Jeremiah Arkham'),(74,'John Grayson'),(75,'Johnny LaMonica, Black Spider'),(76,'Jor Rigger, Firebug'),(77,'Julia Remarque-Pennyworth'),(78,'Julian Gregory Day, Calendar Man'),(79,'Julie Madison'),(80,'Lady Elaine Marsh-Morton, Lady Vic'),(81,'Lady Shiva'),(82,'League of Assassins'),(83,'Lester Buchinsky, Electrocutioner'),(84,'Lewis Lew Moxon'),(85,'Lonnie Machin, Anarky'),(86,'Lucius Fox'),(87,'Luigi Maroni'),(88,'Lyle Bolton, Lock-Up'),(89,'Mallory Moxon'),(90,'Mario Falcone'),(91,'Marion Mary Louise Dahl, Baby Doll'),(92,'Mark Desmond, Blockbuster'),(93,'Martha Wayne'),(94,'Mary Elizabeth Bette Kane, Bat-Girl'),(95,'Mary Grayson'),(96,'Matthew Matt Hagen, Clayface'),(97,'Maxie Zeus'),(98,'Mayor Hamilton Hill'),(99,'Michael Washington Lane, Azrael'),(100,'Morris Eagleton, Gargoyle'),(101,'Mortimer Drake, The Cavalier'),(102,'Mr. Freeze (as Mr Zero)'),(103,'Mr. Freeze (as Mr. Zero)'),(104,'Natalia Knight, Nocturna'),(105,'Nathan Finch, Gearhead'),(106,'Niccolai Tepes, The Monk'),(107,'Nina Damfino, Echo, Diedre Vance'),(108,'Nora Fries'),(109,'Nyssa Raatko'),(110,'Officer Stan Merkel'),(111,'Oswald Chesterfield Cobblepot, The Penguin'),(112,'Otis Flannegan, Ratcatcher'),(113,'Peyton Riley, The Ventriloquist, Scarface'),(114,'Preston Payne, Clayface'),(115,'Professor Achilles Milo'),(116,'Prometheus II'),(117,'Ras al Ghul'),(118,'Red Robin, Anarky'),(119,'Richard John Dick Grayson, Robin'),(120,'Roger, Marla Elliot'),(121,'Roman Sionis, Black Mask'),(122,'Roy Raymond, Jr., Owlman'),(123,'Rupert Thorne'),(124,'Salvatore Vincent Sal The Boss Maroni'),(125,'Selina Kyle, Catwoman'),(126,'Senior'),(127,'Sherman Fine, The Broker'),(128,'Silver St. Cloud'),(129,'Sir Edmund Dorrance, King Snake'),(130,'Slade Joseph Wilson, Deathstroke'),(131,'Sofia Gigante Falcone'),(132,'Sondra Fuller, Lady Clay'),(133,'Stephanie Brown, Spoiler, Robin, Batgirl'),(134,'Talia al Ghul'),(135,'Tatsu Yamashiro, Katana'),(136,'Terrance Terry McGinnis, Batman'),(137,'Terrance Terry McGinnis, Future Batman'),(138,'Thaddeus Tad Trigger'),(139,'The Batman Who Laughs (Dark Nights Metal)'),(140,'The Birds of Prey'),(141,'The Joker'),(142,'The Monk'),(143,'The Reaper'),(144,'The Riddlers Henchwomen'),(145,'Thomas Tom Trigger'),(146,'Thomas Blake, Catman'),(147,'Thomas Wayne, Jr., Owlman'),(148,'Timothy Jackson Tim Drake, Robin III'),(149,'Todd Russell, Clayface'),(150,'Ubu'),(151,'Ulysses Hadrian Armstrong, General'),(152,'Umberto Maroni'),(153,'Victor Mister Zsasz'),(154,'Victor Fries'),(155,'Victor Zsasz'),(156,'Victoria Vicki Vale'),(157,'Warren White, Great White Shark'),(158,'Waylon Jones, Killer Croc'),(159,'Wendy Jones, Windfall'),(160,'Wrath I'),(161,'Zachary Gate, The Architect'),(162,'Batman'),(163,'Kate Kane, Batwoman'),(167,'Amba Kadiri'),(174,'test');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remove_characters` AFTER DELETE ON `characters` FOR EACH ROW BEGIN
	CALL remove_character_ccc();
    CALL remove_character_cat();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `comic`
--

DROP TABLE IF EXISTS `comic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comic` (
  `tid` int(11) NOT NULL,
  `no_issues` int(11) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  CONSTRAINT `comictid_fk` FOREIGN KEY (`tid`) REFERENCES `title` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comic`
--

LOCK TABLES `comic` WRITE;
/*!40000 ALTER TABLE `comic` DISABLE KEYS */;
INSERT INTO `comic` VALUES (1,10,2005,2008),(2,14,2016,2017),(3,8,1999,1999),(4,1,1989,1989),(5,6,2003,2003),(6,3,1997,1997),(7,713,1940,2011),(8,1,1991,1991),(11,26,2009,2001),(12,26,2015,2016),(13,15,2014,2014),(14,6,2006,2007),(15,6,2006,2006),(16,32,1983,1986),(17,28,1961,2011),(20,52,2014,2015),(21,4,2015,2016),(22,1,2001,2001),(23,6,2010,2011),(24,8,2009,2010),(27,10,2011,2011),(28,8,1999,1999),(31,1,1994,1994),(32,1,1990,1990),(33,17,2016,2016),(34,1,1998,1998),(35,6,2005,2005),(36,6,2005,2005),(37,1,1993,1993),(38,1,1997,1997),(39,14,2001,2001),(40,6,2007,2007),(41,1,1991,1991),(42,5,2011,2011),(43,4,1996,1996),(44,6,2000,2000),(45,12,2008,2009),(46,74,2000,2006),(47,5,2007,2015),(48,10,2015,2015),(49,4,2000,2000),(50,12,2009,2009),(51,1,1994,1994),(52,74,2012,2012),(53,21,2017,2018),(54,214,1992,2007),(55,1,1997,1997),(56,2,1999,1999),(57,3,2016,2016),(58,1,1998,1998),(59,94,1992,2000),(60,1,1987,1987),(61,11,1999,1999),(62,4,2010,2010),(63,7,2010,2010),(64,9,2011,2011),(65,4,1994,1994),(67,4,1988,2009),(68,4,1986,1986),(69,3,2001,2002),(70,1,1988,1988),(71,4,1992,1992),(72,13,1996,1997),(73,1,2005,2005),(74,10,2008,2008),(75,5,2001,2001),(76,2,1993,1993),(77,14,2004,2006),(78,5,2009,2010),(79,1,1999,1999),(80,2,2009,2009),(81,4,2005,2007),(82,5,2017,2017),(83,1,1991,1991),(84,32,2014,2016),(85,3,2003,2003),(86,1,2007,2007),(87,7,2015,2015),(88,176,1999,2014),(89,200,1966,1983),(90,3,2002,2002),(91,1,2010,2010),(92,94,1993,2001),(93,881,1939,2011),(94,40,2003,2006),(95,20,2014,2016),(96,6,2001,2002),(97,153,1996,2009),(98,1,1999,1999),(99,24,1993,1995),(100,40,2011,2015),(101,1,1949,1949),(102,183,1993,2009),(103,8,2015,2016),(104,13,1973,1999),(106,1,1950,1950),(107,200,1966,1983),(108,1,1975,1975),(110,9,2015,2017),(112,1,1952,1952),(113,1,2019,2019),(115,1,1976,1976),(116,1,1954,1954),(117,4,1977,1977);
/*!40000 ALTER TABLE `comic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributor`
--

DROP TABLE IF EXISTS `contributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributor` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `creatorStatus` int(11) NOT NULL,
  `cdescription` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributor`
--

LOCK TABLES `contributor` WRITE;
/*!40000 ALTER TABLE `contributor` DISABLE KEYS */;
INSERT INTO `contributor` VALUES (1,'Bob Kane',1,'Concept, creator & artist.'),(2,'Bill Finger',1,'Co-creator & developer (uncredited from 1939-2015, credited 2016-present), also a writer.'),(3,'Frank Miller',0,'He re-established Batmans origin during Crisis on Infinite Earths. He was also an artist on The Dark Knight Returns and Strikes Again.'),(4,'Jim Starlin',0,''),(5,'Matt Wagner',0,''),(6,'Judd Winick',0,'Created Jasons Todds Red Hood identity but not the character of Jason Todd himself which was created by Gerry Conway and Don Newton.'),(7,'Mike W. Barr',0,'Whilst he and Jerry Bingham originally created Damian Wayne, it was Grant Morrison and Andy Kubert who reinterpreted the character for more modern times.'),(8,'Ed Brubaker',0,'Also co-created the majority of the Police Officers and Detectives featured in Gotham Central.'),(9,'Donald Clough Cameron',0,''),(10,'Gerry Conway',0,''),(11,'Paul Dini',0,'Whilst not writing comics till 2006, he did write for other Batman mediums before that time see below.'),(12,'Chuck Dixon',0,'Also co-created Nightwings new home of Bludhaven as well as some of his rogues gallery.'),(13,'Steve Englehart',0,''),(14,'Gardner Fox',0,'He helped script Batmans origin story. Also the co-originator of the Batarang and (proto-) Batplane.'),(15,'Neil Gaiman',0,''),(16,'Alan Grant',0,''),(17,'Devin K. Grayson',0,'Is currently the only ongoing female, non-heterosexual Batman writer.'),(18,'Robert Kanigher',0,''),(19,'Tom King (Current)',0,''),(20,'Jeph Loeb',0,''),(21,'Doug Moench',0,''),(22,'Grant Morrison',0,''),(23,'Alan Moore',0,''),(24,'Dennis O\'Neil',0,'As well as being a long-term writer, he was also an editor of the Batman titles, and is credited with rebooting the Batman character.'),(25,'David Vern Reed',0,''),(26,'Greg Rucka',0,''),(27,'Dan Slott',0,''),(28,'Scott Snyder',0,'Court of Owls was co-created with artist Greg Capullo'),(29,'Peter Tomasi',0,''),(30,'James Tynion IV',0,''),(31,'John Wagner',0,''),(32,'Len Wein',0,'Was also Editor-in-Chief of DC Comics during Crisis on Infinite Earths.'),(33,'Marv Wolfman',0,''),(34,'David Wood',0,'Worked as an uncredited Ghost writer during the Golden-Silver and Bronze Age.'),(35,'Neal Adams',0,'known for drawing the definitive 1970s visual interpretation that returned Batman to his gothic roots.'),(36,'Jim Aparo',0,''),(37,'Brian Bolland',0,''),(38,'Bob Brown',0,''),(39,'Norm Breyfogle',0,''),(40,'Ernie Chan',0,''),(41,'Dick Giordano',0,''),(42,'Carmine Infantino',0,'Penciller and primary artist of the 1964 New Look Batman'),(43,'Kelley Jones',0,'Artist best known for his runs on Batman with writer Doug Moench.'),(44,'Jim Lee',0,''),(45,'David Mazzucchelli',0,''),(46,'Tom Mandrake',0,''),(47,'Dave McKean',0,''),(48,'Sheldon Moldoff',0,'One of Bob Kanes primary ghost artists.'),(49,'Jim Mooney',0,''),(50,'Don Newton',0,''),(51,'Graham Nolan',0,''),(52,'George P_rez',0,''),(53,'Frank Robbins',0,''),(54,'Jerry Robinson',0,'Early ghost artist for Bob Kane.'),(55,'Marshall Rogers',0,''),(56,'Tim Sale',0,''),(57,'Walter Simonson',0,''),(58,'Lew Schwartz',0,''),(59,'Ryan Sook',0,''),(60,'Dick Sprang',0,''),(61,'Curt Swan',0,'Drew many late 1950s and early 1960s Batman covers (although best known for Superman work).'),(62,'Tim Burton',0,'Pushed Batman into the public eye by making him Dark outside of the comic book media.'),(63,'Paul Dini',0,'Came up with a newer, more tragic origin story for Mr. Freeze, in Batman The Animated Series, involving the creation of the character of Nora Fries, which is now commonly used in the comics.'),(64,'William Dozier',0,'Produced and narrated (without credit in latter capacity) the Batman 1966 TV series.'),(65,'Christopher Nolan',0,'Rebooted the Batman movie franchise into a more realistic setting.'),(66,'Jack Schiff',0,''),(67,'Julius Schwartz',0,'Commissioned The Million-Dollar Debut Of Batgirl, the story in which Barbara Gordon was introduced as both herself and the Silver Age Of Comics Batgirl.'),(68,'Lorenzo Semple Jr.',0,'Developed look and wrote most early episodes of the Batman 1966 TV series after ABC-TV had acquired the rights and chosen 20th Century Fox Television as the studio through which it was produced.'),(69,'Bruce W. Timm',0,'Created the character sheets for Batman: The Animated Series.'),(72,'test',0,'');
/*!40000 ALTER TABLE `contributor` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remove_contributors` AFTER DELETE ON `contributor` FOR EACH ROW BEGIN
	CALL remove_contributor_ccc();
    CALL remove_contributor_cwtar();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `contributor_creates_character`
--

DROP TABLE IF EXISTS `contributor_creates_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributor_creates_character` (
  `cid` int(11) NOT NULL,
  `chid` int(11) NOT NULL,
  PRIMARY KEY (`cid`,`chid`),
  KEY `cccchid_fk` (`chid`),
  CONSTRAINT `cccchid_fk` FOREIGN KEY (`chid`) REFERENCES `characters` (`chid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ccccid_fk` FOREIGN KEY (`cid`) REFERENCES `contributor` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributor_creates_character`
--

LOCK TABLES `contributor_creates_character` WRITE;
/*!40000 ALTER TABLE `contributor_creates_character` DISABLE KEYS */;
INSERT INTO `contributor_creates_character` VALUES (27,1),(59,1),(16,2),(39,2),(2,3),(48,3),(20,4),(1,5),(2,5),(9,5),(54,5),(12,6),(22,7),(4,8),(1,9),(2,9),(54,9),(1,10),(2,10),(32,11),(33,12),(16,13),(31,13),(39,13),(14,14),(42,14),(12,15),(21,15),(51,15),(14,16),(42,16),(64,16),(67,16),(1,17),(2,17),(1,18),(2,18),(48,18),(20,19),(48,20),(52,21),(7,22),(2,23),(58,23),(60,23),(3,24),(45,24),(3,25),(17,26),(11,27),(3,28),(45,28),(16,29),(28,30),(8,31),(26,31),(7,32),(22,33),(9,34),(3,35),(45,35),(26,36),(31,37),(20,38),(11,39),(14,40),(13,41),(35,42),(53,42),(11,43),(63,43),(69,43),(1,44),(2,44),(1,45),(2,45),(1,46),(2,46),(24,47),(41,47),(18,48),(48,48),(35,49),(53,49),(20,50),(44,50),(1,51),(2,51),(14,51),(12,52),(9,53),(2,54),(60,55),(7,56),(10,57),(40,57),(13,58),(11,59),(63,59),(69,59),(1,60),(25,60),(58,60),(31,61),(7,62),(20,63),(8,64),(16,65),(1,66),(2,66),(3,67),(2,68),(1,69),(6,70),(10,70),(50,70),(24,71),(11,72),(16,73),(39,73),(1,74),(2,74),(21,75),(43,75),(32,76),(10,77),(2,78),(48,78),(1,79),(14,79),(48,79),(12,80),(24,81),(24,82),(12,83),(48,84),(16,85),(39,85),(32,86),(20,87),(11,88),(63,88),(8,89),(20,90),(63,91),(69,91),(14,92),(42,92),(1,93),(2,93),(14,93),(1,94),(2,94),(1,95),(2,95),(2,96),(48,96),(24,97),(10,98),(50,98),(22,99),(31,100),(1,101),(9,101),(48,102),(1,103),(34,103),(21,104),(12,105),(14,106),(12,107),(11,108),(63,108),(69,108),(26,109),(3,110),(1,111),(2,111),(16,112),(31,112),(11,113),(7,114),(32,114),(2,115),(22,116),(24,117),(35,117),(12,118),(1,119),(2,119),(54,119),(11,120),(21,121),(46,121),(12,122),(13,123),(57,123),(1,124),(2,124),(1,125),(2,125),(2,126),(11,127),(13,128),(57,128),(12,129),(33,130),(52,130),(20,131),(7,132),(12,133),(24,134),(38,134),(41,134),(7,135),(63,136),(69,136),(11,137),(12,138),(28,139),(12,140),(1,141),(2,141),(54,141),(1,142),(7,143),(12,144),(12,145),(2,146),(49,146),(14,147),(33,148),(8,149),(24,150),(12,151),(20,152),(39,153),(11,154),(63,154),(69,154),(16,155),(1,156),(2,156),(27,157),(59,157),(10,158),(50,158),(61,158),(7,159),(7,160),(28,161),(1,162),(2,162),(22,163),(26,163),(25,167),(40,167);
/*!40000 ALTER TABLE `contributor_creates_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributor_workson_title_as_role`
--

DROP TABLE IF EXISTS `contributor_workson_title_as_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributor_workson_title_as_role` (
  `cid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`cid`,`tid`,`rid`),
  KEY `cwtartid_fk` (`tid`),
  KEY `cwtarrid_fk` (`rid`),
  CONSTRAINT `cwtarcid_fk` FOREIGN KEY (`cid`) REFERENCES `contributor` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cwtarrid_fk` FOREIGN KEY (`rid`) REFERENCES `roles` (`rid`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `cwtartid_fk` FOREIGN KEY (`tid`) REFERENCES `title` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributor_workson_title_as_role`
--

LOCK TABLES `contributor_workson_title_as_role` WRITE;
/*!40000 ALTER TABLE `contributor_workson_title_as_role` DISABLE KEYS */;
INSERT INTO `contributor_workson_title_as_role` VALUES (3,1,1),(3,1,2),(44,1,2),(28,2,1),(16,3,1),(22,4,1),(47,4,2),(27,5,1),(59,5,2),(12,6,1),(7,7,1),(9,7,1),(10,7,1),(19,7,1),(28,7,1),(29,7,1),(30,7,1),(35,7,2),(43,7,2),(43,8,2),(64,9,3),(68,9,1),(62,10,5),(29,11,1),(28,12,1),(30,12,1),(22,13,1),(5,14,1),(5,14,2),(5,15,1),(5,15,2),(7,16,1),(43,17,2),(65,18,5),(63,19,1),(69,19,3),(69,19,6),(28,20,1),(30,20,1),(44,21,2),(8,22,1),(35,23,2),(22,24,1),(62,25,5),(4,27,1),(4,27,2),(36,27,2),(16,28,1),(63,29,1),(63,30,1),(43,31,2),(7,32,1),(12,33,1),(43,34,2),(13,35,1),(13,36,1),(43,37,2),(7,38,1),(20,39,1),(11,40,1),(7,41,1),(28,42,1),(12,43,1),(8,44,1),(43,45,2),(7,46,1),(17,46,1),(44,46,2),(22,47,1),(11,48,1),(43,49,2),(20,50,1),(44,50,2),(7,51,1),(12,52,1),(16,52,1),(21,52,1),(12,53,1),(7,54,1),(11,55,1),(12,56,1),(19,57,1),(28,57,1),(7,58,1),(16,59,1),(7,60,1),(13,61,1),(55,61,2),(11,62,1),(11,63,1),(11,64,1),(4,65,1),(4,65,2),(63,66,1),(69,66,3),(69,66,6),(4,67,1),(4,67,2),(3,68,1),(3,68,2),(3,69,1),(3,69,2),(23,70,1),(37,70,2),(16,71,1),(20,72,1),(56,72,2),(8,73,1),(11,74,1),(8,75,1),(7,76,1),(6,77,1),(6,77,2),(43,78,2),(11,79,1),(15,80,1),(3,81,1),(3,81,2),(45,81,2),(7,82,1),(16,83,1),(29,84,1),(5,85,1),(5,85,2),(20,86,1),(7,87,1),(12,88,1),(35,89,2),(8,90,1),(7,91,1),(8,92,1),(17,92,1),(8,93,1),(10,93,1),(11,93,1),(12,93,1),(13,93,1),(14,93,1),(28,93,1),(29,93,1),(30,93,1),(35,93,2),(67,93,4),(8,94,1),(26,94,1),(19,95,1),(12,96,1),(12,97,1),(17,97,1),(19,97,1),(29,97,1),(11,98,1),(17,98,1),(26,98,1),(29,99,1),(30,100,1),(25,101,1),(12,102,1),(19,103,1),(29,104,1),(25,106,1),(36,107,2),(25,108,1),(65,109,5),(3,110,1),(3,110,2),(65,111,5),(25,112,1),(25,113,1),(63,114,1),(69,114,3),(69,114,6),(25,115,1),(25,116,1),(25,117,1);
/*!40000 ALTER TABLE `contributor_workson_title_as_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediums`
--

DROP TABLE IF EXISTS `mediums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mediums` (
  `medid` int(11) NOT NULL,
  `medname` varchar(30) NOT NULL,
  PRIMARY KEY (`medid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediums`
--

LOCK TABLES `mediums` WRITE;
/*!40000 ALTER TABLE `mediums` DISABLE KEYS */;
INSERT INTO `mediums` VALUES (1,'comic'),(2,'movie'),(3,'television'),(4,'video game');
/*!40000 ALTER TABLE `mediums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `tid` int(11) NOT NULL,
  `release_date` int(11) DEFAULT NULL,
  `run_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  CONSTRAINT `movietid_fk` FOREIGN KEY (`tid`) REFERENCES `title` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (10,1989,126),(18,2005,140),(25,1992,126),(109,2008,152),(111,2012,165);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `rid` int(11) NOT NULL,
  `rtitle` varchar(30) NOT NULL,
  PRIMARY KEY (`rid`),
  CONSTRAINT `chk_rtitle` CHECK ((`rtitle` in (_utf8mb4'writer',_utf8mb4'artist',_utf8mb4'producer',_utf8mb4'editor',_utf8mb4'director',_utf8mb4'animator')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'writer'),(2,'artist'),(3,'producer'),(4,'editor'),(5,'director'),(6,'animator');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title`
--

DROP TABLE IF EXISTS `title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(300) NOT NULL,
  `tmedium` int(11) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `tmedium_fk` (`tmedium`),
  CONSTRAINT `tmedium_fk` FOREIGN KEY (`tmedium`) REFERENCES `mediums` (`medid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title`
--

LOCK TABLES `title` WRITE;
/*!40000 ALTER TABLE `title` DISABLE KEYS */;
INSERT INTO `title` VALUES (1,'All Star Batman & Robin, the Boy Wonder',1),(2,'All-Star Batman',1),(3,'Anarky',1),(4,'Arkham Asylum: A Serious House on Serious Earth',1),(5,'Arkham Asylum: Living Hell',1),(6,'Baman and Wildcat',1),(7,'Batman',1),(8,'Batman & Dracula: Red Rain',1),(9,'Batman',3),(10,'Batman',2),(11,'Batman and Robin',1),(12,'Batman and Robin Eternal',1),(13,'Batman and Son',1),(14,'Batman and the Mad Monk',1),(15,'Batman and the Monster Men',1),(16,'Batman and the Outsiders',1),(17,'Batman Annual',1),(18,'Batman Begins',2),(19,'Batman Beyond',3),(20,'Batman Eternal',1),(21,'Batman Europa',1),(22,'Batman Gotham Noir',1),(23,'Batman Odyssey',1),(24,'Batman R.I.P.',1),(25,'Batman Returns',2),(26,'The Adventures of Batman',3),(27,'Batman: A Death in the Family',1),(28,'Batman: Anarky',1),(29,'Batman: Arkham Asylum',4),(30,'Batman: Arkham City',4),(31,'Batman: Bloodstorm',1),(32,'Batman: Bride of the Demon',1),(33,'Batman: Contagion',1),(34,'Batman: Crimson Mist',1),(35,'Batman: Dark Detective',1),(36,'Batman: Dark Detective II',1),(37,'Batman: Dark Joker The Wild',1),(38,'Batman: Dark Knight Dynasty',1),(39,'Batman: Dark Victory',1),(40,'Batman: Detective',1),(41,'Batman: Full Circle',1),(42,'Batman: Gates of Gotham',1),(43,'Batman: GCPD',1),(44,'Batman: Gotham Adventures',1),(45,'Batman: Gotham After Midnight',1),(46,'Batman: Gotham Knights',1),(47,'Batman: Gothic',1),(48,'Batman: Harley Quinn',1),(49,'Batman: Haunted Gotham',1),(50,'Batman: Hush',1),(51,'Batman: In Darkest Knight',1),(52,'Batman: Knightfall',1),(53,'Batman: Legacy',1),(54,'Batman: Legends of the Dark Knight',1),(55,'Batman: Mr. Freeze',1),(56,'Batman: No Man\'s Land',1),(57,'Batman: Rebirth',1),(58,'Batman: Reign of Terror',1),(59,'Batman: Shadow of the Bat',1),(60,'Batman: Son of the Demon',1),(61,'Batman: Strange Apparitions',1),(62,'Batman: Streets of Gotham: Hush Money',1),(63,'Batman: Streets of Gotham: Leviathan',1),(64,'Batman: Streets of Gotham: The House of Hush',1),(65,'Batman: Ten Nights of The Beast',1),(66,'Batman: The Animated Series',3),(67,'Batman: The Cult',1),(68,'Batman: The Dark Knight Returns',1),(69,'Batman: The Dark Knight Strikes Again',1),(70,'Batman: The Killing Joke',1),(71,'Batman: The Last Arkham',1),(72,'Batman: The Long Halloween',1),(73,'Batman: The Man Who Laughs',1),(74,'Batman: The Resurrection of Ra\'s al Ghul',1),(75,'Batman: Turning Points',1),(76,'Batman: Two-Face Strikes Twice',1),(77,'Batman: Under the Hood',1),(78,'Batman: Unseen',1),(79,'Batman: War On Crime',1),(80,'Batman: Whatever Happened to the Caped Crusader?',1),(81,'Batman: Year One',1),(82,'Batman: Year Two',1),(83,'Batman/Judge Dredd: Judgment on Gotham',1),(84,'Batman/Superman',1),(85,'Batman/Superman/Wonder Woman: Trinity',1),(86,'Batman/The Spirit',1),(87,'Beware the Batman',1),(88,'Birds of Prey',1),(89,'Brave and the Bold',1),(90,'Bruce Wayne: Fugitive',1),(91,'Bruce Wayne: The Road Home: Outsiders',1),(92,'Catwoman',1),(93,'Detective Comics',1),(94,'Gotham Central',1),(95,'Grayson',1),(96,'Joker: Last Laugh',1),(97,'Nightwing',1),(98,'No Man\'s Land',1),(99,'Outsiders',1),(100,'Red Hood and the Outlaws',1),(101,'Ride, Bat-Hombre, Ride',1),(102,'Robin',1),(103,'Robin War',1),(104,'Super Sons',1),(106,'The Birth of Batplane II',1),(107,'The Brave and the Bold',1),(108,'The Daily Death of Terry Tremayne',1),(109,'The Dark Knight',2),(110,'The Dark Knight III: The Master Race',1),(111,'The Dark Knight Rises',2),(112,'The Joker\'s Millions',1),(113,'The Joker\'s Utility Belt',1),(114,'The New Batman Adventures',3),(115,'The Underworld Olympics \'76!',1),(116,'Two-Face Strikes Again',1),(117,'Where Were You on the Night Batman Was Killed?',1);
/*!40000 ALTER TABLE `title` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `add_titles` AFTER INSERT ON `title` FOR EACH ROW BEGIN
    CALL add_title_comic();
    CALL add_title_movie();
    CALL add_title_tv();
    CALL add_title_videogame();
END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remove_titles` AFTER DELETE ON `title` FOR EACH ROW BEGIN
	CALL remove_title_cat();
    CALL remove_title_cwtar();
    CALL remove_title_comic();
    CALL remove_title_movie();
    CALL remove_title_tv();
    CALL remove_title_videogame();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tv`
--

DROP TABLE IF EXISTS `tv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv` (
  `tid` int(11) NOT NULL,
  `no_seasons` int(11) DEFAULT NULL,
  `no_episodes` int(11) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  CONSTRAINT `tvtid_fk` FOREIGN KEY (`tid`) REFERENCES `title` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv`
--

LOCK TABLES `tv` WRITE;
/*!40000 ALTER TABLE `tv` DISABLE KEYS */;
INSERT INTO `tv` VALUES (9,3,120,1966,1968),(19,3,52,1999,2001),(26,1,17,1968,1969),(66,4,85,1992,1995),(114,2,24,1997,1999);
/*!40000 ALTER TABLE `tv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videogame`
--

DROP TABLE IF EXISTS `videogame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videogame` (
  `tid` int(11) NOT NULL,
  `release_date` int(11) DEFAULT NULL,
  `genre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  CONSTRAINT `videogametid_fk` FOREIGN KEY (`tid`) REFERENCES `title` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videogame`
--

LOCK TABLES `videogame` WRITE;
/*!40000 ALTER TABLE `videogame` DISABLE KEYS */;
INSERT INTO `videogame` VALUES (29,2009,'action-adventure'),(30,2011,'action-adventure');
/*!40000 ALTER TABLE `videogame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'batman'
--

--
-- Dumping routines for database 'batman'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_title_comic` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_title_comic`()
BEGIN
	INSERT INTO comic(tid)
    SELECT tid FROM title
    WHERE tid NOT IN (SELECT tid FROM comic)
		AND tmedium = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_title_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_title_movie`()
BEGIN
	INSERT INTO movie(tid)
    SELECT tid FROM title
    WHERE tid NOT IN (SELECT tid FROM movie)
		AND tmedium = 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_title_tv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_title_tv`()
BEGIN
	INSERT INTO tv(tid)
    SELECT tid FROM title
    WHERE tid NOT IN (SELECT tid FROM tv)
		AND tmedium = 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_title_videogame` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_title_videogame`()
BEGIN
	INSERT INTO videogame(tid)
    SELECT tid FROM title
    WHERE tid NOT IN (SELECT tid FROM videogame)
		AND tmedium = 4;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `characters_by_contributor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `characters_by_contributor`(contid INT)
BEGIN
	SELECT chname
    FROM contributor_creates_character AS ccc
    LEFT JOIN characters AS ch
		ON ccc.chid = ch.chid
	WHERE cid = contid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `contributors_of_title` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `contributors_of_title`(titleid INT)
BEGIN
	SELECT cname AS contributor, GROUP_CONCAT(rtitle) AS all_roles
    FROM (
		SELECT cname, rtitle FROM contributor_workson_title_as_role AS cwtar
        LEFT JOIN contributor AS c
			ON cwtar.cid = c.cid
		LEFT JOIN roles AS r
			ON cwtar.rid = r.rid
		WHERE tid = titleid
        ) AS name_and_role
	GROUP BY cname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_title` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_title`(
    IN title_name VARCHAR(300),
    IN title_medium INT
)
BEGIN
    INSERT INTO title
        (
            tname,
            tmedium
        )
        VALUES
        (
            title_name,
            title_medium
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `creators_of_character` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `creators_of_character`(charid INT)
BEGIN
	SELECT cname FROM contributor_creates_character AS ccc
    LEFT JOIN contributor AS c
		ON ccc.cid = c.cid
	WHERE chid = charid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_title` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_title`(
	title_id INT
)
BEGIN
	DELETE FROM title WHERE tid = title_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_character_cat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_character_cat`()
BEGIN
	DELETE FROM character_appearsin_title
    WHERE chid NOT IN (SELECT chid FROM characters);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_character_ccc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_character_ccc`()
BEGIN
	DELETE FROM contributor_creates_character
    WHERE chid NOT IN (SELECT chid FROM characters);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_contributor_ccc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_contributor_ccc`()
BEGIN
	DELETE FROM contributor_creates_character
    WHERE cid NOT IN (SELECT cid FROM contributor);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_contributor_cwtar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_contributor_cwtar`()
BEGIN
	DELETE FROM contributor_workson_title_as_role
    WHERE cid NOT IN (SELECT cid FROM contributor);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_title_cat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_title_cat`()
BEGIN
	DELETE FROM character_appearsin_title
    WHERE tid NOT IN (SELECT tid FROM title); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_title_comic` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_title_comic`()
BEGIN
	DELETE FROM comic
    WHERE tid NOT IN (SELECT tid FROM title);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_title_cwtar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_title_cwtar`()
BEGIN
	DELETE FROM contributor_workson_title_as_role
    WHERE tid NOT IN (SELECT tid FROM title);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_title_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_title_movie`()
BEGIN
	DELETE FROM movie
    WHERE tid NOT IN (SELECT tid FROM title);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_title_tv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_title_tv`()
BEGIN
	DELETE FROM tv
    WHERE tid NOT IN (SELECT tid FROM title);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_title_videogame` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_title_videogame`()
BEGIN
	DELETE FROM videogame
    WHERE tid NOT IN (SELECT tid FROM title);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `starring_characters` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `starring_characters`(titleid INT)
BEGIN
	SELECT chname
    FROM character_appearsin_title AS cat
    LEFT JOIN characters
		ON cat.chid = characters.chid
	WHERE tid = titleid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `titles_and_roles_by_contributor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `titles_and_roles_by_contributor`(contid INT)
BEGIN
	SELECT tname, GROUP_CONCAT(rtitle) AS all_roles
    FROM (
		SELECT tname, rtitle
        FROM contributor_workson_title_as_role AS cwtar
        LEFT JOIN title AS t
			ON cwtar.tid = t.tid
		LEFT JOIN roles AS r
			ON cwtar.rid = r.rid
		WHERE cid = contid
        ) AS title_and_role
	GROUP BY tname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `titles_starring_character` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `titles_starring_character`(charid INT)
BEGIN
	SELECT tname, medname FROM character_appearsin_title AS cat
    LEFT JOIN title AS t
		ON cat.tid = t.tid
	LEFT JOIN mediums AS m
		ON t.tmedium = m.medid
	WHERE chid = charid;
END ;;
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

-- Dump completed on 2019-12-04 22:14:44
