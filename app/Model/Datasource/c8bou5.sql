-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2015 at 04:07 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `c1bou3`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE IF NOT EXISTS `announcements` (
`id` int(8) unsigned NOT NULL,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `data` text,
  `expire` date DEFAULT '0000-00-00',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `model_name`, `model_foreign_key`, `title`, `data`, `expire`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, NULL, 0, 'Android Operating System Course', 'Registration for android operating system course has been started', '2014-12-31', 'hasan doha', NULL, '2014-12-16 00:00:00', NULL),
(2, NULL, 0, 'PHP Course', 'Registration for PHP course has been started', '2014-12-31', 'hasan doha', NULL, '2014-12-16 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`id` int(8) NOT NULL,
  `blog_id` int(8) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `data` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `blog_id`, `title`, `data`, `active`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 0, 'পাঠ-2: প্লাগইন ', 'পিএইচপি ফ্রেমওয়ার্ক (PHP Framework) হচ্ছে একটা basic Platform/structure(গঠন) যেটা ওয়েব এপ্লিকেশন তৈরীতে ব্যাবহৃত হয়। লগিন পদ্ধতি,ফেসবুকে like লিংকে ক্লিক করলে দেখায় এই পোস্ট টি কতজন পছন্দ (like) করেছে,প্রতিবার পেজ নতুন করে লোড হবার পর বিজ্ঞাপন এর পরিবর্তন ইত্যাদি এগুলি এক একটি এপ্লিকেশনের এর উদাহরন। পিএইচপি ফ্রেমওয়ার্ক ব্যাবহার করে আপনি এপ্লিকেশন তৈরীর সময় যে সুবিধাগুলো পাবেন-প্রচুর সময় বাচবে,বারবার কোড তৈরী করার ঝামেলা থেকে মুক্তি,দ্রুত অ্যাপ্লিকেশন তৈরী করতে পারবেন। এছাড়া ডেটাবেসের সাথে সংযোগ এর ব্যাপারটিও সহজ করে তোলে,এগুলো ছাড়াও আরও অনেক সুবিধা আছে ,কাজ শুরু করলেই বুঝতে পারবেন। ', 1, '', '', '2014-12-17 01:48:09', '2014-12-17 01:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
`id` int(8) NOT NULL,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `registered` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(128) NOT NULL,
  `modified_by` varchar(128) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `model_name`, `model_foreign_key`, `name`, `description`, `active`, `registered`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 'Lesson', 11, 'Lesson 2 with Blog and Forum', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-12 06:06:27', '2014-12-17 01:53:55'),
(2, 'Lesson', 12, 'Lesson 3', 'পিএইচপি ফ্রেমওয়ার্ক (PHP Framework) হচ্ছে একটা basic Platform/structure(গঠন) যেটা ওয়েব এপ্লিকেশন তৈরীতে ব্যাবহৃত হয়। লগিন পদ্ধতি,ফেসবুকে like লিংকে ক্লিক করলে দেখায় এই পোস্ট টি কতজন পছন্দ (like) করেছে,প্রতিবার পেজ নতুন করে লোড হবার পর বিজ্ঞাপন এর পরিবর্তন ইত্যাদি এগুলি এক একটি এপ্লিকেশনের এর উদাহরন। পিএইচপি ফ্রেমওয়ার্ক ব্যাবহার করে আপনি এপ্লিকেশন তৈরীর সময় যে সুবিধাগুলো পাবেন-প্রচুর সময় বাচবে,বারবার কোড তৈরী করার ঝামেলা থেকে মুক্তি,দ্রুত অ্যাপ্লিকেশন তৈরী করতে পারবেন। এছাড়া ডেটাবেসের সাথে সংযোগ এর ব্যাপারটিও সহজ করে তোলে,এগুলো ছাড়াও আরও অনেক সুবিধা আছে ,কাজ শুরু করলেই বুঝতে পারবেন। ', 1, 1, '', '', '2014-12-13 00:03:42', '2014-12-17 01:50:27'),
(3, 'Lesson', 13, 'Clone Stamp Tool', 'পিএইচপি ফ্রেমওয়ার্ক (PHP Framework) হচ্ছে একটা basic Platform/structure(গঠন) যেটা ওয়েব এপ্লিকেশন তৈরীতে ব্যাবহৃত হয়। লগিন পদ্ধতি,ফেসবুকে like লিংকে ক্লিক করলে দেখায় এই পোস্ট টি কতজন পছন্দ (like) করেছে,প্রতিবার পেজ নতুন করে লোড হবার পর বিজ্ঞাপন এর পরিবর্তন ইত্যাদি এগুলি এক একটি এপ্লিকেশনের এর উদাহরন। পিএইচপি ফ্রেমওয়ার্ক ব্যাবহার করে আপনি এপ্লিকেশন তৈরীর সময় যে সুবিধাগুলো পাবেন-প্রচুর সময় বাচবে,বারবার কোড তৈরী করার ঝামেলা থেকে মুক্তি,দ্রুত অ্যাপ্লিকেশন তৈরী করতে পারবেন। এছাড়া ডেটাবেসের সাথে সংযোগ এর ব্যাপারটিও সহজ করে তোলে,এগুলো ছাড়াও আরও অনেক সুবিধা আছে ,কাজ শুরু করলেই বুঝতে পারবেন। ', 1, 1, '', '', '2014-12-15 05:06:31', '2014-12-17 01:51:29'),
(4, 'Lesson', 14, ' Eraser Too', 'পিএইচপি ফ্রেমওয়ার্ক (PHP Framework) হচ্ছে একটা basic Platform/structure(গঠন) যেটা ওয়েব এপ্লিকেশন তৈরীতে ব্যাবহৃত হয়। লগিন পদ্ধতি,ফেসবুকে like লিংকে ক্লিক করলে দেখায় এই পোস্ট টি কতজন পছন্দ (like) করেছে,প্রতিবার পেজ নতুন করে লোড হবার পর বিজ্ঞাপন এর পরিবর্তন ইত্যাদি এগুলি এক একটি এপ্লিকেশনের এর উদাহরন। পিএইচপি ফ্রেমওয়ার্ক ব্যাবহার করে আপনি এপ্লিকেশন তৈরীর সময় যে সুবিধাগুলো পাবেন-প্রচুর সময় বাচবে,বারবার কোড তৈরী করার ঝামেলা থেকে মুক্তি,দ্রুত অ্যাপ্লিকেশন তৈরী করতে পারবেন। এছাড়া ডেটাবেসের সাথে সংযোগ এর ব্যাপারটিও সহজ করে তোলে,এগুলো ছাড়াও আরও অনেক সুবিধা আছে ,কাজ শুরু করলেই বুঝতে পারবেন। ', 1, 1, '', '', '2014-12-15 05:17:28', '2014-12-17 01:50:57'),
(5, 'Lesson', 15, ' Drawing basic shapes', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-15 05:25:03', '2014-12-17 01:52:37'),
(6, 'Lesson', 16, 'Drawing Pencil Tool', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-15 05:26:42', '2014-12-17 01:53:02'),
(7, 'Lesson', 17, ' পাঠ-2: প্লাগইন ', 'পিএইচপি ফ্রেমওয়ার্ক (PHP Framework) হচ্ছে একটা basic Platform/structure(গঠন) যেটা ওয়েব এপ্লিকেশন তৈরীতে ব্যাবহৃত হয়। লগিন পদ্ধতি,ফেসবুকে like লিংকে ক্লিক করলে দেখায় এই পোস্ট টি কতজন পছন্দ (like) করেছে,প্রতিবার পেজ নতুন করে লোড হবার পর বিজ্ঞাপন এর পরিবর্তন ইত্যাদি এগুলি এক একটি এপ্লিকেশনের এর উদাহরন। পিএইচপি ফ্রেমওয়ার্ক ব্যাবহার করে আপনি এপ্লিকেশন তৈরীর সময় যে সুবিধাগুলো পাবেন-প্রচুর সময় বাচবে,বারবার কোড তৈরী করার ঝামেলা থেকে মুক্তি,দ্রুত অ্যাপ্লিকেশন তৈরী করতে পারবেন। এছাড়া ডেটাবেসের সাথে সংযোগ এর ব্যাপারটিও সহজ করে তোলে,এগুলো ছাড়াও আরও অনেক সুবিধা আছে ,কাজ শুরু করলেই বুঝতে পারবেন। ', 1, 1, '', '', '2014-12-15 05:35:05', '2014-12-17 01:49:44'),
(8, 'Lesson', 18, 'FOrm', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-15 05:37:59', '2014-12-17 01:53:17'),
(9, 'Lesson', 19, 'CSS3 selector', 'পিএইচপি ফ্রেমওয়ার্ক (PHP Framework) হচ্ছে একটা basic Platform/structure(গঠন) যেটা ওয়েব এপ্লিকেশন তৈরীতে ব্যাবহৃত হয়। লগিন পদ্ধতি,ফেসবুকে like লিংকে ক্লিক করলে দেখায় এই পোস্ট টি কতজন পছন্দ (like) করেছে,প্রতিবার পেজ নতুন করে লোড হবার পর বিজ্ঞাপন এর পরিবর্তন ইত্যাদি এগুলি এক একটি এপ্লিকেশনের এর উদাহরন। পিএইচপি ফ্রেমওয়ার্ক ব্যাবহার করে আপনি এপ্লিকেশন তৈরীর সময় যে সুবিধাগুলো পাবেন-প্রচুর সময় বাচবে,বারবার কোড তৈরী করার ঝামেলা থেকে মুক্তি,দ্রুত অ্যাপ্লিকেশন তৈরী করতে পারবেন। এছাড়া ডেটাবেসের সাথে সংযোগ এর ব্যাপারটিও সহজ করে তোলে,এগুলো ছাড়াও আরও অনেক সুবিধা আছে ,কাজ শুরু করলেই বুঝতে পারবেন। ', 1, 1, '', '', '2014-12-15 05:52:06', '2014-12-17 01:52:01'),
(10, 'Lesson', 20, 'Java script Core', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-15 07:19:43', '2014-12-17 01:53:30'),
(11, 'Lesson', 21, 'Drawing Pencil Tool ', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-16 04:27:46', '2014-12-17 01:52:50'),
(12, 'Lesson', 22, 'Table', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-16 05:02:37', '2014-12-17 01:54:21'),
(13, 'Lesson', 23, 'Java script BOM ', 'পিএইচপি ফ্রেমওয়ার্ক (PHP Framework) হচ্ছে একটা basic Platform/structure(গঠন) যেটা ওয়েব এপ্লিকেশন তৈরীতে ব্যাবহৃত হয়। লগিন পদ্ধতি,ফেসবুকে like লিংকে ক্লিক করলে দেখায় এই পোস্ট টি কতজন পছন্দ (like) করেছে,প্রতিবার পেজ নতুন করে লোড হবার পর বিজ্ঞাপন এর পরিবর্তন ইত্যাদি এগুলি এক একটি এপ্লিকেশনের এর উদাহরন। পিএইচপি ফ্রেমওয়ার্ক ব্যাবহার করে আপনি এপ্লিকেশন তৈরীর সময় যে সুবিধাগুলো পাবেন-প্রচুর সময় বাচবে,বারবার কোড তৈরী করার ঝামেলা থেকে মুক্তি,দ্রুত অ্যাপ্লিকেশন তৈরী করতে পারবেন। এছাড়া ডেটাবেসের সাথে সংযোগ এর ব্যাপারটিও সহজ করে তোলে,এগুলো ছাড়াও আরও অনেক সুবিধা আছে ,কাজ শুরু করলেই বুঝতে পারবেন। ', 1, 1, '', '', '2014-12-16 10:12:14', '2014-12-17 01:51:15'),
(14, 'Lesson', 24, 'CSS3 Pseudo-class Selecto..', 'পিএইচপি ফ্রেমওয়ার্ক (PHP Framework) হচ্ছে একটা basic Platform/structure(গঠন) যেটা ওয়েব এপ্লিকেশন তৈরীতে ব্যাবহৃত হয়। লগিন পদ্ধতি,ফেসবুকে like লিংকে ক্লিক করলে দেখায় এই পোস্ট টি কতজন পছন্দ (like) করেছে,প্রতিবার পেজ নতুন করে লোড হবার পর বিজ্ঞাপন এর পরিবর্তন ইত্যাদি এগুলি এক একটি এপ্লিকেশনের এর উদাহরন। পিএইচপি ফ্রেমওয়ার্ক ব্যাবহার করে আপনি এপ্লিকেশন তৈরীর সময় যে সুবিধাগুলো পাবেন-প্রচুর সময় বাচবে,বারবার কোড তৈরী করার ঝামেলা থেকে মুক্তি,দ্রুত অ্যাপ্লিকেশন তৈরী করতে পারবেন। এছাড়া ডেটাবেসের সাথে সংযোগ এর ব্যাপারটিও সহজ করে তোলে,এগুলো ছাড়াও আরও অনেক সুবিধা আছে ,কাজ শুরু করলেই বুঝতে পারবেন। ', 1, 1, '', '', '2014-12-16 10:22:18', '2014-12-17 01:51:46'),
(15, NULL, 0, 'এডভান্সড ফটোশপ ', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-17 01:38:42', '2014-12-17 01:38:42'),
(16, NULL, 0, 'পাঠ-1: এইচটিএমএল এলিমেন্ট ', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-17 01:39:50', '2014-12-17 01:39:50'),
(17, NULL, 0, 'পাঠ-1: থিম ', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-17 01:40:47', '2014-12-17 01:40:47'),
(18, NULL, 0, 'পাঠ-1: পিএইচপি ইনস্টলেশন ', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-17 01:41:46', '2014-12-17 01:41:46'),
(19, NULL, 0, 'পাঠ-1: মাইএসকিউএল 5.7', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-17 01:42:22', '2014-12-17 01:42:22'),
(20, NULL, 0, 'পাঠ-2: পিএইচপি ভেরিয়েবল ', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-17 01:43:25', '2014-12-17 01:43:25'),
(21, NULL, 0, 'পাঠ-2: মাইএসকিউএল রেপ্লিকেশন টিউটোরিয়াল ', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-17 01:44:02', '2014-12-17 01:44:02'),
(22, NULL, 0, 'পাঠ-2: প্লাগইন ', 'পিএইচপি ফ্রেমওয়ার্ক (PHP Framework) হচ্ছে একটা basic Platform/structure(গঠন) যেটা ওয়েব এপ্লিকেশন তৈরীতে ব্যাবহৃত হয়। লগিন পদ্ধতি,ফেসবুকে like লিংকে ক্লিক করলে দেখায় এই পোস্ট টি কতজন পছন্দ (like) করেছে,প্রতিবার পেজ নতুন করে লোড হবার পর বিজ্ঞাপন এর পরিবর্তন ইত্যাদি এগুলি এক একটি এপ্লিকেশনের এর উদাহরন। পিএইচপি ফ্রেমওয়ার্ক ব্যাবহার করে আপনি এপ্লিকেশন তৈরীর সময় যে সুবিধাগুলো পাবেন-প্রচুর সময় বাচবে,বারবার কোড তৈরী করার ঝামেলা থেকে মুক্তি,দ্রুত অ্যাপ্লিকেশন তৈরী করতে পারবেন। এছাড়া ডেটাবেসের সাথে সংযোগ এর ব্যাপারটিও সহজ করে তোলে,এগুলো ছাড়াও আরও অনেক সুবিধা আছে ,কাজ শুরু করলেই বুঝতে পারবেন। ', 1, 1, '', '', '2014-12-17 01:46:16', '2014-12-17 01:46:16'),
(23, 'Lesson', 25, 'Introduction', '<h2>Learning Objectives</h2>\r\n\r\n<p>After studying this chapter you should be able to:</p>\r\n\r\n<ul>\r\n	<li>describe the different types of data networks that are common in a government work environment</li>\r\n	<li>identify when different types of networks are most likely to be used</li>\r\n	<li>describe different uses of networks for government work</li>\r\n	<li>identify when different uses of networks are most likely to be applied</li>\r\n	<li>identify four main e-government opportunities based on networks and their use</li>\r\n</ul>\r\n\r\n<p>discuss the trade-offs that network-based e-government must make in a least-developed country</p>\r\n\r\n<h2>Introduction</h2>\r\n\r\n<p>In this chapter you will find information on:</p>\r\n\r\n<ul>\r\n	<li>computer networks and their uses, and</li>\r\n	<li>e-government applications and objectives based on computer networks.</li>\r\n</ul>\r\n\r\n<p>The chapter explains the different ways that computers can interact as networks. It extends that to describe common uses of computers in networks.</p>\r\n\r\n<p>The chapter also explains how networks and their uses apply in e-government and what objectives drive the use of networks in e-government.</p>\r\n\r\n<p>Networked computers underpin everything that is achieved in e-government. Understanding the basics of networked computing supports a deeper understanding of e-government.</p>\r\n\r\n<h2>Key Terms and Concepts</h2>\r\n\r\n<p><strong>Network</strong></p>\r\n\r\n<p>A collection of information technology that interoperates through digital communication; the physical technology that facilitates digital communication.</p>\r\n\r\n<p><strong>LAN &ndash; Local Area Network</strong></p>\r\n\r\n<p>A network that connects devices within a small geographic area (typically a building, or the floor of a building).</p>\r\n\r\n<p><strong>WAN &ndash; Wide Area Network</strong></p>\r\n\r\n<p>A network that connects devices across large geographic areas (nationally and internationally).</p>\r\n\r\n<p><strong>Intranet</strong></p>\r\n\r\n<p>A system that supports business operations and information needs within an organisation; typically delivered using world wide web technologies and approaches.</p>\r\n\r\n<p><strong>Extranet</strong></p>\r\n\r\n<p>A system that allows partners that are external to the organisation access processing systems and information equivalent to being connected to the intranet from outside the organisation&rsquo;s network.</p>\r\n\r\n<p><strong>Wireless Networks</strong></p>\r\n\r\n<p>The provision of network services over radio wave communication between devices.</p>\r\n', 1, 1, '', '', '2015-01-25 07:54:28', '2015-01-25 07:54:28'),
(24, 'Lesson', 26, 'Types of Networks', '<p><em><strong>The simplest network</strong></em></p>\r\n\r\n<p><img alt="" src="/app/webroot/ckeditor/kcfinder/upload/images/sim.jpg" style="height:249px; width:395px" /></p>\r\n\r\n<p>One computer is useful, but organisations rarely comprise one person.</p>\r\n\r\n<p><strong>Personal Area Networks (PANs)</strong></p>\r\n\r\n<p>The simplest network connects two devices, usually so that data held on one can be shared with another. One modern example of this simple network is connecting your Bluetooth-enabled phone to your computer to back-up your phone&rsquo;s contact list. Another example is connecting your digital camera to your computer by USB cable to copy your photos onto the computer to manipulate them with software, or send them to friends and relatives attached to e-mail. Sometimes, a network at this level is called a Personal Area Network , or PAN.</p>\r\n\r\n<p><strong>The network effect</strong></p>\r\n\r\n<p>But just connecting two computers is not very helpful. The concept of the &lsquo;network effect&rsquo; covers this idea. The &lsquo;network effect&rsquo; says that the more devices that are connected to a network, the more valuable the network is for each device connected. There is a downside to this too; the more devices using the network, the more congested (slow) it becomes.</p>\r\n\r\n<p><strong>Local Area Networks (LANs)</strong></p>\r\n\r\n<p><img alt="" src="/app/webroot/ckeditor/kcfinder/upload/images/sim-1.jpg" style="height:248px; width:394px" /></p>\r\n\r\n<p>In an environment like an office, or a school, computers networked together and sharing resources like printers are called a Local Area Network, or LAN. An important difference between these networks and smaller ones used by individuals or families is that a dedicated computer, called a network server, is usually included in the network to manage the traffic and to share resources among the other computers.</p>\r\n\r\n<p>The LAN is the most common experience of networked computing for knowledge workers. Resources such as internet connections and large-scale software applications may be housed on other networks, but most often the knowledge work is accessing them through the LAN to which their computer is directly connected.</p>\r\n\r\n<p>The diagram illustrates another concept that is common in larger organisations: many LANs connected together (say, one per division) to support the whole organisation. Where this occurs in a single (large) building, or in a group of related and closely-located buildings, such a configuration is often called a Campus Area Network, or CAN.</p>\r\n\r\n<p><strong>Wide Area Networks (WANs)</strong></p>\r\n\r\n<p><img alt="" src="/app/webroot/ckeditor/kcfinder/upload/images/sim-2.jpg" style="height:250px; width:399px" /></p>\r\n\r\n<p>Wide Area Networks, WANs, connect smaller-scale networks across large geographic distances. These networks allow organisations to share data and application systems across all their offices.</p>\r\n\r\n<p>The majority of the physical networks on which WANs operate are owned and maintained by telecommunications companies. Most organisations that operate WANs lease the network capacity from the telecommunication companies rather than build their own network. Increasingly, organisations are using the Internet as the carrier for their WANs; i.e. they do not hold permanent network capacity but use whatever the Internet will provide when they require it.</p>\r\n', 1, 1, '', '', '2015-01-25 08:07:01', '2015-01-25 08:07:01'),
(25, 'Lesson', 27, 'Network Carriers', '<p>There are fundamentally two ways of creating a network between computers:</p>\r\n\r\n<ul>\r\n	<li>Wired&mdash;by connecting the computers using cables, and</li>\r\n</ul>\r\n\r\n<p>Wireless&mdash;using radio signals to communicate between computers.</p>\r\n\r\n<p><strong>Wired networks</strong></p>\r\n\r\n<p><img alt="" src="/app/webroot/ckeditor/kcfinder/upload/images/wn-1.jpg" style="height:250px; width:400px" /></p>\r\n\r\n<p>Wired networks use a variety of media for carrying the network data. The &lsquo;simplest&rsquo; and the one with least capacity (bandwidth) is twisted-pair wire; commonly used in telephone lines and for domestic network connections.</p>\r\n\r\n<p>Once networks reach a larger, or more commercial, scale, the wire that carries the network data is coaxial cable. This cable is commonly used in buildings to host office LANs and is used for cable-TV connections.</p>\r\n\r\n<p>Large-scale network connections (backbones) are commonly carried on cables made of fibre-optic cable. Fibre-optic is special glass fibre material that transmits light pulses rather than electrical pulses and has huge bandwidth.</p>\r\n\r\n<p><strong>Wireless networks</strong></p>\r\n\r\n<p><img alt="" src="/app/webroot/ckeditor/kcfinder/upload/images/wn-2.jpg" style="height:251px; width:400px" /></p>\r\n\r\n<p>Wireless networks are becoming increasingly popular because of their installation convenience. Wireless networks differ in their range and capacity. Bluetooth is specifically designed to have a very short range (approx. 10 metres) and relatively low bandwidth (less than 1Mbps). Wi-Fi is the common domestic and office wireless network technology. Based on standards promulgated by the IEEE, these networks are very common. Many cafes, libraries, airport lounges, and other businesses, will offer a wireless connection, sometimes for free. These places are often called &lsquo;hotspots&rsquo;.</p>\r\n\r\n<p>Wi-Max is a relatively new wireless protocol that allows large-scale wireless networks. WiMax networks can cover up to 10 kilometres with data rates of up to 75Mbps.</p>\r\n\r\n<p>LTE stands for Long Term Evolution and represents the very leading edge in wireless network protocol development at present. Also called Mobile Broadband Wireless Access (MBWA), it is being developed for mobile phone companies to support wireless internet access on smartphones and other handheld devices. The technology has the potential to reach 300Mbps, but as the networks are shared among very high numbers of devices, individual users will not experience this capacity directly.</p>\r\n', 1, 1, '', '', '2015-01-25 08:12:20', '2015-01-25 08:12:20'),
(26, 'Lesson', 28, 'Other Network Ideas', '<p>There are two other important network terms that commonly occur when discussing the use of computer networks in organisations and in e-government:</p>\r\n\r\n<ul>\r\n	<li>Internet&mdash;a term that refers to the interconnection of WANs all over the world, and</li>\r\n	<li>Virtual Private Networks (VPNs)&mdash;a special way of connecting a private network over public network infrastructure.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>Internet</strong></p>\r\n\r\n<p>The Internet started in 1969 as a US Defense research project, called ARPANET, to build resilient networks. The research was conducted by major US universities who immediately saw the value of being able to share data for research purposes. Defense wanted to ensure that the network would work in the event of up to 50% network destruction. The universities wanted to facilitate researchers communicating and working collaboratively. Then in 1993, the World Wide Web was invented by Tim Berners-Lee while working at CERN. The Web was designed to make it much easier to connect information in different parts of the Internet. Suddenly there were tools that allowed anyone to access information on the Internet.</p>\r\n\r\n<p>The Internet does not belong to anyone, nor does it have a headquarters or controlling organisation. Several organisations, such as the World Wide Web Consortium (W3C) and the Internet Engineering Task Force (IETF), coordinate the efforts of hundreds and thousands of businesses and individuals to set and extend standards for how the Internet, and the applications running on it like e-mail and the Web, will work.</p>\r\n\r\n<p>In practice, these days, the Internet exists because Internet Service Providers (ISPs) agree to sell access to network capacity they lease from telecommunications companies to their customers. Their customers (businesses, government agencies, and individuals) use that access to retrieve information stored on various servers belonging to other Internet customers, usually in the form of HTML web pages. Importantly, though, the single largest use of the Internet is still e-mail, one of its very first uses.</p>\r\n\r\n<p><strong>Virtual Private Networks (VPNs)</strong></p>\r\n\r\n<p>Virtual Private Networks, VPNs, use special protocols and cryptography to send information over public networks. Although the data travels on networks that anyone could intercept, the data is protected by the protocols and cryptography so that if intercepted it cannot be understood; i.e. it remains private.</p>\r\n', 1, 1, '', '', '2015-01-25 08:17:14', '2015-01-25 08:17:14'),
(27, 'Lesson', 29, 'Quick Quiz', '<ol>\r\n	<li>Connect the acronym to the brief description of a type of network.\r\n	<table border="0" cellpadding="0" cellspacing="0">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width:76px">\r\n				<p>CAN</p>\r\n				</td>\r\n				<td style="width:289px">\r\n				<p>A network that connects devices over very large geographic distances.</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style="width:76px">\r\n				<p>PAN</p>\r\n				</td>\r\n				<td style="width:289px">\r\n				<p>A network that connects devices in an office or school building.</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style="width:76px">\r\n				<p>WAN</p>\r\n				</td>\r\n				<td style="width:289px">\r\n				<p>A network that connects devices across several closely-located buildings.</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style="width:76px">\r\n				<p>LAN</p>\r\n				</td>\r\n				<td style="width:289px">\r\n				<p>A network that connects devices that are very close to each other.</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>If you were going to install a LAN in an existing building, which approach would be better: wireless or wired? Why?</li>\r\n	<li>What is the network effect? Can you explain why the network effect is important for network applications like e-mail?</li>\r\n	<li>What is a VPN? Can you explain why a government agency might use a VPN?</li>\r\n</ol>\r\n', 1, 1, '', '', '2015-01-25 08:23:33', '2015-01-25 08:23:33'),
(28, 'Lesson', 30, 'Lesson 01', '', 1, 1, '', '', '2015-01-25 23:46:20', '2015-01-25 23:46:20'),
(29, 'Lesson', 31, 'Lesson-03: e-Government Architecture and Systems', '', 1, 1, '', '', '2015-01-25 23:58:13', '2015-01-25 23:58:13'),
(30, 'Lesson', 32, 'Lesson-02: e-Government', '', 1, 1, '', '', '2015-01-26 00:00:27', '2015-01-26 00:00:27'),
(31, 'Lesson', 33, 'Lesson-04: Networked Government ', '', 1, 1, '', '', '2015-01-26 00:02:32', '2015-01-26 00:02:32'),
(32, 'Lesson', 34, 'Lesson-05: Data Management', '', 1, 1, '', '', '2015-01-26 00:08:55', '2015-01-26 00:08:55'),
(33, 'Lesson', 35, 'Lesson-04: Networked Government', '', 1, 1, '', '', '2015-01-26 00:10:33', '2015-01-26 00:10:33'),
(34, 'Lesson', 36, 'lesson 04: Networked Government', '', 1, 1, '', '', '2015-01-26 00:16:32', '2015-01-26 00:16:32'),
(35, 'Lesson', 37, 'Lesson 5: Networked Government', '<p>This is ....</p>\r\n', 1, 1, '', '', '2015-01-26 01:08:35', '2015-01-26 01:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
`id` int(8) unsigned NOT NULL,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `data` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(50) NOT NULL DEFAULT '',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `model_name`, `model_foreign_key`, `data`, `active`, `type`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(3, 'asd', 1, 'sadf', 1, '1', NULL, NULL, '2014-12-06 02:42:02', '2014-12-06 02:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE IF NOT EXISTS `carts` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `course_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `course_id`) VALUES
(6, 14, 13),
(7, 4, 13),
(8, 8, 12),
(9, 12, 15),
(10, 8, 15),
(11, 12, 12),
(12, 10, 12),
(13, 26, 16),
(14, 28, 16),
(15, 28, 13),
(16, 28, 12),
(17, 28, 15),
(18, 26, 12),
(19, 4, 16),
(20, 26, 15),
(21, 26, 14),
(22, 25, 12),
(23, 27, 12),
(24, 10, 13),
(25, 4, 18),
(26, 4, 17);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(8) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(8) unsigned DEFAULT NULL,
  `lft` int(8) unsigned DEFAULT '0',
  `rght` int(8) unsigned DEFAULT '0',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`, `parent_id`, `lft`, `rght`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(2, 'Web Design', 1, NULL, 0, 0, NULL, NULL, '2014-12-12 04:14:59', '2014-12-12 04:15:20'),
(3, 'Web Development', 1, NULL, 0, 0, NULL, NULL, '2014-12-12 04:15:12', '2014-12-12 04:15:12'),
(4, 'Networking', 1, NULL, 0, 0, NULL, NULL, '2015-01-25 07:38:41', '2015-01-25 07:38:41'),
(5, 'e-Government', 0, NULL, 0, 0, NULL, NULL, '2015-01-25 23:27:30', '2015-01-28 05:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(8) NOT NULL,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `data` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `model_name`, `model_foreign_key`, `data`, `active`, `private`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 'Blog', 2, 'good job', 1, 0, 'admin', '', '2014-12-17 02:08:16', '2014-12-17 02:08:16'),
(2, 'Post', 1, 'Good post :)', 1, 0, 'admin', '', '2014-12-18 01:44:20', '2014-12-18 01:44:20'),
(3, 'Post', 3, 'Very Good ', 1, 0, 'admin', '', '2014-12-18 01:44:57', '2014-12-18 01:44:57'),
(4, 'Blog', 1, 'সুচিন্তিত মিথ্যা, অসংযত অনুমান ও মজ্জাগত শত্রুতা’ ছাড়া কিছুই নয়', 1, 0, 'admin', '', '2014-12-18 01:45:12', '2014-12-18 01:45:12'),
(5, 'Blog', 1, ' ২০০৪ সালে জঙ্গিদের সঙ্গে সেনাদের একটি রক্তক্ষয়ী সংঘর্ষ হয়। সে ঘটনার পর ২০ জনের মতো ইরাকিকে ব্রিটিশ সেনারা ধরে নিয়ে গিয়ে নির্যাতন করেন বলে অভিযোগ ওঠে। অভিযোগ ছিল, ওই ইরাকিদের হত্যা এবং অঙ্গহানি করা হয়। ইরাকি পরিবারগুলোর আইনজীবী', 1, 0, 'admin', '', '2014-12-18 01:45:47', '2014-12-18 01:45:47'),
(6, 'Blog', 1, 'এটা কি ধরনের পোষ্ট ??', 1, 0, 'islm90@liveoutsource.com', '', '2014-12-18 02:17:53', '2014-12-18 02:17:53'),
(7, 'Post', 1, 'Good post :)', 1, 0, 'admin', '', '2014-12-18 02:30:18', '2014-12-18 02:30:18'),
(8, 'Blog', 2, 'Raja raja', 1, 0, 'admin', '', '2014-12-18 02:33:07', '2014-12-18 02:33:07'),
(9, 'Blog', 3, 'raja raja', 1, 0, 'admin', '', '2014-12-18 02:34:25', '2014-12-18 02:34:25'),
(10, 'Post', 3, 'good', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 02:45:58', '2014-12-18 02:45:58'),
(11, 'Post', 3, 'good', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 02:46:15', '2014-12-18 02:46:15'),
(12, 'Post', 12, 'সম্পূর্ণ বেআইনি', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 02:47:18', '2014-12-18 02:47:18'),
(13, 'Post', 11, 'এদেরকে মাদক (ইয়াবা) ও অস্র ব্যবসায়ীরা কাজে লাগাচ্ছে, আইন-শৃঙ্খলা আবস্হার আবনতি হচ্ছে। এদের প্রতি কঠোর হতে কঠোর হওয়া উচিৎ। প্রয়োজনে রোহিঙ্গা অনুপ্রবেশ ঠেকাতে মিয়ানমার সীমান্তে অবিলম্বে কাঁটা- তারের বেড়া নিমা''ন করা উচিৎ। ওরা সত্যি আমাদের জাতীয় নিরাপত্রার জন্য হুমকি স্বরুপ।', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 02:50:12', '2014-12-18 02:50:12'),
(14, 'Post', 5, 'The very first look of BanglaCafe .... ', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 02:50:19', '2014-12-18 02:50:19'),
(15, 'Post', 9, 'আমাদের দেশের সরকার এবং বিরোধী দলের সবাইকে মৌলবাদীদের ব্যাপারে অনেক কঠোর হতে হবে।', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 02:51:55', '2014-12-18 02:51:55'),
(16, 'Post', 9, 'এ শোক শেষ হবে না। যে জাতীর জম্ম সাম্প্রদায়ীকতার মাধ্যমে, যেখানে ব্লাসফেমি কার্যকর, যেখানে সরকারী মদদে জঙ্গী কার্যক্রম চলে, তাদের তো এই ধরনের পরিনতিই হতে থাকবে। তবে আমদের পাকিস্তান থেকে শিক্ষা না নিলে, জঙ্গী দমন না করলে আমাদেরও এই অবস্থা হতে পারে।', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 02:53:11', '2014-12-18 02:53:11'),
(17, 'Blog', 1, 'ফালতু পোস্ট', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 02:53:14', '2014-12-18 02:53:14'),
(18, 'Post', 9, 'এ বর্বরতার নিন্দা জানানোর ভাষা আমাদের নেই। আল্লাহ সকল শহীদদের জান্নাত দান করুন।', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 02:54:10', '2014-12-18 02:54:10'),
(19, 'Blog', 2, 'এইটা কি ধরনের ব্লগ ?????????????????????????', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 02:54:21', '2014-12-18 02:54:21'),
(20, 'Blog', 3, 'ভাই, কোলন কেমতে হোড়ে', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 02:56:30', '2014-12-18 02:56:30'),
(21, 'Blog', 4, 'আমার লাগতো না।', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 02:57:25', '2014-12-18 02:57:25'),
(22, 'Post', 12, 'সব ঠিক আছে কিন্তু ভিডিও মাত্র ৪৮০পি কেন? ৭২০পি দিলে সমস্যা কি ছিল, কিনতে পারতাম!', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 02:57:56', '2014-12-18 02:57:56'),
(23, 'Post', 12, 'টাকা থাকলে চায়না সেটে হাত দেয়া উচিত না। আমি w 31 ব্যবহার করি। জীবনডা জ্বালায় খাইলো।', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 02:59:17', '2014-12-18 02:59:17'),
(24, 'Blog', 2, 'থিঙ্ক পজিটিভ', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 03:02:09', '2014-12-18 03:02:09'),
(25, 'Blog', 16, 'আমার একটা প্রশ্ন আছে?', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 03:06:17', '2014-12-18 03:06:17'),
(26, 'Blog', 5, 'ওয়াডপ্রেস দিয়ে তৈরি হাজারো ওয়েবসাইট ম্যালওয়্যার আক্রমণের শিকার হয়েছে। ওই ওয়েবসাইটগুলো থেকে ম্যালওয়্যার ছড়ানোর জন্য গুগল কালো তালিকাভুক্ত করেছে সাইটগুলো।  বিশ্লেষকেরা বলছেন, সোকসোক নামের এই ম্যালওয়্যারটি থার্ড-পার্টির প্লাগইনের মাধ্যমে ছড়িয়েছে। এই ম্যালওয়্যারের কারণে ১১ হাজার ওয়ার্ডপ্রেস সাইটকে কালো তালিকাভুক্ত করেছে গুগল।', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 03:06:41', '2014-12-18 03:06:41'),
(27, 'Blog', 16, 'অজানা উত্তর', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 03:06:46', '2014-12-18 03:06:46'),
(28, 'Blog', 5, 'কোয়ান্টাম ডট নামের নতুন প্রযুক্তির টিভি আনছে এলজি। এ বছরের জানুয়ারিতে যুক্তরাষ্ট্রের লাস ভেগাসে অনুষ্ঠিতব্য কনজুমার ইলেকট্রনিকস শো (সিইএস) উপলক্ষে এই টিভি আনতে পারে এলজি।', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 03:07:52', '2014-12-18 03:07:52'),
(29, 'Blog', 16, 'কিতা?', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 03:08:38', '2014-12-18 03:08:38'),
(30, 'Blog', 22, 'একটি বাজার গবেষণা প্রতিষ্ঠান বলছে, কম দামে উন্নত প্রযুক্তির টিভি দ্রুত বাজার ধরতে পারবে। ৫৫ ইঞ্চি মাপের একটি কোয়ান্টাম ডট প্রযুক্তির টিভির দাম বর্তমানে বাজারে থাকা এলসিডি টিভির চেয়ে বড়জোর ৩০ থেকে ৩৫ শতাংশ বেশি হতে পারে। কিন্তু বর্তমানে বাজারে থাকা ওএলইডি টিভিগুলোর দাম প্রায় পাঁচ গুণ বেশি। সম্প্রতি ১১ হাজার ৩৫০ মার্কিন ডলার দামে ৬৫ ইঞ্চি মাপের আলট্রা-হাই ডেফিনেশন ওএলইডি টিভি দক্ষিণ কোরিয়ার বাজারে এনেছে এলজি।', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 03:09:31', '2014-12-18 03:09:31'),
(31, 'Blog', 16, 'এইচটিএমএল ভার্সন ৬.০ কবে আসবে?', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 03:09:32', '2014-12-18 03:09:32'),
(32, 'Blog', 16, 'এইচটিএমএল অ্যান্ড এক্সএইচটিএমএল পার্থক্য কি?', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 03:10:38', '2014-12-18 03:10:38'),
(33, 'Blog', 1, 'এ বর্বরতার নিন্দা করুন।', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 03:11:20', '2014-12-18 03:11:20'),
(34, 'Blog', 16, 'এক্সএইচটিএমএল র আগে একটা এক্স আসে কিন্তু এইচটিএমএল র আগে কোন এক্স নাই, এটাই হসছে গিয়া পার্থক্য', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 03:12:27', '2014-12-18 03:12:27'),
(35, 'Blog', 21, 'good thinking !!!', 1, 0, 'sudeb.its104@gmail.com', '', '2014-12-18 03:14:35', '2014-12-18 03:14:35'),
(36, 'Blog', 16, 'ডব্লিউ৩স্কুলস কি দিয়া তৈরি?', 1, 0, 'sudeb.phy137@gmail.com', '', '2014-12-18 03:15:08', '2014-12-18 03:15:08'),
(37, 'Blog', 2, 'hello world', 1, 0, 'mahfuzrony01@gmail.com', '', '2015-01-23 09:19:45', '2015-01-23 09:19:45'),
(38, 'Blog', 3, 'aaacccc', 1, 0, 'mahfuzrony01@gmail.com', '', '2015-01-23 09:20:29', '2015-01-23 09:20:29'),
(39, 'Post', 4, 'Hello', 1, 0, 'mahfuzrony01@gmail.com', '', '2015-01-23 09:24:30', '2015-01-23 09:24:30'),
(40, 'Post', 4, 'Hello again', 1, 0, 'mahfuzrony01@gmail.com', '', '2015-01-23 09:24:45', '2015-01-23 09:24:45'),
(41, 'Post', 4, 'Hello world', 1, 0, 'mahfuzrony01@gmail.com', '', '2015-01-23 09:24:58', '2015-01-23 09:24:58'),
(42, 'Blog', 1, 'Mango man', 1, 0, 'mahfuzrony01@gmail.com', '', '2015-01-23 09:37:48', '2015-01-23 09:37:48'),
(43, 'Post', 11, 'aaaa', 1, 0, 'mahfuzrony01@gmail.com', '', '2015-01-23 09:38:36', '2015-01-23 09:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE IF NOT EXISTS `conditions` (
`id` int(8) unsigned NOT NULL,
  `lesson_id` int(8) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `options` text,
  `relation` varchar(255) NOT NULL DEFAULT 'and',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE IF NOT EXISTS `configurations` (
`id` int(8) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(150) DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
`id` int(8) unsigned NOT NULL,
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
  `parent_id` int(8) unsigned DEFAULT NULL,
  `lft` int(8) unsigned DEFAULT '0',
  `rght` int(8) unsigned DEFAULT '0',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `lesson_id`, `name`, `data`, `ctg_type`, `active`, `previous_content`, `options`, `scorm_version`, `publish`, `identifier`, `linked_to`, `subject`, `description`, `publisher`, `contributor`, `type`, `format`, `source`, `relation`, `coverage`, `rights`, `parent_id`, `lft`, `rght`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(23, 13, 'Clone Stamp Tool', '<p><span style="color:rgb(85, 98, 114); font-family:arial,helvetica,sans-serif; font-size:12px">The clone stamp tool is located on your Photoshop toolbar. If you do not see the toolbar (a vertical set of icons), go to window&gt;tools to bring it up. Click the tool (seen below) to select it. You can always see what a tool is by rolling over it and waiting for the tool name to appear.</span></p>\r\n\r\n<p><strong>Choose Brush Options:</strong></p>\r\n\r\n<p>Once on the Photoshop clone stamp tool, you can set your brush options (located at the top of the screen). Brush size and shape, opacity, flow and blending modes can all be selected. If you want to copy an exact area you will leave the opacity, flow and blending mode at their default settings and only choose a brush size and shape.</p>\r\n\r\n<p><strong>Select an Area to Copy From:</strong></p>\r\n\r\n<p>The clone stamp is such a great tool because it lets you copy from one area of a photo to another using any type of brush. This can be useful for tricks such as covering up blemishes (by copying from another part of skin) or removing trees from a mountain view (by copying parts of the sky over them).</p>\r\n\r\n<p>To select the area you want to copy from, move your mouse to the area you want to duplicate and Alt-click (Windows) or Option-click (Mac). The cursor will change to a target. Click the exact spot you want to start copying from.</p>\r\n\r\n<p><strong>Paint Over Your Image:</strong></p>\r\n\r\n<p>It&#39;s now time to retouch your image. Click and drag over the area you want to replace or correct and you will see the area you selected in step 4 start to &quot;cover&quot; your photo. Play around with different brush settings and try replacing different areas of your photo until you get the hang of it.</p>\r\n\r\n<p>NOTE: Remember this tool can also be useful for fixing images other than photographs. You may want to quickly copy an area of an illustration or fix up a background graphic for a website.</p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Theory', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2014-12-15 05:11:20', '2014-12-16 02:15:59'),
(24, 13, 'History Brush Tools', '<p>The most popular use of the history brush tool is to take a color picture, convert it to black &amp; white, then brush the original color back into a particular feature. The artistic effect can be striking.</p>\r\n\r\n<p>Below: The history brush made the beauty of the butterfly &amp; wildflowers stand out from the background.&nbsp;</p>\r\n\r\n<p>Nikon D1X photo, Sigma 50-500 lens.</p>\r\n\r\n<p>Here&#39;s a short tutorial on how I used the history brush to modify the picture:</p>\r\n\r\n<p>The original background foliage was gaudy and bright, overpowering the delicacy of the fragile butterfly feeding from the wildflowers.</p>\r\n\r\n<p>First step:</p>\r\n\r\n<p>From Photoshop&#39;s Main Menu Bar I chose <em>Image - Adjust - Desaturate.</em></p>\r\n\r\n<p>Next I chose the History Brush.</p>\r\n\r\n<p>Then I clicked the box next to the first line in the History Palette (the original color).</p>\r\n\r\n<p>All of the picture&#39;s attributes &amp; qualities at this point will be the source for the history brush.</p>\r\n\r\n<p>With brush sizes proportionate to the areas I was targeting, I painted back all the color into the butterfly and the two primary flowers with the History Brush at 100% opacity.</p>\r\n\r\n<p>For speed, I used a large brush size across the broad areas of the subjects. Then I switched to a very small brush size to paint the color back into the edge areas.</p>\r\n\r\n<p>To finish up, I changed the History Brush opacity to 25% for a watered-down look and stroked some of the original background color back into the scene with a very large brush size.</p>\r\n\r\n<p>Below: Brush size &amp; opacity settings are easy to change.&nbsp;</p>\r\n\r\n<p>I use my mouse for large brush sizes and broad strokes. And I keep a Wacom Graphire3 4x5 Pen Tablet next to my mouse for precision drawing and fine brush work. It&#39;s easy to switch back &amp; forth from mouse to pen, they&#39;re both &quot;alive&quot; at the same time. I like the 4x5 pen tablet because it uses the same size working area as my mouse, which makes the dimensional ergonomics of the two devices feel the same.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Example', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, NULL, '2014-12-15 05:13:20', '2014-12-16 02:23:03'),
(25, 14, 'Eraser Tool', '<p>Photoshop&#39;s <em>eraser tool</em> can be found in the second group of icons in the <a href="http://www.mediacollege.com/adobe/photoshop/tool/">toolbox</a>. It has three variations: <em>Eraser</em>, <em>Background Eraser</em> and <em>Magic Eraser</em>.</p>\r\n\r\n<p>The eraser is basically a brush which erases pixels as you drag it across the image. Pixels are erased to transparency, or the background colour if the layer is locked.</p>\r\n\r\n<p>When you select the eraser tool, you have various options available in the toolbar:</p>\r\n\r\n<p><strong>Brush:</strong> Options include the size of the eraser, hardness of edges and various styles. Brush options are not available in block mode.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Mode:</strong> There are three options: brush (soft edges), pencil (hard edges) and block (square brush size).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Opacity:</strong> 100% opacity erases pixels completely, 0% does not erase at all. 50% is semi-transparent (or coloured). Opacity is not available in block mode.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Flow:</strong> Determines how quickly the erasure is applied by the brush. Lower settings produce a more subtle effect. Only available in brush mode.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Airbrush:</strong> Use the eraser as an airbrush. Only available in brush mode.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Erase to History:</strong> Erases to a saved state or snapshot of the image. To use this feature, click the left column in the history palette next to the desired state.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Example', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 6, NULL, NULL, '2014-12-15 05:19:01', '2014-12-16 02:31:34'),
(26, 14, 'Background Eraser Tool', '<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/erase3.png" />The <em>background eraser tool</em> allows you to remove the background colour from an image or layer. When you click the image, the eraser samples the colour at the centre of the brush and erases this colour as you drag. Options in the toolbar allow you to specify the type of erasure, colour tolerance and sampling method.</p>\r\n\r\n<p><strong>Magic Eraser Tool</strong></p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/erase5.png" />The <em>magic eraser tool </em>erases all colours within a set tolerance. This is essentially the same as using the <u>magic wand</u> and hitting Delete. Using this tool you don&#39;t need to drag &mdash; just click once.</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 8, NULL, NULL, '2014-12-15 05:22:07', '2014-12-16 02:33:04'),
(27, 15, 'Selection Tools', '<h3>Selection Tools</h3>\r\n\r\n<p>There are 2 types of selection tool in Illustrator used for selection objects.</p>\r\n\r\n<p><strong>Selection Tool: </strong>Used for<strong> </strong>selecting and moving a shape. It can also be used to resize a shape.<br />\r\n<strong>Direct Selection Tool: </strong>Selects a single anchor point instead of the whole shape. Used for editing anchor point of a shape. Click once on a point to select and hold Shift to select multiple anchor points.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/215/shape1.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Shape Tools</h3>\r\n\r\n<p>Now we will move on to the Shape Tools. When you go to the Tool Palette and hold the Rectangle Tool, a list of shape tools will expand out for you to pick. We will start with the default Rectangle Tool.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/215/shape2.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Test', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 10, NULL, NULL, '2014-12-15 05:28:27', '2014-12-16 03:03:29'),
(28, 15, 'Fill & Stroke', '<h3>Understanding Fill &amp; Stroke</h3>\r\n\r\n<p>Click and drag out a Rectangle as shown. By default, it has a white fill and black stroke. (Stroke is the border of the shape)</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/215/shape3.png" /></p>\r\n\r\n<h3>Changing Fill Color</h3>\r\n\r\n<p>Let&rsquo;s start changing the fill color for the rectangle. Double click the Fill from the Tool Palette. It will pop up the Color Picker. Drag the slider to blue and select a deep blue color. Click Ok after that.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/215/shape4.png" /></p>\r\n\r\n<h3>Removing Stroke</h3>\r\n\r\n<p>Click the Stroke in the Tool Palette once to swap it above Fill. Click the None icon boxed up in red to set the Stroke to None. The black stroke will disappear.</p>\r\n\r\n<h3><img src="http://114.130.54.174/ftfl/www/content/lessons/215/shape5.png" /></h3>\r\n\r\n<h3>Constrain Proportions</h3>\r\n\r\n<p>To draw a perfect square, we will select the Rectangle Tool. Hold Shift and drag to draw a square. Same for the circle, we will select the Ellipse Tool and hold Shift to drag out a circle.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/215/shape6.png" /></p>\r\n\r\n<p><strong>Resizing Shapes</strong></p>\r\n\r\n<p>To resize shapes, select the shape using the Selection Tool and a bounding box will appear. Drag the corner anchor point to resize it. To constrain to proportion while resizing, hold Shift as you resize. Also hold Alt/Option if your want to resize from the same position.</p>\r\n\r\n<h3><img src="http://114.130.54.174/ftfl/www/content/lessons/215/shape7.png" /></h3>\r\n\r\n<h3>Rotating Shapes</h3>\r\n\r\n<p>Select the shape with the Selection Tool and a bounding box will appear. Move your cursor near the anchor corner and a rotation icon will icon, click and turn it to rotate the square. To snap at 45 degrees increment, hold Shift and turn.</p>\r\n\r\n<h3><img src="http://114.130.54.174/ftfl/www/content/lessons/215/shape8.png" /></h3>\r\n\r\n<h3>More Options for Shape Tools</h3>\r\n\r\n<p>Select the Star Tool. Click once on the artboard and an option will pop up. Enter the same values below and click Ok. It will draw a star burst shape. This method can be used to bring out more options for shape tools.</p>\r\n\r\n<h3><img src="http://114.130.54.174/ftfl/www/content/lessons/215/shape9.png" /></h3>\r\n\r\n<h3>Conclusion</h3>\r\n\r\n<p>Almost all the objects found in our daily life can be built from combining using the basic shape tools. In Day 9, we will learn about Compound Paths which will help us create more complicated shapes by adding and subtracting from the basic shapes.</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, '2014-12-15 05:30:36', '2014-12-16 03:07:55'),
(29, 17, 'h1,h2, h3, h4, h5, h6', '<p><strong>Source code:</strong></p>\r\n\r\n<p><strong><img src="http://114.130.54.174/ftfl/www/content/lessons/222/s1_1.png" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Output:</strong></p>\r\n\r\n<p><strong><img src="http://114.130.54.174/ftfl/www/content/lessons/222/typography_one.png" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 14, NULL, NULL, '2014-12-15 05:41:04', '2014-12-16 09:42:54'),
(30, 17, 'p tag', '<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;This is a paragraph.&lt;/p&gt;</p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Example', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 16, NULL, NULL, '2014-12-15 05:42:47', '2014-12-16 09:45:59'),
(31, 18, 'input', '<p><strong>Source code:</strong></p>\r\n\r\n<p>&lt;!DOCTYPE html&gt;</p>\r\n\r\n<p>&lt;html&gt;</p>\r\n\r\n<p>&lt;body&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&lt;form action=&quot;demo_form.asp&quot;&gt;</p>\r\n\r\n<p>First name: &lt;input type=&quot;text&quot; name=&quot;FirstName&quot; value=&quot;Mickey&quot;&gt;&lt;br&gt;</p>\r\n\r\n<p>Last name: &lt;input type=&quot;text&quot; name=&quot;LastName&quot; value=&quot;Mouse&quot;&gt;&lt;br&gt;</p>\r\n\r\n<p>&lt;input type=&quot;submit&quot; value=&quot;Submit&quot;&gt;</p>\r\n\r\n<p>&lt;/form&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&lt;p&gt;Click the &quot;Submit&quot; button and the form-data will be sent to a page on the server called &quot;demo_form.asp&quot;.&lt;/p&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&lt;/body&gt;</p>\r\n\r\n<p>&lt;/html&gt;</p>\r\n\r\n<p><strong>Output:</strong></p>\r\n\r\n<p><strong><img src="http://114.130.54.174/ftfl/www/content/lessons/223/frm_one1.png" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 18, NULL, NULL, '2014-12-15 05:44:10', '2014-12-16 09:56:33'),
(32, 18, 'textarea', '<p><strong>&lt;textarea&gt;</strong></p>\r\n\r\n<p><strong>Source code:</strong></p>\r\n\r\n<p>&lt;!DOCTYPE html&gt;</p>\r\n\r\n<p>&lt;html&gt;</p>\r\n\r\n<p>&lt;body&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&lt;textarea rows=&quot;4&quot; cols=&quot;50&quot;&gt;</p>\r\n\r\n<p>At w3schools.com you will learn how to make a website. We offer free tutorials in all web development technologies.</p>\r\n\r\n<p>&lt;/textarea&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&lt;/body&gt;</p>\r\n\r\n<p>&lt;/html&gt;</p>\r\n\r\n<p><strong>Output:</strong></p>\r\n\r\n<p><strong><img src="http://114.130.54.174/ftfl/www/content/lessons/223/textarea.png" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 20, NULL, NULL, '2014-12-15 05:45:18', '2014-12-16 09:58:51'),
(33, 19, 'New CSS3 selectors', '<p>Step1:- open Notepad</p>\r\n\r\n<p>Step2:- click &lsquo;File&rsquo; from Menu</p>\r\n\r\n<p>Step3:- click &lsquo;Save&rsquo;</p>\r\n\r\n<p>Step4:- select destination form the dropdown and&nbsp;&nbsp; write &lsquo;your_file_name.html&rsquo; to &lsquo;File Name&rsquo; field</p>\r\n\r\n<p>Step5:- select &lsquo;All Files&rsquo; and click &lsquo;Save&rsquo;.</p>\r\n\r\n<p>Step6:- write an html tag in the page:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;html&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/html&gt;</p>\r\n\r\n<p>Step7:- write head and body tag within &lt;html&gt; and title tag within &lt;head&gt; tag</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;html&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;head&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;title&gt;HTML File&lt;/title&gt;</p>\r\n\r\n<p>&lt;/head&gt;</p>\r\n\r\n<p>&lt;body&gt;</p>\r\n\r\n<p>&lt;/body&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/html&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>Step8 :- write a table tag after &lt;body&gt; :</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;table&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/ table &gt;</p>\r\n\r\n<p>Step9 :- take a tr tag within &lt;table&gt;:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt; table &gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;tr&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/tr&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/ table &gt;</p>\r\n\r\n<p>Step10 :- take a th within tr tag &amp; write heading within th :</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt; tr &gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;th&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/th&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/ tr &gt;</p>\r\n\r\n<p>Step11 :- take a th tag within &lt;tr&gt; &amp; write heading within th :</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt; tr &gt;</p>\r\n\r\n<p>&lt;th&gt;Name&lt;/th&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/ tr &gt;</p>\r\n\r\n<p>Take 3 more th tag within this &lt;tr&gt; .</p>\r\n\r\n<p>Step12:- take a new tr tag next to the previous one and td tag within this &lt;tr&gt; and get some value within it:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;tr&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;td&gt; Mohammed Alamin &lt;/td&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/tr&gt;</p>\r\n\r\n<p>Take 3 more td within this tr following previous &lt;tr&gt;.</p>\r\n\r\n<p>Step13:- Repeat step12 to increase table row</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You have complete to create a html table.</p>\r\n\r\n<p><strong>You have done to create an html table. Now add css for this html page:</strong></p>\r\n\r\n<p>Step14 :- write style tag within &lt;head&gt; tag and it&rsquo;s type will be &ldquo;text/css&rdquo;. Follow these lines:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;html&gt;</p>\r\n\r\n<p>&lt;head&gt;</p>\r\n\r\n<p>&lt;title&gt;Student List&lt;/title&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;style type=&quot;text/css&quot;&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/style&gt;</p>\r\n\r\n<p>&lt;/head&gt;</p>\r\n\r\n<p>&lt;body&gt;</p>\r\n\r\n<p>&lt;/body&gt;</p>\r\n\r\n<p>&lt;/html&gt;</p>\r\n\r\n<p>Now you&rsquo;ll add css within this page.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Step:15 :- Add css for HTML element &lsquo;table&rsquo;. We&rsquo;ll add text-align, width, border for table. The code will be look like this:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;style type=&quot;text/css&quot;&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;table {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;text-align: center;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;width: 600px;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;border: 2px solid #000;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>\r\n\r\n<p>&lt;/style&gt;</p>\r\n\r\n<p>Note: for this table will be 600px wide and it&rsquo;s border will be black with 2px width and all the text will be center aligned.</p>\r\n\r\n<p>Step:16 :- following the previous steps we&rsquo;ll add more css within &lt;style&gt; tag. Here are some more css for this page:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;style type=&quot;text/css&quot;&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;table, th, td {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;border: 1px solid #000;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;th {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;background-color: #32434d;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;color: #faffff;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tr {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;height: 50px;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;td {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;background: #efefef;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;color: #207b47;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a:hover {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;color: #c1c1c1;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#name {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;color: #c1c1c1;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tr td:first-child {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;background-color: #3ca2bb;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>\r\n\r\n<p>&lt;/style&gt;</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 22, NULL, NULL, '2014-12-15 06:00:26', '2014-12-15 06:00:26'),
(34, 19, 'Using child and sibling selectors', '<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:12px">This one we covered in the intro to this article. Let&#39;s drive that same example home with a visual:</span></p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 24, NULL, NULL, '2014-12-15 06:02:51', '2014-12-15 06:02:51'),
(35, 20, 'Case sensitivity', '<p><span style="font-family:arial,sans-serif; font-size:13pt">Sacred tradition requires us to say &quot;Hello world&quot; before doing anything serious. Here goes:</span></p>\r\n\r\n<p><span style="font-family:arial,sans-serif; font-size:13pt">&nbsp;</span></p>\r\n\r\n<p><span style="color:rgb(131, 60, 11); font-family:arial,sans-serif; font-size:13pt">var test = &#39;Hello world&#39;;</span></p>\r\n\r\n<p><span style="color:rgb(131, 60, 11); font-family:arial,sans-serif; font-size:13pt">alert(Test);</span></p>\r\n\r\n<p><span style="color:rgb(131, 60, 11); font-family:arial,sans-serif; font-size:13pt">&nbsp;</span></p>\r\n\r\n<p><span style="font-family:arial,sans-serif; font-size:13pt">We immediately encounter our first JavaScript error: Test is not defined. JavaScript is case sensitive. The variable testis not the same as Test, so JavaScript doesn&#39;t recognize it.</span></p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 26, NULL, NULL, '2014-12-15 07:20:57', '2014-12-15 07:20:57'),
(36, 20, 'Statements and the', '<p><span style="font-family:arial,sans-serif; font-size:12pt">Every script consists of a list of statements commands that tell JavaScript to do something. Take this</span></p>\r\n\r\n<p><span style="font-family:arial,sans-serif; font-size:12pt">script:</span></p>\r\n\r\n<p><span style="font-family:arial,sans-serif; font-size:12pt">&nbsp;</span></p>\r\n\r\n<p><span style="color:rgb(131, 60, 11); font-family:arial,sans-serif; font-size:12pt">var test = &#39;Hello world&#39;;</span></p>\r\n\r\n<p><span style="color:rgb(131, 60, 11); font-family:arial,sans-serif; font-size:12pt">alert(test);</span></p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 28, NULL, NULL, '2014-12-15 07:22:10', '2014-12-15 07:22:10'),
(37, 16, 'Drawing Line', '<p>Select the pencil tool and click and drag to draw a free hand line drawing.</p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/215/pencil1.png" /></p>\r\n\r\n<h3>Closing Paths with Pencil Tool</h3>\r\n\r\n<p>To close a path, hold Alt/Option as your Pencil Tool reaches the start point. A circle icon will appear next to the Pencil Tool to indicate path closure.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/215/pencil2.png" /></p>\r\n\r\n<h3>Smoothing Jaggy Lines</h3>\r\n\r\n<p>Normally when you draw with the Pencil Tool, the path looks jaggy. To smoothen the parts that are jaggy, simply hold Alt/Option to turn the Pencil Tool to Smooth Tool. Then draw over the the area of the lines which you would like to smoothen.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/215/pencil3.png" /></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 30, NULL, NULL, '2014-12-16 03:21:32', '2014-12-16 03:21:32'),
(38, 16, 'Reshaping Path', '<h3>Reshaping Path</h3>\r\n\r\n<p>To reshape a path, make sure your path is selected and use the Pencil Tool to redraw the parts you would like to reshape. Note that the start and end path must be close to the original path to make it work.</p>\r\n\r\n<h3><img src="http://114.130.54.174/ftfl/www/content/lessons/215/pencil4.png" /></h3>\r\n\r\n<h3>Pencil Tool Preferences</h3>\r\n\r\n<p>You can turn on the Pencil Tool Preferences by double clicking on the Pencil Tool. You can change the fidelity and smoothness to find a combination that works for you.</p>\r\n\r\n<p><strong>Fidelity:</strong> Determines how close the path is drawn to your mouse movement. Set it at a higher fidelity if your not good at drawing with your mouse.</p>\r\n\r\n<p><strong>Smoothness:</strong> The higher you set for smoothness, the less anchor point it produces. Thus, producing a smoother line.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/215/pencil5.png" /></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 32, NULL, NULL, '2014-12-16 03:22:58', '2014-12-16 03:22:58'),
(39, 21, 'Drawing Line', '<h3>Drawing a Line</h3>\r\n\r\n<p>Select the pencil tool and click and drag to draw a free hand line drawing.</p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/215/pencil1.png" /></p>\r\n\r\n<h3>Closing Paths with Pencil Tool</h3>\r\n\r\n<p>To close a path, hold Alt/Option as your Pencil Tool reaches the start point. A circle icon will appear next to the Pencil Tool to indicate path closure.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/215/pencil2.png" /></p>\r\n\r\n<h3>Smoothing Jaggy Lines</h3>\r\n\r\n<p>Normally when you draw with the Pencil Tool, the path looks jaggy. To smoothen the parts that are jaggy, simply hold Alt/Option to turn the Pencil Tool to Smooth Tool. Then draw over the the area of the lines which you would like to smoothen.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/215/pencil3.png" /></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Example', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, 34, NULL, NULL, '2014-12-16 04:32:04', '2014-12-16 04:32:04'),
(40, 21, 'Reshaping Path', '<h3>Reshaping Path</h3>\r\n\r\n<p>To reshape a path, make sure your path is selected and use the Pencil Tool to redraw the parts you would like to reshape. Note that the start and end path must be close to the original path to make it work.</p>\r\n\r\n<h3><img src="http://114.130.54.174/ftfl/www/content/lessons/215/pencil4.png" /></h3>\r\n\r\n<h3>Pencil Tool Preferences</h3>\r\n\r\n<p>You can turn on the Pencil Tool Preferences by double clicking on the Pencil Tool. You can change the fidelity and smoothness to find a combination that works for you.</p>\r\n\r\n<p><strong>Fidelity:</strong> Determines how close the path is drawn to your mouse movement. Set it at a higher fidelity if your not good at drawing with your mouse.</p>\r\n\r\n<p><strong>Smoothness:</strong> The higher you set for smoothness, the less anchor point it produces. Thus, producing a smoother line.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/215/pencil5.png" /></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Example', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 36, NULL, NULL, '2014-12-16 04:33:18', '2014-12-16 04:33:18'),
(41, 22, 'table, tr, th, td, tbody, tfooter', '<p><strong>Source code:</strong></p>\r\n\r\n<p>&lt;style&gt;</p>\r\n\r\n<p>table,th,td</p>\r\n\r\n<p>{</p>\r\n\r\n<p>border:1px solid black;</p>\r\n\r\n<p>}</p>\r\n\r\n<p>&lt;/style&gt;</p>\r\n\r\n<p>&lt;/head&gt;</p>\r\n\r\n<p>&lt;body&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&lt;table&gt;</p>\r\n\r\n<p>&nbsp; &lt;tr&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; &lt;th&gt;Month&lt;/th&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; &lt;th&gt;Savings&lt;/th&gt;</p>\r\n\r\n<p>&nbsp; &lt;/tr&gt;</p>\r\n\r\n<p>&nbsp; &lt;tr&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; &lt;td&gt;January&lt;/td&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; &lt;td&gt;$100&lt;/td&gt;</p>\r\n\r\n<p>&nbsp; &lt;/tr&gt;</p>\r\n\r\n<p>&nbsp; &lt;tr&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; &lt;td&gt;February&lt;/td&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; &lt;td&gt;$80&lt;/td&gt;</p>\r\n\r\n<p>&nbsp; &lt;/tr&gt;</p>\r\n\r\n<p>&lt;/table&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&lt;/body&gt;</p>\r\n\r\n<p>&lt;/html&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Output:</strong></p>\r\n\r\n<p><strong><img src="http://114.130.54.174/ftfl/www/content/lessons/223/tbl_one.png" /></strong></p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 38, NULL, NULL, '2014-12-16 05:04:37', '2014-12-16 08:23:13'),
(42, 22, 'table tr', '<p><strong>Source code:</strong></p>\r\n\r\n<p>&lt;table&gt;<br />\r\n&nbsp; &lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;td&gt;Cell A&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;td&gt;Cell B&lt;/td&gt;<br />\r\n&nbsp; &lt;/tr&gt;<br />\r\n&lt;/table&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Output:</strong></p>\r\n\r\n<p><strong><img src="http://114.130.54.174/ftfl/www/content/lessons/223/tbl_two.png" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Source code:</strong></p>\r\n\r\n<p>&lt;table&gt;<br />\r\n&nbsp; &lt;thead&gt;<br />\r\n&nbsp;&nbsp;&lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;&lt;th&gt;Month&lt;/th&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;th&gt;Savings&lt;/th&gt;<br />\r\n&nbsp;&nbsp;&lt;/tr&gt;<br />\r\n&nbsp; &lt;/thead&gt;<br />\r\n&nbsp; &lt;tfoot&gt;<br />\r\n&nbsp;&nbsp;&lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td&gt;Sum&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td&gt;$180&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&lt;/tr&gt;<br />\r\n&nbsp; &lt;/tfoot&gt;<br />\r\n&nbsp; &lt;tbody&gt;<br />\r\n&nbsp;&nbsp;&lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;td&gt;January&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &lt;td&gt;$100&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&lt;/tr&gt;<br />\r\n&nbsp;&nbsp;&lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td&gt;February&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td&gt;$80&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&lt;/tr&gt;<br />\r\n&nbsp; &lt;/tbody&gt;<br />\r\n&lt;/table&gt;</p>\r\n\r\n<p><strong>Output:</strong></p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/223/tbl_three.png" /></p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 40, NULL, NULL, '2014-12-16 05:06:43', '2014-12-16 08:24:26'),
(43, 13, 'Paint Bucket Tool', '<p>The paint bucket tool fills an area of an image based on color similarity. Click anywhere in the image and the paint bucket will fill an area around the pixel you clicked.</p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/paint_bucket1.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The exact area filled is determined by how similar each adjoining pixel is to the pixel you clicked on. You can adjust this setting in the options toolbar by changing the tolerance value (make sure the paint bucket tool is selected first). A low tolerance means only very similar colors will be affected, a high tolerance means more pixels will be affected. The range is 0 (exact color matches only) to 255 (all colors).</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/paint_bucket2.png" /></p>\r\n\r\n<p>The example below shows how a simple gradient is filled with green when the center of the image is clicked. The first fill uses a tolerance of 16, the second uses a tolerance of 64:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/paint_bucket3.png" /></p>\r\n\r\n<p>Other settings in the options bar include:</p>\r\n\r\n<ul>\r\n	<li><strong>Fill:</strong> Foreground color (i.e. the currently selected color) or Pattern. If you select pattern, the next drop-menu becomes active and you can choose a pattern to use.</li>\r\n	<li><strong>Mode:</strong> The same &quot;blending modes&quot; found in many other tools, including normal, dissolve, lighten, darken, etc.</li>\r\n	<li><strong>Opacity:</strong> Set lower to make the underlying image partially visible.</li>\r\n	<li><strong>Anti-alias:</strong> Make smoother edges by blending gradually with adjoining pixels.</li>\r\n	<li><strong>Contiguous:</strong> (see below).</li>\r\n	<li><strong>All layers:</strong> When using multiple <u>layers</u>, all layers are used to create the fill (otherwise only the selected layer is used).</li>\r\n</ul>\r\n\r\n<p>Contiguous Fill</p>\r\n\r\n<p>When the <em>contiguous</em> checkbox is selected, only pixels that are connected to the original pixel are filled. The example below shows how this works. The image is clicked near the left hand side&mdash;first with contiguous on and then with it off:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/paint_bucket4.png" /></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 42, NULL, NULL, '2014-12-16 06:33:19', '2014-12-16 06:33:19'),
(48, 13, 'Paint Tool', '<p>The paint bucket tool fills an area of an image based on color similarity. Click anywhere in the image and the paint bucket will fill an area around the pixel you clicked.</p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/paint_bucket1.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The exact area filled is determined by how similar each adjoining pixel is to the pixel you clicked on. You can adjust this setting in the options toolbar by changing the tolerance value (make sure the paint bucket tool is selected first). A low tolerance means only very similar colors will be affected, a high tolerance means more pixels will be affected. The range is 0 (exact color matches only) to 255 (all colors).</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/paint_bucket2.png" /></p>\r\n\r\n<p>The example below shows how a simple gradient is filled with green when the center of the image is clicked. The first fill uses a tolerance of 16, the second uses a tolerance of 64:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/paint_bucket3.png" /></p>\r\n\r\n<p>Other settings in the options bar include:</p>\r\n\r\n<ul>\r\n	<li><strong>Fill:</strong> Foreground color (i.e. the currently selected color) or Pattern. If you select pattern, the next drop-menu becomes active and you can choose a pattern to use.</li>\r\n	<li><strong>Mode:</strong> The same &quot;blending modes&quot; found in many other tools, including normal, dissolve, lighten, darken, etc.</li>\r\n	<li><strong>Opacity:</strong> Set lower to make the underlying image partially visible.</li>\r\n	<li><strong>Anti-alias:</strong> Make smoother edges by blending gradually with adjoining pixels.</li>\r\n	<li><strong>Contiguous:</strong> (see below).</li>\r\n	<li><strong>All layers:</strong> When using multiple <u>layers</u>, all layers are used to create the fill (otherwise only the selected layer is used).</li>\r\n</ul>\r\n\r\n<p>Contiguous Fill</p>\r\n\r\n<p>When the <em>contiguous</em> checkbox is selected, only pixels that are connected to the original pixel are filled. The example below shows how this works. The image is clicked near the left hand side&mdash;first with contiguous on and then with it off:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/paint_bucket4.png" /></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Theory', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 58, NULL, NULL, '2014-12-16 07:39:33', '2014-12-16 09:52:03');
INSERT INTO `contents` (`id`, `lesson_id`, `name`, `data`, `ctg_type`, `active`, `previous_content`, `options`, `scorm_version`, `publish`, `identifier`, `linked_to`, `subject`, `description`, `publisher`, `contributor`, `type`, `format`, `source`, `relation`, `coverage`, `rights`, `parent_id`, `lft`, `rght`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(49, 22, 'table', '<p>&lt;table&gt;<br />\r\n&nbsp; &lt;thead&gt;<br />\r\n&nbsp;&nbsp;&lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;&lt;th&gt;Month&lt;/th&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;th&gt;Savings&lt;/th&gt;<br />\r\n&nbsp;&nbsp;&lt;/tr&gt;<br />\r\n&nbsp; &lt;/thead&gt;<br />\r\n&nbsp; &lt;tfoot&gt;<br />\r\n&nbsp;&nbsp;&lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td&gt;Sum&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td&gt;$180&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&lt;/tr&gt;<br />\r\n&nbsp; &lt;/tfoot&gt;<br />\r\n&nbsp; &lt;tbody&gt;<br />\r\n&nbsp;&nbsp;&lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;td&gt;January&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &lt;td&gt;$100&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&lt;/tr&gt;<br />\r\n&nbsp;&nbsp;&lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td&gt;February&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td&gt;$80&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&lt;/tr&gt;<br />\r\n&nbsp; &lt;/tbody&gt;<br />\r\n&lt;/table&gt;</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 51, NULL, NULL, '2014-12-16 07:42:18', '2014-12-16 10:05:26'),
(54, 14, 'Gradient Tool', '<p>Gradients are a great way to add that little something extra to a background or image. According to <a href="http://www.adobe.com/" target="_blank" title="Link added by VigLink">Adobe</a>, &ldquo;The Gradient tool creates a gradual blend between multiple colors.&rdquo; Pretty straightforward, right?</p>\r\n\r\n<p>Like many of the other tools, the Gradient Tool (G) will not work if your document is in Bitmap or Indexed mode. So, you will have to change the mode of the image if you are opening an existing .gif or .bmp file. To determine what mode your file is in:</p>\r\n\r\n<ol start="1">\r\n	<li>Click the IMAGE menu.</li>\r\n	<li>Choose MODE from the menu.</li>\r\n</ol>\r\n\r\n<p>From here you will be able to differentiate between grayscale, indexed color, RGB, or lab. For all web and mobile images we are going to want to make sure we select RGB.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/gradiant1.png" /></p>\r\n\r\n<p>Like anything else in Photoshop, there are multiple ways to apply a gradient. This article simply covers the Gradient Tool (G). Gradients are applied by dragging the tool across the image. The starting point is defined by where the mouse is initially clicked and the ending point is where the mouse is released.<br />\r\nGradients can be applied to the whole active layer or just select portions of an active layer.</p>\r\n\r\n<ol start="1">\r\n	<li>Select the Gradient tool <img src="http://114.130.54.174/ftfl/www/content/lessons/206/gradiant2.png" />&nbsp; from the toolbar or press the letter G on the keyboard.</li>\r\n	<li>In the Option bar, there are multiple different types of gradients you can apply:</li>\r\n</ol>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/gradiant3.png" /></p>\r\n\r\n<ul>\r\n	<li>Gradient presets give you the options to create a gradient from templates or customize your own.</li>\r\n	<li><img src="http://114.130.54.174/ftfl/www/content/lessons/206/gradiant4.png" />Linear gradient - Shades from the start point to the end point in a straight line.</li>\r\n	<li><img src="http://114.130.54.174/ftfl/www/content/lessons/206/gradiant5.png" />Radial gradient - Shades from the start point to the end point in a circular pattern.</li>\r\n	<li><img src="http://114.130.54.174/ftfl/www/content/lessons/206/gradiant6.png" />Angle gradient - Shades in a counterclockwise sweep around the start point.</li>\r\n	<li><img src="http://114.130.54.174/ftfl/www/content/lessons/206/gradiant7.png" />Reflective gradient - Shades using symmetric linear gradients on either side of the start point.</li>\r\n	<li><img src="http://114.130.54.174/ftfl/www/content/lessons/206/gradiant8.png" />Diamond gradient - Shades from the start point outward in a diamond pattern. The end point defines one corner of the diamond.</li>\r\n	<li>Specify a blending mode and opacity for the gradient.</li>\r\n	<li>Reverse - swaps the selected colors of the gradient.</li>\r\n	<li>Dither - creates a smoother gradient.</li>\r\n	<li>Transparency creates a transparency mask for the gradient fill.</li>\r\n</ul>\r\n\r\n<p>With all the options configured, we can now apply the gradient.</p>\r\n\r\n<ul>\r\n	<li>Position the pointer in the image where you want. Click to set the starting point of the gradient, drag and release to define the ending point. To constrain the line angle to a multiple of 45&deg;, hold down SHIFT as you drag.</li>\r\n	<li>To adjust the look of the Gradient, try adjusting your start point and endpoint and that is that.</li>\r\n</ul>\r\n\r\n<p>It&rsquo;s about as simple as <a href="http://www.adobe.com/" target="_blank" title="Link added by VigLink">Adobe</a>&nbsp; made it sound. Here are some more examples of what you can do with Gradients:</p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/gradiant9.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, 60, NULL, NULL, '2014-12-16 09:22:00', '2014-12-16 09:22:00'),
(55, 15, 'Color Picker', '<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/color_picker1.png" /></p>\r\n\r\n<p>In my screen shot, black was the currently selected color when I brought up the color picker. Notice that there is a small circle in the lower left corner of the color picker area, this circle surrounds the selected color. Click anywhere else in the color picker and the circle will follow. (Continued below...)</p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/color_picker2.png" /></p>\r\n\r\n<p>Notice the two squares just left of the cancel button. The color shown on top is the currently selected color, the color on the bottom is the color you are replacing. If you see a triangle with an exclamation mark, it means you have selected a color that is <a href="http://graphicssoft.about.com/library/glossary/bldefgamut.htm">out of gamut</a> for <a href="http://graphicssoft.about.com/library/glossary/bldefcmyk.htm">CMYK</a>. Below the out of gamut alert, Photoshop displays the closest color that is within the CMYK color gamut. If you see a small cube displayed, it indicates that the color selection is not &quot;<a href="http://graphicssoft.about.com/library/glossary/bldefwebsafe.htm">Web-safe</a>.&quot; Below the Web safe alert, Photoshop displays a tiny swatch of the closest Web-safe color match. Clicking on either of the closest match swatches will change the selected color to the closest match.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Now take a look at all those numeric entry fields on the right lower quadrant of the dialog box. These allow you to enter numeric color values in a variety of ways. The default for the color picker is to choose colors by <em>Hue</em>. You should have a dot next to the <strong>H</strong> in the color picker if you are still using the default preferences. As you move the color picker from left to right in the large color box you are adjusting the <em>saturation</em> of the hue. Try it and you&#39;ll notice the numbers next to the <strong>S</strong> change from 0 (far left) to 100 (far right). Moving the color picker up and down adjusts the <em>brightness</em> of the hue. As you move the color picker up and down notice that the <strong>B</strong> values change from 0 to 100 as well. To change the Hue, you can click in the narrow rainbow-colored strip next to the large color picker area, or you can drag up and down in this space.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For this course we will be choosing colors with the default color picker arrangement, so I am not going to cover the other numeric entry fields, but I would like to encourage you to explore them on your own. At some stage in this course I may ask you to select a specific color by its RGB values. In these cases, you would enter numbers in the corresponding numeric fields for R, G, and B. For example, the RGB values for 50% gray are R128-G128-B128 and would be entered like this:</p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/color_picker3.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Notes for Version 5.5 and 6.0</strong></p>\r\n\r\n<table align="center" border="0" style="background-color:#dfe1df">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>In Photoshop 5.5 and higher, the color picker will also have a checkbox to display only Web colors. This restricts the color picker to only displaying colors in the Web-safe palette. In addition, you also have a field where you can enter the <a href="http://graphicdesign.about.com/library/glossaries/web/blhexadecimal.htm">hexadecimal</a> color codes used in HTML. This field is indicated with the # sign.</p>\r\n\r\n			<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/color_picker4.png" /></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61, 62, NULL, NULL, '2014-12-16 09:23:41', '2014-12-16 09:23:41'),
(56, 16, 'Blur Tool', '<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/blur1.png" /></p>\r\n\r\n<p>You will know that the blur tool is selected because it will show the blur tool image in the main toolbox&nbsp;or there will be a little square black box next to the tool.&nbsp;Click and hold down the mouse in the area that you want to have blurred.</p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/blur2.png" /></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63, 64, NULL, NULL, '2014-12-16 09:25:32', '2014-12-16 09:25:32'),
(58, 17, 'span tag', '<p>&lt;span&gt;This is a paragraph.&lt;/span&gt;</p>\r\n\r\n<p>&lt;span&gt;This is a paragraph.&lt;/span&gt;</p>\r\n\r\n<p>&lt;span&gt;This is a paragraph.&lt;/span&gt;</p>\r\n\r\n<p>&lt;span&gt;This is a paragraph.&lt;/span&gt;</p>\r\n\r\n<p>&lt;span&gt;This is a paragraph.&lt;/span&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&lt;span&gt;This is a paragraph.&lt;/span&gt;</p>\r\n\r\n<p>&lt;span&gt;This is a paragraph.&lt;/span&gt;</p>\r\n\r\n<p>&lt;span&gt;This is a paragraph.&lt;/span&gt;</p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, 66, NULL, NULL, '2014-12-16 09:47:36', '2014-12-16 09:47:36'),
(59, 18, 'Button', '<p><strong>Source code:</strong></p>\r\n\r\n<p>&lt;button type=&quot;button&quot;&gt;Click Me!&lt;/button&gt;</p>\r\n\r\n<p><strong>Output:</strong></p>\r\n\r\n<p><strong><img src="http://114.130.54.174/ftfl/www/content/lessons/223/btn.png" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&lt;select&gt;</strong></p>\r\n\r\n<p><strong>Source code:</strong></p>\r\n\r\n<p>&lt;select&gt;<br />\r\n&nbsp; &lt;option value=&quot;volvo&quot;&gt;Volvo&lt;/option&gt;<br />\r\n&nbsp; &lt;option value=&quot;saab&quot;&gt;Saab&lt;/option&gt;<br />\r\n&nbsp; &lt;option value=&quot;mercedes&quot;&gt;Mercedes&lt;/option&gt;<br />\r\n&nbsp; &lt;option value=&quot;audi&quot;&gt;Audi&lt;/option&gt;<br />\r\n&lt;/select&gt;</p>\r\n\r\n<p><strong>Output:</strong></p>\r\n\r\n<p><strong><img src="http://114.130.54.174/ftfl/www/content/lessons/223/dropdown.png" /></strong></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67, 68, NULL, NULL, '2014-12-16 10:00:29', '2014-12-16 10:00:29'),
(60, 23, 'The window object', '<p><span style="font-family:arial,sans-serif">At the center of the BOM stands the window object. It serves four purposes:</span></p>\r\n\r\n<p><span style="font-family:arial,sans-serif">It is the global object that JavaScript Core needs to function. It represents the browser window that users see on their computer screen. It grants access to the HTML document loaded in the window. It contains miscellaneous information and functionality. As JavaScript&#39;s global object, the window object contains all the variables and functions defined in your scripts. (We discussed the global object in 5J.) As a representation of the browser window, the window object holds methods like resize To that allow you to change the window&#39;s dimensions, and objects such as screen that give information about the user&#39;s computer screen. In addition, it allows you to open and close new browser windows. As the access portal to the HTML document, the window holds the document object, which in turn</span></p>\r\n\r\n<p><span style="font-family:arial,sans-serif">holds the entire HTML page the user is currently viewing. Finally, as a holder of iscellaneous information and functionality, the window object contains the location and history objects, hich are meant for navigation, a few interaction methods such as alert, and the browser&#39;s user Agent string.</span></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69, 70, NULL, NULL, '2014-12-16 10:13:17', '2014-12-16 10:13:17'),
(61, 23, 'The window as global object', '<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">JavaScript always creates a global object to hold all global variables and functions in</span></p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">your scripts. If you wish, you can explicitly invoke this global object, for instance:</span></p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">&nbsp;</span></p>\r\n\r\n<p>var test = &#39;Hello world&#39;;</p>\r\n\r\n<p>alert(window.test);</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>test<span style="color:#6f8dc1; font-family:courier new"> </span>is a global variable, and as such it&#39;s a property of the window object. Therefore window.test</p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">also accesses the variable.Every browser window or frame is a global object in its own right. Although communication between these global objects is possible in certain circumstances, they remain separate.</span></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71, 72, NULL, NULL, '2014-12-16 10:14:29', '2014-12-16 10:14:29'),
(62, 23, 'New windows as new global objects', '<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">Your Web site may have more than one window, and thus more than one global object. If you use popups or frames, you effectively create several window objects, each of which is completely separate from all the others. These window objects are all global objects, and can contain variables or functions with the same names.Suppose your site uses a main window and a popup, and suppose you define a variable </span>message<span style="color:#6f8dc1; font-family:courier new; font-size:10.0pt"> </span><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">in each of them:</span></p>\r\n\r\n<p>var message = &#39;Hello world&#39;; // in main window</p>\r\n\r\n<p>var message = &#39;Goodbye, cruel world&#39;; // in popup window</p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">These two variables </span>message<span style="color:#6f8dc1; font-family:courier new; font-size:10.0pt"> </span><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">are completely independent, since they&#39;re properties of different global objects. If you add a line </span>alert(message)<span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">, it shows &#39;Hello world&#39; in the main window, and &#39;Goodbye, cruel world&#39; in the popup window. Both alert statements use the value of </span>message<span style="color:#6f8dc1; font-family:courier new; font-size:10.0pt"> </span><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">as defined in theirown global object.</span></p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">Sometimes you need variables or functions from another window, as I do in Site Survey. In order to access them, you first have to access the other window (or rather, the other global object). Once you&#39;ve done that, you can request its properties and methods, which are its variables and functions.</span></p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">&nbsp;</span></p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">For instance, this alerts &quot;Goodbye, cruel world&quot; in the main window:</span></p>\r\n\r\n<p>// in main window</p>\r\n\r\n<p>var popup = [open popup and create reference to its window</p>\r\n\r\n<p>object];</p>\r\n\r\n<p>alert(popup.message);</p>\r\n\r\n<p><span style="font-family:arial,sans-serif">&nbsp;</span></p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">Using variables and functions that are defined in another window is therefore not very difficult, provided you can access the other window.</span></p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">&nbsp;</span></p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">&nbsp;</span></p>\r\n\r\n<p><strong><span style="color:#333333; font-family:arial,sans-serif; font-size:13.0pt">Window properties</span></strong></p>\r\n\r\n<p><strong><span style="color:#333333; font-family:arial,sans-serif; font-size:13.0pt">&nbsp;</span></strong></p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">Every window object has a few miscellaneous properties.</span></p>\r\n\r\n<p><strong><span style="color:#333333; font-family:arial,sans-serif; font-size:12.5pt">window and self</span></strong></p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">The </span>window<span style="color:#6f8dc1; font-family:courier new; font-size:10.0pt"> </span><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">and</span> self<span style="color:#6f8dc1; font-family:courier new; font-size:10.0pt"> </span><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">properties refer to the window itself. Therefore,</span>window.innerWidth<span style="color:#6f8dc1; font-family:courier new; font-size:10.0pt"> </span><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">accesses </span>the innerWidth property<span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt"> of the window object, and </span>self.innerWidth<span style="color:#6f8dc1; font-family:courier new; font-size:10.0pt"> </span><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">accesses the same property. I have no idea why we need two properties that refer to the same object.</span></p>\r\n\r\n<p><strong><span style="color:#333333; font-family:arial,sans-serif; font-size:12.5pt">name</span></strong></p>\r\n\r\n<p><span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">The </span>name p<span style="color:#333333; font-family:verdana,sans-serif; font-size:10.0pt">roperty serves as a guide for the target property of HTML links, and also for popups. Initially it&#39;s empty, but you can always set it. Take this code:</span></p>\r\n\r\n<p>window.name = &#39;ppk&#39;;</p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 73, 74, NULL, NULL, '2014-12-16 10:15:41', '2014-12-16 10:15:41'),
(63, 24, 'Pseudo-class UI selectors', '<p><span style="color:#212121">With CSS3&nbsp;</span><strong><em><span style="color:black">pseudo-class</span></em></strong><span style="color:#212121">&nbsp;</span><span style="color:#212121">selectors for Form UI you can style form elements based on its state, or how the user interacts with the form elements.</span></p>\r\n\r\n<h2><span style="color:windowtext; font-family:calibri,sans-serif; font-size:11.0pt">CSS3 Pseudo-Class Selectors: Form UI-</span></h2>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/224/s3_1a.png" /></p>\r\n\r\n<h2><span style="color:windowtext; font-family:calibri,sans-serif; font-size:11.0pt">CSS Pseudo Class&nbsp;<em>:enabled</em>&nbsp;and&nbsp;<em>:disabled-</em></span></h2>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/224/s3_1.png" /></p>\r\n\r\n<h2><span style="color:windowtext; font-family:calibri,sans-serif; font-size:11.0pt">CSS Pseudo Selector&nbsp;:checked-</span></h2>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/224/s3_2.png" /></p>\r\n\r\n<h2><span style="color:windowtext; font-family:calibri,sans-serif; font-size:11.0pt">CSS Pseudo Selector&nbsp;:default-</span></h2>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/224/s3_3.png" /></p>\r\n\r\n<h2><span style="color:windowtext; font-family:calibri,sans-serif; font-size:11.0pt">CSS Pseudo Class&nbsp;:focus-</span></h2>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/224/s3_4.png" /></p>\r\n\r\n<h2><span style="color:windowtext; font-family:calibri,sans-serif; font-size:11.0pt">CSS Pseudo Class&nbsp;<em>:in-range</em>&nbsp;and&nbsp;<em>:out-of-range-</em></span></h2>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/224/s3_5.png" /></p>\r\n\r\n<h2><span style="color:windowtext; font-family:calibri,sans-serif; font-size:11.0pt">CSS pseudo class&nbsp;:required&nbsp;and&nbsp;:optional-</span></h2>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/224/s3_6.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75, 76, NULL, NULL, '2014-12-16 10:23:21', '2014-12-16 10:23:21'),
(64, 24, 'Negation pseudo-class selectors', '<p>The&nbsp;<strong><span style="font-family:calibri,sans-serif">negation</span></strong><strong>&nbsp;</strong><a href="https://developer.mozilla.org/en-US/docs/CSS/Pseudo-classes" title="Pseudo-classes">CSS pseudo-class</a>,&nbsp;<code><span style="font-size:10.0pt">:not(X)</span></code>, is a functional notation taking a simple selector&nbsp;<var><span style="font-family:calibri,sans-serif">X</span></var>&nbsp;as an argument.</p>\r\n\r\n<h2 style="margin-left:0in; margin-right:0in"><span style="color:windowtext; font-family:calibri,sans-serif; font-size:11.0pt">Syntax-</span></h2>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border:none; padding:px">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:508.35pt">\r\n			<div style="border: none; border-left: solid windowtext 4.5pt; padding: 0in 0in 0in 12.0pt;">\r\n			<pre>\r\n<span style="font-family:calibri,sans-serif; font-size:11.0pt">:not(selector) { <em><span style="font-family:calibri,sans-serif">style properties</span></em> }</span></pre>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2 style="margin-left:0in; margin-right:0in"><span style="color:windowtext; font-family:calibri,sans-serif; font-size:11.0pt">Examples-</span></h2>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border:none; padding:px">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:508.35pt">\r\n			<div style="border: none; border-left: solid windowtext 4.5pt; padding: 0in 0in 0in 23.0pt;">\r\n			<pre>\r\n<span style="font-family:calibri,sans-serif; font-size:11.0pt">p:not(.classy) {</span><code><span style="font-family:calibri,sans-serif; font-size:11.0pt"> </span></code><span style="font-family:calibri,sans-serif; font-size:11.0pt">color:</span><code><span style="font-family:calibri,sans-serif; font-size:11.0pt"> red</span></code><span style="font-family:calibri,sans-serif; font-size:11.0pt">;</span><code><span style="font-family:calibri,sans-serif; font-size:11.0pt"> </span></code><span style="font-family:calibri,sans-serif; font-size:11.0pt">}</span></pre>\r\n\r\n			<pre>\r\n<span style="font-family:calibri,sans-serif; font-size:11.0pt">body :not(p) {</span><code><span style="font-family:calibri,sans-serif; font-size:11.0pt"> </span></code><span style="font-family:calibri,sans-serif; font-size:11.0pt">color:</span><code><span style="font-family:calibri,sans-serif; font-size:11.0pt"> green</span></code><span style="font-family:calibri,sans-serif; font-size:11.0pt">;</span><code><span style="font-family:calibri,sans-serif; font-size:11.0pt"> </span></code><span style="font-family:calibri,sans-serif; font-size:11.0pt">}</span></pre>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style="border: none; border-left: solid windowtext 4.5pt; padding: 0in 0in 0in 12.0pt;">\r\n<pre>\r\n<span style="font-family:calibri,sans-serif; font-size:11.0pt">...where...</span></pre>\r\n</div>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border:none; padding:px">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:508.35pt">\r\n			<div style="border: none; border-left: solid windowtext 4.5pt; padding: 0in 0in 0in 19.0pt;">\r\n			<pre>\r\n<span style="font-family:calibri,sans-serif; font-size:11.0pt">&lt;p&gt;</span><code><span style="font-family:calibri,sans-serif; font-size:11.0pt">Some text.</span></code><span style="font-family:calibri,sans-serif; font-size:11.0pt">&lt;/p&gt;</span></pre>\r\n\r\n			<pre>\r\n<span style="font-family:calibri,sans-serif; font-size:11.0pt">&lt;p class=&quot;classy&quot;&gt;</span><code><span style="font-family:calibri,sans-serif; font-size:11.0pt">Some other text.</span></code><span style="font-family:calibri,sans-serif; font-size:11.0pt">&lt;/p&gt;</span></pre>\r\n\r\n			<pre>\r\n<span style="font-family:calibri,sans-serif; font-size:11.0pt">&lt;span&gt;</span><code><span style="font-family:calibri,sans-serif; font-size:11.0pt">One more text</span></code><span style="font-family:calibri,sans-serif; font-size:11.0pt">&lt;span&gt;</span></pre>\r\n			</div>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 77, 78, NULL, NULL, '2014-12-16 10:27:48', '2014-12-16 10:27:48'),
(65, 13, 'Pen Tool', '<p>In this Photoshop tutorial we will explore how to use the pen tool.</p>\r\n\r\n<p>First, we will look at the pen tool&rsquo;s <strong>basic controls</strong>. We will examine creating paths, curvature modification and anchor point adjustments.</p>\r\n\r\n<p>Next, on the flollowing page, we will use our new pen tool skills to <a href="http://www.melissaevans.com/tutorials/how-to-use-photoshops-pen-tool/2"><strong>cut out an image</strong></a>. This skill is so essential to know when using <a href="http://www.kqzyfj.com/click-2942807-10772185" target="_top"><strong>Adobe Photoshop</strong></a>, and it really illustrates the power behind the pen tool.</p>\r\n\r\n<p>Finally we will see how a path created with the pen tool can be used to create <a href="http://www.melissaevans.com/tutorials/how-to-use-photoshops-pen-tool/2"><strong>custom shapes</strong></a>. Custom shapes are vectors so they will never pixelate or lose quality. Again this is such a handy skill, you&rsquo;ll end up using it all the time!</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h2>BASIC CONTROLS OF THE PEN TOOL</h2>\r\n\r\n<p>Photoshop&rsquo;s pen tool you have three options: <strong>Create a new work path</strong>, <strong>Create a new shape layer</strong>, and <strong>Fill Pixels</strong>.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen1.png" /></p>\r\n\r\n<p>We will use the <strong>Create a new work path</strong> option as this the most commonly used. You can find these options in the top left hand corner of the Photoshop window. See the image below.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen2.png" /></p>\r\n\r\n<p>Just like selection tools, the pen tool has several different options for the resulting path. The most commonly used is &ldquo;add to path area&rdquo;. See image below.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen3.png" /></p>\r\n\r\n<p>Take your pen tool and click on a blank canvas similar to what I have done below. Each time you click you <strong>create an anchor point</strong>.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen4.png" /></p>\r\n\r\n<p>Hold down Shft, move the mouse and click again. Holding down shift while making an anchor point <strong>creates it in a straight line</strong> with the last anchor point.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen5.png" /></p>\r\n\r\n<p>We can <strong>add</strong> and <strong>delete anchor points</strong> on the path we have created. Right click on the pen tool on the toolbar to reveal further tools. Use the Add and Delete Anchor Point Tool to do just that!</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen6.png" /></p>\r\n\r\n<p>I used the Delete Anchor Point Tool to remove the forth anchor point.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen7.png" /></p>\r\n\r\n<p>Now, let&rsquo;s look at the <strong>Convert Point Tool</strong> for curvature modification and moving anchor points.</p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen8.png" /></p>\r\n\r\n<p>With the <strong>convert point tool</strong> click and drag on the second anchor point. Without letting go, move the mouse around and see how it affects the curve. The line that is created is called the <strong>Tangent Line</strong>. The tangent line controls the curvature of the curve.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen9.png" /></p>\r\n\r\n<p>Holding down Ctrl click on the anchor point and move the mouse, see how this allows you to <strong>move the anchor point</strong>.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen10.png" /></p>\r\n\r\n<p>Click on one end of the tangent line and drag.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen11.png" /></p>\r\n\r\n<p>This breaks the tangent line in half and creates sharp path changes.</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/pen12.png" /></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, 54, 57, NULL, NULL, '2014-12-16 10:34:15', '2014-12-16 10:34:15'),
(66, 13, 'Text tools', '<p>To start off, we need to show the <strong>Character Menu </strong>from the window options, go to <strong>Window &gt; Character</strong>. This will show the character window in your application.</p>\r\n\r\n<p><img src="http://114.130.54.174/ftfl/www/content/lessons/206/text1.png" /><br />\r\n<br />\r\n<img src="http://114.130.54.174/ftfl/www/content/lessons/206/text2.png" /><br />\r\n<br />\r\nAlright, now that we have that window open, lets take a look at what each part does. First we need to create some text in your document. I used a new document to demonstrate this, but you can use whatever document you like. Create text by using the text tool:<br />\r\n<img src="http://114.130.54.174/ftfl/www/content/lessons/206/text3.png" /><br />\r\nNow that we have our text, you can change the font family with the first option which is found on the commonly used text toolbar.<br />\r\n<img src="http://114.130.54.174/ftfl/www/content/lessons/206/text4.png" /><br />\r\n<br />\r\n<br />\r\nOr you can change the font type with the second option, which is also found on the text toolbar.<br />\r\n<br />\r\nThe other two options that appear on the text toolbar are <strong>text color</strong> and the font size. Two very commonly used options with text.</p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, 80, NULL, NULL, '2014-12-16 10:35:50', '2014-12-16 10:35:50'),
(67, 13, 'Custom Shape Tool', '<p>You&rsquo;ll find the Custom Shape Tool nested in with Photoshop&rsquo;s other Shape tools in the same spot in the Tools panel. By default, the Rectangle Tool is the tool that&rsquo;s displayed, but if you click on it and hold your mouse button down, a fly-out menu will appear listing the other tools that are available in that spot. The Custom Shape Tool is at the bottom of the list:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape1.png" /></p>\r\n\r\n<p>Click and hold on the Rectangle Tool, then select the Custom Shape Tool from the fly-out menu.</p>\r\n\r\n<p>If you already have one of the other Shape tools selected, you can quickly grab the Custom Shape Tool from the Options Bar. You&rsquo;ll see a series of six icons, each representing a different Shape tool. The Custom Shape Tool is the last icon on the right (it&rsquo;s the icon that looks like a blob):</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape2.png" /></p>\r\n\r\n<p>If another Shape tool is already active, the Custom Shape Tool can be selected from the Options Bar.</p>\r\n\r\n<h4>Choosing A Custom Shape</h4>\r\n\r\n<p>Once we have the Custom Shape Tool selected, we need to choose the shape we want to draw. A shape <strong>preview thumbnail</strong> will appear in the Options Bar to the right of the Custom Shape Tool icon. The thumbnail displays the custom shape that&rsquo;s currently selected:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape3.png" /></p>\r\n\r\n<p>The preview thumbnail displays the currently selected custom shape.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To choose a different shape, click on the preview thumbnail. This will open the <strong>Shape Picker</strong> which displays all of the shapes we currently have to choose from. Photoshop actually comes with many more shapes than the limited number we&rsquo;re presented with at first. We&rsquo;ll see how to load in the other shapes in a moment:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape4.png" /></p>\r\n\r\n<p>Click on the preview thumbnail to open the Shape Picker.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To choose a shape, simply click on its thumbnail, then press <strong>Enter</strong> (Win) / <strong>Return</strong> (Mac) to close the Shape Picker. Or, <strong>double-click</strong> on the thumbnail, which will select the shape and close the Shape Picker for you. I&rsquo;ll choose the Heart shape:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape5.png" /></p>\r\n\r\n<p>Selecting the Heart shape from the Shape Picker.</p>\r\n\r\n<h4>Choosing A Color For The Shape</h4>\r\n\r\n<p>Once you&rsquo;ve chosen your shape, select a color for it by clicking on the <strong>color swatch</strong> to the right of the word <strong>Color</strong> in the Options Bar:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape6.png" /></p>\r\n\r\n<p>Click on the color swatch to choose a color for the custom shape.</p>\r\n\r\n<p>Photoshop will pop open the <strong>Color Picker</strong> so we can choose the color we want. Since I selected a heart shape, I&rsquo;ll choose red for my color. Click OK when you&rsquo;re done to close out of the Color Picker:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape7.png" /></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, 55, 56, NULL, NULL, '2014-12-16 10:38:58', '2014-12-16 10:38:58'),
(68, 13, '11111111111', '<div>\r\n<video controls="controls" height="300" id="video2015025182736" poster="" width="400"><source src="/app/webroot/ckeditor/kcfinder/upload/files/testB.mp4" type="video/mp4" />Your browser doesn&#39;t support video.<br />\r\nPlease download the file: <a href="/app/webroot/ckeditor/kcfinder/upload/files/testB.mp4">video/mp4</a></video>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81, 82, NULL, NULL, '2015-01-25 07:28:30', '2015-01-25 07:28:30'),
(69, 25, 'Data Networks', '<h2>Learning Objectives</h2>\r\n\r\n<p>After studying this chapter you should be able to:</p>\r\n\r\n<ul>\r\n	<li>describe the different types of data networks that are common in a government work environment</li>\r\n	<li>identify when different types of networks are most likely to be used</li>\r\n	<li>describe different uses of networks for government work</li>\r\n	<li>identify when different uses of networks are most likely to be applied</li>\r\n	<li>identify four main e-government opportunities based on networks and their use</li>\r\n</ul>\r\n\r\n<p>discuss the trade-offs that network-based e-government must make in a least-developed country</p>\r\n\r\n<h2>Introduction</h2>\r\n\r\n<p>In this chapter you will find information on:</p>\r\n\r\n<ul>\r\n	<li>computer networks and their uses, and</li>\r\n	<li>e-government applications and objectives based on computer networks.</li>\r\n</ul>\r\n\r\n<p>The chapter explains the different ways that computers can interact as networks. It extends that to describe common uses of computers in networks.</p>\r\n\r\n<p>The chapter also explains how networks and their uses apply in e-government and what objectives drive the use of networks in e-government.</p>\r\n\r\n<p>Networked computers underpin everything that is achieved in e-government. Understanding the basics of networked computing supports a deeper understanding of e-government.</p>\r\n\r\n<h2>Key Terms and Concepts</h2>\r\n\r\n<p><strong>Network</strong></p>\r\n\r\n<p>A collection of information technology that interoperates through digital communication; the physical technology that facilitates digital communication.</p>\r\n\r\n<p><strong>LAN &ndash; Local Area Network</strong></p>\r\n\r\n<p>A network that connects devices within a small geographic area (typically a building, or the floor of a building).</p>\r\n\r\n<p><strong>WAN &ndash; Wide Area Network</strong></p>\r\n\r\n<p>A network that connects devices across large geographic areas (nationally and internationally).</p>\r\n\r\n<p><strong>Intranet</strong></p>\r\n\r\n<p>A system that supports business operations and information needs within an organisation; typically delivered using world wide web technologies and approaches.</p>\r\n\r\n<p><strong>Extranet</strong></p>\r\n\r\n<p>A system that allows partners that are external to the organisation access processing systems and information equivalent to being connected to the intranet from outside the organisation&rsquo;s network.</p>\r\n\r\n<p><strong>Wireless Networks</strong></p>\r\n\r\n<p>The provision of network services over radio wave communication between devices.</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, 84, NULL, NULL, '2015-01-25 09:39:26', '2015-01-25 09:40:21'),
(70, 26, 'Types of Networks', '<p><em><strong>The simplest network</strong></em></p>\r\n\r\n<p><img alt="" src="/app/webroot/ckeditor/kcfinder/upload/images/sim.jpg" style="height:249px; width:395px" /></p>\r\n\r\n<p>One computer is useful, but organisations rarely comprise one person.</p>\r\n\r\n<p><strong>Personal Area Networks (PANs)</strong></p>\r\n\r\n<p>The simplest network connects two devices, usually so that data held on one can be shared with another. One modern example of this simple network is connecting your Bluetooth-enabled phone to your computer to back-up your phone&rsquo;s contact list. Another example is connecting your digital camera to your computer by USB cable to copy your photos onto the computer to manipulate them with software, or send them to friends and relatives attached to e-mail. Sometimes, a network at this level is called a Personal Area Network , or PAN.</p>\r\n\r\n<p><strong>The network effect</strong></p>\r\n\r\n<p>But just connecting two computers is not very helpful. The concept of the &lsquo;network effect&rsquo; covers this idea. The &lsquo;network effect&rsquo; says that the more devices that are connected to a network, the more valuable the network is for each device connected. There is a downside to this too; the more devices using the network, the more congested (slow) it becomes.</p>\r\n\r\n<p><strong>Local Area Networks (LANs)</strong></p>\r\n\r\n<p><img alt="" src="/app/webroot/ckeditor/kcfinder/upload/images/sim-1.jpg" style="height:248px; width:394px" /></p>\r\n\r\n<p>In an environment like an office, or a school, computers networked together and sharing resources like printers are called a Local Area Network, or LAN. An important difference between these networks and smaller ones used by individuals or families is that a dedicated computer, called a network server, is usually included in the network to manage the traffic and to share resources among the other computers.</p>\r\n\r\n<p>The LAN is the most common experience of networked computing for knowledge workers. Resources such as internet connections and large-scale software applications may be housed on other networks, but most often the knowledge work is accessing them through the LAN to which their computer is directly connected.</p>\r\n\r\n<p>The diagram illustrates another concept that is common in larger organisations: many LANs connected together (say, one per division) to support the whole organisation. Where this occurs in a single (large) building, or in a group of related and closely-located buildings, such a configuration is often called a Campus Area Network, or CAN.</p>\r\n\r\n<p><strong>Wide Area Networks (WANs)</strong></p>\r\n\r\n<p><img alt="" src="/app/webroot/ckeditor/kcfinder/upload/images/sim-2.jpg" style="height:250px; width:399px" /></p>\r\n\r\n<p>Wide Area Networks, WANs, connect smaller-scale networks across large geographic distances. These networks allow organisations to share data and application systems across all their offices.</p>\r\n\r\n<p>The majority of the physical networks on which WANs operate are owned and maintained by telecommunications companies. Most organisations that operate WANs lease the network capacity from the telecommunication companies rather than build their own network. Increasingly, organisations are using the Internet as the carrier for their WANs; i.e. they do not hold permanent network capacity but use whatever the Internet will provide when they require it.</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85, 86, NULL, NULL, '2015-01-25 09:41:49', '2015-01-25 09:41:49');
INSERT INTO `contents` (`id`, `lesson_id`, `name`, `data`, `ctg_type`, `active`, `previous_content`, `options`, `scorm_version`, `publish`, `identifier`, `linked_to`, `subject`, `description`, `publisher`, `contributor`, `type`, `format`, `source`, `relation`, `coverage`, `rights`, `parent_id`, `lft`, `rght`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(71, 25, 'Network Carriers', '<p>There are fundamentally two ways of creating a network between computers:</p>\r\n\r\n<ul>\r\n	<li>Wired&mdash;by connecting the computers using cables, and</li>\r\n</ul>\r\n\r\n<p>Wireless&mdash;using radio signals to communicate between computers.</p>\r\n\r\n<p><strong>Wired networks</strong></p>\r\n\r\n<p><img alt="" src="/app/webroot/ckeditor/kcfinder/upload/images/wn-1.jpg" style="height:250px; width:400px" /></p>\r\n\r\n<p>Wired networks use a variety of media for carrying the network data. The &lsquo;simplest&rsquo; and the one with least capacity (bandwidth) is twisted-pair wire; commonly used in telephone lines and for domestic network connections.</p>\r\n\r\n<p>Once networks reach a larger, or more commercial, scale, the wire that carries the network data is coaxial cable. This cable is commonly used in buildings to host office LANs and is used for cable-TV connections.</p>\r\n\r\n<p>Large-scale network connections (backbones) are commonly carried on cables made of fibre-optic cable. Fibre-optic is special glass fibre material that transmits light pulses rather than electrical pulses and has huge bandwidth.</p>\r\n\r\n<p><strong>Wireless networks</strong></p>\r\n\r\n<p><img alt="" src="/app/webroot/ckeditor/kcfinder/upload/images/wn-2.jpg" style="height:251px; width:400px" /></p>\r\n\r\n<p>Wireless networks are becoming increasingly popular because of their installation convenience. Wireless networks differ in their range and capacity. Bluetooth is specifically designed to have a very short range (approx. 10 metres) and relatively low bandwidth (less than 1Mbps). Wi-Fi is the common domestic and office wireless network technology. Based on standards promulgated by the IEEE, these networks are very common. Many cafes, libraries, airport lounges, and other businesses, will offer a wireless connection, sometimes for free. These places are often called &lsquo;hotspots&rsquo;.</p>\r\n\r\n<p>Wi-Max is a relatively new wireless protocol that allows large-scale wireless networks. WiMax networks can cover up to 10 kilometres with data rates of up to 75Mbps.</p>\r\n\r\n<p>LTE stands for Long Term Evolution and represents the very leading edge in wireless network protocol development at present. Also called Mobile Broadband Wireless Access (MBWA), it is being developed for mobile phone companies to support wireless internet access on smartphones and other handheld devices. The technology has the potential to reach 300Mbps, but as the networks are shared among very high numbers of devices, individual users will not experience this capacity directly.</p>\r\n', 'Default', 1, 69, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95, 96, NULL, NULL, '2015-01-25 09:42:40', '2015-01-25 10:03:22'),
(72, 28, 'Other Network Ideas', '<p>There are two other important network terms that commonly occur when discussing the use of computer networks in organisations and in e-government:</p>\r\n\r\n<ul>\r\n	<li>Internet&mdash;a term that refers to the interconnection of WANs all over the world, and</li>\r\n	<li>Virtual Private Networks (VPNs)&mdash;a special way of connecting a private network over public network infrastructure.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>Internet</strong></p>\r\n\r\n<p>The Internet started in 1969 as a US Defense research project, called ARPANET, to build resilient networks. The research was conducted by major US universities who immediately saw the value of being able to share data for research purposes. Defense wanted to ensure that the network would work in the event of up to 50% network destruction. The universities wanted to facilitate researchers communicating and working collaboratively. Then in 1993, the World Wide Web was invented by Tim Berners-Lee while working at CERN. The Web was designed to make it much easier to connect information in different parts of the Internet. Suddenly there were tools that allowed anyone to access information on the Internet.</p>\r\n\r\n<p>The Internet does not belong to anyone, nor does it have a headquarters or controlling organisation. Several organisations, such as the World Wide Web Consortium (W3C) and the Internet Engineering Task Force (IETF), coordinate the efforts of hundreds and thousands of businesses and individuals to set and extend standards for how the Internet, and the applications running on it like e-mail and the Web, will work.</p>\r\n\r\n<p>In practice, these days, the Internet exists because Internet Service Providers (ISPs) agree to sell access to network capacity they lease from telecommunications companies to their customers. Their customers (businesses, government agencies, and individuals) use that access to retrieve information stored on various servers belonging to other Internet customers, usually in the form of HTML web pages. Importantly, though, the single largest use of the Internet is still e-mail, one of its very first uses.</p>\r\n\r\n<p><strong>Virtual Private Networks (VPNs)</strong></p>\r\n\r\n<p>Virtual Private Networks, VPNs, use special protocols and cryptography to send information over public networks. Although the data travels on networks that anyone could intercept, the data is protected by the protocols and cryptography so that if intercepted it cannot be understood; i.e. it remains private.</p>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87, 88, NULL, NULL, '2015-01-25 09:44:11', '2015-01-25 09:44:11'),
(73, 29, 'Quick Quiz', '<ol>\r\n	<li>Connect the acronym to the brief description of a type of network.\r\n	<table border="0" cellpadding="0" cellspacing="0">\r\n		<tbody>\r\n			<tr>\r\n				<td style="width:76px">\r\n				<p>CAN</p>\r\n				</td>\r\n				<td style="width:289px">\r\n				<p>A network that connects devices over very large geographic distances.</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style="width:76px">\r\n				<p>PAN</p>\r\n				</td>\r\n				<td style="width:289px">\r\n				<p>A network that connects devices in an office or school building.</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style="width:76px">\r\n				<p>WAN</p>\r\n				</td>\r\n				<td style="width:289px">\r\n				<p>A network that connects devices across several closely-located buildings.</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style="width:76px">\r\n				<p>LAN</p>\r\n				</td>\r\n				<td style="width:289px">\r\n				<p>A network that connects devices that are very close to each other.</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li>If you were going to install a LAN in an existing building, which approach would be better: wireless or wired? Why?</li>\r\n	<li>What is the network effect? Can you explain why the network effect is important for network applications like e-mail?</li>\r\n	<li>What is a VPN? Can you explain why a government agency might use a VPN?</li>\r\n</ol>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89, 90, NULL, NULL, '2015-01-25 09:44:59', '2015-01-25 09:44:59'),
(74, 25, 'video-1', '<div>\r\n<div>\r\n<video controls="controls" height="300" id="video2015025205424" poster="" width="400"><source src="/app/webroot/ckeditor/kcfinder/upload/files/Document%20Management%20Solutions%20%5Bwww.keepvid.com%5D%20(1).mp4" type="video/mp4" />Your browser doesn&#39;t support video.<br />\r\nPlease download the file: <a href="/app/webroot/ckeditor/kcfinder/upload/files/Document%20Management%20Solutions%20%5Bwww.keepvid.com%5D%20(1).mp4">video/mp4</a></video>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 'Default', 1, 69, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91, 92, NULL, NULL, '2015-01-25 09:50:56', '2015-01-25 09:54:32'),
(75, 25, 'video-2', '<div>\r\n<video controls="controls" height="300" id="video2015025205223" poster="" width="400"><source src="/app/webroot/ckeditor/kcfinder/upload/files/Paperless%20Office%20Management%20Software%20%5Bwww.keepvid.com%5D.mp4" type="video/mp4" />Your browser doesn&#39;t support video.<br />\r\nPlease download the file: <a href="/app/webroot/ckeditor/kcfinder/upload/files/Paperless%20Office%20Management%20Software%20%5Bwww.keepvid.com%5D.mp4">video/mp4</a></video>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 'Default', 1, 74, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 93, 94, NULL, NULL, '2015-01-25 09:53:30', '2015-01-25 09:53:30'),
(76, 30, ' Introduction', '', 'Theory', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 97, 98, NULL, NULL, '2015-01-25 23:47:45', '2015-01-25 23:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `content_users`
--

CREATE TABLE IF NOT EXISTS `content_users` (
`id` int(8) unsigned NOT NULL,
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
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
`id` int(8) unsigned NOT NULL,
  `category_id` int(8) unsigned DEFAULT NULL,
  `image` varchar(512) NOT NULL,
  `name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `status` enum('ongoing','upcomming','past') NOT NULL,
  `archive` int(10) unsigned DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
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
  `duration_per_week` varchar(31) NOT NULL,
  `duration_hour_per_week` varchar(31) NOT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `image`, `name`, `active`, `status`, `archive`, `start_date`, `end_date`, `options`, `price`, `show_catalog`, `publish`, `reset`, `certificate_expiration`, `reset_interval`, `max_users`, `rules`, `instance_source`, `depends_on`, `ceu`, `description`, `objectives`, `assessment`, `topics`, `resources`, `info`, `learning_method`, `subject`, `publisher`, `contributor`, `type`, `format`, `identifier`, `source`, `relation`, `coverage`, `rights`, `who_it_is_for`, `htmlized_who_it_is_for`, `usually_asked_question`, `htmlized_usually_asked_question`, `duration_per_week`, `duration_hour_per_week`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(12, 2, 'files/photos/549021d4-7a3c-4206-b0da-105c6715296b.jpg', 'বেসিক এডোবি ফটোশপ', 1, 'ongoing', 0, '2015-01-02', '2015-02-05', NULL, 1200, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 'গ্রাফিক ডিজাইন শেখার জন্য Adobe Photoshop এর যেসকল ব্যবহার জানা গাগে সেটা নিযে আরোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে Photoshop এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। \r\nযারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'কোর্সটি একেবারে Basic Level থেকে শুরু হবে। তাই সবাই সহজে বুঝতে পারবেন। ', NULL, NULL, NULL, NULL, NULL, NULL, 'যেকোন ব্যক্তি এই কোর্সটি করতে পারবেন। কোর্সটি একবারে Basic Level থেকে শুরু হবে। তাই সবাই সহজে জুঝতে পারবেন। ', NULL, 'যেকোন ব্যক্তি এই কোর্সটি করতে পারবেন। কোর্সটি একেবারে কোর্সটি করতে পারবেন শুরু হবে। তাই সবাই সহজে বুঝতে পারবেন। কোর্সটি একেবারে কোর্সটি করতে পারবেন। ', NULL, '4 সপ্তাহ ', 'সপ্তাহে 3-4 ঘন্টা কাজ ', 'mustafa', NULL, '2014-12-15 04:45:00', '2014-12-16 07:53:53'),
(13, 2, 'files/photos/549022fd-24e0-4070-b1ad-08586715296b.png', 'অ্যাডোব ইলাস্ট্রেটর', 1, 'upcomming', 0, '2015-02-06', '2015-03-04', NULL, 1000, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 'mustafa', NULL, '2014-12-15 04:48:09', '2014-12-16 07:54:39'),
(14, 2, 'files/photos/54902499-98b4-42c1-a847-08576715296b.jpg', 'HTML5', 1, 'upcomming', 0, '2015-01-14', '2015-02-10', NULL, 1000, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'The perfect solution for professionals who need to balance work, family, and career building.', NULL, '', NULL, '', '', 'mustafa', NULL, '2014-12-15 04:51:09', '2014-12-16 07:57:04'),
(15, 2, 'files/photos/548eb027-f03c-4df9-ab61-2a416715296b.jpg', 'CSS 3', 1, 'ongoing', 0, '2015-04-09', '2015-05-06', NULL, 1500, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 'mustafa', NULL, '2014-12-15 04:55:51', '2015-01-26 23:44:21'),
(16, 2, 'files/photos/54902626-9024-41bc-bd4e-182d6715296b.jpg', 'JavaScript', 1, 'upcomming', 0, '2015-01-15', '2015-02-12', NULL, 15000, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 'mustafa', NULL, '2014-12-15 04:59:09', '2014-12-16 08:02:58'),
(17, 4, 'files/photos/54c4e58d-a7dc-442c-8e5f-1a316715296b.jpg', 'Data Networks', 1, 'ongoing', 0, '2015-01-23', '2015-02-28', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'যেকোন ব্যক্তি এই কোর্সটি করতে পারবেন।', NULL, 'যেকোন ব্যক্তি এই কোর্সটি করতে পারবেন। কোর্সটি একেবারে কোর্সটি করতে পারবেন শুরু হবে। তাই সবাই সহজে বুঝতে পারবেন। কোর্সটি একেবারে কোর্সটি করতে পারবেন। ', NULL, '4', '1', NULL, NULL, '2015-01-25 07:46:05', '2015-01-26 23:44:20'),
(18, 5, 'files/photos/54c5c2ff-77fc-4d1a-a6c3-6a326715296b.jpg', 'e-Government Management', 1, 'ongoing', 0, '0000-00-00', '0000-00-00', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', NULL, NULL, '2015-01-25 23:30:55', '2015-01-28 05:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `course_lessons`
--

CREATE TABLE IF NOT EXISTS `course_lessons` (
`id` int(8) unsigned NOT NULL,
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
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `course_lessons`
--

INSERT INTO `course_lessons` (`id`, `course_id`, `lesson_id`, `previous_lesson`, `start_date`, `end_date`, `start_period`, `end_period`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(12, 12, 13, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:06:31', '2014-12-15 05:06:31'),
(13, 12, 14, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:17:27', '2014-12-15 05:17:27'),
(14, 13, 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:25:03', '2014-12-15 05:25:03'),
(15, 12, 16, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:26:42', '2014-12-15 05:26:42'),
(16, 14, 17, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:35:05', '2014-12-15 05:35:05'),
(17, 14, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:37:58', '2014-12-15 05:37:58'),
(18, 15, 19, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:52:06', '2014-12-15 05:52:06'),
(19, 16, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 07:19:43', '2014-12-15 07:19:43'),
(20, 13, 21, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-16 04:27:46', '2014-12-16 04:27:46'),
(21, 14, 22, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-16 05:02:37', '2014-12-16 05:02:37'),
(22, 16, 23, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-16 10:12:14', '2014-12-16 10:12:14'),
(23, 15, 24, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-16 10:22:18', '2014-12-16 10:22:18'),
(24, 17, 25, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 07:54:27', '2015-01-25 07:54:27'),
(25, 17, 26, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 08:07:01', '2015-01-25 08:07:01'),
(26, 17, 27, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 08:12:20', '2015-01-25 08:12:20'),
(27, 17, 28, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 08:17:14', '2015-01-25 08:17:14'),
(28, 17, 29, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 08:23:33', '2015-01-25 08:23:33'),
(29, 18, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 23:46:20', '2015-01-25 23:46:20'),
(30, 18, 31, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 23:58:13', '2015-01-25 23:58:13'),
(31, 18, 32, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-26 00:00:26', '2015-01-26 00:00:26'),
(35, 18, 36, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-26 00:16:32', '2015-01-26 00:16:32'),
(36, 18, 37, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-26 01:08:35', '2015-01-26 01:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `course_users`
--

CREATE TABLE IF NOT EXISTS `course_users` (
`id` int(8) unsigned NOT NULL,
  `user_id` int(8) unsigned NOT NULL,
  `course_id` int(8) unsigned NOT NULL DEFAULT '0',
  `lessonid` int(7) NOT NULL,
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
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `course_users`
--

INSERT INTO `course_users` (`id`, `user_id`, `course_id`, `lessonid`, `active`, `archive`, `from_timestamp`, `user_type`, `completed`, `score`, `issued_certificate`, `comments`, `to_timestamp`, `created`, `modified`) VALUES
(1, 9, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-16 10:30:30', '2014-12-16 10:30:51'),
(2, 6, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-16 12:34:31', '2014-12-16 12:38:31'),
(3, 6, 15, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-16 23:24:52', '2014-12-16 23:24:52'),
(4, 8, 13, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-16 23:57:58', '2014-12-16 23:57:58'),
(5, 4, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-17 01:32:39', '2014-12-17 01:32:39'),
(6, 4, 15, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-17 01:44:55', '2014-12-17 01:44:55'),
(7, 14, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-17 02:32:28', '2014-12-17 02:32:28'),
(8, 14, 13, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-17 02:34:15', '2014-12-17 02:34:15'),
(9, 4, 13, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-17 02:37:39', '2014-12-17 02:37:39'),
(10, 8, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-17 04:09:16', '2014-12-17 04:09:16'),
(11, 12, 15, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-18 01:14:02', '2014-12-18 01:14:02'),
(12, 8, 15, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-18 02:05:20', '2014-12-18 02:05:20'),
(13, 12, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-18 02:51:15', '2014-12-18 02:51:15'),
(14, 10, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-24 10:52:55', '2014-12-24 10:52:55'),
(15, 26, 16, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-22 03:44:25', '2015-01-22 03:44:25'),
(16, 28, 16, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-22 05:18:01', '2015-01-22 05:18:01'),
(17, 28, 13, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-22 06:14:40', '2015-01-22 06:14:40'),
(18, 28, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-23 03:23:54', '2015-01-23 03:23:54'),
(19, 28, 15, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-23 03:38:13', '2015-01-23 03:38:13'),
(20, 26, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-23 04:06:20', '2015-01-23 04:06:20'),
(21, 4, 16, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-23 06:32:13', '2015-01-23 06:32:13'),
(22, 26, 15, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-23 07:30:25', '2015-01-23 07:30:25'),
(23, 26, 14, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-23 08:58:19', '2015-01-23 08:58:19'),
(24, 25, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-24 00:00:14', '2015-01-24 00:00:14'),
(25, 27, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-24 08:59:54', '2015-01-24 08:59:54'),
(26, 10, 13, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-26 01:16:39', '2015-01-26 01:16:39'),
(27, 4, 18, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-27 02:37:18', '2015-01-27 02:37:18'),
(28, 4, 17, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2015-01-27 04:07:10', '2015-01-27 04:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `course_usrgroups`
--

CREATE TABLE IF NOT EXISTS `course_usrgroups` (
`id` int(8) unsigned NOT NULL,
  `course_id` int(8) unsigned NOT NULL,
  `usrgroup_id` int(8) unsigned NOT NULL,
  `user_type` varchar(50) DEFAULT 'student',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
`id` int(8) unsigned NOT NULL,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `entityID` varchar(255) DEFAULT NULL,
  `entity_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
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
-- Table structure for table `exams`
--

CREATE TABLE IF NOT EXISTS `exams` (
`id` int(8) unsigned NOT NULL,
  `content_id` int(8) unsigned NOT NULL DEFAULT '0',
  `lesson_id` int(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `duration_in_minute` int(8) unsigned DEFAULT '0',
  `test_repetitions` int(8) unsigned DEFAULT '1',
  `maintain_history` tinyint(1) DEFAULT '0',
  `mastery_score` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `publish` tinyint(1) DEFAULT '1',
  `show_question_one_by_one` tinyint(1) DEFAULT '0',
  `move_only_forward` tinyint(1) DEFAULT '0',
  `submit_action` text,
  `shuffle_answer` tinyint(1) DEFAULT '0',
  `shuffle_question` tinyint(1) DEFAULT '0',
  `display_ordered_list` tinyint(1) DEFAULT '0',
  `test_can_be_paused` tinyint(1) DEFAULT '0',
  `display_weights_during_test` tinyint(1) DEFAULT '0',
  `force_student_to_answer_all_question` tinyint(1) DEFAULT '0',
  `retain_best_score` tinyint(1) DEFAULT '0',
  `description` text,
  `keep_best` tinyint(1) DEFAULT '0',
  `options` text,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `exams_questions`
--

CREATE TABLE IF NOT EXISTS `exams_questions` (
`id` int(8) unsigned NOT NULL,
  `exam_id` int(8) unsigned NOT NULL DEFAULT '0',
  `question_id` int(8) unsigned NOT NULL DEFAULT '0',
  `weight` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `previous_question_id` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE IF NOT EXISTS `faqs` (
`id` int(8) NOT NULL,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE IF NOT EXISTS `forums` (
`id` int(8) unsigned NOT NULL,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `comments` text,
  `rate` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` varchar(128) NOT NULL,
  `modified_by` varchar(128) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `model_name`, `model_foreign_key`, `title`, `status`, `comments`, `rate`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(3, 'Lesson', 11, 'Lesson 2 with Blog and Forum', 1, 'এগিয়ে যান ....', 19, '2014-12-12 06:06:27', '2014-12-17 01:59:15', '', ''),
(4, 'Lesson', 12, 'Lesson 3', 1, 'ভাল উদ্যোগ', 20, '2014-12-13 00:03:42', '2014-12-17 01:59:56', '', ''),
(5, 'Lesson', 13, 'Clone Stamp Tool', 1, 'বিস্তারিত তথ্য?', 0, '2014-12-15 05:06:31', '2014-12-17 01:55:03', '', ''),
(6, 'Lesson', 14, ' Eraser Too', 1, 'প্রশংসনীয়', 15, '2014-12-15 05:17:27', '2014-12-17 01:57:25', '', ''),
(7, 'Lesson', 15, ' Drawing basic shapes', 1, 'বিস্তারিত তথ্য?', 12, '2014-12-15 05:25:03', '2014-12-17 01:56:02', '', ''),
(8, 'Lesson', 16, 'Drawing Pencil Tool', 1, 'হ্যাঁ, ভাল উদ্যোগ', 14, '2014-12-15 05:26:42', '2014-12-17 01:56:57', '', ''),
(9, 'Lesson', 17, ' Typography', 1, 'বিস্তারিত তথ্য?', 22, '2014-12-15 05:35:05', '2014-12-17 02:00:52', '', ''),
(10, 'Lesson', 18, 'FOrm', 1, 'এগিয়ে যান ....', 16, '2014-12-15 05:37:58', '2014-12-17 01:57:57', '', ''),
(11, 'Lesson', 19, 'CSS3 selector', 1, 'ভাল উদ্যোগ', 11, '2014-12-15 05:52:06', '2014-12-17 01:55:41', '', ''),
(12, 'Lesson', 20, 'Java script Core', 1, 'প্রশংসনীয়', 18, '2014-12-15 07:19:43', '2014-12-17 01:58:52', '', ''),
(13, 'Lesson', 21, 'Drawing Pencil Tool ', 1, 'প্রশংসনীয়', 13, '2014-12-16 04:27:46', '2014-12-17 01:56:25', '', ''),
(14, 'Lesson', 22, 'Table', 1, 'এগিয়ে যান ....', 21, '2014-12-16 05:02:37', '2014-12-17 02:00:23', '', ''),
(15, 'Lesson', 23, 'Java script BOM ', 1, 'ভাল উদ্যোগ', 17, '2014-12-16 10:12:14', '2014-12-17 01:58:21', '', ''),
(16, 'Lesson', 24, 'CSS3 Pseudo-class Selecto..', 1, 'এগিয়ে যান ....', 0, '2014-12-16 10:22:18', '2014-12-17 01:55:14', '', ''),
(17, NULL, 0, 'এডভান্সড ফটোশপ   ', 1, 'হ্যাঁ, ভাল উদ্যোগ   ', 1, '2014-12-17 01:20:16', '2014-12-17 01:20:16', '', ''),
(18, NULL, 0, 'পাঠ-1: এইচটিএমএল এলিমেন্ট   ', 1, 'এগিয়ে যান ....   ', 7, '2014-12-17 01:22:05', '2014-12-17 01:22:05', '', ''),
(19, NULL, 0, 'পাঠ-1: থিম   ', 1, 'বিস্তারিত তথ্য?   ', 5, '2014-12-17 01:23:06', '2014-12-17 01:23:06', '', ''),
(20, NULL, 0, 'পাঠ-1: পিএইচপি ইনস্টলেশন   ', 1, 'ভাল উদ্যোগ   ', 8, '2014-12-17 01:24:20', '2014-12-17 01:24:20', '', ''),
(21, NULL, 0, 'পাঠ-1: মাইএসকিউএল 5.7   ', 1, 'বিস্তারিত তথ্য?   ', 6, '2014-12-17 01:25:36', '2014-12-17 01:25:36', '', ''),
(22, NULL, 0, 'পাঠ-2: পিএইচপি ভেরিয়েবল   ', 1, 'প্রশংসনীয়   ', 8, '2014-12-17 01:26:55', '2014-12-17 01:26:55', '', ''),
(23, NULL, 0, 'পাঠ-2: প্লাগইন   ', 1, 'এগিয়ে যান ....', 10, '2014-12-17 01:28:09', '2014-12-17 01:28:09', '', ''),
(24, NULL, 0, 'পাঠ-2: মাইএসকিউএল রেপ্লিকেশন টিউটোরিয়াল   ', 1, 'প্রশংসনীয়   ', 3, '2014-12-17 01:29:16', '2014-12-17 01:29:16', '', ''),
(25, NULL, 0, 'পাঠ-2:এইচটিএমএল ট্যাগ   ', 0, 'বিস্তারিত তথ্য?', 4, '2014-12-17 01:30:44', '2014-12-17 01:30:44', '', ''),
(26, NULL, 0, 'বেসিক ফটোশপ   ', 1, 'হ্যাঁ, ভাল উদ্যোগ', 2, '2014-12-17 01:31:38', '2014-12-17 01:31:38', '', ''),
(27, NULL, 0, 'পাঠ-2: প্লাগইন', 1, 'প্রশংসনীয়', 9, '2014-12-17 01:34:42', '2014-12-17 01:34:42', '', ''),
(28, 'Lesson', 25, 'Introduction', 1, NULL, 0, '2015-01-25 07:54:28', '2015-01-25 07:54:28', '', ''),
(29, 'Lesson', 26, 'Types of Networks', 1, NULL, 0, '2015-01-25 08:07:01', '2015-01-25 08:07:01', '', ''),
(30, 'Lesson', 27, 'Network Carriers', 1, NULL, 0, '2015-01-25 08:12:20', '2015-01-25 08:12:20', '', ''),
(31, 'Lesson', 28, 'Other Network Ideas', 1, NULL, 0, '2015-01-25 08:17:14', '2015-01-25 08:17:14', '', ''),
(32, 'Lesson', 29, 'Quick Quiz', 1, NULL, 0, '2015-01-25 08:23:33', '2015-01-25 08:23:33', '', ''),
(33, 'Lesson', 30, 'Lesson 01', 1, NULL, 0, '2015-01-25 23:46:20', '2015-01-25 23:46:20', '', ''),
(34, 'Lesson', 31, 'Lesson-03: e-Government Architecture and Systems', 1, NULL, 0, '2015-01-25 23:58:13', '2015-01-25 23:58:13', '', ''),
(35, 'Lesson', 32, 'Lesson-02: e-Government', 1, NULL, 0, '2015-01-26 00:00:27', '2015-01-26 00:00:27', '', ''),
(36, 'Lesson', 33, 'Lesson-04: Networked Government ', 1, NULL, 0, '2015-01-26 00:02:31', '2015-01-26 00:02:31', '', ''),
(37, 'Lesson', 34, 'Lesson-05: Data Management', 1, NULL, 0, '2015-01-26 00:08:54', '2015-01-26 00:08:54', '', ''),
(38, 'Lesson', 35, 'Lesson-04: Networked Government', 1, NULL, 0, '2015-01-26 00:10:33', '2015-01-26 00:10:33', '', ''),
(39, 'Lesson', 36, 'lesson 04: Networked Government', 1, NULL, 0, '2015-01-26 00:16:32', '2015-01-26 00:16:32', '', ''),
(40, 'Lesson', 37, 'Lesson 5: Networked Government', 1, NULL, 0, '2015-01-26 01:08:35', '2015-01-26 01:08:35', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `glossary`
--

CREATE TABLE IF NOT EXISTS `glossary` (
`id` int(8) unsigned NOT NULL,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `info` text,
  `type` varchar(20) NOT NULL DEFAULT 'general',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE IF NOT EXISTS `lessons` (
`id` int(8) unsigned NOT NULL,
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
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `category_id`, `image`, `name`, `price`, `active`, `show_catalog`, `duration`, `access_limit`, `options`, `course_only`, `certificate`, `from_timestamp`, `to_timestamp`, `shift`, `publish`, `share_folder`, `max_users`, `archive`, `instance_source`, `originating_course`, `description`, `objectives`, `assessment`, `topics`, `resources`, `info`, `learning_method`, `subject`, `publisher`, `contributor`, `type`, `format`, `identifier`, `source`, `relation`, `coverage`, `rights`, `is_current`, `is_upcoming`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(13, 2, 'files/photos/548eb2a7-7860-470f-b833-23d86715296b.jpg', 'Clone Stamp Tool', 200, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:06:31', '2014-12-15 05:06:31'),
(14, 2, 'files/photos/548eb537-0e94-461a-94d0-2b2e6715296b.jpg', ' Eraser Too', 500, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:17:27', '2014-12-15 05:17:27'),
(15, 2, 'files/photos/548eb6ff-bf60-40f1-9ac7-5a506715296b.jpg', ' Drawing basic shapes', 500, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:25:03', '2014-12-15 05:25:03'),
(16, 2, 'files/photos/548eb762-febc-4ed1-9662-5a596715296b.jpg', 'Drawing Pencil Tool', 400, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:26:42', '2014-12-15 05:26:42'),
(17, 2, 'files/photos/548eb959-deb4-4aed-a61a-5a506715296b.jpg', ' Typography', 400, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:35:05', '2014-12-15 05:35:05'),
(18, 2, 'files/photos/548eba36-cc8c-47dc-b44f-2a3f6715296b.jpg', 'Form', 600, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:37:58', '2014-12-15 05:38:46'),
(19, 2, 'files/photos/548ebd56-3b54-4119-9469-26ea6715296b.jpg', 'CSS3 selector', 600, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 05:52:06', '2014-12-15 05:52:06'),
(20, 2, 'files/photos/548ed1de-e6e8-42a2-a200-66de6715296b.jpg', 'Java script Core', 2000, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-15 07:19:42', '2014-12-15 07:19:42'),
(21, 2, 'files/photos/548ffb12-1e84-4f28-8b12-270a6715296b.png', 'Drawing Pencil Tool ', 400, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-16 04:27:46', '2014-12-16 04:27:46'),
(22, 2, 'files/photos/5490033c-f000-416d-949e-31e66715296b.jpg', 'Table', 500, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-16 05:02:36', '2014-12-16 05:02:36'),
(23, 2, 'files/photos/54904bcd-5768-49f2-a4aa-1b286715296b.jpg', 'Java script BOM ', 1000, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-16 10:12:13', '2014-12-16 10:12:13'),
(24, 2, 'files/photos/54904e2a-0690-48f7-985b-1d4e6715296b.jpg', 'CSS3 Pseudo-class Selecto..', 400, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-16 10:22:18', '2014-12-16 10:22:18'),
(25, 4, 'files/photos/54c4e783-4f64-4596-a886-37566715296b.jpg', 'Data Networks', NULL, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 07:54:27', '2015-01-25 07:54:27'),
(26, 4, 'files/photos/54c4ea74-21a8-4853-9b68-37566715296b.jpg', 'Types of Networks', NULL, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 08:07:00', '2015-01-25 08:07:00'),
(27, 4, 'files/photos/54c4ebb4-384c-44c6-a777-39d76715296b.png', 'Network Carriers', NULL, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 08:12:20', '2015-01-25 08:12:20'),
(28, 4, 'files/photos/54c4ecda-2338-481d-956b-39d56715296b.jpg', 'Other Network Ideas', NULL, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 08:17:14', '2015-01-25 08:17:14'),
(29, 4, 'files/photos/54c4ee54-7b14-47b1-8ed7-39d56715296b.jpg', 'Quick Quiz', NULL, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 08:23:33', '2015-01-25 08:23:33'),
(30, 5, 'files/photos/54c5c69c-d1e8-48ec-ae0d-678e6715296b.jpg', 'Lesson 01- Introduction', NULL, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 23:46:20', '2015-01-25 23:53:54'),
(31, 5, 'files/photos/54c5c965-cb7c-4bc7-9a75-6a3b6715296b.jpg', 'Lesson-02: e-Government ', NULL, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-25 23:58:13', '2015-01-28 01:25:31'),
(32, 5, 'files/photos/54c5c9ea-08ec-4c90-8838-67a76715296b.jpg', 'Lesson-03: e-Government Architecture and Systems', NULL, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-26 00:00:26', '2015-01-28 01:26:11'),
(36, 5, 'files/photos/54c5cdaf-c850-4cac-aa09-6a3b6715296b.jpg', 'lesson 04: Networked Government', NULL, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-26 00:16:31', '2015-01-26 00:16:31'),
(37, 5, 'files/photos/54c5d9e3-4e60-4611-81fb-55966715296b.png', 'Lesson 5: Networked Government', 0, 1, 0, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, '<p>This is ....</p>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-26 01:08:35', '2015-01-26 01:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_users`
--

CREATE TABLE IF NOT EXISTS `lesson_users` (
`id` int(8) unsigned NOT NULL,
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
  `total_completed_content` int(11) NOT NULL,
  `completed_content_ids` text NOT NULL,
  `score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `issued_certificate` blob,
  `comments` text,
  `to_timestamp` int(10) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `lesson_users`
--

INSERT INTO `lesson_users` (`id`, `user_id`, `lesson_id`, `active`, `archive`, `from_timestamp`, `user_type`, `positions`, `done_content`, `current_unit`, `completed`, `total_completed_content`, `completed_content_ids`, `score`, `issued_certificate`, `comments`, `to_timestamp`, `created`, `modified`) VALUES
(1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'a:1:{i:0;s:2:"35";}', 0, NULL, NULL, NULL, '2015-01-23 07:16:36', '2015-01-23 07:16:36'),
(2, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'a:1:{i:0;s:2:"35";}', 0, NULL, NULL, NULL, '2015-01-23 07:16:47', '2015-01-23 07:16:47'),
(3, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'a:1:{i:0;s:2:"60";}', 0, NULL, NULL, NULL, '2015-01-23 09:53:08', '2015-01-23 09:53:08'),
(4, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'a:1:{i:0;s:2:"25";}', 0, NULL, NULL, NULL, '2015-01-23 09:54:00', '2015-01-23 09:54:00'),
(5, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'a:1:{i:0;s:2:"23";}', 0, NULL, NULL, NULL, '2015-01-25 03:45:21', '2015-01-25 03:45:21'),
(6, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 'a:1:{i:0;s:2:"23";}', 0, NULL, NULL, NULL, '2015-01-25 03:45:58', '2015-01-25 03:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `login_tokens`
--

CREATE TABLE IF NOT EXISTS `login_tokens` (
`id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `token` char(32) NOT NULL,
  `duration` varchar(32) NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `expires` datetime NOT NULL
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
`id` int(8) unsigned NOT NULL,
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
  `modified` datetime DEFAULT NULL
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
`id` int(8) unsigned NOT NULL,
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
  `modified` datetime DEFAULT NULL
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
`id` int(8) unsigned NOT NULL,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `data` text,
  `expire` date DEFAULT NULL,
  `users_LOGIN` varchar(100) NOT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE IF NOT EXISTS `notices` (
`id` int(8) unsigned NOT NULL,
  `user_id` int(8) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `htmlized_description` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `is_seen` tinyint(4) NOT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
`id` int(8) unsigned NOT NULL,
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
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `model_name`, `model_foreign_key`, `send_interval`, `send_conditions`, `id_type_entity`, `recipient`, `subject`, `message`, `active`, `html_message`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, NULL, 0, 'assd', 'asd', '1', 'as', 'asdf', NULL, 1, 1, NULL, NULL, '2014-12-05 06:17:10', '2014-12-05 06:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `price`, `is_paid`, `created`, `modified`) VALUES
(1, 6, 1500, 0, '2014-12-16 23:26:23', '2014-12-16 23:26:23'),
(2, 8, 1000, 0, '2014-12-16 23:58:30', '2014-12-16 23:58:30'),
(3, 4, 2700, 0, '2014-12-17 01:46:09', '2014-12-17 01:46:09'),
(4, 14, 1200, 0, '2014-12-17 02:33:08', '2014-12-17 02:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
`id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `course_id` int(10) unsigned NOT NULL,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `course_id`, `price`) VALUES
(1, 1, 15, 1500),
(2, 2, 13, 1000),
(3, 3, 12, 1200),
(4, 3, 15, 1500),
(5, 4, 12, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE IF NOT EXISTS `periods` (
`id` int(8) unsigned NOT NULL,
  `lesson_id` int(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL,
  `from_timestamp` datetime NOT NULL,
  `to_timestamp` datetime NOT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
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
`id` int(8) unsigned NOT NULL,
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
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `poll_users`
--

CREATE TABLE IF NOT EXISTS `poll_users` (
`id` int(8) unsigned NOT NULL,
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `poll_id` int(8) unsigned NOT NULL DEFAULT '0',
  `vote` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(8) unsigned NOT NULL,
  `topic_id` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `replyto` int(8) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `topic_id`, `title`, `body`, `replyto`, `rank`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 3, 'একসাথে কাজ করতে পারে টুইটার, ফোরস্কয়ার ', 'এক নতুন রিপোর্টে দাবি করা হয়, টুইটারে অবস্থান তথ্য যুক্ত করার জন্য ফোরস্কয়ার ও টুইটার অংশীদারিত্ব গঠন করতে পারে।  ফোরস্কয়ার একটি লোকেশন ভিত্তিক মোবাইল অ্যাপ যা ব্যবহারকারীকে মোবাইলে ''চেক ইন'' করতে সাহায্য করে। তাই টুইটারে লোকেশন টুইট করতে ফোরস্কয়ার সাহায্য করতে পারে। আগামি বছরের প্রথম দিকে টুইটার ''জিও বেজড'' এই নতুন ফিচার নিয়ে আসতে পারে।  টুইটার ইতোমধ্যে কিছু লোকেশন ভিত্তিক ফিচার প্রদান করেছে। যেখানে ব্যবহারকারী লোকেশন শেয়ার করতে পারে। তবে বর্তমানে পৃথক টুইটে গভীরে অবস্থান নির্দেশ করতে পারেনা। লোকেশন ভিত্তিক তথ্য টুইটার সেবাকে আরও উন্নত করবে।  উল্লেখ্য, অংশীদারিত্ব গঠনের ব্যাপারে টুইটার ও ফোরস্কয়ার কোন মন্তব্য করেনি। ', 1, 3, 'admin', NULL, '2014-12-18 01:24:01', '2014-12-18 01:24:01'),
(2, 3, 'ভারতে নিষিদ্ধ হল ওয়ানপ্লাস ওয়ান স্মার্টফোন', 'সায়ানোজেন ওএস চালিত স্মার্টফোন সংক্রান্ত জটিলতায় ভারতে এবার নিষিদ্ধ হল চীনের ওয়ানপ্লাস স্মার্টফোনের একটি বিশেষ মডেল। ভারতের স্মার্টফোন নির্মাতা প্রতিষ্ঠান মাইক্রোম্যাক্সের এক আবেদনের পরিপ্রেক্ষিতে এই নিষেধাজ্ঞা আরোপ করে দিল্লী হাইকোর্ট।  মাইক্রোম্যাক্স জানায়, ভারতে সায়ানোজেন অপারেটিং সিস্টেম চালিত স্মার্টফোন বিক্রির জন্য সায়ানোজেনের সাথে বিশেষ চুক্তি করেছে প্রতিষ্ঠানটি। এর ফলে দেশটিতে এই ওএস চালিত স্মার্টফোন একমাত্র মাইক্রোম্যাক্সই বিক্রি করতে পারবে। তবে এটি জানার পরও ওয়ানপ্লাস চলতি মাসের ২ তারিখে ভারতে সায়ানোজেন চালিত স্মার্টফোন বিক্রি শুরু করে। এর ফলে বিপুল আর্থিক ক্ষতির মুখে পড়তে পারে প্রতিষ্ঠানটি।  মাইক্রোম্যাক্সের আবেদন বিবেচনায় নিয়ে দেশটিতে সায়ানোজেন ওএস চালিত ওয়ানপ্লাস ওয়ান স্মার্টফোন আমদানি এবং বিক্রির উপর নিষেধাজ্ঞা আরোপ করে দিল্লী হাইকোর্ট। তবে অ্যামাজন.ইনের স্টকে থাকা স্মার্টফোনগুলো বিক্রির অনুমতিও দিয়েছে আদালত।', 1, 1, 'admin', NULL, '2014-12-18 01:26:08', '2014-12-18 01:26:08'),
(3, 2, 'সৌরজগতের কক্ষপথ চিহ্নিত করবে ডিএসএলআর ক্যামেরা !!!', 'আপনার ডিএসএলআর দিয়েই চিহ্নিত করতে পারবেন এক্সোপ্লানেট। এক্সোপ্লানেট হচ্ছে সৌরসিস্টেমের বাইরে তারকা কক্ষপথের একটি গ্রহ।  সৌরজগতের গ্রহ, নক্ষত্র ও কক্ষপথ চিহ্নিত করার জন্য বহু শতাব্দী ধরেই বিজ্ঞানীরা অনেক আধুনিক প্রযুক্তির আবিষ্কার করেছেন। গ্রহ নক্ষত্র চিহ্নিত করতে এতদিন আমরা টেলিস্কোপ ব্যবহার করেছি। তবে এখন আর গ্রহ, নক্ষত্র ও কক্ষপথ চিহ্নিত করতে টেলিস্কোপ লাগবেনা বরং আপনার ডিএসএলআরটিই যথেষ্ট।  একজন অপেশাদার জ্যোতির্বিজ্ঞানী ডেভিড স্নেইডার একটি ডিজিটাল ক্যামেরা, কিছু পাতলা কাঠ, মৌলিক ইলেকট্রনিক্স এবং একটি জুম লেন্স ব্যবহার করে প্রায় ৬৩ আলোকবর্ষ দূরে একটি তারকা সিস্টেমের মধ্যে একটি গ্রহ চিহ্নিত করতে পেরেছেন।  যখনি একটা গ্রহ তাদের তারকার সামনে দিয়ে অতিক্রম করে তখন এটি তারকার উজ্জ্বলতার সৃষ্টি করে। এক্সোপ্লানেট(exoplanet) দ্বারা সৃষ্ট এই অস্থায়ী ডিমিং ট্রানজিট সনাক্তকরণ দ্বারা মনিটরিং করা হয়। স্নেইডার এই অস্থায়ী ট্রানজিট ডিএসএলআর দিয়ে ঘরে বসেই কি করে সৌরজগতের কক্ষপথ দেখা সম্ভব তা বর্ণনা করেছেন।  এর জন্য আপনার যা যা দরকার তা হচ্ছে:  ১) ৩০০ মিলিমিটার টেলি-ফটো লেন্সের একটা রেগুলার ডিজিটাল ক্যামেরা।  ২) দুই টুকরা পাতলা পাতলা শক্ত কাঠ  ৩) স্বয়ংক্রিয়ভাবে ডিভাইস কাত করার জন্য (Arduino)আরডুইনো মাইক্রোপ্রসেসর।  সবগুলো উপাদান সংগ্রহ করার পরে আপনাকে তারকা রেখাযুক্ত লক্ষ্য-দর্শক খুঁজে বের করে ক্যামেরা দিয়ে ছবি তুলতে থাকতে হবে। আই ত্রিপলই (IEEE) স্পেকট্রামে লেখা স্নেইডারের দেয়া তথ্য অনুসারে কক্ষপথে এক্সোপ্লেনেট চিহ্নিত করার লক্ষ্যে চেক অ্যাস্ট্রোনমিক্যাল সোসাইটি একটি দরকারি অনলাইন টুল প্রদান করে। যা বর্তমানে বর্তমানে কিছু নির্ধারিত রক্ষণাবেক্ষণের জন্য বন্ধ আছে।  তিনঘণ্টাব্যাপী তোলা ছবি ও একটি অনলাইন সফটওয়্যার আইরিশ এর সাহায্যে স্নেইডার তারকার উজ্জ্বলতার পরিবর্তন গণনা করে সংগ্রহ করেন ও একটি গ্রাফের সাহায্যে সর্বাধিক উজ্জ্বলতা নির্দেশ করে সৌর সিস্টেমের বাইরে একটি গ্রহের কক্ষপথে সনাক্ত করতে সক্ষম হন। ', 1, 1, 'admin', NULL, '2014-12-18 01:28:56', '2014-12-18 01:28:56'),
(4, 4, 'পেন টুলসের ব্যবহারটা আরো বিস্তারিত ভাবে দেখানো হল এই লেকচারে', 'এতে আমরা টুলসের ব্যহার সম্পর্কে একটা সহজ ধারনা পাবো সবশেষে একটি অনুপ্রেরণামূলক স্যাম্পল পোস্টার ডিজাইন তৈরি করব। এতে আমরা টুলসের ব্যবহার সম্পর্কে একটা সহজ ধারনা পাবো। 7ম লেকচার এই ইউনিট শেষ করুন 9ম লেকচার অগ্রগতি অগ্রগতি ক্যালেন্ডার পারফর্মেল রেকর্ড পূর্বের কোন রেকর্ড নাই। রিসোর্সেস ঘোষণা কোন ঘোষণা নাই', 0, 1, 'admin', NULL, '2014-12-18 01:30:53', '2014-12-18 01:30:53'),
(5, 2, 'মাত্র ৪ ঘণ্টায় পৃথিবীর যেকোনো স্থানে পৌঁছাবে যে প্লেন', 'ব্রিটিশ এরোস্পেস ফার্ম রিঅ্যাকশন ইঞ্জিনস লিমিটেড এমন একটি ইঞ্জিন নিয়ে কাজ করছেন যা কিনা একসাথে ৩০০ যাত্রী নিয়ে পৃথিবীর যেকোনো স্থানে পৌঁছাতে পারবে মাত্র ৪ ঘণ্টায়। শুধু তাই নয়, এই ইঞ্জিন দ্বারা এমন প্লেন তৈরি সম্ভব যা কিনা মহাশূন্যেও যাত্রা করতে পারবে।  এই বিশেষ ইঞ্জিন সিস্টেমকে বলা হয় SABRE। এটি একটি প্রি-কুলার প্রযুক্তির সাহায্যে তৈরি ইঞ্জিন যা ইঞ্জিনের ভেতরে আগত ১০০০ ডিগ্রি সেলসিয়াসের গরম বাতাসকে .০১ সেকেন্ডে ঠাণ্ডা করতে সক্ষম। ফলে প্লেনের ভেতরের অক্সিজেনের পরিমাণ সঠিকভাবে বজায় রাখতে পারে। অর্থাৎ ইঞ্জিনটি বর্তমানের সকল শক্তিশালী ইঞ্জিন হতে অধিক পাওয়ারে চলতে পারবে।  রিঅ্যাকশন ইঞ্জিনস কোম্পানির মতে, সাবরে এমন দুটি প্লেন মডেলে ব্যবহার করা হবে যার একটি হচ্ছে ল্যাপক্যাট এ২ যা ব্রাসেলস থেকে সিডনীতে যাত্রী পরিবহন করতে পারবে মাত্র ২-৪ ঘণ্টার মধ্যে। এছাড়া অল্প খরচে মহাশূন্য যাত্রার জন্য স্কাইলন নামের পাইলটবিহীন স্পেস প্লেনে এই ইঞ্জিন ব্যবহারের সিদ্ধান্ত নেয়া হয়েছে। যদিও বিশেষভাবে তৈরি এসব প্লেনে থাকবেনা কোন জানালা।  রিঅ্যাকশন ইঞ্জিনস প্রতিষ্ঠানটি সাবরে (SABRE) ইঞ্জিনের একটি পরীক্ষামূলক ফ্লাইট পরিচালনা করবে ২০১৯ সালে।', 1, 2, 'admin', NULL, '2014-12-18 01:31:08', '2014-12-18 01:31:25'),
(6, 5, 'এই শীতে চুলের সঠিক পরিচর্যায় যা করণীয়', ' বাতাসে আদ্রতার অভাবে শীতকালে ত্বকের মতোই চুলও হয়ে যায় শুষ্ক ও নির্জীব। তাই এই সময় পুরো শরীরেরই যত্ন নিতে হয় সঠিক ভাবে। সুস্থ দেহের পাশাপাশি সুস্থ ও মোলায়েম চুলের জন্য চাই সঠিক উইন্টার কেয়ার। তাই আপনার জন্য আমরা নিয়ে এলাম সেই রকমই কয়েকটি উইন্টার কেয়ারের উপায়। যা করবেন  - নারকেল তেল গরম করে জবা ফুলের রস, লেবু, মধু ও অলিভ অয়েল পরিমান মতো নিয়ে একসাথে মিশিয়ে চুলের গোড়ায় ভাল করে লাগান। হালকা হাতে মাথার তালুতে কিছুক্ষণ ম্যাসেজ করুন। এতে চুলের গোড়ায় ভাল করে তেল ঢুকবে। এর এক ঘণ্টা বাদে শ্যাম্পু করুন। শ্যাম্পুর ক্ষেত্রে প্রোটিন সমৃদ্ধ হার্বাল শ্যাম্পু ব্যবহার করুন। শ্যাম্পু করার সময় কম পরিমান শ্যাম্পু নিয়ে বেশি করে পানি দিয়ে চুল ধোবেন। এতে চুল রুক্ষ হবে না। চুলের ময়েসচার ধরে রাখার জন্য শ্যাম্পু করার পর অবশ্যই কন্ডিশনার ব্যবহার করুন। ভাল কন্ডিশনার নিয়ে চুলের ডগায় ভাল করে লাগিয়ে নিন। দু,মিনিট পরে পানি দিয়ে ধুয়ে নিন। এতে চুল নরম হবে ও চুলে জট পড়বে না।  - শীতকালে অনেকেরই খুশকির সমস্যা দেখা দেয়। এই সমস্যা থেকে মুক্তি পেতে মেথিগুঁড়ো আর দই মিশিয়ে নিন। ইচ্ছে হলে এর সাথে আমলকী ও লেবুর রসও দিতে পারেন। মিশ্রণটি চুলের গোড়ায় ও মাথার ত্বকে লাগান। একঘণ্টা পরে শ্যাম্পু করে ফেলুন। নিয়মিত ব্যবহার করলে খুশকির সমস্যা একটু কমবে - See more at: http://www.priyo.com/2014/12/14/123328.html#sthash.GEyD1eWU.dpuf', 1, 1, 'admin', NULL, '2014-12-18 01:36:13', '2014-12-18 01:36:13'),
(7, 6, ' টুলস দ্বারা ডিজাইন 8ম দিন', 'সেই সাতে সাথে আমাদের 1ম পর্ব শেষ। এরপর থেকে আমরা প্রোজেক্টে চলে যাব। আজ আমাদের 5ম লেকচার। আজ আমরা আরও 3টি টুলসের ব্যবহার দেখব এবং সবশেষে একটি অনুপ্রেরণামূলক স্যাম্পল পোস্টার ডিজাইন তৈরি করব। এতে আমরা টুলসের ব্যবহার সম্পর্কে একটা সহজ ধারনা পাবো। আজ আমাদের 5ম লেকচার। আজ আমরা আরও 3টি টুলসের ব্যবহার দেখব এবং সবশেষে একটি অনুপ্রেরণামূলক স্যাম্পল পোস্টার ডিজাইন তৈরি করব। এতে আমরা টুলসের ব্যবহার সম্পর্কে একটা সহজ ধারনা পাবো। আজ আমাদের 8ম লেকচার। আজ আমরা আরও 3টি টুলসের ব্যবহার দেখব এবং সবশেষে একটি অনুপ্রেরণামূলক স্যাম্পল পোস্টার ডিজাইন তৈরি করব। এতে আমরা টুলসের ব্যহার সম্পর্কে একটা সহজ ধারনা পাবো সবশেষে একটি অনুপ্রেরণামূলক স্যাম্পল পোস্টার ডিজাইন তৈরি করব। এতে আমরা টুলসের ব্যবহার সম্পর্কে একটা সহজ ধারনা পাবো। 7ম লেকচার এই ইউনিট শেষ করুন 9ম লেকচার অগ্রগতি অগ্রগতি ক্যালেন্ডার পারফর্মেল রেকর্ড পূর্বের কোন রেকর্ড নাই। রিসোর্সেস ঘোষণা কোন ঘোষণা নাই লেসন অপারেশন 1. প্রিন্ট করুন 2. মন্তব্য করুন 3. পপ আপ উইনভোটে দেখুন ', 8, 1, 'admin', NULL, '2014-12-18 01:36:17', '2014-12-18 01:36:17'),
(8, 5, 'অগ্নি কাণ্ড প্রতিরোধ করতে কী করবেন? জানুন একজন প্রকৌশলীর পরামর্শ ', 'শীতকালে আমাদের দেশে অগ্নি কাণ্ড তুলনামূলক বেড়ে যায়। তাই এসময়ে অগ্নি সচেতনতা বাড়ানো উচিত। বাসা বাড়ি দোকান পাট কলকারখানা গুলোতে যত অগ্নি কাণ্ড হয় তার বেশীরভাগেই ঘটে সচেতনতার অভাবে।  গত ১২ বছর যাবত তৈরী পোশাক কারখানায় প্রকৌশলী পদে কাজ করে আসছি। আমার কর্মস্থলে আমি ফায়ার ফাইটার টিমের প্রধান। বিভিন্ন সময়ে অগ্নি প্রতিরোধে আমার কিছু অভিজ্ঞতা সৃষ্টি হয়েছে। আমি তা আপনাদের সংগে শেয়ার করবো। আশা করছি আপনাদের এতে উপকার হবে। মনে রাখবেন, আপনি যেখানে থাকুন যে পেশাতেই থাকুন না কেন, আগুন কিন্তু আপনার পাশেই আছে। তাই সচেতন এবং অগ্নি প্রতিরোধে আপনার প্রশিক্ষন থাকা জরুরী।  কয়েক বছর পূর্বে নিশ্চিন্তপুরের অগ্নিকাণ্ডের ঘটনাটি নাড়িয়ে দিয়েছিল আমাদের সবার হৃদয়। দুবেলা পেট পুরে ভাত খাবার আশায় গামের্ন্টসে কাজ করতে আসা দেশের পিছিয়ে পড়া গরীব মানুষগুলির পুড়ে কয়লা হয়ে যাওয়া সারি সারি লাশের মিছিল দেখে শোকে কাতর হয়েছিল দেশবাসী। গামের্ন্টস কর্মীদের এমন মৃত্যুতে আমাদের দেশের ভাবমূর্তী নষ্ট হয়ে গিয়েছিল। গামের্ন্টস শিল্পেও নিয়ে এসেছিলো বিপর্যয়। প্রতিবছরে ঘটছে এমন অগ্নিকান্ডের ঘটনা । বিশ্ব মিডিয়ায় আমাদের নিয়ে নেতিবাচক আলোচনা হচ্ছে । মানুষ পুড়ে কয়লা হওয়ায় নিন্দিত হচ্ছে পোশাক কারখানার মালিক।  বাংলাদেশের বিভিন্ন অঞ্চলের গামের্ন্টস ভবন পরিদর্শন করে আমার যে অভিজ্ঞতা হয়েছে তা ভয়াবহ। বেশীর ভাগ ছোট আর মাঝারী গামের্ন্টসগুলো গড়ে উঠেছে আবাসিক ভবনে! যেখানে ফায়ারকোড মানা হয়নি। অনেক কারখানায় ইলেকট্রিক সঞ্চালক লাইনের ক্যাবলগুলো লোড ক্যালকুলেশন করে সংযোগ দেওয়া হয়না। অথাৎ একটি ফোর আরএম ক্যাবল সর্বোচ্চ চল্লিশ ওয়াট লোড নিতে পারবে কিন্তু দেখা গেল সেই ক্যাবলে ৬০ ওয়াট লোড দেওয়া হয়েছে!  এ্যাম্পিয়ার হিসাব করে সঠিক মাপের ব্রেকারও লাগানো হয়না। যার কারনে ওভার লোড বা শট-সার্কিট হলে এমসিসিবি ব্রেকার গুলো কাজ করছে না। ডিবি বোর্ড গুলো নিয়মিত চেকআপ করাও হয়না। ধুলো বা পোকা মাকড়ের কারণেও ঘটতে পারে অগ্নিকান্ড! আর সার্কিট ব্রেকার গুলোর ক্ষমতানুযায়ী লোড দেওয়া না হলে তার থেকে ভাল পারফরমেন্স পাওয়ার প্রশ্নই আসে না। ', 1, 2, 'admin', NULL, '2014-12-18 01:41:35', '2014-12-18 01:41:35'),
(9, 7, 'পাকিস্তান', 'হারাধনের ছেলেদের গল্পটা যে এত নির্মমভাবে ফলে যাবে, তা কে জানত! পাকিস্তানের উত্তর-পশ্চিমাঞ্চলীয় পেশোয়ারে সেনাবাহিনীর পরিচালিত স্কুলে তালেবানের হামলায় নবম শ্রেণির উপস্থিত সব শিক্ষার্থী নিহত হয়েছে। ঘটনার দিন স্কুলে না আসায় বেঁচে গেছে শুধু একজন। পাকিস্তানের ‘দ্য এক্সপ্রেস ট্রিবিউন’ পত্রিকার প্রতিবেদনে জানানো হয়, ১৫ বছর বয়সী সৌভাগ্যবান ওই শিক্ষার্থীর নাম দাউদ ইব্রাহিম। সকলাবেলা ঘড়ির সংকেত কাজ না করায় সেদিন তার স্কুলে যাওয়া হয়নি। পরিবারের সদস্যদের ভাষ্যে পত্রিকাটি জানায়, আগের দিন সোমবার রাতে একটি বিয়ের অনুষ্ঠানে গিয়েছিল দাউদ। পরদিন মঙ্গলবার সে একটু বেশি ঘুমিয়েছিল। সকালে ঘড়ির সংকেত কাজ করেনি। সময়মতো ঘুম থেকে উঠতে না পারায় ওই দিন সে স্কুলে যেতে পারেনি। সৌভাগ্যক্রমে রক্ষা পেয়েছে তার প্রাণ। সে যেন তার বন্ধুদের দাফন দেখতে বেঁচে আছে। বড় ভাই সুফিয়ান ইব্রাহিম বলেন, ‘এটা নিয়তি। তার ক্লাসের কেউ বেঁচে নেই। তাদের সবাইকে হত্যা করা হয়েছে।’ সুফিয়ান জানান, এক দিনে ছয়জন ঘনিষ্ঠ বন্ধুর দাফনে অংশ নিয়েছে দাউদ। সে এখন চুপ হয়ে গেছে। কারও সঙ্গে কথা পর্যন্ত বলছে না। গত মঙ্গলবার পেশোয়ারের আর্মি পাবলিক স্কুলে ৫০০ জন শিক্ষার্থী ছিল। তালেবানের হামলায় তাঁদের মধ্যে ১৩২ জন নিহত হয়েছে। আহত হয়েছে ১২৫ জন। এ ছাড়া এই হামলায় নয়জন শিক্ষক-কর্মকর্তা-কর্মচারীও নিহত হয়েছেন। নিহতদের অধিকাংশই মারা যায় আত্মঘাতী বোমার বিস্ফোরণে। পরে নিরাপত্তা বাহিনীর অভিযানে সব হামলাকারী নিহত হয়। তেহরিক-ই-তালেবান পাকিস্তান (টিটিপি) হামলার দায় স্বীকার করেছে।', 12, 1, 'admin', NULL, '2014-12-18 01:42:43', '2014-12-18 01:42:43'),
(10, 3, 'স্থির ছবি আকর্ষণীয় করে তুলতে ইন্সটাগ্রামের ৫টি আপডেট ', 'বর্তমানে ছবি শেয়ারের জন্য ইন্সটাগ্রাম খুব জনপ্রিয়। সম্প্রতি ফটো শেয়ারিং সাইট ইন্সটাগ্রাম স্থির ছবিকে আরও আকর্ষণীয় করে তুলতে নতুন কিছু আপডেট ঘোষণা করেছে।  ক্রিমা, স্লাম্বার, লিউডওইগ, এডেন ও পারপেচুনা নামের এই ফিচারগুলো ইউজাররা এই লেটেস্ট ভার্সন অ্যাপের ফিল্টার ট্রেতে দেখতে পাবেন। ইন্সটাগ্রামের নিজস্ব ব্লগে বলা হয়, এই ফিল্টারগুলো ছবির রঙ পরিবর্তনের পাশাপাশি ইউজারদের পছন্দ অনুযায়ী ছবির চেহারা পাল্টে দিবে। এছাড়া এই অ্যাপ একটা প্রিভিউ ব্যবহার করে যা ইউজারের আসল ছবিটি ফিল্টারের মাঝে জমা রাখে। - See more at: http://www.priyo.com/2014/12/17/123849.html#sthash.Fy0yVh4m.dpuf', 1, 4, 'admin', NULL, '2014-12-18 01:43:26', '2014-12-18 01:43:26'),
(11, 9, 'যে মোবাইলের বিক্রি বেশি', 'এ বছরের তৃতীয় প্রান্তিক অর্থাৎ জুলাই থেকে সেপ্টেম্বর মাস পর্যন্ত বিশ্বজুড়ে স্মার্টফোন বিক্রি ২০.৩ শতাংশ পর্যন্ত বেড়েছে। বাজার গবেষণা প্রতিষ্ঠান গার্টনারের বিশ্লেষকেরা বলছেন, উন্নয়নশীল দেশগুলোর বাজারে স্মার্টফোনের বিক্রি বেশি হওয়ায় তৃতীয় প্রান্তিকে স্মার্টফোনের বাজার বেশি চাঙা দেখা গেছে। এক খবরে এ তথ্য জানিয়েছে পিটিআই। স্মার্টফোনের বিক্রি বেড়ে যাওয়া এবং ফিচার ফোনের প্রতি মানুষের আগ্রহ কমে যাওয়ায় গার্টনারের ভবিষ্যত্দ্বাণী হচ্ছে, ২০১৮ সাল নাগাদ বাজারে বিক্রি হওয়া ১০টি ফোনের মধ্যে নয়টিই হবে স্মার্টফোন। এ বছরে শুধু স্মার্টফোনের বিক্রি ১২০ কোটি ইউনিট ছাড়িয়ে যাবে। গার্টনারের গবেষণা পরিচালক রবার্তো কোজা জানিয়েছেন, এ বছরের তৃতীয় প্রান্তিকে ফিচার ফোনের বিক্রি বিশ্বজুড়ে ২৫ শতাংশ কমে গেছে আর এর কারণ হচ্ছে স্মার্টফোন ও ফিচার ফোনের দামের ব্যবধান কমে যাওয়া। মানুষ এখন কম দামে অ্যান্ড্রয়েডনির্ভর স্মার্টফোনে ঝুঁকছে বলে ফিচার ফোনে আগ্রহ দেখাচ্ছে না। বাজার গবেষকদের মতে, এ বছরের তৃতীয় প্রান্তিকে পূর্ব ইউরোপ, মধ্যপ্রাচ্য ও আফ্রিকায় বেশি স্মার্টফোন বিক্রি হয়েছে। এ অঞ্চলে স্মার্টফোন বিক্রির হার ৫০ শতাংশ পর্যন্ত বেড়েছে। স্মার্টফোনের বাজারে শীর্ষস্থান ধরে রেখেছে স্যামসাং। যদিও ২০১৩ সালের তুলনায় বাজারে স্যামসাংয়ের দখল কমেছে। ২০১৩ সালের তৃতীয় প্রান্তিকে স্মার্টফোনের বাজারে স্যামসাংয়ের দখল ছিল ৩২.১ শতাংশ কিন্তু এ বছর তা কমে ২৪.৪ শতাংশ হয়েছে। এরপরের অবস্থানে রয়েছে অ্যাপল (১২.২শতাংশ), হুয়াউয়ে (৫.৩শতাংশ) ও জিওমি (৫.২ শতাংশ)।  গার্টনারের গবেষকেরা জানিয়েছেন, কম দাম ও উন্নত যন্ত্রাংশযুক্ত স্মার্টফোন তৈরি করে চীনের ব্র্যান্ডগুলো বাজারে ভালোমতো জায়গা করে নিয়েছে। যাঁরা অ্যাপল ও স্যামসাংয়ের বেশি দামের ফোন কিনতে পারেন না, তাঁদের স্মার্টফোনের উন্নত অভিজ্ঞতা দিচ্ছে চীনের বিভিন্ন ব্র্যান্ডের স্মার্টফোনগুলো। স্মার্টফোনের অপারেটিং সিস্টেমের বাজারে একচ্ছত্র আধিপত্য অ্যান্ড্রয়েডের। বাজারের ৮৩.১ শতাংশ দখল করে রেখেছে অ্যান্ড্রয়েড। আইওএসের দখলে ১২.৭ শতাংশ, উইন্ডোজ ৩ শতাংশ ও ব্ল্যাকবেরি ০.৮ শতাংশ। লাতিন আমেরিকা, পশ্চিম ইউরোপ ও জাপান বাদে বিশ্বের সবখানেই মোবাইল ফোন বিক্রি বেড়েছে। পুরো মোবাইল ফোনের বাজার হিসাব অনুযায়ী ২০.৬ শতাংশ বাজার দখল করে শীর্ষস্থানে রয়েছে স্যামসাং। ৯.৫ শতাংশ বাজার দখল করে দ্বিতীয় অবস্থানে রয়েছে মাইক্রোসফট ডিভাইস, ৮.৪ শতাংশ বাজার দখল করে তিনে রয়েছে অ্যাপল। ৪.২ শতাংশ বাজার দখল করে চারে রয়েছে এলজি আর ৩.৬ শতাংশ শেয়ার নিয়ে বাজারের পঞ্চম স্থানটি হুয়াউয়ের।', 0, 1, 'admin', NULL, '2014-12-18 01:55:20', '2014-12-18 01:55:20'),
(12, 8, 'বাজারে এল লুমিয়া ৫৩৫', 'দুই সিম সুবিধার লুমিয়া ৫৩৫ স্মার্টফোনটি বাংলাদেশের বাজারে আনল মাইক্রোসফট। এটি মাইক্রোসফট ব্র্যান্ডের অধীনে প্রথম লুমিয়া স্মার্টফোন। ১৩ ডিসেম্বর মাইক্রোসফট লুমিয়া ৫৩৫ বাংলাদেশের বাজারে আনার ঘোষণা দিয়েছে।  পাঁচ ইঞ্চি মাপের ডিসপ্লেযুক্ত লুমিয়া ৫৩৫ স্মার্টফোনটির সামনে রয়েছে পাঁচ মেগাপিক্সেল ওয়াইড অ্যাঙ্গেল ক্যামেরা। মাইক্রোসফটের দাবি, স্মার্টফোনটি স্কাইপ ভিডিও কল ও সেলফি তোলার জন্য বিশেষ সুবিধা দিতে পারে। নতুন এই স্মার্টফোনে বিনা মূল্যে ১৫ জিবি (গিগাবাইট) ওয়ানড্রাইভ ক্লাউড স্টোরেজ রয়েছে; যেখানে ফটো, ভিডিও ও অফিস ডকুমেন্টস ইত্যাদি নিরাপদে সংরক্ষণের পাশাপাশি প্রয়োজনে অন্যদের সঙ্গে বিনিময় করা যাবে।  লুমিয়া ৫৩৫ ডিভাইসটির পাঁচ ইঞ্চির কিউএইচডি ডিসপ্লেতে মাইক্রোসফট আউটলুক আছে; যা দিয়ে চলার সময়েই কর্মক্ষেত্র ও ব্যক্তিগত ই-মেইল বিনিময় করা যাবে। এতে স্মার্ট ডুয়াল সিম বা দুটি স্মার্ট সিম ব্যবহারের সুবিধা থাকায় কল ও টেক্সট মেসেজ মিস হবে না।  মাইক্রোসফট ডিভাইসেস বাংলাদেশ ও এমার্জিং এশিয়ার জেনারেল ম্যানেজার সন্দ্বীপ গুপ্ত এ প্রসঙ্গে বলেন, ‘অনেক মানুষই, বিশেষ করে প্রযুক্তিমুখী তরুণেরা সব সময়ই সর্বাধুনিক স্মার্টফোন পেতে চান। তাঁদের প্রত্যাশা ও চাহিদা পূরণ করতে মাইক্রোসফট উইন্ডোজ ফোন ৮.১ আপডেট, লুমিয়া ডেনিম, লুমিয়া ৫৩৫ ডুয়াল সিম প্রভৃতি সেবা এনেছে।’  লুমিয়া ৫৩৫ ডুয়াল সিম মোবাইল ডিভাইসটি সবুজ, কমলা, সাদা ও কালো এই চার রঙে বাজারে পাওয়া যাবে। বাংলাদেশের বাজারে এই স্মার্টফোনটি কেনা যাচ্ছে ১১ হাজার ৪৯৯ টাকায়। ', 0, 1, 'admin', NULL, '2014-12-18 01:58:45', '2014-12-18 01:58:45'),
(13, 3, 'দেশে মোবাইলে বিদ্যুৎ বিল পরিশোধ জনপ্রিয় হচ্ছে', ' দেশে মোবাইলের মাধ্যমে বিদ্যুৎ ও গ্যাস বিল প্রদানের হার বাড়ছে। সময় রক্ষা, লাইন বিড়ম্বনা এবং দূরত্বের কষ্ট এড়াতে নগর এবং পল্লী উভয় অঞ্চলের মানুষ মোবাইল ব্যবহার করে বিল পরিশোধে আগ্রহী হচ্ছেন। নগরসহ বাংলাদেশের বিভিন্ন প্রত্যন্ত অঞ্চলে প্রথমবারের মতো ২০০৬ সালে চট্টগ্রামে বিদ্যুৎ উন্নয়ন বোর্ডের সঙ্গে মোবাইলে বিদ্যুৎ বিল প্রদান নিয়ে কাজ শুরু করে গ্রামীণফোন। এ সেবার নাম গ্রামীণফোন বিল-পে সার্ভিস। বিল প্রদানে বিড়ম্বনা দূর করা, স্বচ্ছতা নিশ্চিত করা এবং দূরত্বে বাধা দূর করতেই প্রতিষ্ঠানটি এ উদ্যোগ গ্রহণ করে। শুরুতেই বেশ জনপ্রিয় হতে থাকে এ সেবা। প্রথমদিনেই বিল-পে সার্ভিসে মোট ৭,৬১৬ টাকার ৮টি বিল জমা পড়ে। ২০০৬ সাল থেকে চলতি বছরের মে মাস পর্যন্ত মোট ২৬.৭৯ বিলিয়ন টাকার বিল জমা পড়েছে এ মোবাইল সেবার মাধ্যমে।  এই বিল-পে সেবার মাধ্যমে গ্রামীণফোনের গ্রাহকরা ছাড়াও অন্য অপারেটর ব্যবহারকারীরা এমনকি যাদের মোবাইল নেই তারাও বিদ্যুৎ বিল পরিশোধ করতে পারবেন। গ্রামীণফোন গ্রাহকদের ১২০০ নম্বরে একটি এসএমএস পাঠিয়ে রেজিস্ট্রেশন করতে হয়। রেজিস্ট্রেশনের মাধ্যমে যে অ্যাকাউন্ট তৈরি হবে সে অ্যাকাউন্টের মাধ্যমে গ্রাহক যখন খুশি তখনই বিল পরিশোধ করতে পারবেন। এ সুবিধা প্রদানের জন্য সারাদেশের বিভিন্ন অঞ্চলে বিল-পে/মোবিক্যাশ আউটলেট স্থাপন করা হয়েছে। অন্য অপারেটরের গ্রাহকরা এবং যাদের মোবাইল নেই তারা বিলের কাগজ নিয়ে বিল-পে/মোবিক্যাশ আউটলেটে গিয়ে বিল পরিশোধ করতে পারবেন। বিল পরিশোধের সঙ্গে সঙ্গে তা নিশ্চিত করতে ফিরতি এসএমএস চলে আসে।  এছাড়া বিল-পে কল সেন্টারে ফোন করে বিল পরিশোধের বিষয়ে নিশ্চিত হওয়া যায়। এজন্য যেকোনো জিপি নম্বর থেকে ১২০০ এবং অন্য অপারেটর থেকে ০১৭১৩২৩৪৫৬৭ নম্বরে ফোন করে নিশ্চিত হওয়া যায়। নিজ মোবাইলে বিল পরিশোধ করলে *৭৭৭# এ ডায়াল করলেই তথ্য পাওয়া যায়। এরজন্য কোনো চার্জও লাগেনা। গ্রাহকরা ইচ্ছে করলে গ্রামীণফোন সেন্টার থেকে পরিশোধিত বিলের স্টেটমেন্ট সংগ্রহ করতে পারেন। এ সেবার সবচেয়ে বড় সুবিধা হচ্ছে ব্যাংক খুঁজতে দূর-দূরান্তে যাওয়ার দরকার নেই। গ্রাহকদের সুবিধার জন্য দেশের প্রতিটি এলাকাতেই গ্রামীণফোন বিল-পে/মোবিক্যাশ আউটলেট স্থাপন করা হয়েছে।  সংশ্লিষ্টরা বলছেন, এ সেবার মাধ্যমে লেনদেন প্রক্রিয়া ভুল হওয়ার সম্ভাবনা খুবই কম। এছাড়া বিল জমা দেওয়ার জন্য সকাল ৯টা থেকে ১টা পর্যন্ত অপেক্ষা করার ঝামেলা নেই। দিনে ও রাতে যেকোনো সময় বিল-পে/মোবিক্যাশ আউটলেটের মাধ্যমে বিল পরিশোধ করা যায়। ২০০৬ সাল থেকে চলতি বছর পর্যন্ত বিল-পে সেবাগ্রহণকারীর সংখ্যা দাঁড়িয়েছে প্রায় ১.৫ মিলিয়নে। এ প্রক্রিয়ায় গ্রামীনফোনের সহযোগী হিসাবে কাজ করছে বিদ্যুৎ ও গ্যাস সেবাপ্রদানকারী প্রতিষ্ঠান বাংলাদেশ বিদ্যুৎ উন্নয়ন বোর্ড (বিপিডিবি), তিতাস, ঢাকা পাওয়ার ডিস্ট্রিবিউশন কোম্পানি (ডিপিডিসি), ঢাকা ইলেকট্রিক সাপ্লাই কোম্পানি লিমিটেড (ডেসকো), বাখরাবাদ গ্যাস সিস্টেম লিমিটেড (বিজিএসএল), কর্নফুলী গ্যাস লিমিটেড (কেজিএসএল) এবং জালালাবাদ গ্যাস লিমিটেড (জেজিএসএল)। এদের মধ্যে সর্বপ্রথম কাজ শুরু হয় বিপিডিবির সাথে ২০০৬ সালে। এ সেবায় সর্বশেষ যুক্ত হয়েছে জালালাবাদ গ্যাস ২০১১ সালের মার্চ মাসে। ', 1, 5, 'admin', NULL, '2014-12-18 02:28:42', '2014-12-18 02:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
`id` int(8) unsigned NOT NULL,
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) DEFAULT NULL,
  `data` text,
  `htmlized_data` text,
  `deadline` date DEFAULT NULL,
  `creator_LOGIN` varchar(100) NOT NULL,
  `auto_assign` tinyint(1) NOT NULL DEFAULT '0',
  `metadata` text,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
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
(6, NULL, 0, 'dream', NULL, 'asd asd', '0000-00-00', '', 0, '', NULL, NULL, '2014-12-06 03:08:16', '2014-12-06 03:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE IF NOT EXISTS `project_users` (
`id` int(8) unsigned NOT NULL,
  `project_id` int(8) unsigned NOT NULL DEFAULT '0',
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text,
  `grade` float DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `upload_timestamp` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `project_users`
--

INSERT INTO `project_users` (`id`, `project_id`, `user_id`, `status`, `comments`, `grade`, `filename`, `upload_timestamp`, `created`, `modified`) VALUES
(1, 5, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 6, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
`id` int(8) unsigned NOT NULL,
  `content_id` int(8) unsigned NOT NULL DEFAULT '0',
  `lesson_id` int(8) unsigned NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `estimated_time_to_complete` int(8) unsigned DEFAULT NULL,
  `insert_the_multiple_choice` text,
  `score_calculation_mode` text,
  `insert_matching_pair` text,
  `this_question_is` text,
  `insert_drag_and_drop_couple` text,
  `correct_answer` text,
  `question_text` text,
  `display_alternative_in_select_box` text,
  `options` text,
  `answer` text,
  `explanation` text,
  `answers_explanation` text,
  `input_type` text,
  `question_correction` text,
  `example_answer` text,
  `auto_correct_answer` text,
  `estimate` int(10) unsigned DEFAULT NULL,
  `settings` text,
  `linked_to` int(8) unsigned DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `content_id`, `lesson_id`, `text`, `type`, `difficulty`, `estimated_time_to_complete`, `insert_the_multiple_choice`, `score_calculation_mode`, `insert_matching_pair`, `this_question_is`, `insert_drag_and_drop_couple`, `correct_answer`, `question_text`, `display_alternative_in_select_box`, `options`, `answer`, `explanation`, `answers_explanation`, `input_type`, `question_correction`, `example_answer`, `auto_correct_answer`, `estimate`, `settings`, `linked_to`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 1, 1, 'test1', '', '', NULL, '', '', '', '', '', '', 'aaaaaa', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, '2015-01-28 05:38:59', '2015-01-28 05:38:59'),
(2, 2, 2, 'test2', '', '', NULL, '', '', '', '', '', '', 'bbbbbbbbb', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, '2015-01-28 05:39:53', '2015-01-28 05:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
`id` int(8) unsigned NOT NULL,
  `title` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating_users`
--

CREATE TABLE IF NOT EXISTS `rating_users` (
`id` int(8) unsigned NOT NULL,
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `rating_id` int(8) unsigned NOT NULL DEFAULT '0',
  `model_name` varchar(64) DEFAULT NULL,
  `model_foreign_key` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sent_notifications`
--

CREATE TABLE IF NOT EXISTS `sent_notifications` (
`id` int(8) unsigned NOT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
`id` int(8) unsigned NOT NULL,
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
  `modified_by` varchar(128) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `forum_id`, `title`, `views`, `status`, `sticky`, `comments`, `viewed_by`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 1, 'aaaa', 0, 1, 0, 'aaaaaaaaaaaaa', NULL, '2014-12-05 06:55:21', '2014-12-05 07:01:29', NULL, NULL),
(2, 3, 'Science', 1, 1, 1, '', '1', '2014-12-18 01:15:41', '2014-12-18 01:27:04', 'admin', NULL),
(3, 3, 'Information Technology', 1, 1, 1, '', '1', '2014-12-18 01:22:29', '2014-12-18 01:22:29', 'admin', NULL),
(4, 6, 'introduction on basic photoshop', 1, 1, 1, '1', '11', '2014-12-18 01:26:57', '2014-12-18 01:26:57', 'admin', NULL),
(5, 3, 'Tips', 1, 1, 1, 'good initiative', '1', '2014-12-18 01:34:22', '2014-12-18 02:21:49', 'admin', NULL),
(6, 5, ' বেসিক এডোবি ফটোশপ', 6, 1, 1, '1', '89', '2014-12-18 01:34:25', '2014-12-18 01:34:25', 'admin', NULL),
(7, 5, 'রইল শুধু এক', 45, 1, 1, 'না', '78', '2014-12-18 01:38:59', '2014-12-18 01:38:59', 'admin', NULL),
(8, 4, 'বিজ্ঞান ও প্রযুক্তি', 0, 1, 1, 'বিক্রি ১২০ কোটি ইউনিট ছাড়িয়ে যাবে', 'গবেষকেরা', '2014-12-18 01:51:36', '2014-12-18 01:51:36', 'admin', NULL),
(9, 4, 'বিজ্ঞান ও প্রযুক্তি', 45, 1, 1, '', 'গবেষকেরা', '2014-12-18 01:53:11', '2014-12-18 01:57:30', 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(8) unsigned NOT NULL,
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
  `modified_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_group_id`, `username`, `password`, `email`, `fax`, `first_name`, `last_name`, `gender`, `current_address`, `city`, `postal`, `country`, `permanent_address`, `cell_phone`, `home_phone`, `national_idnumber`, `photo`, `photo_dir`, `aboutme`, `website`, `facebook`, `twitter`, `gplus`, `youtube`, `address`, `birthdate`, `ip`, `active`, `timezone`, `comments`, `user_type`, `pending`, `viewed_license`, `status`, `short_description`, `balance`, `need_pwd_change`, `description`, `db_type`, `size`, `type`, `options`, `default_value`, `visible`, `mandatory`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(4, 1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@bou.com', '', 'Admin', 'Admin', 'Male', 'Unavailable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BOUniversity.gif', '4', '', '', '', '', '', '', '', '2013-01-01', NULL, '1', NULL, NULL, 'admin', 0, 0, '1', NULL, 0, 0, '', '', 255, 'image/gif', NULL, NULL, 1, 1, '2014-12-14 10:39:14', '2014-12-14 10:39:14', 'admin@bou.com', 'admin@bou.com'),
(6, 4, 'mustafa', 'e10adc3949ba59abbe56e057f20f883e', 'mustafa@liveoutsource.com', '', 'Mustafa', 'Khan', 'Male', NULL, 'Dhaka', NULL, 'Bangladesh', NULL, '', '', '1111111111111111111111111', 'BOUniversity.gif', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-15 04:26:56', '2014-12-15 04:26:56', NULL, NULL),
(9, 2, 's.sazzad@liveoutsource.com', 'e10adc3949ba59abbe56e057f20f883e', 's.sazzad@liveoutsource.com', '', 'Salim', 'Sazzad', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-16 08:04:17', '2014-12-16 08:04:17', NULL, NULL),
(10, 2, 'zaman.niton@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'zaman.niton@gmail.com', '', 'Mohammed', 'Kamruzzaman', 'Male', NULL, NULL, NULL, NULL, NULL, '01711555111', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-16 10:46:22', '2015-01-26 01:16:13', NULL, NULL),
(12, 2, 'sudeb.phy137@gmail.com', '7e4ccbebd91460f0b7f24aa432c47096', 'sudeb.phy137@gmail.com', '', 'Sudeb', 'Kumar', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-16 22:23:19', '2014-12-16 22:23:19', NULL, NULL),
(13, 2, 'rusdid@iveoutsource.com', 'e10adc3949ba59abbe56e057f20f883e', 'rusdid@iveoutsource.com', '', 'zzzzz', 'rrrrrrr', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-17 00:01:25', '2014-12-17 00:01:25', NULL, NULL),
(14, 2, 'islm90@liveoutsource.com', 'e10adc3949ba59abbe56e057f20f883e', 'islm90@liveoutsource.com', '', 'Tarikul', 'Islam', 'male', NULL, NULL, NULL, NULL, NULL, '01912287111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-17 02:29:38', '2014-12-17 02:29:38', NULL, NULL),
(20, 2, 'salim.sazzad02@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'salim.sazzad02@gmail.com', '', 'Salim', 'Sazzad', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '0', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-17 09:30:14', '2014-12-17 09:30:14', NULL, NULL),
(21, 2, 'salim.sazzad01@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'salim.sazzad01@gmail.com', '', 'Salim', 'Sazzad', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '0', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-17 09:33:08', '2014-12-17 09:33:08', NULL, NULL),
(22, 2, 'salim.sazzad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'salim.sazzad@gmail.com', '', 'Salim', 'Sazzad', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '0', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-17 09:38:46', '2014-12-17 09:38:46', NULL, NULL),
(23, 2, 'salim.sazzad03@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'salim.sazzad03@gmail.com', '', 'Salim', 'Sazzad', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '0', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-17 09:43:51', '2014-12-17 09:43:51', NULL, NULL),
(24, 2, 'sudeb.its104@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'sudeb.its104@gmail.com', '', 'Sudeb', 'Kumar', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-18 02:31:59', '2014-12-18 02:31:59', NULL, NULL),
(25, 4, 'doha.physics.du@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'doha.physics.du@gmail.com', '', 'hasan', 'doha', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Koala.jpg', '25', '', '', '', '', '', '', '', '2014-01-01', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, 'image/jpeg', NULL, NULL, 1, 1, '2014-12-20 00:08:26', '2015-01-24 07:32:09', NULL, NULL),
(26, 2, 'mahfuzrony01@gmail.com', '59b8b462194288f696f223126454a4e0', 'mahfuzrony01@gmail.com', '', 'Mango', 'Public', 'male', NULL, NULL, NULL, NULL, NULL, '01983882383', NULL, NULL, 'life.jpeg', '26', '', '', '', '', '', '', '', '2014-01-01', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, 'image/jpeg', NULL, NULL, 1, 1, '2015-01-22 03:42:07', '2015-01-23 23:20:58', NULL, NULL),
(27, 2, 'gmail_mahfuz@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'gmail_mahfuz@gmail.com', '', 'Mango', 'Public', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2015-01-22 04:02:36', '2015-01-24 08:57:59', NULL, NULL),
(28, 2, 'mahfuz.inbox@gmail.com', '66b8f8a0cd00484d077b5c4f77099345', 'mahfuz.inbox@gmail.com', '', 'Mango', 'Public', 'female', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'life.jpeg', '28', '', '', '', '', '', '', 'Bangladesh', '2014-01-01', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, 'image/jpeg', NULL, NULL, 1, 1, '2015-01-22 05:06:26', '2015-01-23 23:20:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
`id` int(8) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `alias_name` varchar(100) DEFAULT NULL,
  `allowRegistration` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `alias_name`, `allowRegistration`, `created`, `modified`) VALUES
(1, 'Admin', 'Admin', 0, '2014-04-04 20:59:42', '2014-04-04 20:59:42'),
(2, 'Student', 'Student', 1, '2014-04-04 20:59:42', '2014-12-14 10:35:07'),
(3, 'Guest', 'Guest', 0, '2014-04-04 20:59:42', '2014-07-16 04:42:41'),
(4, 'Professor', 'Professor', 1, '2014-07-10 05:31:51', '2014-12-14 10:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_permissions`
--

CREATE TABLE IF NOT EXISTS `user_group_permissions` (
`id` int(8) unsigned NOT NULL,
  `user_group_id` int(8) unsigned NOT NULL,
  `controller` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `action` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `allowed` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=503 ;

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
(126, 4, 'Users', 'myprofile', 1),
(127, 1, 'OpenUnivercities', 'contactus', 1),
(128, 2, 'OpenUnivercities', 'contactus', 1),
(129, 3, 'OpenUnivercities', 'contactus', 1),
(130, 4, 'OpenUnivercities', 'contactus', 1),
(131, 1, 'OpenUnivercities', 'aboutus', 1),
(132, 2, 'OpenUnivercities', 'aboutus', 1),
(133, 3, 'OpenUnivercities', 'aboutus', 1),
(134, 4, 'OpenUnivercities', 'aboutus', 1),
(135, 1, 'Categories', 'index', 1),
(136, 2, 'Categories', 'index', 1),
(137, 3, 'Categories', 'index', 0),
(138, 4, 'Categories', 'index', 1),
(139, 1, 'Categories', 'view', 1),
(140, 2, 'Categories', 'view', 1),
(141, 3, 'Categories', 'view', 1),
(142, 4, 'Categories', 'view', 1),
(143, 1, 'Categories', 'edit', 1),
(144, 2, 'Categories', 'edit', 0),
(145, 3, 'Categories', 'edit', 0),
(146, 4, 'Categories', 'edit', 1),
(147, 1, 'Categories', 'delete', 1),
(148, 2, 'Categories', 'delete', 0),
(149, 3, 'Categories', 'delete', 0),
(150, 4, 'Categories', 'delete', 1),
(151, 1, 'Categories', 'add', 1),
(152, 2, 'Categories', 'add', 0),
(153, 3, 'Categories', 'add', 0),
(154, 4, 'Categories', 'add', 1),
(155, 1, 'Courses', 'add_to_course_lesson', 1),
(156, 2, 'Courses', 'add_to_course_lesson', 0),
(157, 3, 'Courses', 'add_to_course_lesson', 0),
(158, 4, 'Courses', 'add_to_course_lesson', 1),
(159, 1, 'Courses', 'course_lessons', 1),
(160, 2, 'Courses', 'course_lessons', 0),
(161, 3, 'Courses', 'course_lessons', 0),
(162, 4, 'Courses', 'course_lessons', 1),
(163, 1, 'Courses', 'add_to_course_users', 1),
(164, 2, 'Courses', 'add_to_course_users', 0),
(165, 3, 'Courses', 'add_to_course_users', 0),
(166, 4, 'Courses', 'add_to_course_users', 1),
(167, 1, 'Courses', 'course_users', 1),
(168, 2, 'Courses', 'course_users', 0),
(169, 3, 'Courses', 'course_users', 0),
(170, 4, 'Courses', 'course_users', 1),
(171, 1, 'Courses', 'add', 1),
(172, 2, 'Courses', 'add', 0),
(173, 3, 'Courses', 'add', 0),
(174, 4, 'Courses', 'add', 1),
(175, 1, 'Courses', 'set_course_active_inactive', 1),
(176, 2, 'Courses', 'set_course_active_inactive', 0),
(177, 3, 'Courses', 'set_course_active_inactive', 0),
(178, 4, 'Courses', 'set_course_active_inactive', 1),
(179, 1, 'Courses', 'delete', 1),
(180, 2, 'Courses', 'delete', 0),
(181, 3, 'Courses', 'delete', 0),
(182, 4, 'Courses', 'delete', 1),
(183, 1, 'Courses', 'edit', 1),
(184, 2, 'Courses', 'edit', 0),
(185, 3, 'Courses', 'edit', 0),
(186, 4, 'Courses', 'edit', 1),
(187, 1, 'Courses', 'course_info', 1),
(188, 2, 'Courses', 'course_info', 1),
(189, 3, 'Courses', 'course_info', 1),
(190, 4, 'Courses', 'course_info', 1),
(191, 1, 'Courses', 'detail', 1),
(192, 2, 'Courses', 'detail', 1),
(193, 3, 'Courses', 'detail', 1),
(194, 4, 'Courses', 'detail', 1),
(195, 1, 'Courses', 'view', 1),
(196, 2, 'Courses', 'view', 0),
(197, 3, 'Courses', 'view', 0),
(198, 4, 'Courses', 'view', 1),
(199, 1, 'Courses', 'index', 1),
(200, 2, 'Courses', 'index', 1),
(201, 3, 'Courses', 'index', 1),
(202, 4, 'Courses', 'index', 1),
(203, 1, 'Lessons', 'get_content', 1),
(204, 2, 'Lessons', 'get_content', 1),
(205, 3, 'Lessons', 'get_content', 1),
(206, 4, 'Lessons', 'get_content', 1),
(207, 1, 'Lessons', 'add_to_lesson_users', 1),
(208, 2, 'Lessons', 'add_to_lesson_users', 0),
(209, 3, 'Lessons', 'add_to_lesson_users', 0),
(210, 4, 'Lessons', 'add_to_lesson_users', 1),
(211, 1, 'Lessons', 'lesson_users', 1),
(212, 2, 'Lessons', 'lesson_users', 0),
(213, 3, 'Lessons', 'lesson_users', 0),
(214, 4, 'Lessons', 'lesson_users', 1),
(215, 1, 'Lessons', 'set_lesson_active_inactive', 1),
(216, 2, 'Lessons', 'set_lesson_active_inactive', 0),
(217, 3, 'Lessons', 'set_lesson_active_inactive', 0),
(218, 4, 'Lessons', 'set_lesson_active_inactive', 1),
(219, 1, 'Lessons', 'delete', 1),
(220, 2, 'Lessons', 'delete', 0),
(221, 3, 'Lessons', 'delete', 0),
(222, 4, 'Lessons', 'delete', 1),
(223, 1, 'Lessons', 'edit', 1),
(224, 2, 'Lessons', 'edit', 0),
(225, 3, 'Lessons', 'edit', 0),
(226, 4, 'Lessons', 'edit', 1),
(227, 1, 'Lessons', 'add', 1),
(228, 2, 'Lessons', 'add', 0),
(229, 3, 'Lessons', 'add', 0),
(230, 4, 'Lessons', 'add', 1),
(231, 1, 'Lessons', 'lesson_info', 1),
(232, 2, 'Lessons', 'lesson_info', 1),
(233, 3, 'Lessons', 'lesson_info', 1),
(234, 4, 'Lessons', 'lesson_info', 1),
(235, 1, 'Lessons', 'view', 1),
(236, 2, 'Lessons', 'view', 0),
(237, 3, 'Lessons', 'view', 0),
(238, 4, 'Lessons', 'view', 1),
(239, 1, 'Lessons', 'index', 1),
(240, 2, 'Lessons', 'index', 1),
(241, 3, 'Lessons', 'index', 0),
(242, 4, 'Lessons', 'index', 1),
(243, 1, 'Contents', 'index', 1),
(244, 2, 'Contents', 'index', 1),
(245, 3, 'Contents', 'index', 1),
(246, 4, 'Contents', 'index', 1),
(247, 1, 'Contents', 'view', 1),
(248, 2, 'Contents', 'view', 1),
(249, 3, 'Contents', 'view', 1),
(250, 4, 'Contents', 'view', 1),
(251, 1, 'Contents', 'detail', 1),
(252, 2, 'Contents', 'detail', 1),
(253, 3, 'Contents', 'detail', 1),
(254, 4, 'Contents', 'detail', 1),
(255, 1, 'Contents', 'add', 1),
(256, 2, 'Contents', 'add', 0),
(257, 3, 'Contents', 'add', 0),
(258, 4, 'Contents', 'add', 1),
(259, 1, 'Contents', 'edit', 1),
(260, 2, 'Contents', 'edit', 0),
(261, 3, 'Contents', 'edit', 0),
(262, 4, 'Contents', 'edit', 1),
(263, 1, 'Contents', 'delete', 1),
(264, 2, 'Contents', 'delete', 0),
(265, 3, 'Contents', 'delete', 0),
(266, 4, 'Contents', 'delete', 1),
(267, 1, 'OpenUnivercities', 'home', 1),
(268, 2, 'OpenUnivercities', 'home', 1),
(269, 3, 'OpenUnivercities', 'home', 1),
(270, 4, 'OpenUnivercities', 'home', 1),
(271, 1, 'Courses', 'catalog', 1),
(272, 2, 'Courses', 'catalog', 1),
(273, 3, 'Courses', 'catalog', 1),
(274, 4, 'Courses', 'catalog', 1),
(275, 1, 'OpenUnivercities', 'dashboard', 1),
(276, 2, 'OpenUnivercities', 'dashboard', 1),
(277, 3, 'OpenUnivercities', 'dashboard', 0),
(278, 4, 'OpenUnivercities', 'dashboard', 1),
(279, 1, 'Courses', 'get_course_user_status', 1),
(280, 2, 'Courses', 'get_course_user_status', 1),
(281, 3, 'Courses', 'get_course_user_status', 1),
(282, 4, 'Courses', 'get_course_user_status', 1),
(283, 1, 'Courses', 'join_course', 1),
(284, 2, 'Courses', 'join_course', 1),
(285, 3, 'Courses', 'join_course', 1),
(286, 4, 'Courses', 'join_course', 1),
(287, 1, 'Courses', 'count_cart_item', 1),
(288, 2, 'Courses', 'count_cart_item', 1),
(289, 3, 'Courses', 'count_cart_item', 1),
(290, 4, 'Courses', 'count_cart_item', 1),
(291, 1, 'Courses', 'view_user_cart', 1),
(292, 2, 'Courses', 'view_user_cart', 1),
(293, 3, 'Courses', 'view_user_cart', 1),
(294, 4, 'Courses', 'view_user_cart', 1),
(295, 1, 'Orders', 'invoice', 1),
(296, 2, 'Orders', 'invoice', 1),
(297, 3, 'Orders', 'invoice', 1),
(298, 4, 'Orders', 'invoice', 1),
(299, 1, 'Orders', 'checkout', 1),
(300, 2, 'Orders', 'checkout', 1),
(301, 3, 'Orders', 'checkout', 1),
(302, 4, 'Orders', 'checkout', 1),
(303, 1, 'Lessons', 'detail', 1),
(304, 2, 'Lessons', 'detail', 1),
(305, 3, 'Lessons', 'detail', 0),
(306, 4, 'Lessons', 'detail', 1),
(307, 1, 'Blogs', 'catalog', 1),
(308, 2, 'Blogs', 'catalog', 1),
(309, 3, 'Blogs', 'catalog', 1),
(310, 4, 'Blogs', 'catalog', 1),
(311, 1, 'Blogs', 'details', 1),
(312, 2, 'Blogs', 'details', 1),
(313, 3, 'Blogs', 'details', 1),
(314, 4, 'Blogs', 'details', 1),
(315, 1, 'Comments', 'addComment', 1),
(316, 2, 'Comments', 'addComment', 1),
(317, 3, 'Comments', 'addComment', 0),
(318, 4, 'Comments', 'addComment', 1),
(319, 1, 'Comments', 'addBlogComment', 1),
(320, 2, 'Comments', 'addBlogComment', 1),
(321, 3, 'Comments', 'addBlogComment', 0),
(322, 4, 'Comments', 'addBlogComment', 1),
(323, 1, 'Comments', 'BlogCommentedit', 1),
(324, 2, 'Comments', 'BlogCommentedit', 0),
(325, 3, 'Comments', 'BlogCommentedit', 0),
(326, 4, 'Comments', 'BlogCommentedit', 1),
(327, 1, 'Comments', 'blogCommentDelete', 1),
(328, 2, 'Comments', 'blogCommentDelete', 0),
(329, 3, 'Comments', 'blogCommentDelete', 0),
(330, 4, 'Comments', 'blogCommentDelete', 1),
(331, 1, 'Forums', 'catalog', 1),
(332, 2, 'Forums', 'catalog', 1),
(333, 3, 'Forums', 'catalog', 1),
(334, 4, 'Forums', 'catalog', 1),
(335, 1, 'Forums', 'details', 1),
(336, 2, 'Forums', 'details', 1),
(337, 3, 'Forums', 'details', 1),
(338, 4, 'Forums', 'details', 1),
(339, 1, 'Forums', 'topicsView', 1),
(340, 2, 'Forums', 'topicsView', 1),
(341, 3, 'Forums', 'topicsView', 1),
(342, 4, 'Forums', 'topicsView', 1),
(343, 1, 'Forums', 'changeStatus', 1),
(344, 2, 'Forums', 'changeStatus', 0),
(345, 3, 'Forums', 'changeStatus', 0),
(346, 4, 'Forums', 'changeStatus', 1),
(347, 1, 'Forums', 'addNewVote', 1),
(348, 2, 'Forums', 'addNewVote', 1),
(349, 3, 'Forums', 'addNewVote', 1),
(350, 4, 'Forums', 'addNewVote', 1),
(351, 1, 'Courses', 'mycourses', 1),
(352, 2, 'Courses', 'mycourses', 1),
(353, 3, 'Courses', 'mycourses', 0),
(354, 4, 'Courses', 'mycourses', 1),
(355, 1, 'Users', 'updateProfile', 1),
(356, 2, 'Users', 'updateProfile', 1),
(357, 3, 'Users', 'updateProfile', 0),
(358, 4, 'Users', 'updateProfile', 1),
(359, 1, 'Blogs', 'last_comments', 1),
(360, 2, 'Blogs', 'last_comments', 1),
(361, 3, 'Blogs', 'last_comments', 1),
(362, 4, 'Blogs', 'last_comments', 1),
(363, 1, 'Blogs', 'last_registered', 1),
(364, 2, 'Blogs', 'last_registered', 1),
(365, 3, 'Blogs', 'last_registered', 1),
(366, 4, 'Blogs', 'last_registered', 1),
(367, 1, 'Blogs', 'blogComment', 1),
(368, 2, 'Blogs', 'blogComment', 1),
(369, 3, 'Blogs', 'blogComment', 1),
(370, 4, 'Blogs', 'blogComment', 1),
(371, 1, 'Blogs', 'index', 1),
(372, 2, 'Blogs', 'index', 1),
(373, 3, 'Blogs', 'index', 1),
(374, 4, 'Blogs', 'index', 1),
(375, 1, 'Blogs', 'view', 1),
(376, 2, 'Blogs', 'view', 1),
(377, 3, 'Blogs', 'view', 1),
(378, 4, 'Blogs', 'view', 1),
(379, 1, 'Blogs', 'add', 1),
(380, 2, 'Blogs', 'add', 1),
(381, 3, 'Blogs', 'add', 0),
(382, 4, 'Blogs', 'add', 1),
(383, 1, 'Courses', 'chosen_for_you', 1),
(384, 2, 'Courses', 'chosen_for_you', 1),
(385, 3, 'Courses', 'chosen_for_you', 1),
(386, 4, 'Courses', 'chosen_for_you', 1),
(387, 1, 'Courses', 'announcement', 1),
(388, 2, 'Courses', 'announcement', 1),
(389, 3, 'Courses', 'announcement', 1),
(390, 4, 'Courses', 'announcement', 1),
(391, 1, 'Announcements', 'index', 1),
(392, 2, 'Announcements', 'index', 1),
(393, 3, 'Announcements', 'index', 1),
(394, 4, 'Announcements', 'index', 1),
(395, 1, 'Announcements', 'view', 1),
(396, 2, 'Announcements', 'view', 1),
(397, 3, 'Announcements', 'view', 0),
(398, 4, 'Announcements', 'view', 1),
(399, 1, 'Announcements', 'add', 1),
(400, 2, 'Announcements', 'add', 0),
(401, 3, 'Announcements', 'add', 0),
(402, 4, 'Announcements', 'add', 1),
(403, 1, 'Announcements', 'edit', 1),
(404, 2, 'Announcements', 'edit', 0),
(405, 3, 'Announcements', 'edit', 0),
(406, 4, 'Announcements', 'edit', 1),
(407, 1, 'Announcements', 'delete', 1),
(408, 2, 'Announcements', 'delete', 0),
(409, 3, 'Announcements', 'delete', 0),
(410, 4, 'Announcements', 'delete', 0),
(411, 1, 'Courses', 'chosen', 1),
(412, 2, 'Courses', 'chosen', 1),
(413, 3, 'Courses', 'chosen', 0),
(414, 4, 'Courses', 'chosen', 1),
(415, 1, 'Courses', 'past_course', 1),
(416, 2, 'Courses', 'past_course', 1),
(417, 3, 'Courses', 'past_course', 1),
(418, 4, 'Courses', 'past_course', 1),
(419, 1, 'Courses', 'upcoming_course', 1),
(420, 2, 'Courses', 'upcoming_course', 1),
(421, 3, 'Courses', 'upcoming_course', 1),
(422, 4, 'Courses', 'upcoming_course', 1),
(423, 1, 'Courses', 'running_course', 1),
(424, 2, 'Courses', 'running_course', 1),
(425, 3, 'Courses', 'running_course', 1),
(426, 4, 'Courses', 'running_course', 1),
(427, 1, 'Lessons', 'faq', 1),
(428, 2, 'Lessons', 'faq', 1),
(429, 3, 'Lessons', 'faq', 0),
(430, 4, 'Lessons', 'faq', 1),
(431, 1, 'Lessons', 'progress', 1),
(432, 2, 'Lessons', 'progress', 1),
(433, 3, 'Lessons', 'progress', 0),
(434, 4, 'Lessons', 'progress', 1),
(435, 1, 'Lessons', 'latest', 1),
(436, 2, 'Lessons', 'latest', 1),
(437, 3, 'Lessons', 'latest', 0),
(438, 4, 'Lessons', 'latest', 1),
(439, 1, 'Lessons', 'announcement', 1),
(440, 2, 'Lessons', 'announcement', 1),
(441, 3, 'Lessons', 'announcement', 0),
(442, 4, 'Lessons', 'announcement', 1),
(443, 1, 'Lessons', 'dashboard', 1),
(444, 2, 'Lessons', 'dashboard', 1),
(445, 3, 'Lessons', 'dashboard', 0),
(446, 4, 'Lessons', 'dashboard', 1),
(447, 1, 'Lessons', 'myTotalCourses', 1),
(448, 2, 'Lessons', 'myTotalCourses', 1),
(449, 3, 'Lessons', 'myTotalCourses', 0),
(450, 4, 'Lessons', 'myTotalCourses', 1),
(451, 1, 'Messages', 'catalog', 1),
(452, 2, 'Messages', 'catalog', 1),
(453, 3, 'Messages', 'catalog', 0),
(454, 4, 'Messages', 'catalog', 1),
(455, 1, 'Messages', 'index', 1),
(456, 2, 'Messages', 'index', 0),
(457, 3, 'Messages', 'index', 0),
(458, 4, 'Messages', 'index', 0),
(459, 1, 'Messages', 'detail', 1),
(460, 2, 'Messages', 'detail', 1),
(461, 3, 'Messages', 'detail', 0),
(462, 4, 'Messages', 'detail', 1),
(463, 1, 'Messages', 'view', 1),
(464, 2, 'Messages', 'view', 1),
(465, 3, 'Messages', 'view', 0),
(466, 4, 'Messages', 'view', 1),
(467, 1, 'Messages', 'add', 1),
(468, 2, 'Messages', 'add', 1),
(469, 3, 'Messages', 'add', 0),
(470, 4, 'Messages', 'add', 1),
(471, 1, 'Messages', 'edit', 1),
(472, 2, 'Messages', 'edit', 0),
(473, 3, 'Messages', 'edit', 0),
(474, 4, 'Messages', 'edit', 0),
(475, 1, 'Messages', 'delete', 1),
(476, 2, 'Messages', 'delete', 0),
(477, 3, 'Messages', 'delete', 0),
(478, 4, 'Messages', 'delete', 0),
(479, 1, 'Courses', 'course_duration', 1),
(480, 2, 'Courses', 'course_duration', 1),
(481, 3, 'Courses', 'course_duration', 1),
(482, 4, 'Courses', 'course_duration', 1),
(483, 1, 'Projects', 'delete', 0),
(484, 2, 'Projects', 'delete', 0),
(485, 3, 'Projects', 'delete', 0),
(486, 4, 'Projects', 'delete', 1),
(487, 1, 'Projects', 'edit', 0),
(488, 2, 'Projects', 'edit', 0),
(489, 3, 'Projects', 'edit', 0),
(490, 4, 'Projects', 'edit', 1),
(491, 1, 'Projects', 'add', 0),
(492, 2, 'Projects', 'add', 0),
(493, 3, 'Projects', 'add', 0),
(494, 4, 'Projects', 'add', 1),
(495, 1, 'Projects', 'view', 1),
(496, 2, 'Projects', 'view', 1),
(497, 3, 'Projects', 'view', 0),
(498, 4, 'Projects', 'view', 1),
(499, 1, 'Projects', 'index', 1),
(500, 2, 'Projects', 'index', 0),
(501, 3, 'Projects', 'index', 0),
(502, 4, 'Projects', 'index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE IF NOT EXISTS `user_types` (
`id` int(8) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `basic_user_type` varchar(50) NOT NULL,
  `core_access` text,
  `modules_access` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usrgroups`
--

CREATE TABLE IF NOT EXISTS `usrgroups` (
`id` int(8) unsigned NOT NULL,
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
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usrgroup_lessons`
--

CREATE TABLE IF NOT EXISTS `usrgroup_lessons` (
`id` int(8) unsigned NOT NULL,
  `lesson_id` int(8) unsigned NOT NULL,
  `usrgroup_id` int(8) unsigned NOT NULL,
  `user_type` varchar(50) DEFAULT 'student',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usrgroup_users`
--

CREATE TABLE IF NOT EXISTS `usrgroup_users` (
`id` int(8) unsigned NOT NULL,
  `usrgroup_id` int(8) unsigned NOT NULL,
  `user_id` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_users`
--
ALTER TABLE `content_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_lessons`
--
ALTER TABLE `course_lessons`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_users`
--
ALTER TABLE `course_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_usrgroups`
--
ALTER TABLE `course_usrgroups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
 ADD PRIMARY KEY (`id`), ADD KEY `lessons_ID` (`lesson_id`);

--
-- Indexes for table `exams_questions`
--
ALTER TABLE `exams_questions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glossary`
--
ALTER TABLE `glossary`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_users`
--
ALTER TABLE `lesson_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_tokens`
--
ALTER TABLE `login_tokens`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
 ADD PRIMARY KEY (`id`), ADD KEY `recipient` (`recipient`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_users`
--
ALTER TABLE `poll_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_users`
--
ALTER TABLE `project_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_users`
--
ALTER TABLE `rating_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sent_notifications`
--
ALTER TABLE `sent_notifications`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usrgroups`
--
ALTER TABLE `usrgroups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usrgroup_lessons`
--
ALTER TABLE `usrgroup_lessons`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usrgroup_users`
--
ALTER TABLE `usrgroup_users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `content_users`
--
ALTER TABLE `content_users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `course_lessons`
--
ALTER TABLE `course_lessons`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `course_users`
--
ALTER TABLE `course_users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `course_usrgroups`
--
ALTER TABLE `course_usrgroups`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exams_questions`
--
ALTER TABLE `exams_questions`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `glossary`
--
ALTER TABLE `glossary`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `lesson_users`
--
ALTER TABLE `lesson_users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login_tokens`
--
ALTER TABLE `login_tokens`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poll_users`
--
ALTER TABLE `poll_users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `project_users`
--
ALTER TABLE `project_users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rating_users`
--
ALTER TABLE `rating_users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sent_notifications`
--
ALTER TABLE `sent_notifications`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=503;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usrgroups`
--
ALTER TABLE `usrgroups`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usrgroup_lessons`
--
ALTER TABLE `usrgroup_lessons`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usrgroup_users`
--
ALTER TABLE `usrgroup_users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
