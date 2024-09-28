CREATE DATABASE  IF NOT EXISTS `bits_diagnostics` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bits_diagnostics`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bits_diagnostics
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,3,4,'2024-09-08','19:35:00');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booked_tests`
--

DROP TABLE IF EXISTS `booked_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booked_tests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `test_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_id` (`patient_id`),
  KEY `test_id` (`test_id`),
  CONSTRAINT `booked_tests_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  CONSTRAINT `booked_tests_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `list_tests` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booked_tests`
--

LOCK TABLES `booked_tests` WRITE;
/*!40000 ALTER TABLE `booked_tests` DISABLE KEYS */;
INSERT INTO `booked_tests` VALUES (3,3,6,'2024-09-08','19:23:00'),(4,3,8,'2024-09-08','19:30:00'),(5,8,5,'2024-09-09','13:30:00'),(6,3,5,'2024-09-09','14:15:00'),(7,8,13,'2024-09-08','17:00:00'),(8,6,5,'2024-09-09','16:00:00'),(9,3,9,'2024-09-10','12:00:00'),(10,3,6,'2024-09-10','14:55:00');
/*!40000 ALTER TABLE `booked_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `specialization` varchar(50) NOT NULL,
  `years_of_experience` int NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr. Rajesh Verma','MBBS, MD','Cardiology',15,'rajesh.verma@bits.com'),(2,'Dr. Sunita Rao','MBBS, MD','Gynecology',10,'sunita.rao@bits.com'),(3,'Dr. Rajesh Gupta','MBBS','Cardiology',15,'rajesh.gupta@bits.com'),(4,'Dr. Neeta Sharma','MBBS','Pediatrics',10,'neeta.sharma@bits.com'),(5,'Dr. Vikram Singh','MBBS','Orthopedics',12,'vikram.singh@bits.com'),(6,'Dr. Priya Desai','MD','Dermatology',8,'priya.desai@bits.com'),(7,'Dr. Amit Kumar','MBBS','Internal Medicine',20,'amit.kumar@bits.com'),(8,'Dr. Rina Patel','MBBS','Gynecology',14,'rina.patel@bits.com'),(9,'Dr. Manoj Sinha','MD','Neurology',18,'manoj.sinha@bits.com'),(10,'Dr. Aarti Gupta','MBBS','ENT',7,'aarti.gupta@bits.com'),(11,'Dr. Sanjay Rao','MBBS','General Surgery',13,'sanjay.rao@bits.com'),(12,'Dr. Kavita Mehta','MD','Oncology',22,'kavita.mehta@bits.com'),(13,'Dr. K.G.Shevtekar','MBBS','General Surgery',29,'k.shevtekar@bits.com');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_tests`
--

DROP TABLE IF EXISTS `list_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_tests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_name` varchar(100) NOT NULL,
  `test_lab_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_tests`
--

LOCK TABLES `list_tests` WRITE;
/*!40000 ALTER TABLE `list_tests` DISABLE KEYS */;
INSERT INTO `list_tests` VALUES (1,'CBC','Health Lab'),(2,'Blood Sugar','Wellness Center'),(3,'Cholesterol','Test Labs Inc'),(4,'Thyroid Test','Diagnostic Services'),(5,'Liver Function Test','Health Lab'),(6,'Kidney Function Test','Wellness Center'),(7,'Urinalysis','Test Labs Inc'),(8,'X-Ray','Diagnostic Services'),(9,'MRI Scan','Health Lab'),(10,'CT Scan','Test Labs Inc'),(11,'Antigen','BITS Diagnostics Center'),(12,'RT-PCR','BITS Diagnostics Center'),(13,'Hb(Hemoglobin)','Health Lab'),(14,'CBC','Health Lab'),(15,'Thyroid StimulatingHormone (TSH)','Diagnostic Services'),(16,'Complete Urine Examination','Health Lab');
/*!40000 ALTER TABLE `list_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'aarav123','aarav123','Mr. Aarav Patel','aarav.patel@bits.com','9876543210'),(2,'vivaan123','vivan123','Mr. Vivaan Sharma','viva.sharma@bits.com','9876543210'),(3,'varad123','varad123','Mr. Varad Kulkarni','varad.kulkarni@bits.com','7057326641'),(4,'sheshardri123','sheshardri123','Mr. Sheshadri Kulkarni','sheshadri.kulkarni@bits.com','7304952000'),(5,'gaurang123','gaurang123','Mr. Gaurang Ambekar','gaurang.ambekar@bits.com','9922496700'),(6,'vidya123','vidya123','Mrs. Vidya Kulkarni','vidya.kulkarni@bits.com','7709081235'),(7,'anirudha123','anirudha123','Mr. Anirudha Kulkarni','anirudha.kulkarni@bits.com','88808670'),(8,'om123','om123','Mr. Om Kulkarni','om.kulkarni@bits.com','9421790263'),(9,'vedant123','vedant123','Mr. VedantJoshi','vedant.joshi@bits.com','9881832826'),(10,'narsinha123','narsinha123','Mr. Narsinhapratap Deshpande','narsinhapratap.deshpande@bits.com','9834295889'),(11,'varad','varad','Mr. Varad','varad.k@bits.com','7757836641'),(12,'chandra123','chandra123','Mr. Chandrashekhar Chandekar','chandrashekhar.chandekar@bits.com','9225574813'),(13,'jyoti123','jyotii123','Miss. Jyotishree Behera','jyoti.behera@bits.com','7008523621'),(14,'yogesh123','yogesh123','Mr. Yogesh Trivedi','yogesh.trivedi@bits.com','976588231'),(15,'shraddha123','shraddha123','Miss. Shraddha Hariyani','shraddha.hariyani@bits.com','9977798527'),(16,'bhakti123','bhakti123','Miss. Bhakti Hariyani','bhakti.hariyani@bits.com','9340067300'),(17,'shreyas123','shreyas123','Mr. Shreyas Dahiwade','shreyas.d@bits.com','8965432110'),(18,'pranav123','pranav123','Mr. Pranav Inamdar','pranav.i@bits.com','8865432111'),(19,'aakash123','aakash123','Mr. Aakash Yerkal','aakash.yerkal@bits.com','8895432112'),(20,'purva123','purva123','Miss. Purva','purva.m@bits.com','8765432113'),(21,'tushar123','tushar123','Mr. Tushar Kulkarni','tushar.kulkarni@bits.com','8765432114'),(22,'shila123','shila123','Mrs. Shila Murtikar','shila.murtikar@bits.com','876943211'),(23,'puja123','puja123','Mrs. Puja Murtikar','puja.murtikar@bits.com','8765032116'),(24,'rohit123','rohit123','Mr. Rohit Sharma','rohit.sharma@bits.com','8765432117'),(25,'sachin123','sachin123','Mr. Sachin Tendulkar','sachin.tendulkar@bits.com','8765432118'),(26,'mahendra123','mahendra123','Mr. Mahendra Singh Dhoni','msd@bits.com','8765432119'),(27,'virat123','virat123','Mr. Virat Kohli','virat.kohli@bits.com','8765432120'),(28,'jasprit123','jasprit123','Mr. Jasprit Bumrah','jasprit.bumrah@bits.com','8795432121'),(29,'harbhajan123','harbhajan123','Mr. Harbhajan Singh','harbhajan@bits.com','8165432122'),(30,'yuvraj123','yuvraj123','Mr. Yuvraj Singh','yuvraj.singh@bits.com','9765432123'),(31,'virendar123','virendar123','Mr. Virendar Sehwag','virendar.s@bits.com','9365432121'),(32,'surya123','surya123','Mr. Surya Kumar Yadav','surya@bits.com','9765432125'),(33,'lasith123','lasith123','Mr. Lasith Malinga','lasith@bits.com','8775432126'),(34,'kiron123','kiron123','Mr. Kiron Pollard','kiron@bits.com','8705432128'),(35,'subhash123','subhash123','Mr. Subhash Bose','subhash@bits.com','7735432129'),(36,'lata123','lata123','Miss. Lata Mangeshkar','lata@bits.com','8765432130'),(37,'usha123','usha123','Mrs. Usha Mangeshkar','usha@bits.com','8765432131'),(38,'aasha123','aasha123','Mrs. Aasha Mangeshkar','aasha@bits.com','8765432131'),(39,'sunil123','sunil123','Mr. Sunil Gavaskar','sunil@bits.com','8765432135'),(40,'amit123','amit123','Mr. Amit Shah','amit.shah@bits.com','8765432136'),(41,'rajnath123','rajnath123','Mr. Rajnath Singh','rajnath@bits.com','8765432137'),(42,'devendra123','devenra123','Mr. Devendra Fadnavis','devendra@bits.com','8765432138'),(43,'yogi123','yogi123','Mr. Yogi Aadityanath','yogi.adi@bits.com','8765432139');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-28 15:54:49
