-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2015 at 04:38 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `model_name`, `model_foreign_key`, `name`, `description`, `active`, `registered`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 'Lesson', 11, 'Lesson 2 with Blog and Forum', NULL, 1, 1, '', '', '2014-12-12 06:06:27', '2014-12-12 06:06:27'),
(2, 'Lesson', 12, 'Lesson 3', NULL, 1, 1, '', '', '2014-12-13 00:03:42', '2014-12-13 00:03:42'),
(3, 'Lesson', 13, 'Clone Stamp Tool', NULL, 1, 1, '', '', '2014-12-15 05:06:31', '2014-12-15 05:06:31'),
(4, 'Lesson', 14, ' Eraser Too', NULL, 1, 1, '', '', '2014-12-15 05:17:28', '2014-12-15 05:17:28'),
(5, 'Lesson', 15, ' Drawing basic shapes', NULL, 1, 1, '', '', '2014-12-15 05:25:03', '2014-12-15 05:25:03'),
(6, 'Lesson', 16, 'Drawing Pencil Tool', NULL, 1, 1, '', '', '2014-12-15 05:26:42', '2014-12-15 05:26:42'),
(7, 'Lesson', 17, ' Typography', NULL, 1, 1, '', '', '2014-12-15 05:35:05', '2014-12-15 05:35:05'),
(8, 'Lesson', 18, 'FOrm', NULL, 1, 1, '', '', '2014-12-15 05:37:59', '2014-12-15 05:37:59'),
(9, 'Lesson', 19, 'CSS3 selector', NULL, 1, 1, '', '', '2014-12-15 05:52:06', '2014-12-15 05:52:06'),
(10, 'Lesson', 20, 'Java script Core', NULL, 1, 1, '', '', '2014-12-15 07:19:43', '2014-12-15 07:19:43'),
(11, 'Lesson', 21, 'Drawing Pencil Tool ', NULL, 1, 1, '', '', '2014-12-16 04:27:46', '2014-12-16 04:27:46'),
(12, 'Lesson', 22, 'Table', NULL, 1, 1, '', '', '2014-12-16 05:02:37', '2014-12-16 05:02:37'),
(13, 'Lesson', 23, 'Java script BOM ', NULL, 1, 1, '', '', '2014-12-16 10:12:14', '2014-12-16 10:12:14'),
(14, 'Lesson', 24, 'CSS3 Pseudo-class Selecto..', NULL, 1, 1, '', '', '2014-12-16 10:22:18', '2014-12-16 10:22:18'),
(15, NULL, 0, 'এডভান্সড ফটোশপ ', 'গ্রাফিক ডিজাইন শেখার জন্য অফড়নব চষড়ঃড়ংযড়ঢ় এর সেসকল ব্যবহার জানা লাগে সেটা নিযে আলোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে চষড়ঃড়ংযড়ঢ় এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে একজন সাধারণ ব্যবহারকারী উদাহরনের মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। যারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', 1, 1, '', '', '2014-12-17 01:38:42', '2014-12-17 01:38:42');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `course_id`) VALUES
(3, 4, 12);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`, `parent_id`, `lft`, `rght`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(2, 'Web Design', 1, NULL, 0, 0, NULL, NULL, '2014-12-12 04:14:59', '2014-12-12 04:15:20'),
(3, 'Web Development', 1, NULL, 0, 0, NULL, NULL, '2014-12-12 04:15:12', '2014-12-12 04:15:12');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

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
(67, 13, 'Custom Shape Tool', '<p>You&rsquo;ll find the Custom Shape Tool nested in with Photoshop&rsquo;s other Shape tools in the same spot in the Tools panel. By default, the Rectangle Tool is the tool that&rsquo;s displayed, but if you click on it and hold your mouse button down, a fly-out menu will appear listing the other tools that are available in that spot. The Custom Shape Tool is at the bottom of the list:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape1.png" /></p>\r\n\r\n<p>Click and hold on the Rectangle Tool, then select the Custom Shape Tool from the fly-out menu.</p>\r\n\r\n<p>If you already have one of the other Shape tools selected, you can quickly grab the Custom Shape Tool from the Options Bar. You&rsquo;ll see a series of six icons, each representing a different Shape tool. The Custom Shape Tool is the last icon on the right (it&rsquo;s the icon that looks like a blob):</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape2.png" /></p>\r\n\r\n<p>If another Shape tool is already active, the Custom Shape Tool can be selected from the Options Bar.</p>\r\n\r\n<h4>Choosing A Custom Shape</h4>\r\n\r\n<p>Once we have the Custom Shape Tool selected, we need to choose the shape we want to draw. A shape <strong>preview thumbnail</strong> will appear in the Options Bar to the right of the Custom Shape Tool icon. The thumbnail displays the custom shape that&rsquo;s currently selected:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape3.png" /></p>\r\n\r\n<p>The preview thumbnail displays the currently selected custom shape.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To choose a different shape, click on the preview thumbnail. This will open the <strong>Shape Picker</strong> which displays all of the shapes we currently have to choose from. Photoshop actually comes with many more shapes than the limited number we&rsquo;re presented with at first. We&rsquo;ll see how to load in the other shapes in a moment:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape4.png" /></p>\r\n\r\n<p>Click on the preview thumbnail to open the Shape Picker.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To choose a shape, simply click on its thumbnail, then press <strong>Enter</strong> (Win) / <strong>Return</strong> (Mac) to close the Shape Picker. Or, <strong>double-click</strong> on the thumbnail, which will select the shape and close the Shape Picker for you. I&rsquo;ll choose the Heart shape:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape5.png" /></p>\r\n\r\n<p>Selecting the Heart shape from the Shape Picker.</p>\r\n\r\n<h4>Choosing A Color For The Shape</h4>\r\n\r\n<p>Once you&rsquo;ve chosen your shape, select a color for it by clicking on the <strong>color swatch</strong> to the right of the word <strong>Color</strong> in the Options Bar:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape6.png" /></p>\r\n\r\n<p>Click on the color swatch to choose a color for the custom shape.</p>\r\n\r\n<p>Photoshop will pop open the <strong>Color Picker</strong> so we can choose the color we want. Since I selected a heart shape, I&rsquo;ll choose red for my color. Click OK when you&rsquo;re done to close out of the Color Picker:</p>\r\n\r\n<p>&nbsp;<img src="http://114.130.54.174/ftfl/www/content/lessons/206/shape7.png" /></p>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__hggasdgjhsagd_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n\r\n<div id="__if72ru4rkjahiuyi_once" style="display:none;">&nbsp;</div>\r\n', 'Default', 1, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, 55, 56, NULL, NULL, '2014-12-16 10:38:58', '2014-12-16 10:38:58');

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
  `status` enum('ongoing','upcomming') NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `image`, `name`, `active`, `status`, `archive`, `start_date`, `end_date`, `options`, `price`, `show_catalog`, `publish`, `reset`, `certificate_expiration`, `reset_interval`, `max_users`, `rules`, `instance_source`, `depends_on`, `ceu`, `description`, `objectives`, `assessment`, `topics`, `resources`, `info`, `learning_method`, `subject`, `publisher`, `contributor`, `type`, `format`, `identifier`, `source`, `relation`, `coverage`, `rights`, `who_it_is_for`, `htmlized_who_it_is_for`, `usually_asked_question`, `htmlized_usually_asked_question`, `duration_per_week`, `duration_hour_per_week`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(12, 2, 'files/photos/549021d4-7a3c-4206-b0da-105c6715296b.jpg', 'বেসিক এডোবি ফটোশপ', 1, 'ongoing', 0, '2015-01-02', '2015-02-05', NULL, 1200, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 'গ্রাফিক ডিজাইন শেখার জন্য Adobe Photoshop এর যেসকল ব্যবহার জানা গাগে সেটা নিযে আরোচনা করা হবে এই কোর্সে। প্রতিটি টুলসের পরিচিতি দেখানোর সাথে সাথে টুলসটি কী কাজে লাগতে পারে সেসব বিষয় নিয়ে আলোচনা করা হবে। দেখানো হবে Photoshop এর কিছু লাইভ প্রজেক্ট, যার মাধ্যমে সহজেই Photoshop এর ব্যবহার বুঝতে পারবে। \r\nযারা গ্রাফিক ডিজাইন শিখতে আগ্রহী বা গ্রাফিক ডিজাইনকে পেশা হিসেবে নিতে চান তাদের জন্য এটা হতে পারে প্রথম পদক্ষেপ। ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'কোর্সটি একেবারে Basic Level থেকে শুরু হবে। তাই সবাই সহজে বুঝতে পারবেন। ', NULL, NULL, NULL, NULL, NULL, NULL, 'যেকোন ব্যক্তি এই কোর্সটি করতে পারবেন। কোর্সটি একবারে Basic Level থেকে শুরু হবে। তাই সবাই সহজে জুঝতে পারবেন। ', NULL, 'যেকোন ব্যক্তি এই কোর্সটি করতে পারবেন। কোর্সটি একেবারে কোর্সটি করতে পারবেন শুরু হবে। তাই সবাই সহজে বুঝতে পারবেন। কোর্সটি একেবারে কোর্সটি করতে পারবেন। ', NULL, '4 সপ্তাহ ', 'সপ্তাহে 3-4 ঘন্টা কাজ ', NULL, NULL, '2014-12-15 04:45:00', '2014-12-16 07:53:53'),
(13, 2, 'files/photos/549022fd-24e0-4070-b1ad-08586715296b.png', 'অ্যাডোব ইলাস্ট্রেটর', 1, 'upcomming', 0, '2015-02-06', '2015-03-04', NULL, 1000, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 'Illustrator (ইলাস্ট্রেটর) একটি গ্রাফিক্স ডিজাইন Package Program (প্যাকেজ প্রোগ্রাম)। এর মাধ্যমে বিভিন্ন ধরনের ডিজাইন করা যায়। ইহা মার্কিন যুক্তরাষ্ট্রের Adobe Corporation (অ্যাডৌবি কপোরেশন) কর্তৃক বাজারজাতকৃত। Adobe Illustrator (অ্যাডৌবি ইলাস্ট্রেটর) গ্রাফিক্স ডিজাইন প্যাকেজ প্রোগ্রামটি সর্বপ্রম বাজারজাত হয় Apple Macintosh কম্পিউটারে ব্যবহারের উদ্দেশ্যে। কালক্রমে IBM বা IBM Compatible Computer এর মধ্যে Windows Shaported Illustrator (ইলাস্ট্রেটর) বাজারজাত হয়। উৎপত্তির সময় থেকে এই গ্রাফিক্স ডিজাইন প্রোগ্রামটি এ যাবৎ অনেকগুলো Version (ভার্সন) অতিক্রম করেছে। এর সর্বশেষ Version (ভার্সন) Adobe Illustrator 10.0 (অ্যাডৌবি ইলাস্ট্রেটর ১০.০)।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'যেকোন ব্যক্তি এই কোর্সটি করতে পারবেন। কোর্সটি একবারে Basic Level থেকে শুরু হবে। তাই সবাই সহজে জুঝতে পারবেন। ', NULL, '', NULL, '', '', NULL, NULL, '2014-12-15 04:48:09', '2014-12-16 07:54:39'),
(14, 2, 'files/photos/54902499-98b4-42c1-a847-08576715296b.jpg', 'HTML5', 1, 'upcomming', 0, '2015-01-14', '2015-02-10', NULL, 1000, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'The perfect solution for professionals who need to balance work, family, and career building.', NULL, '', NULL, '', '', NULL, NULL, '2014-12-15 04:51:09', '2014-12-16 07:57:04'),
(15, 2, 'files/photos/548eb027-f03c-4df9-ab61-2a416715296b.jpg', 'CSS 3', 1, 'ongoing', 0, '2015-04-09', '2015-05-06', NULL, 1500, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', NULL, NULL, '2014-12-15 04:55:51', '2014-12-16 07:57:32'),
(16, 2, 'files/photos/54902626-9024-41bc-bd4e-182d6715296b.jpg', 'JavaScript', 1, 'upcomming', 0, '2015-01-15', '2015-02-12', NULL, 15000, 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', NULL, NULL, '2014-12-15 04:59:09', '2014-12-16 08:02:58');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

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
(23, 15, 24, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-16 10:22:18', '2014-12-16 10:22:18');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `course_users`
--

INSERT INTO `course_users` (`id`, `user_id`, `course_id`, `lessonid`, `active`, `archive`, `from_timestamp`, `user_type`, `completed`, `score`, `issued_certificate`, `comments`, `to_timestamp`, `created`, `modified`) VALUES
(1, 9, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-16 10:30:30', '2014-12-16 10:30:51'),
(2, 6, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-16 12:34:31', '2014-12-16 12:38:31'),
(3, 6, 15, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-16 23:24:52', '2014-12-16 23:24:52'),
(4, 8, 13, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-16 23:57:58', '2014-12-16 23:57:58'),
(5, 4, 12, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '2014-12-17 01:32:39', '2014-12-17 01:32:39');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `model_name`, `model_foreign_key`, `title`, `status`, `comments`, `rate`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(3, 'Lesson', 11, 'Lesson 2 with Blog and Forum', 1, NULL, 0, '2014-12-12 06:06:27', '2014-12-12 06:06:27', '', ''),
(4, 'Lesson', 12, 'Lesson 3', 1, NULL, 0, '2014-12-13 00:03:42', '2014-12-13 00:03:42', '', ''),
(5, 'Lesson', 13, 'Clone Stamp Tool', 1, NULL, 0, '2014-12-15 05:06:31', '2014-12-15 05:06:31', '', ''),
(6, 'Lesson', 14, ' Eraser Too', 1, NULL, 0, '2014-12-15 05:17:27', '2014-12-15 05:17:27', '', ''),
(7, 'Lesson', 15, ' Drawing basic shapes', 1, NULL, 0, '2014-12-15 05:25:03', '2014-12-15 05:25:03', '', ''),
(8, 'Lesson', 16, 'Drawing Pencil Tool', 1, NULL, 0, '2014-12-15 05:26:42', '2014-12-15 05:26:42', '', ''),
(9, 'Lesson', 17, ' Typography', 1, NULL, 0, '2014-12-15 05:35:05', '2014-12-15 05:35:05', '', ''),
(10, 'Lesson', 18, 'FOrm', 1, NULL, 0, '2014-12-15 05:37:58', '2014-12-15 05:37:58', '', ''),
(11, 'Lesson', 19, 'CSS3 selector', 1, NULL, 0, '2014-12-15 05:52:06', '2014-12-15 05:52:06', '', ''),
(12, 'Lesson', 20, 'Java script Core', 1, NULL, 0, '2014-12-15 07:19:43', '2014-12-15 07:19:43', '', ''),
(13, 'Lesson', 21, 'Drawing Pencil Tool ', 1, NULL, 0, '2014-12-16 04:27:46', '2014-12-16 04:27:46', '', ''),
(14, 'Lesson', 22, 'Table', 1, NULL, 0, '2014-12-16 05:02:37', '2014-12-16 05:02:37', '', ''),
(15, 'Lesson', 23, 'Java script BOM ', 1, NULL, 0, '2014-12-16 10:12:14', '2014-12-16 10:12:14', '', ''),
(16, 'Lesson', 24, 'CSS3 Pseudo-class Selecto..', 1, NULL, 0, '2014-12-16 10:22:18', '2014-12-16 10:22:18', '', ''),
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
(27, NULL, 0, 'পাঠ-2: প্লাগইন', 1, 'প্রশংসনীয়', 9, '2014-12-17 01:34:42', '2014-12-17 01:34:42', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

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
(24, 2, 'files/photos/54904e2a-0690-48f7-985b-1d4e6715296b.jpg', 'CSS3 Pseudo-class Selecto..', 400, 1, 0, 0, 0, NULL, 1, NULL, NULL, NULL, 0, 1, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-16 10:22:18', '2014-12-16 10:22:18');

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
  `score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `issued_certificate` blob,
  `comments` text,
  `to_timestamp` int(10) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `expire` int(10) unsigned DEFAULT '0',
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `price`, `is_paid`, `created`, `modified`) VALUES
(1, 6, 1500, 0, '2014-12-16 23:26:23', '2014-12-16 23:26:23'),
(2, 8, 1000, 0, '2014-12-16 23:58:30', '2014-12-16 23:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
`id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `course_id` int(10) unsigned NOT NULL,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `course_id`, `price`) VALUES
(1, 1, 15, 1500),
(2, 2, 13, 1000);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `deadline` int(10) unsigned DEFAULT NULL,
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
(6, NULL, 0, 'dream', NULL, 'asd asd', 2014, '', 0, '', NULL, NULL, '2014-12-06 03:08:16', '2014-12-06 03:08:16');

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
  `options` text,
  `answer` text,
  `explanation` text,
  `answers_explanation` text,
  `estimate` int(10) unsigned DEFAULT NULL,
  `settings` text,
  `linked_to` int(8) unsigned DEFAULT NULL,
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `content_id`, `lesson_id`, `text`, `type`, `difficulty`, `options`, `answer`, `explanation`, `answers_explanation`, `estimate`, `settings`, `linked_to`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 12, 1, 'A heuristic solution is ...\r\n', 'multiple_one', 'medium', 'a:3:{i:0;s:39:"The best possible solution to a problem";i:1;s:30:"A random solution to a problem";i:2;s:42:"A feasible solution to a difficult problem";}', 'a:1:{i:0;s:1:"2";}', 'A heuristic solution is good solution to a problem taking into account that the exausting examination of the problem&#39;s space is not feasible.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 12, 1, 'Why we have to use greedy algorithms?', 'multiple_one', 'medium', 'a:4:{i:0;s:51:"Because a solution to the problem is not computable";i:1;s:68:"Because there are many solutions and we need to pick up the best one";i:2;s:54:"Because it is very expensive to find the best solution";i:3;s:26:"Because it is more elegant";}', 'a:1:{i:0;s:1:"2";}', '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 12, 1, '<strong><font face="trebuchet ms,geneva" size="2">The traveling salesman problem can be efficiently and optimally solved</font></strong>\r\n', 'multiple_one', 'medium', 'a:2:{i:0;s:7:"Correct";i:1;s:5:"False";}', 'a:1:{i:0;s:1:"1";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 29, 2, '<p><strong><span style="font-size: 13px;">The Maya calendar(s) were based on a year length of ...</span></strong></p>', 'multiple_one', 'medium', 'a:4:{i:0;s:8:"350 days";i:1;s:8:"360 days";i:2;s:8:"365 days";i:3;s:8:"370 days";}', 'a:1:{i:0;s:1:"2";}', '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 29, 2, '&quot;The Maya have developed a complete writing system&quot;. This sentense is...\r\n', 'multiple_one', 'medium', 'a:2:{i:0;s:7:"Correct";i:1;s:5:"Wrong";}', 'a:1:{i:0;s:1:"0";}', 'The Maya writing system (often called hieroglyphs from a superficial resemblance to the Ancient Egyptian writing) was a combination of phonetic symbols and logograms. It is most often classified as a logographic or (more properly) a logosyllabic writing system, in which syllabic signs play a significant role. It is the only writing system of the Pre-Columbian New World which is known to completely represent the spoken language of its community. In total, the script has more than a thousand different glyphs, although a few are variations of the same sign or meaning, and many appear only rarely or are confined to particular localities. At any one time, no more than around 500 glyphs were in use, some 200 of which (including variations) had a phonetic or syllabic interpretation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 29, 2, '<p><span style="font-size: 13px;"><strong>The political structure of Mayas was based on ...</strong></span></p>', 'multiple_one', 'medium', 'a:2:{i:0;s:23:"Small, divided kingdoms";i:1;s:36:"One big kingdom with a central ruler";}', 'a:1:{i:0;s:1:"0";}', '<p>A typical Classic Maya polity was a small hierarchical state (ajawil, ajawlel, or ajawlil) headed by a hereditary ruler known as an ajaw (later k’uhul ajaw). Such kingdoms were usually no more than a capital city with its neighborhood and several lesser towns, although there were greater kingdoms, which controlled larger territories and extended patronage over smaller polities.</p>', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 29, 2, '<p><strong><span style="font-size: 13px;">When was the the first “Maya” settlements were established? </span></strong></p>', 'multiple_one', 'medium', 'a:3:{i:0;s:14:"Around 2800 BC";i:1;s:14:"Around 1800 BC";i:2;s:13:"Around 800 BC";}', 'a:1:{i:0;s:1:"1";}', '<p>While the Maya area was initially inhabited around the 10th millennium BC, the first clearly “Maya” settlements were established in approximately 1800 BC in Soconusco region of the Pacific Coast. This point in time, known as the Early Preclassic, was characterized by sedentary communities and the introduction of pottery and fired clay figurines.</p>', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 29, 2, '<p><span style="font-size: 13px;"><strong>The geographic position of Maya civilization was ...</strong></span></p>', 'multiple_one', 'medium', 'a:3:{i:0;s:13:"North America";i:1;s:15:"Central America";i:2;s:13:"South America";}', 'a:1:{i:0;s:1:"1";}', '<p>The geographic extent of the Maya civilization, known as the Maya area, extended throughout the northern Central American region, including the present-day nations of Guatemala, Belize, El Salvador, western Honduras , and the southern Mexican states of Chiapas, Tabasco, and the Yucatán Peninsula states of Quintana Roo, Campeche and Yucatán.</p>', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 29, 2, '<p><span style="font-size: 13px;">The Maya people disappeared ....</span></p>', 'multiple_one', 'medium', 'a:3:{i:0;s:31:"With the Classic period decline";i:1;s:43:"When spanish arrived and colonized America ";i:2;s:23:"Never, they still exist";}', 'a:1:{i:0;s:1:"2";}', '<p>The Maya peoples never disappeared, neither at the time of the Classic period decline nor with the arrival of the Spanish conquistadores and the subsequent Spanish colonization of the Americas. Today, the Maya and their descendants form sizable populations throughout the Maya area and maintain a distinctive set of traditions and beliefs that are the result of the merger of pre-Columbian and post-Conquest ideologies (and structured by the almost total adoption of Roman Catholicism)</p>', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 31, 3, '<span class="Apple-style-span" style="font-size: small">Programming can be tought directly through good programming books</span>', 'multiple_one', 'low', 'a:2:{i:0;s:4:"True";i:1;s:5:"False";}', 'a:1:{i:0;s:1:"1";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 36, 3, '<span class="Apple-style-span" style="font-size: small">Select all options that can delay the executation of a program</span>\r\n', 'multiple_many', 'medium', 'a:4:{i:0;s:17:"Unoptimized loops";i:1;s:21:"Too much Input-Output";i:2;s:7:"Logging";i:3;s:11:"Slow memory";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"1";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 32, 3, '<span class="Apple-style-span" style="font-size: small">The most efficient way to debug is... (select those that apply)</span>\r\n', 'multiple_many', 'medium', 'a:4:{i:0;s:29:"By dividing the problem space";i:1;s:14:"By using a log";i:2;s:19:"By using a profiler";i:3;s:27:"By using garbage collection";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"1";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 31, 3, '<span class="Apple-style-span" style="font-size: small">What is the best way to deal with poor programming code</span>\r\n', 'multiple_one', 'medium', 'a:3:{i:0;s:10:"Rewrite it";i:1;s:8:"Debug it";i:2;s:9:"Bundle it";}', 'a:1:{i:0;s:1:"2";}', 'Bundling poor code with good coding practices so you limit its effect to the rest of the system is usually most efficient than trying to debug it or rewrite it', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 31, 3, 'Which of the following are source control systems\r\n', 'multiple_many', 'medium', 'a:5:{i:0;s:3:"SVN";i:1;s:3:"CVS";i:2;s:3:"ERP";i:3;s:3:"HCD";i:4;s:3:"NGI";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"1";}', 'SVN= Subversioning<br />CVS= Concurrent Versioning System', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 59, 4, '<span class="Apple-style-span" style="font-size: small">The most efficient way to debug is... (select those that apply)</span>', 'multiple_many', 'medium', 'a:4:{i:0;s:29:"By dividing the problem space";i:1;s:14:"By using a log";i:2;s:19:"By using a profiler";i:3;s:27:"By using garbage collection";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"1";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 59, 4, '<span class="Apple-style-span" style="font-size: small">Select all options that can delay the executation of a program</span>', 'multiple_many', 'medium', 'a:4:{i:0;s:17:"Unoptimized loops";i:1;s:21:"Too much Input-Output";i:2;s:7:"Logging";i:3;s:11:"Slow memory";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"1";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 56, 4, 'To deal with performance problems you should...', 'multiple_one', 'medium', 'a:4:{i:0;s:37:"Find the few bottlenecks and fix them";i:1;s:63:"Fix as many as possible issues with varying degrees of benefits";i:2;s:28:"Buy more hardware and memory";i:3;s:29:"Build the system from scratch";}', 'a:1:{i:0;s:1:"0";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 59, 4, '<span class="Apple-style-span" style="font-size: small">Programming can be tought directly through good programming books</span>', 'multiple_one', 'low', 'a:2:{i:0;s:4:"True";i:1;s:5:"False";}', 'a:1:{i:0;s:1:"1";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 78, 4, '<span class="Apple-style-span" style="font-size: small">Programming can be tought directly through good programming books</span>', 'multiple_one', 'low', 'a:2:{i:0;s:4:"True";i:1;s:5:"False";}', 'a:1:{i:0;s:1:"1";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 78, 4, 'Which of the following are source control systems\r\n', 'multiple_many', 'medium', 'a:5:{i:0;s:3:"SVN";i:1;s:3:"CVS";i:2;s:3:"ERP";i:3;s:3:"HCD";i:4;s:3:"NGI";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"1";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 78, 4, '<span class="Apple-style-span" style="font-size: small">Select all options that can delay the executation of a program</span>', 'multiple_many', 'medium', 'a:4:{i:0;s:17:"Unoptimized loops";i:1;s:21:"Too much Input-Output";i:2;s:7:"Logging";i:3;s:11:"Slow memory";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"1";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 78, 4, '<span class="Apple-style-span" style="font-size: small">What is the best way to deal with poor programming code</span>\r\n', 'multiple_one', 'medium', 'a:3:{i:0;s:10:"Rewrite it";i:1;s:8:"Debug it";i:2;s:9:"Bundle it";}', 'a:1:{i:0;s:1:"2";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 78, 4, '<span class="Apple-style-span" style="font-size: small">The most efficient way to debug is... (select those that apply)</span>', 'multiple_many', 'medium', 'a:4:{i:0;s:29:"By dividing the problem space";i:1;s:14:"By using a log";i:2;s:19:"By using a profiler";i:3;s:27:"By using garbage collection";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"1";}', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 95, 5, '<span class="Apple-style-span" style="font-style: italic">&quot;Whenever you can you should avoid loops&quot;</span>. This sentense is ...', 'multiple_one', 'medium', 'a:4:{i:0;s:5:"False";i:1;s:4:"True";i:2;s:15:"Most often true";i:3;s:16:"Most often false";}', 'a:1:{i:0;s:1:"0";}', 'Loops are a necessary evil and often the reason for slowing down programs. Whenever you can you should replace them with better solutions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 1006, 6, '<p><span style="color: #000000; font-family: verdana,geneva;">In order to insert an image inside the content of a unit we have to follow a specific procedure. <br /></span></p>\r\n<p><span style="color: #000000; font-family: verdana,geneva;">Put the steps below in the correct order.</span></p>\r\n<p><span style="color: #000000; font-family: verdana,geneva;"><br /></span></p>', 'match', 'medium', 'a:4:{i:0;s:8:"1st step";i:1;s:8:"2nd step";i:2;s:8:"3rd step";i:3;s:8:"4th step";}', 'a:4:{i:0;s:38:"We save the image file in our computer";i:1;s:83:"We upload the file in the platform, by using the function "Upload files and images"";i:2;s:73:"We place the mouse at the point of the text where we want to insert the i";i:3;s:102:"We open the file manager or we click on the Insert/edit image icon, we select the image and insert it.";}', '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 240, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 1005, 6, '<p><span style="font-family: verdana,geneva;">Which of the following options can be defined for a course?</span></p>', 'multiple_one', 'medium', 'a:4:{i:0;s:11:"Information";i:1;s:8:"Schedule";i:2;s:5:"Rules";i:3;s:16:"All of the above";}', 'a:1:{i:0;s:1:"3";}', '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 130, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 1005, 6, '<p><span style="font-family: verdana,geneva;">A lesson may be part of a course <strong>and</strong> be available directly on the same time.</span></p>', 'true_false', 'medium', '', 's:1:"0";', '<p><span style="font-family: verdana,geneva;">A lesson can be available <strong>either</strong> exclusively through a course <strong>or</strong> directly.</span><br /><br /></p>', 'N;', 60, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 1005, 6, '<p><span style="font-family: verdana,geneva;"><strong>New</strong> lessons can be added by the :</span></p>', 'multiple_one', 'medium', 'a:3:{i:0;s:13:"Administrator";i:1;s:9:"Professor";i:2;s:12:"Both of them";}', 'a:1:{i:0;s:1:"2";}', '<p><span style="font-family: verdana,geneva;">If the system''s administrator is allows it the professors can also add new lessons and courses.<br /></span></p>', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', 90, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 1012, 6, '<p>In order for a lesson to be auto-complete , the professor must define:</p>', 'multiple_one', 'medium', 'a:2:{i:0;s:24:"Content traversing rules";i:1;s:23:"Lesson completion rules";}', 'a:1:{i:0;s:1:"1";}', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 90, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 1013, 6, '<p><span style="font-family: verdana,geneva;">Reports can be exported in ### and ### format.</span></p>', 'empty_spaces', 'medium', '', 'a:2:{i:0;s:9:"excel|pdf";i:1;s:9:"excel|pdf";}', '', 'N;', 120, 'a:1:{s:11:"select_list";s:1:"0";}', NULL, NULL, NULL, NULL, NULL),
(31, 1009, 6, '<p><span style="font-family: verdana,geneva;">Professors are able to activate and de-activate lesson options and modules on will.</span></p>', 'true_false', 'medium', '', 's:1:"1";', '', 'N;', 60, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 1006, 6, '<p><span style="font-family: verdana,geneva;">Projects must have deadlines.</span></p>', 'true_false', 'medium', '', 's:1:"1";', '', 'N;', 90, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 1006, 6, '<p><span style="font-family: verdana,geneva;">Which of the following sentences is true about feedbacks?</span></p>', 'multiple_one', 'medium', 'a:3:{i:0;s:85:"Feedbacks become part of the lesson content but they can not affect the lesson rules.";i:1;s:91:"Feedbacks can be part of the lesson rules but they don''t become part of the lesson content.";i:2;s:76:"Feedbacks become part of the lesson content and can affect the lesson rules.";}', 'a:1:{i:0;s:1:"2";}', '', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', 180, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 1017, 6, '<p><span style="font-family: verdana,geneva;">Students are not allowed to send personal messages to other students.</span></p>', 'true_false', 'medium', '', 's:1:"0";', '', 'N;', 60, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 1006, 6, '<p><span style="font-family: verdana,geneva;">Which of the following types of files can we upload in eFront?</span></p>', 'multiple_one', 'medium', 'a:7:{i:0;s:11:"Flash files";i:1;s:9:"mp3 files";i:2;s:9:"Pdf files";i:3;s:14:"SCORM packages";i:4;s:9:"mp4 files";i:5;s:9:"flv files";i:6;s:13:"all the above";}', 'a:1:{i:0;s:1:"6";}', '', 'a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}', 180, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 1020, 7, '<p>Are we able to use a different theme per browser in eFront?</p>', 'multiple_one', 'medium', 'a:2:{i:0;s:3:"Yes";i:1;s:2:"No";}', 'a:1:{i:0;s:1:"0";}', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 90, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 1020, 7, '<p>eFront provides a mobile theme for mobile clients.</p>', 'true_false', 'medium', '', 's:1:"1";', '', 'N;', 90, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 1020, 7, '<p>Through the "Themes" function we can change the ### of the platform and the ### .</p>', 'empty_spaces', 'medium', '', 'a:2:{i:0;s:6:"layout";i:1;s:5:"theme";}', '', 'N;', 180, 'a:1:{s:11:"select_list";s:1:"0";}', NULL, NULL, NULL, NULL, NULL),
(39, 1026, 7, '<p>Anyone is able to develop a module and install it in eFront, following the instructions provided by the eFront team.</p>', 'true_false', 'medium', '', 's:1:"1";', '', 'N;', 90, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 1026, 7, '<p>In order for a module to be available to the users it must get installed and activated by the ### .</p>', 'empty_spaces', 'medium', '', 'a:1:{i:0;s:13:"administrator";}', '', 'N;', 150, 'a:1:{s:11:"select_list";s:1:"0";}', NULL, NULL, NULL, NULL, NULL),
(41, 1027, 7, '<p>When copying content from one lesson to another we can copy:</p>', 'multiple_many', 'medium', 'a:5:{i:0;s:10:"some units";i:1;s:9:"all units";i:2;s:13:"the questions";i:3;s:11:"the surveys";i:4;s:12:"the glossary";}', 'a:5:{i:0;s:1:"1";i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";}', '', 'a:5:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";}', 240, 'a:1:{s:13:"answers_logic";s:0:"";}', NULL, NULL, NULL, NULL, NULL),
(42, 1027, 7, '<p>We can define that a course will be completed automatically according to its rules, but the certificates must always be issued manually.</p>', 'true_false', 'medium', '', 's:1:"0";', '', 'N;', 150, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 1027, 7, '<p>Certificates can be issued for a :</p>', 'multiple_one', 'medium', 'a:3:{i:0;s:6:"lesson";i:1;s:6:"course";i:2;s:8:"category";}', 'a:1:{i:0;s:1:"1";}', '', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";}', 120, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 1027, 7, '<p>Certificates may have expiration date.</p>', 'true_false', 'medium', '', 's:1:"1";', '', 'N;', 90, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 1027, 7, '<p>The SCORM data can be reviewed in eFront and are shown in reports.</p>', 'true_false', 'medium', '', 's:1:"1";', '', 'N;', 120, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 1027, 7, '<p>The PDF files uploaded as the content of the units open inside eFront.</p>', 'true_false', 'medium', '', 's:1:"1";', '', 'N;', 150, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 0, 3, '<p>dfsgs dsf hfd hf</p>', 'true_false', 'medium', '', 's:1:"1";', '', 'N;', 70, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for table `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
`id` int(8) unsigned NOT NULL,
  `content_id` int(8) unsigned NOT NULL DEFAULT '0',
  `lesson_id` int(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `mastery_score` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `options` text,
  `publish` tinyint(1) DEFAULT '1',
  `keep_best` tinyint(1) DEFAULT '0',
  `created_by` varchar(128) DEFAULT NULL,
  `modified_by` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `content_id`, `lesson_id`, `name`, `mastery_score`, `description`, `active`, `options`, `publish`, `keep_best`, `created_by`, `modified_by`, `created`, `modified`) VALUES
(1, 2, 1, 'General concepts test', 0, '', 1, 'a:8:{s:8:"duration";s:3:"300";s:8:"redoable";s:1:"2";s:8:"onebyone";s:1:"1";s:7:"answers";s:1:"1";s:13:"given_answers";s:1:"1";s:17:"shuffle_questions";s:1:"0";s:15:"shuffle_answers";s:1:"0";s:17:"general_threshold";i:50;}', 1, 0, NULL, NULL, NULL, NULL),
(2, 30, 2, 'Maya History Test', 50, '<p><span style="font-size: 13px;">This is a generic test about Maya History with 6 generic questions.<br /> Note: All questions and possible answers are shuffled with each test view.<br /> <br /> <strong> </strong></span></p>', 1, 'a:21:{s:8:"duration";i:900;s:8:"redoable";s:2:"20";s:8:"onebyone";s:1:"0";s:7:"answers";s:1:"1";s:13:"given_answers";s:1:"1";s:17:"shuffle_questions";s:1:"1";s:15:"shuffle_answers";s:1:"1";s:17:"general_threshold";i:50;s:12:"master_score";i:50;s:11:"random_pool";i:0;s:17:"user_configurable";i:0;s:16:"maintain_history";s:1:"5";s:12:"display_list";s:1:"0";s:10:"pause_test";s:1:"1";s:15:"display_weights";s:1:"1";s:12:"only_forward";s:1:"0";s:10:"answer_all";s:1:"0";s:10:"redo_wrong";s:1:"0";s:8:"redirect";s:1:"0";s:13:"assign_to_new";N;s:20:"automatic_assignment";N;}', 1, 0, NULL, NULL, NULL, NULL),
(3, 54, 3, 'Small self-assesment test', 50, '<p><span style="font-family: trebuchet ms,geneva; font-size: 16px;"><strong>This is a small test that will check your basic programming skills</strong></span></p>', 1, 'a:21:{s:8:"duration";i:180;s:8:"redoable";i:0;s:8:"onebyone";s:1:"0";s:7:"answers";s:1:"0";s:13:"given_answers";s:1:"0";s:17:"shuffle_questions";s:1:"1";s:15:"shuffle_answers";s:1:"1";s:12:"master_score";i:50;s:11:"random_pool";i:0;s:17:"user_configurable";i:0;s:16:"maintain_history";s:1:"5";s:12:"display_list";s:1:"0";s:10:"pause_test";s:1:"1";s:15:"display_weights";s:1:"1";s:12:"only_forward";s:1:"0";s:10:"answer_all";s:1:"0";s:10:"redo_wrong";s:1:"0";s:8:"redirect";s:1:"0";s:17:"general_threshold";i:50;s:13:"assign_to_new";N;s:20:"automatic_assignment";N;}', 1, 0, NULL, NULL, NULL, NULL),
(4, 78, 4, 'A small programming test', 60, 'A small programming test\r\n', 1, 'a:10:{s:8:"duration";i:300;s:8:"redoable";s:1:"3";s:8:"onebyone";s:1:"0";s:7:"answers";s:1:"1";s:13:"given_answers";s:1:"1";s:17:"shuffle_questions";s:1:"0";s:15:"shuffle_answers";s:1:"0";s:17:"general_threshold";N;s:13:"assign_to_new";s:0:"";s:20:"automatic_assignment";s:0:"";}', 1, 0, NULL, NULL, NULL, NULL),
(5, 1002, 6, 'Final Test', 50, '', 1, 'a:22:{s:8:"duration";i:0;s:8:"redoable";s:1:"1";s:8:"onebyone";s:1:"0";s:12:"only_forward";s:1:"0";s:13:"given_answers";i:1;s:10:"show_score";i:1;s:20:"show_answers_if_pass";i:1;s:16:"maintain_history";s:1:"5";s:7:"answers";i:0;s:8:"redirect";i:0;s:15:"shuffle_answers";s:1:"0";s:17:"shuffle_questions";s:1:"0";s:10:"pause_test";s:1:"0";s:12:"display_list";s:1:"0";s:15:"display_weights";s:1:"0";s:10:"answer_all";s:1:"1";s:13:"test_password";s:0:"";s:10:"redo_wrong";s:1:"0";s:17:"general_threshold";i:50;s:13:"assign_to_new";N;s:20:"automatic_assignment";N;s:15:"student_results";N;}', 1, 0, NULL, NULL, NULL, NULL),
(6, 1019, 7, 'Final Test', 50, '', 1, 'a:22:{s:8:"duration";i:0;s:8:"redoable";s:1:"3";s:8:"onebyone";s:1:"0";s:12:"only_forward";s:1:"0";s:13:"given_answers";i:1;s:10:"show_score";i:1;s:20:"show_answers_if_pass";i:0;s:16:"maintain_history";s:1:"3";s:7:"answers";i:0;s:8:"redirect";i:0;s:15:"shuffle_answers";s:1:"0";s:17:"shuffle_questions";s:1:"0";s:10:"pause_test";s:1:"0";s:12:"display_list";s:1:"0";s:15:"display_weights";s:1:"0";s:10:"answer_all";s:1:"0";s:13:"test_password";s:0:"";s:10:"redo_wrong";s:1:"0";s:17:"general_threshold";N;s:13:"assign_to_new";N;s:20:"automatic_assignment";N;s:15:"student_results";N;}', 1, 0, NULL, NULL, NULL, NULL),
(7, 1041, 3, 'test', 50, '<p>asdhfjgkj hjskdf ashjdfg asdfhj sdhjf skjdfh</p>', 1, 'a:26:{s:8:"duration";i:600;s:8:"redoable";s:1:"1";s:8:"onebyone";s:1:"1";s:12:"only_forward";s:1:"1";s:13:"given_answers";i:1;s:10:"show_score";i:1;s:20:"show_answers_if_pass";i:1;s:16:"maintain_history";s:1:"5";s:7:"answers";i:0;s:8:"redirect";i:0;s:15:"shuffle_answers";s:1:"1";s:17:"shuffle_questions";s:1:"1";s:10:"pause_test";s:1:"1";s:12:"display_list";s:1:"0";s:15:"display_weights";s:1:"0";s:10:"answer_all";i:0;s:13:"test_password";N;s:10:"redo_wrong";i:0;s:17:"general_threshold";i:50;s:13:"assign_to_new";N;s:20:"automatic_assignment";N;s:15:"student_results";N;s:13:"mastery_score";i:50;s:11:"random_pool";i:0;s:17:"user_configurable";i:0;s:15:"show_incomplete";i:0;}', 1, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_questions`
--

CREATE TABLE IF NOT EXISTS `test_questions` (
`id` int(8) unsigned NOT NULL,
  `test_id` int(8) unsigned NOT NULL DEFAULT '0',
  `question_id` int(8) unsigned NOT NULL DEFAULT '0',
  `weight` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `previous_question_id` int(8) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `test_questions`
--

INSERT INTO `test_questions` (`id`, `test_id`, `question_id`, `weight`, `previous_question_id`, `created`, `modified`) VALUES
(1, 1, 1, 1, 167, NULL, NULL),
(2, 1, 2, 1, 164, NULL, NULL),
(3, 1, 3, 1, 0, NULL, NULL),
(4, 2, 4, 1, 0, NULL, NULL),
(5, 2, 5, 1, 4, NULL, NULL),
(6, 2, 6, 1, 7, NULL, NULL),
(7, 2, 7, 1, 5, NULL, NULL),
(8, 2, 8, 1, 6, NULL, NULL),
(9, 2, 9, 1, 8, NULL, NULL),
(10, 3, 10, 1, 13, NULL, NULL),
(11, 3, 11, 1, 12, NULL, NULL),
(12, 3, 12, 1, 10, NULL, NULL),
(13, 3, 13, 1, 14, NULL, NULL),
(14, 3, 14, 1, 0, NULL, NULL),
(15, 4, 19, 1, 0, NULL, NULL),
(16, 4, 20, 1, 19, NULL, NULL),
(17, 4, 21, 1, 20, NULL, NULL),
(18, 4, 22, 1, 21, NULL, NULL),
(19, 4, 23, 1, 22, NULL, NULL),
(20, 5, 25, 1, 0, NULL, NULL),
(21, 5, 26, 1, 25, NULL, NULL),
(22, 5, 27, 1, 26, NULL, NULL),
(23, 5, 28, 1, 27, NULL, NULL),
(24, 5, 29, 1, 30, NULL, NULL),
(25, 5, 30, 1, 28, NULL, NULL),
(26, 5, 31, 1, 29, NULL, NULL),
(27, 5, 32, 1, 31, NULL, NULL),
(28, 5, 33, 1, 32, NULL, NULL),
(29, 5, 34, 1, 33, NULL, NULL),
(30, 5, 35, 1, 34, NULL, NULL),
(31, 6, 36, 1, 0, NULL, NULL),
(32, 6, 37, 1, 36, NULL, NULL),
(33, 6, 38, 1, 37, NULL, NULL),
(34, 6, 39, 1, 38, NULL, NULL),
(35, 6, 40, 1, 39, NULL, NULL),
(36, 6, 41, 1, 40, NULL, NULL),
(37, 6, 42, 1, 41, NULL, NULL),
(38, 6, 43, 1, 42, NULL, NULL),
(39, 6, 44, 1, 43, NULL, NULL),
(40, 6, 45, 1, 44, NULL, NULL),
(41, 6, 46, 1, 45, NULL, NULL),
(42, 7, 47, 1, 48, NULL, NULL),
(43, 7, 48, 3, 0, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_group_id`, `username`, `password`, `email`, `fax`, `first_name`, `last_name`, `gender`, `current_address`, `city`, `postal`, `country`, `permanent_address`, `cell_phone`, `home_phone`, `national_idnumber`, `photo`, `photo_dir`, `aboutme`, `website`, `facebook`, `twitter`, `gplus`, `youtube`, `address`, `birthdate`, `ip`, `active`, `timezone`, `comments`, `user_type`, `pending`, `viewed_license`, `status`, `short_description`, `balance`, `need_pwd_change`, `description`, `db_type`, `size`, `type`, `options`, `default_value`, `visible`, `mandatory`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(4, 1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@bou.com', '', 'Admin', 'Admin', 'Male', 'Unavailable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BOUniversity.gif', '4', '', '', '', '', '', '', '', '2013-01-01', NULL, '1', NULL, NULL, 'admin', 0, 0, '1', NULL, 0, 0, '', '', 255, 'image/gif', NULL, NULL, 1, 1, '2014-12-14 10:39:14', '2014-12-14 10:39:14', 'admin@bou.com', 'admin@bou.com'),
(6, 4, 'mustafa', 'e10adc3949ba59abbe56e057f20f883e', 'mustafa@liveoutsource.com', '', 'Mustafa', 'Khan', 'Male', NULL, NULL, NULL, NULL, NULL, '', '', '1111111111111111111111111', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-15 04:26:56', '2014-12-15 04:26:56', NULL, NULL),
(8, 2, 'doha.physics.du@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'doha.physics.du@gmail.com', '', 'hasan', 'doha', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-15 11:02:52', '2014-12-16 01:30:22', NULL, NULL),
(9, 2, 's.sazzad@liveoutsource.com', 'e10adc3949ba59abbe56e057f20f883e', 's.sazzad@liveoutsource.com', '', 'Salim', 'Sazzad', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-16 08:04:17', '2014-12-16 08:04:17', NULL, NULL),
(10, 2, 'zaman.niton@gmail.com', '17b3c9bbee07c911a17de1bf01d70e66', 'zaman.niton@gmail.com', '', 'Mohammed', 'Kamruzzaman', 'male', NULL, NULL, NULL, NULL, NULL, '01711555111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-16 10:46:22', '2014-12-16 10:46:22', NULL, NULL),
(11, 2, 'salim.sazzad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'salim.sazzad@gmail.com', '', 'Salim', 'Sazzad', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '0', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-16 11:43:10', '2014-12-16 11:43:10', NULL, NULL),
(12, 2, 'sudeb.phy137@gmail.com', '7e4ccbebd91460f0b7f24aa432c47096', 'sudeb.phy137@gmail.com', '', 'Sudeb', 'Kumar', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-16 22:23:19', '2014-12-16 22:23:19', NULL, NULL),
(13, 2, 'rusdid@iveoutsource.com', 'e10adc3949ba59abbe56e057f20f883e', 'rusdid@iveoutsource.com', '', 'zzzzz', 'rrrrrrr', 'male', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, '1', NULL, NULL, 'student', 0, 0, '', NULL, 0, 0, '', '', 255, NULL, NULL, NULL, 1, 1, '2014-12-17 00:01:25', '2014-12-17 00:01:25', NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=307 ;

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
(159, 1, 'Courses', 'course_lessons', 0),
(160, 2, 'Courses', 'course_lessons', 0),
(161, 3, 'Courses', 'course_lessons', 0),
(162, 4, 'Courses', 'course_lessons', 0),
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
(187, 1, 'Courses', 'course_info', 0),
(188, 2, 'Courses', 'course_info', 0),
(189, 3, 'Courses', 'course_info', 0),
(190, 4, 'Courses', 'course_info', 0),
(191, 1, 'Courses', 'detail', 1),
(192, 2, 'Courses', 'detail', 1),
(193, 3, 'Courses', 'detail', 1),
(194, 4, 'Courses', 'detail', 1),
(195, 1, 'Courses', 'view', 1),
(196, 2, 'Courses', 'view', 0),
(197, 3, 'Courses', 'view', 0),
(198, 4, 'Courses', 'view', 1),
(199, 1, 'Courses', 'index', 1),
(200, 2, 'Courses', 'index', 0),
(201, 3, 'Courses', 'index', 0),
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
(236, 2, 'Lessons', 'view', 1),
(237, 3, 'Lessons', 'view', 1),
(238, 4, 'Lessons', 'view', 1),
(239, 1, 'Lessons', 'index', 1),
(240, 2, 'Lessons', 'index', 1),
(241, 3, 'Lessons', 'index', 1),
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
(303, 1, 'Messages', 'detail', 1),
(304, 2, 'Messages', 'detail', 1),
(305, 3, 'Messages', 'detail', 0),
(306, 4, 'Messages', 'detail', 0);

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
-- Indexes for table `tests`
--
ALTER TABLE `tests`
 ADD PRIMARY KEY (`id`), ADD KEY `lessons_ID` (`lesson_id`);

--
-- Indexes for table `test_questions`
--
ALTER TABLE `test_questions`
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
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `content_users`
--
ALTER TABLE `content_users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `course_lessons`
--
ALTER TABLE `course_lessons`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `course_users`
--
ALTER TABLE `course_users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `glossary`
--
ALTER TABLE `glossary`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `lesson_users`
--
ALTER TABLE `lesson_users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
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
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `test_questions`
--
ALTER TABLE `test_questions`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=307;
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
