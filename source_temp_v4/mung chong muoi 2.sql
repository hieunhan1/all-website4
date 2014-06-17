-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2014 at 04:32 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `source_temp_v4`
--
CREATE DATABASE IF NOT EXISTS `source_temp_v4` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `source_temp_v4`;

-- --------------------------------------------------------

--
-- Table structure for table `web_article`
--

CREATE TABLE IF NOT EXISTS `web_article` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`id`, `name`, `name_alias`, `url_hinh`, `metaDescription`, `metaKeyword`, `content`, `other`, `menu_id`, `lang`, `status`, `ngay_dang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Home - Mùng chống muỗi', 'home-mung-chong-muoi', 'about-home-mung-chong-muoi.png', 'Phòng ngủ của bạn sẽ sạch sẽ hơn, an toàn hơn, giấc ngủ sẽ sâu hơn, trọn vẹn hơn khi bạn có chiếc mùng (màn) ChamCham với chức năng đặc biệt: xua đuổi diệt muỗi, ruồi, gián, rận, rệp, kiến, rầy, bọ, v.v.', 'home mùng chống muỗi', '<p><img alt="Home - Mùng chống muỗi" src="/all/source_temp_v4/public/images/articles/about-home-mung-chong-muoi.png" style="width: 300px; height: 180px; float: right; margin-left: 10px; margin-right: 10px;" /></p>\r\n\r\n<h2>Phòng ngủ của bạn sẽ sạch sẽ hơn, an toàn hơn, giấc ngủ sẽ sâu hơn, trọn vẹn hơn khi bạn có chiếc mùng (màn) ChamCham với chức năng đặc biệt: xua đuổi diệt muỗi, ruồi, gián, rận, rệp, kiến, rầy, bọ, v.v. Không còn chích đốt, không còn vo ve. Giấc ngủ an toàn, giấc ngủ ngon!</h2>\r\n\r\n<h2>Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.</h2>\r\n\r\n<h2>Sản phẩm có khả năng xua đuổi diệt muỗi và côn trùng, không cho chúng đến gần chích đốt, vo ve bực bội bên tai.</h2>\r\n', 1, ',1,', 'vi', 1, '2014-05-29 15:00:00', '2014-05-29 09:35:29', '2014-06-14 09:04:08', 'admin', 'admin', 0),
(2, 'Công dụng của mùng chuống muỗi', 'cong-dung-cua-mung-chuong-muoi', 'about-home-mung-chong-muoi.png', 'Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.', 'công dụng của mùng chuống muỗi,cong dung cua mung chuong muoi', '<p>Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.</p>\r\n', 0, ',8,', 'vi', 1, '2014-06-03 20:49:00', '2014-06-03 15:50:29', '2014-06-17 15:40:19', '', 'admin', 0),
(3, 'Tác dụng của mùng chuống muỗi', 'tac-dung-cua-mung-chuong-muoi', 'about-home-mung-chong-muoi.png', 'Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.', 'tác dụng của mùng chuống muỗi,tac dung cua mung chuong muoi', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', 0, ',8,', 'vi', 1, '2014-06-05 20:49:00', '2014-06-03 15:50:52', '2014-06-17 15:53:36', '', 'admin', 0),
(4, 'Lợi ích mùng chống muỗi', 'loi-ich-mung-chong-muoi', 'about-home-mung-chong-muoi.png', 'Lợi ích mùng chống muỗi sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền', 'lợi ích mùng chống muỗi,loi ich mung chong muoi', '<h2>Lợi ích mùng chống muỗi sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền</h2>\r\n', 0, ',8,', 'vi', 1, '2014-06-06 20:49:00', '2014-06-03 15:51:26', '2014-06-17 15:53:27', '', 'admin', 0),
(5, 'Giới thiệu về công ty', 'gioi-thieu-ve-cong-ty', '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.', 'giới thiệu về công ty,gioi thieu ve cong ty', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus.</p>\r\n\r\n<p>Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros.</p>\r\n\r\n<p>Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis.</p>\r\n\r\n<p>Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', 0, ',2,', 'vi', 1, '2014-06-03 20:57:00', '2014-06-03 15:57:55', '2014-06-17 15:43:55', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_article_cm`
--

CREATE TABLE IF NOT EXISTS `web_article_cm` (
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
(1, 'Mùng chống muỗi', 'vi', 'localhost/all/source_temp_v4', 10, 10, 10, 10, 'Copyright © 2014 by NETSPACE', '<p>Địa chỉ: Lô 32C/I, Đường 2G, KCN Vĩnh Lộc, Huyện Bình Chánh, TP. Hồ Chí Minh</p>\r\n\r\n<p>Điện thoại: (84 -8) 38550213 - 37652056 Fax: (84 -8) 38570352 - 37652055</p>\r\n\r\n<p>Email: info@mungchongmuoi.c', '', 'feedback@mungchongmuoi.com.vn', 'hieu_nhan1', '+84 988 388 388', '0988 388 388', 1, '2013-02-20 13:35:24', '2014-06-17 16:01:30', 'admin', 'admin', 0),
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `web_menu`
--

INSERT INTO `web_menu` (`id`, `name`, `name_alias`, `url`, `url_hinh`, `title`, `metaDescription`, `metaKeyword`, `parent_id`, `type_id`, `position_id`, `order`, `other`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trang chủ', 'trang-chu', '', '', 'Title trang chủ', 'Des trang chủ', 'key trang chủ', 0, 1, ',2,', 1, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-06-14 05:12:07', 'admin', 'admin', 0),
(2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', 'Koala.jpg', 'Title giới thiệu', 'Des giới thiệu', 'key giới thiệu', 0, 2, ',2,', 2, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-06-14 05:03:29', 'admin', 'admin', 0),
(3, 'Tầm nhìn', 'tam-nhin', 'tam-nhin/', '', 'Tầm nhìn', 'Tầm nhìn', 'Tầm nhìn', 2, 2, ',2,', 1, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-05-30 10:09:58', 'admin', 'admin', 0),
(4, 'Sứ mệnh', 'su-menh', 'su-menh/', '', 'Sứ mệnh', 'Sứ mệnh', 'Sứ mệnh', 2, 2, ',2,', 1, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-05-30 10:10:03', 'admin', 'admin', 0),
(5, 'Đối tác', 'doi-tac', 'doi-tac/', '', 'Đối tác', 'Đối tác', 'đối tác,doi tac', 2, 2, ',2,', 3, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-06-13 12:25:33', 'admin', 'admin', 0),
(6, 'Sản phẩm', 'san-pham', 'san-pham/', '', 'Sản phẩm', 'Sản phẩm', 'sản phẩm,san pham', 0, 3, ',2,', 3, 0, 'vi', 1, '2014-05-30 10:19:14', '2014-06-14 09:43:39', 'admin', 'admin', 0),
(7, 'Hướng dẫn thanh toán', 'huong-dan-thanh-toan', 'huong-dan-thanh-toan/', '', 'Hướng dẫn thanh toán', 'Hướng dẫn thanh toán', 'hướng dẫn thanh toán,huong dan thanh toan', 0, 2, ',2,', 4, 0, 'vi', 1, '2014-05-30 11:06:51', '2014-06-14 05:10:47', 'admin', 'admin', 0),
(8, 'Thông tin sản phẩm', 'thong-tin-san-pham', 'thong-tin-san-pham/', '', 'Thông tin sản phẩm', 'Thông tin sản phẩm', 'thông tin sản phẩm,thong tin san pham', 0, 2, ',2,', 5, 0, 'vi', 1, '2014-05-30 11:07:21', '2014-06-14 09:55:51', 'admin', 'admin', 0),
(9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'liên hệ,lien he', 0, 13, ',2,', 6, 0, 'vi', 1, '2014-05-30 11:07:57', '2014-05-30 11:37:44', 'admin', 'nhan', 0),
(10, 'Home', 'home', '/?lang=en', '', 'Home', 'Home', 'Home', 0, 1, ',2,', 1, 0, 'en', 1, '2014-06-14 05:12:47', '2014-06-14 05:15:41', 'admin', 'admin', 0),
(11, 'About US', 'about-us', 'about-us/', '', 'About US', 'About US', 'About US', 0, 2, ',2,', 2, 0, 'en', 1, '2014-06-14 05:15:37', NULL, 'admin', NULL, 0),
(12, 'Products', 'products', 'products/', '', 'Products', 'Products', 'Products', 0, 3, ',2,', 3, 0, 'en', 1, '2014-06-14 05:16:42', NULL, 'admin', NULL, 0),
(13, 'Mùng chống muỗi', 'mung-chong-muoi', 'mung-chong-muoi/', 'icon-mung-chong-muoi.gif', 'Mùng chống muỗi', 'Mùng chống muỗi', 'mùng chống muỗi,mung chong muoi', 6, 3, ',2,', 1, 1, 'vi', 1, '2014-06-14 07:58:44', NULL, 'admin', NULL, 0),
(14, 'Rèn chống muỗi', 'ren-chong-muoi', 'ren-chong-muoi/', 'icon-ren-chong-muoi.gif', 'Rèn chống muỗi', 'Rèn chống muỗi', 'rèn chống muỗi,ren chong muoi', 6, 3, ',2,', 2, 1, 'vi', 1, '2014-06-14 08:00:30', NULL, 'admin', NULL, 0),
(15, 'Võng chống muỗi', 'vong-chong-muoi', 'vong-chong-muoi/', 'icon-vong-chong-muoi.gif', 'Võng chống muỗi', 'Võng chống muỗi', 'võng chống muỗi,vong chong muoi', 6, 3, ',2,', 3, 1, 'vi', 1, '2014-06-14 08:00:56', NULL, 'admin', NULL, 0);

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
(4, 'Thông tin, bài viết', 'web_article', 'icon-info.jpg', 4, 1, 0, NULL),
(5, 'Sản phẩm', 'web_product', 'icon-thu-vien-anh.jpg', 5, 1, 0, NULL),
(6, 'Thư viện ảnh', 'web_photo', 'icon-thu-vien-anh.jpg', 6, 1, 0, NULL),
(7, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 7, 1, 0, NULL),
(8, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 8, 1, 1, NULL),
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
-- Table structure for table `web_photo`
--

CREATE TABLE IF NOT EXISTS `web_photo` (
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
-- Dumping data for table `web_photo`
--

INSERT INTO `web_photo` (`id`, `name`, `url_hinh`, `menu_id`, `order`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Hoạt động', '', ',1,', 1, 'vi', 1, '2014-05-30 11:05:49', '2014-05-31 04:12:11', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_product`
--

CREATE TABLE IF NOT EXISTS `web_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `url_hinh` varchar(150) NOT NULL,
  `metaDescription` varchar(300) NOT NULL,
  `metaKeyword` varchar(250) NOT NULL,
  `giaban` int(7) NOT NULL,
  `giagoc` int(7) DEFAULT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `web_product`
--

INSERT INTO `web_product` (`id`, `name`, `name_alias`, `url_hinh`, `metaDescription`, `metaKeyword`, `giaban`, `giagoc`, `content`, `other`, `menu_id`, `lang`, `status`, `ngay_dang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Mùng chống muỗi hình nón', 'mung-chong-muoi-hinh-non', 'mung-chong-muoi.jpg', 'Mùng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.', 'mùng chống muỗi hình nón,mung chong muoi hinh non', 200000, 250000, '<p>Mùng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng. Mùng ChamCham rất hữu ích cho phòng chống lan truyền bệnh sốt rét, sốt xuất huyết, viêm não Nhật Bản B và các bệnh khác gây ra do côn trùng chích đốt giúp bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>Mùng Võng Rèm ChamCham đáp ứng nhu cầu sử dụng đa dạng trong nhà, ngoài trời, treo móc...</p>\r\n', 1, ',6,13,', 'vi', 1, '2014-06-14 14:11:00', '2014-06-14 09:13:15', NULL, 'admin', NULL, 0),
(2, 'Mùng chống muỗi tam giác ba dây trắng', 'mung-chong-muoi-tam-giac-ba-day-trang', 'mung-chong-muoi-tam-giac-ba-day-trang.jpg', 'Mùng chống muỗi tam giác ba dây trắng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.', 'mùng chống muỗi tam giác ba dây trắng,mung chong muoi tam giac ba day trang', 250000, 0, '<h2>Mùng chống muỗi tam giác ba dây trắng&nbsp;là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.</h2>\r\n\r\n<p>Mùng ChamCham rất hữu ích cho phòng chống lan truyền bệnh sốt rét, sốt xuất huyết, viêm não Nhật Bản B và các bệnh khác gây ra do côn trùng chích đốt giúp bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>Mùng Võng Rèm ChamCham đáp ứng nhu cầu sử dụng đa dạng trong nhà, ngoài trời, treo móc...</p>\r\n', 1, ',6,13,', 'vi', 1, '2014-06-14 14:15:00', '2014-06-14 09:16:57', NULL, 'admin', NULL, 0);

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
(1, 'Trang chủ', 'slider-home.jpg', 'javascript:;', 1, ',1,9,', 1, 'vi', 1, '2014-05-30 10:55:30', '2014-06-14 09:56:41', 'admin', 'admin', 0),
(2, 'Giới thiệu', '', 'javascript:;', 1, ',2,', 2, 'vi', 0, '2014-05-31 05:46:04', '2014-06-14 05:37:56', 'admin', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `diachi`, `phone`, `email`, `ngaysinh`, `gioitinh`, `url_hinh`, `ngaydangky`, `salt`, `username`, `password`, `quyen_xem`, `quyen_action`, `group_id`, `RandomKey`, `LoginNumber`, `DisableDate`, `Expiration`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(25, 'Admin', '', '', '', '0000-00-00', 1, '', '0000-00-00 00:00:00', '', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,', 1, NULL, 0, '2011-09-21 16:42:26', NULL, 'vi', 1, '2013-06-14 00:00:00', '2014-05-31 09:49:36', 'admin', 'admin', 0),
(27, 'Trần Nhân', '', '', '', '0000-00-00', 1, '', '0000-00-00 00:00:00', '', 'nhan', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,23,', ',3,23,', 0, NULL, 0, NULL, NULL, 'vi', 1, '2014-03-05 15:48:32', '2014-06-14 05:06:32', 'admin', 'admin', 0),
(30, 'Quản trị BV', '', '', '', '0000-00-00', 1, '', '0000-00-00 00:00:00', '', 'quantri', '', ',1,4,', ',1,4,', 0, NULL, 0, NULL, NULL, 'vi', 1, '2014-06-14 05:26:55', NULL, 'admin', NULL, 0);

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
