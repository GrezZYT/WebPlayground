-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para playground
CREATE DATABASE IF NOT EXISTS `playground` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `playground`;

-- Volcando estructura para tabla playground.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando estructura para tabla playground.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla playground.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.auth_permission: ~40 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add página', 7, 'add_page'),
	(26, 'Can change página', 7, 'change_page'),
	(27, 'Can delete página', 7, 'delete_page'),
	(28, 'Can view página', 7, 'view_page'),
	(29, 'Can add profile', 8, 'add_profile'),
	(30, 'Can change profile', 8, 'change_profile'),
	(31, 'Can delete profile', 8, 'delete_profile'),
	(32, 'Can view profile', 8, 'view_profile'),
	(33, 'Can add message', 9, 'add_message'),
	(34, 'Can change message', 9, 'change_message'),
	(35, 'Can delete message', 9, 'delete_message'),
	(36, 'Can view message', 9, 'view_message'),
	(37, 'Can add thread', 10, 'add_thread'),
	(38, 'Can change thread', 10, 'change_thread'),
	(39, 'Can delete thread', 10, 'delete_thread'),
	(40, 'Can view thread', 10, 'view_thread');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando estructura para tabla playground.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.auth_user: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$120000$VHZ7VEs2Sezx$v0+Nl9F+WnjUB9com/NBhz0375F8TDS2Cgic5tAbNRA=', '2020-06-02 02:40:20.802637', 1, 'Gerardo', '', '', 'ISnape.jilc45@gmail.com', 1, 1, '2020-05-30 20:10:15.052154'),
	(2, 'pbkdf2_sha256$120000$TuTymy1EvnU6$xJbeUDTqv1Jhvf5QksChghrYbwZBz0TTLz57O4MHjoM=', '2020-06-01 00:32:14.842719', 0, 'Luis', '', '', '', 0, 1, '2020-06-01 00:31:59.029572'),
	(3, 'pbkdf2_sha256$120000$d6PJNYbf5lyr$5kCWt9dfBdSdzZrVCW+TxFQilC5hodQTNfUfTztA/Fg=', '2020-06-01 20:32:31.727996', 0, 'Hilario', '', '', 'Hilario@gmail.com', 0, 1, '2020-06-01 01:04:26.337332'),
	(4, 'pbkdf2_sha256$120000$Hxc9g4ZdIJ5x$LCRsAP65hCrH2o15glBy8DQ0N2yT/5QpTx5PnAvTxNo=', '2020-06-02 02:39:54.237153', 0, 'Jose', '', '', 'Jose@gmail.com', 0, 1, '2020-06-01 18:53:49.322019'),
	(5, 'pbkdf2_sha256$120000$Xd0JjICNRxGA$0ZB7anAK+vd29m5GS90n9+7Vyk2eeuMk+IAUBdynstw=', '2020-06-01 20:41:26.864133', 0, 'Isaac', '', '', 'isaac@gmail.com', 0, 1, '2020-06-01 20:41:18.014254'),
	(6, 'pbkdf2_sha256$120000$u1LlQn4qxmzh$hQW890Hn9B2rKo+YffX1gqSZdShb/1et70xXz5h59vU=', '2020-06-01 20:51:43.277081', 0, 'Francisco', '', '', 'Francisco@gmail.com', 0, 1, '2020-06-01 20:51:35.965391'),
	(7, 'pbkdf2_sha256$120000$gJZXsymsIY8H$irO3XMYr3bNnHWtIYx1iU7LsAlonBV5gBtDjZtt2jbE=', '2020-06-01 20:54:01.994352', 0, 'Sebastián', '', '', 'Shogun10@gmail.com', 0, 1, '2020-06-01 20:53:52.744122'),
	(8, 'pbkdf2_sha256$120000$5LSQOm8FJtrC$OUsvsVi4irYmwqQwrF0XASyE+l2eaZtpi+4JWj91ZuU=', '2020-06-01 20:56:05.203296', 0, 'Alfredo', '', '', 'Alfredo23@hotmail.com', 0, 1, '2020-06-01 20:55:56.512191'),
	(9, 'pbkdf2_sha256$120000$SvlwCdA3C3o3$lHOFqhauCkC4kATK7GDMFHsIbiGk4qZWp06pp+2RFzs=', '2020-06-01 20:57:29.626724', 0, 'Rosalina', '', '', 'Rosa@hotmail.com', 0, 1, '2020-06-01 20:57:22.525935');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Volcando estructura para tabla playground.auth_user_groups
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

-- Volcando datos para la tabla playground.auth_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Volcando estructura para tabla playground.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.auth_user_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla playground.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.django_admin_log: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2020-05-30 20:17:14.664033', '1', 'Lorem ipsum dolor sit amet', 1, '[{"added": {}}]', 7, 1),
	(2, '2020-05-30 20:17:58.915728', '2', 'Lorem ipsum dolor sit amet', 1, '[{"added": {}}]', 7, 1),
	(3, '2020-05-30 20:18:36.308581', '2', 'Cras id semper eli', 2, '[{"changed": {"fields": ["title"]}}]', 7, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando estructura para tabla playground.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.django_content_type: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(9, 'messenger', 'message'),
	(10, 'messenger', 'thread'),
	(7, 'pages', 'page'),
	(8, 'registration', 'profile'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando estructura para tabla playground.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.django_migrations: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2020-05-30 19:19:08.715711'),
	(2, 'auth', '0001_initial', '2020-05-30 19:19:17.289964'),
	(3, 'admin', '0001_initial', '2020-05-30 19:19:19.242539'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2020-05-30 19:19:19.289720'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-05-30 19:19:19.336726'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2020-05-30 19:19:20.630440'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2020-05-30 19:19:20.750131'),
	(8, 'auth', '0003_alter_user_email_max_length', '2020-05-30 19:19:20.901553'),
	(9, 'auth', '0004_alter_user_username_opts', '2020-05-30 19:19:20.968526'),
	(10, 'auth', '0005_alter_user_last_login_null', '2020-05-30 19:19:21.598379'),
	(11, 'auth', '0006_require_contenttypes_0002', '2020-05-30 19:19:21.665746'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2020-05-30 19:19:21.807895'),
	(13, 'auth', '0008_alter_user_username_max_length', '2020-05-30 19:19:21.974042'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2020-05-30 19:19:22.146412'),
	(15, 'sessions', '0001_initial', '2020-05-30 19:19:22.838724'),
	(16, 'pages', '0001_initial', '2020-05-30 20:08:57.698344'),
	(17, 'registration', '0001_initial', '2020-06-01 02:13:30.054336'),
	(18, 'messenger', '0001_initial', '2020-06-01 21:18:13.889772'),
	(19, 'messenger', '0002_auto_20200601_2150', '2020-06-02 02:50:22.815646');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando estructura para tabla playground.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.django_session: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('uwybtdnzwgew9axf53nefyikmvrxnde0', 'NTU5NzliYTdiNmI1ZTQwN2Y5OTJjOTM1MDNjYTQ2YzZmZTBjMDQzNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OWFjNzBlMzAyY2M5N2Y1MDI0MzA0YTUwM2MxYjc0OThkMjE2NGZiIn0=', '2020-06-16 02:40:20.838622');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Volcando estructura para tabla playground.messenger_message
CREATE TABLE IF NOT EXISTS `messenger_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `messenger_message_user_id_44204cf3_fk_auth_user_id` (`user_id`),
  CONSTRAINT `messenger_message_user_id_44204cf3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.messenger_message: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `messenger_message` DISABLE KEYS */;
INSERT INTO `messenger_message` (`id`, `content`, `created`, `user_id`) VALUES
	(1, 'Buenos dias Hilario!', '2020-06-02 00:18:48.465045', 1),
	(2, 'Hola Gerardo!', '2020-06-02 00:19:37.802918', 3),
	(3, 'Me voy', '2020-06-02 00:20:01.605722', 1),
	(4, 'Pues adios!', '2020-06-02 00:20:19.755863', 3),
	(5, 'hd', '2020-06-02 02:01:03.034141', 1),
	(6, 'Hola!', '2020-06-02 02:10:57.422335', 1),
	(7, 'Prueba', '2020-06-02 02:24:36.494230', 1),
	(8, 'Hola!', '2020-06-02 02:39:23.080951', 1),
	(9, 'Hola Gera!', '2020-06-02 02:40:11.492571', 4),
	(10, 'Primer mensaje!', '2020-06-02 02:46:13.661284', 1),
	(11, 'Hola!', '2020-06-02 02:54:48.428472', 1),
	(12, 'Que paso!', '2020-06-02 02:55:04.150866', 1),
	(13, 'Que tal!', '2020-06-02 02:55:14.508303', 1),
	(14, 'Eyyyyy!', '2020-06-02 02:55:36.051129', 1),
	(15, 'Esto es una prueba', '2020-06-02 02:56:01.166172', 1),
	(16, 'Que paso?', '2020-06-02 02:56:11.890429', 1);
/*!40000 ALTER TABLE `messenger_message` ENABLE KEYS */;

-- Volcando estructura para tabla playground.messenger_thread
CREATE TABLE IF NOT EXISTS `messenger_thread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.messenger_thread: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `messenger_thread` DISABLE KEYS */;
INSERT INTO `messenger_thread` (`id`, `updated`) VALUES
	(1, '2020-06-02 02:55:36.170133'),
	(2, '2020-06-02 02:55:14.571015'),
	(3, '2020-06-02 02:56:11.952502'),
	(4, '2020-06-02 02:54:48.499478'),
	(5, '2020-06-02 02:55:04.207902'),
	(6, '2020-06-02 02:56:01.239707');
/*!40000 ALTER TABLE `messenger_thread` ENABLE KEYS */;

-- Volcando estructura para tabla playground.messenger_thread_messages
CREATE TABLE IF NOT EXISTS `messenger_thread_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `messenger_thread_messages_thread_id_message_id_bb58b3ca_uniq` (`thread_id`,`message_id`),
  KEY `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` (`message_id`),
  CONSTRAINT `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` FOREIGN KEY (`message_id`) REFERENCES `messenger_message` (`id`),
  CONSTRAINT `messenger_thread_mes_thread_id_a70e3887_fk_messenger` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.messenger_thread_messages: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `messenger_thread_messages` DISABLE KEYS */;
INSERT INTO `messenger_thread_messages` (`id`, `thread_id`, `message_id`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(3, 1, 3),
	(4, 1, 4),
	(5, 1, 5),
	(6, 1, 6),
	(7, 1, 7),
	(14, 1, 14),
	(8, 2, 8),
	(9, 2, 9),
	(13, 2, 13),
	(10, 3, 10),
	(16, 3, 16),
	(11, 4, 11),
	(12, 5, 12),
	(15, 6, 15);
/*!40000 ALTER TABLE `messenger_thread_messages` ENABLE KEYS */;

-- Volcando estructura para tabla playground.messenger_thread_users
CREATE TABLE IF NOT EXISTS `messenger_thread_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `messenger_thread_users_thread_id_user_id_d8023aff_uniq` (`thread_id`,`user_id`),
  KEY `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `messenger_thread_users_thread_id_8c4fd4f2_fk_messenger_thread_id` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`),
  CONSTRAINT `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.messenger_thread_users: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `messenger_thread_users` DISABLE KEYS */;
INSERT INTO `messenger_thread_users` (`id`, `thread_id`, `user_id`) VALUES
	(1, 1, 1),
	(2, 1, 3),
	(3, 2, 1),
	(4, 2, 4),
	(5, 3, 1),
	(6, 3, 5),
	(8, 4, 1),
	(7, 4, 8),
	(9, 5, 1),
	(10, 5, 7),
	(12, 6, 1),
	(11, 6, 9);
/*!40000 ALTER TABLE `messenger_thread_users` ENABLE KEYS */;

-- Volcando estructura para tabla playground.pages_page
CREATE TABLE IF NOT EXISTS `pages_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `order` smallint(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.pages_page: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `pages_page` DISABLE KEYS */;
INSERT INTO `pages_page` (`id`, `title`, `content`, `order`, `created`, `updated`) VALUES
	(1, 'Lorem ipsum dolor sit amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam nisi, tincidunt vitae sollicitudin laoreet, pharetra in erat. Curabitur ac accumsan mauris. Nam vel facilisis enim, id varius dui. In nec ligula et nibh bibendum finibus ut vitae nulla. Morbi sodales pellentesque quam vel pharetra. Cras ac ornare odio. Sed accumsan arcu dignissim accumsan volutpa.</p>', 0, '2020-05-30 20:17:14.659033', '2020-05-30 22:56:13.597741'),
	(2, 'Cras id semper eli', '<p>Cras id semper elit, tempus mattis mauris. Aenean vulputate libero eget odio porta, interdum rutrum sem ultricies. Nam egestas felis eu mi pretium suscipit. Proin in enim maximus, feugiat purus nec, maximus lorem. Aenean condimentum ornare efficitur. Duis rhoncus est odio, luctus venenatis lectus varius at. Sed non lacus tempus, egestas urna eget, efficitur metus.</p>', 0, '2020-05-30 20:17:58.910742', '2020-05-30 20:18:36.306580'),
	(3, 'In pharetra velit eu', '<p>In pharetra velit eu dolor auctor auctor. Nullam pretium ex sit amet rutrum finibus. Cras eleifend leo et faucibus aliquet. Ut convallis iaculis sapien a efficitur. Ut eget eros vitae felis rutrum fringilla et nec enim. Donec consectetur odio in efficitur tristique. Praesent sit amet nisi iaculis, condimentum lorem id, tristique dui. In pellentesque massa et luctus finibus.</p>', 3, '2020-05-30 22:15:18.713461', '2020-05-31 01:21:11.458637');
/*!40000 ALTER TABLE `pages_page` ENABLE KEYS */;

-- Volcando estructura para tabla playground.registration_profile
CREATE TABLE IF NOT EXISTS `registration_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) DEFAULT NULL,
  `bio` longtext,
  `link` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_profile_user_id_e133ce43_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla playground.registration_profile: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `registration_profile` DISABLE KEYS */;
INSERT INTO `registration_profile` (`id`, `avatar`, `bio`, `link`, `user_id`) VALUES
	(1, 'profiles/yo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue elit eget felis posuere tempor. Sed vel molestie nulla, at tincidunt turpis. Nunc quis euismod ligula, eget fermentum orci.', 'http://facebook.com', 1),
	(2, 'profiles/Monogram-ML-Logo-Design-by-Greenlines-Studios.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus tempor ligula. Quisque maximus, tortor nec blandit vehicula, turpis sapien commodo libero, eget sagittis mi dui nec erat. Nunc suscipit vel mi semper imperdiet.', 'http://facebook.com', 3),
	(3, 'profiles/Mouse1.jpg', 'Integer non placerat ligula. Integer nec ultricies lectus. Quisque mauris nulla, consectetur in commodo in, efficitur a leo. Vestibulum a placerat ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 'http://facebook.com', 4),
	(4, 'profiles/Mouse.jpg', 'Morbi rutrum commodo imperdiet. Vestibulum feugiat lectus at felis facilisis commodo. Aliquam quis porta est. Maecenas gravida suscipit odio in mollis. Curabitur blandit mollis quam, sed porta sapien varius et. Suspendisse potenti.', 'http://facebook.com', 5),
	(5, 'profiles/20180529_182500.jpg', 'Maecenas vel libero urna. Phasellus faucibus placerat est sit amet ultricies. Cras vestibulum malesuada mi, quis lobortis mi vestibulum non.', 'http://facebook.com', 6),
	(6, 'profiles/BE1.jpg', 'Vivamus eleifend sem et magna consequat, nec lobortis odio rhoncus. Phasellus condimentum posuere nisl eget faucibus. Suspendisse ultrices nibh at eleifend eleifend. Nulla id justo sit amet nibh rutrum auctor sit amet nec dolor.', 'http://facebook.com', 7),
	(7, 'profiles/Toros.jpg', 'Quisque dictum consequat nibh, rhoncus efficitur urna scelerisque quis. Nullam in semper turpis. Ut sodales dui in augue accumsan blandit id pellentesque purus. Ut turpis libero, malesuada eu tempor hendrerit, tincidunt quis nisl.', 'http://facebook.com', 8),
	(8, 'profiles/37889.jpg', 'Duis pretium finibus quam, non convallis diam posuere non. Sed ipsum magna, dapibus eu tortor sed, scelerisque posuere dui. Nunc dapibus imperdiet viverra.', 'http://google.com', 9);
/*!40000 ALTER TABLE `registration_profile` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
