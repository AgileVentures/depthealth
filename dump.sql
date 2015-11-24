-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: localhost    Database: depthealth
-- ------------------------------------------------------
-- Server version	5.6.15

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add category',7,'add_category'),(20,'Can change category',7,'change_category'),(21,'Can delete category',7,'delete_category'),(22,'Can add faq',8,'add_faq'),(23,'Can change faq',8,'change_faq'),(24,'Can delete faq',8,'delete_faq'),(25,'Can add district',9,'add_district'),(26,'Can change district',9,'change_district'),(27,'Can delete district',9,'delete_district'),(28,'Can add island',10,'add_island'),(29,'Can change island',10,'change_island'),(30,'Can delete island',10,'delete_island'),(31,'Can add person',11,'add_person'),(32,'Can change person',11,'change_person'),(33,'Can delete person',11,'delete_person'),(34,'Can add user',12,'add_user'),(35,'Can change user',12,'change_user'),(36,'Can delete user',12,'delete_user'),(37,'Can add role',13,'add_role'),(38,'Can change role',13,'change_role'),(39,'Can delete role',13,'delete_role'),(40,'Can add facility',14,'add_facility'),(41,'Can change facility',14,'change_facility'),(42,'Can delete facility',14,'delete_facility'),(43,'Can add enrollment',15,'add_enrollment'),(44,'Can change enrollment',15,'change_enrollment'),(45,'Can delete enrollment',15,'delete_enrollment'),(46,'Can add student',16,'add_student'),(47,'Can change student',16,'change_student'),(48,'Can delete student',16,'delete_student'),(49,'Can add report',17,'add_report'),(50,'Can change report',17,'change_report'),(51,'Can delete report',17,'delete_report'),(52,'Can add status',18,'add_status'),(53,'Can change status',18,'change_status'),(54,'Can delete status',18,'delete_status'),(55,'Can add supportrequest',19,'add_supportrequest'),(56,'Can change supportrequest',19,'change_supportrequest'),(57,'Can delete supportrequest',19,'delete_supportrequest');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$PpMN3xP1RzMX$klNyxrYHuSD1MQhxuzp/sg7+duIGt0q4k+TcEmvQQTA=','2015-11-24 03:56:47.528614',0,'thomas.e.wassum@gmail.com','Thomas','Wassum','',0,1,'2015-11-21 04:11:11.117560'),(2,'pbkdf2_sha256$20000$hBoBCF2SYNbX$8FQ3XxMNgRB+XUJxXGGiET14vaOCYxMRxYXhMcbjxqI=','2015-11-24 04:20:49.244422',0,'twassum@my.hpu.edu','Thomas','Wassum','',0,1,'2015-11-21 04:12:17.866289'),(3,'pbkdf2_sha256$20000$WCxyhzLzTdXM$XEMsmL7B6fG5HWiwA+LMb8ezKblQkKEG5CdeloT2Tm0=',NULL,0,'imakepars15b@yahoo.com','Thomas','Wassum','',0,1,'2015-11-24 04:57:12.047365');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Category 1'),(2,'Category 2'),(3,'Category 3');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `island_id` varchar(10),
  PRIMARY KEY (`id`),
  KEY `district_cb9a66f1` (`island_id`),
  CONSTRAINT `district_island_id_24e82959a3703a03_fk_island_id` FOREIGN KEY (`island_id`) REFERENCES `island` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'Central Oahu','Oahu'),(2,'Ewa Plains','Oahu'),(3,'Honolulu','Oahu');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'faq','category'),(8,'faq','faq'),(9,'register','district'),(15,'register','enrollment'),(14,'register','facility'),(10,'register','island'),(11,'register','person'),(13,'register','role'),(12,'register','user'),(17,'reportinput','report'),(16,'reportinput','student'),(6,'sessions','session'),(18,'support','status'),(19,'support','supportrequest');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-11-21 03:43:04.726266'),(2,'auth','0001_initial','2015-11-21 03:43:17.116999'),(3,'admin','0001_initial','2015-11-21 03:43:19.591411'),(4,'contenttypes','0002_remove_content_type_name','2015-11-21 03:43:21.918807'),(5,'auth','0002_alter_permission_name_max_length','2015-11-21 03:43:23.090657'),(6,'auth','0003_alter_user_email_max_length','2015-11-21 03:43:23.963508'),(7,'auth','0004_alter_user_username_opts','2015-11-21 03:43:24.007299'),(8,'auth','0005_alter_user_last_login_null','2015-11-21 03:43:24.901542'),(9,'auth','0006_require_contenttypes_0002','2015-11-21 03:43:24.945615'),(10,'faq','0001_initial','2015-11-21 03:43:52.043702'),(11,'register','0001_initial','2015-11-21 03:44:55.352958'),(12,'register','0002_facility_count','2015-11-21 03:44:59.067138'),(13,'register','0003_auto_20151120_1742','2015-11-21 03:45:01.592131'),(14,'reportinput','0001_initial','2015-11-21 03:45:04.279158'),(15,'reportinput','0002_auto_20151116_0052','2015-11-21 03:45:06.845853'),(16,'sessions','0001_initial','2015-11-21 03:45:08.221797'),(17,'support','0001_initial','2015-11-23 01:20:06.808644');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('pyd7epzvot2cybezq893u36kbz3hma66','OThkOTFiYzBhNDg2NjUzOWUzOTIyOWMwOWU3Y2NiZjc2MTZkZGE4MTp7InVzZXIiOiJpbWFrZXBhcnMxNWJAeWFob28uY29tIn0=','2015-12-08 04:57:12.187080');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (1,'Pre-K'),(2,'K'),(3,'1'),(4,'2'),(5,'3'),(6,'4'),(7,'5'),(8,'6'),(9,'7'),(10,'8'),(11,'9'),(12,'10'),(13,'11'),(14,'12');
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `zip` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `has_pre_k` tinyint(1) NOT NULL,
  `is_only_pre_k` tinyint(1) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `fax` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `under_19_months` int(11) DEFAULT NULL,
  `over_19_months` int(11) DEFAULT NULL,
  `total_prek` int(11) DEFAULT NULL,
  `kinder_enroll` int(11) DEFAULT NULL,
  `other_enroll` int(11) DEFAULT NULL,
  `total_enrolled` int(11) DEFAULT NULL,
  `allimmune` tinyint(1) NOT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `highest_grade_id` int(11) DEFAULT NULL,
  `lowest_grade_id` int(11) DEFAULT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facility_district_id_17ce5bb624acc675_fk_district_id` (`district_id`),
  KEY `facility_highest_grade_id_4282e331763bf554_fk_enrollment_id` (`highest_grade_id`),
  KEY `facility_lowest_grade_id_ee47590d1f63419_fk_enrollment_id` (`lowest_grade_id`),
  CONSTRAINT `facility_district_id_17ce5bb624acc675_fk_district_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`),
  CONSTRAINT `facility_highest_grade_id_4282e331763bf554_fk_enrollment_id` FOREIGN KEY (`highest_grade_id`) REFERENCES `enrollment` (`id`),
  CONSTRAINT `facility_lowest_grade_id_ee47590d1f63419_fk_enrollment_id` FOREIGN KEY (`lowest_grade_id`) REFERENCES `enrollment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (1,'Dept of Health','1250 Punchbowl Street',96813,'Honolulu',0,0,8085844400,NULL,'webmail@doh.hawaii.gov',NULL,NULL,NULL,NULL,NULL,NULL,0,3,NULL,NULL,0),(2,'Leilehua High School','1515 California Ave',96786,'Wahiawa',0,0,8086226550,8086226554,'',0,0,0,0,1738,1738,0,1,14,11,8);
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_category_id_3120a99f7f29f055_fk_category_id` (`category_id`),
  CONSTRAINT `faq_category_id_3120a99f7f29f055_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'Question 1.1','Answer 1.1',1),(2,'Question 1.2','Answer 1.2',1),(3,'Question 1.3','Answer 1.3',1),(4,'Question 2.1','Answer 2.1',2),(5,'Question 2.2','Answer 2.2',2),(6,'Question 2.3','Answer 2.3',2),(7,'Question 3.1','Answer 3.1',3),(8,'Question 3.2','Answer 3.2',3),(9,'Question 3.3','Answer 3.3',3);
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `island`
--

DROP TABLE IF EXISTS `island`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `island` (
  `id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `island`
--

LOCK TABLES `island` WRITE;
/*!40000 ALTER TABLE `island` DISABLE KEYS */;
INSERT INTO `island` VALUES ('Hawai\'i'),('Kaho\'olawe'),('Kaua\'i'),('Lana\'i'),('Maui'),('Moloka\'i'),('Ni\'ihau'),('Oahu');
/*!40000 ALTER TABLE `island` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `fax` bigint(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `email_id` varchar(255) NOT NULL,
  `facility_id` int(11),
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_fdfd0ebf` (`email_id`),
  KEY `person_e32a5395` (`facility_id`),
  KEY `person_84566833` (`role_id`),
  CONSTRAINT `person_email_id_1e3477c1cb9b3e2_fk_user_username` FOREIGN KEY (`email_id`) REFERENCES `user` (`username`),
  CONSTRAINT `person_facility_id_7f819efaa67cc080_fk_facility_id` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`),
  CONSTRAINT `person_role_id_3c52eaf63519cc9f_fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Thomas','Edward','Wassum',8087546834,NULL,'Superman','thomas.e.wassum@gmail.com',1,1),(2,'Thomas','Edward','Wassum',8087546834,NULL,'Batman','twassum@my.hpu.edu',2,3),(3,'Thomas','Edward','Wassum',8087546834,NULL,'Iron Man','imakepars15b@yahoo.com',2,2);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facility_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `entrydate` date,
  PRIMARY KEY (`id`),
  KEY `report_facility_id_2bcfa970b8d7d3db_fk_facility_id` (`facility_id`),
  KEY `report_person_id_2a4c98ab7ff9158d_fk_person_id` (`person_id`),
  CONSTRAINT `report_facility_id_2bcfa970b8d7d3db_fk_facility_id` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`),
  CONSTRAINT `report_person_id_2a4c98ab7ff9158d_fk_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,2,2,'2015-11-20');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'DoH Admin'),(2,'School Admin'),(3,'User');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statustype` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Open'),(2,'In Progress'),(3,'Closed');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) NOT NULL,
  `dateofbirth` date NOT NULL,
  `entry_date` date NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `noshotrecord` tinyint(1) NOT NULL,
  `exempt_rel` tinyint(1) NOT NULL,
  `exempt_med` tinyint(1) NOT NULL,
  `dtap1` tinyint(1) NOT NULL,
  `dtap2` tinyint(1) NOT NULL,
  `dtap3` tinyint(1) NOT NULL,
  `dtap4` tinyint(1) NOT NULL,
  `dtap5` tinyint(1) NOT NULL,
  `polio1` tinyint(1) NOT NULL,
  `polio2` tinyint(1) NOT NULL,
  `polio3` tinyint(1) NOT NULL,
  `polio4` tinyint(1) NOT NULL,
  `hib` tinyint(1) NOT NULL,
  `hepb1` tinyint(1) NOT NULL,
  `hepb2` tinyint(1) NOT NULL,
  `hepb3` tinyint(1) NOT NULL,
  `mmr1` tinyint(1) NOT NULL,
  `mmr2` tinyint(1) NOT NULL,
  `varicella1` tinyint(1) NOT NULL,
  `varicella2` tinyint(1) NOT NULL,
  `pe` tinyint(1) NOT NULL,
  `tb` tinyint(1) NOT NULL,
  `enrollment_id` int(11) NOT NULL,
  `age` int(11),
  `report_id` int(11),
  PRIMARY KEY (`id`),
  KEY `student_enrollment_id_1af15c45375d23fe_fk_enrollment_id` (`enrollment_id`),
  KEY `student_6f78b20c` (`report_id`),
  CONSTRAINT `student_enrollment_id_1af15c45375d23fe_fk_enrollment_id` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  CONSTRAINT `student_report_id_70acaec9233b6b64_fk_report_id` FOREIGN KEY (`report_id`) REFERENCES `report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (10002000004,'Johnny','Walker','Blue','1999-01-01','2015-11-20','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,13,NULL,1),(10002000005,'Jose','','Cuerno','1999-01-01','2015-11-20','',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,13,NULL,1),(10002000006,'Jack','','Daniels','2000-01-01','2015-11-20','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,12,NULL,1),(10002000007,'Jim','','Bean','2001-01-01','2015-11-20','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,11,NULL,1);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supportrequest`
--

DROP TABLE IF EXISTS `supportrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supportrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `opendate` date NOT NULL,
  `closedate` date DEFAULT NULL,
  `person_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `supportrequest_person_id_7376e94ad5838f25_fk_person_id` (`person_id`),
  KEY `supportrequest_status_id_6e1399d81ae2e734_fk_status_id` (`status_id`),
  CONSTRAINT `supportrequest_status_id_6e1399d81ae2e734_fk_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  CONSTRAINT `supportrequest_person_id_7376e94ad5838f25_fk_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supportrequest`
--

LOCK TABLES `supportrequest` WRITE;
/*!40000 ALTER TABLE `supportrequest` DISABLE KEYS */;
INSERT INTO `supportrequest` VALUES (2,'This is just a test','2015-11-22',NULL,2,1),(3,'Testing','2015-11-22',NULL,2,1),(4,'Testing','2015-11-22',NULL,2,1),(5,'Another test','2015-11-22',NULL,2,1),(6,'Another test','2015-11-22',NULL,2,1),(7,'test','2015-11-22',NULL,2,1);
/*!40000 ALTER TABLE `supportrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('imakepars15b@yahoo.com','password'),('thomas.e.wassum@gmail.com','password'),('twassum@my.hpu.edu','password');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-23 18:58:59
