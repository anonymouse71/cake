/*
SQLyog Ultimate v11.5 (64 bit)
MySQL - 5.6.20 : Database - caketemp
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`caketemp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `caketemp`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `blog_id` int(8) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `data` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `articles` */

/*Table structure for table `blogs` */

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `registered` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(128) NOT NULL,
  `modified_by` varchar(128) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `blogs` */

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(8) unsigned DEFAULT '0',
  `lft` int(8) unsigned DEFAULT '0',
  `rght` int(8) unsigned DEFAULT '0',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `categories` */

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `data` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comments` */

/*Table structure for table `conditions` */

DROP TABLE IF EXISTS `conditions`;

CREATE TABLE `conditions` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(8) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `options` text,
  `relation` varchar(255) NOT NULL DEFAULT 'and',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `conditions` */

/*Table structure for table `configurations` */

DROP TABLE IF EXISTS `configurations`;

CREATE TABLE `configurations` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(150) DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `configurations` */

/*Table structure for table `contents` */

DROP TABLE IF EXISTS `contents`;

CREATE TABLE `contents` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(8) unsigned DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `data` longtext,
  `ctg_type` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `previous_content` int(8) unsigned DEFAULT '0',
  `options` text,
  `scorm_version` varchar(50) DEFAULT NULL,
  `publish` tinyint(1) DEFAULT '1',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `linked_to` int(8) unsigned DEFAULT NULL,
  `subject` text,
  `description` text,
  `publisher` text,
  `contributor` text,
  `type` text,
  `format` text,
  `source` text,
  `relation` text,
  `coverage` text,
  `rights` text,
  `parent_id` int(8) unsigned DEFAULT '0',
  `lft` int(8) unsigned DEFAULT '0',
  `rght` int(8) unsigned DEFAULT '0',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `contents` */

/*Table structure for table `contents_users` */

DROP TABLE IF EXISTS `contents_users`;

CREATE TABLE `contents_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `users_login` varchar(100) NOT NULL,
  `content_id` int(8) unsigned NOT NULL,
  `success_status` varchar(15) DEFAULT 'unknown',
  `score` float DEFAULT '0',
  `entry` varchar(15) DEFAULT '',
  `total_time` int(10) unsigned NOT NULL,
  `suspend_data` longtext,
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `time_start` int(10) unsigned DEFAULT NULL,
  `time_end` int(10) unsigned DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `contents_users` */

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(8) unsigned DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `archive` int(10) unsigned DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `options` text,
  `price` float DEFAULT '0',
  `show_catalog` tinyint(1) NOT NULL DEFAULT '1',
  `publish` tinyint(1) DEFAULT '1',
  `reset` tinyint(1) NOT NULL DEFAULT '0',
  `certificate_expiration` int(10) unsigned DEFAULT NULL,
  `reset_interval` int(10) unsigned DEFAULT NULL,
  `max_users` int(10) unsigned DEFAULT NULL,
  `rules` text,
  `instance_source` int(8) unsigned DEFAULT '0',
  `depends_on` int(8) unsigned DEFAULT '0',
  `ceu` int(10) unsigned DEFAULT NULL,
  `description` text,
  `objectives` text,
  `assessment` text,
  `topics` text,
  `resources` text,
  `info` text,
  `learning_method` text,
  `subject` text,
  `publisher` text,
  `contributor` text,
  `type` text,
  `format` text,
  `identifier` text,
  `source` text,
  `relation` text,
  `coverage` text,
  `rights` text,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `courses` */

/*Table structure for table `courses_lessons` */

DROP TABLE IF EXISTS `courses_lessons`;

CREATE TABLE `courses_lessons` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(8) unsigned NOT NULL,
  `lesson_id` int(8) unsigned NOT NULL,
  `previous_lesson` int(8) unsigned DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `start_period` datetime DEFAULT NULL,
  `end_period` datetime DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `courses_lessons` */

/*Table structure for table `courses_users` */

DROP TABLE IF EXISTS `courses_users`;

CREATE TABLE `courses_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(8) unsigned NOT NULL,
  `course_id` int(8) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `archive` int(10) unsigned DEFAULT '0',
  `from_timestamp` datetime DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `score` int(8) NOT NULL DEFAULT '0',
  `issued_certificate` text,
  `comments` text,
  `to_timestamp` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `courses_users` */

/*Table structure for table `courses_usrgroups` */

DROP TABLE IF EXISTS `courses_usrgroups`;

CREATE TABLE `courses_usrgroups` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(8) unsigned NOT NULL,
  `usrgroup_id` int(8) unsigned NOT NULL,
  `user_type` varchar(50) DEFAULT 'student',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `courses_usrgroups` */

/*Table structure for table `events` */

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `topics` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `summary` text,
  `invite` varchar(255) DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `events` */

/*Table structure for table `faqs` */

DROP TABLE IF EXISTS `faqs`;

CREATE TABLE `faqs` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `faqs` */

/*Table structure for table `forums` */

DROP TABLE IF EXISTS `forums`;

CREATE TABLE `forums` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `comments` text,
  `rate` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` varchar(128) NOT NULL,
  `modified_by` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `forums` */

/*Table structure for table `glossary` */

DROP TABLE IF EXISTS `glossary`;

CREATE TABLE `glossary` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `info` text,
  `type` varchar(20) NOT NULL DEFAULT 'general',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `glossary` */

/*Table structure for table `invitees` */

DROP TABLE IF EXISTS `invitees`;

CREATE TABLE `invitees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(8) unsigned NOT NULL,
  `user_id` int(8) unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `going` int(11) NOT NULL,
  `may_be` int(11) NOT NULL,
  `joined` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `invitees` */

/*Table structure for table `lessons` */

DROP TABLE IF EXISTS `lessons`;

CREATE TABLE `lessons` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(8) unsigned DEFAULT '0',
  `name` varchar(150) NOT NULL,
  `price` float DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `show_catalog` tinyint(1) NOT NULL DEFAULT '1',
  `duration` int(10) DEFAULT '0',
  `access_limit` int(10) DEFAULT '0',
  `options` text,
  `course_only` tinyint(1) DEFAULT '0',
  `certificate` text,
  `from_timestamp` datetime DEFAULT NULL,
  `to_timestamp` datetime DEFAULT NULL,
  `shift` tinyint(1) DEFAULT '0',
  `publish` tinyint(1) DEFAULT '1',
  `share_folder` int(10) DEFAULT '0',
  `max_users` int(10) unsigned DEFAULT NULL,
  `archive` int(10) unsigned DEFAULT '0',
  `instance_source` int(8) unsigned DEFAULT '0',
  `originating_course` int(8) unsigned DEFAULT '0',
  `description` text,
  `objectives` text,
  `assessment` text,
  `topics` text,
  `resources` text,
  `info` text,
  `learning_method` text,
  `subject` text,
  `publisher` text,
  `contributor` text,
  `type` text,
  `format` text,
  `identifier` text,
  `source` text,
  `relation` text,
  `coverage` text,
  `rights` text,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lessons` */

/*Table structure for table `lessons_users` */

DROP TABLE IF EXISTS `lessons_users`;

CREATE TABLE `lessons_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `lesson_id` int(8) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `archive` int(10) unsigned DEFAULT '0',
  `from_timestamp` int(10) unsigned DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `positions` text,
  `done_content` text,
  `current_unit` mediumint(8) unsigned DEFAULT '0',
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `issued_certificate` blob,
  `comments` text,
  `to_timestamp` int(10) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lessons_users` */

/*Table structure for table `login_tokens` */

DROP TABLE IF EXISTS `login_tokens`;

CREATE TABLE `login_tokens` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(8) NOT NULL,
  `token` char(32) NOT NULL,
  `duration` varchar(32) NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `login_tokens` */

insert  into `login_tokens`(`id`,`user_id`,`token`,`duration`,`used`,`created`,`expires`) values (1,1,'0390ec2b690c8d3a57b2f05c18457d08','2 weeks',0,'2014-06-05 00:13:42','2014-06-19 00:13:41'),(2,1,'a05294fab13ff2a362c132c65677fb54','2 weeks',0,'2014-06-05 00:15:45','2014-06-19 00:15:45'),(3,1,'a1afa63d5b225a45a08bb5595fe543aa','2 weeks',0,'2014-06-05 00:23:21','2014-06-19 00:23:21'),(4,1,'6fd86e0175bceda8eba3eae08bc3a32c','2 weeks',0,'2014-06-05 00:24:43','2014-06-19 00:24:43'),(5,1,'9997b556e3332dd55118b82d458c41f9','2 weeks',0,'2014-06-05 00:25:07','2014-06-19 00:25:07'),(6,1,'d25a7eea8b05d4f4e5bbbaadf043d45e','2 weeks',0,'2014-06-05 00:30:06','2014-06-19 00:30:06'),(7,1,'fc0f1358d4fff2953a543687e949e2a0','2 weeks',0,'2014-06-14 00:34:49','2014-06-28 00:34:49'),(8,1,'d9717c78f72eb01649dbf6aaf3444416','2 weeks',1,'2014-06-14 00:37:58','2014-06-28 00:37:58'),(9,1,'c47f98ab8543475907410e9ce4432868','2 weeks',0,'2014-06-14 08:47:41','2014-06-28 08:47:41'),(10,1,'0c1461b14d9c428525ca5d5a6327ebfc','2 weeks',0,'2014-06-14 04:49:03','2014-06-28 04:49:03'),(11,1,'8f9905fe100044a68192a8b93e6f37b1','2 weeks',0,'2014-07-10 04:45:59','2014-07-24 04:45:59'),(12,1,'df44c305df6d9f2f4c6a0de97ec84b95','2 weeks',0,'2014-07-10 05:00:15','2014-07-24 05:00:15'),(13,1,'07ceaa8e0fa3931af97045fd7372ee8f','2 weeks',0,'2014-07-10 05:28:21','2014-07-24 05:28:21'),(14,1,'41195ecc2b06c8ffec7774dc1900a70a','2 weeks',0,'2014-07-10 05:29:47','2014-07-24 05:29:47'),(15,2,'1b5df85fc1148996b82cbb3ca7cad434','2 weeks',0,'2014-07-10 05:33:51','2014-07-24 05:33:51'),(16,2,'32fef770d2e81ad04b79bf520a462a60','2 weeks',0,'2014-07-10 05:35:32','2014-07-24 05:35:32'),(17,1,'53a015efb5c8521c47c6c3a7d2ffbd03','2 weeks',1,'2014-07-10 05:54:46','2014-07-24 05:54:46'),(18,1,'5e597983e7ac3cd8b8cb6f414e729042','2 weeks',0,'2014-07-15 06:15:16','2014-07-29 06:15:16'),(19,1,'6be570250bc70fd4daa26f19844901d6','2 weeks',0,'2014-07-15 02:16:13','2014-07-29 02:16:13'),(20,1,'936bc792d5853d12f495d6e8854222fb','2 weeks',0,'2014-07-15 06:15:32','2014-07-29 06:15:32'),(21,1,'375a29e7a36fe037dcbf19e01a34628e','2 weeks',1,'2014-07-15 07:34:02','2014-07-29 07:34:02'),(22,1,'917a1383c665aa540e447a7a46edcca9','2 weeks',1,'2014-07-16 03:37:00','2014-07-30 03:37:00'),(23,1,'97f92fcacff28b5ec956f97fcf503381','2 weeks',0,'2014-07-16 08:15:08','2014-07-30 08:15:08'),(24,1,'93df8a1fbfa2603bf340097a7b222bdf','2 weeks',0,'2014-07-16 04:30:02','2014-07-30 04:30:02'),(25,1,'fed52e35b1c10739c2f0a4ebc794677b','2 weeks',0,'2014-07-16 04:43:10','2014-07-30 04:43:10'),(26,1,'2b38397d38a96617a70abdcac5b91e2c','2 weeks',0,'2014-07-16 05:49:17','2014-07-30 05:49:17'),(27,1,'d217c0a4aaffe0ec2b7d1045150bf965','2 weeks',0,'2014-07-18 00:41:09','2014-08-01 00:41:09'),(28,1,'e694e70112217128947832018291efba','2 weeks',0,'2014-07-18 00:42:49','2014-08-01 00:42:49'),(29,1,'1096b167188451fa71b420b2c958b392','2 weeks',0,'2014-07-18 00:44:06','2014-08-01 00:44:06'),(30,2,'5150edbd54718c9bc1fdbc4247532ff5','2 weeks',0,'2014-07-18 00:47:57','2014-08-01 00:47:57'),(31,2,'f587e1b2db5dc9efdba3688bff72b277','2 weeks',0,'2014-07-18 00:52:15','2014-08-01 00:52:15'),(32,1,'ce24202d99662f27b99d3fee5e0cba86','2 weeks',0,'2014-07-18 01:53:54','2014-08-01 01:53:54'),(33,1,'c0c1cfbe78a3687d1ff2dc91126a7c22','2 weeks',0,'2014-07-18 02:06:11','2014-08-01 02:06:11'),(34,1,'f6c98295cb140392430776acc0b7e5ea','2 weeks',0,'2014-07-18 02:21:24','2014-08-01 02:21:24'),(35,1,'43b1950436111c11eead49ed24c83b89','2 weeks',0,'2014-07-21 04:03:35','2014-08-04 04:03:35'),(36,1,'fced9c3300e540903a3497cc811262c3','2 weeks',0,'2014-07-21 00:03:51','2014-08-04 00:03:51'),(37,1,'4d195ffd5dbbb18f26b930c646bac2a4','2 weeks',0,'2014-12-04 22:49:38','2014-12-18 22:49:38');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(8) unsigned NOT NULL,
  `receiver` int(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `attachments` text,
  `bcc` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(4) NOT NULL,
  `is_important` tinyint(4) NOT NULL,
  `is_draft` tinyint(4) NOT NULL,
  `is_trash` tinyint(4) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `messages` */

/*Table structure for table `modules` */

DROP TABLE IF EXISTS `modules`;

CREATE TABLE `modules` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `model_name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(150) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL,
  `description` text,
  `position` varchar(150) NOT NULL,
  `menu` varchar(255) DEFAULT NULL,
  `mandatory` varchar(255) DEFAULT NULL,
  `permissions` varchar(32) NOT NULL DEFAULT 'administrator',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `modules` */

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `data` text,
  `expire` int(10) unsigned DEFAULT '0',
  `users_LOGIN` varchar(100) NOT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `news` */

/*Table structure for table `notices` */

DROP TABLE IF EXISTS `notices`;

CREATE TABLE `notices` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(8) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `htmlized_description` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `is_seen` tinyint(4) NOT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notices` */

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `send_interval` varchar(10) NOT NULL DEFAULT '0',
  `send_conditions` text,
  `id_type_entity` varchar(255) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text,
  `active` tinyint(1) DEFAULT '1',
  `html_message` tinyint(1) DEFAULT '0',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notifications` */

/*Table structure for table `periods` */

DROP TABLE IF EXISTS `periods`;

CREATE TABLE `periods` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL,
  `from_timestamp` datetime NOT NULL,
  `to_timestamp` datetime NOT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `periods` */

/*Table structure for table `polls` */

DROP TABLE IF EXISTS `polls`;

CREATE TABLE `polls` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `question` text,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `option5` varchar(255) DEFAULT NULL,
  `options` text,
  `timestamp_start` datetime DEFAULT NULL,
  `timestamp_end` datetime DEFAULT NULL,
  `views` int(8) unsigned NOT NULL DEFAULT '0',
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `polls` */

/*Table structure for table `polls_users` */

DROP TABLE IF EXISTS `polls_users`;

CREATE TABLE `polls_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `poll_id` int(8) unsigned NOT NULL DEFAULT '0',
  `vote` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `polls_users` */

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `replyto` int(8) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `posts` */

/*Table structure for table `projects` */

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) DEFAULT NULL,
  `data` text,
  `htmlized_data` text,
  `deadline` int(10) unsigned DEFAULT NULL,
  `creator_LOGIN` varchar(100) NOT NULL,
  `auto_assign` tinyint(1) NOT NULL DEFAULT '0',
  `metadata` text,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `projects` */

/*Table structure for table `projects_users` */

DROP TABLE IF EXISTS `projects_users`;

CREATE TABLE `projects_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(8) unsigned NOT NULL DEFAULT '0',
  `users_id` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text,
  `grade` float DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `upload_timestamp` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `projects_users` */

/*Table structure for table `ratings` */

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ratings` */

/*Table structure for table `ratings_users` */

DROP TABLE IF EXISTS `ratings_users`;

CREATE TABLE `ratings_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `rating_id` int(8) unsigned NOT NULL DEFAULT '0',
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ratings_users` */

/*Table structure for table `sent_notifications` */

DROP TABLE IF EXISTS `sent_notifications`;

CREATE TABLE `sent_notifications` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `recipient` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sent_notifications` */

/*Table structure for table `topics` */

DROP TABLE IF EXISTS `topics`;

CREATE TABLE `topics` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `views` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text,
  `viewed_by` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `topics` */

/*Table structure for table `user_group_permissions` */

DROP TABLE IF EXISTS `user_group_permissions`;

CREATE TABLE `user_group_permissions` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_group_id` int(8) unsigned NOT NULL,
  `controller` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `action` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `allowed` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

/*Data for the table `user_group_permissions` */

insert  into `user_group_permissions`(`id`,`user_group_id`,`controller`,`action`,`allowed`) values (1,1,'Pages','display',1),(2,2,'Pages','display',1),(3,3,'Pages','display',1),(4,1,'UserGroupPermissions','index',1),(5,2,'UserGroupPermissions','index',0),(6,3,'UserGroupPermissions','index',0),(7,1,'UserGroupPermissions','update',1),(8,2,'UserGroupPermissions','update',0),(9,3,'UserGroupPermissions','update',0),(10,1,'UserGroups','index',1),(11,2,'UserGroups','index',0),(12,3,'UserGroups','index',0),(13,1,'UserGroups','addGroup',1),(14,2,'UserGroups','addGroup',0),(15,3,'UserGroups','addGroup',0),(16,1,'UserGroups','editGroup',1),(17,2,'UserGroups','editGroup',0),(18,3,'UserGroups','editGroup',0),(19,1,'UserGroups','deleteGroup',1),(20,2,'UserGroups','deleteGroup',0),(21,3,'UserGroups','deleteGroup',0),(22,1,'Users','index',1),(23,2,'Users','index',1),(24,3,'Users','index',0),(25,1,'Users','viewUser',1),(26,2,'Users','viewUser',1),(27,3,'Users','viewUser',0),(28,1,'Users','myprofile',1),(29,2,'Users','myprofile',1),(30,3,'Users','myprofile',1),(31,1,'Users','login',1),(32,2,'Users','login',1),(33,3,'Users','login',0),(34,1,'Users','logout',1),(35,2,'Users','logout',1),(36,3,'Users','logout',0),(37,1,'Users','register',1),(38,2,'Users','register',1),(39,3,'Users','register',1),(40,1,'Users','changePassword',1),(41,2,'Users','changePassword',1),(42,3,'Users','changePassword',0),(43,1,'Users','changeUserPassword',1),(44,2,'Users','changeUserPassword',0),(45,3,'Users','changeUserPassword',0),(46,1,'Users','addUser',1),(47,2,'Users','addUser',0),(48,3,'Users','addUser',0),(49,1,'Users','editUser',1),(50,2,'Users','editUser',0),(51,3,'Users','editUser',0),(52,1,'Users','dashboard',1),(53,2,'Users','dashboard',1),(54,3,'Users','dashboard',0),(55,1,'Users','deleteUser',1),(56,2,'Users','deleteUser',0),(57,3,'Users','deleteUser',0),(58,1,'Users','makeActive',1),(59,2,'Users','makeActive',0),(60,3,'Users','makeActive',0),(61,1,'Users','accessDenied',1),(62,2,'Users','accessDenied',1),(63,3,'Users','accessDenied',1),(64,1,'Users','userVerification',1),(65,2,'Users','userVerification',1),(66,3,'Users','userVerification',0),(67,1,'Users','forgotPassword',1),(68,2,'Users','forgotPassword',1),(69,3,'Users','forgotPassword',1),(70,1,'Tasks','index',1),(71,2,'Tasks','index',0),(72,3,'Tasks','index',0),(73,1,'Tasks','view',1),(74,2,'Tasks','view',0),(75,3,'Tasks','view',0),(76,1,'Tasks','add',1),(77,2,'Tasks','add',0),(78,3,'Tasks','add',0),(79,1,'Tasks','edit',1),(80,2,'Tasks','edit',1),(81,3,'Tasks','edit',0),(82,1,'Tasks','delete',1),(83,2,'Tasks','delete',1),(84,3,'Tasks','delete',0),(85,1,'Tasks','user_list',1),(86,2,'Tasks','user_list',1),(87,3,'Tasks','user_list',0),(88,1,'Tasks','viewTask',1),(89,2,'Tasks','viewTask',1),(90,3,'Tasks','viewTask',0),(91,1,'TaskUsers','index',1),(92,2,'TaskUsers','index',1),(93,3,'TaskUsers','index',0),(94,1,'TaskUsers','view',1),(95,2,'TaskUsers','view',0),(96,3,'TaskUsers','view',0),(97,1,'TaskUsers','add',1),(98,2,'TaskUsers','add',0),(99,3,'TaskUsers','add',0),(100,1,'TaskUsers','edit',1),(101,2,'TaskUsers','edit',0),(102,3,'TaskUsers','edit',0),(103,1,'TaskUsers','delete',1),(104,2,'TaskUsers','delete',0),(105,3,'TaskUsers','delete',0),(106,1,'Users','activatePassword',1),(107,2,'Users','activatePassword',0),(108,3,'Users','activatePassword',0),(109,1,'Tasks','popup_add',1),(110,2,'Tasks','popup_add',1),(111,3,'Tasks','popup_add',0),(112,7,'TaskUsers','view',0),(113,7,'TaskUsers','edit',0),(114,7,'Tasks','index',0),(115,7,'Tasks','view',0),(116,7,'Tasks','add',0),(117,4,'Users','dashboard',1),(118,1,'Cities','index',1),(119,2,'Cities','index',0),(120,3,'Cities','index',0),(121,4,'Cities','index',1),(122,1,'Cities','view',0),(123,2,'Cities','view',0),(124,3,'Cities','view',0),(125,4,'Cities','view',1),(126,4,'Users','myprofile',1);

/*Table structure for table `user_groups` */

DROP TABLE IF EXISTS `user_groups`;

CREATE TABLE `user_groups` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `alias_name` varchar(100) DEFAULT NULL,
  `allowRegistration` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user_groups` */

insert  into `user_groups`(`id`,`name`,`alias_name`,`allowRegistration`,`created`,`modified`) values (1,'Admin','Admin',0,'2014-04-04 20:59:42','2014-04-04 20:59:42'),(2,'User','User',1,'2014-04-04 20:59:42','2014-07-16 04:41:01'),(3,'Guest','Guest',0,'2014-04-04 20:59:42','2014-07-16 04:42:41'),(4,'Manager','Manager',1,'2014-07-10 05:31:51','2014-07-10 05:31:51');

/*Table structure for table `user_types` */

DROP TABLE IF EXISTS `user_types`;

CREATE TABLE `user_types` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `basic_user_type` varchar(50) NOT NULL,
  `core_access` text,
  `modules_access` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_types` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_group_id` int(8) unsigned DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fax` varchar(31) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `current_address` text,
  `city` varchar(63) DEFAULT NULL,
  `postal` varchar(31) DEFAULT NULL,
  `country` varchar(63) DEFAULT NULL,
  `permanent_address` text,
  `cell_phone` varchar(255) DEFAULT NULL,
  `home_phone` varchar(255) DEFAULT NULL,
  `national_idnumber` varchar(63) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `photo_dir` varchar(255) DEFAULT NULL,
  `ip` varchar(31) DEFAULT NULL,
  `active` varchar(3) DEFAULT '0',
  `timezone` varchar(100) DEFAULT NULL,
  `comments` text,
  `user_type` varchar(50) NOT NULL DEFAULT 'student',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `viewed_license` tinyint(1) DEFAULT '0',
  `status` varchar(255) DEFAULT '',
  `short_description` text,
  `balance` float DEFAULT '0',
  `need_pwd_change` tinyint(1) DEFAULT '0',
  `description` varchar(100) NOT NULL,
  `db_type` varchar(10) NOT NULL,
  `size` tinyint(3) unsigned DEFAULT '255',
  `type` varchar(10) DEFAULT NULL,
  `options` text,
  `default_value` text,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `mandatory` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`user_group_id`,`username`,`password`,`email`,`fax`,`first_name`,`last_name`,`current_address`,`city`,`postal`,`country`,`permanent_address`,`cell_phone`,`home_phone`,`national_idnumber`,`photo`,`photo_dir`,`ip`,`active`,`timezone`,`comments`,`user_type`,`pending`,`viewed_license`,`status`,`short_description`,`balance`,`need_pwd_change`,`description`,`db_type`,`size`,`type`,`options`,`default_value`,`visible`,`mandatory`,`created`,`modified`,`created_by`,`modified_by`) values (1,1,'admin','e10adc3949ba59abbe56e057f20f883e','islm90@liveoutsource.com','','Admin','',NULL,NULL,NULL,'',NULL,'','','123456','p1(150x150).png','1',NULL,'0',NULL,NULL,'student',0,0,'',NULL,0,0,'','',255,NULL,NULL,NULL,1,1,'2014-03-05 00:39:34','2014-07-18 02:18:55',NULL,'islm90@liveoutsource.com'),(2,4,'islm901','e10adc3949ba59abbe56e057f20f883e','abc@abc.com','','tark','trk',NULL,NULL,NULL,NULL,NULL,'98765432','9876543','0987543213467',NULL,'',NULL,'1',NULL,NULL,'student',0,0,'',NULL,0,0,'','',255,NULL,NULL,NULL,1,1,'2014-07-10 05:33:06','2014-07-10 05:33:06','islm90@gmail.com','islm90@gmail.com');

/*Table structure for table `usrgroups` */

DROP TABLE IF EXISTS `usrgroups`;

CREATE TABLE `usrgroups` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `user_type_id` varchar(50) DEFAULT '0',
  `users_active` tinyint(1) DEFAULT '0',
  `assign_profile_to_new` tinyint(1) DEFAULT '0',
  `unique_key` varchar(255) DEFAULT '',
  `is_default` tinyint(1) DEFAULT '0',
  `key_max_usage` int(8) unsigned DEFAULT '0',
  `key_current_usage` int(8) unsigned DEFAULT '0',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usrgroups` */

/*Table structure for table `usrgroups_lessons` */

DROP TABLE IF EXISTS `usrgroups_lessons`;

CREATE TABLE `usrgroups_lessons` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(8) unsigned NOT NULL,
  `usrgroup_id` int(8) unsigned NOT NULL,
  `user_type` varchar(50) DEFAULT 'student',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usrgroups_lessons` */

/*Table structure for table `usrgroups_users` */

DROP TABLE IF EXISTS `usrgroups_users`;

CREATE TABLE `usrgroups_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `usrgroup_id` int(8) unsigned NOT NULL,
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usrgroups_users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
