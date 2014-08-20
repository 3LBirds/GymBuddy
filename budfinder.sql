-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (x86_64)
--
-- Host: localhost    Database: budfinder
-- ------------------------------------------------------
-- Server version	5.6.16

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
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  `name` varchar(255),
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add redirect',7,'add_redirect'),(20,'Can change redirect',7,'change_redirect'),(21,'Can delete redirect',7,'delete_redirect'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add student',9,'add_student'),(26,'Can change student',9,'change_student'),(27,'Can delete student',9,'delete_student'),(28,'Can add gym course',10,'add_gymcourse'),(29,'Can change gym course',10,'change_gymcourse'),(30,'Can delete gym course',10,'delete_gymcourse'),(31,'Can add gym course time',11,'add_gymcoursetime'),(32,'Can change gym course time',11,'change_gymcoursetime'),(33,'Can delete gym course time',11,'delete_gymcoursetime'),(34,'Can add student day preference',12,'add_studentdaypreference'),(35,'Can change student day preference',12,'change_studentdaypreference'),(36,'Can delete student day preference',12,'delete_studentdaypreference');
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
  `last_login` datetime,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254),
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$xTv6PFJzBpzu$PKa+ws5ITMAaY4n/9hJtZBqmHwIxOb9J2dIVwi98vS8=','2014-08-20 16:36:53',1,'admin','','','triesha1.fagan@gmail.com',1,1,'2014-08-20 16:36:40');
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
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
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
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
-- Table structure for table `budfinder_gymcourse`
--

DROP TABLE IF EXISTS `budfinder_gymcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budfinder_gymcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(30) NOT NULL,
  `c_num` varchar(30) NOT NULL,
  `c_rating` varchar(20) NOT NULL,
  `c_description` longtext NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `budfinder_gymcourse_2dbcba41` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budfinder_gymcourse`
--

LOCK TABLES `budfinder_gymcourse` WRITE;
/*!40000 ALTER TABLE `budfinder_gymcourse` DISABLE KEYS */;
INSERT INTO `budfinder_gymcourse` VALUES (1,'AM Yoga','1','1','Wake up your body with an energizing yoga class. Focus on balance, posture, and breathing as you move from one dynamic yoga\r\nposture to\r\nthe next. All levels welcome','am-yoga'),(2,'Back To Abs','2','1','A class devoted to strengthening the core mu\r\nscles which consists of the abdominals and the lower back to improve posture, balance, and\r\noverall coordination.\r\n','back-to-abs'),(3,'Body Tone','3','1','Participants use a combination of hand weights, body bars, resistance bands, stability and medicine balls to tone and strengthen the body. ','body-tone'),(4,'Cardio Kickboxing','5','1','Turbo Kickboxing is a fun, interval based, full body workout that uses no equipment. The class is composed of high paced intervals with kickboxing specific strength/ endurance training sequences with easyto follow combinations. Come get your cardio in and get hooked!','cardio-kickboxing'),(5,'Indoor Cycling','6','1','You can cycle your way through this intense indoor cycling ride of climbs, sprints, and flat roads in an upbea\r\nt and fun atmosphere while you control your own intensity! *Please arrive 1015 minutes early for bike setup.','indoor-cycling');
/*!40000 ALTER TABLE `budfinder_gymcourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budfinder_gymcoursetime`
--

DROP TABLE IF EXISTS `budfinder_gymcoursetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budfinder_gymcoursetime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_day` varchar(2) NOT NULL,
  `c_time` time NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `budfinder_gymcoursetime_ea134da7` (`course_id`),
  CONSTRAINT `budfinder_g_course_id_7ddd49e47f7de30d_fk_budfinder_gymcourse_id` FOREIGN KEY (`course_id`) REFERENCES `budfinder_gymcourse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budfinder_gymcoursetime`
--

LOCK TABLES `budfinder_gymcoursetime` WRITE;
/*!40000 ALTER TABLE `budfinder_gymcoursetime` DISABLE KEYS */;
INSERT INTO `budfinder_gymcoursetime` VALUES (1,'Sa','11:00:00',1),(2,'T','05:30:00',2),(3,'T','06:00:00',3),(4,'M','07:30:00',4),(5,'M','06:30:00',5),(6,'W','06:30:00',5),(7,'F','06:30:00',5),(8,'M','17:30:00',5);
/*!40000 ALTER TABLE `budfinder_gymcoursetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budfinder_student`
--

DROP TABLE IF EXISTS `budfinder_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budfinder_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `paswd` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budfinder_student`
--

LOCK TABLES `budfinder_student` WRITE;
/*!40000 ALTER TABLE `budfinder_student` DISABLE KEYS */;
INSERT INTO `budfinder_student` VALUES (1,'tfagan','Triesha','Fagan','fagan@gatech.edu','fagan'),(2,'asabido','Anthony','Sabido','sabido@gmail.com','sabido'),(3,'prawat','Pratibha','Rawat','rawat@gmail.com','rawat'),(4,'rlourdes','Ralph','Lourdes','lourdes@gmail.com','lourdes'),(5,'syennello','Sherry','Yenello','yenello@gmail.com','yenello'),(6,'gwalls','Gordon','Walls','gwalls@gmail.com','walls'),(7,'lhill','Lauryn','Hill','hill@gmail.com','hill'),(8,'eblaize','Ebony','Blaize','blaize@gmail.com','blaize'),(9,'mrandy','Matthew','Randy','randy@gmail.com','Randy');
/*!40000 ALTER TABLE `budfinder_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budfinder_studentdaypreference`
--

DROP TABLE IF EXISTS `budfinder_studentdaypreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `budfinder_studentdaypreference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `fri` tinyint(1) NOT NULL,
  `mon` tinyint(1) NOT NULL,
  `sat` tinyint(1) NOT NULL,
  `sun` tinyint(1) NOT NULL,
  `thu` tinyint(1) NOT NULL,
  `tue` tinyint(1) NOT NULL,
  `wed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `budfinder_studentdaypreference_30a811f6` (`student_id`),
  CONSTRAINT `budfinder_st_student_id_2acf1da2261b6074_fk_budfinder_student_id` FOREIGN KEY (`student_id`) REFERENCES `budfinder_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budfinder_studentdaypreference`
--

LOCK TABLES `budfinder_studentdaypreference` WRITE;
/*!40000 ALTER TABLE `budfinder_studentdaypreference` DISABLE KEYS */;
INSERT INTO `budfinder_studentdaypreference` VALUES (1,1,1,1,0,1,0,1,0),(2,2,0,1,0,0,0,1,0),(3,3,1,1,1,0,0,0,1),(4,4,1,1,0,1,1,1,0),(5,5,1,0,1,0,1,1,1),(6,7,0,0,1,1,0,0,0),(7,9,0,1,0,0,0,1,0);
/*!40000 ALTER TABLE `budfinder_studentdaypreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-08-20 16:38:41','1','tfagan',1,'',9,1),(2,'2014-08-20 17:04:04','2','asabido',1,'',9,1),(3,'2014-08-20 21:18:45','3','prawat',1,'',9,1),(4,'2014-08-20 21:51:49','1','AM Yoga',1,'',10,1),(5,'2014-08-20 21:52:36','2','Back To Abs',1,'',10,1),(6,'2014-08-20 21:53:46','3','Body Tone',1,'',10,1),(7,'2014-08-20 21:57:26','4','Cardio Kickboxing',1,'',10,1),(8,'2014-08-20 21:59:00','5','Indoor Cycling',1,'',10,1),(9,'2014-08-20 22:45:12','4','rlourdes',1,'',9,1),(10,'2014-08-20 22:45:38','5','syennello',1,'',9,1),(11,'2014-08-20 22:45:56','6','gwalls',1,'',9,1),(12,'2014-08-20 22:46:22','7','lhill',1,'',9,1),(13,'2014-08-20 22:51:24','8','eblaize',1,'',9,1),(14,'2014-08-20 22:51:57','9','mrandy',1,'',9,1);
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
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'redirect','redirects','redirect'),(8,'log entry','admin','logentry'),(9,'student','budfinder','student'),(10,'gym course','budfinder','gymcourse'),(11,'gym course time','budfinder','gymcoursetime'),(12,'student day preference','budfinder','studentdaypreference');
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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2014-08-20 16:18:52'),(2,'auth','0001_initial','2014-08-20 16:18:56'),(3,'admin','0001_initial','2014-08-20 16:18:57'),(4,'auth','0002_alter_permission_name_max_length','2014-08-20 16:18:57'),(5,'auth','0003_alter_user_email_max_length','2014-08-20 16:18:58'),(6,'auth','0004_alter_user_username_opts','2014-08-20 16:18:58'),(7,'auth','0005_alter_user_last_login_null','2014-08-20 16:18:58'),(8,'budfinder','0001_initial','2014-08-20 16:18:59'),(9,'sites','0001_initial','2014-08-20 16:19:00'),(10,'redirects','0001_initial','2014-08-20 16:19:00'),(11,'sessions','0001_initial','2014-08-20 16:19:01'),(12,'budfinder','0002_auto_20140820_1619','2014-08-20 16:20:20'),(13,'budfinder','0003_auto_20140820_1620','2014-08-20 16:20:22');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_redirect`
--

DROP TABLE IF EXISTS `django_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `old_path` varchar(200) NOT NULL,
  `new_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_id` (`site_id`,`old_path`),
  KEY `django_redirect_9365d6e7` (`site_id`),
  KEY `django_redirect_91a0b591` (`old_path`),
  CONSTRAINT `django_redirect_site_id_121a4403f653e524_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_redirect`
--

LOCK TABLES `django_redirect` WRITE;
/*!40000 ALTER TABLE `django_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_redirect` ENABLE KEYS */;
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8xevkg27jpo70vtwog0w3wiw9odx8bnf','YTE1Njg3NDU4NTI3ZjZhMzE1YjlmYmUxZTFkNTRhZjNlZmUwMDg5OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI3N2U4MTBhZjQ4MjI2MTdkYjg2YThmOWUyY2UzNDU1YzJiZjM1Y2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2014-11-18 16:36:53'),('h0e595w92c50b7hpe597k5lid97lq5p1','ZTE3NTMyNTRmNDNhNTE2YzhhN2UzYzMzNzA5YzExZTBiZGFmYWI0YTp7fQ==','2014-11-18 17:41:08');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-20 19:14:50
