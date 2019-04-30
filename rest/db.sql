-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('678bca15951b5b94305897a7ce90847fc40ad924','2019-04-20 02:46:26.574575',2);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:43
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:38
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:43
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add department',7,'add_department'),(26,'Can change department',7,'change_department'),(27,'Can delete department',7,'delete_department'),(28,'Can view department',7,'view_department'),(29,'Can add person',8,'add_person'),(30,'Can change person',8,'change_person'),(31,'Can delete person',8,'delete_person'),(32,'Can view person',8,'view_person'),(33,'Can add staff',9,'add_staff'),(34,'Can change staff',9,'change_staff'),(35,'Can delete staff',9,'delete_staff'),(36,'Can view staff',9,'view_staff'),(37,'Can add driver',10,'add_driver'),(38,'Can change driver',10,'change_driver'),(39,'Can delete driver',10,'delete_driver'),(40,'Can view driver',10,'view_driver'),(41,'Can add golf cart',11,'add_golfcart'),(42,'Can change golf cart',11,'change_golfcart'),(43,'Can delete golf cart',11,'delete_golfcart'),(44,'Can view golf cart',11,'view_golfcart'),(45,'Can add location',12,'add_location'),(46,'Can change location',12,'change_location'),(47,'Can delete location',12,'delete_location'),(48,'Can view location',12,'view_location'),(49,'Can add ride',13,'add_ride'),(50,'Can change ride',13,'change_ride'),(51,'Can delete ride',13,'delete_ride'),(52,'Can view ride',13,'view_ride'),(53,'Can add student',14,'add_student'),(54,'Can change student',14,'change_student'),(55,'Can delete student',14,'delete_student'),(56,'Can view student',14,'view_student'),(57,'Can add student department',15,'add_studentdepartment'),(58,'Can change student department',15,'change_studentdepartment'),(59,'Can delete student department',15,'delete_studentdepartment'),(60,'Can view student department',15,'view_studentdepartment'),(61,'Can add ride rating',16,'add_riderating'),(62,'Can change ride rating',16,'change_riderating'),(63,'Can delete ride rating',16,'delete_riderating'),(64,'Can view ride rating',16,'view_riderating'),(65,'Can add professor',17,'add_professor'),(66,'Can change professor',17,'change_professor'),(67,'Can delete professor',17,'delete_professor'),(68,'Can view professor',17,'view_professor'),(69,'Can add Token',18,'add_token'),(70,'Can change Token',18,'change_token'),(71,'Can delete Token',18,'delete_token'),(72,'Can view Token',18,'view_token');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:37
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$slUKtSe9VlLa$5qo/6avMsCdpxcn59ASxso7AnjhSGquaH3/FxGcY4f4=','2019-04-18 15:26:21.490791',1,'owner','','','nrjohannessen1@gmail.com',1,1,'2019-04-16 15:35:28.903705'),(2,'pbkdf2_sha256$150000$hhPmp7VHSGRR$BR/fifowC47QRmOR+OHGZjL+aC7A+5j4AoYrwqT09Gs=',NULL,1,'admin','','','anayeem@uncc.edu',1,1,'2019-04-20 02:46:17.951487'),(3,'pbkdf2_sha256$150000$uF7gM1Df4zvE$+VkRkk5yNu/bzJlAD3oxb9lfDarjxfmJrcxmVwQpfqg=',NULL,1,'khoi','','','khoi@email.com',1,1,'2019-04-30 00:18:19.094961');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:49
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:45
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:39
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (3,'Facilities Management'),(4,'College of Business'),(5,'College of Arts + Architecture'),(6,'College of Computing and Informatics'),(7,'College of Education'),(8,'College of Health and Human Services'),(9,'College of Liberal Arts & Sciences'),(10,'University College'),(11,'College of Engineering'),(12,'Graduate School'),(13,'Honors College');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:48
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-04-17 06:34:01.132843','1','Center for Counseling and Psychological Services',1,'[{\"added\": {}}]',7,1),(2,'2019-04-17 06:37:39.130225','1','Center for Counseling and Psychological Services',3,'',7,1),(3,'2019-04-17 06:58:02.558038','1','Club Car Villager 2 LSV',1,'[{\"added\": {}}]',11,1),(4,'2019-04-17 06:58:12.016838','2','Club Car Villager 2 LSV',1,'[{\"added\": {}}]',11,1),(5,'2019-04-17 07:02:51.223613','3','Club Car Villager 2 LSV',1,'[{\"added\": {}}]',11,1),(6,'2019-04-17 07:03:13.466144','4','Club Car Villager 2 LSV',1,'[{\"added\": {}}]',11,1),(7,'2019-04-17 07:04:46.566573','5','Club Car Villager 2+2 LSV',1,'[{\"added\": {}}]',11,1),(8,'2019-04-17 07:04:54.741360','6','Club Car Villager 2+2 LSV',1,'[{\"added\": {}}]',11,1),(9,'2019-04-17 07:05:10.007822','7','Club Car Villager 2+2 LSV',1,'[{\"added\": {}}]',11,1),(10,'2019-04-17 07:05:23.770322','8','Club Car Villager 2+2 LSV',1,'[{\"added\": {}}]',11,1),(11,'2019-04-18 15:27:10.700149','2','Administration',1,'[{\"added\": {}}]',7,1),(12,'2019-04-18 15:27:53.775111','3','Facility Management',1,'[{\"added\": {}}]',7,1),(13,'2019-04-18 15:29:56.013647','4','College of Business',1,'[{\"added\": {}}]',7,1),(14,'2019-04-18 15:30:23.498398','5','College of Arts + Architecture',1,'[{\"added\": {}}]',7,1),(15,'2019-04-18 15:30:47.549398','6','College of Computing and Informatics',1,'[{\"added\": {}}]',7,1),(16,'2019-04-18 15:31:00.295690','7','College of Education',1,'[{\"added\": {}}]',7,1),(17,'2019-04-18 15:31:20.872756','8','College of Health and Human Services',1,'[{\"added\": {}}]',7,1),(18,'2019-04-18 15:31:47.496125','9','College of Liberal Arts & Sciences',1,'[{\"added\": {}}]',7,1),(19,'2019-04-18 15:32:08.509893','10','University College',1,'[{\"added\": {}}]',7,1),(20,'2019-04-18 15:32:18.765824','11','College of Engineering',1,'[{\"added\": {}}]',7,1),(21,'2019-04-18 15:32:34.259446','12','Graduate School',1,'[{\"added\": {}}]',7,1),(22,'2019-04-18 15:32:42.742678','13','Honors College',1,'[{\"added\": {}}]',7,1),(23,'2019-04-18 15:33:51.766899','3','Facilities Management',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',7,1),(24,'2019-04-18 16:30:40.529572','150','Nayda Austin',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(25,'2019-04-18 16:30:57.180296','149','Silas Tillman',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(26,'2019-04-18 16:31:04.570681','148','Dean Sweet',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(27,'2019-04-18 16:35:53.499927','150','Nayda Austin',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(28,'2019-04-18 16:36:23.549977','149','Silas Tillman',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(29,'2019-04-18 16:36:35.943934','148','Dean Sweet',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(30,'2019-04-18 16:37:40.905408','148','Dean Sweet',2,'[]',8,1),(31,'2019-04-18 16:37:50.546157','147','Harlan Boyer',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(32,'2019-04-18 16:38:03.750670','146','Haviva Thomas',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(33,'2019-04-18 16:38:17.030289','145','Steven Kemp',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(34,'2019-04-18 16:38:41.375831','144','Mariam Odonnell',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(35,'2019-04-18 16:38:50.214821','143','Shad Williams',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(36,'2019-04-18 16:39:00.513319','142','Ina Porter',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(37,'2019-04-18 16:39:13.337742','141','Briar Cohen',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(38,'2019-04-18 16:39:33.955730','140','Zachary Livingston',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(39,'2019-04-18 16:39:44.182808','139','Asher Best',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(40,'2019-04-18 16:39:54.317102','138','Kelsie Whitney',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(41,'2019-04-18 16:40:08.324405','137','Uta Randall',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(42,'2019-04-18 16:40:19.412125','136','Sylvester Yates',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(43,'2019-04-18 16:40:29.842103','135','Gareth Atkins',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(44,'2019-04-18 16:40:38.672898','134','Sean Henson',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(45,'2019-04-18 16:40:56.680005','133','Karly Bray',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(46,'2019-04-18 16:41:08.375646','132','Tiger Ashley',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(47,'2019-04-18 16:41:41.715916','131','Berk Orr',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(48,'2019-04-18 16:42:14.184304','130','Kennan Francis',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(49,'2019-04-18 16:42:25.061580','129','Francis Crane',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(50,'2019-04-18 16:42:36.528110','128','Desirae Gay',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(51,'2019-04-18 16:42:49.726329','127','Marvin Leon',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(52,'2019-04-18 16:43:01.940109','126','Carl Trevino',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(53,'2019-04-18 16:43:13.663114','125','Garrett Nguyen',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(54,'2019-04-18 16:43:26.939164','124','Alea Hale',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(55,'2019-04-18 16:43:39.941312','123','Emily Skinner',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(56,'2019-04-18 16:43:48.710132','122','Selma Beck',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(57,'2019-04-18 16:43:58.235026','121','Audrey Noel',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(58,'2019-04-18 16:45:49.203920','158','Tobias Quinn',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(59,'2019-04-18 16:45:57.196045','157','Victor Potter',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(60,'2019-04-18 16:46:04.577900','156','Rogan Jarvis',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(61,'2019-04-18 16:46:11.841566','155','Sarah Watts',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(62,'2019-04-18 16:46:18.866791','154','Amy Mcconnell',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(63,'2019-04-18 16:46:26.376881','153','Julie Rosales',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(64,'2019-04-18 16:46:34.388930','152','Connor Chapman',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(65,'2019-04-18 16:46:42.552204','151','Chanda Thornton',2,'[{\"changed\": {\"fields\": [\"sub_type\"]}}]',8,1),(66,'2019-04-18 17:07:57.673502','151','Chanda Thornton',1,'[{\"added\": {}}]',10,1),(67,'2019-04-18 17:09:18.717847','152','Connor Chapman',1,'[{\"added\": {}}]',10,1),(68,'2019-04-18 17:10:09.400119','153','Julie Rosales',1,'[{\"added\": {}}]',10,1),(69,'2019-04-18 17:11:02.572946','154','Amy Mcconnell',1,'[{\"added\": {}}]',10,1),(70,'2019-04-18 17:12:53.889749','155','Sarah Watts',1,'[{\"added\": {}}]',10,1),(71,'2019-04-18 17:13:43.461360','156','Rogan Jarvis',1,'[{\"added\": {}}]',10,1),(72,'2019-04-18 17:14:33.648521','157','Victor Potter',1,'[{\"added\": {}}]',10,1),(73,'2019-04-18 17:16:15.707611','158','Tobias Quinn',1,'[{\"added\": {}}]',10,1),(74,'2019-04-18 17:30:06.021482','1','Student Union',1,'[{\"added\": {}}]',12,1),(75,'2019-04-18 17:33:17.600901','2','West Deck',1,'[{\"added\": {}}]',12,1),(76,'2019-04-18 17:44:39.443547','3','UNCC Main Station',1,'[{\"added\": {}}]',12,1),(77,'2019-04-18 17:49:44.421186','4','Belk Gymnasium',1,'[{\"added\": {}}]',12,1),(78,'2019-04-18 17:54:25.004210','5','Cone University Center',1,'[{\"added\": {}}]',12,1),(79,'2019-04-18 17:58:18.046101','131','Berk Orr',1,'[{\"added\": {}}]',17,1),(80,'2019-04-18 18:00:33.355793','133','Karly Bray',1,'[{\"added\": {}}]',17,1),(81,'2019-04-18 18:03:06.014834','132','Tiger Ashley',1,'[{\"added\": {}}]',17,1),(82,'2019-04-18 18:04:18.597447','134','Sean Henson',1,'[{\"added\": {}}]',17,1),(83,'2019-04-18 18:07:18.762587','135','Gareth Atkins',1,'[{\"added\": {}}]',17,1),(84,'2019-04-18 18:07:46.239120','136','Sylvester Yates',1,'[{\"added\": {}}]',17,1),(85,'2019-04-18 18:08:29.760281','137','Uta Randall',1,'[{\"added\": {}}]',17,1),(86,'2019-04-18 18:09:40.868028','138','Kelsie Whitney',1,'[{\"added\": {}}]',17,1),(87,'2019-04-18 18:12:26.843694','139','Asher Best',1,'[{\"added\": {}}]',17,1),(88,'2019-04-18 18:12:48.621565','140','Zachary Livingston',1,'[{\"added\": {}}]',17,1),(89,'2019-04-18 18:13:26.481431','134','Sean Henson',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',17,1),(90,'2019-04-18 18:13:40.883588','133','Karly Bray',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',17,1),(91,'2019-04-18 18:13:48.376889','132','Tiger Ashley',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',17,1),(92,'2019-04-18 18:14:07.105868','131','Berk Orr',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',17,1),(93,'2019-04-18 18:21:53.115177','121','Audrey Noel',1,'[{\"added\": {}}]',9,1),(94,'2019-04-18 18:22:15.842504','122','Selma Beck',1,'[{\"added\": {}}]',9,1),(95,'2019-04-18 18:23:35.700134','123','Emily Skinner',1,'[{\"added\": {}}]',9,1),(96,'2019-04-18 18:23:58.526032','124','Alea Hale',1,'[{\"added\": {}}]',9,1),(97,'2019-04-18 18:26:09.076504','125','Garrett Nguyen',1,'[{\"added\": {}}]',9,1),(98,'2019-04-18 18:26:49.350750','126','Carl Trevino',1,'[{\"added\": {}}]',9,1),(99,'2019-04-18 18:27:05.546284','127','Marvin Leon',1,'[{\"added\": {}}]',9,1),(100,'2019-04-18 18:29:15.041693','128','Desirae Gay',1,'[{\"added\": {}}]',9,1),(101,'2019-04-18 18:31:31.419002','129','Francis Crane',1,'[{\"added\": {}}]',9,1),(102,'2019-04-18 18:34:18.145220','130','Kennan Francis',1,'[{\"added\": {}}]',9,1),(103,'2019-04-18 18:38:41.109744','141','Briar Cohen',1,'[{\"added\": {}}]',14,1),(104,'2019-04-18 18:39:35.493240','142','Ina Porter',1,'[{\"added\": {}}]',14,1),(105,'2019-04-18 18:40:16.236433','143','Shad Williams',1,'[{\"added\": {}}]',14,1),(106,'2019-04-18 18:41:04.271854','144','Mariam Odonnell',1,'[{\"added\": {}}]',14,1),(107,'2019-04-18 18:41:33.491275','145','Steven Kemp',1,'[{\"added\": {}}]',14,1),(108,'2019-04-18 18:42:17.880604','146','Haviva Thomas',1,'[{\"added\": {}}]',14,1),(109,'2019-04-18 18:43:08.385442','147','Harlan Boyer',1,'[{\"added\": {}}]',14,1),(110,'2019-04-18 18:44:25.059314','148','Dean Sweet',1,'[{\"added\": {}}]',14,1),(111,'2019-04-18 18:44:53.515599','149','Silas Tillman',1,'[{\"added\": {}}]',14,1),(112,'2019-04-18 18:45:33.096290','150','Nayda Austin',1,'[{\"added\": {}}]',14,1),(113,'2019-04-18 18:47:09.388429','1','Briar Cohen :: College of Business',1,'[{\"added\": {}}]',15,1),(114,'2019-04-18 18:47:17.041162','2','Ina Porter :: College of Arts + Architecture',1,'[{\"added\": {}}]',15,1),(115,'2019-04-18 18:47:23.883499','3','Shad Williams :: College of Computing and Informatics',1,'[{\"added\": {}}]',15,1),(116,'2019-04-18 18:47:31.584147','4','Mariam Odonnell :: College of Education',1,'[{\"added\": {}}]',15,1),(117,'2019-04-18 18:47:38.554096','5','Steven Kemp :: College of Health and Human Services',1,'[{\"added\": {}}]',15,1),(118,'2019-04-18 18:47:46.824252','6','Haviva Thomas :: College of Liberal Arts & Sciences',1,'[{\"added\": {}}]',15,1),(119,'2019-04-18 18:48:05.702458','7','Harlan Boyer :: College of Engineering',1,'[{\"added\": {}}]',15,1),(120,'2019-04-18 18:48:52.111971','8','Dean Sweet :: College of Liberal Arts & Sciences',1,'[{\"added\": {}}]',15,1),(121,'2019-04-18 18:49:01.908736','9','Silas Tillman :: College of Liberal Arts & Sciences',1,'[{\"added\": {}}]',15,1),(122,'2019-04-18 18:49:13.943900','10','Nayda Austin :: College of Engineering',1,'[{\"added\": {}}]',15,1),(123,'2019-04-18 18:50:36.210023','2','Administration',3,'',7,1),(124,'2019-04-18 19:08:21.206098','8','Club Car Villager 2+2 LSV 1',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(125,'2019-04-18 19:08:31.541633','7','Club Car Villager 2+2 LSV 2',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(126,'2019-04-18 19:08:38.046985','6','Club Car Villager 2+2 LSV 3',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(127,'2019-04-18 19:08:43.969174','5','Club Car Villager 2+2 LSV 4',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(128,'2019-04-18 19:08:49.987673','4','Club Car Villager 2 LSV 5',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(129,'2019-04-18 19:08:57.517420','4','Club Car Villager 2 LSV 1',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(130,'2019-04-18 19:09:03.258152','3','Club Car Villager 2 LSV 2',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(131,'2019-04-18 19:09:08.894044','2','Club Car Villager 2 LSV 3',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(132,'2019-04-18 19:09:14.884440','1','Club Car Villager 2 LSV 4',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(133,'2019-04-18 19:09:44.522264','1','Audrey Noel:: 1',1,'[{\"added\": {}}]',13,1),(134,'2019-04-18 19:09:55.142318','1','Audrey Noel:: 1',2,'[{\"changed\": {\"fields\": [\"golf_cart\"]}}]',13,1),(135,'2019-04-18 19:12:07.942079','2','Selma Beck:: 2',1,'[{\"added\": {}}]',13,1),(136,'2019-04-18 19:14:19.404225','3','Emily Skinner:: 3',1,'[{\"added\": {}}]',13,1),(137,'2019-04-18 19:14:36.529469','2','Selma Beck:: 2',2,'[{\"changed\": {\"fields\": [\"golf_cart\"]}}]',13,1),(138,'2019-04-18 19:17:43.316404','153','Julie Rosales',2,'[{\"changed\": {\"fields\": [\"date_hired\"]}}]',10,1),(139,'2019-04-18 19:18:55.049420','4','Garrett Nguyen:: 4',1,'[{\"added\": {}}]',13,1),(140,'2019-04-18 19:19:16.824682','3','Emily Skinner:: 3',2,'[{\"changed\": {\"fields\": [\"is_completed\"]}}]',13,1),(141,'2019-04-18 19:21:30.849361','5','Sean Henson:: 5',1,'[{\"added\": {}}]',13,1),(142,'2019-04-18 19:23:25.480056','6','Harlan Boyer:: 6',1,'[{\"added\": {}}]',13,1),(143,'2019-04-18 19:29:24.520410','7','Uta Randall:: 7',1,'[{\"added\": {}}]',13,1),(144,'2019-04-18 19:31:31.485093','8','Haviva Thomas:: 8',1,'[{\"added\": {}}]',13,1),(145,'2019-04-18 19:33:38.499526','9','Kelsie Whitney:: 9',1,'[{\"added\": {}}]',13,1),(146,'2019-04-18 19:39:17.163622','10','Karly Bray:: 10',1,'[{\"added\": {}}]',13,1),(147,'2019-04-18 19:58:35.850945','1','RideRating object (1)',1,'[{\"added\": {}}]',16,1),(148,'2019-04-18 19:59:07.251851','2','RideRating object (2)',1,'[{\"added\": {}}]',16,1),(149,'2019-04-18 20:00:13.223310','3','RideRating object (3)',1,'[{\"added\": {}}]',16,1),(150,'2019-04-18 20:01:39.185192','4','RideRating object (4)',1,'[{\"added\": {}}]',16,1),(151,'2019-04-18 20:03:01.256755','5','RideRating object (5)',1,'[{\"added\": {}}]',16,1),(152,'2019-04-18 20:03:26.219032','6','RideRating object (6)',1,'[{\"added\": {}}]',16,1),(153,'2019-04-18 20:04:05.573373','7','RideRating object (7)',1,'[{\"added\": {}}]',16,1),(154,'2019-04-18 20:04:27.893327','8','RideRating object (8)',1,'[{\"added\": {}}]',16,1),(155,'2019-04-18 20:05:24.929548','9','RideRating object (9)',1,'[{\"added\": {}}]',16,1),(156,'2019-04-18 20:06:02.430025','10','RideRating object (10)',1,'[{\"added\": {}}]',16,1),(157,'2019-04-18 20:14:44.007802','11','Shad Williams:: 11',1,'[{\"added\": {}}]',13,1),(158,'2019-04-18 20:16:46.777709','12','Asher Best:: 12',1,'[{\"added\": {}}]',13,1),(159,'2019-04-18 20:19:05.331952','13','Dean Sweet:: 13',1,'[{\"added\": {}}]',13,1),(160,'2019-04-18 20:21:57.592586','14','Marvin Leon:: 14',1,'[{\"added\": {}}]',13,1),(161,'2019-04-18 20:25:47.368165','15','Mariam Odonnell:: 15',1,'[{\"added\": {}}]',13,1),(162,'2019-04-18 20:26:32.370498','5','RideRating object (5)',2,'[{\"changed\": {\"fields\": [\"rating\"]}}]',16,1),(163,'2019-04-18 20:28:33.571558','10','RideRating object (10)',2,'[{\"changed\": {\"fields\": [\"complete_date\"]}}]',16,1),(164,'2019-04-18 20:29:04.209823','9','RideRating object (9)',2,'[{\"changed\": {\"fields\": [\"complete_date\"]}}]',16,1),(165,'2019-04-18 20:29:24.579880','8','RideRating object (8)',2,'[{\"changed\": {\"fields\": [\"complete_date\"]}}]',16,1),(166,'2019-04-18 20:30:02.900833','7','RideRating object (7)',2,'[{\"changed\": {\"fields\": [\"complete_date\"]}}]',16,1),(167,'2019-04-18 20:31:26.047432','6','RideRating object (6)',2,'[{\"changed\": {\"fields\": [\"complete_date\"]}}]',16,1),(168,'2019-04-18 20:31:49.548841','5','RideRating object (5)',2,'[{\"changed\": {\"fields\": [\"complete_date\"]}}]',16,1),(169,'2019-04-18 20:32:10.081750','4','RideRating object (4)',2,'[{\"changed\": {\"fields\": [\"complete_date\"]}}]',16,1),(170,'2019-04-18 20:32:31.494114','3','RideRating object (3)',2,'[{\"changed\": {\"fields\": [\"complete_date\"]}}]',16,1),(171,'2019-04-18 20:33:26.949845','2','RideRating object (2)',2,'[{\"changed\": {\"fields\": [\"complete_date\"]}}]',16,1),(172,'2019-04-18 20:33:48.440383','1','RideRating object (1)',2,'[{\"changed\": {\"fields\": [\"complete_date\"]}}]',16,1),(173,'2019-04-18 20:34:15.802312','9','RideRating object (9)',2,'[{\"changed\": {\"fields\": [\"rating\"]}}]',16,1),(174,'2019-04-18 20:37:10.602126','7','Uta Randall:: 7',2,'[{\"changed\": {\"fields\": [\"driver\"]}}]',13,1),(175,'2019-04-18 20:37:48.447802','7','Uta Randall:: 7',2,'[{\"changed\": {\"fields\": [\"golf_cart\"]}}]',13,1),(176,'2019-04-18 20:39:15.887917','11','RideRating object (11)',1,'[{\"added\": {}}]',16,1),(177,'2019-04-18 20:40:04.100100','12','RideRating object (12)',1,'[{\"added\": {}}]',16,1),(178,'2019-04-18 20:40:53.178544','13','RideRating object (13)',1,'[{\"added\": {}}]',16,1),(179,'2019-04-18 20:43:28.052307','14','RideRating object (14)',1,'[{\"added\": {}}]',16,1),(180,'2019-04-18 20:45:00.965097','15','RideRating object (15)',1,'[{\"added\": {}}]',16,1),(181,'2019-04-18 21:15:31.816866','8','Club Car Villager 2+2 LSV',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(182,'2019-04-18 21:15:39.290212','7','Club Car Villager 2+2 LSV',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(183,'2019-04-18 21:15:46.199535','6','Club Car Villager 2+2 LSV',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(184,'2019-04-18 21:15:52.751268','5','Club Car Villager 2+2 LSV',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(185,'2019-04-18 21:16:00.418114','4','Club Car Villager 2 LSV',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(186,'2019-04-18 21:16:07.967589','3','Club Car Villager 2 LSV',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(187,'2019-04-18 21:16:14.584696','2','Club Car Villager 2 LSV',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1),(188,'2019-04-18 21:16:21.261667','1','Club Car Villager 2 LSV',2,'[{\"changed\": {\"fields\": [\"cart_model\"]}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:41
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(18,'authtoken','token'),(5,'contenttypes','contenttype'),(7,'golfCartRideAPI','department'),(10,'golfCartRideAPI','driver'),(11,'golfCartRideAPI','golfcart'),(12,'golfCartRideAPI','location'),(8,'golfCartRideAPI','person'),(17,'golfCartRideAPI','professor'),(13,'golfCartRideAPI','ride'),(16,'golfCartRideAPI','riderating'),(9,'golfCartRideAPI','staff'),(14,'golfCartRideAPI','student'),(15,'golfCartRideAPI','studentdepartment'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:39
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-04-16 15:24:22.147983'),(2,'auth','0001_initial','2019-04-16 15:24:25.481769'),(3,'admin','0001_initial','2019-04-16 15:24:44.925147'),(4,'admin','0002_logentry_remove_auto_add','2019-04-16 15:24:49.803910'),(5,'admin','0003_logentry_add_action_flag_choices','2019-04-16 15:24:49.936557'),(6,'contenttypes','0002_remove_content_type_name','2019-04-16 15:24:52.934856'),(7,'auth','0002_alter_permission_name_max_length','2019-04-16 15:24:54.757005'),(8,'auth','0003_alter_user_email_max_length','2019-04-16 15:24:55.321150'),(9,'auth','0004_alter_user_username_opts','2019-04-16 15:24:55.404928'),(10,'auth','0005_alter_user_last_login_null','2019-04-16 15:24:56.924861'),(11,'auth','0006_require_contenttypes_0002','2019-04-16 15:24:56.973695'),(12,'auth','0007_alter_validators_add_error_messages','2019-04-16 15:24:57.046500'),(13,'auth','0008_alter_user_username_max_length','2019-04-16 15:24:59.129569'),(14,'auth','0009_alter_user_last_name_max_length','2019-04-16 15:25:03.540613'),(15,'auth','0010_alter_group_name_max_length','2019-04-16 15:25:03.916947'),(16,'auth','0011_update_proxy_permissions','2019-04-16 15:25:03.979779'),(17,'golfCartRideAPI','0001_initial','2019-04-16 15:25:04.870413'),(18,'golfCartRideAPI','0002_staff','2019-04-16 15:25:05.598467'),(19,'golfCartRideAPI','0003_auto_20190411_0309','2019-04-16 15:25:13.627957'),(20,'golfCartRideAPI','0004_auto_20190411_1225','2019-04-16 15:25:56.879341'),(21,'golfCartRideAPI','0005_auto_20190411_1313','2019-04-16 15:26:05.013338'),(22,'golfCartRideAPI','0006_auto_20190412_1307','2019-04-16 15:26:06.883872'),(23,'sessions','0001_initial','2019-04-16 15:26:09.343297'),(24,'authtoken','0001_initial','2019-04-20 01:50:18.879695'),(25,'authtoken','0002_auto_20160226_1747','2019-04-20 01:50:19.073823'),(26,'golfCartRideAPI','0007_auto_20190420_0238','2019-04-20 02:39:04.724097'),(27,'golfCartRideAPI','0008_remove_ride_driver','2019-04-20 02:42:17.739118');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:41
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('87sryjnkjkwyya0i5y6xz2nuaatwswt5','ODY4NDBkMDkzZTA1ZWQ0ZTg4YTExNjU2ZTU3NTgwNjg0YmJmYmUyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzMWQ1NWY5NDUyMzdkYjQzYTk0YThiYTkzYWQ4NmZkNmIxMmFmIn0=','2019-04-30 15:41:41.149075');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:45
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `dateHired` date NOT NULL,
  `licenseNum` varchar(100) NOT NULL,
  `golfcart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Driver_golfcart_id_875f0859_fk_GolfCart_id` (`golfcart_id`),
  CONSTRAINT `Driver_golfcart_id_875f0859_fk_GolfCart_id` FOREIGN KEY (`golfcart_id`) REFERENCES `golfcart` (`id`),
  CONSTRAINT `Driver_id_db236012_fk_Person_id` FOREIGN KEY (`id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (151,'2019-04-12','484444855215',1),(152,'2019-03-21','135296555896',2),(153,'2018-09-27','466455744826',3),(154,'2018-12-24','114324957519',4),(155,'2018-11-13','633678548645',5),(156,'2018-08-08','594497156669',6),(157,'2019-04-05','452776575447',7),(158,'2019-03-15','115578767789',8);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:40
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `golfcart`
--

DROP TABLE IF EXISTS `golfcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `golfcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `numSeats` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `golfcart`
--

LOCK TABLES `golfcart` WRITE;
/*!40000 ALTER TABLE `golfcart` DISABLE KEYS */;
INSERT INTO `golfcart` VALUES (1,'Club Car','Villager 2 LSV',2),(2,'Club Car','Villager 2 LSV',2),(3,'Club Car','Villager 2 LSV',2),(4,'Club Car','Villager 2 LSV',2),(5,'Club Car','Villager 2+2 LSV',4),(6,'Club Car','Villager 2+2 LSV',4),(7,'Club Car','Villager 2+2 LSV',4),(8,'Club Car','Villager 2+2 LSV',4);
/*!40000 ALTER TABLE `golfcart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:37
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Student Union','9201 University City Blvd, Charlotte, NC 28223','35.3087 Degrees N','80.7337 Degrees W'),(2,'West Deck','8724 Cameron Blvd, Charlotte, NC 28223','35.3055 Degrees N','80.7365 Degrees W'),(3,'UNCC Main Station','9025 Cameron Blvd, Charlotte, NC 28262','35.3122 Degrees N','80.7337 Degrees W'),(4,'Belk Gymnasium','9201 University City Blvd, Charlotte, NC 28223','35.3054 Degrees N','80.7355 Degrees W'),(5,'Cone University Center','9025 University Rd, Charlotte, NC 28262','35.3054 Degrees N','80.7332 Degrees W');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:48
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_name` (`lname`,`fname`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (121,'Audrey','Noel','eu.dui.Cum@tellus.edu','(868) 906-4256'),(122,'Selma','Beck','ut.molestie@malesuada.org','(146) 543-1084'),(123,'Emily','Skinner','Fusce.diam@in.org','(127) 434-5379'),(124,'Alea','Hale','aliquet.nec.imperdiet@Maecenasornareegestas.com','(284) 625-2298'),(125,'Garrett','Nguyen','ut.odio@eunullaat.org','(283) 508-7457'),(126,'Carl','Trevino','Suspendisse@PraesentluctusCurabitur.com','(893) 843-4609'),(127,'Marvin','Leon','euismod.et.commodo@acarcuNunc.edu','(637) 275-3400'),(128,'Desirae','Gay','laoreet.posuere@ridiculusmusProin.com','(302) 753-2671'),(129,'Francis','Crane','arcu.Vestibulum@magnis.ca','(612) 796-5762'),(130,'Kennan','Francis','egestas.urna@scelerisqueneque.ca','(670) 870-3134'),(131,'Berk','Orr','scelerisque@sagittissemper.net','(580) 719-3184'),(132,'Tiger','Ashley','nascetur.ridiculus.mus@mollisnon.co.uk','(344) 315-7404'),(133,'Karly','Bray','suscipit.nonummy@iaculislacuspede.edu','(869) 399-2620'),(134,'Sean','Henson','sed.turpis.nec@nonummyFusce.org','(851) 553-9188'),(135,'Gareth','Atkins','dapibus@turpis.co.uk','(286) 860-6443'),(136,'Sylvester','Yates','fringilla.porttitor.vulputate@nibhenim.net','(525) 634-1484'),(137,'Uta','Randall','placerat.velit@Nuncpulvinararcu.edu','(378) 886-1536'),(138,'Kelsie','Whitney','arcu@montesnasceturridiculus.net','(194) 229-9627'),(139,'Asher','Best','nunc.interdum.feugiat@dignissimMaecenasornare.com','(276) 531-9554'),(140,'Zachary','Livingston','ad.litora@Vivamuseuismodurna.edu','(392) 439-5257'),(141,'Briar','Cohen','elit.elit.fermentum@feugiatSed.co.uk','(795) 562-8950'),(142,'Ina','Porter','Fusce.mollis.Duis@loremfringilla.org','(383) 112-2303'),(143,'Shad','Williams','dignissim@arcuvel.com','(790) 473-2497'),(144,'Mariam','Odonnell','convallis.ante@non.co.uk','(212) 541-4741'),(145,'Steven','Kemp','vehicula.et.rutrum@aodio.ca','(757) 738-3966'),(146,'Haviva','Thomas','a.sollicitudin@semmolestiesodales.ca','(275) 501-0382'),(147,'Harlan','Boyer','non.vestibulum.nec@aceleifend.org','(738) 519-8158'),(148,'Dean','Sweet','at@aliquam.edu','(431) 485-9169'),(149,'Silas','Tillman','nisi.dictum@elit.co.uk','(458) 135-6700'),(150,'Nayda','Austin','eleifend.nunc.risus@eueros.edu','(946) 913-4146'),(151,'Chanda','Thornton','aliquet@nequenon.org','(942) 199-8070'),(152,'Connor','Chapman','diam.eu.dolor@loremacrisus.edu','(624) 327-3599'),(153,'Julie','Rosales','adipiscing@pedesagittis.edu','(438) 233-1049'),(154,'Amy','Mcconnell','Sed.nec@dictumplacerat.edu','(154) 830-9886'),(155,'Sarah','Watts','varius@ornare.ca','(603) 746-8152'),(156,'Rogan','Jarvis','Aliquam.erat.volutpat@tortorat.co.uk','(135) 648-5622'),(157,'Victor','Potter','lorem.eu.metus@mattisornare.ca','(623) 488-5399'),(158,'Tobias','Quinn','risus.a.ultricies@Curabitur.co.uk','(559) 431-5548');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:47
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `isFullTime` tinyint(1) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Professor_department_id_5f83b978_fk_Department_id` (`department_id`),
  CONSTRAINT `Professor_department_id_5f83b978_fk_Department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `Professor_id_ed17b42b_fk_Person_id` FOREIGN KEY (`id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (131,'Professor',1,4),(132,'Assistant Professor',1,5),(133,'Part-Time Lecturer',0,5),(134,'Professor',1,6),(135,'Associate Professor',1,7),(136,'Professor',1,8),(137,'Part-Time Lecturer',0,9),(138,'Assistant Professor',1,11),(139,'Professor',1,9),(140,'Professor',1,11);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:46
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ride`
--

DROP TABLE IF EXISTS `ride`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ride` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` datetime(6) NOT NULL,
  `endTime` datetime(6) DEFAULT NULL,
  `end_location_id` int(11) NOT NULL,
  `golfcart_id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `start_location_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Ride_end_location_id_e2f9e42a_fk_Location_id` (`end_location_id`),
  KEY `Ride_golfcart_id_f887ecb9_fk_GolfCart_id` (`golfcart_id`),
  KEY `Ride_rider_id_feb8589e_fk_Person_id` (`rider_id`),
  KEY `Ride_start_location_id_4a5ea721_fk_Location_id` (`start_location_id`),
  CONSTRAINT `Ride_end_location_id_e2f9e42a_fk_Location_id` FOREIGN KEY (`end_location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `Ride_golfcart_id_f887ecb9_fk_GolfCart_id` FOREIGN KEY (`golfcart_id`) REFERENCES `golfcart` (`id`),
  CONSTRAINT `Ride_rider_id_feb8589e_fk_Person_id` FOREIGN KEY (`rider_id`) REFERENCES `person` (`id`),
  CONSTRAINT `Ride_start_location_id_4a5ea721_fk_Location_id` FOREIGN KEY (`start_location_id`) REFERENCES `location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride`
--

LOCK TABLES `ride` WRITE;
/*!40000 ALTER TABLE `ride` DISABLE KEYS */;
INSERT INTO `ride` VALUES (1,'2019-02-21 17:15:00.000000','2019-02-21 17:21:00.000000',2,6,121,1,'complete'),(2,'2019-04-01 12:00:00.000000','2019-04-01 12:10:00.000000',5,8,121,3,'complete'),(3,'2019-02-06 11:45:00.000000','2019-02-06 12:01:00.000000',3,5,121,4,'complete'),(4,'2019-02-05 10:17:00.000000','2019-02-05 10:30:00.000000',3,4,121,5,'complete'),(5,'2018-11-14 09:07:00.000000','2018-11-14 09:09:00.000000',4,3,121,2,'complete'),(6,'2018-12-09 15:27:00.000000','2018-12-09 15:33:00.000000',3,6,121,1,'complete'),(7,'2019-03-26 10:35:00.000000',NULL,5,2,121,4,'cancelled'),(8,'2018-10-12 13:06:00.000000','2018-10-12 13:25:00.000000',5,3,146,1,'complete'),(9,'2018-12-02 08:30:00.000000','2018-12-02 08:31:00.000000',4,3,138,5,'complete'),(10,'2018-12-20 07:39:00.000000','2018-12-20 07:55:00.000000',1,3,133,4,'complete'),(11,'2019-02-16 15:39:00.000000','2019-02-16 15:51:00.000000',2,4,143,1,'complete'),(12,'2018-09-19 19:21:00.000000',NULL,4,6,139,3,'pending'),(13,'2019-03-19 17:51:00.000000',NULL,2,8,148,3,'pending'),(14,'2019-04-14 11:21:00.000000',NULL,4,1,127,1,'pending'),(15,'2019-04-18 21:06:00.000000',NULL,3,3,144,4,'pending');
/*!40000 ALTER TABLE `ride` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:49
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `riderating`
--

DROP TABLE IF EXISTS `riderating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `riderating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` int(11) NOT NULL,
  `ride_id` int(11) NOT NULL,
  `completeDate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `RideRating_ride_id_393fa5b7_fk_Ride_id` (`ride_id`),
  CONSTRAINT `RideRating_ride_id_393fa5b7_fk_Ride_id` FOREIGN KEY (`ride_id`) REFERENCES `ride` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riderating`
--

LOCK TABLES `riderating` WRITE;
/*!40000 ALTER TABLE `riderating` DISABLE KEYS */;
INSERT INTO `riderating` VALUES (1,2,1,'2019-02-21'),(2,3,2,'2019-04-01'),(3,3,3,'2019-02-06'),(4,1,4,'2019-02-05'),(5,0,5,'2018-11-14'),(6,5,6,'2018-12-09'),(7,3,7,'2019-03-26'),(8,1,8,'2018-10-12'),(9,0,9,'2018-12-02'),(10,3,10,'2018-12-20'),(11,3,11,'2019-02-16'),(12,5,12,'2018-09-19'),(13,2,13,'2019-03-19'),(14,3,14,'2019-04-14'),(15,2,15,'2019-04-18');
/*!40000 ALTER TABLE `riderating` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `completed_rating` BEFORE INSERT ON `riderating` FOR EACH ROW BEGIN
    SET NEW.completeDate = NOW();
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

-- Dump completed on 2019-04-30  1:51:46
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `top_3_drivers`
--

DROP TABLE IF EXISTS `top_3_drivers`;
/*!50001 DROP VIEW IF EXISTS `top_3_drivers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `top_3_drivers` AS SELECT 
 1 AS `driver_id`,
 1 AS `driver_first_name`,
 1 AS `driver_last_name`,
 1 AS `avrating`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ride_list`
--

DROP TABLE IF EXISTS `ride_list`;
/*!50001 DROP VIEW IF EXISTS `ride_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `ride_list` AS SELECT 
 1 AS `id`,
 1 AS `startTime`,
 1 AS `endTime`,
 1 AS `start_loc`,
 1 AS `end_loc`,
 1 AS `status`,
 1 AS `rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `top_3_drivers`
--

/*!50001 DROP VIEW IF EXISTS `top_3_drivers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_3_drivers` AS select `qr`.`driver_id` AS `driver_id`,`qr`.`driver_first_name` AS `driver_first_name`,`qr`.`driver_last_name` AS `driver_last_name`,`qr`.`avrating` AS `avrating` from (select `driver`.`id` AS `driver_id`,`person`.`fname` AS `driver_first_name`,`person`.`lname` AS `driver_last_name`,avg(`rating`.`rating`) AS `avrating` from (((`riderating` `rating` left join `ride` on((`ride`.`id` = `rating`.`ride_id`))) left join `driver` on((`driver`.`golfcart_id` = `ride`.`golfcart_id`))) left join `person` on((`person`.`id` = `driver`.`id`))) group by `driver`.`id`) `qr` order by `qr`.`avrating` desc limit 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ride_list`
--

/*!50001 DROP VIEW IF EXISTS `ride_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ride_list` AS select `ride`.`id` AS `id`,`ride`.`startTime` AS `startTime`,`ride`.`endTime` AS `endTime`,`location1`.`name` AS `start_loc`,`location2`.`name` AS `end_loc`,`ride`.`status` AS `status`,`rating`.`rating` AS `rating` from (((((`ride` left join `driver` on((`driver`.`golfcart_id` = `ride`.`golfcart_id`))) left join `person` on((`person`.`id` = `driver`.`id`))) left join `riderating` `rating` on((`rating`.`id` = `ride`.`id`))) left join `location` `location1` on((`location1`.`id` = `ride`.`start_location_id`))) left join `location` `location2` on((`location2`.`id` = `ride`.`end_location_id`))) order by `ride`.`status` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'test49ergcr'
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_person`(
      IN fname VARCHAR(100), 
      IN lname VARCHAR(100), 
      IN email VARCHAR(100), 
      IN phone VARCHAR(100)
)
BEGIN
     INSERT INTO Person (`fname`, `lname`, `email`, `phone`) 
            VALUES (fname, lname, email, phone);
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

-- Dump completed on 2019-04-30  1:51:50
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `position` varchar(55) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Staff_department_id_d915e875_fk_Department_id` (`department_id`),
  CONSTRAINT `Staff_department_id_d915e875_fk_Department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `Staff_id_34d299d0_fk_Person_id` FOREIGN KEY (`id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (121,'Assistant Director',1,3),(122,'Advisor',0,10),(123,'Graduate Enrollment Counselor',0,12),(124,'Graduate Enrollment Counselor',0,12),(125,'Mechanical Engineer',0,3),(126,'Grounds Worker',0,3),(127,'Locksmith',0,3),(128,'Associate Director',1,3),(129,'Advisor',0,10),(130,'Application Specialist',0,12);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:44
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `gradYear` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Student_id_55b295a9_fk_Person_id` FOREIGN KEY (`id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (141,'1995-01-18','2019'),(142,'1996-03-24','2020'),(143,'1999-08-04','2021'),(144,'1996-01-24','2019'),(145,'1999-08-26','2021'),(146,'1999-08-01','2022'),(147,'1995-05-21','2019'),(148,'1995-02-10','2019'),(149,'1996-01-08','2019'),(150,'1996-08-09','2019');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:42
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: test49ergcr
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `studentdepartment`
--

DROP TABLE IF EXISTS `studentdepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `studentdepartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `StudentDepartment_department_id_7261a0d8_fk_Department_id` (`department_id`),
  KEY `StudentDepartment_student_id_5b5c0f22_fk_Student_id` (`student_id`),
  CONSTRAINT `StudentDepartment_department_id_7261a0d8_fk_Department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `StudentDepartment_student_id_5b5c0f22_fk_Student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentdepartment`
--

LOCK TABLES `studentdepartment` WRITE;
/*!40000 ALTER TABLE `studentdepartment` DISABLE KEYS */;
INSERT INTO `studentdepartment` VALUES (1,4,141),(2,5,142),(3,6,143),(4,7,144),(5,8,145),(6,9,146),(7,11,147),(8,9,148),(9,9,149),(10,11,150);
/*!40000 ALTER TABLE `studentdepartment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30  1:51:47
