-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2014 at 09:56 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `source_temp_v4`
--

-- --------------------------------------------------------

--
-- Table structure for table `web_articles`
--

CREATE TABLE IF NOT EXISTS `web_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `url_hinh` varchar(150) NOT NULL,
  `metaDescription` varchar(300) NOT NULL,
  `metaKeyword` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `menu_id` varchar(20) DEFAULT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `ngay_dang` datetime NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `web_articles`
--

INSERT INTO `web_articles` (`id`, `name`, `name_alias`, `url_hinh`, `metaDescription`, `metaKeyword`, `content`, `other`, `menu_id`, `lang`, `status`, `ngay_dang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trang chủ', 'trang-chu', 'Chrysanthemum.jpg', 'Trang chủ', 'Trang chủ', '<p>test&nbsp;Trang chủ 111111111</p>\r\n', 0, ',1,', 'vi', 1, '2014-05-29 15:00:00', '2014-05-29 09:35:29', '2014-05-30 11:09:34', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_articles_cm`
--

CREATE TABLE IF NOT EXISTS `web_articles_cm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `info_alias` varchar(200) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `web_config`
--

CREATE TABLE IF NOT EXISTS `web_config` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `domain` varchar(30) DEFAULT NULL,
  `max_limit_1` int(2) DEFAULT NULL,
  `max_limit_2` int(2) DEFAULT NULL,
  `max_limit_3` int(2) DEFAULT NULL,
  `max_limit_4` int(2) DEFAULT NULL,
  `copyright` varchar(250) DEFAULT NULL,
  `contact_foo` varchar(200) DEFAULT NULL,
  `contact_form` text NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `yahoo` varchar(100) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `hotline` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang` (`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `name`, `lang`, `domain`, `max_limit_1`, `max_limit_2`, `max_limit_3`, `max_limit_4`, `copyright`, `contact_foo`, `contact_form`, `email`, `yahoo`, `tel`, `hotline`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Việt Nam', 'vi', 'localhost/all/source_temp_v4', 10, 10, 10, 10, 'Copyright © 2014 by NETSPACE', 'Trường dạy nấu ăn NETSPACE', '', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 388', '0988 388 388', 1, '2013-02-20 13:35:24', '2014-05-31 05:57:03', 'admin', '', 0),
(2, 'English', 'en', 'localhost/all/source_temp_v4', 10, 10, 10, 10, 'Copyright © 2014 by NETSPACE', 'Culinary Arts School NetSpace', '', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 388', '0988 388 388', 1, '2013-08-10 10:09:29', '2014-05-29 11:37:06', 'admin', 'admin', 0),
(4, '', '0', NULL, 0, 0, 0, 0, '', '', '', '', NULL, NULL, '', 1, '2014-05-29 09:18:55', NULL, 'admin', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_contact`
--

CREATE TABLE IF NOT EXISTS `web_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `web_contact`
--

INSERT INTO `web_contact` (`id`, `name`, `email`, `phone`, `diachi`, `message`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trần Nhân', 'hieunhan112@gmail.com', '0988388003', '123 CMT 8', '<p>Test <span style="color:#A52A2A;">lien he</span></p>\r\n', 'vi', 1, '2014-05-30 11:17:46', '2014-05-30 11:21:47', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_language`
--

CREATE TABLE IF NOT EXISTS `web_language` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `ma` varchar(10) NOT NULL,
  `order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `web_language`
--

INSERT INTO `web_language` (`id`, `name`, `ma`, `order`, `status`) VALUES
(1, 'Việt Nam', 'vi', 1, 1),
(2, 'English', 'en', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_list_sendmail`
--

CREATE TABLE IF NOT EXISTS `web_list_sendmail` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `web_list_sendmail`
--

INSERT INTO `web_list_sendmail` (`id`, `name`, `email`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Tú', 'consultant1@netspace.edu.vn', 'vi', 1, '2013-12-17 13:52:33', '2014-02-07 14:07:35', 'admin', NULL, 0),
(2, 'Thanh', 'consultant2@netspace.edu.vn', 'vi', 1, '2013-12-17 13:53:05', '2014-02-07 14:07:24', 'admin', NULL, 0),
(3, 'Khắc', 'consultant3@netspace.edu.vn', 'vi', 1, '2013-12-17 13:54:05', '2014-02-07 14:07:51', 'admin', NULL, 0),
(4, 'Tiên', 'consultant4@netspace.edu.vn', 'vi', 1, '2013-12-17 13:54:18', '2014-03-18 11:32:04', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu`
--

CREATE TABLE IF NOT EXISTS `web_menu` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `name_alias` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `metaDescription` varchar(250) DEFAULT NULL,
  `metaKeyword` varchar(150) DEFAULT NULL,
  `parent_id` int(3) NOT NULL DEFAULT '0',
  `type_id` int(1) DEFAULT NULL,
  `position_id` varchar(10) DEFAULT NULL,
  `order` int(3) DEFAULT '0',
  `other` tinyint(1) DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `web_menu`
--

INSERT INTO `web_menu` (`id`, `name`, `name_alias`, `url`, `url_hinh`, `title`, `metaDescription`, `metaKeyword`, `parent_id`, `type_id`, `position_id`, `order`, `other`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trang chủ', 'trang-chu', 'trang-chu/', 'Koala.jpg', 'Trang chủ', 'Trang chủ', 'Trang chủ', 0, 1, ',2,', 1, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-05-31 05:57:12', 'admin', '', 0),
(2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 0, 2, ',2,', 2, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-05-30 10:18:50', 'admin', 'admin', 0),
(3, 'Tầm nhìn', 'tam-nhin', 'tam-nhin/', '', 'Tầm nhìn', 'Tầm nhìn', 'Tầm nhìn', 2, 2, ',2,', 1, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-05-30 10:09:58', 'admin', 'admin', 0),
(4, 'Sứ mệnh', 'su-menh', 'su-menh/', '', 'Sứ mệnh', 'Sứ mệnh', 'Sứ mệnh', 2, 2, ',2,', 1, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-05-30 10:10:03', 'admin', 'admin', 0),
(5, 'Đối tác', 'doi-tac', 'doi-tac/', '', 'Đối tác', 'Đối tác', 'đối tác,doi tac', 2, 2, ',2,', 3, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-05-30 10:09:47', 'admin', 'admin', 0),
(6, 'Sản phẩm', 'san-pham', 'san-pham/', '', 'Sản phẩm', 'Sản phẩm', 'sản phẩm,san pham', 0, 3, ',2,', 3, 1, 'vi', 1, '2014-05-30 10:19:14', '2014-05-30 11:18:37', 'admin', 'admin', 0),
(7, 'Hình ảnh', 'hinh-anh', 'hinh-anh/', '', 'Hình ảnh', 'Hình ảnh', 'hình ảnh,hinh anh', 0, 5, ',2,', 4, 0, 'vi', 1, '2014-05-30 11:06:51', NULL, 'admin', NULL, 0),
(8, 'Video', 'video', 'video/', '', 'Video', 'Video', 'video,video', 0, 6, ',2,', 5, 0, 'vi', 1, '2014-05-30 11:07:21', NULL, 'admin', NULL, 0),
(9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'liên hệ,lien he', 0, 13, ',2,', 6, 0, 'vi', 1, '2014-05-30 11:07:57', '2014-05-30 11:37:44', 'admin', 'nhan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_admin`
--

CREATE TABLE IF NOT EXISTS `web_menu_admin` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `other` tinyint(1) DEFAULT '0',
  `ajax` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `web_menu_admin`
--

INSERT INTO `web_menu_admin` (`id`, `name`, `url`, `url_hinh`, `order`, `status`, `other`, `ajax`) VALUES
(1, 'Trang chủ', 'home', 'icon-home.jpg', 1, 1, 0, NULL),
(2, 'Cấu hình website', 'web_config', 'icon-cau-hinh.jpg', 2, 1, 1, NULL),
(3, 'Danh mục menu', 'web_menu', 'icon-menu.jpg', 3, 1, 0, NULL),
(4, 'Thông tin, bài viết', 'web_articles', 'icon-info.jpg', 4, 1, 0, NULL),
(5, 'Thư viện ảnh', 'web_photo_gallery', 'icon-thu-vien-anh.jpg', 5, 1, 0, NULL),
(6, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 6, 1, 0, NULL),
(7, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 7, 1, 1, NULL),
(8, 'Item 8', '', 'icon-lich-khai-giang.jpg', 8, 0, 0, NULL),
(9, 'Item 9', '', 'icon-product.jpg', 9, 0, 0, NULL),
(10, 'Item 10', '', 'icon-register.jpg', 10, 0, 0, NULL),
(11, 'Item 11', '', 'icon-hoc-vien.jpg', 11, 0, 0, NULL),
(12, 'Item 12', '', 'icon-lien-he.jpg', 12, 0, 0, NULL),
(13, 'Item 13', '', 'icon-tuyen-dung-thong-tin.jpg', 13, 0, 0, NULL),
(14, 'Item 14', '', 'icon-contact.jpg', 14, 0, 0, NULL),
(15, 'Item 15', '', 'icon-tuyendung-ho-so.jpg', 15, 0, 0, NULL),
(16, 'Item 16', '', '', 16, 0, 0, NULL),
(17, 'Item 17', '', '', 17, 0, 0, NULL),
(18, 'Item 18', '', '', 18, 0, 0, NULL),
(19, 'Item 19', '', '', 19, 0, 0, NULL),
(20, 'Item 20', '', '', 20, 0, 0, NULL),
(21, 'Item 21', '', '', 21, 0, 0, NULL),
(22, 'Liên hệ trực tuyến', 'web_contact', 'icon-lien-he.jpg', 22, 1, 0, '<span id="hocvien_lienhe" class="ajax_thongtin"></span>'),
(23, 'Tài khoản', 'web_users', 'icon-account.jpg', 100, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_position`
--

CREATE TABLE IF NOT EXISTS `web_menu_position` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `web_menu_position`
--

INSERT INTO `web_menu_position` (`id`, `name`, `order`, `status`) VALUES
(1, 'Top', 1, 0),
(2, 'Main', 2, 1),
(3, 'Bottom', 3, 1),
(4, 'Left', 4, 0),
(5, 'Right', 5, 0),
(6, 'Social', 6, 0),
(7, 'Other 1', 7, 0),
(8, 'Other 2', 8, 0),
(9, 'Không', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_type`
--

CREATE TABLE IF NOT EXISTS `web_menu_type` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order` int(2) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `web_menu_type`
--

INSERT INTO `web_menu_type` (`id`, `name`, `order`, `status`) VALUES
(1, 'Trang chủ', 1, 1),
(2, 'Thông tin bài viết', 2, 1),
(3, 'Sản phẩm', 3, 1),
(4, 'Dịch vụ', 4, 1),
(5, 'Hình ảnh', 5, 1),
(6, 'Video', 6, 1),
(7, 'Item 7', 7, 0),
(8, 'Item 8', 8, 0),
(9, 'Item 9', 9, 0),
(10, 'Item 10', 10, 0),
(11, 'Item 11', 11, 0),
(12, 'Đăng ký', 12, 0),
(13, 'Liên hệ', 13, 1),
(14, 'Không', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_photo_gallery`
--

CREATE TABLE IF NOT EXISTS `web_photo_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `menu_id` varchar(10) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `web_photo_gallery`
--

INSERT INTO `web_photo_gallery` (`id`, `name`, `url_hinh`, `menu_id`, `order`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Hoạt động', '', ',1,', 1, 'vi', 1, '2014-05-30 11:05:49', '2014-05-31 04:12:11', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `position_id` int(1) DEFAULT NULL,
  `menu_id` varchar(100) NOT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `web_slider_banner`
--

INSERT INTO `web_slider_banner` (`id`, `name`, `url_hinh`, `url`, `position_id`, `menu_id`, `order`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trang chủ', '', 'javascript:;', 1, ',1,', 1, 'vi', 1, '2014-05-30 10:55:30', '2014-05-31 05:45:48', 'admin', 'admin', 0),
(2, 'Giới thiệu', '', 'javascript:;', 1, ',2,', 2, 'vi', 1, '2014-05-31 05:46:04', '2014-05-31 05:55:00', 'admin', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner_position`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `web_slider_banner_position`
--

INSERT INTO `web_slider_banner_position` (`id`, `name`, `status`) VALUES
(1, 'Slider 960x280 px', 1),
(2, 'Right width:265px', 1),
(3, 'Đối tác 200x120 px', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_users`
--

CREATE TABLE IF NOT EXISTS `web_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` tinyint(1) NOT NULL DEFAULT '1',
  `url_hinh` varchar(150) NOT NULL,
  `ngaydangky` datetime NOT NULL,
  `salt` varchar(3) NOT NULL,
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `quyen_xem` varchar(100) NOT NULL,
  `quyen_action` varchar(100) NOT NULL,
  `group_id` int(1) NOT NULL DEFAULT '0',
  `RandomKey` varchar(255) DEFAULT NULL,
  `LoginNumber` int(11) DEFAULT '0',
  `DisableDate` datetime DEFAULT NULL,
  `Expiration` int(11) DEFAULT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `diachi`, `phone`, `email`, `ngaysinh`, `gioitinh`, `url_hinh`, `ngaydangky`, `salt`, `username`, `password`, `quyen_xem`, `quyen_action`, `group_id`, `RandomKey`, `LoginNumber`, `DisableDate`, `Expiration`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(25, 'Admin', '', '', '', '0000-00-00', 1, '', '0000-00-00 00:00:00', '', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,', 1, NULL, 0, '2011-09-21 16:42:26', NULL, 'vi', 1, '2013-06-14 00:00:00', '2014-05-31 09:49:36', 'admin', 'admin', 0),
(27, 'Trần Nhân', '', '', '', '0000-00-00', 1, '', '0000-00-00 00:00:00', '', 'nhan', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,23,', ',3,23,', 0, NULL, 0, NULL, NULL, 'vi', 1, '2014-03-05 15:48:32', '2014-05-31 09:49:57', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_group`
--

CREATE TABLE IF NOT EXISTS `web_users_group` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `web_users_group`
--

INSERT INTO `web_users_group` (`id`, `name`) VALUES
(1, 'Khách hàng'),
(2, 'Thành viên'),
(3, 'Quản trị website');

-- --------------------------------------------------------

--
-- Table structure for table `web_video`
--

CREATE TABLE IF NOT EXISTS `web_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `url_hinh` varchar(150) NOT NULL,
  `url_video` varchar(30) NOT NULL,
  `metaDescription` varchar(300) NOT NULL,
  `metaKeyword` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `menu_id` varchar(20) DEFAULT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `web_video`
--

INSERT INTO `web_video` (`id`, `name`, `name_alias`, `url_hinh`, `url_video`, `metaDescription`, `metaKeyword`, `content`, `other`, `menu_id`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Video trang chủ', 'video-trang-chu', 'Chrysanthemum.jpg', '432432432', 'Video trang chủ', 'video trang chủ,video trang chu', '<p>Video trang chủVideo trang chủVideo trang chủVideo trang chủVideo trang chủVideo trang chủ</p>\r\n', 1, ',8,', 'vi', 1, '2014-05-30 10:29:43', '2014-05-30 11:12:31', 'admin', 'admin', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
