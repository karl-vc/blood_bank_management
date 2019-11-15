-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.48 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5222
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for hopewelldb
CREATE DATABASE IF NOT EXISTS `hopewelldb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hopewelldb`;

-- Dumping structure for table hopewelldb.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.auth_permission: ~24 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can add permission', 2, 'add_permission'),
	(5, 'Can change permission', 2, 'change_permission'),
	(6, 'Can delete permission', 2, 'delete_permission'),
	(7, 'Can add group', 3, 'add_group'),
	(8, 'Can change group', 3, 'change_group'),
	(9, 'Can delete group', 3, 'delete_group'),
	(10, 'Can add user', 4, 'add_user'),
	(11, 'Can change user', 4, 'change_user'),
	(12, 'Can delete user', 4, 'delete_user'),
	(13, 'Can add content type', 5, 'add_contenttype'),
	(14, 'Can change content type', 5, 'change_contenttype'),
	(15, 'Can delete content type', 5, 'delete_contenttype'),
	(16, 'Can add session', 6, 'add_session'),
	(17, 'Can change session', 6, 'change_session'),
	(18, 'Can delete session', 6, 'delete_session'),
	(19, 'Can add user role', 7, 'add_userrole'),
	(20, 'Can change user role', 7, 'change_userrole'),
	(21, 'Can delete user role', 7, 'delete_userrole'),
	(22, 'Can add user signup', 8, 'add_usersignup'),
	(23, 'Can change user signup', 8, 'change_usersignup'),
	(24, 'Can delete user signup', 8, 'delete_usersignup');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.auth_user: ~1 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$100000$A3k7qGPM2Vqn$g5CW7Sjyfo1ctwxGH6OyyBxRRj8Kj7RvHKSLQswyyTw=', '2019-10-10 04:50:29', 1, 'hopewell', '', '', 'hopewell@gmail.com', 1, 1, '2019-10-01 12:27:41');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.django_admin_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.django_content_type: ~8 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'MyUserApp', 'userrole'),
	(8, 'MyUserApp', 'usersignup'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.django_migrations: ~15 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2019-10-01 13:30:33'),
	(2, 'auth', '0001_initial', '2019-10-01 13:30:36'),
	(3, 'admin', '0001_initial', '2019-10-01 13:30:37'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2019-10-01 13:30:37'),
	(5, 'contenttypes', '0002_remove_content_type_name', '2019-10-01 13:30:37'),
	(6, 'auth', '0002_alter_permission_name_max_length', '2019-10-01 13:30:37'),
	(7, 'auth', '0003_alter_user_email_max_length', '2019-10-01 13:30:38'),
	(8, 'auth', '0004_alter_user_username_opts', '2019-10-01 13:30:38'),
	(9, 'auth', '0005_alter_user_last_login_null', '2019-10-01 13:30:38'),
	(10, 'auth', '0006_require_contenttypes_0002', '2019-10-01 13:30:38'),
	(11, 'auth', '0007_alter_validators_add_error_messages', '2019-10-01 13:30:38'),
	(12, 'auth', '0008_alter_user_username_max_length', '2019-10-01 13:30:38'),
	(13, 'auth', '0009_alter_user_last_name_max_length', '2019-10-01 13:30:39'),
	(14, 'sessions', '0001_initial', '2019-10-01 13:30:39'),
	(15, 'MyUserApp', '0001_initial', '2019-10-03 19:11:44');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.django_session: ~98 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('02h8lm4vhl5jkqp1a82rmp7umw4dbkg6', 'YmFlMjY2YTYyMmQyMTNjNTZjMzZiYzBjODNjYWZjYmFiOTBmZTU1NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYzQ1MzEwMTNjMzdlZTkxYjdjZmMwNDIxNGZiOTJiN2EzYTI2OGYxIn0=', '2019-10-10 04:49:48'),
	('08o33dal5pgbkzmosu9ly4imckzdogqs', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 17:33:03'),
	('14suycqh17hqjy032kkijbe1l1w6hxme', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-17 05:52:23'),
	('1md1p5735556nmb9wy5j8wixey1lggw5', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-23 06:54:32'),
	('1qmatzdf4pz9p1yo9uhy15mu3xuazul4', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-22 03:22:29'),
	('291goqdunxxoim775t0xp45u7sgopmsw', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-22 03:36:58'),
	('2fis2a8vqviw5igpjn4zrc741f4i4thv', 'OTQ1YzdjYWVlNDg1NmUyYmFiNGUwZDA1NjhhY2U4ZDAxMmYyZTcyOTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-24 04:14:07'),
	('2xvrfyr7szbecj8tjze5ifz139pbcbs8', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-17 07:04:35'),
	('2z18nszaev91b5pbcf82jdwwtj2qn4on', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-24 06:05:33'),
	('34554hmfpn8d0jx8llhmtvfdmwbpl20h', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 11:43:02'),
	('3p3igpjqlc5eybljhix0pu14m7pdnoz6', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 17:07:36'),
	('4mptib13alfyrzxo3uvd1gcxtkvx82p4', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 17:34:29'),
	('5a8aqdadoh77h65btdykpblqj0x8vzpn', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 19:45:14'),
	('5gejmjgkq4mib6g3h7kls8qnklmezfk8', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 03:30:04'),
	('5wzq4eofll12bitd95iu451jcvpjv6gt', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-17 03:50:59'),
	('6mzratbf9qz7nl0914vhi7ta4kfk2ml8', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 06:07:56'),
	('754c18xm0s1i4fzqwtr3k3l4473vc3fa', 'MGI5MzdlZTg4MDhjMTBiOWRjMWYzZmVjMzYwMGI0MmI3NTE4NGM5Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-24 08:51:58'),
	('7a7a1or3dahgny5scr23130y3f1mnk4u', 'MGI5MzdlZTg4MDhjMTBiOWRjMWYzZmVjMzYwMGI0MmI3NTE4NGM5Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-24 06:51:13'),
	('7bx3r6gumqkw251wwr22dk47qa1iqyq6', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-23 03:41:19'),
	('7vna8boiq04lw01zhhpzj5kjrydz82mn', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 17:18:15'),
	('7xzrj919ujw6n83i1up77ceqo3nd0lwd', 'OTQ1YzdjYWVlNDg1NmUyYmFiNGUwZDA1NjhhY2U4ZDAxMmYyZTcyOTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-24 05:51:54'),
	('81qgmnhoqzqfi0lryh7u3w59dezxs9el', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 04:52:30'),
	('8c6l4pf65v86hw0yu64ckmmb156n0uau', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-17 06:26:47'),
	('8f3umu1ifsrqg0q8x8qk42i8xckkv8zv', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-17 03:25:44'),
	('8m7xn644mx5rpxts41kd6s2vqbddno34', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-17 04:26:56'),
	('9110dnur21xf4b5023c3rlzk8ihnay3h', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-15 08:49:08'),
	('9kc5mx071bu57ge29v1c7nusdmcu96q5', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 17:48:02'),
	('ajpuk6jq27a73y9evib360umz4bqpv0l', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-23 05:03:36'),
	('b83maqcsoiezfp5s1owr8k0ftkp14vl0', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-17 04:01:04'),
	('bifvkdmrf8zdf1sezbpoo6epzputl0hu', 'MTEzN2I1MzJkNTVkNTYxYWI4MDdlMzgyMmI3MmI5MjNkZWUxMjBkNjp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJiZWVudUBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-15 04:37:22'),
	('bk8zqxivvp4btwcc317kmziukddk9bvv', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-22 05:56:44'),
	('c3ywtyxxuitb3xmgfrkgep6oaexrho94', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-23 05:16:30'),
	('cgkf6q2blbwdbpkxxu4qiyvpm7yqsiyf', 'YmFlMjY2YTYyMmQyMTNjNTZjMzZiYzBjODNjYWZjYmFiOTBmZTU1NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYzQ1MzEwMTNjMzdlZTkxYjdjZmMwNDIxNGZiOTJiN2EzYTI2OGYxIn0=', '2019-10-10 04:52:01'),
	('clbaxb5cfo8ky5kmd0jr10588h7rhzsa', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-15 05:07:00'),
	('clyznz559984uxo6ejebc5tctr2upajw', 'YjE2ZDgwY2ZhNjc5YmIyOTk0YmI3OThlNjEwYWE0YTExMmUyM2Q1Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ1cGFzbmFiaGF0MTdAZ21haWwuY29tIiwicm9sZWlkIjozfQ==', '2019-10-24 08:16:02'),
	('cs8bcjgg9xl64al8no8jd25kyp32tldu', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 19:27:07'),
	('daczh83wfwuj9cfiii54yemslonxvzli', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 17:02:25'),
	('e0afhc5vy31xitwcy291gxogrdp7u0wr', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-15 09:16:40'),
	('e4d98d1f2suxtf7hp5x1dg8ntwyz5wq9', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 17:22:04'),
	('ejhy01nm2068rspg6eudn52jookwc0ji', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-15 07:42:30'),
	('fjujxxivck1svnd76we8nqh2nxw1jrd2', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-10 05:06:04'),
	('fy7p1tcflyrqvhqe5aamz2wsoc0mlss9', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 11:46:20'),
	('g0hbz92r21qyc88yfwx4d2gctv8ydlja', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-15 03:26:19'),
	('gkblxoe7p6pl27av628wfq53xnf61zzu', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 16:59:09'),
	('h0tyogt8uty1w3hvifvywd8ynxaxv3yu', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 04:43:11'),
	('hy8dcpc2xk6nlxtz1r2y2canzhuhnf50', 'MGI5MzdlZTg4MDhjMTBiOWRjMWYzZmVjMzYwMGI0MmI3NTE4NGM5Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-24 07:57:22'),
	('i3kz7cnq6oy14nafvf3z34qddovxnnkp', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-22 06:30:01'),
	('ic16jripu2lk5pc0dyclmcjyuye5eqsg', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-22 05:33:52'),
	('icmjnylonrru3e1sjrq7rysi8sv41g60', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 17:25:27'),
	('ik6yu3vpv7g0as7ntc9fvp0bxjjwuo9s', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 18:36:34'),
	('irncimluyaxmol4br2b9z64p9sr5no2g', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-10 04:58:07'),
	('iytq5chaq87ngi5r7tvyrbftui26m6ha', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-17 04:50:47'),
	('j9z2io7df3vm3lgdvqyy8065aza4ffz8', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-15 03:28:44'),
	('jbxtrob52ztiqll3z4h035713btbiedk', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-22 03:59:20'),
	('jcpluutpyktszo3pax6k4k98gn2ltooh', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-10 05:14:00'),
	('jfwh7sduizcof33mo9m8rhdf4g9eznki', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-22 05:24:05'),
	('js9h63puzpga05347r5ii7hnor93b6s9', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-10 05:00:41'),
	('ju9ra0e2xy44ywe0pe0r6cxuwfs3ghe2', 'MGI5MzdlZTg4MDhjMTBiOWRjMWYzZmVjMzYwMGI0MmI3NTE4NGM5Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-24 07:17:05'),
	('jyymtdqbjxb5glbu2rzqzase38rl32vf', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 03:13:38'),
	('kh0tmn6bix72d89hb7oexgi05jynsu20', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-22 06:14:37'),
	('kz7ii5rr9gpvbl0dzkhkqegmcjrxrz1w', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-11-03 18:10:56'),
	('laoro56lilpgtgecuomm8uiuzwadzqm5', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-15 03:56:43'),
	('lvwheldbx0uktroxxrbxo9ltvry8vmip', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-22 04:34:20'),
	('mgmpufi089thlatblkxh1ba93phfriod', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-24 09:22:23'),
	('mhknicn5njhqtlozy9xtgw8ddo4oj330', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 19:26:08'),
	('no4g8vez5gx00uf1t52awrahxceguqt1', 'YTYwYTkzOTQxYmZhNzBkNzEzMzFkNjI5YTgwMjUyZGUyYTI2MjlmYzp7InVzZXJlbWFpbCI6InZpc2h1bC5jaGF1aGFuMjIyQGdtYWlsLmNvbSIsInJvbGVpZCI6MiwiQXV0aGVudGljYXRpb24iOnRydWV9', '2019-10-16 03:55:07'),
	('ouia5fk4mxy0o4tgeovpvgp5r40ae5qn', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-15 09:51:56'),
	('p2w5l74081n4mc3aruftta2azvlznig5', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 18:36:24'),
	('q2vwuahjbpvs29grl15vf5a6f3f1lplj', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 17:11:29'),
	('q36tnbpy6x9gz2q3la9rz0qgf2ogedh4', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 20:08:28'),
	('qw3ro2n1ey0xnwrwla2s9bathkirpy60', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-17 05:29:23'),
	('rccftzdjymmei0t52qvyu8h7ggmzqg4r', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-23 03:22:25'),
	('rt4yv9cv5y9j6u9e9sytuzgqn9hqjpl8', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-10 05:43:03'),
	('rz8mitkua4xvqncra9l9n19ih0990t8m', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-17 05:09:58'),
	('sfgvwtwr9dgbz00chxkkhkpavc8y3h1a', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-23 03:48:35'),
	('sieovu9j9l3uj1zb0sby1jorvtm7m6dn', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 20:29:45'),
	('taq69jvuuqjx6czp4tpdtne1sbtb2uk8', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-17 05:20:04'),
	('tjdk4lkvapgak7q1xy3o67n8xu098nc8', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 17:13:03'),
	('tlef3g4dgc2mm8hhigbtuk5jbfwfcr27', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 05:56:30'),
	('u79h9jog9a7gysh663gthhlxa9ophbiz', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 17:16:41'),
	('u9st4cyqi8zyqm99gvl5yde5zn8oauzv', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-16 18:45:42'),
	('ujm7gazbzraforbs0oqan6rxsy99vyi9', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-15 08:24:56'),
	('uwc3nlbj73a8wwerx4l2kik9pt073ocu', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 19:57:29'),
	('vdm00upjqmmqiod8dxbzfizlkenqzr51', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 17:31:30'),
	('vj2wg8sff1sk17dkur7gni5kg89yjh7m', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-22 05:14:41'),
	('vs1sao8fgt7434qquajmdexqe9rsdvl3', 'MGI5MzdlZTg4MDhjMTBiOWRjMWYzZmVjMzYwMGI0MmI3NTE4NGM5Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ0dXNoYXJzYWluaTUwM0BnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-24 09:13:59'),
	('vsfi2dab7f0tklvmmkjwjlpzbnzqs7un', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-23 04:32:50'),
	('wj64ozjyq3g5j3indlnlt4sgb0tdszq9', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-22 03:25:15'),
	('wpo3isava86apjvvaia324q07aijiwr0', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 05:50:46'),
	('xic26b87dqz0tjm1dt929gnu2a1ng3ob', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-11 12:03:56'),
	('xopgqgt2fivihg3bnkbdxrqjprylpb7p', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-17 06:37:28'),
	('xwtumbog37nez6q5uiw14n56u7q6rc84', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-17 03:06:26'),
	('y965sh5ohfvs7tmkdsr7yg9t7lnrubz1', 'MGNmNDNiN2U1MTUzNGUxYjQwNmI4YmY5Y2E4MDIzZjdhMGNjZTEwYTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjExMUBnbWFpbC5jb20iLCJyb2xlaWQiOjF9', '2019-10-17 05:39:05'),
	('yi0ht3ds1iq8sul6kf97skm5u16qonl0', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-15 04:56:17'),
	('yndlq30jau8r8ins1e7qqphvfng9wbbj', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-23 06:32:06'),
	('z81u7ycwvidzfcvcvggu1lp3a55gnlz6', 'ZGIyNTZiZTNiYTIxYzc2YTk1ODM4NjlmMTczOWIxYjhhYjdjOGVlODp7fQ==', '2019-10-23 04:55:49'),
	('zhf6n5x1kxnghgxoa4ssltwuhqx9qhk2', 'Y2E4NDg3ODMzYTRlMTk2ZGVkYjYwYWYyNGQwNjk5ZmFiYzgxOTNhZTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJha3NoYXkudGhha3VyLm1lMTRAZ21haWwuY29tIiwicm9sZWlkIjoxfQ==', '2019-10-22 09:22:32'),
	('ztq9ex4kkcdfcvo2ykhy5ct0sxanwlst', 'MGIyMjdiMTI5ZWU5NGI5NjgwMTRmZmM1N2NmMTEyMGQ2ZjM3NGQ3Yzp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJ1c2VyZW1haWwiOiJ2aXNodWwuY2hhdWhhbjIyMkBnbWFpbC5jb20iLCJyb2xlaWQiOjJ9', '2019-10-16 04:16:18');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.managerapp_department
CREATE TABLE IF NOT EXISTS `managerapp_department` (
  `depttId` int(11) NOT NULL AUTO_INCREMENT,
  `depttName` varchar(50) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`depttId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.managerapp_department: 1 rows
/*!40000 ALTER TABLE `managerapp_department` DISABLE KEYS */;
INSERT INTO `managerapp_department` (`depttId`, `depttName`, `isActive`) VALUES
	(1, 'Radiology', 1);
/*!40000 ALTER TABLE `managerapp_department` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.managerapp_loginrecords
CREATE TABLE IF NOT EXISTS `managerapp_loginrecords` (
  `loginId` int(11) NOT NULL AUTO_INCREMENT,
  `loginTime` varchar(50) NOT NULL,
  `logoutTime` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `mac_address` varchar(50) NOT NULL,
  PRIMARY KEY (`loginId`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.managerapp_loginrecords: 62 rows
/*!40000 ALTER TABLE `managerapp_loginrecords` DISABLE KEYS */;
INSERT INTO `managerapp_loginrecords` (`loginId`, `loginTime`, `logoutTime`, `userId`, `ip_address`, `mac_address`) VALUES
	(1, '2019-10-22 14:00:07.180948', '', '', '192.168.80.1', '0x40b034be4d4b'),
	(2, '2019-10-23 09:00:37.178969', '', '', '192.168.137.1', '0x40b076accfe5'),
	(3, '2019-10-23 09:13:34.179564', '', '', '192.168.137.1', '0x40b076accfe5'),
	(4, '2019-10-23 09:57:40.978437', '', '', '192.168.137.1', '0x40b076accfe5'),
	(5, '2019-10-23 09:57:49.055586', '', '', '192.168.137.1', '0x40b076accfe5'),
	(6, '2019-10-24 09:13:46.687076', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(7, '2019-10-24 09:18:44.763393', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(8, '2019-10-24 09:22:15.611760', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(9, '2019-10-24 09:22:53.172922', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(10, '2019-10-24 09:23:03.128012', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(11, '2019-10-24 09:28:10.779527', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(12, '2019-10-24 10:50:01.348591', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(13, '2019-10-24 10:55:53.324708', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(14, '2019-10-24 10:57:19.418397', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(15, '2019-10-24 11:03:02.977098', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(16, '2019-10-24 11:08:14.920916', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(17, '2019-10-24 11:08:27.764398', '', 'vishul.chauhan111@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(18, '2019-10-24 11:11:20.373524', '', 'vishul.chauhan111@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(19, '2019-10-24 11:12:56.754223', '', 'vishul.chauhan111@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(20, '2019-10-24 11:16:19.358519', '', 'vishul.chauhan111@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(21, '2019-10-24 11:16:44.481376', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(22, '2019-10-24 11:37:59.074161', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(23, '2019-10-24 11:42:06.959245', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(24, '2019-10-24 11:42:53.104156', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(25, '2019-10-24 11:45:35.455514', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(26, '2019-10-24 11:46:57.237707', '2019-10-24 11:53:52.780332', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(27, '2019-10-24 11:54:26.197224', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(28, '2019-10-24 12:03:34.321911', '', 'upasnabhat17@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(29, '2019-10-24 12:05:42.564754', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(30, '2019-10-24 12:08:53.407416', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(31, '2019-10-24 12:14:54.224709', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(32, '2019-10-24 12:15:12.822651', '', 'upasnabhat17@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(33, '2019-10-24 12:15:36.052298', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(34, '2019-10-24 12:33:38.986761', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(35, '2019-10-24 12:37:38.041425', '', 'upasnabhat17@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(36, '2019-10-24 12:37:55.323847', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(37, '2019-10-24 12:48:03.332633', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(38, '2019-10-24 12:49:10.380382', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(39, '2019-10-24 12:51:57.327452', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(40, '2019-10-24 12:52:38.502339', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(41, '2019-10-24 12:52:48.181043', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(42, '2019-10-24 12:55:24.815935', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(43, '2019-10-24 12:56:24.500364', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(44, '2019-10-24 12:58:01.684936', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(45, '2019-10-24 13:03:05.012139', '2019-10-24 13:06:43.652576', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(46, '2019-10-24 13:07:37.064212', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(47, '2019-10-24 13:10:49.554117', '', 'upasnabhat17@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(48, '2019-10-24 13:12:37.411284', '', 'upasnabhat17@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(49, '2019-10-24 13:14:31.351056', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(50, '2019-10-24 13:17:13.438322', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(51, '2019-10-24 13:17:31.581696', '', 'upasnabhat17@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(52, '2019-10-24 13:19:50.831263', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(53, '2019-10-24 13:22:11.329949', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(54, '2019-10-24 13:27:32.796506', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(55, '2019-10-24 13:29:16.588078', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(56, '2019-10-24 13:31:35.462726', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(57, '2019-10-24 13:40:33.684473', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(58, '2019-10-24 13:41:02.253673', '', 'upasnabhat17@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(59, '2019-10-24 14:16:32.046195', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(60, '2019-10-24 14:38:43.747268', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(61, '2019-10-24 14:46:18.913461', '', 'tusharsaini503@gmail.com', '192.168.137.1', '0x40b076accfe5'),
	(62, '2019-10-24 14:47:20.512926', '', 'vishul.chauhan222@gmail.com', '192.168.137.1', '0x40b076accfe5');
/*!40000 ALTER TABLE `managerapp_loginrecords` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.myuserapp_userrole
CREATE TABLE IF NOT EXISTS `myuserapp_userrole` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `rolName` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.myuserapp_userrole: ~3 rows (approximately)
/*!40000 ALTER TABLE `myuserapp_userrole` DISABLE KEYS */;
INSERT INTO `myuserapp_userrole` (`roleId`, `rolName`, `isActive`) VALUES
	(1, 'Manager', 1),
	(2, 'Doctors', 1),
	(3, 'patients', 1);
/*!40000 ALTER TABLE `myuserapp_userrole` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.myuserapp_usersignup
CREATE TABLE IF NOT EXISTS `myuserapp_usersignup` (
  `userFullName` varchar(200) NOT NULL,
  `userEmail` varchar(200) NOT NULL,
  `userPassword` varchar(2000) NOT NULL,
  `userMobile` varchar(200) NOT NULL,
  `userAge` varchar(3) NOT NULL,
  `userAddress` varchar(500) NOT NULL,
  `userCity` varchar(100) NOT NULL,
  `userState` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `roleId_id` int(11) NOT NULL,
  `isVerified` tinyint(1) NOT NULL,
  `userConfirmationlink` varchar(200) NOT NULL,
  `userOtp` varchar(10) NOT NULL,
  `userOtptime` varchar(200) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL,
  `isQueue` tinyint(1) NOT NULL,
  `userToken` varchar(200) NOT NULL,
  `userImage` varchar(200) NOT NULL,
  PRIMARY KEY (`userEmail`),
  KEY `MyUserApp_usersignup_roleId_id_f3ef3ccb_fk_MyUserApp` (`roleId_id`),
  CONSTRAINT `MyUserApp_usersignup_roleId_id_f3ef3ccb_fk_MyUserApp` FOREIGN KEY (`roleId_id`) REFERENCES `myuserapp_userrole` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.myuserapp_usersignup: ~2 rows (approximately)
/*!40000 ALTER TABLE `myuserapp_usersignup` DISABLE KEYS */;
INSERT INTO `myuserapp_usersignup` (`userFullName`, `userEmail`, `userPassword`, `userMobile`, `userAge`, `userAddress`, `userCity`, `userState`, `isActive`, `roleId_id`, `isVerified`, `userConfirmationlink`, `userOtp`, `userOtptime`, `isAvailable`, `isQueue`, `userToken`, `userImage`) VALUES
	('vishul chauhan', 'tusharsaini503@gmail.com', 'pbkdf2_sha256$100000$i4U2a9gmTkLj$oTGsQRbIsFzGUqE/df5JS8jVRxFNJ0pvsZzE/ltA8PE=', '56789876', '54', 'dfghjkjh', 'fghjjhg', 'fghjhg', 1, 1, 0, 'http://127.0.0.1:8000/verified/?email=tusharsaini503@gmail.com&token=m21519k', 'm21519k', '2019-10-24 11:37:03.738683', 1, 0, 'm21519k', 'slider.jpg'),
	('hello', 'upasnabhat17@gmail.com', 'pbkdf2_sha256$100000$ZU6OGG7yJ5PL$zMcrehGI6osMQK9ZbZQwK0+fXuBCzPtYA1V2J9OhB84=', '6666666', '45', 'jytr', 'uytr', 'uyt', 1, 3, 0, 'http://127.0.0.1:8000/verified/?email=upasnabhat17@gmail.com&token=D27602D', 'D27602D', '2019-10-24 12:02:17.027237', 1, 0, 'D27602D', 'div.jpg');
/*!40000 ALTER TABLE `myuserapp_usersignup` ENABLE KEYS */;

-- Dumping structure for table hopewelldb.staffapp_staff
CREATE TABLE IF NOT EXISTS `staffapp_staff` (
  `userFullName` varchar(200) NOT NULL,
  `userEmail` varchar(200) NOT NULL,
  `userPassword` varchar(200) NOT NULL,
  `userMobile` varchar(200) NOT NULL,
  `userAge` varchar(10) NOT NULL,
  `userAddress` varchar(500) NOT NULL,
  `userCity` varchar(10) NOT NULL,
  `userState` varchar(200) NOT NULL,
  `userImage` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `userOtp` varchar(10) NOT NULL,
  `userOtptime` varchar(200) NOT NULL,
  `userToken` varchar(200) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL,
  `isQueue` tinyint(1) NOT NULL,
  `isVerified` tinyint(1) NOT NULL,
  `depttId_id` int(11) NOT NULL,
  `roleId` varchar(1) NOT NULL,
  PRIMARY KEY (`userEmail`),
  KEY `staffapp_staff_depttId_id_c5de3f3b` (`depttId_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table hopewelldb.staffapp_staff: 1 rows
/*!40000 ALTER TABLE `staffapp_staff` DISABLE KEYS */;
INSERT INTO `staffapp_staff` (`userFullName`, `userEmail`, `userPassword`, `userMobile`, `userAge`, `userAddress`, `userCity`, `userState`, `userImage`, `isActive`, `userOtp`, `userOtptime`, `userToken`, `isAvailable`, `isQueue`, `isVerified`, `depttId_id`, `roleId`) VALUES
	('vishul', 'vishul.chauhan222@gmail.com', 'pbkdf2_sha256$100000$S3u6BvBTAsch$FJ2wV71qVU1td+TZ64MyBIhnxBFWdxDb2ZcXNmkw+rA=', '34567', '43', 'hfdfg', 'jbn', 'iu', 'slider.jpg', 1, '', ' ', '', 1, 0, 0, 1, '2');
/*!40000 ALTER TABLE `staffapp_staff` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
