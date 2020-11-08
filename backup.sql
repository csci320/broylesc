-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: learning_center
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `athletes`
--

DROP TABLE IF EXISTS `athletes`;
/*!50001 DROP VIEW IF EXISTS `athletes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `athletes` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `academic_rank`,
 1 AS `residential_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `commuter_students`
--

DROP TABLE IF EXISTS `commuter_students`;
/*!50001 DROP VIEW IF EXISTS `commuter_students`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `commuter_students` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `academic_rank`,
 1 AS `slp_instructor_first_name`,
 1 AS `slp_instructor_last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `computer`
--

DROP TABLE IF EXISTS `computer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computer` (
  `location` varchar(128) NOT NULL,
  `cubicle` varchar(16) NOT NULL,
  `memory` int DEFAULT NULL,
  `printer` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`location`,`cubicle`),
  KEY `printer` (`printer`),
  CONSTRAINT `computer_ibfk_1` FOREIGN KEY (`printer`) REFERENCES `printer` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computer`
--

LOCK TABLES `computer` WRITE;
/*!40000 ALTER TABLE `computer` DISABLE KEYS */;
INSERT INTO `computer` VALUES ('NLC','A',4,'P1'),('NLC','B',8,'P2'),('NLC','C',8,'P2'),('Writing center','A',4,'P3'),('Writing center','B',4,'P4');
/*!40000 ALTER TABLE `computer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `name` varchar(15) NOT NULL,
  `assistant` varchar(128) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('Albert Hall','ccalendar@dewv.net'),('Writing Center','gguardian@dewv.net');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `name` varchar(29) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES ('Accounting'),('Adventure Recreation'),('Appalachian Studies'),('Art'),('Biology'),('Business'),('Chemistry'),('Child and Family Studies'),('Computer Science'),('Criminal Justice'),('Criminology'),('Design and Technical Theatre'),('Early Childhood Education'),('Economics'),('Education'),('English'),('Environmental Science'),('Exercise Science'),('Finance'),('History'),('Hospitality Management'),('Management'),('Marketing'),('Mathematics'),('Music'),('Nursing'),('Philosophy'),('Physical Education'),('Political Science'),('Pre-Dental'),('Pre-Law'),('Pre-Medical'),('Pre-Ministerial'),('Pre-Pharmacy'),('Pre-Physical Therapy'),('Pre-Veterinary'),('Psychology and Human Services'),('Religion and Philosophy'),('Sociology'),('Sport Management'),('Sustainability Studies'),('Theatre Arts'),('Undecided');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `major_view`
--

DROP TABLE IF EXISTS `major_view`;
/*!50001 DROP VIEW IF EXISTS `major_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `major_view` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `printer`
--

DROP TABLE IF EXISTS `printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `printer` (
  `name` varchar(16) NOT NULL,
  `color` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printer`
--

LOCK TABLES `printer` WRITE;
/*!40000 ALTER TABLE `printer` DISABLE KEYS */;
INSERT INTO `printer` VALUES ('P1','No'),('P2','Yes'),('P3','Yes'),('P4','No');
/*!40000 ALTER TABLE `printer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport`
--

DROP TABLE IF EXISTS `sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sport` (
  `name` varchar(15) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `season` varchar(6) NOT NULL,
  PRIMARY KEY (`name`,`gender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport`
--

LOCK TABLES `sport` WRITE;
/*!40000 ALTER TABLE `sport` DISABLE KEYS */;
INSERT INTO `sport` VALUES ('Baseball','Men','Spring'),('Basketball','Men','Fall'),('Basketball','Women','Fall'),('Cross Country','Men','Fall'),('Cross Country','Women','Fall'),('Golf','Men','Fall'),('Lacrosse','Men','Spring'),('Lacrosse','Women','Spring'),('Soccer','Men','Fall'),('Soccer','Women','Fall'),('Softball','Women','Spring'),('Swimming','Men','Fall'),('Swimming','Women','Fall'),('Tennis','Men','Spring'),('Tennis','Women','Spring'),('Track and Field','Men','Fall'),('Track and Field','Women','Fall'),('Volleyball','Women','Fall');
/*!40000 ALTER TABLE `sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sport_roster`
--

DROP TABLE IF EXISTS `sport_roster`;
/*!50001 DROP VIEW IF EXISTS `sport_roster`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sport_roster` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `gender`,
 1 AS `sport_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `slp_instructor_yn` char(1) DEFAULT 'N',
  `location` varchar(15) NOT NULL,
  PRIMARY KEY (`email`),
  KEY `location` (`location`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`location`) REFERENCES `location` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('Chris','Calendar','ccalendar@dewv.net','Y','Albert Hall'),('Edna','Editor','eeditor@dewv.net','N','Writing Center'),('Greg','Guardian','gguardian@dewv.net','N','Writing Center'),('Sam','Studybuddy','sstudybuddy@dewv.net','Y','Albert Hall'),('Terry','Tutor','ttutor@dewv.net','Y','Albert Hall');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `academic_rank` varchar(128) NOT NULL,
  `residential_status` varchar(128) NOT NULL,
  `slp_instructor_first_name` varchar(128) DEFAULT NULL,
  `slp_instructor_last_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`email`),
  KEY `student_last_name` (`last_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('Alice','Albert','aalbert@dewv.net','Senior','On campus','Sam','Studybuddy'),('Bob','Booth','bbooth@dewv.net','Sophomore','On campus',NULL,NULL),('Charlie','Cadillac','ccadillac@dewv.net','Senior','Off campus','Tery','Tutor'),('Debra','Davis','ddavis@dewv.net','Sophmore','On campus',NULL,NULL),('Eric','Elkins','eelkins@dewv.net','Senior','Off campus',NULL,NULL),('Frank','Forest','fforest@dewv.net','Sophmore','On campus',NULL,NULL),('Gary','Gatehouse','ggatehouse@dewv.net','Sophomore','On campus','Terry','Tutor'),('Hannah','Hermanson','hhermanson@dewv.net','Senior','On campus',NULL,NULL),('Irving','Icehouse','iicehouse@dewv.net','Sophomore','On campus','Sam','Studybuddy');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_major`
--

DROP TABLE IF EXISTS `student_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_major` (
  `email` varchar(128) NOT NULL,
  `major_name` varchar(128) NOT NULL,
  PRIMARY KEY (`email`,`major_name`),
  KEY `major_name` (`major_name`),
  CONSTRAINT `student_major_ibfk_1` FOREIGN KEY (`email`) REFERENCES `student` (`email`),
  CONSTRAINT `student_major_ibfk_2` FOREIGN KEY (`major_name`) REFERENCES `major` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_major`
--

LOCK TABLES `student_major` WRITE;
/*!40000 ALTER TABLE `student_major` DISABLE KEYS */;
INSERT INTO `student_major` VALUES ('eelkins@dewv.net','Biology'),('hhermanson@dewv.net','Chemistry'),('iicehouse@dewv.net','Chemistry'),('aalbert@dewv.net','Computer Science'),('bbooth@dewv.net','Computer Science'),('ggatehouse@dewv.net','Computer Science'),('ccadillac@dewv.net','English'),('ddavis@dewv.net','English'),('ggatehouse@dewv.net','Mathematics'),('bbooth@dewv.net','Philosophy'),('ddavis@dewv.net','Philosophy'),('fforest@dewv.net','Undecided');
/*!40000 ALTER TABLE `student_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_sport`
--

DROP TABLE IF EXISTS `student_sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_sport` (
  `email` varchar(128) NOT NULL,
  `sport_name` varchar(15) NOT NULL,
  `gender` varchar(5) NOT NULL,
  PRIMARY KEY (`email`,`sport_name`,`gender`),
  KEY `sport_name` (`sport_name`,`gender`),
  CONSTRAINT `student_sport_ibfk_1` FOREIGN KEY (`sport_name`, `gender`) REFERENCES `sport` (`name`, `gender`),
  CONSTRAINT `student_sport_ibfk_2` FOREIGN KEY (`email`) REFERENCES `student` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_sport`
--

LOCK TABLES `student_sport` WRITE;
/*!40000 ALTER TABLE `student_sport` DISABLE KEYS */;
INSERT INTO `student_sport` VALUES ('ccadillac@dewv.net','Baseball','Men'),('eelkins@dewv.net','Baseball','Men'),('bbooth@dewv.net','Golf','Men'),('ccadillac@dewv.net','Soccer','Men'),('ddavis@dewv.net','Soccer','Women'),('ddavis@dewv.net','Softball','Women');
/*!40000 ALTER TABLE `student_sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit` (
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `academic_rank` varchar(128) NOT NULL,
  `residential_status` varchar(128) NOT NULL,
  `majors` varchar(128) DEFAULT NULL,
  `sports` varchar(128) DEFAULT NULL,
  `slp_instructor_first_name` varchar(128) DEFAULT NULL,
  `slp_instructor_last_name` varchar(128) DEFAULT NULL,
  `check_in_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `check_out_time` timestamp NULL DEFAULT NULL,
  `location` varchar(128) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `purpose_achieved` char(1) DEFAULT NULL,
  `tutoring` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES ('Gary','Gatehouse','ggatehouse@dewv.net','Sophomore','On campus','Math, Computer Science',NULL,'Terry','Tutor','2016-08-30 14:35:55','2016-08-30 15:53:44','Albert Hall','study hall','Y',NULL,'New year, fresh start!'),('Charlie','Cadillac','ccadillac@dewv.net','Senior','Off campus','English','Men\'s soccer, Baseball','Tery','Tutor','2016-08-30 14:55:55','2016-08-30 16:53:44','Albert Hall','baseball meeting','?',NULL,NULL),('Irving','Icehouse','iicehouse@dewv.net','Sophomore','On campus','Chemistry',NULL,'Sam','Studybuddy','2016-08-30 15:56:56','2016-08-30 16:56:46','Albert Hall','Meet SLP instructor','Y',NULL,'Cubicle B computer is not working.'),('Alice','Albert','aalbert@dewv.net','Senior','On campus','Computer Science',NULL,'Sam','Studybuddy','2016-08-30 16:15:05','2016-08-30 16:50:04','Albert Hall','Study hall','Y',NULL,NULL),('Debbie','Davis','ddavis@dewv.net','Sophmore','On campus','Philosophy, English','Women\'s soccer, Softball',NULL,NULL,'2016-08-30 16:36:56','2016-08-30 17:57:47','Albert Hall','Tour of learning center','Y',NULL,NULL),('Bob','Booth','bbooth@dewv.net','Sophomore','On campus','Computer Science, Philosophy','Men\'s golf',NULL,NULL,'2016-08-30 16:44:54','2016-08-30 16:53:44','Albert Hall','study hall','Y',NULL,'New year, fresh start!'),('Eric','Elkins','eelkins@dewv.net','Senior','Off campus','Biology','Baseball',NULL,NULL,'2016-08-30 16:49:59','2016-08-30 16:56:46','Albert Hall','Team Meeting','N',NULL,'Sorry coach i had wrong time. my bad'),('Hannah','Hermanson','hhermanson@dewv.net','Senior','On campus','Chemistry',NULL,NULL,NULL,'2016-08-30 16:55:55','2016-08-30 16:59:44','Albert Hall','study hall','Y',NULL,NULL),('Frank','Forest','fforest@dewv.net','Sophmore','On campus','Undecided',NULL,NULL,NULL,'2016-08-30 16:59:05','2016-08-30 17:03:40','Albert Hall','math help','Y','Math 101',NULL),('Frank','Forest','fforest@dewv.net','Sophmore','On campus','Undecided',NULL,NULL,NULL,'2016-08-31 11:19:15','2016-08-31 12:23:22','Albert Hall','math help','Y','MATH 101',NULL),('Charlie','Cadillac','cadillac@dewv.net','Senior','Off campus','English','Men\'s soccer, Baseball','Tery','Tutor','2016-08-31 11:51:15','2016-08-31 11:53:44','Albert Hall','get form signature','Y',NULL,NULL),('Debbie','Davis','ddavis@dewv.net','Sophmore','On campus','Philosophy, English','Women\'s soccer, Softball',NULL,NULL,'2016-08-31 13:36:36','2016-08-31 14:47:44','Writing center','Help with paper','Y',NULL,NULL),('Gary','Gatehouse','ggatehouse@dewv.net','Sophomore','On campus','Math, Computer Science',NULL,'Terry','Tutor','2016-08-31 14:36:56',NULL,'Albert Hall','study hall',NULL,NULL,NULL),('Debra','Davis','ddavis@dewv.net','Sophmore','On campus','Philosophy, English','Women\'s soccer, Softball',NULL,NULL,'2016-08-31 16:00:06',NULL,'Albert Hall','MATH 101',NULL,NULL,NULL);
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit1nf`
--

DROP TABLE IF EXISTS `visit1nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit1nf` (
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `academic_rank` varchar(128) NOT NULL,
  `residential_status` varchar(128) NOT NULL,
  `slp_instructor_first_name` varchar(128) DEFAULT NULL,
  `slp_instructor_last_name` varchar(128) DEFAULT NULL,
  `check_in_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `check_out_time` timestamp NULL DEFAULT NULL,
  `location` varchar(128) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `purpose_achieved` char(1) DEFAULT NULL,
  `tutoring` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`,`check_in_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit1nf`
--

LOCK TABLES `visit1nf` WRITE;
/*!40000 ALTER TABLE `visit1nf` DISABLE KEYS */;
INSERT INTO `visit1nf` VALUES ('Alice','Albert','aalbert@dewv.net','Senior','On campus','Sam','Studybuddy','2016-08-30 16:15:05','2016-08-30 16:50:04','Albert Hall','Study hall','Y',NULL,NULL),('Bob','Booth','bbooth@dewv.net','Sophomore','On campus',NULL,NULL,'2016-08-30 16:44:54','2016-08-30 16:53:44','Albert Hall','study hall','Y',NULL,'New year, fresh start!'),('Charlie','Cadillac','cadillac@dewv.net','Senior','Off campus','Tery','Tutor','2016-08-31 11:51:15','2016-08-31 11:53:44','Albert Hall','get form signature','Y',NULL,NULL),('Charlie','Cadillac','ccadillac@dewv.net','Senior','Off campus','Tery','Tutor','2016-08-30 14:55:55','2016-08-30 16:53:44','Albert Hall','baseball meeting','?',NULL,NULL),('Debbie','Davis','ddavis@dewv.net','Sophmore','On campus',NULL,NULL,'2016-08-30 16:36:56','2016-08-30 17:57:47','Albert Hall','Tour of learning center','Y',NULL,NULL),('Debbie','Davis','ddavis@dewv.net','Sophmore','On campus',NULL,NULL,'2016-08-31 13:36:36','2016-08-31 14:47:44','Writing center','Help with paper','Y',NULL,NULL),('Debra','Davis','ddavis@dewv.net','Sophmore','On campus',NULL,NULL,'2016-08-31 16:00:06',NULL,'Albert Hall','MATH 101',NULL,NULL,NULL),('Eric','Elkins','eelkins@dewv.net','Senior','Off campus',NULL,NULL,'2016-08-30 16:49:59','2016-08-30 16:56:46','Albert Hall','Team Meeting','N',NULL,'Sorry coach i had wrong time. my bad'),('Frank','Forest','fforest@dewv.net','Sophmore','On campus',NULL,NULL,'2016-08-30 16:59:05','2016-08-30 17:03:40','Albert Hall','math help','Y','Math 101',NULL),('Frank','Forest','fforest@dewv.net','Sophmore','On campus',NULL,NULL,'2016-08-31 11:19:15','2016-08-31 12:23:22','Albert Hall','math help','Y','MATH 101',NULL),('Gary','Gatehouse','ggatehouse@dewv.net','Sophomore','On campus','Terry','Tutor','2016-08-30 14:35:55','2016-08-30 15:53:44','Albert Hall','study hall','Y',NULL,'New year, fresh start!'),('Gary','Gatehouse','ggatehouse@dewv.net','Sophomore','On campus','Terry','Tutor','2016-08-31 14:36:56',NULL,'Albert Hall','study hall',NULL,NULL,NULL),('Hannah','Hermanson','hhermanson@dewv.net','Senior','On campus',NULL,NULL,'2016-08-30 16:55:55','2016-08-30 16:59:44','Albert Hall','study hall','Y',NULL,NULL),('Irving','Icehouse','iicehouse@dewv.net','Sophomore','On campus','Sam','Studybuddy','2016-08-30 15:56:56','2016-08-30 16:56:46','Albert Hall','Meet SLP instructor','Y',NULL,'Cubicle B computer is not working.');
/*!40000 ALTER TABLE `visit1nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit2nf`
--

DROP TABLE IF EXISTS `visit2nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit2nf` (
  `email` varchar(128) NOT NULL,
  `check_in_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `check_out_time` timestamp NULL DEFAULT NULL,
  `location` varchar(128) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `purpose_achieved` char(1) DEFAULT NULL,
  `tutoring` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`,`check_in_time`),
  CONSTRAINT `visit2nf_ibfk_1` FOREIGN KEY (`email`) REFERENCES `student` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit2nf`
--

LOCK TABLES `visit2nf` WRITE;
/*!40000 ALTER TABLE `visit2nf` DISABLE KEYS */;
INSERT INTO `visit2nf` VALUES ('aalbert@dewv.net','2016-08-30 16:15:05','2016-08-30 16:50:04','Albert Hall','Study hall','Y',NULL,NULL),('bbooth@dewv.net','2016-08-30 16:44:54','2016-08-30 16:53:44','Albert Hall','study hall','Y',NULL,'New year, fresh start!'),('ccadillac@dewv.net','2016-08-30 11:51:15','2016-08-31 11:53:44','Albert Hall','get form signature','Y',NULL,NULL),('ccadillac@dewv.net','2016-08-30 14:55:55','2016-08-30 16:53:44','Albert Hall','baseball meeting','?',NULL,NULL),('ddavis@dewv.net','2016-08-30 16:36:56','2016-08-30 17:57:47','Albert Hall','Tour of learning center','Y',NULL,NULL),('ddavis@dewv.net','2016-08-31 13:36:36','2016-08-31 14:47:44','Writing center','Help with paper','Y',NULL,NULL),('ddavis@dewv.net','2016-08-31 16:00:06',NULL,'Albert Hall','MATH 101',NULL,NULL,NULL),('eelkins@dewv.net','2016-08-30 16:49:59','2016-08-30 16:56:46','Albert Hall','Team Meeting','N',NULL,'Sorry coach i had wrong time. my bad'),('fforest@dewv.net','2016-08-30 16:59:05','2016-08-30 17:03:40','Albert Hall','math help','Y','Math 101',NULL),('fforest@dewv.net','2016-08-31 11:19:15','2016-08-31 12:23:22','Albert Hall','math help','Y','MATH 101',NULL),('ggatehouse@dewv.net','2016-08-30 14:35:55','2016-08-30 15:53:44','Albert Hall','study hall','Y',NULL,'New year, fresh start!'),('ggatehouse@dewv.net','2016-08-31 14:36:56',NULL,'Albert Hall','study hall',NULL,NULL,NULL),('hhermanson@dewv.net','2016-08-30 16:55:55','2016-08-30 16:59:44','Albert Hall','study hall','Y',NULL,NULL),('iicehouse@dewv.net','2016-08-30 15:56:56','2016-08-30 16:56:46','Albert Hall','Meet SLP instructor','Y',NULL,'Cubicle B computer is not working.');
/*!40000 ALTER TABLE `visit2nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `athletes`
--

/*!50001 DROP VIEW IF EXISTS `athletes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `athletes` AS select `student`.`first_name` AS `first_name`,`student`.`last_name` AS `last_name`,`student`.`email` AS `email`,`student`.`academic_rank` AS `academic_rank`,`student`.`residential_status` AS `residential_status` from `student` where `student`.`email` in (select `student_sport`.`email` from `student_sport`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `commuter_students`
--

/*!50001 DROP VIEW IF EXISTS `commuter_students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `commuter_students` AS select `student`.`first_name` AS `first_name`,`student`.`last_name` AS `last_name`,`student`.`email` AS `email`,`student`.`academic_rank` AS `academic_rank`,`student`.`slp_instructor_first_name` AS `slp_instructor_first_name`,`student`.`slp_instructor_last_name` AS `slp_instructor_last_name` from `student` where (`student`.`residential_status` = 'Off campus') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `major_view`
--

/*!50001 DROP VIEW IF EXISTS `major_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `major_view` AS select `student`.`first_name` AS `first_name`,`student`.`last_name` AS `last_name`,`major`.`name` AS `name` from ((`student` left join `student_major` on((`student`.`email` = `student_major`.`email`))) left join `major` on((`student_major`.`major_name` = `major`.`name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sport_roster`
--

/*!50001 DROP VIEW IF EXISTS `sport_roster`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sport_roster` AS select `student`.`first_name` AS `first_name`,`student`.`last_name` AS `last_name`,`student`.`email` AS `email`,`student_sport`.`gender` AS `gender`,`student_sport`.`sport_name` AS `sport_name` from (`student` join `student_sport` on((`student`.`email` = `student_sport`.`email`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-08 14:16:17
