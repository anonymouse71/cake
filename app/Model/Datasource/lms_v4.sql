-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2014 at 12:15 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `caketemp`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `model_name`, `model_foreign_key`, `name`, `description`, `active`, `registered`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 'Lesson', 11, 'Lesson 2 with Blog and Forum', NULL, 1, 1, '', '', '2014-12-12 06:06:27', '2014-12-12 06:06:27'),
(2, 'Lesson', 12, 'Lesson 3', NULL, 1, 1, '', '', '2014-12-13 00:03:42', '2014-12-13 00:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `data` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(50) NOT NULL DEFAULT '',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `model_name`, `model_foreign_key`, `data`, `active`, `type`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(3, 'asd', 1, 'sadf', 1, '1', NULL, NULL, '2014-12-06 02:42:02', '2014-12-06 02:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`, `parent_id`, `lft`, `rght`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(2, 'Web Design', 1, 0, 0, 0, NULL, NULL, '2014-12-12 04:14:59', '2014-12-12 04:15:20'),
(3, 'Web Development', 1, 0, 0, 0, NULL, NULL, '2014-12-12 04:15:12', '2014-12-12 04:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE IF NOT EXISTS `conditions` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE IF NOT EXISTS `configurations` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(150) DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(8) unsigned DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `data` longtext,
  `ctg_type` enum('Default','Theory','Test','Example') NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `lesson_id`, `name`, `data`, `ctg_type`, `active`, `previous_content`, `options`, `scorm_version`, `publish`, `identifier`, `linked_to`, `subject`, `description`, `publisher`, `contributor`, `type`, `format`, `source`, `relation`, `coverage`, `rights`, `parent_id`, `lft`, `rght`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(13, 9, 'Getting started html5', '<p>&lt;iframe width=&quot;640&quot; height=&quot;360&quot; src=&quot;//www.youtube.com/embed/1oXh05SSpEo?feature=player_detailpage&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, 'subject', '<p>wiypo</p>\r\n', '', '', '', '', '', NULL, NULL, NULL, NULL, 11, 16, NULL, NULL, '2014-12-12 05:03:30', '2014-12-13 06:10:47'),
(14, 9, 'Getting started html6', '', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, 'rewytu', '<p>rwiuyti</p>\r\n', '', '', '', '', '', NULL, NULL, NULL, 0, 1, 6, NULL, NULL, '2014-12-12 05:06:53', '2014-12-12 05:06:53'),
(15, 9, 'Getting started html7', '', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, 'rewytu', '<p>rwiuyti</p>\r\n', '', '', '', '', '', NULL, NULL, NULL, 0, 7, 8, NULL, NULL, '2014-12-12 05:07:20', '2014-12-12 05:07:20'),
(16, 9, 'Getting started html8', '', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, 'rewytu', '<p>rwiuyti</p>', '', '', '', '', '', NULL, NULL, NULL, 13, 12, 13, NULL, NULL, '2014-12-12 05:07:48', '2014-12-12 05:14:53'),
(18, 9, 'Getting started html10', '', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, 'tdyerittu', '', '', '', '', '', '', NULL, NULL, NULL, 14, 2, 5, NULL, NULL, '2014-12-12 07:39:54', '2014-12-12 07:39:54'),
(19, 9, 'Getting started html11', '', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, 'wreuiteuy', '', '', '', '', '', '', NULL, NULL, NULL, 18, 3, 4, NULL, NULL, '2014-12-12 07:40:37', '2014-12-12 07:40:37'),
(20, 9, 'Introduction', '<p>আসলে আমি মূলত HTML5 নিয়ে ই লিখব এ সিরিজ। তার আগে HTML সম্পর্কে কিছু ধারনা দিয়ে নিব। আমি একটু থিওরি নিয়ে বেশি আলোচনা করব। যেন আপনাদের মূল ভিত্তি শক্ত হয়। ভার্সিটি গুলোতে  প্রোগ্রামিং ল্যাঙ্গুয়েজ শিখালে ও এসব ওয়েব প্রোগ্রামিং সম্পর্কে শিখানো হয় না। এগুলো নিজে নিজে ই শিখে নিতে হয়। যারা আগ্রহী তারা ভিবিন্ন ভাবে ভিবিন্ন ওয়েব সাইট থেকে শিখে নেয়। যার অধিকাংশই ইংরেজী। তাই আমার এ সিরিজ কম্পিউটার সাইন্সের ছাত্র ছাত্রী সহ সকল আগ্রহীদের কাজে লাগবে আসা করি ইনসাহআল্লাহ।</p>\r\n<p>চলুন এবার শুরু করা যাক। প্রথমে জানা যাক HTML কি ও এর সাথে প্রয়োজনীয় কিছু তথ্য।</p>\r\n<p>HTML:HTML এর অর্থ হচ্ছে Hypertext Markup Language. এটা কোন Programming Language নয়, একটি Markup Language. আর HTML5 হচ্ছে HTML এর সর্বশেষ version। HTML5 এর রয়েছে অনেক নতুন ফিচার, নতুন বৈশিষ্ট। HTML5 হচ্ছে HTML, XHTML, এবং HTML DOM  এর নতুন  standard।  HTML5 সুবিদা নিয়ে আরেক দিন আলোচনা করব।</p>\r\n<p>আমর তো ইতিমধ্যে জেনেছি HTML হচ্ছে একটি Markup Language এবার জানা যাক Markup Language কি জিনিস।</p>\r\n<p>Markup Language হচ্ছে Markup Tag এর সমষ্টি। কত গুলো Markup Tag এর সমন্ময়েই Markup Language তৈরি হয়।</p>\r\n<p>এবার আবার আসল  Markup Tag কি, তাই না? Markup Tag হচ্ছে একটি কোড যা < এবং > (বাঁকা ব্যাকেট) এর ভিতরে থাকে। এবাবে ই Markup Tag ব্যবহার করা হয়। Markup Tag কে HTML Tag ও বলা হয়। HTML এ Markup Tag ব্যবহার করে একটি ওয়েব পেইজ তৈরি করে। এর নিচের বৈশিষ্ট গুলো রয়েছেঃ</p>\r\n<p>HTML Tag  হচ্ছে বাকা ব্রেকেট(< এবং >) এর মধ্যে রাখা কি ওয়ার্ড।</p>\r\n<p>প্রথমটিকে বলা হয় Start tag এবং শেষেরটি কে বলা হয় End Tag. কিন্তু HTML5 এ শুধু Start tag থাকে কোন End Tag থাকে না। ব্যবহার করলে ও সমস্যা নেই।</p>\r\n</p>কিছুক্ষন আগে জেনেছেন ওয়েব পেইজ  সম্পর্কে বা আমরা প্রতিদিনই বিভিন্ন ওয়েব পেইজ  ভিজিট করে থাকি। ওয়েব পেইজই হচ্ছে HTML Document। HTML Document একটি ওয়েব পেজ বর্ননা করে। মানে HTML Document বলতেই ওয়েব সাইট বুঝায়।   HTML Document এর মধ্যে HTML Tag বা Markup Tag ও plain text থাকে। HTML Document কে web Page ও বলা হয়। আমরা প্রতিদিন যত ওয়েব পেজ ভিজিট করি তা সবই কিন্তু এক একটি HTML Document।</p>\r\n<p>আজকের মতো এত টুকুই আবার ও হাজির হব আপনাদের সামনে HTML নিয়ে।</p>', 'Theory', 1, 0, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(21, 12, 'Introduction', '<p>jashkdgfkjas jh sjdhagfhj jhsdgfhjg jshdgfk jshjd sjhd sjkdhgf sjkdhgf skjdfh skjdgf kjsdgf sdkj asdkjfh skjdf sdfhj skjdfh lflskjhf lsdfjashkdgfkjas jh sjdhagfhj jhsdgfhjg jshdgfk jshjd sjhd sjkdhgf sjkdhgf skjdfh skjdgf kjsdgf sdkj asdkjfh skjdf sdfhj skjdfh lflskjhf lsdfjashkdgfkjas jh sjdhagfhj jhsdgfhjg jshdgfk jshjd sjhd sjkdhgf sjkdhgf skjdfh skjdgf kjsdgf sdkj asdkjfh skjdf sdfhj skjdfh lflskjhf lsdfjashkdgfkjas jh sjdhagfhj jhsdgfhjg jshdgfk jshjd sjhd sjkdhgf sjkdhgf skjdfh skjdgf kjsdgf sdkj asdkjfh skjdf sdfhj skjdfh lflskjhf lsdfjashkdgfkjas jh sjdhagfhj jhsdgfhjg jshdgfk jshjd sjhd sjkdhgf sjkdhgf skjdfh skjdgf kjsdgf sdkj asdkjfh skjdf sdfhj skjdfh lflskjhf lsdfjashkdgfkjas jh sjdhagfhj jhsdgfhjg jshdgfk jshjd sjhd sjkdhgf sjkdhgf skjdfh skjdgf kjsdgf sdkj asdkjfh skjdf sdfhj skjdfh lflskjhf lsdfjashkdgfkjas jh sjdhagfhj jhsdgfhjg jshdgfk jshjd sjhd sjkdhgf sjkdhgf skjdfh skjdgf kjsdgf sdkj asdkjfh skjdf sdfhj skjdfh lflskjhf lsdf</p>\r\n\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"><param name="allowFullScreen" value="true" /><param name="quality" value="high" /><param name="movie" value="https://www.youtube.com/watch?v=1oXh05SSpEo" /><embed allowfullscreen="true" pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" src="https://www.youtube.com/watch?v=1oXh05SSpEo" type="application/x-shockwave-flash"></embed></object></p>\r\n\r\n<p>asd asd asd asdd asd asd asd a asdd asd asd asd asd asd asd kjhl lhjlkhjlkhj klhjlkhjklhj hjlkhj kjhlkhj kjhklhj lhjlkh</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 10, NULL, NULL, '2014-12-13 04:36:23', '2014-12-13 04:36:23'),
(22, 9, 'dasfgdghfjshf', '<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfhfshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n\r\n<p>fshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfhfshjgh&nbsp;&nbsp;&nbsp;&nbsp; gfhdfhgfh</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 14, 15, NULL, NULL, '2014-12-13 08:00:46', '2014-12-13 08:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `content_users`
--

CREATE TABLE IF NOT EXISTS `content_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(8) NOT NULL,
  `content_id` int(8) unsigned NOT NULL,
  `success_status` varchar(15) DEFAULT 'unknown',
  `score` float DEFAULT '0',
  `entry` varchar(15) DEFAULT '',
  `total_time` int(10) unsigned DEFAULT NULL,
  `suspend_data` longtext,
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `time_start` int(10) unsigned DEFAULT NULL,
  `time_end` int(10) unsigned DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(8) unsigned DEFAULT NULL,
  `image` varchar(512) NOT NULL,
  `name` varchar(150) NOT NULL,
  `duration_per_week` varchar(32) NOT NULL,
  `duration_hour_per_week` varchar(32) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `status` enum('ongoing','upcomming') NOT NULL,
  `archive` int(10) unsigned DEFAULT '0',
  `start_date` varchar(128) DEFAULT NULL,
  `end_date` varchar(128) DEFAULT NULL,
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
  `who_it_is_for` text,
  `htmlized_who_it_is_for` text,
  `usually_asked_question` text,
  `htmlized_usually_asked_question` text,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `image`, `name`, `duration_per_week`, `duration_hour_per_week`, `active`, `status`, `archive`, `start_date`, `end_date`, `options`, `price`, `show_catalog`, `publish`, `reset`, `certificate_expiration`, `reset_interval`, `max_users`, `rules`, `instance_source`, `depends_on`, `ceu`, `description`, `objectives`, `assessment`, `topics`, `resources`, `info`, `learning_method`, `subject`, `publisher`, `contributor`, `type`, `format`, `identifier`, `source`, `relation`, `coverage`, `rights`, `who_it_is_for`, `htmlized_who_it_is_for`, `usually_asked_question`, `htmlized_usually_asked_question`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(8, 2, 'files/photos/548ab78d-f498-4ac5-b160-133cfcf384cf.jpg', 'Html5', '10', '4-6', 1, 'ongoing', 0, '12/18/2014', '12/31/2014', NULL, 320, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 'HTML  হচ্ছে ওয়েব ডেবলপিং এর দুনিয়ায় ঢুকার মূল এবং একমাত্র পথ। আপনি যদি HTML না শিখেন তাহলে আপনি ওয়েব ডেভলপিং বা ডিজাইনিং এর বিশাল দুনিয়ায় প্রবেশ করতে পারবেন না। ওয়েব ডেভলপিং বা ডিজাইনিং কত বিশাল তা আর আমি বলতে হবে না। আপনি ইতি মধ্যে ই এ সম্পর্কে জেনে গেছেন। আর এ ওয়েব বিশ্ব দিন দিন বৃদ্ধি পাচ্ছে, কত টুকু বৃদ্ধি পাচ্ছে তা আমরা টের ও পাচ্ছি না। অনেক কথা বলে পেললাম, আবার আসি HTML এর নিকট।  HTML শিখলে আপনি নিজের একটি ওয়েব সাইট খুব সহজেই তৈরি করতে পারবেন, HTML খুবই সহজ, এর জন্য আপনাকে বেশি আতঙ্কিত হতে হবে না। আমি চেষ্টা করব আস্তে আস্তে HTML এর সবকিছু আলোচনা করার। এক সাথে আমি HTML এর সাথে HTML5  নিয়ে ও আলচনা করবো। কারন HTML5   ওবেব জগতের নতুন আলোড়োন।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ওয়েব ডেভলপিং', NULL, NULL, NULL, NULL, NULL, NULL, 'HTML  হচ্ছে ওয়েব ডেবলপিং এর দুনিয়ায় ঢুকার মূল এবং একমাত্র পথ। আপনি যদি HTML না শিখেন তাহলে আপনি ওয়েব ডেভলপিং বা ডিজাইনিং এর বিশাল দুনিয়ায় প্রবেশ করতে পারবেন না।', '<p>HTML  হচ্ছে ওয়েব ডেবলপিং এর দুনিয়ায় ঢুকার মূল এবং একমাত্র পথ। আপনি যদি HTML না শিখেন তাহলে আপনি ওয়েব ডেভলপিং বা ডিজাইনিং এর বিশাল দুনিয়ায় প্রবেশ করতে পারবেন না।</p>', 'HTML  হচ্ছে ওয়েব ডেবলপিং এর দুনিয়ায় ঢুকার মূল এবং একমাত্র পথ। আপনি যদি HTML না শিখেন তাহলে আপনি ওয়েব ডেভলপিং বা ডিজাইনিং এর বিশাল দুনিয়ায় প্রবেশ করতে পারবেন না।', '<p>HTML  হচ্ছে ওয়েব ডেবলপিং এর দুনিয়ায় ঢুকার মূল এবং একমাত্র পথ। আপনি যদি HTML না শিখেন তাহলে আপনি ওয়েব ডেভলপিং বা ডিজাইনিং এর বিশাল দুনিয়ায় প্রবেশ করতে পারবেন না।</p>', NULL, NULL, '2014-12-12 04:38:21', '2014-12-14 05:24:53'),
(9, 2, 'files/photos/548ab7e0-b360-43fe-8007-133cfcf384cf.jpg', 'CSS3', '14', '5-6', 1, 'upcomming', 0, NULL, NULL, NULL, 654, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-12 04:39:44', '2014-12-14 04:50:37'),
(10, 2, 'files/photos/548ab7fc-0928-4cc8-98f7-133cfcf384cf.jpg', 'XML', '', '', 1, 'upcomming', 0, NULL, NULL, NULL, 324, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-12 04:40:12', '2014-12-12 04:40:12'),
(11, 2, 'files/photos/548ab826-0a80-4fdf-bffa-133cfcf384cf.jpg', 'Photoshop', '', '', 1, 'ongoing', 0, NULL, NULL, NULL, 123, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 'গ্রাফিক ডিজাইন শেখার জন্য Adobe Photoshop এর যেসকল ব্যবহার জানা গাগে সেটা নিযে আরোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে Photoshop এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-12 04:40:54', '2014-12-12 04:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `course_lessons`
--

CREATE TABLE IF NOT EXISTS `course_lessons` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `course_lessons`
--

INSERT INTO `course_lessons` (`id`, `course_id`, `lesson_id`, `previous_lesson`, `start_date`, `end_date`, `start_period`, `end_period`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(3, 8, 9, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-12 05:00:15', '2014-12-12 05:00:15'),
(6, 8, 11, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-12 06:06:27', '2014-12-12 06:06:27'),
(7, 9, 11, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-12 06:14:42', '2014-12-12 06:14:42'),
(10, 9, 9, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-12 09:04:01', '2014-12-12 09:04:01'),
(11, 8, 12, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-13 00:03:42', '2014-12-13 00:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `course_users`
--

CREATE TABLE IF NOT EXISTS `course_users` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `course_users`
--

INSERT INTO `course_users` (`id`, `user_id`, `course_id`, `active`, `archive`, `from_timestamp`, `user_type`, `completed`, `score`, `issued_certificate`, `comments`, `to_timestamp`, `created`, `modified`) VALUES
(1, 4, 9, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-12 05:35:38', '2014-12-12 06:56:27'),
(2, 4, 10, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-12 06:20:30', '2014-12-12 06:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `course_usrgroups`
--

CREATE TABLE IF NOT EXISTS `course_usrgroups` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(8) unsigned NOT NULL,
  `usrgroup_id` int(8) unsigned NOT NULL,
  `user_type` varchar(50) DEFAULT 'student',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `entityID` varchar(255) DEFAULT NULL,
  `entity_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `model_name`, `model_foreign_key`, `username`, `type`, `entityID`, `entity_name`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 'asd', 1, 'doha', 0, 'as', 'asd', '', '', '2014-12-05 23:18:12', '2014-12-05 23:18:12'),
(2, 'asd', 1, 'asd', 0, '1', 'asd', '', '', '2014-12-06 01:26:49', '2014-12-06 01:26:49'),
(3, NULL, 0, 'doha', 0, NULL, NULL, '', '', '2014-12-06 01:37:26', '2014-12-06 01:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE IF NOT EXISTS `faqs` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE IF NOT EXISTS `forums` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `model_name`, `model_foreign_key`, `title`, `status`, `comments`, `rate`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(3, 'Lesson', 11, 'Lesson 2 with Blog and Forum', 1, NULL, 0, '2014-12-12 06:06:27', '2014-12-12 06:06:27', '', ''),
(4, 'Lesson', 12, 'Lesson 3', 1, NULL, 0, '2014-12-13 00:03:42', '2014-12-13 00:03:42', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `glossary`
--

CREATE TABLE IF NOT EXISTS `glossary` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE IF NOT EXISTS `lessons` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(8) unsigned DEFAULT '0',
  `image` varchar(512) NOT NULL,
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
  `is_current` tinyint(1) DEFAULT NULL,
  `is_upcoming` tinyint(1) DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `category_id`, `image`, `name`, `price`, `active`, `show_catalog`, `duration`, `access_limit`, `options`, `course_only`, `certificate`, `from_timestamp`, `to_timestamp`, `shift`, `publish`, `share_folder`, `max_users`, `archive`, `instance_source`, `originating_course`, `description`, `objectives`, `assessment`, `topics`, `resources`, `info`, `learning_method`, `subject`, `publisher`, `contributor`, `type`, `format`, `identifier`, `source`, `relation`, `coverage`, `rights`, `is_current`, `is_upcoming`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(9, 2, 'files/photos/548abcaf-03a4-40ca-8f31-133cfcf384cf.jpg', 'Lesson 1', 10, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-12 05:00:15', '2014-12-12 05:00:46'),
(11, 2, 'files/photos/548acc32-1f7c-4497-afe5-133cfcf384cf.jpg', 'Lesson 2 with Blog and Forum', 43, 1, 1, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-12 06:06:27', '2014-12-12 07:39:36'),
(12, 3, 'files/photos/548bc8ae-b744-4488-8347-0e88fcf384cf.jpg', 'Lesson 3', NULL, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-13 00:03:42', '2014-12-13 00:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_users`
--

CREATE TABLE IF NOT EXISTS `lesson_users` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lesson_users`
--

INSERT INTO `lesson_users` (`id`, `user_id`, `lesson_id`, `active`, `archive`, `from_timestamp`, `user_type`, `positions`, `done_content`, `current_unit`, `completed`, `score`, `issued_certificate`, `comments`, `to_timestamp`, `created`, `modified`) VALUES
(1, 4, 9, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, '2014-12-12 06:55:37', '2014-12-12 09:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `login_tokens`
--

CREATE TABLE IF NOT EXISTS `login_tokens` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(8) NOT NULL,
  `token` char(32) NOT NULL,
  `duration` varchar(32) NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `login_tokens`
--

INSERT INTO `login_tokens` (`id`, `user_id`, `token`, `duration`, `used`, `created`, `expires`) VALUES
(1, 1, '0390ec2b690c8d3a57b2f05c18457d08', '2 weeks', 0, '2014-06-05 00:13:42', '2014-06-19 00:13:41'),
(2, 1, 'a05294fab13ff2a362c132c65677fb54', '2 weeks', 0, '2014-06-05 00:15:45', '2014-06-19 00:15:45'),
(3, 1, 'a1afa63d5b225a45a08bb5595fe543aa', '2 weeks', 0, '2014-06-05 00:23:21', '2014-06-19 00:23:21'),
(4, 1, '6fd86e0175bceda8eba3eae08bc3a32c', '2 weeks', 0, '2014-06-05 00:24:43', '2014-06-19 00:24:43'),
(5, 1, '9997b556e3332dd55118b82d458c41f9', '2 weeks', 0, '2014-06-05 00:25:07', '2014-06-19 00:25:07'),
(6, 1, 'd25a7eea8b05d4f4e5bbbaadf043d45e', '2 weeks', 0, '2014-06-05 00:30:06', '2014-06-19 00:30:06'),
(7, 1, 'fc0f1358d4fff2953a543687e949e2a0', '2 weeks', 0, '2014-06-14 00:34:49', '2014-06-28 00:34:49'),
(8, 1, 'd9717c78f72eb01649dbf6aaf3444416', '2 weeks', 1, '2014-06-14 00:37:58', '2014-06-28 00:37:58'),
(9, 1, 'c47f98ab8543475907410e9ce4432868', '2 weeks', 0, '2014-06-14 08:47:41', '2014-06-28 08:47:41'),
(10, 1, '0c1461b14d9c428525ca5d5a6327ebfc', '2 weeks', 0, '2014-06-14 04:49:03', '2014-06-28 04:49:03'),
(11, 1, '8f9905fe100044a68192a8b93e6f37b1', '2 weeks', 0, '2014-07-10 04:45:59', '2014-07-24 04:45:59'),
(12, 1, 'df44c305df6d9f2f4c6a0de97ec84b95', '2 weeks', 0, '2014-07-10 05:00:15', '2014-07-24 05:00:15'),
(13, 1, '07ceaa8e0fa3931af97045fd7372ee8f', '2 weeks', 0, '2014-07-10 05:28:21', '2014-07-24 05:28:21'),
(14, 1, '41195ecc2b06c8ffec7774dc1900a70a', '2 weeks', 0, '2014-07-10 05:29:47', '2014-07-24 05:29:47'),
(15, 2, '1b5df85fc1148996b82cbb3ca7cad434', '2 weeks', 0, '2014-07-10 05:33:51', '2014-07-24 05:33:51'),
(16, 2, '32fef770d2e81ad04b79bf520a462a60', '2 weeks', 0, '2014-07-10 05:35:32', '2014-07-24 05:35:32'),
(17, 1, '53a015efb5c8521c47c6c3a7d2ffbd03', '2 weeks', 1, '2014-07-10 05:54:46', '2014-07-24 05:54:46'),
(18, 1, '5e597983e7ac3cd8b8cb6f414e729042', '2 weeks', 0, '2014-07-15 06:15:16', '2014-07-29 06:15:16'),
(19, 1, '6be570250bc70fd4daa26f19844901d6', '2 weeks', 0, '2014-07-15 02:16:13', '2014-07-29 02:16:13'),
(20, 1, '936bc792d5853d12f495d6e8854222fb', '2 weeks', 0, '2014-07-15 06:15:32', '2014-07-29 06:15:32'),
(21, 1, '375a29e7a36fe037dcbf19e01a34628e', '2 weeks', 1, '2014-07-15 07:34:02', '2014-07-29 07:34:02'),
(22, 1, '917a1383c665aa540e447a7a46edcca9', '2 weeks', 1, '2014-07-16 03:37:00', '2014-07-30 03:37:00'),
(23, 1, '97f92fcacff28b5ec956f97fcf503381', '2 weeks', 0, '2014-07-16 08:15:08', '2014-07-30 08:15:08'),
(24, 1, '93df8a1fbfa2603bf340097a7b222bdf', '2 weeks', 0, '2014-07-16 04:30:02', '2014-07-30 04:30:02'),
(25, 1, 'fed52e35b1c10739c2f0a4ebc794677b', '2 weeks', 0, '2014-07-16 04:43:10', '2014-07-30 04:43:10'),
(26, 1, '2b38397d38a96617a70abdcac5b91e2c', '2 weeks', 0, '2014-07-16 05:49:17', '2014-07-30 05:49:17'),
(27, 1, 'd217c0a4aaffe0ec2b7d1045150bf965', '2 weeks', 0, '2014-07-18 00:41:09', '2014-08-01 00:41:09'),
(28, 1, 'e694e70112217128947832018291efba', '2 weeks', 0, '2014-07-18 00:42:49', '2014-08-01 00:42:49'),
(29, 1, '1096b167188451fa71b420b2c958b392', '2 weeks', 0, '2014-07-18 00:44:06', '2014-08-01 00:44:06'),
(30, 2, '5150edbd54718c9bc1fdbc4247532ff5', '2 weeks', 0, '2014-07-18 00:47:57', '2014-08-01 00:47:57'),
(31, 2, 'f587e1b2db5dc9efdba3688bff72b277', '2 weeks', 0, '2014-07-18 00:52:15', '2014-08-01 00:52:15'),
(32, 1, 'ce24202d99662f27b99d3fee5e0cba86', '2 weeks', 0, '2014-07-18 01:53:54', '2014-08-01 01:53:54'),
(33, 1, 'c0c1cfbe78a3687d1ff2dc91126a7c22', '2 weeks', 0, '2014-07-18 02:06:11', '2014-08-01 02:06:11'),
(34, 1, 'f6c98295cb140392430776acc0b7e5ea', '2 weeks', 0, '2014-07-18 02:21:24', '2014-08-01 02:21:24'),
(35, 1, '43b1950436111c11eead49ed24c83b89', '2 weeks', 0, '2014-07-21 04:03:35', '2014-08-04 04:03:35'),
(36, 1, 'fced9c3300e540903a3497cc811262c3', '2 weeks', 0, '2014-07-21 00:03:51', '2014-08-04 00:03:51'),
(37, 1, '4d195ffd5dbbb18f26b930c646bac2a4', '2 weeks', 0, '2014-12-04 22:49:38', '2014-12-18 22:49:38'),
(38, 1, 'dfc5746a232a9fcf4494b620fc55ebae', '2 weeks', 1, '2014-12-05 00:16:58', '2014-12-19 00:16:58'),
(39, 1, '33f935cdc5c2a6d51e4b1e7ad803ea84', '2 weeks', 1, '2014-12-05 09:19:33', '2014-12-19 09:19:33'),
(40, 1, '70a8ab64751e84efbaffabdf79752991', '2 weeks', 1, '2014-12-05 13:24:57', '2014-12-19 13:24:57'),
(41, 1, '410676737632bae46bc00ce655da98c8', '2 weeks', 0, '2014-12-06 03:16:58', '2014-12-20 03:16:58'),
(42, 1, '72ee09a903206fee1ae9fa5a21e0a24e', '2 weeks', 1, '2014-12-05 22:17:06', '2014-12-19 22:17:06'),
(43, 1, 'cc116daca77b16f95cc5504d6482299f', '2 weeks', 0, '2014-12-06 04:03:58', '2014-12-20 04:03:58'),
(44, 1, 'f4d9bab35da2063838a9438cc90ef832', '2 weeks', 0, '2014-12-05 23:09:18', '2014-12-19 23:09:18'),
(45, 1, 'da457a3e05028a74c04681b0ea077a81', '2 weeks', 1, '2014-12-05 23:13:46', '2014-12-19 23:13:46'),
(46, 1, 'f19499209426dc6f16675a76333e6adb', '2 weeks', 0, '2014-12-06 08:04:14', '2014-12-20 08:04:14'),
(47, 1, 'fc6769abcbc7b01f03111e41f8a73e0d', '2 weeks', 1, '2014-12-06 04:41:05', '2014-12-20 04:41:05'),
(48, 1, '279a99ef4b0ab2a87025fa182b1bf957', '2 weeks', 1, '2014-12-07 11:08:05', '2014-12-21 11:08:05'),
(49, 1, '6a2eabea47d5bce88670a34809dfd898', '2 weeks', 1, '2014-12-08 04:08:40', '2014-12-22 04:08:40'),
(50, 1, '35b70c988b6bcbbad9f2bbc0ce976e40', '2 weeks', 1, '2014-12-08 05:43:42', '2014-12-22 05:43:42'),
(51, 1, '6524c4b35d193cc82a29fe992b7ada84', '2 weeks', 0, '2014-12-08 06:29:52', '2014-12-22 06:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(8) unsigned DEFAULT NULL,
  `receiver` int(8) unsigned DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `attachments` text,
  `bcc` tinyint(1) DEFAULT '0',
  `is_read` tinyint(4) DEFAULT NULL,
  `is_important` tinyint(4) DEFAULT NULL,
  `is_draft` tinyint(4) DEFAULT NULL,
  `is_trash` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender`, `receiver`, `title`, `description`, `attachments`, `bcc`, `is_read`, `is_important`, `is_draft`, `is_trash`, `created`, `modified`) VALUES
(1, 1, 2, 'asd', '', '', 0, NULL, NULL, NULL, NULL, '2014-12-05 23:20:21', '2014-12-05 23:20:21'),
(2, 2, 1, 'hgk', 'jhgjh', '', 0, NULL, NULL, NULL, NULL, '2014-12-06 01:12:45', '2014-12-06 01:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `model_name`, `active`, `title`, `author`, `version`, `description`, `position`, `menu`, `mandatory`, `permissions`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 'aaa', 'asd', 1, '', '', '', '', '', '', '', '', NULL, NULL, '2014-12-05 07:20:32', '2014-12-05 07:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE IF NOT EXISTS `notices` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `model_name`, `model_foreign_key`, `send_interval`, `send_conditions`, `id_type_entity`, `recipient`, `subject`, `message`, `active`, `html_message`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, NULL, 0, 'assd', 'asd', '1', 'as', 'asdf', NULL, 1, 1, NULL, NULL, '2014-12-05 06:17:10', '2014-12-05 06:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE IF NOT EXISTS `periods` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`id`, `lesson_id`, `name`, `from_timestamp`, `to_timestamp`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 1, '1st', '2014-12-05 00:00:00', '2014-12-06 00:00:00', NULL, NULL, '2014-12-05 00:50:15', '2014-12-05 00:50:15');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE IF NOT EXISTS `polls` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `poll_users`
--

CREATE TABLE IF NOT EXISTS `poll_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `poll_id` int(8) unsigned NOT NULL DEFAULT '0',
  `vote` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `model_name`, `model_foreign_key`, `title`, `data`, `htmlized_data`, `deadline`, `creator_LOGIN`, `auto_assign`, `metadata`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 'asd', 1, 'asd', '', '', NULL, '', 0, '', NULL, NULL, '2014-12-06 00:03:45', '2014-12-06 00:03:45'),
(2, 'asd', 1, 'asd', '', '', NULL, '', 0, '', NULL, NULL, '2014-12-06 00:04:06', '2014-12-06 00:04:06'),
(3, 'sad', 1, 'asdf', '', '', NULL, '', 0, '', NULL, NULL, '2014-12-06 00:05:33', '2014-12-06 00:05:33'),
(4, 'sad', 1, 'asdf', '', '', NULL, '', 0, '', NULL, NULL, '2014-12-06 00:06:33', '2014-12-06 00:06:33'),
(5, 'sad', 1, 'asdf', '', '', NULL, '', 0, '', NULL, NULL, '2014-12-06 00:07:41', '2014-12-06 00:07:41'),
(6, NULL, 0, 'dream', NULL, 'asd asd', 2014, '', 0, '', NULL, NULL, '2014-12-06 03:08:16', '2014-12-06 03:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE IF NOT EXISTS `project_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(8) unsigned NOT NULL DEFAULT '0',
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text,
  `grade` float DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `upload_timestamp` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `project_users`
--

INSERT INTO `project_users` (`id`, `project_id`, `user_id`, `status`, `comments`, `grade`, `filename`, `upload_timestamp`, `created`, `modified`) VALUES
(1, 5, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 6, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating_users`
--

CREATE TABLE IF NOT EXISTS `rating_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `rating_id` int(8) unsigned NOT NULL DEFAULT '0',
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sent_notifications`
--

CREATE TABLE IF NOT EXISTS `sent_notifications` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `recipient` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `forum_id`, `title`, `views`, `status`, `sticky`, `comments`, `viewed_by`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 1, 'aaaa', 0, 1, 0, 'aaaaaaaaaaaaa', NULL, '2014-12-05 06:55:21', '2014-12-05 07:01:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_group_id` int(8) unsigned DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fax` varchar(31) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` varchar(63) DEFAULT NULL,
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
  `aboutme` text,
  `website` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `gplus` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthdate` date NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_group_id`, `username`, `password`, `email`, `fax`, `first_name`, `last_name`, `gender`, `current_address`, `city`, `postal`, `country`, `permanent_address`, `cell_phone`, `home_phone`, `national_idnumber`, `photo`, `photo_dir`, `aboutme`, `website`, `facebook`, `twitter`, `gplus`, `youtube`, `address`, `birthdate`, `ip`, `active`, `timezone`, `comments`, `user_type`, `pending`, `viewed_license`, `status`, `short_description`, `balance`, `need_pwd_change`, `description`, `db_type`, `size`, `type`, `options`, `default_value`, `visible`, `mandatory`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(4, 1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@admin.com', '', 'Sumon', 'Sarker', 'Male', 'Unavailable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'admin', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL),
(5, 2, 'doha@email.com', 'e10adc3949ba59abbe56e057f20f883e', 'doha@email.com', '', 'hasan', 'doha', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '0', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-12 22:41:12', '2014-12-12 22:41:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `alias_name` varchar(100) DEFAULT NULL,
  `allowRegistration` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `alias_name`, `allowRegistration`, `created`, `modified`) VALUES
(1, 'Admin', 'Admin', 0, '2014-04-04 20:59:42', '2014-04-04 20:59:42'),
(2, 'User', 'User', 1, '2014-04-04 20:59:42', '2014-07-16 04:41:01'),
(3, 'Guest', 'Guest', 0, '2014-04-04 20:59:42', '2014-07-16 04:42:41'),
(4, 'Manager', 'Manager', 1, '2014-07-10 05:31:51', '2014-07-10 05:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_permissions`
--

CREATE TABLE IF NOT EXISTS `user_group_permissions` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_group_id` int(8) unsigned NOT NULL,
  `controller` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `action` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `allowed` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=127 ;

--
-- Dumping data for table `user_group_permissions`
--

INSERT INTO `user_group_permissions` (`id`, `user_group_id`, `controller`, `action`, `allowed`) VALUES
(1, 1, 'Pages', 'display', 1),
(2, 2, 'Pages', 'display', 1),
(3, 3, 'Pages', 'display', 1),
(4, 1, 'UserGroupPermissions', 'index', 1),
(5, 2, 'UserGroupPermissions', 'index', 0),
(6, 3, 'UserGroupPermissions', 'index', 0),
(7, 1, 'UserGroupPermissions', 'update', 1),
(8, 2, 'UserGroupPermissions', 'update', 0),
(9, 3, 'UserGroupPermissions', 'update', 0),
(10, 1, 'UserGroups', 'index', 1),
(11, 2, 'UserGroups', 'index', 0),
(12, 3, 'UserGroups', 'index', 0),
(13, 1, 'UserGroups', 'addGroup', 1),
(14, 2, 'UserGroups', 'addGroup', 0),
(15, 3, 'UserGroups', 'addGroup', 0),
(16, 1, 'UserGroups', 'editGroup', 1),
(17, 2, 'UserGroups', 'editGroup', 0),
(18, 3, 'UserGroups', 'editGroup', 0),
(19, 1, 'UserGroups', 'deleteGroup', 1),
(20, 2, 'UserGroups', 'deleteGroup', 0),
(21, 3, 'UserGroups', 'deleteGroup', 0),
(22, 1, 'Users', 'index', 1),
(23, 2, 'Users', 'index', 1),
(24, 3, 'Users', 'index', 0),
(25, 1, 'Users', 'viewUser', 1),
(26, 2, 'Users', 'viewUser', 1),
(27, 3, 'Users', 'viewUser', 0),
(28, 1, 'Users', 'myprofile', 1),
(29, 2, 'Users', 'myprofile', 1),
(30, 3, 'Users', 'myprofile', 1),
(31, 1, 'Users', 'login', 1),
(32, 2, 'Users', 'login', 1),
(33, 3, 'Users', 'login', 0),
(34, 1, 'Users', 'logout', 1),
(35, 2, 'Users', 'logout', 1),
(36, 3, 'Users', 'logout', 0),
(37, 1, 'Users', 'register', 1),
(38, 2, 'Users', 'register', 1),
(39, 3, 'Users', 'register', 1),
(40, 1, 'Users', 'changePassword', 1),
(41, 2, 'Users', 'changePassword', 1),
(42, 3, 'Users', 'changePassword', 0),
(43, 1, 'Users', 'changeUserPassword', 1),
(44, 2, 'Users', 'changeUserPassword', 0),
(45, 3, 'Users', 'changeUserPassword', 0),
(46, 1, 'Users', 'addUser', 1),
(47, 2, 'Users', 'addUser', 0),
(48, 3, 'Users', 'addUser', 0),
(49, 1, 'Users', 'editUser', 1),
(50, 2, 'Users', 'editUser', 0),
(51, 3, 'Users', 'editUser', 0),
(52, 1, 'Users', 'dashboard', 1),
(53, 2, 'Users', 'dashboard', 1),
(54, 3, 'Users', 'dashboard', 0),
(55, 1, 'Users', 'deleteUser', 1),
(56, 2, 'Users', 'deleteUser', 0),
(57, 3, 'Users', 'deleteUser', 0),
(58, 1, 'Users', 'makeActive', 1),
(59, 2, 'Users', 'makeActive', 0),
(60, 3, 'Users', 'makeActive', 0),
(61, 1, 'Users', 'accessDenied', 1),
(62, 2, 'Users', 'accessDenied', 1),
(63, 3, 'Users', 'accessDenied', 1),
(64, 1, 'Users', 'userVerification', 1),
(65, 2, 'Users', 'userVerification', 1),
(66, 3, 'Users', 'userVerification', 0),
(67, 1, 'Users', 'forgotPassword', 1),
(68, 2, 'Users', 'forgotPassword', 1),
(69, 3, 'Users', 'forgotPassword', 1),
(70, 1, 'Tasks', 'index', 1),
(71, 2, 'Tasks', 'index', 0),
(72, 3, 'Tasks', 'index', 0),
(73, 1, 'Tasks', 'view', 1),
(74, 2, 'Tasks', 'view', 0),
(75, 3, 'Tasks', 'view', 0),
(76, 1, 'Tasks', 'add', 1),
(77, 2, 'Tasks', 'add', 0),
(78, 3, 'Tasks', 'add', 0),
(79, 1, 'Tasks', 'edit', 1),
(80, 2, 'Tasks', 'edit', 1),
(81, 3, 'Tasks', 'edit', 0),
(82, 1, 'Tasks', 'delete', 1),
(83, 2, 'Tasks', 'delete', 1),
(84, 3, 'Tasks', 'delete', 0),
(85, 1, 'Tasks', 'user_list', 1),
(86, 2, 'Tasks', 'user_list', 1),
(87, 3, 'Tasks', 'user_list', 0),
(88, 1, 'Tasks', 'viewTask', 1),
(89, 2, 'Tasks', 'viewTask', 1),
(90, 3, 'Tasks', 'viewTask', 0),
(91, 1, 'TaskUsers', 'index', 1),
(92, 2, 'TaskUsers', 'index', 1),
(93, 3, 'TaskUsers', 'index', 0),
(94, 1, 'TaskUsers', 'view', 1),
(95, 2, 'TaskUsers', 'view', 0),
(96, 3, 'TaskUsers', 'view', 0),
(97, 1, 'TaskUsers', 'add', 1),
(98, 2, 'TaskUsers', 'add', 0),
(99, 3, 'TaskUsers', 'add', 0),
(100, 1, 'TaskUsers', 'edit', 1),
(101, 2, 'TaskUsers', 'edit', 0),
(102, 3, 'TaskUsers', 'edit', 0),
(103, 1, 'TaskUsers', 'delete', 1),
(104, 2, 'TaskUsers', 'delete', 0),
(105, 3, 'TaskUsers', 'delete', 0),
(106, 1, 'Users', 'activatePassword', 1),
(107, 2, 'Users', 'activatePassword', 0),
(108, 3, 'Users', 'activatePassword', 0),
(109, 1, 'Tasks', 'popup_add', 1),
(110, 2, 'Tasks', 'popup_add', 1),
(111, 3, 'Tasks', 'popup_add', 0),
(112, 7, 'TaskUsers', 'view', 0),
(113, 7, 'TaskUsers', 'edit', 0),
(114, 7, 'Tasks', 'index', 0),
(115, 7, 'Tasks', 'view', 0),
(116, 7, 'Tasks', 'add', 0),
(117, 4, 'Users', 'dashboard', 1),
(118, 1, 'Cities', 'index', 1),
(119, 2, 'Cities', 'index', 0),
(120, 3, 'Cities', 'index', 0),
(121, 4, 'Cities', 'index', 1),
(122, 1, 'Cities', 'view', 0),
(123, 2, 'Cities', 'view', 0),
(124, 3, 'Cities', 'view', 0),
(125, 4, 'Cities', 'view', 1),
(126, 4, 'Users', 'myprofile', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE IF NOT EXISTS `user_types` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usrgroups`
--

CREATE TABLE IF NOT EXISTS `usrgroups` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usrgroup_lessons`
--

CREATE TABLE IF NOT EXISTS `usrgroup_lessons` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(8) unsigned NOT NULL,
  `usrgroup_id` int(8) unsigned NOT NULL,
  `user_type` varchar(50) DEFAULT 'student',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usrgroup_users`
--

CREATE TABLE IF NOT EXISTS `usrgroup_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `usrgroup_id` int(8) unsigned NOT NULL,
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
