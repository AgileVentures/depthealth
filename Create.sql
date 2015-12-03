CREATE DATABASE  IF NOT EXISTS `depthealth` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `depthealth`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: depthealth
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$f6zbK8Nf9fjZ$oGnFixSat+83ujM90C2UrE0xn7gFFmT7cWhMKrWdSwQ=','2015-12-03 02:57:28.607601',0,'thomas.e.wassum@gmail.com','Thomas','Wassum','',0,1,'2015-11-29 10:25:51.779458'),(11,'pbkdf2_sha256$20000$LojkdpP4sMwi$AKZNo4106EUY/7eATFev3kyFx10bMnZXI2tvQ5n/tLQ=','2015-12-03 09:02:14.738086',0,'testprin@test.com','Test','Principal','',0,1,'2015-12-01 03:57:11.554992'),(12,'pbkdf2_sha256$20000$U7WxTq1yXed2$nlB5abxB3gyKDGBmyhevSm/Ualc7qJVs1QspVxt3erM=',NULL,0,'aiea.admin@test.com','Aiea','Admin','',0,1,'2015-12-02 00:00:28.275934'),(13,'pbkdf2_sha256$20000$NHyp7GEmnUn3$/SvMJOJG1l4iEPjn7vlDWZm9w8q+5scVsmf4luNpXOA=',NULL,0,'aiea.user@test.com','Aiea','User','',0,1,'2015-12-02 00:00:58.160354'),(14,'pbkdf2_sha256$20000$kfma5dzZkO8U$Ui/PQKcXZwq3uGWUCe4cbzU+Voq1gobAoLUUzlLUbgQ=','2015-12-03 02:39:05.646857',0,'leilehua.admin@test.com','Leilehua','Mules','',0,1,'2015-12-02 00:04:15.784835'),(15,'pbkdf2_sha256$20000$QdcQOXCmiEuc$3HeVYA2MInZq34XGtuR/n8O5R+4fvavlhUZ49is9hSU=',NULL,0,'testpw@test.com','This','Work','',0,1,'2015-12-03 02:29:02.981693');
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
INSERT INTO `district` VALUES (1,'Central','Oahu'),(2,'Leeward','Oahu'),(3,'Honolulu','Oahu'),(4,'Hawaii','Hawaii'),(5,'Hilo Waiakea','Hawaii'),(6,'Kauai','Kauai'),(7,'Kauai Niihau','Niihau'),(8,'Maui','Maui'),(9,'Maui Molokai','Molokai'),(10,'Windward','Oahu');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-11-29 10:18:50.388593'),(2,'auth','0001_initial','2015-11-29 10:18:53.925729'),(3,'admin','0001_initial','2015-11-29 10:18:54.596965'),(4,'contenttypes','0002_remove_content_type_name','2015-11-29 10:18:55.195164'),(5,'auth','0002_alter_permission_name_max_length','2015-11-29 10:18:55.530881'),(6,'auth','0003_alter_user_email_max_length','2015-11-29 10:18:55.830143'),(7,'auth','0004_alter_user_username_opts','2015-11-29 10:18:55.847365'),(8,'auth','0005_alter_user_last_login_null','2015-11-29 10:18:56.062648'),(9,'auth','0006_require_contenttypes_0002','2015-11-29 10:18:56.065255'),(10,'faq','0001_initial','2015-11-29 10:18:57.048029'),(11,'register','0001_initial','2015-11-29 10:19:05.033404'),(12,'register','0002_facility_count','2015-11-29 10:19:05.879324'),(13,'register','0003_auto_20151120_1742','2015-11-29 10:19:06.218121'),(14,'register','0004_person_verified','2015-11-29 10:19:07.005673'),(15,'reportinput','0001_initial','2015-11-29 10:19:08.756727'),(16,'reportinput','0002_auto_20151116_0052','2015-11-29 10:19:11.983434'),(17,'reportinput','0003_student_facility','2015-11-29 10:19:15.001267'),(18,'reportinput','0004_student_uptodate','2015-11-29 10:19:16.143288'),(19,'sessions','0001_initial','2015-11-29 10:19:17.527732'),(20,'support','0001_initial','2015-11-29 10:19:18.688450'),(21,'register','0005_facility_compliant','2015-12-02 03:38:54.929077'),(22,'reportinput','0005_report_complete','2015-12-02 03:38:55.565626');
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
INSERT INTO `django_session` VALUES ('119tmhk1zrff5mn7l4miey6q107jikae','YWRhZjhhYjBiNWY1OTZlNDgzNWU4N2U2YWE4ODM5MGZjNjY5OWQ1Yzp7Im9ubHlwcmsiOmZhbHNlLCJ1bG5hbWUiOiJhbGwiLCJfYXV0aF91c2VyX2lkIjoiMTEiLCJoYXNwcmVrIjpmYWxzZSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJsbmFtZSI6ImFsbCIsInJvbGUiOjIsImZhYyI6NCwiX2F1dGhfdXNlcl9oYXNoIjoiNzU1MDYxN2E2YWI3N2FiZTkxZTYyMzViYTQzY2YxODZkMWQ1NTA5ZiIsInBlcnNvbnBrIjoxMX0=','2015-12-17 09:02:14.822686'),('8nsfhilzck5twmnxm4pnid7881thy4ja','NjdiY2U3M2ViMGNhMzNjZjY1NGMzNTdhNTk4YjRiOTBjYTM5ZGU4Mzp7Im9ubHlwcmsiOmZhbHNlLCJ1bG5hbWUiOiIiLCJfYXV0aF91c2VyX2hhc2giOiI2N2FmMjg4Mzg2MDNlNGNhODk1OTIzYzZjOTBiOTVmM2Y0ODYzN2JmIiwic2Nob29sZmlsdGVyIjoiIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJzdHVkZW50cyI6MSwiaXNsYW5kIjoiYWxsIiwiaGFzcHJlayI6ZmFsc2UsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwicGVyc29ucGsiOjEsImxuYW1lIjoiYWxsIiwiZGlzdHJpY3QiOiJhbGwiLCJyb2xlIjoxLCJmYWMiOjEsImlucHV0aWQiOjUsInR5cGUiOjJ9','2015-12-15 04:03:16.869728'),('jmhf0oph2o0cegurefh5lgtvu8n7iyb3','ZWRhMTBlODgwMjk2NjYzYmJkYjZhY2NhMjM5ZGY1MDM0OGRiNjFjZDp7Im9ubHlwcmsiOmZhbHNlLCJ1bG5hbWUiOiJhbGwiLCJfYXV0aF91c2VyX2lkIjoiMTQiLCJzdHVkZW50cyI6NCwiaGFzcHJlayI6ZmFsc2UsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwibG5hbWUiOiJhbGwiLCJyb2xlIjozLCJ1c2VyIjoibGVpbGVodWEudXNlckB0ZXN0LmNvbSIsImZhYyI6NCwiX2F1dGhfdXNlcl9oYXNoIjoiOTRlNzBmYTlkNWY4ZGMyZGY0NWU5MGU1OTcyZGI5YWFmNmE0YzZkYyIsInBlcnNvbnBrIjoxNH0=','2015-12-16 00:06:19.745035'),('nbalw2z9o6nn55fhnzwh7tmv5zra14z0','MDQwZmUwYTQxODk2ODg0NjJmNDM0ODJkN2ZiMDU3NTg4YjQwMGIxOTp7InVzZXIiOiJ0ZXN0cHdAdGVzdC5jb20ifQ==','2015-12-17 01:38:11.982484');
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
INSERT INTO `enrollment` VALUES (1,'PreK'),(2,'K'),(3,'1'),(4,'2'),(5,'3'),(6,'4'),(7,'5'),(8,'6'),(9,'7'),(10,'8'),(11,'9'),(12,'10'),(13,'11'),(14,'12');
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
  `compliant` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facility_district_id_17ce5bb624acc675_fk_district_id` (`district_id`),
  KEY `facility_highest_grade_id_4282e331763bf554_fk_enrollment_id` (`highest_grade_id`),
  KEY `facility_lowest_grade_id_ee47590d1f63419_fk_enrollment_id` (`lowest_grade_id`),
  CONSTRAINT `facility_district_id_17ce5bb624acc675_fk_district_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`),
  CONSTRAINT `facility_highest_grade_id_4282e331763bf554_fk_enrollment_id` FOREIGN KEY (`highest_grade_id`) REFERENCES `enrollment` (`id`),
  CONSTRAINT `facility_lowest_grade_id_ee47590d1f63419_fk_enrollment_id` FOREIGN KEY (`lowest_grade_id`) REFERENCES `enrollment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (1,'Department of Health','1250 Punchbowl Street',96813,'Honolulu',0,0,8085444400,NULL,'webmail@doh.hawaii.gov',0,0,0,0,0,0,0,3,NULL,NULL,0,0),(2,'Aiea Elementary','99-370 Moanalua Road',96701,'Aiea',0,0,8084837200,8084837201,'',0,0,0,0,1205,1205,0,1,8,2,1,0),(3,'Miliani High','95-1200 Mehelua Parkway',96789,'Mililani',0,0,8086277747,8086277375,'',0,0,0,0,2854,2854,0,1,14,11,2,0),(4,'Leilehua High','1515 California Ave',96786,'Wahiawa',0,0,8086226550,8086226554,'',0,0,0,0,1738,1738,0,1,14,11,36,1),(5,'Ka \'Umeke Ka\'eo PCS','222 Desha Avenue',96720,'Hilo',1,0,8089333482,8089333488,'',11,15,26,15,70,85,0,4,14,2,4,0),(6,'Laupahoehoe Community - PCS','32-2065 Old Mamalahoa Highway',96764,'Laupahoehoe',1,0,8089622200,8089622202,'',22,12,34,12,92,104,0,4,14,2,10,0),(7,'Aina Haina Elementary','801 West Hind Drive',96821,'Honolulu',0,0,8083772419,8083772426,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(8,'Ala Wai Elementary','503 Kamoku Street',96826,'Honolulu',0,0,8089730070,8089730081,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(9,'Aliiolani Elementary','1240 7th Avenue',96816,'Honolulu',0,0,8087334750,8087334758,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(10,'Kula Kaiapuni O Anuenue','2528 10th Avenue',96816,'Honolulu',0,0,8087338465,8087338467,NULL,0,0,0,0,0,0,0,3,14,2,0,0),(11,'Central Middle','1302 Queen Emma Street',96813,'Honolulu',0,0,8085874400,8085874409,NULL,0,0,0,0,0,0,0,3,10,8,0,0),(12,'Sanford B. Dole Middle','1803 Kamehameha IV Road',96819,'Honolulu',0,0,8088323340,8088323349,NULL,0,0,0,0,0,0,0,3,10,8,0,0),(13,'Wallace Rider Farrington High','1564 North King Street',96817,'Honolulu',0,0,8088323600,8088323587,NULL,0,0,0,0,0,0,0,3,14,11,0,0),(14,'Joseph J. Fern Elementary','1121 Middle Street',96819,'Honolulu',0,0,8088323040,8088323043,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(15,'Hahaione Elementary','595 Pepeekeo Street',96825,'Honolulu',0,0,8083975822,8083975827,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(16,'Hokulani Elementary','2940 Kamakini Street',96816,'Honolulu',0,0,8087334789,8087334792,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(17,'William P. Jarrett Middle','1903 Palolo Avenue',96816,'Honolulu',0,0,8087334888,8087334894,NULL,0,0,0,0,0,0,0,3,10,8,0,0),(18,'Thomas Jefferson Elementary','324 Kapahulu Avenue',96815,'Honolulu',0,0,8089716922,8089716933,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(19,'Queen Kaahumanu Elementary','1141 Kinau Street',96814,'Honolulu',0,0,8085874414,8085874415,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(20,'Kaewai Elementary','1929 Kamehameha IV Road',96819,'Honolulu',0,0,8088323500,8088323509,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(21,'Kahala Elementary','4559 Kilauea Avenue',96816,'Honolulu',0,0,8087338455,8087334669,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(22,'Kaimuki High','2705 Kaimuki Avenue',96816,'Honolulu',0,0,8087334900,8087334929,NULL,0,0,0,0,0,0,0,3,14,11,0,0),(23,'Kaimuki Middle','631 18th Avenue',96816,'Honolulu',0,0,8087334800,8087334810,NULL,0,0,0,0,0,0,0,3,10,8,0,0),(24,'Princess Victoria Kaiulani Elementary','783 North King Street',96817,'Honolulu',0,0,8088323160,8088323164,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(25,'King David Kalakaua Middle','821 Kalihi Street',96819,'Honolulu',0,0,8088323130,8088323140,NULL,0,0,0,0,0,0,0,3,10,8,0,0),(26,'Kalani High','4680 Kalanianaole Highway',96821,'Honolulu',0,0,8083777744,8083772483,NULL,0,0,0,0,0,0,0,3,14,11,0,0),(27,'Kalihi Elementary','2471 Kula Kolea Drive',96819,'Honolulu',0,0,8088323177,8088323179,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(28,'Kalihi-kai Elementary','626 McNeil Street',96817,'Honolulu',0,0,8088323322,8088323327,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(29,'Kalihi-uka Elementary','2411 Kalihi Street',96819,'Honolulu',0,0,8088323310,8088323313,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(30,'Kalihi-waena Elementary','1240 Gulick Avenue',96819,'Honolulu',0,0,8088323210,8088323213,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(31,'Kapalama Elementary','1601 North School Street',96817,'Honolulu',0,0,8088323290,8088323302,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(32,'Kauluwela Elementary','1486 Aala Street',96817,'Honolulu',0,0,8085874447,8085874453,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(33,'Prince David Kawananakoa Middle','49 Funchal Street',96813,'Honolulu',0,0,8085874430,8085874443,NULL,0,0,0,0,0,0,0,3,10,8,0,0),(34,'Koko Head Elementary','189 Lunalilo Home Road',96825,'Honolulu',0,0,8083975811,8083975816,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(35,'Prince Jonah Kuhio Elementary','2759 South King Street',96826,'Honolulu',0,0,8089730085,8089730088,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(36,'Lanakila Elementary','717 North Kuakini Street',96817,'Honolulu',0,0,8085874466,8085874468,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(37,'King Liholiho Elementary','3430 Maunaloa Avenue',96816,'Honolulu',0,0,8087334850,8087334856,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(38,'Princess Miriam K. Likelike Elementary','1618 Palama Street',96817,'Honolulu',0,0,8088323370,8088323374,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(39,'Linapuni Elementary','1434 Linapuni Street',96819,'Honolulu',0,0,8083052150,8088323305,NULL,0,0,0,0,0,0,0,3,4,2,0,0),(40,'Abraham Lincoln Elementary','615 Auwaiolimu Street',96813,'Honolulu',0,0,8085874480,8085874487,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(41,'King William Lunalilo Elementary','810 Pumehana Street',96826,'Honolulu',0,0,8089730270,8089730276,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(42,'Maemae Elementary','319 Wyllie Street',96817,'Honolulu',0,0,8085955400,8085955405,NULL,0,0,0,0,0,0,0,3,8,2,0,0),(43,'Manoa Elementary','3155 Manoa Road',96822,'Honolulu',0,0,8089881868,8089881860,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(44,'William McKinley High','1039 South King Street',96814,'Honolulu',0,0,8085940400,8085940407,NULL,0,0,0,0,0,0,0,3,14,11,0,0),(45,'Niu Valley Middle','310 Halemaumau Street',96821,'Honolulu',0,0,8083772440,8083772444,NULL,0,0,0,0,0,0,0,3,10,8,0,0),(46,'Noelani Elementary','2655 Woodlawn Drive',96822,'Honolulu',0,0,8089881858,8089881855,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(47,'Nuuanu Elementary','3055 Puiwa Lane',96817,'Honolulu',0,0,8085955422,8085954687,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(48,'Palolo Elementary','2106 10th Avenue',96816,'Honolulu',0,0,8087334700,8087334708,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(49,'Pauoa Elementary','2301 Pauoa Road',96813,'Honolulu',0,0,8085874500,8085874506,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(50,'Jefferson Orthopedic','324 Kapahulu Avenue',96815,'Honolulu',0,0,8089716931,8089716933,NULL,0,0,0,0,0,0,0,3,8,2,0,0),(51,'Puuhale Elementary','345 Puuhale Road',96819,'Honolulu',0,0,8088323190,8088323195,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(52,'Theodore Roosevelt High','1120 Nehoa Street',96822,'Honolulu',0,0,8085874600,8085874637,NULL,0,0,0,0,0,0,0,3,14,11,0,0),(53,'Royal Elementary','1519 Queen Emma Street',96813,'Honolulu',0,0,8085874510,8085874518,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(54,'Robert Louis Stevenson Middle','1202 Prospect Street',96822,'Honolulu',0,0,8085874520,8085874523,NULL,0,0,0,0,0,0,0,3,10,8,0,0),(55,'Waialae Elementary PCS','1045 19th Avenue',96816,'Honolulu',0,0,8087334880,8087334886,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(56,'Waikiki Elementary','3710 Leahi Avenue',96815,'Honolulu',0,0,8089716900,8089716902,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(57,'George Washington Middle','1633 South King Street',96826,'Honolulu',0,0,8089730177,8089730181,NULL,0,0,0,0,0,0,0,3,10,8,0,0),(58,'John H. Wilson Elementary','4945 Kilauea Avenue',96816,'Honolulu',0,0,8087334740,8087334746,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(59,'Henry J. Kaiser High','511 Lunalilo Home Road',96825,'Honolulu',0,0,8083941200,8083941245,NULL,0,0,0,0,0,0,0,3,14,11,0,0),(60,'Kamiloiki Elementary','7788 Hawaii Kai Drive',96825,'Honolulu',0,0,8083975800,8083975806,NULL,0,0,0,0,0,0,0,3,7,2,0,0),(61,'Aiea Intermediate','99-600 Kulawea Street',96701,'Aiea',0,0,8084837230,8084837235,NULL,0,0,0,0,0,0,0,1,10,9,0,0),(62,'Aiea High','98-1276 Ulune Street',96701,'Aiea',0,0,8084837300,8084837303,NULL,0,0,0,0,0,0,0,1,14,11,0,0),(63,'Aliamanu Elementary','3265 Salt Lake Blvd.',96818,'Honolulu',0,0,8084214280,8084214283,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(64,'Aliamanu Middle','3271 Salt Lake Blvd.',96818,'Honolulu',0,0,8084214100,8084214103,NULL,0,0,0,0,0,0,0,1,10,9,0,0),(65,'Haleiwa Elementary','66-505 Haleiwa Road',96712,'Haleiwa',0,0,8086378237,8086378240,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(66,'Hale Kula Elementary','1 Ayres Avenue',96786,'Wahiawa',0,0,8086226380,8086226382,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(67,'Helemano Elementary','1001 Ihi Ihi Avenue',96786,'Wahiawa',0,0,8086226336,8086226368,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(68,'Horace Meek Hickam Elementary','Manzelman Circle',96818,'Honolulu',0,0,8084214148,8084214157,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(69,'Iliahi Elementary','2035 California Avenue',96786,'Wahiawa',0,0,8086226411,8086226413,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(70,'Kaala Elementary','130 California Avenue',96786,'Wahiawa',0,0,8086226366,8086226368,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(71,'Kipapa Elementary','95-076 Kipapa Drive',96789,'Mililani',0,0,8086277322,8086277326,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(72,'Makalapa Elementary','4435 Salt Lake Blvd.',96818,'Honolulu',0,0,8084214110,8084214112,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(73,'Moanalua Elementary','1337 Mahiole Street',96819,'Honolulu',0,0,8088317878,8088317877,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(74,'Moanalua High','2825 Ala Ilima Street',96818,'Honolulu',0,0,8088378455,8088317919,NULL,0,0,0,0,0,0,0,1,14,11,0,0),(75,'Moanalua Middle','1289 Mahiole Street',96819,'Honolulu',0,0,8088317850,8088317859,NULL,0,0,0,0,0,0,0,1,10,9,0,0),(76,'Mokulele Elementary','250 Aupaka Street',96818,'Honolulu',0,0,8084214180,8084214182,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(77,'Chester W. Nimitz Elementary','520 Main Street',96818,'Honolulu',0,0,8084214165,8084214170,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(78,'Pearl Harbor Elementary','1 Moanalua Ridge',96818,'Honolulu',0,0,8084214125,8084214128,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(79,'Pearl Harbor Kai Elementary','1 C Avenue',96818,'Honolulu',0,0,8084214245,8084214248,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(80,'Admiral Arthur W. Radford High','4361 Salt Lake Blvd.',96818,'Honolulu',0,0,8084214200,8084214210,NULL,0,0,0,0,0,0,0,1,14,11,0,0),(81,'Red Hill Elementary','1265 Ala Kula Place',96819,'Honolulu',0,0,8088317866,8088317861,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(82,'Samuel K. Solomon Elementary','2875 Waianae Uka Avenue',96786,'Wahiawa',0,0,8086249500,8086249505,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(83,'Alvah A. Scott Elementary','98-1230 Moanalua Road',96701,'Aiea',0,0,8084837220,8084837223,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(84,'William R. Shafter Elementary','2 Fort Shafter',96819,'Honolulu',0,0,8088323560,8088323562,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(85,'Wahiawa Elementary','1402 Glen Avenue',96786,'Wahiawa',0,0,8086226393,8086226394,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(86,'Wahiawa Middle','275 Rose Street',96786,'Wahiawa',0,0,8086226500,8086226506,NULL,0,0,0,0,0,0,0,1,10,8,0,0),(87,'Waialua Elementary','67-020 Waialua Beach Road',96791,'Waialua',0,0,8086378228,8086378225,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(88,'Waialua High & Intermediate','67-160 Farrington Highway',96791,'Waialua',0,0,8086378200,8086378209,NULL,0,0,0,0,0,0,0,1,14,9,0,0),(89,'Waimalu Elementary','98-825 Moanalua Road',96701,'Aiea',0,0,8084837210,8084837213,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(90,'Mililani Waena Elementary','95-502 Kipapa Drive',96789,'Mililani',0,0,8086277300,8086277455,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(91,'Gustave H. Webling Elementary','99-370 Paihi Street',96701,'Aiea',0,0,8084837240,8084837242,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(92,'Major Sheldon Wheeler Elementary','1 Wheeler Army Air Field',96786,'Wahiawa',0,0,8086226400,8086226403,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(93,'Major Sheldon Wheeler Middle','2 Wheeler Army Air Field',96786,'Wahiawa',0,0,8086226525,8086226529,NULL,0,0,0,0,0,0,0,1,10,8,0,0),(94,'Mililani Middle','95-1140 Lehiwa Drive',96789,'Mililani',0,0,8086267355,8086267358,NULL,0,0,0,0,0,0,0,1,10,8,0,0),(95,'Salt Lake Elementary','1131 Ala Lilikoi Street',96818,'Honolulu',0,0,8088317870,8088317873,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(96,'Mililani Ike Elementary','95-1330 Lehiwa Drive',96789,'Mililani',0,0,8086262980,8086262958,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(97,'Mililani Mauka Elementary','95-1111 Makaikai Street',96789,'Mililani',0,0,8086263350,8086263006,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(98,'Mililani Uka Elementary','94-380 Kuahelani Avenue',96789,'Mililani',0,0,8086277303,8086277387,NULL,0,0,0,0,0,0,0,1,7,2,0,0),(99,'Pearl Ridge Elementary','98-940 Moanalua Road',96701,'Aiea',0,0,8084837250,8084837255,NULL,0,0,0,0,0,0,0,1,8,2,0,0),(100,'August Ahrens Elementary','94-1170 Waipahu Street',96797,'Waipahu',0,0,8086750202,8086750216,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(101,'Barbers Point Elementary','3001 Boxer Road',96707,'Kapolei',0,0,8086737400,8086737403,NULL,0,0,0,0,0,0,0,2,7,2,0,0),(102,'James Campbell High','91-980 North Road',96706,'Ewa Beach',0,0,8086891200,8086891242,NULL,0,0,0,0,0,0,0,2,14,11,0,0),(103,'Ewa Elementary','91-1280 Renton Road',96706,'Ewa Beach',0,0,8086818202,8086818206,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(104,'Ewa Beach Elementary','91-740 Papipi Road',96706,'Ewa Beach',0,0,8086891271,8086891275,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(105,'Highlands Intermediate','1460 Hoolaulea Street',96782,'Pearl City',0,0,8084536480,8084536484,NULL,0,0,0,0,0,0,0,2,10,9,0,0),(106,'Iroquois Point Elementary','5553 Cormorant Avenue',96706,'Ewa Beach',0,0,8084996500,8084996508,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(107,'Maili Elementary','87-360 Kulaaupuni Street',96792,'Waianae',0,0,8086977150,8086977151,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(108,'Makaha Elementary','84-200 Ala Naauao Place',96792,'Waianae',0,0,8086957900,8086957905,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(109,'Makakilo Elementary','92-675 Anipeahi Street',96707,'Kapolei',0,0,8086721122,8086721128,NULL,0,0,0,0,0,0,0,2,7,2,0,0),(110,'Manana Elementary','1147 Kumano Street',96782,'Pearl City',0,0,8084536430,8084536437,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(111,'Nanaikapono Elementary','89-153 Mano Avenue',96792,'Waianae',0,0,8086685800,8086685890,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(112,'Nanakuli Elementary','89-778 Haleakala Avenue',96792,'Waianae',0,0,8086685813,8086685817,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(113,'Nanakuli High & Intermediate','89-980 Nanakuli Avenue',96792,'Waianae',0,0,8086685823,8086685828,NULL,0,0,0,0,0,0,0,2,14,9,0,0),(114,'Palisades Elementary','2306 Auhuhu Street',96782,'Pearl City',0,0,8084536550,8084535910,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(115,'Pearl City Elementary','1090 Waimano Home Road',96782,'Pearl City',0,0,8084536455,8084536467,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(116,'Pearl City High','2100 Hookiekie Street',96782,'Pearl City',0,0,8084536500,8084536521,NULL,0,0,0,0,0,0,0,2,14,11,0,0),(117,'Pearl City Highlands Elementary','1419 Waimano Home Road',96782,'Pearl City',0,0,8084536470,8084536472,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(118,'Lehua Elementary','791 Lehua Avenue',96782,'Pearl City',0,0,8084536490,8084536497,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(119,'Pohakea Elementary','91-750 Fort Weaver Road',96706,'Ewa Beach',0,0,8086891290,8086891293,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(120,'Waianae Elementary','85-220 McArthur Street',96792,'Waianae',0,0,8086977083,8086977090,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(121,'Leihoku Elementary','86-285 Leihoku Street',96792,'Waianae',0,0,8086977100,8086977142,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(122,'Waianae High','85-251 Farrington Highway',96792,'Waianae',0,0,8086977017,8086977018,NULL,0,0,0,0,0,0,0,2,14,11,0,0),(123,'Waianae Intermediate','85-626 Farrington Highway',96792,'Waianae',0,0,8086977121,8086977124,NULL,0,0,0,0,0,0,0,2,10,9,0,0),(124,'Waipahu Elementary','94-465 Waipahu Street',96797,'Waipahu',0,0,8086750150,8086750121,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(125,'Kamaile Academy PCS','85-180 Ala Akau Street',96792,'Waianae',0,0,8086977110,8086977115,NULL,0,0,0,0,0,0,0,2,14,2,0,0),(126,'Honowai Elementary','94-600 Honowai Street',96797,'Waipahu',0,0,8086750165,8086750167,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(127,'Waipahu High','94-1211 Farrington Highway',96797,'Waipahu',0,0,8086750222,8086750257,NULL,0,0,0,0,0,0,0,2,14,11,0,0),(128,'Waipahu Intermediate','94-445 Farrington Highway',96797,'Waipahu',0,0,8086750177,8086750181,NULL,0,0,0,0,0,0,0,2,10,9,0,0),(129,'Ilima Intermediate ','91-884 Fort Weaver Road',96706,'Ewa Beach',0,0,8086891250,8086891258,NULL,0,0,0,0,0,0,0,2,10,9,0,0),(130,'Holomua Elementary','91-1561 Keaunui Drive',96706,'Ewa Beach',0,0,8086852000,8086852003,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(131,'Kaimiloa Elementary','91-1028 Kaunolu Street',96706,'Ewa Beach',0,0,8086891280,8086891284,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(132,'Kapolei Elementary','91-1119 Kamaaha Loop',96707,'Kapolei',0,0,8086937000,8086937011,NULL,0,0,0,0,0,0,0,2,7,2,0,0),(133,'Kanoelani Elementary','94-1091 Oli Loop',96797,'Waipahu',0,0,8086750195,8086750135,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(134,'Momilani Elementary','2130 Hookiekie Street',96782,'Pearl City',0,0,8084536444,8084536448,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(135,'Mauka Lani Elementary','92-1300 Panana Street',96707,'Kapolei',0,0,8086721100,8086721114,NULL,0,0,0,0,0,0,0,2,7,2,0,0),(136,'Kaleiopuu Elementary','94-665 Kaaholo Street',96797,'Waipahu',0,0,8086750266,8086750269,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(137,'Waiau Elementary','98-450 Hookanike Street',96782,'Pearl City',0,0,8084536530,8084536541,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(138,'Waikele Elementary','94-1035 Kukula Street',96797,'Waipahu',0,0,8086776100,8086776106,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(139,'Kapolei Middle','91-5335 Kapolei Parkway',96707,'Kapolei',0,0,8086937025,8086937030,NULL,0,0,0,0,0,0,0,2,10,8,0,0),(140,'Kapolei High','91-5007 Kapolei Parkway',96707,'Kapolei',0,0,8086928200,8086928255,NULL,0,0,0,0,0,0,0,2,14,11,0,0),(141,'Hookele Elementary School','511 Kunehi Street',96707,'Kapolei',0,0,8083058500,0,NULL,0,0,0,0,0,0,0,2,7,2,0,0),(142,'Keoneula Elementary','91-970 Kaileolea Drive',96706,'Ewa Beach',0,0,8085307253,8086891350,NULL,0,0,0,0,0,0,0,2,8,2,0,0),(143,'Ewa Makai Middle School','91-6291 Kapolei Parkway',96706,'Kapolei',0,0,8086879500,8086852052,NULL,0,0,0,0,0,0,0,2,10,9,0,0),(144,'Aikahi Elementary','281 Ilihau Street',96734,'Kailua',0,0,8082547944,8082547962,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(145,'James B. Castle High','45-386 Kaneohe Bay Drive',96744,'Kaneohe',0,0,8082335600,8082335623,NULL,0,0,0,0,0,0,0,10,14,11,0,0),(146,'Enchanted Lake Elementary','770 Keolu Drive',96734,'Kailua',0,0,8082667800,8082667804,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(147,'Hauula Elementary','54-046 Kamehameha Highway',96717,'Hauula',0,0,8082938925,8082938927,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(148,'Heeia Elementary','46-202 Haiku Road',96744,'Kaneohe',0,0,8082335677,8082335679,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(149,'Kaaawa Elementary','51-296 Kamehameha Highway',96730,'Kaaawa',0,0,8082377751,8082377755,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(150,'Kahaluu Elementary','47-280 Waihee Road',96744,'Kaneohe',0,0,8082393101,8082393102,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(151,'Kahuku High and Intermediate','56-490 Kamehameha Highway',96731,'Kahuku',0,0,8082938950,8082938960,NULL,0,0,0,0,0,0,0,10,14,9,0,0),(152,'Kailua Elementary','315 Kuulei Road',96734,'Kailua',0,0,8082667878,8082667882,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(153,'Kailua High','451 Ulumanu Drive',96734,'Kailua',0,0,8082667900,8082667915,NULL,0,0,0,0,0,0,0,10,14,11,0,0),(154,'Kailua Intermediate','145 South Kainalu Drive',96734,'Kailua',0,0,8082631500,8082667984,NULL,0,0,0,0,0,0,0,10,10,9,0,0),(155,'Kainalu Elementary','165 Kaiholu Street',96734,'Kailua',0,0,8082667835,8082667837,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(156,'Kalaheo High','730 Iliaina Street',96734,'Kailua',0,0,8082547900,8082547907,NULL,0,0,0,0,0,0,0,10,14,11,0,0),(157,'Kaneohe Elementary','45-495 Kamehameha Highway',96744,'Kaneohe',0,0,8082335633,8082339185,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(158,'Puohala Elementary','45-233 Kulauli Street',96744,'Kaneohe',0,0,8083055900,8082335663,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(159,'Kapunahala Elementary','45-828 Anoi Road',96744,'Kaneohe',0,0,8082335650,8082335651,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(160,'Keolu Elementary','1416 Keolu Drive',96734,'Kailua',0,0,8082667818,8082667892,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(161,'Samuel Wilder King Intermediate','46-155 Kamehameha Highway',96744,'Kaneohe',0,0,8082335727,8082335747,NULL,0,0,0,0,0,0,0,10,10,9,0,0),(162,'Laie Elementary','55-109 Kulanui Street',96762,'Laie',0,0,8082938965,8082938968,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(163,'Lanikai Elementary PCS','140 Alala Road',96734,'Kailua',0,0,8082667844,8082667848,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(164,'Maunawili Elementary','1465 Ulupii Street',96734,'Kailua',0,0,8082667822,8082667834,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(165,'Mokapu Elementary','1193 Mokapu Blvd.   KMCB Bldg.',96734,'Kailua',0,0,8082547964,8082547969,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(166,'Benjamin Parker Elementary','45-259 Waikalua Road',96744,'Kaneohe',0,0,8082335686,8082335689,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(167,'Blanche Pope Elementary','41-133 Huli Street',96795,'Waimanalo',0,0,8082590450,8082590452,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(168,'Sunset Beach Elementary','59-360 Kamehameha Highway',96712,'Haleiwa',0,0,8086388777,8086388789,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(169,'Waiahole Elementary','48-215 Waiahole Valley Road',96744,'Kaneohe',0,0,8082393111,8082393113,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(170,'Waimanalo Elementary & Intermediate','41-1330 Kalanianaole Highway',96795,'Waimanalo',0,0,8082590460,8082590463,NULL,0,0,0,0,0,0,0,10,10,2,0,0),(171,'Kaelepulu Elementary','530 Keolu Drive',96734,'Kailua',0,0,8082667811,8082667813,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(172,'Kahuku Elementary','56-170 Pualalea Street',96731,'Kahuku',0,0,8082938980,8082938985,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(173,'Ahuimanu Elementary','47-470 Hui Aeko Place',96744,'Kaneohe',0,0,8082393125,8082393127,NULL,0,0,0,0,0,0,0,10,8,2,0,0),(174,'Ernest Bowen de Silva Elementary','278 Ainako Avenue',96720,'Hilo',0,0,8089744855,8089744858,NULL,0,0,0,0,0,0,0,4,8,2,0,0),(175,'Haaheo Elementary','121 Haaheo Road',96720,'Hilo',0,0,8089744111,8089744112,NULL,0,0,0,0,0,0,0,4,8,2,0,0),(176,'Keaau Elementary','16-680 Keaau-Pahoa Road',96749,'Keaau',0,0,8089824210,8089824217,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(177,'Keaau High','16-725 Keaau-Pahoa Road',96749,'Keaau',0,0,8089824220,8089824224,NULL,0,0,0,0,0,0,0,4,14,11,0,0),(178,'Hilo High','556 Waianuenue Avenue',96720,'Hilo',0,0,8089744021,8089744036,NULL,0,0,0,0,0,0,0,4,14,11,0,0),(179,'Hilo Intermediate','587 Waianuenue Avenue',96720,'Hilo',0,0,8089744955,8089746184,NULL,0,0,0,0,0,0,0,4,10,9,0,0),(180,'Hilo Union Elementary','506 Waianuenue Avenue',96720,'Hilo',0,0,8089330900,8089330905,NULL,0,0,0,0,0,0,0,4,8,2,0,0),(181,'Holualoa Elementary','76-5957 Mamalahoa Highway',96725,'Holualoa',0,0,8083224800,8083224801,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(182,'Honaunau Elementary','83-5360 Mamalahoa Highway',96704,'Captain Cook',0,0,8083282727,8083282729,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(183,'Honokaa High and Intermediate','45-527 Pakalana Street',96727,'Honokaa',0,0,8087758800,8087758803,NULL,0,0,0,0,0,0,0,4,14,9,0,0),(184,'Honokaa Elementary','45-534 Pakalana Street',96727,'Honokaa',0,0,8087758820,8087758828,NULL,0,0,0,0,0,0,0,4,8,2,0,0),(185,'Hookena Elementary','86-4355 Mamalahoa Highway',96704,'Captain Cook',0,0,8083282710,8083282712,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(186,'Kalanianaole Elementary and Intermediate','27-330 Old Mamalahoa Highway',96781,'Papaikou',0,0,8089649700,8089649703,NULL,0,0,0,0,0,0,0,4,10,2,0,0),(187,'Kohala Middle','53-4155 Akoni Pule Highway',96755,'Kapaau',0,0,8088897119,8088897121,NULL,0,0,0,0,0,0,0,4,10,8,0,0),(188,'Chiefess Kapiolani Elementary','966 Kilauea Avenue',96720,'Hilo',0,0,8089744160,8089744161,NULL,0,0,0,0,0,0,0,4,8,2,0,0),(189,'Kau High & Pahala Elementary','96-3150 Pikake Street',96777,'Pahala',0,0,8083134100,8089282092,NULL,0,0,0,0,0,0,0,4,14,2,0,0),(190,'Kaumana Elementary','1710 Kaumana Drive',96720,'Hilo',0,0,8089744190,8089744197,NULL,0,0,0,0,0,0,0,4,8,2,0,0),(191,'Keaau Middle','16-565  Keaau-Pahoa Road',96749,'Keaau',0,0,8089824200,8089824219,NULL,0,0,0,0,0,0,0,4,10,8,0,0),(192,'Kahakai Elementary','76-147 Royal Poinciana Drive',96740,'Kailua-Kona',0,0,8083274313,8083274333,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(193,'Keaukaha Elementary','240 Desha Avenue',96720,'Hilo',0,0,8089744181,8089744868,NULL,0,0,0,0,0,0,0,4,8,2,0,0),(194,'Kohala High','54-3611 Akoni Pule Highway',96755,'Kapaau',0,0,8088897117,8088897120,NULL,0,0,0,0,0,0,0,4,14,11,0,0),(195,'Konawaena High','81-1043 Konawaena School Road',96750,'Kealakekua',0,0,8083234500,8083234515,NULL,0,0,0,0,0,0,0,4,14,11,0,0),(196,'Konawaena Elementary','81-901 Onouli Road',96750,'Kealakekua',0,0,8083234555,8083234551,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(197,'Konawaena Middle','81-1045 Konawaena School Road',96750,'Kealakekua',0,0,8083234566,8083234574,NULL,0,0,0,0,0,0,0,4,10,8,0,0),(198,'Ke Kula O Ehunuikaimalino','81-1041 Konawaena School Road',96750,'Kealakekua',0,0,8083231900,8083234538,NULL,0,0,0,0,0,0,0,4,14,2,0,0),(199,'Mountain View Elementary','18-1235 Volcano Highway',96771,'Mountain View',0,0,8089682300,8089682305,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(200,'Naalehu Elementary','95-5545 Mamalahoa Highway',96772,'Naalehu',0,0,8089392413,8089392419,NULL,0,0,0,0,0,0,0,4,8,2,0,0),(201,'Pahoa Elementary','15-3030 Pahoa Village Road',96778,'Pahoa',0,0,8089652141,8089652180,NULL,0,0,0,0,0,0,0,4,8,2,0,0),(202,'Paauilo Elementary & Intermediate','43-1497 Old Main Road',96776,'Paauilo',0,0,8087767710,8087767714,NULL,0,0,0,0,0,0,0,4,11,2,0,0),(203,'Pahoa High & Intermediate','15-3038 Puna Road',96778,'Pahoa',0,0,8089652150,8089652153,NULL,0,0,0,0,0,0,0,4,14,9,0,0),(204,'Waiakea Elementary','180 West Puainako Street',96720,'Hilo',0,0,8089817215,8089817218,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(205,'Waiakea Intermediate','200 West Puainako Street',96720,'Hilo',0,0,8089817231,8089817237,NULL,0,0,0,0,0,0,0,4,10,8,0,0),(206,'Waiakeawaena Elementary','2420 Kilauea Avenue',96720,'Hilo',0,0,8089817200,8089817205,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(207,'Waimea Elementary','67-1225 Mamalahoa Highway',96743,'Kamuela',0,0,8088877636,8088877640,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(208,'Kealakehe Elementary','74-5118 Kealakaa Street',96740,'Kailua-Kona',0,0,8083274308,8083274347,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(209,'Waiakea High','155 W. Kawili Street',96720,'Hilo',0,0,8089744888,8089744880,NULL,0,0,0,0,0,0,0,4,14,11,0,0),(210,'Kealakehe Intermediate','74-5062 Onipaa Street',96740,'Kailua-Kona',0,0,8083274314,8083274315,NULL,0,0,0,0,0,0,0,4,10,8,0,0),(211,'Keonepoko Elementary','15-890 Kahakai Boulevard',96778,'Pahoa',0,0,8089652131,8089652138,NULL,0,0,0,0,0,0,0,4,8,2,0,0),(212,'Kealakehe High','74-5000 Puohulihuli Street',96740,'Kailua-Kona',0,0,8083274300,8083274307,NULL,0,0,0,0,0,0,0,4,14,11,0,0),(213,'Waikoloa Elementary and Middle','68-1730 Hooko Street',96738,'Waikoloa',0,0,8088836808,8088836811,NULL,0,0,0,0,0,0,0,4,9,2,0,0),(214,'Waimea Middle PCCS','67-1229 Mamalahoa Hwy.',96743,'Kamuela',0,0,8088876090,8088876087,NULL,0,0,0,0,0,0,0,4,10,8,0,0),(215,'Kohala Elementary','54-3609 Akoni Pule Highway',96755,'Kapaau',0,0,8088897100,8088897103,NULL,0,0,0,0,0,0,0,4,7,2,0,0),(216,'Connections NCPCS','174 Kamehameha Avenue',96720,'Hilo',0,0,8089613664,8089612665,NULL,0,0,0,0,0,0,0,5,2,2,0,0),(217,'Kanu o ka \'Aina NCPCS','64-1043 Hi\'iaka St.',96743,'Kamuela',0,0,8088878144,8088878146,NULL,0,0,0,0,0,0,0,4,14,2,0,0),(218,'Na Wai Ola NCPCS','18-1355 Volcano Highway  P.O. Box 711539',96771,'Mountain View',0,0,8089666175,8089680778,NULL,0,0,0,0,0,0,0,4,9,2,0,0),(219,'West Hawaii Explorations Academy PCS','73-4460 Queen Kaahumanu Hwy.  PMB 503 Highway  Suite #105',96740,'Kailua-Kona',0,0,8083274751,8083274750,NULL,0,0,0,0,0,0,0,4,14,8,0,0),(220,'Henry Perrine Baldwin High','1650 Kaahumanu Avenue',96793,'Wailuku',0,0,8089845656,8089845674,NULL,0,0,0,0,0,0,0,8,14,11,0,0),(221,'Haiku Elementary','105 Pauwela Road',96708,'Haiku',0,0,8085753000,8085753003,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(222,'Hana High and Elementary','4111 Hana Highway',96713,'Hana',0,0,8082484815,8082484819,NULL,0,0,0,0,0,0,0,8,14,2,0,0),(223,'Iao Intermediate','260 South Market Street',96793,'Wailuku',0,0,8089845610,8089845617,NULL,0,0,0,0,0,0,0,8,10,8,0,0),(224,'Kahului Elementary','410 South Hina Avenue',96732,'Kahului',0,0,8088733055,8088733089,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(225,'King Kamehameha III Elementary','611 Front Street',96761,'Lahaina',0,0,8086623955,8086623958,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(226,'Kaunakakai Elementary','30 Ailoa',96748,'Kaunakakai',0,0,8085531730,8085531737,NULL,0,0,0,0,0,0,0,9,8,2,0,0),(227,'Kihei Elementary','250 E. Lipoa Street',96753,'Kihei',0,0,8088756818,8088756825,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(228,'Kilohana Elementary','Kamehameha V Highway',96748,'Kaunakakai',0,0,8085582200,8085582203,NULL,0,0,0,0,0,0,0,8,8,2,0,0),(229,'Kualapu\'u Elementary NCPCCS','260 Farrington Avenue',96757,'Kualapuu',0,0,8085676900,8085676906,NULL,0,0,0,0,0,0,0,8,8,2,0,0),(230,'Kula Elementary','5000 Kula Highway',96790,'Kula',0,0,8088767610,8088767616,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(231,'Lahaina Intermediate','871 Lahainaluna Road',96761,'Lahaina',0,0,8086623965,8086623968,NULL,0,0,0,0,0,0,0,8,10,8,0,0),(232,'Lahainaluna High','980 Lahainaluna Road',96761,'Lahaina',0,0,8086624000,8086623997,NULL,0,0,0,0,0,0,0,8,14,11,0,0),(233,'Lanai High & Elementary','555 Fraser Avenue',96763,'Lanai City',0,0,8085657900,8085657904,NULL,0,0,0,0,0,0,0,8,14,2,0,0),(234,'Lihikai Elementary','335 South Papa Avenue',96732,'Kahului',0,0,8088733033,8088733570,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(235,'Makawao Elementary','3542 Baldwin Avenue',96768,'Makawao',0,0,8085738770,8085738774,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(236,'Maui High','660 South Lono Avenue',96732,'Kahului',0,0,8088733000,8088733010,NULL,0,0,0,0,0,0,0,8,14,11,0,0),(237,'Maunaloa Elementary','Maunaloa Highway',96770,'Maunaloa',0,0,8085522000,8085522004,NULL,0,0,0,0,0,0,0,8,8,2,0,0),(238,'Samuel Enoka Kalama Intermediate','120 Makani Road',96768,'Makawao',0,0,8085738735,8085738748,NULL,0,0,0,0,0,0,0,8,10,8,0,0),(239,'Molokai High','2140 Farrington Avenue',96729,'Hoolehua',0,0,8085676950,8085676960,NULL,0,0,0,0,0,0,0,9,14,11,0,0),(240,'Paia Elementary','955 Baldwin Avenue',96779,'Paia',0,0,8085792100,8085792103,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(241,'Waihee Elementary','2125 Kahekili Highway',96793,'Wailuku',0,0,8089845644,8089845648,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(242,'Wailuku Elementary','355 South High Street',96793,'Wailuku',0,0,8089845622,8089845627,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(243,'Pukalani Elementary','2945 Iolani Street',96768,'Pukalani',0,0,8085738760,8085738766,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(244,'Maui Waena Intermediate','795 Onehee Street',96732,'Kahului',0,0,8088733070,8088733066,NULL,0,0,0,0,0,0,0,8,10,8,0,0),(245,'Princess Nahienaena Elementary','816 Niheu Street',96761,'Lahaina',0,0,8086624020,8086624023,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(246,'Lokelani Intermediate','1401 Liloa Drive',96753,'Kihei',0,0,8088756800,8088756835,NULL,0,0,0,0,0,0,0,8,10,8,0,0),(247,'Kamalii Elementary','180 Kealii Alanui',96753,'Kihei',0,0,8088756840,8088756843,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(248,'Pomaikai Elementary School','4650 S. Kamehameha Avenue',96732,'Kahului',0,0,8088733410,8088733414,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(249,'Molokai Middle','2175 Lihipali Avenue',96729,'Hoolehua',0,0,8085676940,8085676939,NULL,0,0,0,0,0,0,0,9,10,9,0,0),(250,'King Kekaulike High','121 Kula Highway',96768,'Pukalani',0,0,8085738710,8085732231,NULL,0,0,0,0,0,0,0,8,14,11,0,0),(251,'Pu\'u Kukui Elementary','3700 Kehalani Mauka Parkway',96793,'Wailuku',0,0,8089845610,8087273120,NULL,0,0,0,0,0,0,0,8,7,2,0,0),(252,'Kapaa Middle','4867 Olohena Road',96746,'Kapaa',0,0,8088214460,8088216967,NULL,0,0,0,0,0,0,0,6,10,8,0,0),(253,'Chiefess Kamakahelei Middle','4431 Nuhou St.',96766,'Lihue',0,0,8082413200,8082413210,NULL,0,0,0,0,0,0,0,6,10,8,0,0),(254,'Eleele Elementary','4750 Uliuli Road',96705,'Eleele',0,0,8083352111,8083358415,NULL,0,0,0,0,0,0,0,6,7,2,0,0),(255,'Hanalei Elementary','5-5415 Kuhio Highway',96714,'Hanalei',0,0,8088264300,8088264302,NULL,0,0,0,0,0,0,0,6,8,2,0,0),(256,'Kalaheo Elementary','4400 Maka Road',96741,'Kalaheo',0,0,8083326801,8083326804,NULL,0,0,0,0,0,0,0,6,7,2,0,0),(257,'Kapaa Elementary','4886 Kawaihau Road',96746,'Kapaa',0,0,8088214424,8088214431,NULL,0,0,0,0,0,0,0,6,7,2,0,0),(258,'Kapaa High','4695 Mailihuna Road',96746,'Kapaa',0,0,8088214400,8088214420,NULL,0,0,0,0,0,0,0,6,14,11,0,0),(259,'Kauai High','3577 Lala Road',96766,'Lihue',0,0,8082743160,8082743170,NULL,0,0,0,0,0,0,0,6,14,11,0,0),(260,'King Kaumualii Elementary','4380 Hanamaulu Road',96766,'Lihue',0,0,8082413150,8082413159,NULL,0,0,0,0,0,0,0,6,7,2,0,0),(261,'Kekaha Elementary','8140 Kekaha Road',96752,'Kekaha',0,0,8083377655,8083377657,NULL,0,0,0,0,0,0,0,6,7,2,0,0),(262,'Kilauea Elementary','2440 Kolo Road',96754,'Kilauea',0,0,8088281212,8088282034,NULL,0,0,0,0,0,0,0,6,8,2,0,0),(263,'Koloa Elementary','3223 Poipu Road',96756,'Koloa',0,0,8087428460,8087428466,NULL,0,0,0,0,0,0,0,6,7,2,0,0),(264,'Niihau','c/o Waimea High School  9707 Tsuchiya Road',96796,'Waimea',0,0,8083386800,8083386807,NULL,0,0,0,0,0,0,0,7,14,2,0,0),(265,'Waimea High','9707 Tsuchiya Road',96796,'Waimea',0,0,8083386800,8083386807,NULL,0,0,0,0,0,0,0,6,14,11,0,0),(266,'Elsie H. Wilcox Elementary','4319 Hardy Street',96766,'Lihue',0,0,8082743150,8082743152,NULL,0,0,0,0,0,0,0,6,7,2,0,0),(267,'Waimea Canyon Middle','9555 Huakai Road',96796,'Waimea',0,0,8083386830,8083386832,NULL,0,0,0,0,0,0,0,6,10,8,0,0),(268,'Kula Aupuni Niihau A Kahelelani Aloha NCPCS','8315 Kekaha Road  Suite P',96752,'Kekaha',0,0,8083372022,8083372033,NULL,0,0,0,0,0,0,0,6,14,2,0,0),(269,'Hawaii School for the Deaf and the Blind','3440 Leahi Avenue',96815,'Honolulu',0,0,8087334999,8087334824,NULL,0,0,0,0,0,0,0,3,14,2,0,0),(270,'Olomana','42-522 Kalanianaole Highway',96734,'Kailua',0,0,8082667866,8082667873,NULL,0,0,0,0,0,0,0,10,14,9,0,0),(271,'Halau Ku Mana NCPCS','2101 Makiki Heights Drive',96822,'Honolulu',0,0,8089451600,8089451604,NULL,0,0,0,0,0,0,0,3,14,8,0,0),(272,'Voyager PCS','2428 Wilder Avenue',96822,'Honolulu',0,0,8085219770,8085219772,NULL,0,0,0,0,0,0,0,3,9,2,0,0),(273,'University Laboratory School','1776 University Avenue  UHS Bldg 3  #121',96822,'Honolulu',0,0,8089567833,8089567260,NULL,0,0,0,0,0,0,0,3,14,2,0,0),(274,'Myron B. Thompson Academy NCPCS','1040 Richards St.  Ste. 220',96813,'Honolulu',0,0,8084418001,8086837062,NULL,0,0,0,0,0,0,0,3,14,2,0,0),(275,'Ka Waihona o ka Na\'auao NCPCS','89-195 Farrington Highway',96792,'Wai\'anae',0,0,8086209030,8086209036,NULL,0,0,0,0,0,0,0,2,10,2,0,0),(276,'Hakipu\'u Learning Center PCS','45-720 Keaahala Road',96744,'Kaneohe',0,0,8082359155,8082359160,NULL,0,0,0,0,0,0,0,10,14,6,0,0),(277,'Ke Kula \'o Samuel M. Kamakau Laboratory PCS','46-500 Kuneki Street',96744,'Kaneohe',0,0,8082359175,8082359173,NULL,0,0,0,0,0,0,0,10,14,2,0,0),(278,'Innovations PCS','75-5815 Queen Kaahumanu Highway',96740,'Kailua-Kona',0,0,8083276205,8083276209,NULL,0,0,0,0,0,0,0,4,10,3,0,0),(279,'Ke Ana La\'ahana PCS','162 Baker Avenue',96720,'Hilo',0,0,8089616228,8089616229,NULL,0,0,0,0,0,0,0,4,14,9,0,0),(280,'Malama Honua Public Charter School','41-054 Ehukai Street',96795,'Waimanalo',0,0,8082595522,8082595525,NULL,0,0,0,0,0,0,0,10,5,2,0,0),(281,'Hawaii Technology Academy PCS','94-810 Moloalo Street',96797,'Waipahu',0,0,8086765444,8086765470,NULL,0,0,0,0,0,0,0,2,14,2,0,0),(282,'Kau Learning Academy','94-1581 Kaulua Circle',96772,'Naalehu',0,0,8084980761,8084980763,NULL,0,0,0,0,0,0,0,4,8,5,0,0),(283,'Kihei Charter School','300 Ohukai Road  #209',96753,'Kihei',0,0,8088750700,8088746745,NULL,0,0,0,0,0,0,0,8,14,2,0,0),(284,'Ke Kula Ni\'ihau o Kekaha Learning Center A Laboratory PCS','8135 Kekaha Road',96752,'Kekaha',0,0,8083370481,8083371289,NULL,0,0,0,0,0,0,0,6,14,2,0,0),(285,'Kua o ka La PCS','14-5322 Kaimu/Kapoho Road - Hwy. 137  Mile Marker 10',96778,'Pahoa',0,0,8089655098,8089659618,NULL,0,0,0,0,0,0,0,4,14,2,0,0),(286,'Volcano School of Arts and Sciences PCS','99-128 Old Volcano Road',96785,'Volcano',0,0,8089859800,8089859898,NULL,0,0,0,0,0,0,0,4,10,2,0,0),(287,'Hawaii Academy of Arts and Science PCS','15-1397 Homestead Road',96778,'Pahoa',0,0,8089653730,8089653733,NULL,0,0,0,0,0,0,0,4,14,2,0,0),(288,'Ke Kula \'o Nawahiokalani\'opu\'u Iki Laboratory PCS','16-120 Opukahaia Street  Suite 2',96749,'Keaau',1,0,8089824260,8089667821,'',0,0,0,0,0,0,0,4,10,1,0,0),(289,'Kanuikapono Learning Center PCS','4333 Kukuihale Road',96703,'Anahola',0,0,8088239160,8088239140,NULL,0,0,0,0,0,0,0,6,14,2,0,0),(290,'Kawaikini PCS','3-1821 J Kaumualii Hwy',96766,'Lihue',0,0,8086322032,8082464835,NULL,0,0,0,0,0,0,0,6,14,2,0,0),(291,'Kona Pacific PCS','79-7595 Mamamlahoa Highway',96750,'Kealakekua',0,0,8083224900,8083224906,NULL,0,0,0,0,0,0,0,4,10,2,0,0),(292,'School for Examining Essential Questions of Sustainability','845 22nd Ave.',96816,'Honolulu',0,0,8086773377,0,NULL,0,0,0,0,0,0,0,3,10,8,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'Question in Category 1','Answer to Question 1 in Category 1',1),(2,'Question number 2','Answer number 2',1),(3,'Question 3 is in Category 2','Yup, it sure is',2),(4,'And question 4 is in category 3','Aloha',3);
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
INSERT INTO `island` VALUES ('Hawaii'),('Kahoolawe'),('Kauai'),('Lanai'),('Maui'),('Molokai'),('Niihau'),('Oahu');
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
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_fdfd0ebf` (`email_id`),
  KEY `person_e32a5395` (`facility_id`),
  KEY `person_84566833` (`role_id`),
  CONSTRAINT `person_email_id_1e3477c1cb9b3e2_fk_user_username` FOREIGN KEY (`email_id`) REFERENCES `user` (`username`),
  CONSTRAINT `person_facility_id_7f819efaa67cc080_fk_facility_id` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`),
  CONSTRAINT `person_role_id_3c52eaf63519cc9f_fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Thomas','Edward','Wassum',8087546834,NULL,'Superman','thomas.e.wassum@gmail.com',1,1,1),(11,'Test','','Principal',8081231234,NULL,'','testprin@test.com',4,2,1),(12,'Aiea','','Admin',1231231234,NULL,'','aiea.admin@test.com',2,2,1),(13,'Aiea','','User',1231231234,NULL,'','aiea.user@test.com',2,3,1),(14,'Leilehua','Mighty','Mules',8086226550,NULL,'','leilehua.admin@test.com',4,3,1),(15,'This','Did','Work',1231234123,NULL,'PW Checked out','testpw@test.com',127,3,1);
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
  `complete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_facility_id_2bcfa970b8d7d3db_fk_facility_id` (`facility_id`),
  KEY `report_person_id_2a4c98ab7ff9158d_fk_person_id` (`person_id`),
  CONSTRAINT `report_facility_id_2bcfa970b8d7d3db_fk_facility_id` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`),
  CONSTRAINT `report_person_id_2a4c98ab7ff9158d_fk_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,4,1,'2015-11-29',1),(2,1,1,'2015-11-29',1),(3,6,1,'2015-11-29',1),(4,1,1,'2015-11-29',1),(5,3,1,'2015-11-29',1),(6,2,1,'2015-11-29',1),(7,4,1,'2015-11-29',1),(8,4,1,'2015-11-29',1),(9,3,1,'2015-11-29',1),(10,1,1,'2015-11-29',1),(11,6,1,'2015-11-29',1),(15,1,1,'2015-11-29',1),(22,1,1,'2015-11-30',1),(23,5,1,'2015-11-30',1),(24,4,11,'2015-11-30',1),(25,4,11,'2015-11-30',1),(26,4,14,'2015-12-01',1),(27,4,11,'2015-12-01',1),(28,4,11,'2015-12-01',1),(29,4,11,'2015-12-01',1),(30,4,11,'2015-12-01',1);
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
INSERT INTO `status` VALUES (1,'Open'),(2,'Being Worked On'),(3,'Closed');
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
  `facility_id` int(11),
  `uptodate` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_enrollment_id_1af15c45375d23fe_fk_enrollment_id` (`enrollment_id`),
  KEY `student_6f78b20c` (`report_id`),
  KEY `student_e32a5395` (`facility_id`),
  CONSTRAINT `student_enrollment_id_1af15c45375d23fe_fk_enrollment_id` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  CONSTRAINT `student_facility_id_5420cf4dcda2d0f3_fk_facility_id` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`),
  CONSTRAINT `student_report_id_70acaec9233b6b64_fk_report_id` FOREIGN KEY (`report_id`) REFERENCES `report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (10004000018,'Test','','Test','2001-01-01','2015-01-01','Exempt from MMR',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,NULL,NULL,NULL,0),(10004000020,'Kenny','','G','2001-01-01','2015-01-01','Smooth on the Sax',0,1,0,0,0,0,0,0,0,0,0,1,0,1,1,1,1,1,0,1,0,0,11,NULL,30,4,0),(10004000021,'Kenny','BabyFace','Edmonds','2000-01-01','2015-01-01','You\'re my reason for breathing',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,12,NULL,30,4,0),(10004000022,'Brian','','McKnight','1998-01-01','2015-01-01','One, you\'re like a dream come true',0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,14,NULL,29,NULL,0),(10004000023,'Tevin','','Campbell','1999-01-01','2015-01-01','Can We Talk?',0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,13,NULL,30,4,0),(10004000024,'Testing','','Transfer','2000-01-01','2015-01-01','',0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,NULL,30,4,0),(10004000025,'Test','','Transfer','2001-01-01','2015-01-01','',0,0,0,0,0,0,0,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,11,NULL,30,4,0),(10004000026,'Try','Once','More','1995-01-01','2015-01-01','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,11,NULL,30,4,0),(10004000028,'Test','add','One','1995-01-01','2015-01-01','',0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,11,NULL,30,4,0),(10004000029,'High','','One','1995-01-01','2015-01-01','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,NULL,29,NULL,0),(10004000030,'High','','Two','1995-01-01','2015-01-01','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,NULL,29,NULL,0),(10004000031,'High','','Three','1995-01-01','2015-01-01','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,NULL,29,NULL,0),(10004000032,'High','','Four','1995-01-01','2015-01-01','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,NULL,29,NULL,0),(10004000033,'High','','Five','1995-01-01','2015-01-01','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,NULL,29,NULL,0),(40005000002,'Test','','Prek','2013-11-29','2015-01-01','',0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,2,22,5,0),(40005000003,'Test','Big','Island','2004-10-26','2015-01-01','Religious from MMR',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,8,NULL,23,5,0);
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
  CONSTRAINT `supportrequest_person_id_7376e94ad5838f25_fk_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `supportrequest_status_id_6e1399d81ae2e734_fk_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supportrequest`
--

LOCK TABLES `supportrequest` WRITE;
/*!40000 ALTER TABLE `supportrequest` DISABLE KEYS */;
INSERT INTO `supportrequest` VALUES (10,'Hey my stuff no work','2015-11-30',NULL,11,3),(11,'Ok this one','2015-11-30',NULL,11,3);
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
INSERT INTO `user` VALUES ('aiea.admin@test.com','password'),('aiea.user@test.com','password'),('leilehua.admin@test.com','password'),('testprin@test.com','AIden$$1026'),('testpw@test.com','PAss1234'),('thomas.e.wassum@gmail.com','AIden$$1026');
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

-- Dump completed on 2015-12-02 23:27:23
