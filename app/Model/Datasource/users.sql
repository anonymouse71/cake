-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2014 at 08:50 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_group_id`, `username`, `password`, `email`, `fax`, `first_name`, `last_name`, `gender`, `current_address`, `city`, `postal`, `country`, `permanent_address`, `cell_phone`, `home_phone`, `national_idnumber`, `photo`, `photo_dir`, `aboutme`, `website`, `facebook`, `twitter`, `gplus`, `youtube`, `address`, `birthdate`, `ip`, `active`, `timezone`, `comments`, `user_type`, `pending`, `viewed_license`, `status`, `short_description`, `balance`, `need_pwd_change`, `description`, `db_type`, `size`, `type`, `options`, `default_value`, `visible`, `mandatory`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'islm90@liveoutsource.com', '', 'Admin', '', 'male', NULL, NULL, NULL, '', NULL, '880 1234567', '', '123456', 'p1(150x150).png', '1', 'I am tarikul ', 'www.tarikul.com', 'facebook.com', 'twitter.com', 'google.comm', 'youtube.com', 'rampura,dhaka', '1992-02-02', NULL, '0', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, 'image/png', NULL, NULL, 1, 1, '2014-03-05 00:39:34', '2014-12-09 03:40:42', NULL, 'islm90@liveoutsource.com'),
(2, 4, 'islm901', 'e10adc3949ba59abbe56e057f20f883e', 'abc@abc.com', '', 'tark', 'trk', 'male', NULL, NULL, NULL, NULL, NULL, '98765432', '9876543', '0987543213467', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-07-10 05:33:06', '2014-07-10 05:33:06', 'islm90@gmail.com', 'islm90@gmail.com'),
(3, 2, '01912287111', 'e10adc3949ba59abbe56e057f20f883e', 'islm90@gmail.com', '', 'Tarikul', 'Islam', 'male', NULL, NULL, NULL, NULL, NULL, '01912287111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '0', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-08 05:51:58', '2014-12-08 05:51:58', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
