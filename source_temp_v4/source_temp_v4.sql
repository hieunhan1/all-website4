-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: May 15, 2014 at 11:02 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `source_temp_v4`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `web_articles`
-- 

CREATE TABLE `web_articles` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) NOT NULL,
  `metaDescription` varchar(300) NOT NULL,
  `metaKeyword` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) default '0',
  `menu_id` varchar(20) default NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_articles`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `web_articles_cm`
-- 

CREATE TABLE `web_articles_cm` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `info_alias` varchar(200) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_articles_cm`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `web_config`
-- 

CREATE TABLE `web_config` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `lang` char(2) NOT NULL default '',
  `domain` varchar(30) default NULL,
  `max_limit_1` int(2) default NULL,
  `max_limit_2` int(2) default NULL,
  `max_limit_3` int(2) default NULL,
  `max_limit_4` int(2) default NULL,
  `copyright` varchar(250) default NULL,
  `contact_foo` varchar(200) default NULL,
  `contact_form` text NOT NULL,
  `email` varchar(100) default NULL,
  `yahoo` varchar(100) default NULL,
  `tel` varchar(50) default NULL,
  `hotline` varchar(50) NOT NULL,
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `web_config`
-- 

INSERT INTO `web_config` VALUES (1, 'Việt Nam', 'vi', 'localhost/all/source_temp_v4', 10, 10, 10, 10, 'Copyright © 2014 by NETSPACE', 'Trường dạy nấu ăn NETSPACE', '', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 388', '0988 388 388', 1, '2013-02-20 13:35:24', '2013-03-01 16:18:00', 'admin', 'admin', 0);
INSERT INTO `web_config` VALUES (2, 'English', 'en', 'localhost/all/source_temp_v4', 10, 10, 10, 10, 'Copyright © 2014 by NETSPACE', 'Culinary Arts School NetSpace', '', 'hieunhan112@gmail.com', 'hieu_nhan1', '0988 388 388', '0988 388 388', 1, '2013-08-10 10:09:29', '2013-08-10 15:35:00', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_contact`
-- 

CREATE TABLE `web_contact` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '0',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_contact`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `web_language`
-- 

CREATE TABLE `web_language` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `ma` varchar(10) NOT NULL,
  `order` int(3) default '0',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `web_language`
-- 

INSERT INTO `web_language` VALUES (1, 'Việt Nam', 'vi', 1, 1);
INSERT INTO `web_language` VALUES (2, 'English', 'en', 2, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_list_sendmail`
-- 

CREATE TABLE `web_list_sendmail` (
  `id` int(2) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `web_list_sendmail`
-- 

INSERT INTO `web_list_sendmail` VALUES (1, 'Tú', 'consultant1@netspace.edu.vn', 'vi', 1, '2013-12-17 13:52:33', '2014-02-07 14:07:35', 'admin', NULL, 0);
INSERT INTO `web_list_sendmail` VALUES (2, 'Thanh', 'consultant2@netspace.edu.vn', 'vi', 1, '2013-12-17 13:53:05', '2014-02-07 14:07:24', 'admin', NULL, 0);
INSERT INTO `web_list_sendmail` VALUES (3, 'Khắc', 'consultant3@netspace.edu.vn', 'vi', 1, '2013-12-17 13:54:05', '2014-02-07 14:07:51', 'admin', NULL, 0);
INSERT INTO `web_list_sendmail` VALUES (4, 'Tiên', 'consultant4@netspace.edu.vn', 'vi', 1, '2013-12-17 13:54:18', '2014-03-18 11:32:04', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_menu`
-- 

CREATE TABLE `web_menu` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `name_rewrite` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `title` varchar(200) default NULL,
  `metaDescription` varchar(250) default NULL,
  `metaKeyword` varchar(150) default NULL,
  `parent_id` int(3) NOT NULL,
  `type_id` int(1) default NULL,
  `position_id` varchar(10) default NULL,
  `order` int(3) default '0',
  `other` tinyint(1) default '0',
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_menu`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `web_menu_admin`
-- 

CREATE TABLE `web_menu_admin` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `order` int(3) default '0',
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

-- 
-- Dumping data for table `web_menu_admin`
-- 

INSERT INTO `web_menu_admin` VALUES (1, 'Trang chủ', 'home', 'icon-home.jpg', 1, 1);
INSERT INTO `web_menu_admin` VALUES (2, 'Cấu hình website', 'web_config', 'icon-cau-hinh.jpg', 2, 1);
INSERT INTO `web_menu_admin` VALUES (3, 'Danh mục menu', 'web_menu', 'icon-menu.jpg', 3, 1);
INSERT INTO `web_menu_admin` VALUES (4, 'Thông tin, bài viết', 'web_info', 'icon-info.jpg', 4, 1);
INSERT INTO `web_menu_admin` VALUES (5, 'Thư viện ảnh', 'web_photo_gallery', 'icon-thu-vien-anh.jpg', 5, 1);
INSERT INTO `web_menu_admin` VALUES (6, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 6, 1);
INSERT INTO `web_menu_admin` VALUES (7, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 7, 1);
INSERT INTO `web_menu_admin` VALUES (8, 'Item 8', '', 'icon-lich-khai-giang.jpg', 8, 0);
INSERT INTO `web_menu_admin` VALUES (9, 'Item 9', '', 'icon-product.jpg', 9, 0);
INSERT INTO `web_menu_admin` VALUES (10, 'Item 10', '', 'icon-register.jpg', 10, 0);
INSERT INTO `web_menu_admin` VALUES (11, 'Item 11', '', 'icon-hoc-vien.jpg', 11, 0);
INSERT INTO `web_menu_admin` VALUES (12, 'Item 12', '', 'icon-lien-he.jpg', 12, 0);
INSERT INTO `web_menu_admin` VALUES (13, 'Item 13', '', 'icon-tuyen-dung-thong-tin.jpg', 13, 0);
INSERT INTO `web_menu_admin` VALUES (14, 'Item 14', '', 'icon-contact.jpg', 14, 0);
INSERT INTO `web_menu_admin` VALUES (15, 'Item 15', '', 'icon-tuyendung-ho-so.jpg', 15, 0);
INSERT INTO `web_menu_admin` VALUES (16, 'Item 16', '', '', 16, 0);
INSERT INTO `web_menu_admin` VALUES (17, 'Item 17', '', '', 17, 0);
INSERT INTO `web_menu_admin` VALUES (18, 'Item 18', '', '', 18, 0);
INSERT INTO `web_menu_admin` VALUES (19, 'Item 19', '', '', 19, 0);
INSERT INTO `web_menu_admin` VALUES (20, 'Item 20', '', '', 20, 0);
INSERT INTO `web_menu_admin` VALUES (21, 'Item 21', '', '', 21, 0);
INSERT INTO `web_menu_admin` VALUES (22, 'Liên hệ trực tuyến', 'web_contact', 'icon-lien-he.jpg', 22, 0);
INSERT INTO `web_menu_admin` VALUES (23, 'Tài khoản', 'web_users', 'icon-account.jpg', 100, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_menu_position`
-- 

CREATE TABLE `web_menu_position` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `order` int(1) NOT NULL default '0',
  `status` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `web_menu_position`
-- 

INSERT INTO `web_menu_position` VALUES (1, 'Top', 1, 0);
INSERT INTO `web_menu_position` VALUES (2, 'Main', 2, 1);
INSERT INTO `web_menu_position` VALUES (3, 'Bottom', 3, 1);
INSERT INTO `web_menu_position` VALUES (4, 'Left', 4, 0);
INSERT INTO `web_menu_position` VALUES (5, 'Right', 5, 0);
INSERT INTO `web_menu_position` VALUES (6, 'Social', 6, 0);
INSERT INTO `web_menu_position` VALUES (7, 'Other 1', 7, 0);
INSERT INTO `web_menu_position` VALUES (8, 'Other 2', 8, 0);
INSERT INTO `web_menu_position` VALUES (9, 'Không', 9, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_menu_type`
-- 

CREATE TABLE `web_menu_type` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `order` int(2) NOT NULL,
  `status` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `web_menu_type`
-- 

INSERT INTO `web_menu_type` VALUES (1, 'Trang chủ', 1, 1);
INSERT INTO `web_menu_type` VALUES (2, 'Thông tin bài viết', 2, 1);
INSERT INTO `web_menu_type` VALUES (3, 'Sản phẩm', 3, 1);
INSERT INTO `web_menu_type` VALUES (4, 'Dịch vụ', 4, 1);
INSERT INTO `web_menu_type` VALUES (5, 'Hình ảnh', 5, 1);
INSERT INTO `web_menu_type` VALUES (6, 'Video', 6, 1);
INSERT INTO `web_menu_type` VALUES (7, 'Item 7', 7, 0);
INSERT INTO `web_menu_type` VALUES (8, 'Item 8', 8, 0);
INSERT INTO `web_menu_type` VALUES (9, 'Item 9', 9, 0);
INSERT INTO `web_menu_type` VALUES (10, 'Item 10', 10, 0);
INSERT INTO `web_menu_type` VALUES (11, 'Item 11', 11, 0);
INSERT INTO `web_menu_type` VALUES (12, 'Đăng ký', 12, 1);
INSERT INTO `web_menu_type` VALUES (13, 'Liên hệ', 13, 1);
INSERT INTO `web_menu_type` VALUES (14, 'Không', 14, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_photo_gallery`
-- 

CREATE TABLE `web_photo_gallery` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `menu_id` varchar(10) default NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3563 ;

-- 
-- Dumping data for table `web_photo_gallery`
-- 

INSERT INTO `web_photo_gallery` VALUES (1, 'Học viên trường NETSPACE dã ngoại KDL Văn Thánh', 'da-ngoai-o-van-thanh.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (2, 'Giao lưu với hội đầu bếp Tỉnh Lâm Đồng', 'giao-luu-voi-hoi-dau-bep-tinh-lam-dong.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3, 'Giao lưu với Mà Sáu', 'giao-luu-voi-ma-sau.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (4, 'Giao lưu với Siêu đầu bếp Đỗ Quang Long', 'giao-luu-voi-sieu-dau-bep-do-quang-long.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (5, 'Giao lưu với Siêu đầu bếp Dương Huy Khải', 'giao-luu-voi-sieu-dau-bep-duong-huy-khai.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (6, 'Trương Minh Cường học làm bánh kem', 'giao-luu-voi-truong-minh-cuong.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (7, 'Học làm bánh kem', 'hoc-lam-banh-kem.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (8, 'Học vịt quay', 'hoc-vit-quay.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (9, 'Ký kết hợp tác giữa trường NETSPACE và Evolution Institute', 'ky-ket-hop-tac-involution-2.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (10, 'Ký kết hợp tác với Evolution Institute', 'ky-ket-hop-tac-involution.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (11, 'Kỷ lục gỏi cuốn VN', 'ky-luc-goi-cuon.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (12, 'Lưu niệm kỷ lục gỏi cuốn VN 2012', 'luu-niem-ky-luc-goi-cuon-2012.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (13, 'Lưu niệm khóa Bếp Việt K2', 'luu-niem-khoa-bep-viet-k2.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (14, 'Giao lưu với Siêu đầu bếp Davil Thái', 'sieu-dau-bep-davil-thai-truyen-dat-kinh-nghiem-nau-an.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (15, 'Siêu đầu bếp Nguyễn Văn Lập dạy nấu ăn', 'sieu-dau-bep-nguyen-van-lap.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (16, 'Trương Minh Cường học làm bánh kem tại trường NETSPACE', 'truong-minh-cuong-hoc-nau-an-truong-netspace.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (17, 'Thức uống độc đáo 1', 'thuc-uong-doc-dao-1.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (18, 'Thức uống độc đáo 2', 'thuc-uong-doc-dao-2.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (19, 'Thức uống độc đáo 3', 'thuc-uong-doc-dao-3.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (20, 'Thức uống độc đáo 4', 'thuc-uong-doc-dao-4.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (21, 'Thức uống độc đáo 5', 'thuc-uong-doc-dao-5.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (22, 'Thức uống độc đáo 6', 'thuc-uong-doc-dao-6.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (23, 'Thức uống độc đáo 7', 'thuc-uong-doc-dao-7.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (24, 'Thức uống độc đáo 8', 'thuc-uong-doc-dao-8.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (25, 'Thức uống độc đáo 9', 'thuc-uong-doc-dao-9.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (26, 'Thức uống độc đáo 10', 'thuc-uong-doc-dao-10.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (27, 'Thức uống độc đáo 11', 'thuc-uong-doc-dao-11.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (28, 'Thức uống độc đáo 12', 'thuc-uong-doc-dao-12.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (29, 'Thức uống độc đáo 13', 'thuc-uong-doc-dao-13.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (30, 'Giao lưu với Siêu đầu bếp Davil Thái', 'giao-luu-voi-dieu-dau-bep-davil-thai-k4.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (31, 'Kỷ lục gỏi cuốn VN năm 2012', 'ky-luc-goi-cuon-vn-2012-2.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (32, 'Kỷ lục gỏi cuốn VN năm 2012 - Phỏng vấn', 'ky-luc-goi-cuon-vn-2012-3.jpg', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (33, 'Cơm tấm sườn bì chả - Thầy Toàn', 'com-tam-suon-bi-cha-thay-toan.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (34, 'Bánh xèo', 'banh-xeo.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (35, 'Bún bò Huế', 'bun-bo-hue.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (36, 'Bún riêu', 'bun rieu 1 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (37, 'Bún thịt nướng', 'bun-thit-nuong.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (38, 'Cá chẻm sốt cam', 'ca-chem-sot-cam.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (39, 'Cá cơm chiên giòn', 'Ca-com-chien-gion.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (40, 'Cá điêu hồng sốt cam', 'Ca-dieu-hong-sot-cam.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (41, 'Cá rô kho tộ - Thầy Duy', 'ca-ro-kho-to-thay-duy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (42, 'Cá tai tượng chiên xù', 'ca tai tuong chien xu 1212.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (43, 'Bò nướng xiên', 'bo-nuong-xien.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (44, 'Chả ốc lá nốt', 'cha-oc-la-not.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (45, 'Cháo cà miền Tây - Thầy Duy', 'chao ca mien tay 14 copy(1).jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (46, 'Cháo gà xé phay - Thầy Duy', 'chao ga xe phay 1(1).jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (47, 'Cơm gà xối mỡ', 'Com-ga-xoi-mo.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (48, 'Bò nướng ống tre', 'bo-nuong-ong-tre.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (49, 'Bao tử hầm tiêu', 'bao tu ham tieu 12.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (50, 'Bánh hỏi thịt nướng', 'banh-hoi-thit-nuong.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (51, 'Cơm chiên ngũ sắc', 'Com-chien-ngu-sac.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (52, 'Chả giò bánh bía - Cô Thu', 'cha-gio-banh-bia-co-thu.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (53, 'Chả cá Lã Vọng', 'Cha-ca-LA-Vong.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (54, 'Bông bí dòn thịt', 'Bong-bi-don-thit.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (55, 'Canh chua cá bông lau - Thầy Duy', 'canh-chua-ca-bong-lau-thay-duy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (56, 'Lớp bánh - Bánh choux Eclair', 'lop banh - Banh choux - Eclair 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (57, 'Ham T', 'ham t.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (58, 'Seafood C', 'seafood-c.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (59, 'Lớp bánh - Bánh choux Eclair 2', 'lop-banh-Banh-choux-Eclair-5.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (60, 'Ham C', 'ham-c.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (61, 'Lớp bánh - Bánh choux Eclair 3', 'lop-banh-Banh-choux-Eclair-4.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (62, 'Lớp bánh - Bánh choux Eclair 4', 'lop banh - Banh choux - Eclair 5.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (63, 'Seafood T', 'seafood t.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (64, 'Lớp bánh - Bánh choux Eclair 5', 'lop-banh-Banh-choux-Eclair-1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (65, 'Hội đầu bếp CN Sài Gòn  1', 'hoi-dau-bep-cn-saigon-1.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (66, 'Hội đầu bếp CN Sài Gòn 2', 'hoi-dau-bep-cn-saigon-2.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (67, 'Hội đầu bếp CN Sài Gòn 3', 'hoi-dau-bep-cn-saigon-3.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (68, 'Hội đầu bếp CN Sài Gòn 4', 'hoi-dau-bep-cn-saigon-4.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (69, 'Hội đầu bếp CN Sài Gòn 5', 'hoi-dau-bep-cn-saigon-5.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (70, 'Hội đầu bếp CN Sài Gòn 6', 'hoi-dau-bep-cn-saigon-6.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (71, 'Hội đầu bếp CN Sài Gòn 7', 'hoi-dau-bep-cn-saigon-7.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (72, 'Hội đầu bếp CN Sài Gòn 8', 'hoi-dau-bep-cn-saigon-8.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (73, 'Hội đầu bếp CN Sài Gòn 9', 'hoi-dau-bep-cn-saigon-9.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (74, 'Hội đầu bếp CN Sài Gòn 10', 'hoi-dau-bep-cn-saigon-10.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (75, 'Hội đầu bếp CN Sài Gòn 11', 'hoi-dau-bep-cn-saigon-11.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (76, 'Hội đầu bếp CN Sài Gòn 12', 'hoi-dau-bep-cn-saigon-12.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (77, 'Hội đầu bếp CN Sài Gòn 13', 'hoi-dau-bep-cn-saigon-13.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (78, 'Hội đầu bếp CN Sài Gòn 14', 'hoi-dau-bep-cn-saigon-14.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (79, 'Hội đầu bếp CN Sài Gòn 15', 'hoi-dau-bep-cn-saigon-15.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (80, 'Hội đầu bếp CN Sài Gòn 16', 'hoi-dau-bep-cn-saigon-16.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (81, 'Hội đầu bếp CN Sài Gòn 17', 'hoi-dau-bep-cn-saigon-17.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (82, 'Hội đầu bếp CN Sài Gòn 18', 'hoi-dau-bep-cn-saigon-18.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (83, 'Hội đầu bếp CN Sài Gòn 19', 'hoi-dau-bep-cn-saigon-19.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (84, 'Hội đầu bếp CN Sài Gòn 20', 'hoi-dau-bep-cn-saigon-20.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (85, 'Hội đầu bếp CN Sài Gòn 21', 'hoi-dau-bep-cn-saigon-21.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (86, 'Hội đầu bếp CN Sài Gòn 22', 'hoi-dau-bep-cn-saigon-22.jpg', ',25,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (87, 'Anh Khao - Việt Anh - Huy Khanh', 'ANHKHAO-VIETANH-huykhanh.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (88, 'Tường Vi - Trường NETSPACE', 'TUONGVI.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (89, 'Tường Vi - Hiếu Hiền - Trường NETSPACE', 'TUONGVI-HIEUHIEN.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (90, 'Tường Vi - Hiếu Hiền - Thái Hòa - Trường NETSPACE', 'TUONGVI-HIEUHIEN-thaihoa.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (91, 'Trung Hậu - Trường NETSPACE', 'TRUNG-HAU.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (92, 'Thanh Thúy - Thái Hòa - Trường NETSPACE', 'THANHTHUY-thaihoa.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (93, 'Hoa hậu Mai Phương Thúy - Trường NETSPACE', 'HOA-HAU-MAI-PHUONG-THUY.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (94, 'Hiếu Hiền - Thái Hòa - Trường NETSPACE', 'HIEUHIEN-Thaihoa.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (95, 'Hiếu Hiền - Thái Hòa - Cùng với Học Viên Trường NETSPACE', 'HIEUHIEN-thaihoa-tai-netspace.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (96, 'Diễn viên Trường Thịnh - Trường NETSPACE', 'dv-truong-thinh.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (97, 'Diễn viên Trương Minh Cường- Trường NETSPACE', 'dv-truong-minh-cuong.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (98, 'Diễn viên Trương Minh Cường - Cùng với học viên Trường NETSPACE', 'dv-truong-minh-cuong-2.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (99, 'Diễn viên phim Lưu Manh Đầu Bếp - Trường NETSPACE', 'dv-phim-luu-manh-dau-bep.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (100, 'Diễn viên Hà Hiền - Trường NETSPACE', 'dv-ha-hien.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (101, 'Đoàn làm phim Bếp của Mẹ', 'doan-lam-phim-bep-cua-me.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (102, 'Đoàn làm phim Bếp của Mẹ tại Trường NETSPACE', 'doan-lam-phim-bep-cua-me-2.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (103, 'Diễn viên Trường Thịnh tại Trường NETSPACE', 'dien-vien-truong-thinh.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (104, 'mon viet', '', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (105, 'mon viet', '', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (106, 'mon viet', 'lau ga tiem ot hiem.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (107, 'xôi gấc', '', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (108, 'xôi gấc', 'xoigac(1).jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (109, 'cang cua bach hoa', '', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (110, 'cang cua bach hoa', '', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (111, 'cang cua bach hoa', '3-6 cang cua bach hoa.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (112, 'cang cua bach hoa', ' cang cua bach hoa.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (113, 'bo nuong la lop', 'bo nuong la lot 1 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (114, 'xôi giò', 'xoi gio.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (115, 'xôi gấc hấp lá dứa', 'xoi gac hap la dua.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (116, 'xôi gấc hấp lá dứa 1', 'xoi gac hap la dua 2.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (117, 'xôi gấc hấp lá dứa 2', 'xoi gac hap la dua 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (118, 'tôm xào nấm đông cô', 'tom xao nam dong co.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (119, 'tôm xào nấm đông cô 1', 'tom xao nam dong co 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (120, 'tôm , mực .gà nướng muối ớt', 'tom muc ga nuong muoi ot.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (121, 'tôm lăn bột chiên giòn', 'tom lan bot chien gion copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (122, 'tôm lăn bột chiên giòn 1', 'tom lan bot chien gion 7 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (123, 'tôm lăn bột chiên giòn 2', 'tom lan bot chien gion 6 copy.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (124, 'tôm lăn bột chiên giòn 3', 'tom lan bot chien gion 1 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (125, 'tôm hoàng kim', 'tom hoang kim 9 copy(1).jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (126, 'súp sơn hào hải vị', 'sup son hao hai vi.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (127, 'súp sơn hào hải vị 1', 'sup son hao hai vi 2.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (128, 'súp sơn hào hải vị 2', 'sup son hao hai vi 1.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (129, 'sườn xào tàu xì', 'suon xao tau xi.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (130, 'sườn xào tàu xì 1', 'suon xao tau xi 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (131, 'sườn non nướng mật ong', 'suon non nuong mat ong copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (132, 'sườn non nướng mật ong 1', 'suon non nuong mat ong 4 copy.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (133, 'sườn chìa nướng mật ong', 'suon chia nuong mat ong 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (134, 'sườn chìa nướng mật ong 1', 'suon chia mat ong ,me.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (135, 'sốt cua nấm đông cô', 'sot ua nam dong co.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (136, 'sốt cua nấm đông cô 1', 'sot cua nam dong co 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (137, 'râu câu dừa', 'rau cau dua.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (138, 'phở bò', 'pho bo.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (139, 'ốc nhồi thịt hấp gừng', 'oc nhoi thit hap gung.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (140, 'vegetta and feta cheese', 'vegetta and feta cheese(1).jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (141, 'vegetta and feta cheese', 'vegetta and feta cheese(1).jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (142, 'vegetta and feta cheese 1', 'vegetta and feta cheese  2psd.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (143, 'vegetta and feta cheese 2', 'vegetta and feta cheese  1psd.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (144, 'tuna spaghetti', 'tuna spaghetti.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (145, 'tuna spaghetti 1', 'tuna spaghetti 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (146, 'tomato and chikpea soup', 'tomato and chikpea soup.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (147, 'tomato and chikpea soup 1', 'tomato and chikpea soup 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (148, 'tom chien gion tron salad', 'tom chien gion tron salad.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (149, 'tom chien gion tron salad 1', 'tom chien gion tron salad 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (150, 'súp hải sản', 'sup hai san .jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (151, 'spaghetti với tỏi , dầu ooliu và ớt', 'spaghetti voi toi,dau oliu vaot 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (152, 'spaghetti với tỏi , dầu oliu và ớt 1', 'spaghetti voi toi ,dau oliu vaot.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (153, 'spaghetti với nước sốt thịt', 'spaghetti voi nuoc sot thit copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (154, 'seared deep sea scallops on potato pure,green peas herb salad', 'seared deep sea scallops on potato pure,green peas herb salad5 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (155, 'seared deep sea scallops on potato pure,green peas herb salad 1', 'seared deep sea scallops on potato pure,green peas herb salad and b_b.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (156, 'seared deep sea scallops on potato pure,green peas herb salad 2', 'seared deep sea scallops on potato pure,green peas herb salad and b_b 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (157, 'seared deep sea scallops on potato pure,green peas herb salad 3', 'seared deep sea scallops on potato pure,green peas herb salad 4 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (158, 'seared deep sea scallops on potato pure,green peas herb salad 4', 'seared deep sea scallops on potato pure,green peas herb salad 3 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (159, 'seared deep sea scallops on potato pure,green peas herb salad 5', 'seared deep sea scallops on potato pure,green peas herb salad 2 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (160, 'salad trái cây với tôm', 'salad trai cay voi tom copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (161, 'salad trái cây với tôm 1', 'salad trai cay voi tom 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (162, 'salad trái cây với ôliu', 'salad trai cay voi oliiu copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (163, 'salad thập cẩm', 'salad thap cam 12 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (164, 'salad thập cẩm 1', 'salad thap cam 11 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (165, 'salad nga', 'salad nga copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (166, 'salad nga 1', 'salad nga 1 copy.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (167, 'salad bơ', 'salad bơ copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (168, 'salad bơ 1', 'salad bơ 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (169, 'rivioli di frutti mare ', 'rivioli di frutti mare 3.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (170, 'rivioli di frutti mare 1', 'ravioli di frutti mare.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (171, 'rivioli di frutti mare 2', 'ravioli di frutti mare 2.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (172, 'rivioli di frutti mare 4', 'ravioli di  frutti mare 1 .jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (173, 'bánh bao bách hoa', 'banh bao bach hoa.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (174, 'bánh cam', 'banh cam .jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (175, 'bánh cam 1', 'banh cam 3.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (176, 'bánh cam hồng kong', 'banh cam hong kong 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (177, 'bánh cam hồng kong', 'banh cam hong kong 2 copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (178, 'bánh cam hồng kong 2', 'banh cam hong kong.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (179, 'bánh cam hồng kong 3', 'banh cam hong kong2.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (180, 'bánh cuốn tôm', 'banh cuon tom.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (181, 'bánh tôm dưa leo chiên', 'banh tom dua leo chien.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (182, 'bánh xếp chiên mặn', 'banh xep chien man copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (183, 'bánh tiramisu', 'tiramisu.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (184, 'bánh tiramisu 1', 'tiramisu 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (185, 'bánh tằm', 'banh tam 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (186, 'bánh susu', 'banh su su 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (187, 'bánh bông lan', 'banh bong lan.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (188, 'bánh bông lan 1', 'banh bong lan 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (189, 'bánh susu 2', 'banh su su 2.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (190, 'bánh susu 2', 'banh su su 2(1).jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (191, 'bánh susu 3', 'banh su su.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (192, 'vegetta and feta cheese', 'vegetta and feta cheese.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (193, 'vegetta and feta cheese', 'vegetta and feta cheese(1).jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (194, 'vegetta and feta cheese 2', 'vegetta and feta cheese  2psd(1).jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (195, 'rau câu', 'rau cau 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'chau', 0);
INSERT INTO `web_photo_gallery` VALUES (196, 'chè khúc bạch', 'IMG_5997.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'chau', 0);
INSERT INTO `web_photo_gallery` VALUES (197, 'chè khúc bạch 1', 'IMG_4592.JPG', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'chau', 0);
INSERT INTO `web_photo_gallery` VALUES (198, 'chè khúc bạch 2', 'IMG_4591.JPG', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'chau', 0);
INSERT INTO `web_photo_gallery` VALUES (199, 'mushrrom soups', 'mushrrom soups.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (200, 'presh pata', 'presh pata.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (201, 'pork tenderlion mustard sauce', 'pork tenderlion mustard sauce.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (202, 'pork tenderlion mustard sauce 1', 'pork tenderlion mustard sauce 5.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (203, 'pork tenderlion mustard sauce 2', 'pork tenderlion mustard sauce 4.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (204, 'pork tenderlion mustard sauce 3', 'pork tenderlion mustard sauce 3.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (205, 'pork tenderlion mustard sauce 4', 'pork tenderlion mustard sauce 2.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (206, 'pork tenderlion mustard sauce 5', '', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (207, 'pork tenderlion mustard sauce 5', 'pork tenderlion mustard sauce 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (208, 'pork tenderlion mustard sauce 6', 'pork ten derlion mustard sauce 6.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (209, 'mushrrom soups 1', 'mushrrom soups 1 .jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (210, 'mỳ ý với thịt xông khói', 'mi y voi thit xong khoi .jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (211, 'mì ý với thịt xông khói', 'mi y voi thit xong khoi ,kem va pho maiparmesan.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (212, 'jumbo river prawn ther minder', 'jumbo river prawn ther minder.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (213, 'jumbo river prawn ther minder 1', 'jumbo river prawn ther minder 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (214, 'gà trộn salad', 'ga tron salad.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (215, 'gà trộn salad 1', 'ga tron salad 2.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (216, 'gà trộn salad 2', 'ga tron salad 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (217, 'gà sốt táo', 'ga sot tao .jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (218, 'gà sốt ôliu 1', 'ga sot dau oliu.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (219, 'gà cuộn phô mai', 'ga cuon pho mai.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (220, 'gà cuộn phô mai 1', 'ga cuon pho mai 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (221, 'gà cuộn ôliu', 'ga cuon oliu.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (222, 'gà cuộn ôliu 1', 'ga cuon oliu 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (223, 'gà cuộn măng tây', 'ga cuon mang tay.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (224, 'gà cuộn măng tây 1', 'ga cuon mang tay 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (225, 'fresh pata', 'fresh pata.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (226, 'fettuccine con spinach masascrpone', 'fettuccine con spinach mấscrpone.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (227, 'fettuccine con gamberi al forno', 'fettuccine con gamberi al forno.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (228, 'fettuccine con gamberi al forno 1', 'fettuccine con gamberi al forno 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (229, 'coctaik tôm', 'coctaik tom copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (230, 'canelloni', 'canelloni.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (231, 'canelloni 1', 'canelloni 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (232, 'cá hồi chiên', 'ca hoi chien.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (233, 'cá hồi chiên 1', 'ca hoi chien 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (234, 'bun-gao-xao-singapore', 'bun-gao-xao-singapore-thuc-don-be-thui-son-ca-3-dac-san-be-thui-nong-2a-phan-xich-long.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (235, 'bò lúc lắc', 'boluclac.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (236, 'beef rocket', 'beef rocket.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (237, 'beef rocket 1', 'beef rocket 2 .jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (238, 'beef rocket 1', 'beef rocket 2 (1).jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (239, 'beef rocket 2', 'beef rocket 1 .jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (240, 'apple chicken', 'apple chicken.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (241, 'apple chicken 1', 'apple chicken 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (242, 'chè bà ba', 'Che ba ba.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'chau', 0);
INSERT INTO `web_photo_gallery` VALUES (243, 'chè đậu trắng', 'Che Dau Trang 2.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'chau', 0);
INSERT INTO `web_photo_gallery` VALUES (244, 'bánh kem sữa tươi', 'cach+lam+banh+kem+sua+tuoi.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (245, 'bánh gato nhân cheri', 'banh gato nhan cheri(1).jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (246, 'bánh gato nhân cheri 1', 'banh gato nhan cheri 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (247, 'banh brownie', 'banh brownie.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (248, 'banh brownie 1', 'banh brownie 3.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (249, 'banh brownie 2', 'banh brownie 2.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (250, 'banh brownie 3', 'banh brownie 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (251, 'bánh bông lan 2', 'banh bong lan.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (252, 'bánh bông lan sốt chanh', 'banh bong lan sot chanh.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (253, 'bánh bông lan sốt chanh 1', 'banh bong lan sot chanh 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (254, 'bánh molten chocolate', 'banh molten chôcolate.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (255, 'bánh molten chocolate 1', 'banh molten chocolate 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (256, 'chè long nhãn', 'chè long nhãn.JPG', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'chau', 0);
INSERT INTO `web_photo_gallery` VALUES (257, 'tổng hợp bánh', 'IMG_1139.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (258, 'yến tiềm đường phèn', 'yen tiem duong phen.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (259, 'xôi gà lá sen', 'xoi ga la sen.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (260, 'xá xíu sườn sốt mật', 'xa xiu suon sot mat.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (261, 'xá xíu nước ', 'xa xiu nuoc copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (262, 'xá xíu nước 1', 'xa xiu nuoc 3 copy - Copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (263, 'xá xíu nước 2', 'xa xiu nuoc 2 copy - Copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (264, 'xá xíu nước 3', 'xa xiu nuoc 1 copy - Copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (265, 'vịt quay tì bà', 'vit quay tì bà copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (266, 'vịt quay tì bà 1', 'vit quay tì bà 1 copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (267, 'vịt bắc kinh hủy long viên', 'vit bac kinh huy long vien.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (268, 'tuyết nhĩ gà xé', 'tuyet nhi ga xe copy - Copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (269, 'tôm hấp lá sen', 'tom toi hap la sen .jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (270, 'tôm phong sa', 'tom phong sa.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (271, 'tôm phong sa 1', 'tom phong sa 3.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (272, 'tôm phong sa 2', 'tom phong sa 2.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (273, 'tôm phong sa 3', 'tom phong sa 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (274, 'tôm lagi', 'tom lagi.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (275, 'tôm lagi 1', 'tom lagi ă.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (276, 'tôm hùm phô mai đút lò', 'tom hum pho mai dut lo.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (277, 'tôm hấp', 'tom hap.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (278, 'tôm hấp lá sen 1', 'tom hap toi la sen.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (279, 'tôm hấp 1', 'tom hap 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (280, 'tàu hủ trung hoa', 'tau hu trung hoa copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (281, 'tàu hủ trung hoa 1', 'tau hu trung hoa 1 copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (282, 'súp bắp cua ', 'sup bap cua.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (283, 'sườn rang muối', 'suon rang muoi1 copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (284, 'sườn rang muối 1', 'suon rang muoi.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (285, 'sườn rang muối 2', 'suon rang muoi copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (286, 'sườn ram', 'suon ram.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (287, 'sườn ram 1', 'suon ram 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (288, 'sườn non nướng mật ong 2', 'suon non nuong mat ong.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (289, 'sườn chìa nướng mật ong 3', 'suon non nuong mat ong 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (290, 'sườn kho', 'suon kho 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (291, 'sườn kho 1', 'suon kho .jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (292, 'pudding sầu riêng', 'pudding sau rieng.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (293, 'pudding sầu riêng 1', 'pudding sau rieng 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (294, 'mì xào thịt xé', 'mi xao thit xe.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (295, 'lẩu vịt tiềm', 'lau vit tiem.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (296, 'lẩu vịt tiềm 1', 'lau vit tiem 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (297, 'lẩu tứ xuyên', 'lau tu xuyen.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (298, 'lẩu tứ xuyên 1', 'lau tu xuyen 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (299, 'mì xào thịt xé 1', 'mì xào thịt xé.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (300, 'lẩu dê', 'lau de copy(1).jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (301, 'hủ tiếu xào hải sản', 'hu tieu xao hai san 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (302, 'hủ tiếu xào hải sản 1', 'hu tieu xao hai san .jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (303, 'hủ tiếu xào bò', 'hu tieu xao bo.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (304, 'hủ tiếu xào bò 1', 'hu tieu xao bo 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (305, 'há cảo hải sản', 'ha cao hai san.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (306, 'gỏi sứa', 'goi sua copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (307, 'gỏi sứa 1', 'goi sua 1 copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (308, 'gà xào bali', 'ga xao bali.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (309, 'gà xào bali 1', 'ga xoa bali 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (310, 'gà tiềm hạt sen', 'ga tiem hat sen copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (311, 'gà tiềm hạt sen 1', 'ga tiem hat sen 1 copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (312, 'gà quay da giòn', 'ga quay da gion.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (313, 'gà quay da giòn rút xương', 'ga cuon pho mai 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (314, 'gà quay da giòn rút xương 1', 'ga quay da gion rut xuong 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (315, 'gà luộc', 'ga luoc.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (316, 'gà luộc 1', 'ga luoc 3.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (317, 'gà luộc 2', 'ga luoc 2.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (318, 'gà luộc 3', 'ga luoc 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (319, 'gà hấp tứ vị', 'ga hap tu vi.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (320, 'gà hấp tứ vị 1', 'ga hap tu vi ă.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (321, 'gà hấp nấm đông cô', 'ga hap nam dong co.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (322, 'gà hấp nấm đông cô 1', 'ga hap nam dong co 1.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (323, 'cơm chiên hải sản', 'con chien.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (324, 'cơm chiên hải sản 1', 'com chien hai san.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (325, 'cơm chiên hải sản 1', 'com chien hai san.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (326, 'bò lúc lắc trung hoa', 'bo luc lac trung hoa 2.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (327, 'bò lúc lắc trung hoa 1', 'bo luc lac trung hoa.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (328, 'bò xào ớt chuông', 'bo xao ot chuong 3 copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (329, 'bò xào ớt chuông 1', 'bo xao ot chuong copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (330, 'tôm hoàng kim 1', 'tom hoang kim 7 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (331, 'tôm hoàng kim 2', 'tom hoang kim 6 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (332, 'tôm hoàng kim 3', 'tom hoang kim 9 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (333, 'tôm hoàng kim 4', 'tom hoang kim 8 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (334, 'súp  cua', 'sup cua 4 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (335, 'súp  cua 1', 'sup cua 5 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (336, 'deep - fried fish and calamari ', 'deep - fried fish and calamari 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (337, 'deep - fried fish and calamari 1 ', 'deep- fried fish and calamari copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (338, 'deep - fried fish and calamari 2', 'deep - fried fish and calamari 2 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (339, 'seared tuna with vegetables and garlic butter ', 'seared tuna with vegetables and garlic butter 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (340, 'seared tuna with vegetables and garlic butter 1', 'seared tuna with vegetables and garlic butter copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (341, 'kem chanh', 'kem chanh copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (342, 'kem chanh 1', 'kem chanh.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (343, 'kem chanh dây', 'kem chanh day copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (344, 'kem chanh dây 1', 'kem chanh day 1 copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (345, 'kem dưa hấu', 'kem dua hau copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (346, 'kem dưa lưới', 'kem dua luoi.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (347, 'kem dưa lưới 1', 'kem dua luoi copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (348, 'kem socola', 'kem socola copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (349, 'kem socola 1', 'kem sôcola copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (350, 'kem xoài', 'kem xoai 1 copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (351, 'kem xoài 1', 'kem xoai copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (352, 'gỏi ngó sen tôm thịt', 'goi ngo sen tom  thit  7 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (353, 'gỏi ngó sen tôm thịt 1', 'goi ngo sen tom thit 6 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (354, 'gỏi bò bóp thấu', 'goi bo bop thau 6 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (355, 'gỏi bò bóp thấu 1', 'goi bo bop thay 5 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (356, 'mì giòn xào hải sản', 'mi gion xao hai san.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (357, 'mì giòn xào hải sản 1', 'mi gion xao hai san copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (358, 'sườn xào tàu xì 2', 'suon xao tau xi 11 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (359, 'sườn xào tàu xì 3', 'suon xao tau xi copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (360, 'grilled chickenwings in chocolate sauce ', 'grilled chickenwings in chocolate sauce copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (361, 'grilled chickenwings in chocolate sauce 1', 'grilled chickenwings in chocolate sauce 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (362, 'grilled chicken breasts mustard sauce with spinach and boiled potato ', 'grilled chicken breasts mustard sauce with spinach and boiled potato copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (363, 'grilled chicken breasts mustard sauce with spinach and boiled potato 1', 'grilled chicken breasts mustard sauce with spinach and boiled potato 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (364, 'grilled chicken breasts mustard sauce with spinach and boiled potato 1', 'grilled chicken breasts mustard sauce with spinach and boiled potato 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (365, 'banana slipt ', 'banana slipt 1 copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (366, 'banana slipt 1 ', 'banana slipt copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (367, 'kem thập cẩm', 'IMG_0007 copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (368, 'kem thập cẩm 1', 'IMG_0009 copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (369, 'kem dừa', 'kem dừa copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (370, 'kem dừa 1', 'kem dừa 1 copy.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (371, 'kem dừa 1', 'kem dừa 1 copy(1).jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (372, 'love cup', 'love cup 1 copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (373, 'love cup', 'love cup copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (374, 'nước chanh', 'nước chaanh 1 copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (375, 'nước chanh 1', 'nước chanh copy(1).jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (376, 'bò xào hủ tiếu', 'bò xào hủ tiếu 1 copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (377, 'bò xào hủ tiếu 1', 'bò xào hủ tiếu copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (378, 'cake coffee ', 'cake coffee 1 copy.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (379, 'cake coffee 1 ', 'cake coffee copy.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (380, ' cup cake coffee', 'cup cake coffee copy.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (381, 'cup cake scream and coffee 1 ', 'cup cake scream and coffee 1 copy.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (382, 'cup cake scream and coffee 2', 'cup cake scream and coffee 2 copy.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (383, 'cup cake scream and coffee 3', 'cup cake scream and coffee 3 copy.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (384, 'cup cake scream and coffee 4', 'cup cake scream and coffee copy.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (385, 'grilled seabass holandaise sauce', 'grilled seabass holandaise sauce 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (386, 'grilled seabass holandaise sauce 1 ', 'grilled seabass holandaise sauce copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (387, 'rosoto seafood ', 'rosoto seafood 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (388, 'bếp việt khóa 6', 'IMG_9452.JPG', ',50,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (389, 'bánh tiramisu 2', 'bánh tiramisu 6 copy.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (390, 'bánh tiramisu 3', 'bánh tiramisu 7 copy.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (391, 'bánh tiramisu 4', 'bánh tiramisu 5 copy.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (392, 'bánh tiramisu 5', 'bánh tiramisu 4 copy.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (393, 'cari gan gà', 'cari gan gà copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (394, 'cari gan gà 1', 'cari gan gà 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (395, 'salad bưởi', 'salad bưởi 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (396, 'salad bưởi 1', 'salad bưởi copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (397, 'salad kiwi', 'salad kiwi 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (398, 'salad kiwi 1', 'salad kiwi copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (399, 'salad xoài', 'salad xoài 1 copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (400, 'salad xoài 1', 'salad xoài copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (401, 'ức gà sốt bơ đậu phộng', 'ức gà sốt bơ đậu phộng 1.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (402, 'ức gà sốt bơ đậu phộng 1', 'ức gà sốt bơ đậu phộng copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (403, 'bánh cam', 'banh cam 3(2).jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (404, 'cá tây tượng chiên xù', 'ca tai tuong chien xu 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (405, 'bánh giò', 'banh gio 1 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (406, 'bún xào hải sản', 'bun xao hai san.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (407, 'cá lóc hấp bầu', 'ca loc hap bau 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (408, 'cá lóc nướng trui', 'ca loc nuong trui 3.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (409, 'cari gà', 'ca ri gà - thay nhan.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (410, 'cá sapa nướng giấy bạc', 'ca sapa nuong giay bac 1 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (411, 'cải thìa xào dầu hào', 'cai thia xao dau hao.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (412, 'càng cua bách hoa', 'cang cua bach hoa 13 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (413, 'càng cua bách hoa 1', 'cang cua bach hoa21.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (414, 'cánh gà chiên mắm', 'canh ga chien mam 13.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (415, 'cánh gà chiên mắm 1', 'canh ga chien mam.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (416, 'chả giò hải sản sầu riêng', 'cha gio hai san sau rieng.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (417, 'cháo cá miền tây', 'chao ca mien tay 14 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (418, 'cháo gà xé phay', 'chao ga xe phay 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (419, 'cơm chiên hoàng bào', 'com chien hoang bao 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (420, 'cơm chiên ớt chuông', 'com chien ot chuong 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (421, 'cơm chiên thập cẩm', 'com chien thap cam 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (422, 'cơm chiên trái thơm', 'com chien trai thom 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (423, 'cơm niêu nam bộ', 'com nieu nam bo.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (424, 'cua ram me', 'cua rang me 12.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (425, 'gà hấp tứ vị 2', 'ga hap tu vi 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (426, 'giò heo hầm dưa cải', 'Gio heo ham dua cai.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (427, 'gỏi củ dừa', 'goi cu dua 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (428, 'gỏi đu đủ thái', 'goi du du thai.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (429, 'gỏi gà xé phay', 'goi ga xe phay 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (430, 'gỏi nôm su khô bò', 'goi nom su kho bo 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (431, 'heo nướng xiên que', 'heo nuong xien que 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (432, 'lẩu nấm hoa', 'lau nam hoa.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (433, 'mì xào giòn hải sản', 'mi xao gion hai san 13.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (434, 'mì xào hải sản', 'mi xao gion hai san 13.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (435, 'mực lăn bột chiên giòn', 'muc lan bot chien gion copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (436, 'mực xào', 'muc xao 1.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (437, 'xá xíu nước ', 'xa xiu nuoc copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (438, 'Học viên trường NetSpace dã ngoại tai KDL MÊKÔNG - LONG THÀNH', 'IMG_7832.JPG', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (439, 'Học viên trường NetSpace dã ngoại tai KDL MÊKÔNG - LONG THÀNH', 'IMG_7316.JPG', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (440, 'Học viên trường NetSpace dã ngoại tai KDL MÊKÔNG - LONG THÀNH', 'IMG_7316(1).JPG', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (441, 'Học viên trường NetSpace dã ngoại tai KDL MÊKÔNG - LONG THÀNH', 'IMG_7553.JPG', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (442, 'Học viên trường NetSpace dã ngoại tai KDL MÊKÔNG - LONG THÀNH', 'IMG_7361.JPG', ',58,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (443, 'stuffed pork chops with mushroom apple sauce and braised red cabbage copy', 'stuffed pork chops with mushroom apple sauce and braised red cabbage copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (444, 'herbed lamd chops with greek couscous salad and red wine onion sauce ', 'herbed lamd chops with greek couscous salad and red wine onion sauce copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (445, 'cá mú hấp hồngkong', 'cá mú hấp hồngkong copy.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (446, 'giò heo chiên giòn', 'giò heo chiên giòn 4 copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (447, 'hoạt động', 'BẾP VIỆT KHÓA 6.jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (448, 'hoạt động khoa viet 6', 'IMG_7929.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (449, 'hoạt động', 'BẾP VIỆT KHÓA 6.jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (450, 'hoạt động', 'IMG_2025.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (451, 'hoạt động', 'IMG_7131.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (452, 'hoạt động', 'IMG_7135.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (453, 'hoạt động', 'IMG_7142.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (454, 'hoạt động', 'IMG_7176.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (455, 'hoạt động', 'IMG_7184.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (456, 'hoạt động', 'IMG_7189.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (457, 'hoạt động', 'IMG_8053.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (458, 'hoạt động', 'IMG_8063.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (459, 'hoạt động', 'IMG_9452(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (460, 'hoạt động', 'IMG_9452.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (461, 'thực hành', 'IMG_5288.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (462, 'thực hành', 'IMG_5289.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (463, 'thực hành', 'IMG_5317.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (464, 'thực hành', 'IMG_5323.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (465, 'thực hành', 'IMG_7216.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (466, 'thực hành', 'IMG_7267.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (467, 'thực hành', 'IMG_7261.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (468, 'thực hành', 'IMG_7260.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (469, 'thực hành', 'IMG_7254.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (470, 'thực hành', 'IMG_7246.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (471, 'hoạt động', 'BẾP VIỆT KHÓA 7.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (472, 'hoạt động', 'IMG_0581.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (473, 'hoạt động', 'IMG_2714.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (474, 'hoạt động', 'IMG_2717.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (475, 'hoạt động', 'IMG_4960.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (476, 'hoạt động', 'IMG_4970.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (477, 'hoạt động', 'IMG_4969.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (478, 'hoạt động', 'IMG_2726.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (479, 'hoạt động', 'IMG_7885.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (480, 'hoạt động', 'IMG_8943.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (481, 'hoạt động', 'IMG_8942.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (482, 'hoạt động', 'IMG_8941.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (483, 'hoạt động', 'IMG_8940.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (484, 'hoạt động', 'IMG_8934.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (485, 'thực hành', 'IMG_8955.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (486, 'thực hành', 'IMG_8956.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (487, 'thực hành', 'IMG_8958.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (488, 'thực hành', 'IMG_8963.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (489, 'thực hành', 'IMG_8965.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (490, 'thực hành', 'IMG_8966.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (491, 'thực hành', 'IMG_8966.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (492, 'thực hành', 'IMG_8990.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (493, 'thực hành', 'IMG_9002.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (494, 'thực hành', 'IMG_9011.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (495, 'thực hành', 'IMG_9004.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (496, 'thực hành', 'IMG_8982.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (497, 'thực hành', 'IMG_6299.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (498, 'thực hành', 'IMG_6294.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (499, 'hoạt động', 'IMG_2759.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (500, 'hoạt động', 'IMG_2796.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (501, 'hoạt động', 'IMG_2753 - Copy.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (502, 'hoạt động', 'IMG_2755.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (503, 'hoạt động', 'IMG_2772.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (504, 'hoạt động', 'IMG_2782.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (505, 'hoạt động', 'IMG_5027.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (506, 'hoạt động', 'IMG_6361.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (507, 'hoạt động', 'IMG_6362.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (508, 'hoạt động', 'IMG_6367.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (509, 'hoạt động', 'IMG_7000.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (510, 'hoạt động', 'IMG_8335.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (511, 'hoạt động', 'IMG_9622.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (512, 'hoạt động', 'IMG_9624.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (513, 'sushi chiên', 'com shushi 11 copy(1).jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 0);
INSERT INTO `web_photo_gallery` VALUES (514, 'sushi cuộn cá hồi', 'shushi cuon ca 1 copy.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (515, 'sushi tôm', 'com shushi tom copy(1).jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (516, 'sushi cá hồi', 'shushi cuộn cá hồi 6 copy(1).jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (517, 'sushi cuộn tôm', 'shushi cuộn tôm 3 copy.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (518, 'sushi da cá hồi chiên', 'shushi da cá hồi chiên copy.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (519, 'sushi dragon', 'shushi dragon 3 copy.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (520, 'sushi cuộn trái cây', 'shushi trái cây copy.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (521, 'sushi cuộn phô mai', 'shushi cá hồi 2 copy.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (522, 'sushi cá hồi 1', 'shushi cá hồi 3 copy.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (523, 'sushi cua', 'shushi cuộn tôm 3 copy(1).jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (524, 'sushi cuộn cá hồi 1', 'shushi cuộn cá hồi 5 copy.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (525, 'hoạt động', 'IMG_9640.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (526, 'hoạt động', 'IMG_9637.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (527, 'hoạt động', 'IMG_9635.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (528, 'hoạt động', 'IMG_9634.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (529, 'hoạt động', 'IMG_9632.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (530, 'hoạt động', 'IMG_9631.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (531, 'hoạt động', 'IMG_9629.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (532, 'hoạt động', 'IMG_8335(1).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (533, 'hoạt động', 'IMG_7002.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (534, 'hoạt động', 'IMG_2774.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (535, 'hoạt động', 'IMG_9758.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (536, 'hoạt động', 'IMG_9759.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (537, 'hoạt động', 'IMG_0399.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (538, 'hoạt động', 'IMG_0400.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (539, 'hoạt động', 'IMG_0401.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (540, 'hoạt động', 'IMG_6381.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (541, 'hoạt động', 'IMG_6379.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (542, 'hoạt động', 'IMG_6378.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (543, 'hoạt động', 'BẾP VIỆT KHÓA 10.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (544, 'hoạt động', 'BẾP VIỆT KHÓA 11.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (545, 'hoạt động', 'IMG_6317.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (546, 'hoạt động', 'IMG_6318.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (547, 'hoạt động', 'IMG_6318(1).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (548, 'hoạt động', 'IMG_6319.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (549, 'hoạt động', 'IMG_6320.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (550, 'hoạt động', 'IMG_6322.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (551, 'hoạt động', 'IMG_6323.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (552, 'hoạt động', 'IMG_6414.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (553, 'hoạt động', 'IMG_6415.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (554, 'hoạt động', 'IMG_7176(1).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (555, 'hoạt động', 'IMG_7177.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (556, 'hoạt động', 'IMG_7178.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (557, 'hoạt động', 'IMG_7179.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (558, 'hoạt động', 'IMG_7180.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (559, 'hoạt động', 'IMG_7181.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (560, 'hoạt động', 'IMG_7182.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (561, 'hoạt động', 'IMG_9564.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (562, 'hoạt động', 'IMG_9718.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (563, 'hoạt động', 'IMG_9719.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (564, 'hoạt động', 'IMG_0050.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (565, 'hoạt động', 'IMG_0051.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (566, 'hoạt động', 'IMG_0052.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (567, 'hoạt động', 'IMG_0053.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (568, 'hoạt động', 'IMG_0054.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (569, 'hoạt động', 'IMG_0055.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (570, 'hoạt động', 'IMG_0056.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (571, 'hoạt động', 'IMG_0058.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (572, 'hoạt động', 'IMG_0369.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (573, 'hoạt động', 'IMG_0370.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (574, 'hoạt động', 'IMG_0396.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (575, 'hoạt động', 'IMG_0397.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (576, 'hoạt động', 'IMG_0416.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (577, 'hoạt động', 'IMG_0417.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (578, 'hoạt động', 'IMG_0413.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (579, 'hoạt động', 'IMG_0414.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (580, 'hoạt động', 'IMG_9646.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (581, 'hoạt động', 'IMG_9647.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (582, 'hoạt động', 'IMG_0471.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (583, 'hoạt động', 'IMG_0473.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (584, 'hoạt động', 'IMG_0469.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (585, 'hoạt động', 'IMG_0470.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (586, 'hoạt động', 'IMG_0329.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (587, 'hoạt động', 'IMG_0331.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (588, 'hoạt động', 'IMG_0328.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (589, 'hoạt động', 'IMG_9974.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (590, 'hoạt động', 'BẾP VIỆT KHÓA 12.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (591, 'hoạt động', 'hdfiudfug.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (592, 'hoạt động', 'IMG_0328.JPG', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (593, 'hoạt động', 'IMG_8234.JPG', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (594, 'hoạt động', 'IMG_8350.JPG', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (595, 'hoạt động', 'IMG_8349.JPG', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (596, 'hoạt động', 'IMG_8348.JPG', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (597, 'hoạt động', 'IMG_9917.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (598, 'hoạt động', 'IMG_9915.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (599, 'hoạt động', 'IMG_9973.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (600, 'hoạt động', 'IMG_9651.jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (601, 'hoạt động', 'BẾP ÂU KHPOA 4.jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (602, 'hoạt động', 'IMG_0930.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (603, 'hoạt động', 'IMG_0933.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (604, 'hoạt động', 'IMG_0935.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (605, 'hoạt động', 'IMG_0941.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (606, 'hoạt động', 'IMG_6974.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (607, 'hoạt động', 'IMG_6973.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (608, 'hoạt động', 'IMG_2742.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (609, 'hoạt động', 'IMG_2741.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (610, 'hoạt động', 'IMG_2739.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (611, 'hoạt động', 'IMG_2738.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (612, 'hoạt động', 'IMG_2737(1).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (613, 'hoạt động', 'IMG_0380.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (614, 'hoạt động', 'IMG_0379.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (615, 'hoạt động', 'IMG_0073.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (616, 'hoạt động', 'IMG_0074.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (617, 'hoạt động', 'IMG_0072.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (618, 'hoạt động', 'IMG_9901.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (619, 'hoạt động', 'IMG_9902.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (620, 'hoạt động', 'IMG_9723.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (621, 'hoạt động', 'IMG_9652.jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (622, 'hoạt động', 'IMG_6383.jpg', ',49,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (623, 'hoạt động', 'IMG_6408.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (624, 'hoạt động', 'IMG_6409.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (625, 'hoạt động', 'IMG_6411.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (626, 'hoạt động', 'IMG_9531.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (627, 'hoạt động', 'IMG_9532.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (628, 'hoạt động', 'IMG_9533.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (629, 'sinh tố kiwi', 'sinh tố kiwi copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (630, 'Bún hàm tiếu', 'bún hàm tiếu 1 copy.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (631, 'bún thịt nướng chay', 'bún thịt nướng chay 1.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (632, 'cari ấn độ chay', 'cà ri ấn độ chay 1 copy.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (633, 'đậu hủ tì bà', 'đậu hủ tì bà 1 copy.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (634, 'gỏi ngó sen chay', 'gỏi ngó sen chay 1 copy.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (635, 'sườn ram kinh đô chay', 'sườn chay ram kinh đô 1 copy.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (636, 'da heo chiên giòn chay', 'da heo chên giòn 1 copy.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (637, 'gỏi cuốn chay', 'gỏi cuốn chay 1 copy.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (638, 'chả giò chay', 'chả giò chay 1 copy.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (639, 'hoạt động', 'IMG_4422.JPG', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (640, 'hoạt động', 'IMG_4419.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (641, 'hoạt động', 'IMG_4419(2).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (642, 'hoạt động', 'IMG_4420.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (643, 'hoạt động', 'IMG_4423.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (644, 'hoạt động', 'IMG_4949.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (645, 'hoạt động', 'IMG_5111.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (646, 'hoạt động', 'IMG_5161.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (647, 'hoạt động', 'PHA CHẾ KHOA 4.jpg', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (648, 'hoạt động', 'IMG_7058.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (649, 'hoạt động', 'IMG_7060.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (650, 'hoạt động', 'IMG_7061.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (651, 'hoạt động', 'IMG_7062.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (652, 'hoạt động', 'IMG_7068.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (653, 'hoạt động', 'IMG_7072.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (654, 'hoạt động', 'IMG_7073.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (655, 'hoạt động', 'IMG_7086.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (656, 'hoạt động', 'IMG_7093.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (657, 'hoạt động', 'IMG_7095.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (658, 'hoạt động', 'IMG_7099.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (659, 'hoạt động', 'IMG_7100.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (660, 'hoạt động', 'IMG_7104.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (661, 'hoạt động', 'IMG_7105.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (662, 'hoạt động', 'IMG_7108.JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (663, 'hoạt động', 'IMG_9233.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (664, 'hoạt động', 'IMG_9237.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (665, 'hoạt động', 'IMG_9232.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (666, 'hoạt động', 'IMG_9231.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (667, 'hoạt động', 'IMG_9222.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (668, 'hoạt động', 'IMG_8385.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (669, 'hoạt động', 'IMG_8384.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (670, 'hoạt động', 'IMG_8328.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (671, 'hoạt động', 'IMG_8327.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (672, 'hoạt động', 'IMG_8326.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (673, 'hoạt động', 'IMG_8323.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (674, 'hoạt động', 'IMG_8320.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (675, 'hoạt động', 'IMG_8318.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (676, 'hoạt động', 'IMG_8281.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (677, 'hoạt động', 'IMG_8258.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (678, 'hoạt động', 'IMG_8252.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (679, 'hoạt động', 'IMG_8323(1).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (680, 'hoạt động', 'IMG_8318(1).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (681, 'hoạt động', 'IMG_8252(1).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (682, 'hoạt động', 'IMG_8247.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (683, 'hoạt động', 'IMG_8232.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (684, 'hoạt động', 'IMG_8228.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (685, 'hoạt động', 'IMG_8227.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (686, 'hoạt động', 'IMG_8226.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (687, 'hoạt động', 'IMG_3597.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (688, 'hoạt động', 'IMG_2691.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (689, 'hoạt động', 'IMG_2709.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (690, 'hoạt động', 'IMG_2711.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (691, 'hoạt động', 'IMG_3758.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (692, 'hoạt động', 'IMG_3759.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (693, 'hoạt động', 'IMG_3763.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (694, 'hoạt động', 'IMG_3768.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (695, 'hoạt động', 'IMG_3770.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (696, 'hoạt động', 'IMG_3771.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (697, 'hoạt động', 'IMG_3774.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (698, 'hoạt động', 'IMG_3776.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (699, 'hoạt động', 'IMG_3783.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (700, 'hoạt động', 'IMG_3789.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (701, 'hoạt động', 'IMG_3889.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (702, 'hoạt động', 'IMG_3895.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (703, 'hoạt động', 'IMG_3921.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (704, 'hoạt động', 'PHA CHẾ KHÓA 3.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (705, 'hoạt động', 'IMG_9868.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (706, 'hoạt động', 'IMG_9842.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (707, 'hoạt động', 'IMG_9841.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (708, 'hoạt động', 'IMG_9840.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (709, 'hoạt động', 'IMG_9836.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (710, 'hoạt động', 'IMG_9824.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (711, 'hoạt động', 'IMG_9823.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (712, 'hoạt động', 'IMG_8293.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (713, 'hoạt động', 'IMG_8291.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (714, 'hoạt động', 'IMG_8290.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (715, 'hoạt động', 'IMG_8288.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (716, 'hoạt động', 'IMG_7046.JPG', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (717, 'hoạt động', 'IMG_9834.jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (718, 'hoạt động', 'IMG_8265.JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (719, 'hoạt động', 'IMG_8266.JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (720, 'hoạt động', 'IMG_8270.JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (721, 'hoạt động', 'IMG_8271.JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (722, 'hoạt động', 'IMG_8274.JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (723, 'hoạt động', 'IMG_8276.JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (724, 'hoạt động', 'PHA CHẾ KHÓA 5.jpg', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (725, 'hoạt động', 'IMG_6388.jpg', ',87,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (726, 'hoạt động', 'PHA CHẾ KHÓA 6.jpg', ',87,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (727, 'hoạt động', 'IMG_7851.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (728, 'hoạt động', 'IMG_7855.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (729, 'hoạt động', 'IMG_7861.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (730, 'hoạt động', 'IMG_7864.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (731, 'hoạt động', 'IMG_7856.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (732, 'hoạt động', 'IMG_0294.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (733, 'hoạt động', 'IMG_7876.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (734, 'hoạt động', 'IMG_7878.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (735, 'hoạt động', 'IMG_7879.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (736, 'hoạt động', 'IMG_7885.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (737, 'hoạt động', 'IMG_8523.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (738, 'hoạt động', 'IMG_8525.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (739, 'hoạt động', 'IMG_8527.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (740, 'hoạt động', 'IMG_8529.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (741, 'hoạt động', 'IMG_8532.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (742, 'hoạt động', 'IMG_8545.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (743, 'hoạt động', 'IMG_9764.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (744, 'hoạt động', 'IMG_9766.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (745, 'hoạt động', 'IMG_9918.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (746, 'hoạt động', 'IMG_9925.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (747, 'hoạt động', 'IMG_9927.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (748, 'hoạt động', 'IMG_9929.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (749, 'hoạt động', 'PHA CHẾ KHÓA 7.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (750, 'hoạt động', 'IMG_0281.jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (751, 'hoạt động', 'IMG_0288.jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (752, 'hoạt động', 'IMG_8304.jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (753, 'hoạt động', 'IMG_8305.jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (754, 'hoạt động', 'IMG_8306.jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (755, 'hoạt động', 'IMG_8307.jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (756, 'hoạt động', 'IMG_0336.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (757, 'hoạt động', 'IMG_0339.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (758, 'hoạt động', 'IMG_0351.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (759, 'hoạt động', 'IMG_0353.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (760, 'hoạt động', 'IMG_9970.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (761, 'hoạt động', 'IMG_9971.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (762, 'hoạt động', 'IMG_9972.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (763, 'hoạt động', 'PHA CHẾ KHÓA 9.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (764, 'hoạt động', 'IMG_2765.JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (765, 'hoạt động', 'IMG_2767.JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (766, 'hoạt động', 'IMG_2769.JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (767, 'hoạt động', 'IMG_2770.JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (768, 'hoạt động', 'IMG_6994.JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (769, 'thực hành', 'IMG_5332.JPG', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (770, 'thực hành', 'IMG_5340.JPG', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (771, 'thực hành', 'IMG_5343.JPG', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (772, 'thực hành', 'IMG_5353.JPG', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (773, 'thực hành', 'IMG_5363.JPG', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (774, 'hoạt động', 'IMG_9732.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (775, 'hoạt động', 'IMG_9733.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (776, 'hoạt động', 'IMG_9734.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (777, 'hoạt động', 'IMG_0065.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (778, 'hoạt động', 'IMG_0067.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (779, 'hoạt động', 'IMG_0068.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (780, 'hoạt động', 'IMG_0069.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (781, 'hoạt động', 'IMG_0071.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (782, 'hoạt động', 'IMG_0372.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (783, 'hoạt động', 'IMG_0373.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (784, 'hoạt động', 'IMG_0374.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (785, 'hoạt động', 'IMG_0375.jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (786, 'hoạt động', 'IMG_0576.JPG', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (787, 'hoạt động', 'IMG_0576.JPG', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (788, 'hoạt động', 'IMG_0743.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (789, 'hoạt động', 'IMG_0744.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (790, 'hoạt động', 'IMG_0747.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (791, 'hoạt động', 'IMG_0758.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (792, 'hoạt động', 'IMG_0760.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (793, 'hoạt động', 'IMG_0761.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (794, 'hoạt động', 'IMG_0763.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (795, 'thực hành', 'IMG_0764.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (796, 'hoạt động', 'IMG_0771.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (797, 'hoạt động', 'IMG_0774.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (798, 'hoạt động', 'IMG_0558.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (799, 'hoạt động', 'IMG_0556.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (800, 'hoạt động', 'IMG_0527.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (801, 'hoạt động', 'IMG_0529.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (802, 'hoạt động', 'IMG_0779.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (803, 'hoạt động', 'IMG_0780.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (804, 'hoạt động', 'IMG_0781.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (805, 'hoạt động', 'IMG_0784.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (806, 'hoạt động', 'IMG_0785.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (807, 'hoạt động', 'IMG_0786.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (808, 'hoạt động', 'IMG_0787.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (809, 'hoạt động', 'IMG_0790.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (810, 'hoạt động', 'IMG_0792.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (811, 'hoạt động', 'IMG_0793.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (812, 'hoạt động', 'IMG_0794.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (813, 'hoạt động', 'IMG_0802.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (814, 'hoạt động', 'IMG_0803.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (815, 'hoạt động', 'IMG_0804.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (816, 'hoạt động', 'IMG_0806.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (817, 'hoạt động', 'IMG_0807.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (818, 'hoạt động', 'IMG_0816.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (819, 'hoạt động', 'IMG_0820.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (820, 'hoạt động', 'IMG_0830.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (821, 'hoạt động', 'IMG_0824.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (822, 'hoạt động', 'IMG_0825.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (823, 'hoạt động', 'IMG_0854.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (824, 'hoạt động', 'IMG_0855.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (825, 'hoạt động', 'IMG_0856.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (826, 'hoạt động', 'IMG_0857.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (827, 'hoạt động', 'IMG_0858.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (828, 'hoạt động', 'IMG_6382.jpg', ',124,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (829, 'hoạt động', 'IMG_6385(1).jpg', ',124,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (830, 'hoạt động', 'IMG_6387.jpg', ',124,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (831, 'hoạt động', 'IMG_0751.jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (832, 'hoạt động', 'IMG_0752.jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (833, 'hoạt động', 'IMG_0754.jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (834, 'hoạt động', 'IMG_0756.jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (835, 'hoạt động', 'IMG_0757.jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (836, 'hoạt động', 'IMG_0776.jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (837, 'hoạt động', 'IMG_0447.jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (838, 'hoạt động', 'IMG_0449.jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (839, 'hoạt động', 'IMG_0450.jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (840, 'hoạt động', 'IMG_0451.jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (841, 'hoạt động', 'IMG_0465.jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (842, 'hoạt động', 'IMG_0466.jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (843, 'hoạt động', 'IMG_0845.jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (844, 'hoạt động', 'IMG_0843.jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (845, 'hoạt động', 'IMG_0423.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (846, 'hoạt động', 'IMG_0422.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (847, 'hoạt động', 'IMG_0418.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (848, 'hoạt động', 'IMG_0408.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (849, 'hoạt động', 'IMG_0409.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (850, 'hoạt động', 'IMG_0410.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (851, 'hoạt động', 'IMG_0407.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (852, 'hoạt động', 'IMG_0467.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (853, 'hoạt động', 'IMG_0462.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (854, 'hoạt động', 'IMG_0457.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (855, 'hoạt động', 'IMG_0461.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (856, 'hoạt động', 'IMG_0454.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (857, 'hoạt động', 'IMG_0453.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (858, 'hoạt động', 'IMG_0846.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (859, 'hoạt động', 'IMG_0848.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (860, 'hoạt động', 'IMG_0851.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (861, 'hoạt động', 'IMG_0852.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (862, 'hoạt động', 'IMG_0853.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (863, 'hoạt động', 'IMG_7891.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (864, 'hoạt động', 'IMG_7893.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (865, 'hoạt động', 'IMG_7894.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (866, 'hoạt động', 'IMG_7895.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (867, 'hoạt động', 'IMG_7897.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (868, 'tốt nghiệp', 'IMG_8909.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (869, 'hoạt động', 'IMG_8917.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (870, 'hoạt động', 'IMG_8921.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (871, 'hoạt động', 'IMG_8838.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (872, 'hoạt động', 'IMG_8839.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (873, 'hoạt động', 'IMG_8846.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (874, 'tốt nghiệp', 'IMG_8862.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (875, 'tốt nghiệp', 'IMG_8863.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (876, 'tốt nghiệp', 'IMG_8866.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (877, 'tốt nghiệp', 'IMG_8887.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (878, 'tốt nghiệp', 'IMG_8869.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (879, 'tốt nghiệp', 'IMG_8893.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (880, 'tốt nghiệp', 'IMG_8842.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (881, 'tốt nghiệp', 'IMG_8900.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (882, 'tốt nghiệp', 'IMG_8928.jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (883, 'hoạt động', 'IMG_6975.JPG', ',129,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (884, 'hoạt động', 'IMG_6976.JPG', ',129,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (885, 'hoạt động', 'IMG_6978.JPG', ',129,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (886, 'hoạt động', 'IMG_8357.jpg', ',129,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (887, 'hoạt động', 'IMG_0285.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (888, 'hoạt động', 'IMG_5848.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (889, 'hoạt động', 'IMG_5857.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (890, 'hoạt động', 'IMG_5864.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (891, 'hoạt động', 'IMG_5950.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (892, 'hoạt động', 'IMG_5958.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (893, 'hoạt động', 'IMG_5962.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (894, 'hoạt động', 'IMG_5972.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (895, 'hoạt động', 'IMG_6760.JPG', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (896, 'hoạt động', 'IMG_6761.JPG', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (897, 'hoạt động', 'IMG_6762.JPG', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (898, 'hoạt động', 'IMG_9478.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (899, 'hoạt động', 'IMG_9495.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (900, 'hoạt động', 'IMG_9525.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (901, 'hoạt động', 'IMG_9526.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (902, 'hoạt động', 'IMG_9528.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (903, 'hoạt động', 'IMG_9586.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (904, 'hoạt động', 'IMG_9772.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (905, 'hoạt động', 'IMG_9774.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (906, 'hoạt động', 'IMG_9796.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (907, 'hoạt động', 'IMG_9815.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (908, 'hoạt động', 'IMG_9815(1).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (909, 'hoạt động', '3.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (910, 'hoạt động', 'IMG_0038.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (911, 'hoạt động', 'IMG_0038(1).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (912, 'hoạt động', 'IMG_0289.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (913, 'hoạt động', 'IMG_0290.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (914, 'hoạt động', 'IMG_0292.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (915, 'hoạt động', 'IMG_0293.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (916, 'hoạt động', 'IMG_0295.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (917, 'hoạt động', 'IMG_9919.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (918, 'hoạt động', 'IMG_9922.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (919, 'hoạt động', 'IMG_9923.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (920, 'hoạt động', 'IMG_0059(1).jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (921, 'hoạt động', 'IMG_0060.jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (922, 'hoạt động', 'IMG_0061.jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (923, 'hoạt động', 'IMG_0063.jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (924, 'hoạt động', 'IMG_9820.jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (925, 'hoạt động', 'IMG_9870.jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (926, 'hoạt động', 'IMG_9937.jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (927, 'hoạt động', 'IMG_9938.jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (928, 'hoạt động', 'IMG_9989.jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (929, 'hoạt động', 'IMG_9990.jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (930, 'hoạt động', 'IMG_0555.jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (931, 'hoạt động', 'IMG_0560.jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (932, 'hoạt động', 'IMG_0577.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (933, 'hoạt động', 'IMG_0578.jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (934, 'hoạt động', 'IMG_0282.jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (935, 'hoạt động', 'IMG_0283.jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (936, 'hoạt động', 'IMG_0284.jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (937, 'hoạt động', 'IMG_0291.jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (938, 'hoạt động', 'IMG_9768.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (939, 'hoạt động', 'IMG_0914.jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (940, 'hoạt động', 'IMG_0777.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (941, 'hoạt động', 'IMG_0580.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (942, 'hoạt động', 'IMG_0582.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (943, 'hoạt động', 'IMG_0583.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (944, 'hoạt động', 'IMG_0575.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (945, 'hoạt động', 'IMG_0569.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (946, 'hoạt động', 'IMG_0568.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (947, 'diễn viên học nấu ăn', 'IMG_5465.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (948, 'diễn viên học nấu ăn', 'IMG_5466.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (949, 'diễn viên học nấu ăn', 'IMG_5470.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (950, 'diễn viên học nấu ăn', 'IMG_5471.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (951, 'diễn viên học nấu ăn', 'IMG_5585.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (952, 'diễn viên học nấu ăn', 'IMG_5583.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (953, 'diễn viên học nấu ăn', 'IMG_5577.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (954, 'diễn viên học nấu ăn', 'IMG_5576.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (955, 'diễn viên học nấu ăn', 'IMG_5572.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (956, 'diễn viên học nấu ăn', 'IMG_5567.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (957, 'diễn viên học nấu ăn', 'IMG_5562.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (958, 'diễn viên học nấu ăn', 'IMG_5555.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (959, 'diễn viên học nấu ăn', 'IMG_5557.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (960, 'diễn viên học nấu ăn', 'IMG_5540.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (961, 'diễn viên học nấu ăn', 'IMG_5517.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (962, 'diễn viên học nấu ăn', 'IMG_5504.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (963, 'diễn viên học nấu ăn', 'IMG_5503.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (964, 'diễn viên học nấu ăn', 'IMG_5494.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (965, 'diễn viên học nấu ăn', 'IMG_5492.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (966, 'diễn viên học nấu ăn', 'IMG_5489.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (967, 'diễn viên học nấu ăn', 'IMG_5484.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (968, 'diễn viên học nấu ăn', 'IMG_5482.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (969, 'diễn viên học nấu ăn', 'IMG_5475.jpg', ',70,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (970, 'ngoại khóa', '195.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (971, 'ngoại khóa', '193.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (972, 'ngoại khóa', '192.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (973, 'ngoại khóa', '184.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (974, 'ngoại khóa', '176.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (975, 'ngoại khóa', '171.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (976, 'ngoại khóa', '168.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (977, 'ngoại khóa', '165.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (978, 'ngoại khóa', '163.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (979, 'ngoại khóa', '158.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (980, 'ngoại khóa', '153.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (981, 'ngoại khóa', '152.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (982, 'ngoại khóa', '151.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (983, 'ngoại khóa', '150.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (984, 'ngoại khóa', '148.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (985, 'ngoại khóa', '146.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (986, 'ngoại khóa', '145.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (987, 'ngoại khóa', '143.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (988, 'ngoại khóa', '139.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (989, 'ngoại khóa', '138.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (990, 'ngoại khóa', '133.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (991, 'ngoại khóa', '132.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (992, 'ngoại khóa', '114.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (993, 'ngoại khóa', '113.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (994, 'ngoại khóa', '109.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (995, 'ngoại khóa', '107.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (996, 'ngoại khóa', '105.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (997, 'ngoại khóa', '89.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (998, 'ngoại khóa', '88.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (999, 'ngoại khóa', '87.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1000, 'ngoại khóa', '82.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1001, 'ngoại khóa', '81.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1002, 'ngoại khóa', '79.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1003, 'ngoại khóa', '77.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1004, 'ngoại khóa', '69.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1005, 'ngoại khóa', '68.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1006, 'ngoại khóa', '67.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1007, 'ngoại khóa', '47.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1008, 'ngoại khóa', '68.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1009, 'ngoại khóa', '59.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1010, 'ngoại khóa', '43.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1011, 'ngoại khóa', '42.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1012, 'ngoại khóa', '36.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1013, 'ngoại khóa', '37(1).JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1014, 'ngoại khóa', '32.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1015, 'ngoại khóa', '29.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1016, 'ngoại khóa', '27.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1017, 'ngoại khóa', '25.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1018, 'ngoại khóa', '17.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1019, 'ngoại khóa', '12.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1020, 'ngoại khóa', '11.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1021, 'ngoại khóa', '2.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1022, 'ngoại khóa', '20.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1023, 'ngoại khóa', '21.JPG', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1024, 'ngoại khóa', '1(2).jpg', ',134,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1025, 'mekong', 'ưer.jpg', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1026, 'ngoại khóa', 'IMG_7791.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1027, 'ngoại khóa', 'IMG_7668.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1028, 'ngoại khóa', 'IMG_7666.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1029, 'ngoại khóa', 'IMG_7665.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1030, 'ngoại khóa', 'IMG_7566.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1031, 'ngoại khóa', 'IMG_7560.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1032, 'ngoại khóa', 'IMG_7553(1).JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1033, 'ngoại khóa', 'IMG_7545.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1034, 'ngoại khóa', 'IMG_7540.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1035, 'ngoại khóa', 'IMG_7526.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1036, 'ngoại khóa', 'IMG_7522.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1037, 'ngoại khóa', 'IMG_7521.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1038, 'ngoại khóa', 'IMG_7519.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1039, 'ngoại khóa', 'IMG_7492.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1040, 'ngoại khóa', 'IMG_7486.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1041, 'ngoại khóa', 'IMG_7474.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1042, 'ngoại khóa', 'IMG_7473.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1043, 'ngoại khóa', 'IMG_7463.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1044, 'ngoại khóa', 'IMG_7458.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1045, 'ngoại khóa', 'IMG_7391.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1046, 'ngoại khóa', 'IMG_7390.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1047, 'ngoại khóa', 'IMG_7377.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1048, 'ngoại khóa', 'IMG_7362.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1049, 'ngoại khóa', 'IMG_7361(1).JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1050, 'ngoại khóa', 'IMG_7336.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1051, 'ngoại khóa', 'IMG_7349.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1052, 'ngoại khóa', 'IMG_7330.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1053, 'ngoại khóa', 'IMG_7329.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1054, 'ngoại khóa', 'IMG_7316(2).JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1055, 'ngoại khóa', 'IMG_7312.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1056, 'ngoại khóa', 'IMG_7304.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1057, 'ngoại khóa', 'IMG_7311.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1058, 'ngoại khóa', 'IMG_7293.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1059, 'ngoại khóa', 'IMG_7291.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1060, 'ngoại khóa', 'IMG_7288.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1061, 'ngoại khóa', 'IMG_7287(1).JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1062, 'ngoại khóa', 'IMG_7284.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1063, 'ngoại khóa', 'IMG_7281.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1064, 'ngoại khóa', '6.JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1065, 'ngoại khóa', 'đầu(1).jpg', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1066, 'ngoại khóa', 'IMG_7832(1).JPG', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1067, 'giao lưu', '57x75 hinh anh y.jpg', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1068, 'giao lưu', 'DSC_1182.jpg', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1069, 'giao lưu', 'DSC_8523.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1070, 'giao lưu', 'IMG_1084.jpg', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1071, 'giao lưu', 'IMG_6212.jpg', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1072, 'giao lưu', 'IMG_8564.jpg', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1073, 'giao lưu', 'IMG_8605.jpg', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1074, 'giao lưu', 'IMG_8603.jpg', ',135,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1075, 'giao lưu', 'IMG_3006.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1076, 'giao lưu', 'IMG_6212(1).jpg', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1077, 'giao lưu', '60x90 hinh anh y.jpg', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1078, 'giao lưu', 'DSC_1993.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1079, 'giao lưu', 'DSC_1996.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1080, 'giao lưu', 'DSC_2004.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1081, 'giao lưu', 'DSC_2023.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1082, 'giao lưu', 'DSC_2035.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1083, 'giao lưu', 'IMG_6568.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1084, 'giao lưu', 'IMG_6575.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1085, 'giao lưu', 'IMG_6580.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1086, 'giao lưu', 'IMG_6590.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1087, 'giao lưu', 'IMG_6594.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1088, 'giao lưu', 'IMG_6595.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1089, 'giao lưu', 'IMG_6599.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1090, 'giao lưu', 'IMG_6609.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1091, 'giao lưu', 'IMG_6610.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1092, 'giao lưu', 'IMG_6615.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1093, 'giao lưu', 'IMG_6616.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1094, 'giao lưu', 'IMG_6619.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1095, 'giao lưu', 'IMG_6626.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1096, 'giao lưu', 'IMG_6633.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1097, 'giao lưu', 'IMG_6634.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1098, 'giao lưu', 'IMG_6636.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1099, 'giao lưu', 'IMG_6637.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (1100, 'giao lưu', 'IMG_6638.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (1101, 'giao lưu', 'IMG_6641.JPG', ',133,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (1102, 'hoạt động 1', '1(13).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1103, 'hoạt động 2', '2(10).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1104, 'hoạt động 3', '3(8).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1105, 'hoạt động 4', '4(4).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1106, 'hoạt động 5', '5(5).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1107, 'hoạt động 6', '6(4).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1108, 'hoạt động 7', '7(6).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1109, 'hoạt động', '8.jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (1110, 'hoạt động 8', '8(4).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1111, 'hoạt động 9', '9(4).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1112, 'hoạt động 12', '12(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1113, 'hoạt động 13', '13(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1114, 'hoạt động 114', '14(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1115, 'hoạt động khóa 15', '1.JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1116, 'hoạt động 2', '2(2).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1117, 'hoạt động 3', '3(3).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1118, 'hoạt động 4', '4(1).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1119, 'hoạt động 5', '5(1).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1120, 'hoạt động 6', '6(1).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1121, 'hoạt động 7', '7(1).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1122, 'hoạt động 8', '8(1).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1123, 'hoạt động 9', '9(1).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1124, 'hoạt động 10', '10(1).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1125, 'hoạt động 11', '16.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1126, 'hoạt động 19', '19.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1127, 'hoạt động 21', '21.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1128, 'hoạt động 22', '22.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1129, 'hoạt động 23', '23.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1130, 'hoạt động 24', '24.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1131, 'hoạt động 25', '25.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1132, 'hoạt động 26', '26.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1133, 'hoạt động 27', '27.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1134, 'hoạt động 28', '28.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1135, 'hoạt động 29', '29.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1136, 'hoạt động 30', '30.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1137, 'hoạt động 31', '31.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1138, 'hoạt động 32', '32(1).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1139, 'hoạt động  khóa 16', '1(9).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1140, 'hoạt động 2', '2(3).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1141, 'hoạt động 3', '3(4).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1142, 'hoạt động 4', '4(2).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1143, 'hoạt động 5', '5(2).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1144, 'hoạt động 6', '6(2).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1145, 'hoạt động 7', '7(2).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1146, 'hoạt động 8', '8(2).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1147, 'hoạt động 9', '9(2).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1148, 'hoạt động 10', '10(2).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1149, 'hoạt động 11', '11(1).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1150, 'hoạt động 12', '12(1).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'long', 1);
INSERT INTO `web_photo_gallery` VALUES (1151, 'hoạt động lớp quốc tế', '1(10).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1152, 'hoạt động 2', '2(9).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1153, 'hoạt động 3', '3(7).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1154, 'hoạt động 4', '4(3).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1155, 'hoạt động 5', '5(3).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1156, 'hoạt động 6', '6(3).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1157, 'hoạt động 7', '7(3).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1158, 'austrailia beef served in green pepper sauce ', 'austrailia beef served in green pepper sauce copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1159, 'chef''s salad ', 'chef''s salad copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1160, 'creamy mushroom soup', 'creamy mushroom soup copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1161, 'crepe flambe'' ', 'crepe flambe'' copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1162, 'flan caramel ', 'flan caramel copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1163, 'grilled duck breast wwith orange sauce', 'grilled duck breast wwith orange sauce copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1164, 'nicoise salad ', 'nicoise salad copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1165, 'pan griiled salmon with pasta ', 'pan griiled salmon with pasta copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1166, 'pana cota ', 'pana cota copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1167, 'panna cotta blackberry ', 'panna cotta blackberry copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1168, 'parmesom cones wwith avocado and red jupper ', 'parmesom cones wwith avocado and red jupper copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1169, 'poached pear in white wine and blackberry sauce ', 'poached pear in white wine and blackberry sauce copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1170, 'Raviollini ', 'Raviollini copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1171, 'seared snapper with lemon sauce ', 'seared snapper with lemon sauce copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1172, 'stuffed squid in win sauce ', 'stuffed squid in win sauce copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1173, 'tagliatelle freshe con salsa di granchio ', 'tagliatelle freshe con salsa di granchio copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1174, 'tirramisu', 'tirramisu copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1175, 'waldorf salad ', 'waldorf salad copy.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1176, 'hoạt động pha che khoa 9', '14(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1177, 'hoạt động 15', '15.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1178, 'hoạt động 16', '16(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1179, 'hoạt động 17', '17.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1180, 'hoạt động 18', '18.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1181, 'hoạt động 19', '19(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1182, 'hoạt động 20', '20.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1183, 'hoạt động 21', '21(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1184, 'hoạt động 22', '22(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1185, 'hoạt động 23', '23(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1186, 'hoạt động 24', '24(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1187, 'hoạt động 25', '25(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1188, 'hoạt động 26', '26(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1189, 'hoạt động 27', '27(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1190, 'hoạt động 29', '29(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1191, 'hoạt động 31', '31(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1192, 'hoạt động 34', '34.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1193, 'hoạt động 35', '35.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1194, 'hoạt động 36', '36.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1195, 'hoạt động 37', '37.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1196, 'hoạt động 38', '38.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1197, 'hoạt động 39', '39.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1198, 'hoạt động 40', '40.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1199, 'hoạt động 42', '42.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1200, 'hoạt động 43', '43.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1201, 'hoạt động 44', '44.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1202, 'hoạt động 45', '45.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1203, 'hoạt động 46', '46.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1204, 'hoạt động 50', '50.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1205, 'hoạt động 56', '56.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1206, 'hoạt động 57', '57.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1207, 'hoạt động 59', '59.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1208, 'hoạt động pha che khoa 8', '7(5).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1209, 'hoạt động 8', '8(3).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1210, 'hoạt động 9', '9(3).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1211, 'hoạt động 11', '11(2).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1212, 'hoạt động 12', '12(2).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1213, 'hoạt động 13', '13.jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1214, 'hoạt động 14', '14(2).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1215, 'hoạt động 15', '15(1).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1216, 'hoạt động 16', '16(2).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1217, 'hoạt động pha che khoa 7', '28(1).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1218, 'hoạt động 29', '29(3).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1219, 'hoạt động 30', '30(1).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1220, 'hoạt động 31', '31(2).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1221, 'hoạt động 32', '32.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1222, 'hoạt động 33', '33.jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1223, 'hoạt động 34', '34(1).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1224, 'cá nướng tiêu ', 'cá nướng tiêu copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1225, 'chả giò kim kê ', 'chả giò kim kê copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1226, 'gà hành hương ', 'gà hành hương copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1227, 'gà nấu trái lê ', 'gà nấu trái lê copy.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1228, 'hoạt động khoa viet 13', '15(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1229, 'hoạt động 16', '16(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1230, 'hoạt động 16', '16(4).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1231, 'hoạt động 17', '17(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1232, 'hoạt động 19', '19(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1233, 'hoạt động 20', '20(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1234, 'hoạt động 21', '21(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1235, 'hoạt động 23', '23(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1236, 'hoạt động 24', '24(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1237, 'hoạt động 25', '25(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1238, 'hoạt động 26', '26(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1239, 'hoạt động 27', '27(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1240, 'hoạt động 28', '28(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1241, 'hoạt động 29', '29(4).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1242, 'hoạt động 30', '30(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1243, 'hoạt động 31', '31(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1244, 'hoạt động 32', '32(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1245, 'hoạt động khoa viet 14', '10(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1246, 'hoạt động 11', '11(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1247, 'hoạt động 12', '12(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1248, 'hoạt động 13', '13(2).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1249, 'hoạt động 14', '14(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1250, 'hoạt động 15', '15(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1251, 'hoạt động 16', '16(5).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1252, 'hoạt động 17', '17(2).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1253, 'hoạt động 18', '18(1).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1254, 'hoạt động 19', '19(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1255, 'hoạt động 20', '20(2).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1256, 'hoạt động 21', '21(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1257, 'hoạt động 22', '22(2).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1258, 'hoạt động 23', '23(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1259, 'hoạt động 24', '24(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1260, 'hoạt động 25', '25(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1261, 'hoạt động 26', '26(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1262, 'hoạt động 27', '27(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1263, 'hoạt động 28', '28(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1264, 'hoạt động khoa viet 15', '33(1).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1265, 'hoạt động 34', '34.JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1266, 'hoạt động 35', '35.JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1267, 'hoạt động 36', '36(1).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1268, 'hoạt động 37', '37(1).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1269, 'hoạt động 38', '38(1).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1270, 'hoạt động 39', '39(1).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1271, 'hoạt động 40', '40(1).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1272, 'hoạt động 41', '41.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1273, 'hoạt động khoa viet 13', '33(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1274, 'hoạt động 34', '34(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1275, 'hoạt động 35', '35(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1276, 'hoạt động 36', '36(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1277, 'hoạt động 37', '37(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1278, 'hoạt động 38', '38(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1279, 'hoạt động khoa viet 11', '32(2).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1280, 'hoạt động 33', '33(2).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1281, 'hoạt động 34', '34(3).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1282, 'hoạt động 35', '35(2).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1283, 'hoạt động 36', '36(2).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1284, 'hoạt động 39', '39(2).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1285, 'hoạt động 42', '42(1).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1286, 'hoạt động 44', '44(1).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1287, 'hoạt động 46', '46(1).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1288, 'hoạt động 47', '47.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1289, 'hoạt động 48', '48.JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1290, 'hoạt động khoa hoa 1', 'IMG_0997.jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1291, 'hoạt động 2', '2(11).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1292, 'hoạt động 3', '3(9).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1293, 'hoạt động 4', '4(5).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1294, 'hoạt động 6', '6(5).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1295, 'hoạt động 7', '7(7).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1296, 'hoạt động 8', '8(5).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1297, 'hoạt động khoa hoa 2', '2(12).jpg', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1298, 'hoạt động 3', '3(10).jpg', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1299, 'hoạt động 8', '8.JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1300, 'hoạt động khoa hoa 3', '1(14).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1301, 'hoạt động bep au khoa 6', '5(6).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1302, 'hoạt động 6', '6(6).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1303, 'hoạt động 7', '7(8).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1304, 'hoạt động 8', '8(6).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1305, 'hoạt động 9', '9(5).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1306, 'hoạt động 10', '10(4).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1307, 'hoạt động 11', '11(4).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1308, 'hoạt động 12', '12(5).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1309, 'hoạt động bep au khoa 5', '15(4).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1310, 'hoạt động 16', '16(6).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1311, 'hoạt động 17', '17(3).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1312, 'hoạt động 18', '18(2).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1313, 'hoạt động 19', '19(4).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1314, 'hoạt động bep au khoa 4', '16.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1315, 'hoạt động 17', '17(1).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1316, 'hoạt động 18', '18.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1317, 'hoạt động 19', '19.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1318, 'hoạt động 20', '20(3).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1319, 'hoạt động 21', '21(4).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1320, 'hoạt động 22', '22.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1321, 'hoạt động 23', '23.JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1322, 'hoạt động 24', '24(4).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1323, 'hoạt động 25', '25(5).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1324, 'hoạt động barista khoa 2', '16(1).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1325, 'hoạt động 17', '17(2).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1326, 'hoạt động 18', '18(1).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1327, 'hoạt động 21', '21(1).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1328, 'hoạt động 24', '24.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1329, 'hoạt động 26', '26.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1330, 'hoạt động 28', '28.JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1331, 'hoạt động bep au khoa 6', '13(3).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1332, 'hoạt động 14', '14(5).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1333, 'hoạt động 15', '15(5).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1334, 'hoạt động 16', '16(7).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1335, 'hoạt động barista khoa 10', '1(15).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1336, 'hoạt động 2', '2(13).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1337, 'hoạt động 3', '3(11).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1338, 'hoạt động 4', '4(6).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1339, 'hoạt động 5', '5(7).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1340, 'hoạt động 6', '6(7).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1341, 'hoạt động 7', '7(9).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1342, 'hoạt động lop banh au khoa 2', '6(8).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1343, 'hoạt động 7', '7(10).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1344, 'hoạt động 8', '8(7).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1345, 'hoạt động 9', '9(6).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1346, 'hoạt động 10', '11(5).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1347, 'hoạt động 12', '12(6).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1348, 'hoạt động 13', '13(4).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1349, 'hoạt động 14', '14(6).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1350, 'hoạt động 15', '15(6).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1351, 'hoạt động lop quoc te khoa 1', '25(6).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1352, 'hoạt động 26', '26(4).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1353, 'hoạt động 27', '27(4).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1354, 'hoạt động 28', '28(4).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1355, 'hoạt động 30', '30(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1356, 'hoạt động 31', '31(4).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1357, 'hoạt động 32', '32(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1358, 'hoạt động 33', '33(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1359, 'hoạt động 34', '34(4).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1360, 'hoạt động 35', '35(4).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1361, 'hoạt động 36', '36(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1362, 'hoạt động 37', '37(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1363, 'hoạt động 38', '38(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1364, 'hoạt động 39', '39(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1365, 'hoạt động 40', '40(2).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1366, 'hoạt động 41', '41(1).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1367, 'hoạt động 42', '42(2).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1368, 'hoạt động 43', '43(2).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1369, 'hoạt động 44', '44(2).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'long', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1370, 'hoạt động bếp việt khóa 6', '5.jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (1371, 'hoạt động 1', '1(16).jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1372, 'hoạt động 2', '2(14).jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1373, 'hoạt động 3', '3(12).jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1374, 'hoạt động 4', '4(7).jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1375, 'hoạt động 5', '5(8).jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1376, 'hoạt động 6', '6(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1377, 'hoạt động 7', '7.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1378, 'hoạt động 9', '9.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1379, 'hoạt động 10', '10.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1380, 'hoạt động 11', '11(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1381, 'hoạt động 12', '12(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1382, 'hoạt động 13', '13.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1383, 'hoạt động 14', '14.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1384, 'hoạt động 0', '17(3).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1385, 'hoạt động 18', '18(2).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1386, 'hoạt động 19', '19(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1387, 'hoạt động 20', '20(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1388, 'hoạt động 22', '22(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1389, 'hoạt động 23', '23(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1390, 'hoạt động 24', '24(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1391, 'hoạt động 25', 'IMG_7267(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1392, 'hoạt động 26', 'IMG_7261(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1393, 'hoạt động 27', 'IMG_7236.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1394, 'hoạt động 28', 'IMG_7240.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1395, 'hoạt động 29', 'IMG_7228(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1396, 'hoạt động 30', 'IMG_7254(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1397, 'hoạt động bếp việt khóa 7', '1(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1398, 'hoạt động 2', '2(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1399, 'hoạt động 3', '3.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1400, 'hoạt động 4', '4.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1401, 'hoạt động 5', '5.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1402, 'hoạt động 8', '8(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1403, 'hoạt động 9', '9(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1404, 'hoạt động 10', '10(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1405, 'hoạt động 11', '11(2).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1406, 'hoạt động 12', '12(2).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1407, 'hoạt động 13', '13(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1408, 'hoạt động 14', '14(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1409, 'hoạt động 15', '15.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1410, 'hoạt động 16', '16(2).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1411, 'hoạt động 17', '17(4).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1412, 'hoạt động 18', '18(3).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1413, 'hoạt động 19', '19(5).jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1414, 'hoạt động 20', '20(4).jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1415, 'hoạt động 21', '21(5).jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1416, 'hoạt động 22', '22(3).jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1417, 'hoạt động 23', '23(4).jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1418, 'hoạt động 24', 'IMG_6282.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1419, 'hoạt động 25', 'IMG_6299(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1420, 'hoạt động 26', 'IMG_6294(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1421, 'hoạt động 27', 'IMG_9002(1).jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1422, 'hoạt động 28', 'IMG_8994.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1423, 'hoạt động 29', 'IMG_9011(1).jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1424, 'hoạt động 30', 'IMG_8955(1).jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1425, 'hoạt động bếp việt khóa 8', '48.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1426, 'hoạt động 1', '1(17).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1427, 'hoạt động 2', '2(15).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1428, 'hoạt động 3', '3(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1429, 'hoạt động 4', '4(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1430, 'hoạt động 5', '5(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1431, 'hoạt động 7', '7(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1432, 'hoạt động 9', '9(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1433, 'hoạt động 10', '10(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1434, 'hoạt động 11', '11(3).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1435, 'hoạt động 12', '12(3).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1436, 'hoạt động 14', '14(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1437, 'hoạt động 16', '16(3).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1438, 'hoạt động 18', '18(4).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1439, 'hoạt động 19', '19(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1440, 'hoạt động 21', '21(3).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1441, 'hoạt động 24', '24(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1442, 'hoạt động 26', '26(5).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1443, 'hoạt động 28', '28(5).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1444, 'hoạt động 30', '30(4).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1445, 'hoạt động 31', '31(5).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1446, 'hoạt động 36', '36(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1447, 'hoạt động 52', '52.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1448, 'hoạt động 54', '54.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1449, 'hoạt động 56', '56(1).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1450, 'hoạt động 58', '58.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1451, 'hoạt động 62', '62.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1452, 'hoạt động bếp việt khóa 9', '1(18).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1453, 'hoạt động 2', '2(16).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1454, 'hoạt động 3', '3(13).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1455, 'hoạt động 4', '4(8).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1456, 'hoạt động 5', '5(9).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1457, 'hoạt động 6', '6(2).JPG', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1458, 'hoạt động 7', '7(11).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1459, 'hoạt động 8', '8(8).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1460, 'hoạt động 10', '10(5).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1461, 'hoạt động 11', '11(6).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1462, 'hoạt động 12', '12(7).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1463, 'hoạt động 13', '13(5).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1464, 'hoạt động 15', '15(7).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1465, 'hoạt động 16', '16(8).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1466, 'hoạt động 17', '17(4).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1467, 'hoạt động 18', '18(3).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1468, 'hoạt động 19', '19(6).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1469, 'hoạt động 21', '21(6).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1470, 'hoạt động 22', '22(4).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1471, 'hoạt động 23', '23(5).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1472, 'hoạt động 25', '25(7).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1473, 'hoạt động 26', '26(6).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1474, 'hoạt động 29', '29(5).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1475, 'hoạt động 30', '30(5).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1476, 'hoạt động 33', '33(5).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1477, 'hoạt động 34', '34(5).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1478, 'hoạt động 37', '37(4).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1479, 'hoạt động bếp việt khóa 10', '1(19).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1480, 'hoạt động 2', '2(17).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1481, 'hoạt động 3', '3(14).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1482, 'hoạt động 4', '4(9).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1483, 'hoạt động 6', '6(9).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1484, 'hoạt động 7', '7(12).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1485, 'hoạt động 8', '8(9).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1486, 'hoạt động 9', '9(7).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1487, 'hoạt động 10', '10(6).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1488, 'hoạt động 11', '11(7).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1489, 'hoạt động 12', '12(8).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1490, 'hoạt động 13', '13(6).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1491, 'hoạt động 14', '14(7).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1492, 'hoạt động 15', '15(8).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1493, 'hoạt động 16', '16(9).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1494, 'hoạt động 17', '17(5).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1495, 'hoạt động 18', '18(4).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1496, 'hoạt động 19', '19(7).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1497, 'hoạt động bếp việt khóa 11', '1(2).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1498, 'hoạt động 3', '3(2).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1499, 'hoạt động 4', '4(2).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1500, 'hoạt động 6', '6(3).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1501, 'hoạt động 7', '7(2).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1502, 'hoạt động 8', '8(10).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1503, 'hoạt động 19', '9(8).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1504, 'hoạt động 11', '11(4).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1505, 'hoạt động 12', '12(4).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1506, 'hoạt động 13', '13(2).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1507, 'hoạt động 14', '14(3).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1508, 'hoạt động 15', '15(1).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1509, 'hoạt động 16', '16(4).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1510, 'hoạt động 17', '17(6).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1511, 'hoạt động 18', '18(5).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1512, 'hoạt động 20', '20(5).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1513, 'hoạt động 22', '22(5).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1514, 'hoạt động 24', '24(5).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1515, 'hoạt động 25', '25(8).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1516, 'hoạt động 26', '26(7).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1517, 'hoạt động 29', '29(6).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1518, 'hoạt động 30', '30(6).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1519, 'hoạt động 32', '32(4).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1520, 'hoạt động 33', '33(6).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1521, 'hoạt động 35', '35(5).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1522, 'hoạt động 36', '36(4).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1523, 'hoạt động 37', '37(5).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1524, 'hoạt động 39', '39(4).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1525, 'hoạt động 40', '40(3).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1526, 'hoạt động 42', '42(3).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1527, 'hoạt động 47', '47(1).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1528, 'hoạt động bếp việt khóa 12', '33(7).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1529, 'hoạt động 1', '1(3).JPG', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1530, 'hoạt động 2', '2(2).JPG', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1531, 'hoạt động 5', '5(10).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1532, 'hoạt động 6', '6(10).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1533, 'hoạt động 7', '7(13).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1534, 'hoạt động 8', '8(11).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1535, 'hoạt động 9', '9(9).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1536, 'hoạt động 10', '10(7).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1537, 'hoạt động 11', '11(8).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1538, 'hoạt động 12', '12(9).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1539, 'hoạt động 14', '14(8).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1540, 'hoạt động 15', '15(9).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1541, 'hoạt động 16', '16(10).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1542, 'hoạt động 17', '17(7).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1543, 'hoạt động 18', '18(6).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1544, 'hoạt động 19', '19(8).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1545, 'hoạt động 20', '20(6).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1546, 'hoạt động 22', '22(6).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1547, 'hoạt động 23', '23(6).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1548, 'hoạt động 24', '24(6).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1549, 'hoạt động 25', '25(1).JPG', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1550, 'hoạt động 26', '26(8).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1551, 'hoạt động 27', '27(5).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1552, 'hoạt động 28', '28(6).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1553, 'hoạt động 29', '29(7).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1554, 'hoạt động 30', '30(7).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1555, 'hoạt động 31', '31(6).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1556, 'hoạt động bếp việt khóa 13', '1(20).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1557, 'hoạt động 2', '2(18).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1558, 'hoạt động 3', '3(15).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1559, 'hoạt động 5', '5(11).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1560, 'hoạt động 6', '6(11).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1561, 'hoạt động 8', '8(12).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1562, 'hoạt động 9', '9(10).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1563, 'hoạt động 12', '12(10).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1564, 'hoạt động 14', '14(9).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1565, 'hoạt động 16', '16(11).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1566, 'hoạt động 17', '17(8).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1567, 'hoạt động 20', '20(7).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1568, 'hoạt động 22', '22(7).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1569, 'hoạt động 23', '23(7).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1570, 'hoạt động 25', '25(9).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1571, 'hoạt động 27', '27(6).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1572, 'hoạt động 29', '29(8).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1573, 'hoạt động 30', '30(8).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1574, 'hoạt động 31', '31(7).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1575, 'hoạt động 33', '33(8).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1576, 'hoạt động 34', '34(6).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1577, 'hoạt động 35', '35(6).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1578, 'hoạt động 36', '36(5).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1579, 'hoạt động 37', '37(6).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1580, 'hoạt động bếp việt khóa 14', '4(10).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1581, 'hoạt động 1', '2(19).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1582, 'hoạt động 2', '3(16).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1583, 'hoạt động 6', '6(12).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1584, 'hoạt động 7', '7(14).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1585, 'hoạt động 8', '8(13).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1586, 'hoạt động 9', '9(11).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1587, 'hoạt động 10', '10(8).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1588, 'hoạt động 12', '12(11).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1589, 'hoạt động 13', '13(7).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1590, 'hoạt động 14', '14(10).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1591, 'hoạt động 15', '15(10).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1592, 'hoạt động 16', '16(12).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1593, 'hoạt động 17', '17(9).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1594, 'hoạt động 18', '18(7).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1595, 'hoạt động 19', '19(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1596, 'hoạt động 20', '20(8).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1597, 'hoạt động 21', '21(7).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1598, 'hoạt động 22', '22(8).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1599, 'hoạt động 23', '23(8).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1600, 'hoạt động 24', '24(7).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1601, 'hoạt động 25', '25(10).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1602, 'hoạt động 27', '27(7).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1603, 'hoạt động 28', '28(7).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1604, 'hoạt động 29', 'IMG_1302.jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1605, 'hoạt động bếp việt khóa 15', '32(5).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1606, 'hoạt động 1', '1 (2).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1607, 'hoạt động 2', '2(3).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1608, 'hoạt động 3', '3(17).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1609, 'hoạt động 4', '4(11).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1610, 'hoạt động 5', '5(12).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1611, 'hoạt động 6', '6(13).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1612, 'hoạt động 8', '8(14).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1613, 'hoạt động 10', '10(9).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1614, 'hoạt động 11', '11(9).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1615, 'hoạt động 12', '12(12).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1616, 'hoạt động 13', '13(8).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1617, 'hoạt động 14', '14(11).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1618, 'hoạt động 15', '15(11).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1619, 'hoạt động 17', '17(10).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1620, 'hoạt động 18', '18(8).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1621, 'hoạt động 20', '20(9).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1622, 'hoạt động 21', '21(8).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1623, 'hoạt động 22', '22(9).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1624, 'hoạt động 24', '24(3).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1625, 'hoạt động 25', '25(2).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1626, 'hoạt động 26', '26(1).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1627, 'hoạt động 27', '27(1).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1628, 'hoạt động 28', '28(8).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1629, 'hoạt động 29', '29+.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1630, 'hoạt động 30', '30(9).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1631, 'hoạt động 31', '31(8).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1632, 'hoạt động bếp việt khóa 16', '8(15).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1633, 'hoạt động 1', '1(21).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1634, 'hoạt động 2', '3(18).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1635, 'hoạt động 4', '4(12).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1636, 'hoạt động 5', '5(13).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1637, 'hoạt động 6', '6(14).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1638, 'hoạt động 7', '7(15).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1639, 'hoạt động 9', '9(12).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1640, 'hoạt động 10', '10(10).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1641, 'hoạt động 11', '11(10).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1642, 'hoạt động bếp hoa khóa 1', '1(22).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1643, 'hoạt động 0', '0.jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1644, 'hoạt động 2', '2(20).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1645, 'hoạt động 3', '3(19).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1646, 'hoạt động 4', '4(13).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1647, 'hoạt động 6', '6(15).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1648, 'hoạt động 7', '7(16).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1649, 'hoạt động 8', '8(16).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1650, 'hoạt động bếp hoa khóa 2', '3(20).jpg', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1651, 'hoạt động 1', '1(23).jpg', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1652, 'hoạt động 2', '2(21).jpg', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1653, 'hoạt động 4', '4(3).JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1654, 'hoạt động 6', '6(4).JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1655, 'hoạt động 7', '7(3).JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1656, 'hoạt động 8', '8(2).JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1657, 'hoạt động 5', '5(2).JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1658, 'hoạt động bếp hoa khóa 3', '1 (2)(1).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1659, 'hoạt động 2', '2(22).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1660, 'hoạt động 3', '3(21).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1661, 'hoạt động 4', '4(14).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1662, 'hoạt động 5', '5(14).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1663, 'hoạt động 6', '6(16).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1664, 'hoạt động 7', '7(17).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1665, 'hoạt động 8', '8(17).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1666, 'hoạt động 9', '9(13).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1667, 'hoạt động 10', '10(11).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1668, 'hoạt động 11', '11(11).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1669, 'hoạt động 12', '12(13).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1670, 'hoạt động 13', '13(10).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1671, 'hoạt động bếp âu khóa 4', '1(24).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1672, 'hoạt động 2', '2(23).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1673, 'hoạt động 3', '3 (2).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1674, 'hoạt động 5', '5(3).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1675, 'hoạt động 6', '6(5).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1676, 'hoạt động 7', '7(4).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1677, 'hoạt động 8', '8(3).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1678, 'hoạt động 9', '9(3).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1679, 'hoạt động 10', '10(4).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1680, 'hoạt động 11', '11(5).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1681, 'hoạt động 12', '12(5).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1682, 'hoạt động 13', '13(11).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1683, 'hoạt động 14', '14(12).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1684, 'hoạt động 15', '15(12).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1685, 'hoạt động 16', '16(5).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1686, 'hoạt động 17', '17(5).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1687, 'hoạt động 19', '19(3).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1688, 'hoạt động 20', '20(10).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1689, 'hoạt động 21', '21(9).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1690, 'hoạt động 23', '23(2).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1691, 'hoạt động 24', '24(8).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1692, 'hoạt động 26', '26(9).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1693, 'hoạt động 29', '29(9).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1694, 'hoạt động 31', '31(9).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1695, 'hoạt động 34', '34(7).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1696, 'hoạt động 37', '37(7).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1697, 'hoạt động bếp âu khóa 5', '1(25).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1698, 'hoạt động 2', '2(24).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1699, 'hoạt động 3', '3(22).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1700, 'hoạt động 4', '4(15).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1701, 'hoạt động 5', '5(15).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1702, 'hoạt động 6', '6(17).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1703, 'hoạt động 7', '7(18).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1704, 'hoạt động 8', '8(18).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1705, 'hoạt động 9', '9(14).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1706, 'hoạt động 10', '10(12).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1707, 'hoạt động 10', '10(12).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1708, 'hoạt động 11', '11(12).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1709, 'hoạt động 12', '12(14).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1710, 'hoạt động 13', '13(12).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1711, 'hoạt động 14', '14(13).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1712, 'hoạt động 15', '15(13).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1713, 'hoạt động 16', '16(13).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1714, 'hoạt động 17', '17(11).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1715, 'hoạt động 18', '18(9).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1716, 'hoạt động 19', '19(10).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1717, 'hoạt động bếp âu khóa 6', '1(26).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1718, 'hoạt động 2', '2(25).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1719, 'hoạt động 3', '3(23).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1720, 'hoạt động 5', '5(16).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1721, 'hoạt động 6', '6(18).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1722, 'hoạt động 7', '7(19).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1723, 'hoạt động 8', '8(19).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1724, 'hoạt động 9', '9(15).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1725, 'hoạt động 10', '10(13).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1726, 'hoạt động 12', '12(5).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1727, 'hoạt động 13', '13(13).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1728, 'hoạt động 11', '11(13).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1729, 'hoạt động 14', '14(14).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1730, 'hoạt động 16', '16(14).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1731, 'hoạt động lớp barista khóa 1', '26(2).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1732, 'hoạt động 1', '1(4).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1733, 'hoạt động 3', '3(3).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1734, 'hoạt động 5', '5(4).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1735, 'hoạt động 9', '9(4).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1736, 'hoạt động 10', '10(5).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1737, 'hoạt động 11', '11(6).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1738, 'hoạt động 12', '12(6).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1739, 'hoạt động 13', '13(3).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1740, 'hoạt động 14', '14(4).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1741, 'hoạt động 15', '15(2).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1742, 'hoạt động 17', '17(6).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1743, 'hoạt động 18', '19(4).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1744, 'hoạt động 21', '21(4).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1745, 'hoạt động 22', '22(2).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1746, 'hoạt động 23', '23(3).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1747, 'hoạt động 24', '24(4).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1748, 'hoạt động lớp barista khóa 2', '28(1).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1749, 'hoạt động 1', '1(5).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1750, 'hoạt động 3', '3(4).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1751, 'hoạt động 4', '4(4).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1752, 'hoạt động 5', '5(5).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1753, 'hoạt động 7', '7(5).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1754, 'hoạt động 8', '8(4).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1755, 'hoạt động 9', '9(5).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1756, 'hoạt động 10', '10(6).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1757, 'hoạt động 11', '11(7).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1758, 'hoạt động 12', '12(8).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1759, 'hoạt động 13', '13(4).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1760, 'hoạt động 15', '15(3).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1761, 'hoạt động 16', '16(6).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1762, 'hoạt động 21', '21(5).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1763, 'hoạt động 24', '24(5).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1764, 'hoạt động 26', '26(3).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1765, 'hoạt động 22', '22(4).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1766, 'hoạt động 20', '20(2).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1767, 'hoạt động 17', '17(2).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1768, 'hoạt động lớp barista khóa 3', '7(20).jpg', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1769, 'hoạt động 1', '1(6).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1770, 'hoạt động 2', '2(4).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1771, 'hoạt động 3', '3(5).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1772, 'hoạt động 4', '4(5).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1773, 'hoạt động 5', '5(6).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1774, 'hoạt động 6', '6(6).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1775, 'hoạt động lớp barista khóa 4', '17(12).jpg', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1776, 'hoạt động 1', '1(7).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1777, 'hoạt động 3', '3(6).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1778, 'hoạt động 4', '4(6).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1779, 'hoạt động 5', '5(7).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1780, 'hoạt động 7', '7(6).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1781, 'hoạt động 1', '1.jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1782, 'hoạt động 2', '2.jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1783, 'hoạt động 3', '3.jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1784, 'hoạt động 4', '4.jpg', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1785, 'hoạt động 6', '6(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1786, 'hoạt động 6', '6(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1787, 'hoạt động 7', '7.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1788, 'hoạt động 9', '9.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1789, 'hoạt động 10', '10.JPG', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1790, 'hoạt động 11', '11(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1791, 'hoạt động 12', '12(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1792, 'hoạt động 13', '13.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1793, 'hoạt động 17', '17(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1794, 'hoạt động 18', '18.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1795, 'hoạt động 19', '19.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1796, 'hoạt động 20', '20(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1797, 'hoạt động 22', '22.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1798, 'hoạt động 23', '23.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1799, 'hoạt động 24', '24.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1800, 'hoạt động 27', '27(1).JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (1801, 'hoạt động 28', '28.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1802, 'hoạt động 31', '31.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1803, 'hoạt động 33', '33.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1804, 'hoạt động 34', '34.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1805, 'hoạt động 35', '35.JPG', ',51,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1806, 'hoạt động bếp việt khóa 7', '1.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1807, 'hoạt động 2', '2(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1808, 'hoạt động 3', '3.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1809, 'hoạt động 5', '5.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1810, 'hoạt động 7', '5.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1811, 'hoạt động 8', '8.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1812, 'hoạt động 9', '9(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1813, 'hoạt động 11', '11(2).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1814, 'hoạt động 10', '10(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1815, 'hoạt động 12', '12(2).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1816, 'hoạt động 13', '13(1).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1817, 'hoạt động 14', '14.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1818, 'hoạt động 15', '15.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1819, 'hoạt động 16', '16.JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1820, 'hoạt động 17', '17(2).JPG', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1821, 'hoạt động 19', '19.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1822, 'hoạt động 20', '20.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1823, 'hoạt động 21', '21.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1824, 'hoạt động 23', '23.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1825, 'hoạt động 22', '22.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1826, 'hoạt động 27', '27.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1827, 'hoạt động 26', '26.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1828, 'hoạt động 28', '28.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1829, 'hoạt động 25', '25.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1830, 'hoạt động 29', '29.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1831, 'hoạt động 24', '24.jpg', ',62,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1832, 'hoạt động bếp việt khóa 8', '40.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1833, 'hoạt động 1', '1(1).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1834, 'hoạt động 2', '2(1).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1835, 'hoạt động 3', '3(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1836, 'hoạt động 4', '4.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1837, 'hoạt động 5', '5(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1838, 'hoạt động 7', '7(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1839, 'hoạt động 9', '9(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1840, 'hoạt động 10', '10(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1841, 'hoạt động 11', '11(3).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1842, 'hoạt động 13', '13(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1843, 'hoạt động 14', '14(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1844, 'hoạt động 16', '16(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1845, 'hoạt động 18', '18(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1846, 'hoạt động 19', '19(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1847, 'hoạt động 20', '20(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1848, 'hoạt động 21', '21(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1849, 'hoạt động 22', '22(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (1850, 'hoạt động 23', '23(1).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1851, 'hoạt động 24', '24(1).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1852, 'hoạt động 26', '26(1).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1853, 'hoạt động 27', '27(2).JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1854, 'hoạt động 37', '37.JPG', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1855, 'hoạt động 28', '28(1).jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1856, 'hoạt động 30', '30.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1857, 'hoạt động 31', '31.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1858, 'hoạt động 32', '32.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1859, 'hoạt động 34', '34.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1860, 'hoạt động 54', '54.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1861, 'hoạt động 52', '52.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1862, 'hoạt động 56', '56.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1863, 'hoạt động 58', '58.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1864, 'hoạt động 62', '62.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1865, 'hoạt động 68', '68.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1866, 'hoạt động 35', '35.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1867, 'hoạt động 45', '45.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1868, 'hoạt động 38', '38.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1869, 'hoạt động 73', '73.jpg', ',36,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1870, 'hoạt động bếp việt khóa 9', '1(3).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1871, 'hoạt động 2', '2(2).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1872, 'hoạt động 3', '3(1).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1873, 'hoạt động 4', '4(1).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1874, 'hoạt động 5', '5(1).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1875, 'hoạt động 6', '6(2).JPG', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1876, 'hoạt động 7', '7.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1877, 'hoạt động 9', '9.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1878, 'hoạt động 11', '11.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1879, 'hoạt động 12', '12.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1880, 'hoạt động 13', '13.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1881, 'hoạt động 15', '15.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1882, 'hoạt động 16', '16.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1883, 'hoạt động 17', '17.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1884, 'hoạt động 18', '18.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1885, 'hoạt động 19', '19(1).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1886, 'hoạt động 20', '20(1).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1887, 'hoạt động 21', '21(1).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1888, 'hoạt động 23', '23(2).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1889, 'hoạt động 25', '25(1).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1890, 'hoạt động 26', '26(2).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1891, 'hoạt động 28', '28(2).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1892, 'hoạt động 30', '30(1).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1893, 'hoạt động 35', '35(1).jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1894, 'hoạt động 36', '36.jpg', ',16,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1895, 'hoạt động bếp việt khóa 10', '12(1).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1896, 'hoạt động 1', '1(4).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1897, 'hoạt động 2', '2(3).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1898, 'hoạt động 3', '3(2).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1899, 'hoạt động 4', '4(2).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1900, 'hoạt động 6', '6.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1901, 'hoạt động 7', '7(1).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1902, 'hoạt động 9', '9(1).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1903, 'hoạt động 8', '8.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1904, 'hoạt động 10', '10.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1905, 'hoạt động 11', '11(1).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1906, 'hoạt động 13', '13(1).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1907, 'hoạt động 14', '14.jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1908, 'hoạt động 16', '16(1).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1909, 'hoạt động 18', '18(1).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1910, 'hoạt động 19', '19(2).jpg', ',77,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1911, 'hoạt động bếp việt khóa 11', '21(2).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1912, 'hoạt động 3', '3(2).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1913, 'hoạt động 4', '4(1).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1914, 'hoạt động 6', '6(3).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1915, 'hoạt động 7', '7(3).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1916, 'hoạt động 8', '8(1).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1917, 'hoạt động 10', '10(3).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1918, 'hoạt động 12', '12(3).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1919, 'hoạt động 13', '13(4).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (1920, 'hoạt động 15', '15(1).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1921, 'hoạt động 16', '16 (2).JPG', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1922, 'hoạt động 17', '17(1).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1923, 'hoạt động 18', '18(2).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1924, 'hoạt động 19', '19(3).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1925, 'hoạt động 20', '20(2).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1926, 'hoạt động 24', '24(1).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1927, 'hoạt động 25', '25(2).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1928, 'hoạt động 26', '26(3).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1929, 'hoạt động 28', '28(3).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1930, 'hoạt động 29', '29(1).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1931, 'hoạt động 30', '30(2).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1932, 'hoạt động 32', '32(1).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1933, 'hoạt động 33', '33.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1934, 'hoạt động 35', '35(2).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1935, 'hoạt động 36', '36(1).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1936, 'hoạt động 37', '37.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1937, 'hoạt động 39', '39.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1938, 'hoạt động 40', '40(1).jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1939, 'hoạt động 42', '42.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1940, 'hoạt động 47', '47.jpg', ',78,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1941, 'hoạt động bếp việt khóa 12', '33(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1942, 'hoạt động 1', '1(1).JPG', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1943, 'hoạt động 2', '2(2).JPG', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1944, 'hoạt động 3', '3(3).JPG', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1945, 'hoạt động 5', '5(2).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1946, 'hoạt động 6', '6(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1947, 'hoạt động 7', '7(2).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1948, 'hoạt động 8', '8(2).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1949, 'hoạt động 9', '9(2).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1950, 'hoạt động 10', '10(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1951, 'hoạt động 11', '11(2).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1952, 'hoạt động 12', '12(2).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1953, 'hoạt động 14', '14(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1954, 'hoạt động 15', '15(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1955, 'hoạt động 16', '16(2).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1956, 'hoạt động 17', '17(2).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1957, 'hoạt động 18', '18(4).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1958, 'hoạt động 19', '19(4).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1959, 'hoạt động 20', '20(3).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1960, 'hoạt động 21', '21(3).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1961, 'hoạt động 22', '22(1).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1962, 'hoạt động 23', '23(3).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1963, 'hoạt động 25', '25(1).JPG', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1964, 'hoạt động 26', '26(4).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1965, 'hoạt động 27', '27(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1966, 'hoạt động 28', '28(4).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1967, 'hoạt động 30', '30(3).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1968, 'hoạt động 31', '31(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1969, 'hoạt động 34', '34(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1970, 'hoạt động 36', '36(2).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1971, 'hoạt động 40', '40(2).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1972, 'hoạt động 42', '42(1).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1973, 'hoạt động 46', '46.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1974, 'hoạt động 47', '47(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1975, 'hoạt động 44', '44.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1976, 'hoạt động 45', '45(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1977, 'hoạt động 50', '50.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1978, 'hoạt động 52', '52(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1979, 'hoạt động 55', '55.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1980, 'hoạt động 54', '54(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1981, 'hoạt động 59', '59.jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1982, 'hoạt động 58', '58(1).jpg', ',79,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1983, 'hoạt động bếp việt khóa 13', '17(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1984, 'hoạt động 1', '1(5).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1985, 'hoạt động 2', '2(4).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1986, 'hoạt động 3', '3(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1987, 'hoạt động 5', '5(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1988, 'hoạt động 6', '6(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1989, 'hoạt động 8', '8(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1990, 'hoạt động 9', '9(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1991, 'hoạt động 12', '12(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1992, 'hoạt động 13', '13(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1993, 'hoạt động 14', '14(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1994, 'hoạt động 16', '16(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1995, 'hoạt động 17', '18(5).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1996, 'hoạt động 21', '21(4).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1997, 'hoạt động 24', '24(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1998, 'hoạt động 25', '25(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (1999, 'hoạt động 26', '26(5).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2000, 'hoạt động 27', '27(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2001, 'hoạt động 29', '29(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2002, 'hoạt động 30', '30(4).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2003, 'hoạt động 31', '31(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2004, 'hoạt động 33', '33(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2005, 'hoạt động 34', '34(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2006, 'hoạt động 35', '35(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2007, 'hoạt động 36', '36(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2008, 'hoạt động 37', '37(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2009, 'hoạt động 39', '39(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2010, 'hoạt động 40', '40(3).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2011, 'hoạt động 42', '42(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2012, 'hoạt động 43', '43.jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2013, 'hoạt động 44', '44(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2014, 'hoạt động 45', '45(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2015, 'hoạt động 47', '47(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2016, 'hoạt động 48', '48.jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2017, 'hoạt động 49', '49.jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2018, 'hoạt động 50', '50(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2019, 'hoạt động 51', '51.jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2020, 'hoạt động 53', '53.jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2021, 'hoạt động 54', '54(2).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2022, 'hoạt động 55', '55(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2023, 'hoạt động 56', '56(1).jpg', ',143,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2024, 'hoạt động bếp việt khóa 14', '5(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2025, 'hoạt động 2', '2(5).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2026, 'hoạt động 3', '3(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2027, 'hoạt động 6', '6(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2028, 'hoạt động 7', '7(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2029, 'hoạt động 8', '8(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2030, 'hoạt động 9', '9(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2031, 'hoạt động 10', '10(2).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2032, 'hoạt động 12', '12(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2033, 'hoạt động 13', '13(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2034, 'hoạt động 14', '14(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2035, 'hoạt động 15', '15(2).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2036, 'hoạt động 16', '16(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2037, 'hoạt động 17', '17(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2038, 'hoạt động 18', '18(6).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2039, 'hoạt động 19', '19(5).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2040, 'hoạt động 20', '20(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2041, 'hoạt động 22', '22(2).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2042, 'hoạt động 21', '21(5).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2043, 'hoạt động 24', '24(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2044, 'hoạt động 23', '23(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2045, 'hoạt động 35', '25(4).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2046, 'hoạt động 28', '28(5).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2047, 'hoạt động 26', '26(6).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2048, 'hoạt động 32', '32 (3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2049, 'hoạt động 31', '31(3).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2050, 'hoạt động 30', '30(5).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2051, 'hoạt động bếp việt khóa 15', '1 (2).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2052, 'hoạt động 2', '2(3).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2053, 'hoạt động 3', '3(5).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2054, 'hoạt động 4', '4(3).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2055, 'hoạt động 5', '5(5).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2056, 'hoạt động 6', '6(4).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2057, 'hoạt động 7', '7(4).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2058, 'hoạt động 8', '8(5).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2059, 'hoạt động 10', '10(3).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2060, 'hoạt động 11', '11(3).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2061, 'hoạt động 12', '12(5).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2062, 'hoạt động 13', '13(4).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2063, 'hoạt động 14', '14(4).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2064, 'hoạt động 15', '15(3).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2065, 'hoạt động 19', '19(6).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2066, 'hoạt động 17', '17(5).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2067, 'hoạt động 18', '18(7).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2068, 'hoạt động 20', '20(5).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2069, 'hoạt động 21', '21(6).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2070, 'hoạt động 22', '22(3).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2071, 'hoạt động 25', '25(2).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2072, 'hoạt động 24', '24(2).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2073, 'hoạt động 26', '26.JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2074, 'hoạt động 27', '27(3).JPG', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2075, 'hoạt động 28', '28(6).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2076, 'hoạt động 29', '29+.jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2077, 'hoạt động 31', '31(4).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2078, 'hoạt động bếp việt khóa 16', '1(6).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2079, 'hoạt động 3', '3(6).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2080, 'hoạt động 4', '4(4).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2081, 'hoạt động 5', '5(6).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2082, 'hoạt động 6', '6(5).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2083, 'hoạt động 7', '7(5).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2084, 'hoạt động 9', '9(5).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2085, 'hoạt động 10', '10(4).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2086, 'hoạt động 11', '11(4).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2087, 'hoạt động bếp hoa khóa 1', '4(5).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2088, 'hoạt động 1', '1(7).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2089, 'hoạt động 2 ', '2(6).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2090, 'hoạt động 3', '3(7).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2091, 'hoạt động 0', '0.jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2092, 'hoạt động 6', '6(6).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2093, 'hoạt động 7', '7(6).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2094, 'hoạt động 8', '8(6).jpg', ',122,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2095, 'hoạt động bếp hoa khóa 2', '3(8).jpg', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2096, 'hoạt động 1', '1(8).jpg', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2097, 'hoạt động 2', '2(7).jpg', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2098, 'hoạt động 4', '4(2).JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2099, 'hoạt động 6', '6(4).JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2100, 'hoạt động 8', '8(1).JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2101, 'hoạt động 7', '7(4).JPG', ',95,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2102, 'hoạt động bếp hoa khóa 3', '10(5).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2103, 'hoạt động 1', '1 (2)(1).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2104, 'hoạt động 2', '2(8).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2105, 'hoạt động 3', '3(9).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2106, 'hoạt động 4', '4(6).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2107, 'hoạt động 5', '5(7).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2108, 'hoạt động 6', '6(7).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2109, 'hoạt động 7', '7(7).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2110, 'hoạt động 8', '8(7).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2111, 'hoạt động 9', '9(6).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2112, 'hoạt động 11', '11(5).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2113, 'hoạt động 12', '12(6).jpg', ',121,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2114, 'hoạt động bep au khoa 6', '1(9).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2115, 'hoạt động 2', '2(9).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2116, 'hoạt động 3', '3(10).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2117, 'hoạt động 5', '5(9).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2118, 'hoạt động 6', '6(8).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2119, 'hoạt động 7', '7(8).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2120, 'hoạt động 8', '8(8).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2121, 'hoạt động 9', '9(7).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2122, 'hoạt động 10', '10(6).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2123, 'hoạt động 12', '12(7).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2124, 'hoạt động 14', '14(5).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2125, 'hoạt động 13', '13(5).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2126, 'hoạt động 16', '16(5).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2127, 'hoạt động 17', '17(6).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2128, 'hoạt động bep au khoa 5', '1(10).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2129, 'hoạt động 2', '2(10).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2130, 'hoạt động 3', '3(11).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2131, 'hoạt động 4', '4(7).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2132, 'hoạt động 5', '5(10).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2133, 'hoạt động 6', '6(9).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2134, 'hoạt động 7', '7(9).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2135, 'hoạt động 8', '8(9).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2136, 'hoạt động 9', '9(8).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2137, 'hoạt động 10', '10(7).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2138, 'hoạt động 11', '11(6).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2139, 'hoạt động 12', '12(8).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2140, 'hoạt động 13', '13(6).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2141, 'hoạt động 14', '14(6).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2142, 'hoạt động 15', '15(4).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2143, 'hoạt động 16', '16(6).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2144, 'hoạt động 18', '18(8).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2145, 'hoạt động 17', '17(7).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2146, 'hoạt động 19', '19(7).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2147, 'hoạt động bep au khoa 4', '1(11).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2148, 'hoạt động 2', '2(11).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2149, 'hoạt động 3', '3 (2).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2150, 'hoạt động 5', '5(3).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2151, 'hoạt động 6', '6(5).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2152, 'hoạt động 7', '7(5).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2153, 'hoạt động 8', '8(2).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2154, 'hoạt động 9', '9(3).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2155, 'hoạt động 10', '10(4).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2156, 'hoạt động 11', '11(4).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2157, 'hoạt động 12', '12(4).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2158, 'hoạt động 15', '15(5).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2159, 'hoạt động 13', '13(7).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2160, 'hoạt động 16', '16(2).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2161, 'hoạt động 17', '17(3).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2162, 'hoạt động 19', '19(2).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2163, 'hoạt động 18', '18(2).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2164, 'hoạt động 20', '20(6).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2165, 'hoạt động 22', '22(1).JPG', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2166, 'hoạt động 21', '21(7).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2167, 'hoạt động 24', '24(4).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2168, 'hoạt động 29', '29(3).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2169, 'hoạt động 26', '26(7).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2170, 'hoạt động 31', '31(5).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2171, 'hoạt động 34', '34(3).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2172, 'hoạt động 37', '37(2).jpg', ',80,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2173, 'hoạt động lớp barista khóa 1', '26(1).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2174, 'hoạt động 1', '1(2).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2175, 'hoạt động 10', '10(5).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2176, 'hoạt động 3', '3(4).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2177, 'hoạt động 5', '5(4).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2178, 'hoạt động 11', '11(5).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2179, 'hoạt động 12', '12(5).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2180, 'hoạt động 13', '13(5).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2181, 'hoạt động 15', '15(2).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2182, 'hoạt động 14', '14(2).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2183, 'hoạt động 17', '17(4).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2184, 'hoạt động 19', '19(3).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2185, 'hoạt động 21', '21(2).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2186, 'hoạt động 22', '22(2).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2187, 'hoạt động 27', '27(4).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2188, 'hoạt động 23', '23(1).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2189, 'hoạt động 28', 'IMG_3680.JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2190, 'hoạt động lớp barista khóa 2', '28(1).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2191, 'hoạt động 1', '1(3).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2192, 'hoạt động 3', '3(5).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2193, 'hoạt động 4', '4(3).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2194, 'hoạt động 5', '5(5).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2195, 'hoạt động 7', '7(6).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2196, 'hoạt động 8', '8(3).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2197, 'hoạt động 9', '9(4).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2198, 'hoạt động 10', '10(6).JPG', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2199, 'hoạt động 12', '12(6).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2200, 'hoạt động 11', '11(6).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2201, 'hoạt động 15', '15(3).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2202, 'hoạt động 16', '16(4).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2203, 'hoạt động 18', '18(3).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2204, 'hoạt động 21', '21(3).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2205, 'hoạt động 26', '26(2).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2206, 'hoạt động 20', '20(3).JPG', ',83,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2207, 'hoạt động lớp barista khóa 3', '7(10).jpg', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2208, 'hoạt động 1', '1(4).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2209, 'hoạt động 2', '2(4).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2210, 'hoạt động 3', '3(6).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2211, 'hoạt động 5', '5(6).JPG', ',82,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (2212, 'hoạt động 4', '4(4).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2213, 'hoạt động 6', '6(6).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2214, 'hoạt động 5', '5(7).JPG', ',86,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2215, 'hoạt động lớp barista khóa 4', '17(8).jpg', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2216, 'hoạt động 1', '1(5).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2217, 'hoạt động 3', '3(7).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2218, 'hoạt động 5', '5(8).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2219, 'hoạt động 6', '6(7).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2220, 'hoạt động 7', '7(7).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2221, 'hoạt động 4', '4(5).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2222, 'hoạt động 8', '8(4).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2223, 'hoạt động 9', '9(5).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2224, 'hoạt động 10', '10(7).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2225, 'hoạt động 12', '12(7).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2226, 'hoạt động 11', '11(7).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2227, 'hoạt động 13', '13(6).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2228, 'hoạt động 15', '15(4).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2229, 'hoạt động 14', '14(3).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2230, 'hoạt động 16', '16(5).JPG', ',85,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2231, 'hoạt động lớp barista khóa 5', '1(12).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2232, 'hoạt động 2', '2(12).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2233, 'hoạt động 5', '5(9).JPG', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2234, 'hoạt động 4', '4(8).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2235, 'hoạt động 6', '6(10).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2236, 'hoạt động 8', '8(10).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2237, 'hoạt động 7', '7(11).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2238, 'hoạt động 9', '9(9).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2239, 'hoạt động 10', '10(8).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (2240, 'hoạt động 10', '10(8).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2241, 'hoạt động 12', '12(9).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2242, 'hoạt động 13', '13(9).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2243, 'hoạt động 14', '14(7).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2244, 'hoạt động 15', '15(6).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2245, 'hoạt động 16', '16(7).jpg', ',84,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2246, 'hoạt động lớp barista khóa 6', 'IMG_6388.jpg', ',87,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2247, 'hoạt động 1', 'PHA CHẾ KHÓA 6.jpg', ',87,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2248, 'hoạt động lớp barista khóa 7', '30(6).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2249, 'hoạt động 26', '26(8).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2250, 'hoạt động 25', '25(5).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2251, 'hoạt động 23', '23(5).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2252, 'hoạt động 20', '20(7).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2253, 'hoạt động 21', '21(8).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2254, 'hoạt động 0', '0(1).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2255, 'hoạt động 1', '1(13).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2256, 'hoạt động 2', '2(13).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2257, 'hoạt động 4', '4(9).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2258, 'hoạt động 5', '5(11).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2259, 'hoạt động 7', '7(12).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2260, 'hoạt động 8', '8(11).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2261, 'hoạt động 9', '9(10).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2262, 'hoạt động 12', '12(10).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2263, 'hoạt động 13', '13(10).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2264, 'hoạt động 14', '14(8).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2265, 'hoạt động 15', '15(7).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2266, 'hoạt động 17', '17(9).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2267, 'hoạt động 27', '27(3).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2268, 'hoạt động 31', '31(6).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2269, 'hoạt động 32', '32(2).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2270, 'hoạt động 33', '33(3).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2271, 'hoạt động 34', '34(4).jpg', ',88,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2272, 'hoạt động lớp barista khóa 8', '10(9).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2273, 'hoạt động 1', '4(10).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2274, 'hoạt động 2', '2(14).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2275, 'hoạt động 6', '6(11).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2276, 'hoạt động 5', '5(12).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2277, 'hoạt động 7', '7(13).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2278, 'hoạt động 11', '11(7).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2279, 'hoạt động ', '12(11).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (2280, 'hoạt động 12', '12(11).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2281, 'hoạt động 13', '13(11).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2282, 'hoạt động 15', '15(8).jpg', ',89,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2283, 'hoạt động lớp barista khóa 9', '22(4).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2284, 'hoạt động 1', '1(14).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2285, 'hoạt động 4', '4(11).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2286, 'hoạt động 5', '5(13).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2287, 'hoạt động 6', '6(12).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2288, 'hoạt động 7', '7(14).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2289, 'hoạt động 9', '9(11).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2290, 'hoạt động 8', '8(12).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2291, 'hoạt động 11', '11(8).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2292, 'hoạt động 12', '12(12).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2293, 'hoạt động 14', '14(9).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2294, 'hoạt động 15', '15(9).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2295, 'hoạt động 16', '16(8).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2296, 'hoạt động 17', '17(10).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2297, 'hoạt động 18', '18(9).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2298, 'hoạt động 19', '19(8).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2299, 'hoạt động 24', '24(5).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2300, 'hoạt động 21', '21(9).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2301, 'hoạt động 27', '27(4).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2302, 'hoạt động 25', '25(6).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2303, 'hoạt động 30', '30(7).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2304, 'hoạt động 31', '31(7).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2305, 'hoạt động 35', '35(4).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2306, 'hoạt động 37', '37(3).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2307, 'hoạt động 38', '38(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2308, 'hoạt động 39', '39(2).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2309, 'hoạt động 41', '41(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2310, 'hoạt động 43', '43(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2311, 'hoạt động 44', '44(2).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2312, 'hoạt động 45', '45(3).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2313, 'hoạt động 47', '47(3).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2314, 'hoạt động 49', '49(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2315, 'hoạt động 50', '50(2).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2316, 'hoạt động 51', '51(1).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2317, 'hoạt động 52', '52(2).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2318, 'hoạt động 55', '55(2).jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2319, 'hoạt động 60', '60.jpg', ',90,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2320, 'hoạt động lớp barista khóa 10', '1(15).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2321, 'hoạt động 2', '2(15).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2322, 'hoạt động 4', '4(12).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2323, 'hoạt động 5', '5(14).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2324, 'hoạt động 6', '6(13).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2325, 'hoạt động 7', '7(15).jpg', ',156,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2326, 'hoạt động lớp học nấu món việt', 'IMG_0012.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2327, 'hoạt động 1', '1(16).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2328, 'hoạt động 4', '4(13).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2329, 'hoạt động 5', '5(15).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2330, 'hoạt động 6', '6(14).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2331, 'hoạt động 7', '7(16).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2332, 'hoạt động 8', '8(13).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2333, 'hoạt động 10', '10(10).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2334, 'hoạt động 11', '11(9).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2335, 'hoạt động 12', '12(13).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2336, 'hoạt động  13', '13(12).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2337, 'hoạt động 15', '15(10).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2338, 'hoạt động 16', '16(9).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2339, 'hoạt động 21', '21(10).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2340, 'hoạt động 41', 'IMG_2427.jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2341, 'hoạt động 19', '19(9).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2342, 'hoạt động 20', '20(8).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2343, 'hoạt động 23', '23(6).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2344, 'hoạt động 26', '26(9).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2345, 'hoạt động 27', '27(5).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2346, 'hoạt động 48', '48(1).jpg', ',127,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2347, 'hoạt động lớp học nấu món nhật', '5(16).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2348, 'hoạt động  1', '1(17).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2349, 'hoạt động  2', '2(16).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2350, 'hoạt động 3', '3 (2).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2351, 'hoạt động 6', '6(15).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2352, 'hoạt động 4', '4(14).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2353, 'hoạt động 8', '8(14).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2354, 'hoạt động 7', '7(17).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2355, 'hoạt động 9', '9(12).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2356, 'hoạt động 10', '10(11).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2357, 'hoạt động 121', '121.jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2358, 'hoạt động 14', '14(10).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2359, 'hoạt động 16', '16(10).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2360, 'hoạt động 15', '15(11).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2361, 'hoạt động 13', '13(13).jpg', ',128,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2362, 'hoạt động lớp học làm bánh', '2(17).jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2363, 'hoạt động 3', '3(14).jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2364, 'hoạt động 5', '5(17).jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2365, 'hoạt động 6', '6(16).jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2366, 'hoạt động 7', '7(18).jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2367, 'hoạt động 9', '9(13).jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2368, 'hoạt động 8', '8(15).jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2369, 'hoạt động 10', '10(12).jpg', ',130,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2370, 'hoạt động lớp học pha chế', '2(5).JPG', ',129,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2371, 'hoạt động 4', '4(15).jpg', ',129,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2372, 'hoạt động 3', '3(8).JPG', ',129,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2373, 'hoạt động lớp bánh âu', '4(16).jpg', ',124,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2374, 'hoạt động 2', '2(18).jpg', ',124,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2375, 'hoạt động 3', '3(15).jpg', ',124,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2376, 'hoạt động lớp bánh âu khóa 2', '15(12).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2377, 'hoạt động 1', '1(18).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2378, 'hoạt động 4', '4(17).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2379, 'hoạt động 3', '3(16).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2380, 'hoạt động 2', '2(19).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2381, 'hoạt động 5', '5(18).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2382, 'hoạt động 6', '6(17).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2383, 'hoạt động 7', '7(19).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2384, 'hoạt động 8', '8(16).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2385, 'hoạt động 9', '9(14).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2386, 'hoạt động 10', '10(13).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2387, 'hoạt động 13', '13(14).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2388, 'hoạt động 12', '12(14).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2389, 'hoạt động 14', '14(11).jpg', ',125,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2390, 'hoạt động 11', '11(10).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2391, 'hoạt động lớp quốc tế khóa 1', '1(19).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2392, 'hoạt động 0', '0(2).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2393, 'hoạt động 4', '4(18).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2394, 'hoạt động 3', '3(17).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2395, 'hoạt động 5', '5(19).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2396, 'hoạt động 10', '10(14).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2397, 'hoạt động 12', '12(15).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2398, 'hoạt động 16', '16(11).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2399, 'hoạt động 17', '17(11).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2400, 'hoạt động 21', '21(11).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2401, 'hoạt động 19', '19(10).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2402, 'hoạt động 22', '22(5).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2403, 'hoạt động 24', '24(6).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2404, 'hoạt động 26', '26(10).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2405, 'hoạt động 28', '28(7).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2406, 'hoạt động 32', '32(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2407, 'hoạt động 30', '30(8).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2408, 'hoạt động 31', '31(8).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2409, 'hoạt động 34', '34(5).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2410, 'hoạt động 35', '35(6).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2411, 'hoạt động 38', '38(2).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2412, 'hoạt động 39', '39(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2413, 'hoạt động 41', '41(2).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2414, 'hoạt động 42', '42(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2415, 'hoạt động 44', '44(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2416, 'hoạt động 40', '40(4).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2417, 'hoạt động lớp quốc tế khóa 2', '2(20).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2418, 'hoạt động  4', '4(19).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2419, 'hoạt động 5', '5(20).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2420, 'hoạt động 6', '6(18).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2421, 'hoạt động 7', '7(20).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2422, 'hoạt động lớp bếp việt khóa 1', '4(20).jpg', ',155,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (2423, 'hoạt động lớp bếp việt khóa 1', '5(21).jpg', ',155,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (2424, 'hoạt động lớp bếp việt khóa 1', '5(22).jpg', ',155,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (2425, 'hoạt động lớp bếp việt khóa 1 ĐÀ NẴNG', '5(21).jpg', ',155,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2426, 'hoạt động 3', '3(18).jpg', ',99,155,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2427, 'hoạt động 1', '1(20).jpg', ',151,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (2428, 'rain bow', 'rain bow 5 copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2429, 'rain bow 1', 'rain bow 4 copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2430, 'rain bow tổng hợp', 'rain bow tong hop 1 copy.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2431, 'dâu dằm', 'dâu dằm.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2432, 'cà chua dằm', 'cà chua dằm.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2433, 'mãng cầu dằm', 'mãng cầu dằm.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2434, 'thanh long ruột đỏ dằm', 'thanh long ruột đỏ dằm.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2435, 'xoài dằm', 'xoài dằm.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2436, 'nước ép cam và cà rốt', 'nước ép cà rốt và cam.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2437, 'cá chẽm sốt tương', 'cá chẽm sốt tương.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2438, 'cơm tấm gà chiên', 'cơm tấm gà chiên.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2439, 'cơm chiên thái cực', 'cơm chiên thái cực.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2440, 'hoạt động quốc tế khóa 2', '10(15).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2441, 'hoạt động 8', '8(17).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2442, 'hoạt động 9', '9(15).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2443, 'hoạt động 11', '11(11).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2444, 'hoạt động  12', '12(16).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2445, 'hoạt động 14', '14(12).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2446, 'hoạt động 15', '15(13).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2447, 'hoạt động 17', '17(12).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2448, 'hoạt động 18', '18(10).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2449, 'hoạt động 23', '23(7).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2450, 'hoạt động 21', '21(12).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2451, 'hoạt động 26', '26(11).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2452, 'hoạt động 20', '20(9).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2453, 'hoạt động 25', '25(7).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2454, 'hoạt động 29', '29(4).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2455, 'hoạt động 28', '28(8).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2456, 'hoạt động 31', '31(9).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2457, 'hoạt động 30', '30(9).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2458, 'hoạt động 33', '33(4).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2459, 'hoạt động 36', '36(4).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2460, 'hoạt động 37', '37(4).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2461, 'hoạt động 38', '38(3).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2462, 'hoạt động 41', '41(3).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2463, 'hoạt động 42', '42(4).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2464, 'hoạt động 43', '43(2).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2465, 'hoạt động 44', '44(4).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2466, 'hoạt động 46', '46(1).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2467, 'hoạt động 48', '48(2).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2468, 'hoạt động 47', '47(4).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2469, 'hoạt động 49', '49(2).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2470, 'hoạt động 51', '51(2).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2471, 'hoạt động 52', '52(3).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2472, 'hoạt động 54', '54(3).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2473, 'hoạt động 56', '56(2).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2474, 'hoạt động 1', '1(20).jpg', ',155,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (2475, 'hoạt động khóa 1 đà nẵng', '1(20).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2476, 'hoạt động 4', '4(21).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2477, 'hoạt động 2', '2(21).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2478, 'hoạt động 3', '3(19).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2479, 'hoạt động 5', '5(22).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2480, 'hoạt động khóa 2 đà nẵng', '2(22).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2481, 'hoạt động 1', '1(21).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2482, 'hoạt động bếp quốc tế đà nẵng', '4(22).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2483, 'hoạt động 1', '2(23).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2484, 'hoạt động 6', '6(19).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2485, 'hoạt động 7', '7(21).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2486, 'hoạt động 9', '9(16).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2487, 'hoạt động 15', '15(14).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2488, 'hoạt động 11', '11(12).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2489, 'hoạt động 13', '13(15).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2490, 'hoạt động bếp việt cần thơ khóa 1', '1(22).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2491, 'hoạt động 4', '4(23).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2492, 'hoạt động 6', '6(20).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2493, 'hoạt động 7', '7(22).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2494, 'hoạt động 5', '5(23).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2495, 'hoạt động 9', '9(17).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2496, 'hoạt động 8', '8(18).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2497, 'hoạt động 12', '12(17).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2498, 'hoạt động 11', '11(13).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2499, 'hoạt động 10', '10(16).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2500, 'hoạt động 3', '3(20).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2501, 'hoạt động 15', '15(15).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2502, 'hoạt động 17', '17(13).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2503, 'hoạt động 16', '16(12).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2504, 'hoạt động 18', '18(11).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2505, 'hoạt động 14', '14(13).jpg', ',165,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2506, 'GIAO LƯU VỚI SIÊU ĐẦU BẾP ALAIN NGHĨA', '1(23).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2507, 'giao lưu 2', '2(24).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2508, 'giao lưu 3', '3(21).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2509, 'giao lưu 4', '4(24).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2510, 'giao lưu 5', '5(24).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2511, 'giao lưu 6', '6(21).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2512, 'giao lưu 7', '7(23).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2513, 'giao lưu 10', '10(17).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2514, 'giao lưu 12', '12(18).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2515, 'giao lưu 13', '13(16).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2516, 'giao lưu 15', '15(16).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2517, 'giao lưu 17', '17(14).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2518, 'giao lưu 18', '18(12).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2519, 'giao lưu 19', '19(11).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2520, 'giao lưu 23', '23(8).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2521, 'giao lưu 26', '26(12).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2522, 'giao lưu 25', '25(8).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2523, 'giao lưu 27', '27(7).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2524, 'giao lưu 28', '28(9).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2525, 'giao lưu 31', '31(10).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2526, 'giao lưu 30', '30(10).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2527, 'giao lưu 33', '33(5).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2528, 'giao lưu 22', '22(6).jpg', ',167,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2529, 'đóng film cùng diễn viên', '1(24).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2530, 'đóng film 2', '2(25).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2531, 'đóng film 3', '3(22).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2532, 'đóng film 4', '4(25).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2533, 'đóng film 5', '5(25).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2534, 'đóng film 9', '9(18).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2535, 'đóng film 11', '11(14).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2536, 'đóng film 13', '13(17).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2537, 'đóng film 15', '15(17).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2538, 'đóng film 18', '18(13).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2539, 'đóng film 19', '19(12).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2540, 'đóng film 21', '21(13).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2541, 'đóng film 20', '20(10).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2542, 'đóng film 27', '27(8).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2543, 'đóng film 30', '30(11).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2544, 'đóng film 31', '31(11).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2545, 'đóng film 32', '32(4).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2546, 'đóng film 39', '39(4).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2547, 'đóng film 38', '38(4).jpg', ',169,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2548, 'từ thiện - tặng bánh trung thu', '0(3).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2549, 'từ thiện 2', '2(26).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2550, 'từ thiện 4', '4(26).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2551, 'từ thiện 3', '3(23).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2552, 'từ thiện 5', '5(26).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2553, 'từ thiện 6', '6(22).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2554, 'từ thiện 8', '8(19).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2555, 'từ thiện 11', '11(15).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2556, 'từ thiện 12', '12(19).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2557, 'từ thiện 13', '13(18).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2558, 'từ thiện 15', '15(18).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2559, 'từ thiện 18', '18(14).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2560, 'từ thiện 21', '21(14).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2561, 'từ thiện 22', '22(7).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2562, 'từ thiện 24', '24(7).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2563, 'từ thiện 25', '26(13).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2564, 'từ thiện 29', '29(5).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2565, 'từ thiện 32', '37(5).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2566, 'từ thiện 50', '50(3).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2567, 'từ thiện 61', '61.jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2568, 'từ thiện 73', '73(1).jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2569, 'từ thiện 79', '79.jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2570, 'từ thiện 83', '83.jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2571, 'từ thiện 84', '84.jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2572, 'từ thiện 87', '87.jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2573, 'từ thiện 88', '88.jpg', ',172,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2574, 'hoạt động lớp pha chế khóa 12', '5(27).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2575, 'hoạt động 2', '2(27).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2576, 'hoạt động 3', '3(24).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2577, 'hoạt động 4', '4(27).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2578, 'hoạt động 6', '6(23).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2579, 'hoạt động 7', '7(24).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2580, 'hoạt động 1', '1(25).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2581, 'hoạt động 8', '8(20).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2582, 'hoạt động 10', '10(18).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2583, 'hoạt động 11', '11(16).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2584, 'hoạt động 12', '12(20).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2585, 'hoạt động lớp pha chế khóa 11', '2(28).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2586, 'hoạt động 4', '4(28).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2587, 'hoạt động 1', '1(26).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2588, 'hoạt động 6', '6(24).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2589, 'hoạt động 5', '5(28).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2590, 'hoạt động 3', '3(25).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2591, 'hoạt động 7', '7(25).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2592, 'hoạt động bếp âu khóa 7', '1(27).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2593, 'hoạt động 2', '2(29).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2594, 'hoạt động 3', '3(26).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2595, 'hoạt động 4', '4(29).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2596, 'hoạt động 6', '6(25).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2597, 'hoạt động 5', '5(29).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2598, 'hoạt động 7', '7(26).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2599, 'hoạt động 8', '8(21).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2600, 'hoạt động lớp nhật khóa 1', '1(28).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2601, 'hoạt động 2', '2(30).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2602, 'hoạt động 3', '3(27).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2603, 'hoạt động 4', '4(30).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2604, 'hoạt động 5', '5(30).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2605, 'hoạt động 6', '6(26).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2606, 'hoạt động 7', '7(27).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2607, 'hoạt động 8', '8(22).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2608, 'hoạt động 9', '9(19).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2609, 'hoạt động 10', '10(19).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2610, 'hoạt động 11', '11(17).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2611, 'hoạt động 12', '12(21).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2612, 'hoạt động 13', '13(19).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2613, 'hoạt động pha chế khóa 12', '13(20).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2614, 'hoạt động 14', '14(14).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2615, 'hoạt động 15', '15(19).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2616, 'hoạt động 16', '16(14).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2617, 'hoạt động 17', '17(15).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2618, 'hoạt động 19', '19(13).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2619, 'hoạt động 18', '18(15).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2620, 'hoạt động 20', '20(11).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2621, 'hoạt động 22', '22(8).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2622, 'hoạt động 23', '23(9).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2623, 'hoạt động 25', '25(9).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2624, 'hoạt động 24', '24(8).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2625, 'hoạt động 26', '26(14).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2626, 'hoạt động 27', '27(9).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2627, 'hoạt động 28', '28(10).jpg', ',175,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2628, 'nước ép chanh dây và thơm', 'nước ép chanh dây - thơm.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2629, 'nước ép táo và cam', 'nước ép táo và cam.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2630, 'xôi củ sen', 'xôi củ sen.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2631, 'vịt tiềm', 'VỊT TIỀM.jpg', ',47,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2632, 'bánh cuốn', 'bánh cuốn.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2633, 'bánh cuốn thịt nướng', 'bánh cuốn thịt nướng.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2634, 'chả bắp chiên', 'chả bắp chiên.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2635, 'chả bắp thái', 'chả bắp thái.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2636, 'chả giò hồng kông', 'chả giò hồng kông.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2637, 'tôm cuốn rong biển', 'tôm cuốn rong biển.jpg', ',92,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2638, 'chocolate pondant', 'chocolate pondant.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2639, 'cocktail ', 'cocktail dâu.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2640, 'cocktail 1', 'cocktail 1.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2641, 'mì soba lạnh', 'mì soba lạnh.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2642, 'mì somen nóng', 'mì somen nóng.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2643, 'bánh canh cua', 'bánh canh cua.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2644, 'baked oyster with mornay sauce', 'baked oyster with mornay sauce.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2645, 'cognác prawns', 'cognác prawns.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2646, 'sinh tố chuối', 'sinh tố chuối.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2647, 'sinh tố sapoche', 'sinh tố sapoche.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2648, 'trà lipton chanh dây', 'trà lipton chanh dây.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2649, 'trà lipton chanh', 'trà lipton chanh.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2650, 'trà lipton sữa chanh dây', 'trà lipton sữa chanh dây.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2651, 'trà lipton sữa', 'trà lipton sữA.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2652, 'trà thailand', 'trà thailand.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2653, 'trà xanh matcha', 'trà xanh matcha.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2654, 'waldorf salad ', 'waldorf salad .jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2655, 'nicoise salad', 'nicoise salad.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2656, 'hoạt động bếp nhật khóa 1 ( 14 )_', '14(15).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2657, 'hoạt động 16', '16(15).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2658, 'hoạt động 15', '15(20).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2659, 'hoạt động 17', '17(16).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2660, 'hoạt động 18', '18(16).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2661, 'hoạt động 19', '19(14).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2662, 'hoạt động 20', '20(12).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2663, 'hoạt động 21', '21(15).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2664, 'hoạt động 22', '22(9).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2665, 'hoạt động 24', '24(9).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2666, 'hoạt động 23', '23(10).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2667, 'hoạt động 26', '26(15).jpg', ',177,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2668, 'hoạt động lớp từ thiện ', '1(29).jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2669, 'hoạt động 2', '2(31).jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2670, 'hoạt động 3', '3(28).jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2671, 'hoạt động 4', '4(31).jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2672, 'hoạt động 5', '5(31).jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2673, 'hoạt động 6', '6(27).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2674, 'hoạt động 8', '8(23).jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2675, 'hoạt động 10', '10(20).jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2676, 'hoạt động 13', '13(21).jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2677, 'hoạt động 14', '14(16).jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2678, 'hoạt động 17', '17(17).jpg', ',94,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2679, 'hoạt động bếp việt khóa 17', '1(30).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2680, 'hoạt động 2', '2(32).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2681, 'hoạt động 3', '3(29).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2682, 'hoạt động 4', '4(32).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2683, 'hoạt động 5', '5(32).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2684, 'hoạt động 6', '6(28).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2685, 'hoạt động 7', '7(28).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2686, 'hoạt động 8', '8(24).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2687, 'hoạt động 9', '9(20).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2688, 'hoạt động 10', '10(21).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2689, 'hoạt động 11', '11(18).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2690, 'hoạt đông lớp bếp việt khóa 18', '4(33).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2691, 'hoạt động 1', '1(31).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2692, 'hoạt động 3', '3(30).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2693, 'hoạt động 2', '2(33).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2694, 'hoạt động 5', '5(33).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2695, 'hoạt động 6', '6(29).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2696, 'hoạt động 7', '7(29).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2697, 'hoạt động 8', '8(25).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2698, 'hoạt động 9', '9(21).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2699, 'hoạt động 10', '10(22).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2700, 'hoạt động 11', '11(19).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2701, 'hoạt động 13', '13(22).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2702, 'hoạt động 14', '14(17).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2703, 'hoạt động 12', '12(22).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2704, 'hoạt động 15', '15(21).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2705, 'hoạt động 16', '16(16).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2706, 'hoạt động 17', '17(18).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2707, 'hoạt động 18', '18(17).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2708, 'hoạt động 19', '19(15).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2709, 'hoạt động bếp âu khóa 7 ( 9 )', '9(22).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2710, 'hoạt động 10', '10(23).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2711, 'hoạt động 11', '11(20).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2712, 'grilled salmon', 'grilled salmon.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2713, 'poached seabass', 'poached seabass.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2714, 'straw berry lassi', 'straw berry.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2715, 'kiwi lassi', 'kiwi lassi.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2716, 'nước ép táo', 'nước ép táo.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2717, 'hoạt đông bếp việt khóa 18 ( 20 )', '20(13).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2718, 'hoạt động 21', '21(16).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2719, 'hoạt động 22', '22(10).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2720, 'hoạt động 23', '23(11).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2721, 'hoạt động 24', '24(10).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2722, 'hoạt động 26', '26(16).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2723, 'hoạt động 25', '25(10).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2724, 'hoạt động 27', '27(10).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2725, 'hoạt động 28', '28(11).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2726, 'hoạt động 29', '29(6).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2727, 'hoạt động lớp barista khóa 2 cần thơ', '1(32).jpg', ',214,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2728, 'hoạt động 2', '2(34).jpg', ',214,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2729, 'hoạt động 3', '3(31).jpg', ',214,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2730, 'hoạt động 4', '4(34).jpg', ',214,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2731, 'hoạt động 5', '5(34).jpg', ',214,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2732, 'hoạt động bếp âu khóa 6 ( 21 )', '21(17).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2733, 'hoạt động 22', '22(11).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2734, 'hoạt động 23', '23(12).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2735, 'hoạt động 24', '24(11).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2736, 'hoạt động 25', '25(11).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2737, 'hoạt động 26', '26(17).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2738, 'hoạt động 27', '27(11).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2739, 'hoạt động 28', '28(12).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2740, 'hoạt động lớp barista khóa 13', '2(41).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2741, 'hoạt động 2', '1(39).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2742, 'hoạt động 3', '3(38).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2743, 'hoạt động 4', '4(40).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2744, 'hoạt động 5', '5(41).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2745, 'hoạt động 6', '6(36).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2746, 'hoạt động 8', '8(31).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2747, 'hoạt động 7', '7(34).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2748, 'hoạt động 9', '9(28).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2749, 'hoạt động 10', '10(24).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (2750, 'hoạt động 11', '11(21).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (2751, 'hoạt động 12', '12(23).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 1);
INSERT INTO `web_photo_gallery` VALUES (2752, 'hoạt động lớp bánh âu khóa 3', '1(34).jpg', ',216,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2753, 'hoạt động 2', '2(36).jpg', ',216,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2754, 'hoạt động 3', '3(33).jpg', ',216,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2755, 'hoạt động 4', '4(36).jpg', ',216,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2756, 'hoạt động 5', '5(36).jpg', ',216,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2757, 'hoạt động 6', '6(31).jpg', ',216,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2758, 'fruit salad', 'fruit salad.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2759, 'sauteseed clam in white sauce', 'sauteseed clam in white sauce.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2760, 'sầu riêng dằm', 'sầu riêng dằm.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2761, 'hoạt động bếp âu khóa 7 ( 12 )', '12(24).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2762, 'hoạt động 13', '13(23).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2763, 'hoạt động 14', '14(18).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2764, 'hoạt động 15', '15(22).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2765, 'hoạt động 16', '16(17).jpg', ',173,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2766, 'hoạt đông bếp việt khóa 1 đà nẵng (7 )', '7(31).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2767, 'hoạt động 8', '8(27).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2768, 'hoạt động 9', '9(24).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2769, 'hoạt động 10', '10(25).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2770, 'hoạt động 11', '11(22).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2771, 'hoạt động 12', '12(25).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2772, 'hoạt động 13', '13(24).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2773, 'hoạt động 15', '15(23).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2774, 'hoạt động 16', '16(18).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2775, 'hoạt động 17', '17(19).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2776, 'hoạt động 18', '18(18).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2777, 'hoạt động 19', '19(16).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2778, 'hoạt động 20', '20(14).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2779, 'hoạt động 21', '21(18).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2780, 'hoạt động 23', '23(13).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2781, 'hoạt động 24', '24(12).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2782, 'hoạt động 25', '25(12).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2783, 'hoạt động 26', '26(18).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2784, 'hoạt động 27', '27(12).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2785, 'hoạt động 28', '28(13).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2786, 'hoạt động 29', '29(7).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2787, 'hoạt động 30', '30(12).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2788, 'hoạt động 31', '31(12).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2789, 'hoạt động 32', '32(5).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2790, 'hoạt động 33', '33(6).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2791, 'hoạt động 35', '35(7).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2792, 'hoạt động 36', '36(5).jpg', ',161,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2793, 'hoạt đông bếp việt khóa 2 đà nẵng (3 )', '3(34).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2794, 'hoạt động 4', '4(37).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2795, 'hoạt động 5', '5(37).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2796, 'hoạt động 6', '6(32).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2797, 'hoạt động 7', '7(32).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2798, 'hoạt động 8', '8(28).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2799, 'hoạt động 9', '9(25).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2800, 'hoạt động 10', '10(26).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2801, 'hoạt động 11', '11(23).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2802, 'hoạt động 12', '12(26).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2803, 'hoạt động 13', '13(25).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2804, 'hoạt động 14', '14(19).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2805, 'hoạt động 15', '15(24).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2806, 'hoạt động 16', '16(19).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2807, 'hoạt động 17', '17(20).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2808, 'hoạt động 18', '18(19).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2809, 'hoạt động 19', '19(17).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2810, 'hoạt động 20', '20(15).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2811, 'hoạt động 21', '21(19).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2812, 'hoạt động 22', '22(12).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2813, 'hoạt động 25', '25(13).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2814, 'hoạt động 23', '23(14).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2815, 'hoạt động 24', '24(13).jpg', ',162,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2816, 'hoạt động lớp bếp việt khóa 4 đà nẵng', '1(35).jpg', ',218,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2817, 'hoạt động 2', '2(37).jpg', ',218,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2818, 'hoạt động lớp bếp việt khóa 5 đà nẵng', '1(36).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2819, 'hoạt động 2', '2(38).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2820, 'hoạt động 3', '3(35).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2821, 'hoạt động 5', '5(38).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2822, 'hoạt động 7', '7(33).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2823, 'hoạt động 6', '6(33).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2824, 'hoạt động 8', '8(29).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2825, 'hoạt động 9', '9(26).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2826, 'hoạt động 10', '10(27).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2827, 'hoạt động 11', '11(24).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2828, 'hoạt động 12', '12(27).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2829, 'hoạt động 13', '13(26).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2830, 'hoạt động 14', '14(20).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2831, 'hoạt động 15', '15(25).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2832, 'hoạt động 16', '16(20).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2833, 'hoạt động 17', '17(21).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2834, 'hoạt động 18', '18(20).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2835, 'hoạt động 19', '19(18).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2836, 'hoạt động 20', '20(16).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2837, 'hoạt động 21', '21(20).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2838, 'hoạt động 22', '22(13).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2839, 'hoạt động barista khóa 2 đà nẵng', '1(37).jpg', ',222,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2840, 'hoạt động 2', '2(39).jpg', ',222,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2841, 'hoạt động 3', '3(36).jpg', ',222,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2842, 'hoạt động 4', '4(38).jpg', ',222,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2843, 'hoạt động 5', '5(39).jpg', ',222,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2844, 'hoạt động 6', '6(34).jpg', ',222,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (2845, 'hoạt động barista khóa 2 đà nẵng', '1(38).jpg', ',221,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2846, 'hoạt động 2', '2(40).jpg', ',221,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2847, 'hoạt động 3', '3(37).jpg', ',221,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2848, 'hoạt động 5', '5(40).jpg', ',221,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2849, 'hoạt động 6', '6(35).jpg', ',221,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2850, 'hoạt động lớp bếp việt khóa 17 ( 12 )', '12(28).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2851, 'hoạt động 13', '13(27).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2852, 'hoạt động 14', '14(21).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2853, 'hoạt động 15', '15(26).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2854, 'hoạt động 17', '17(22).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2855, 'hoạt động 18', '18(21).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2856, 'hoạt động 19', '19(19).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2857, 'hoạt động 20', '20(17).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2858, 'hoạt động 21', '21(21).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2859, 'hoạt động lớp bếp âu khóa 5 ( 22 )', '22(14).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2860, 'hoạt động 23', '23(15).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2861, 'hoạt động 24', '24(14).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2862, 'hoạt động 25', '25(14).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2863, 'hoạt động 26', '26(19).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2864, 'hoạt động 27', '27(13).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2865, 'greentea lassi', 'greentea lassi.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2866, 'passion lassi', 'passion lassi.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2867, 'tomato lassi', 'tomato lassi.jpg', ',71,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2868, 'mì vịt tiềm', 'mì vịt tiềm.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2869, 'hoạt động lớp barista khóa 11 ( 8 )', '8(30).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2870, 'hoạt động 9', '9(27).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2871, 'hoạt động 10', '10(28).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2872, 'hoạt động 11', '11(25).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2873, 'hoạt động 12', '12(29).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2874, 'hoạt động 13', '13(28).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2875, 'hoạt động 14', '14(22).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2876, 'hoạt động 15', '15(27).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2877, 'hoạt động 16', '16(21).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2878, 'hoạt động 17', '17(23).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2879, 'hoạt động 18', '18(22).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2880, 'hoạt động lớp bánh âu khóa 3 ( 7 )', '7(35).jpg', ',216,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2881, 'hoạt động 8', '8(32).jpg', ',216,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2882, 'hoạt động 10', '10(29).jpg', ',216,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2883, 'hoạt động 11', '11(26).jpg', ',216,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2884, 'hoạt động 12', '12(30).jpg', ',216,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2885, 'hoạt động lớp barista khóa 11 ( 19 )', '20(18).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2886, 'hoạt động 21', '21(22).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2887, 'hoạt động 22', '22(15).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2888, 'hoạt động 23', '23(16).jpg', ',174,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2889, 'hoạt động bếp âu khóa 6 ( 29 )', '29(8).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2890, 'hoạt động 30', '30(13).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2891, 'hoạt động 31', '31(13).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2892, 'hoạt động 32', '32(6).jpg', ',123,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2893, 'hoạt động lớp quốc tế khóa 3', '4(41).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2894, 'hoạt động 1', '1(40).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2895, 'hoạt động 2', '2(42).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2896, 'hoạt động 3', '3(39).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2897, 'hoạt động 5', '5(42).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2898, 'hoạt động 6', '6(37).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2899, 'hoạt động 8', '8(33).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2900, 'hoạt động 9', '9(29).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2901, 'hoạt động 10', '10(30).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2902, 'hoạt động 11', '11(27).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2903, 'hoạt động 12', '12(31).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2904, 'hoạt động 7', '7(36).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2905, 'hoạt động lớp bếp việt khóa 17 ( 22 )', '22(16).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2906, 'hoạt động 23', '23(17).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2907, 'hoạt động 24', '24(15).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2908, 'hoạt động 25', '25(15).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2909, 'hoạt động 26', '26(20).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2910, 'hoạt động 27', '27(14).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2911, 'hoạt động 28', '28(14).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2912, 'hoạt động 29', '29(10).jpg', ',211,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2913, 'hoạt động lớp barista khóa 13 ( 10 )', '10(31).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2914, 'hoạt động 11', '11(28).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2915, 'hoạt động 12', '12(32).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2916, 'hoạt động 13', '13(29).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2917, 'hoạt động 14', '14(23).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2918, 'hoạt động 15', '15(28).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2919, 'hoạt động 16', '16(22).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2920, 'hoạt động lớp bếp việt khóa 15 ( 33 )', '33(7).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2921, 'hoạt động 34', '34(6).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2922, 'hoạt động 35', '35(8).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2923, 'hoạt động 36', '36(6).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2924, 'hoạt động 39', '39(5).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2925, 'hoạt động 38', '38(5).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2926, 'hoạt động 37', '37(6).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2927, 'hoạt động 40', '40(5).jpg', ',144,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2928, 'hoạt động lớp bếp việt khóa 14 ( 33 )', '33(8).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2929, 'hoạt động 34', '34(7).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2930, 'hoạt động 35', '35(9).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2931, 'hoạt động 36', '36(7).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2932, 'hoạt động 39', '39(6).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2933, 'hoạt động 38', '38(6).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2934, 'hoạt động 37', '37(7).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2935, 'hoạt động 40', '40(6).jpg', ',131,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2936, 'hoạt động lớp bếp âu khóa 5 ( 28 )', '28(15).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2937, 'hoạt động 29', '29(11).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2938, 'hoạt động 31', '31(14).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2939, 'hoạt động 34', '34(8).jpg', ',81,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2940, 'bánh tiramisu 2', 'bánh tiramisu.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2941, 'hoạt động lớp barista khóa 13 ( 17 )', '17(24).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2942, 'hoạt động 18', '18(23).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2943, 'hoạt động 19', '19(20).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2944, 'hoạt động 20', '20(19).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2945, 'hoạt động 21', '21(23).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2946, 'hoạt động 22', '22(17).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2947, 'hoạt động 23', '23(18).jpg', ',215,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2948, 'hoạt động lớp bếp việt khóa 3 ĐÀ NẴNG', '1(41).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2949, 'hoạt động 2', '2(43).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2950, 'hoạt động 3', '3(40).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2951, 'hoạt động 4', '4(42).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2952, 'hoạt động 5', '5(43).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2953, 'hoạt động 6', '6(38).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2954, 'hoạt động 7', '7(37).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2955, 'hoạt động 9', '9(30).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2956, 'hoạt động 10', '10(32).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2957, 'hoạt động 11', '11(29).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2958, 'hoạt động 12', '12(33).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2959, 'hoạt động lớp quốc tế khóa 1 đà nẵng ( 16 )', '16(23).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2960, 'hoạt động 17', '17(25).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2961, 'hoạt động 18', '18(24).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2962, 'hoạt động 19', '19(21).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2963, 'hoạt động 20', '20(20).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2964, 'hoạt động 21', '21(24).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2965, 'hoạt động 22', '22(18).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2966, 'hoạt động 23', '23(19).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2967, 'hoạt động 24', '24(16).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2968, 'hoạt động 25', '25(16).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2969, 'hoạt động 26', '26(21).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2970, 'hoạt động 27', '27(15).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2971, 'hoạt động 29', '29(12).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2972, 'hoạt động 30', '30(14).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2973, 'hoạt động 31', '31(15).jpg', ',164,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2974, 'hoạt động lớp quốc tế khóa 2 đà nẵng', '1(42).jpg', ',224,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2975, 'hoạt động 2', '2(44).jpg', ',224,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2976, 'hoạt động 3', '3(41).jpg', ',224,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2977, 'hoạt động 4', '4(43).jpg', ',224,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2978, 'hoạt động 5', '5(44).jpg', ',224,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2979, 'hoạt động 7', '7(38).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2980, 'hoạt động 8', '8(34).jpg', ',224,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2981, 'hoạt động 6', '6(39).jpg', ',224,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2982, 'hoạt động lớp bếp việt khóa 3 đà nẵng ( 14 )', '14(24).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2983, 'hoạt động 15', '15(29).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2984, 'hoạt động 16', '16(24).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2985, 'hoạt động 17', '17(26).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2986, 'hoạt động 19', '19(22).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2987, 'hoạt động 21', '21(25).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2988, 'hoạt động 23', '23(20).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2989, 'hoạt động 24', '24(17).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2990, 'hoạt động 25', '25(17).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2991, 'hoạt động 26', '26(22).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2992, 'hoạt động 27', '27(16).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2993, 'hoạt động 28', '28(16).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2994, 'hoạt động 29', '29(13).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2995, 'hoạt động 31', '31(16).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2996, 'hoạt động 34', '34(9).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2997, 'hoạt động 35', '35(10).jpg', ',217,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2998, 'hoạt động lớp bếp việt khóa 5 đà nẵng ( 23 )', '23(21).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (2999, 'hoạt động 25', '25(18).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3000, 'hoạt động 26', '26(23).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3001, 'hoạt động 27', '27(17).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3002, 'hoạt động 28', '28(17).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3003, 'hoạt động 29', '29(14).jpg', ',219,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3004, 'hoạt động lớp quốc tế khóa 2 ( 67 )', '67.jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3005, 'hoạt động 68', '68(1).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3006, 'hoạt động 69', '69.jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3007, 'hoạt động 70', '70.jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3008, 'hoạt động 71', '71.jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3009, 'hoạt động 72', '72.jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3010, 'hoạt động 73', '73(2).jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3011, 'hoạt động 74', '74.jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3012, 'hoạt động 76', '76.jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3013, 'hoạt động 75', '75.jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3014, 'hoạt động 78', '78.jpg', ',153,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3015, 'hoạt động lớp quốc tế khóa 1 ( 72 )', '72(1).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3016, 'hoạt động 73', '73(3).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3017, 'hoạt động 74', '74(1).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3018, 'hoạt động 75', '75(1).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3019, 'hoạt động 76', '76(1).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3020, 'hoạt động 77', '77.jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3021, 'hoạt động 78', '78(1).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3022, 'hoạt động 79', '79(1).jpg', ',126,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3023, 'phở bò', 'phở bò.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3024, 'mực chiên giòn', 'mực chiên giòn.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3025, 'chả giò hải sản chiên giòn', 'chả giòf hải sản chiên giòn.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3026, 'saltimbocca', 'saltimbocca.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3027, 'stewed lamb shank', 'stewed lamb shank.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3028, 'phở gà', 'phở gà.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3029, 'hoạt động lớp bếp việt khóa 16 ( 12 )', '12(34).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3030, 'hoạt động 13', '13(30).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3031, 'hoạt động lớp quốc tế khóa 3 ( 13 )', '13(31).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3032, 'hoạt động 14', '14(25).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3033, 'hoạt động 15', '15(30).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3034, 'hoạt động 16', '16(25).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3035, 'hoạt động 17', '17(27).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3036, 'hoạt động 18', '18(25).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3037, 'hoạt động bếp việt khóa 16 (14 )', '14(26).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3038, 'hoạt động 15', '15(31).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3039, 'hoạt động 16', '16(26).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3040, 'hoạt động 18', '18(26).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3041, 'hoạy động 17', '17(28).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (3042, 'hoạt động 18', '18(27).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3043, 'hoạt động 19', '19(23).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3044, 'hoạt động 20', '20(21).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3045, 'hoạt động 22', '22(19).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3046, 'hoạt đong 23', '23(22).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3047, 'hoạt động 24', '24(18).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3048, 'hoạt động 25', '25(19).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3049, 'hoạy động 26', '26(24).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3050, 'hoạt động 28', '28(18).jpg', ',145,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3051, 'hoạt động lớp quốc tế khóa 3 (19 )', '19(24).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3052, 'hoạt động 20', '20(22).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3053, 'hoạt động 21', '21(26).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3054, 'hoạt động 23', '23(23).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3055, 'hoạt động 24', '24(19).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3056, 'hoạt động 26', '26(25).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3057, 'hoạt động 25', '25(20).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3058, 'hoạt động 27', '27(18).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3059, 'hoạt động 28', '28(19).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3060, 'hoạt động 29', '29(15).jpg', ',223,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3061, 'hoạt động bếp việt khóa 18 ( 35 )', '35(11).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3062, 'hoạt động 36', '36(8).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3063, 'hoạt đông 37', '37(8).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3064, 'hoạt động 38', '38(7).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3065, 'hoạt động 39', '39(7).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3066, 'hoạt động 40', '40(7).jpg', ',212,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3067, 'ngoại khóa tại KDL Văn Thánh 10 - 12 - 2013', '1(43).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3068, 'hoạt đông 2', '2(45).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3069, 'hoạt động 3', '3(42).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3070, 'Hoạt động 5', '5(45).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3071, 'Hoạt động 7', '7(39).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3072, 'Hoạt động 9', '9(31).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3073, 'Hoạt động 10', '10(33).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3074, 'Hoạt động 12', '12(35).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3075, 'Hoạt động 13', '13(32).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3076, 'Hoạt động 14', '14(28).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3077, 'Hoạt động 15', '15(32).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3078, 'Hoạt động 16', '16(27).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3079, 'Hoạt động 17', '17(29).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3080, 'Hoạt động 18', '18(28).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3081, 'Hoạt động 19', '19(25).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3082, 'Hoạt động 20', '20(23).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3083, 'Hoạt động 21', '21(27).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3084, 'Hoạt động 22', '22(20).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3085, 'Hoạt động 23', '23(24).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3086, 'Hoạt động 24', '24(20).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3087, 'Hoạt động 25', '25(21).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3088, 'Hoạt động 26', '26(26).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (3089, 'Hoạt động 27', '27(19).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3090, 'Hoạt động 28', '28(20).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3091, 'Hoạt động 29', '29(16).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3092, 'Hoạt động 30', '30(15).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3093, 'Hoạt động 31', '31(17).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3094, 'Hoạt động 32', '32(7).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3095, 'Hoạt động 33', '33(9).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3096, 'Hoạt động 34', '34(10).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3097, 'Hoạt động 38', '38(8).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3098, 'Hoạt động 39', '39(8).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3099, 'Hoạt động 40', '40(8).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3100, 'Hoạt động 41', '41(4).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3101, 'Hoạt động 43', '43(3).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3102, 'Hoạt động 44', '44(5).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3103, 'Hoạt động 45', '45(4).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3104, 'Hoạt động 46', '46(2).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3105, 'Hoạt động 47', '47(5).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3106, 'Hoạt động 49', '49(3).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3107, 'Hoạt động 50', '50(4).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3108, 'Hoạt động 51', '51(3).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3109, 'Hoạt động 52', '52(4).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3110, 'Hoạt động 53', '53(1).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3111, 'Hoạt động 54', '54(4).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3112, 'Hoạt động 55', '55(3).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3113, 'Hoạt động 56', '56(3).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3114, 'Hoạt động 57', '57.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3115, 'Hoạt động 58', '58(2).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3116, 'Hoạt động 59', '59(1).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3117, 'Hoạt động 60', '60(1).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3118, 'Hoạt động 61', '61(1).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3119, 'Hoạt động 62', '62(1).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3120, 'Hoạt động 63', '63.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3121, 'Hoạt động 64', '64.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3122, 'Hoạt động 65', '65.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3123, 'Hoạt động 66', '66.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3124, 'Hoạt động 67', '67(1).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3125, 'Hoạt động 68', '68(2).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3126, 'Hoạt động 70', '70(1).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3127, 'Hoạt động 74', '74(2).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3128, 'Hoạt động 75', '75(2).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3129, 'Hoạt động 76', '76(2).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3130, 'Hoạt động 77', '77(1).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3131, 'Hoạt động 79', '79(2).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3132, 'Hoạt động 80', '80.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3133, 'Hoạt động 81', '81.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3134, 'Hoạt động 82', '82.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3135, 'Hoạt động 84', '84(1).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3136, 'Hoạt động 86', '86.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3137, 'Hoạt động 87', '87(1).jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3138, 'Hoạt động 89', '89.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3139, 'Hoạt động 90', '90.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3140, 'Hoạt động 91', '91.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3141, 'Hoạt động 94', '94.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3142, 'Hoạt động 95', '95.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3143, 'Hoạt động 97', '97.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3144, 'Hoạt động 98', '98.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3145, 'Hoạt động 102', '102.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3146, 'Hoạt động 103', 'IMG_0061.jpg', ',227,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (3147, 'gà nướng ống tre', 'gà nướng ống tre.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3148, 'cơm chiên hải sản', 'cơm chiên hải sản.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3149, 'sườn sốt chua ngọt', 'sườn sốt chua ngọt.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3150, 'nghêu hấp rượu', 'nghêu hấp rượu.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3151, 'mưc teriyaki', 'mực.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3152, 'chawan mushi', 'trứng hấp.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (3153, 'soft shell crab age', 'cua nhaatj.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', 'longruoi', 0);
INSERT INTO `web_photo_gallery` VALUES (3154, 'nem cua bể', 'nem cua bể.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3155, 'bánh cupcake', 'bánh cupcake 1.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3156, 'bánh cupcake 2', 'bánh cupcake 2.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3157, 'bánh cupcake 3', 'bánh cupcake 3.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3158, 'bánh cupcake 1', 'bánh cupcake.jpg', ',59,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3159, 'lasagne  al forno', 'lasagne al forno.jpg', ',52,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3160, 'hoạt động bếp việt khóa 19 ', '1(44).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3161, 'hoạt động 2', '2(46).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3162, 'hoạt động 3', '3(43).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3163, 'hoạt động 4', '4(44).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3164, 'hoạt động 5', '5(46).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3165, 'hoạt động 6', '6(40).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3166, 'hoạt động 7', '7(40).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3167, 'hoạt động 8', '8(35).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3168, 'hoạt động 10', '10(34).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3169, 'hoạt động 11', '11(30).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3170, 'hoạt động 12', '12(36).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3171, 'hoạt động 13', '13(33).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3172, 'hoạt động 14', '14(29).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3173, 'hoạt động 16', '16(28).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3174, 'hoạt động 17', '17(30).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3175, 'hoạt động 19', '19(26).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3176, 'hoạt động 20', '20(24).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3177, 'hoạt động 21', '21(28).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3178, 'hoạt động 22', '22(21).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3179, 'hoạt động 23', '23(25).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3180, 'hoạt động 24', '24(21).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3181, 'hoạt động 25', '25(22).jpg', ',237,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3182, 'TẶNG BÁNH CHO TRẺ EM NGHÈO NHÂN DỊP GIÁNG SINH 2013 ', '1(45).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3183, 'hoạt động 2', '2(47).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3184, 'hoạt động 3', '3(44).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3185, 'hoạt động 4', '4(45).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3186, 'hoạt động 5', '5(47).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3187, 'hoạt động 6', '6(41).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3188, 'hoạt động 7', '7(41).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3189, 'hoạt động 8', '8(36).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3190, 'hoạt động 9', '9(32).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3191, 'hoạt động 10', '10(35).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3192, 'hoạt động 11', '11(31).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3193, 'hoạt động 12', '12(37).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3194, 'hoạt động 13', '13(34).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3195, 'hoạt động 14', '14(30).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3196, 'hoạt động 17', '17(31).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3197, 'hoạt động 18', '18(29).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3198, 'hoạt động 19', '19(27).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3199, 'hoạt động 20', '20(25).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3200, 'hoạt động 21', '21(29).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3201, 'hoạt động 22', '22(22).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3202, 'hoạt động 23', '23(26).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3203, 'hoạt động 25', '25(23).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3204, 'hoạt động 26', '26(28).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3205, 'hoạt động 28', '28(21).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3206, 'hoạt động 29', '29(17).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3207, 'hoạt động 30', '30(17).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3208, 'hoạt động 31', '31(18).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3209, 'hoạt động 32', '32(8).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3210, 'hoạt động 33', '33(10).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3211, 'hoạt động 34', '34(11).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3212, 'hoạt động 36', '36(9).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3213, 'hoạt động 35', '35(12).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3214, 'hoạt động 37', '37(9).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3215, 'hoạt động 38', '38(9).jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3216, 'hoạt động 39', '39(9).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3217, 'hoạt động 40', '40(9).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3218, 'hoạt động 41', '41(5).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3219, 'hoạt động 42', '42(5).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3220, 'hoạt động 44', '44(6).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3221, 'hoạt động 45', '45(5).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3222, 'hoạt động 46', '46(3).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3223, 'hoạt động 48', '48(3).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3224, 'hoạt động 49', '49(4).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3225, 'hoạt động 50', '50(5).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3226, 'hoạt động 51', '51(4).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3227, 'hoạt động 52', '52(5).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3228, 'hoạt động 53', '53(2).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3229, 'hoạt động 54', '54(5).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3230, 'hoạt động 55', '55(4).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3231, 'hoạt động 56', '56(4).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3232, 'hoạt động 57', '57(1).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3233, 'hoạt động 58', '58(3).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3234, 'hoạt động 59', '59(2).jpg', ',238,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3235, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi 12', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-12.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (3236, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi 11', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-11.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3237, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi 10', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-10.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3238, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi 9', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-9.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3239, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi 8', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-8.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3240, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi 7', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-7.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3241, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi 6', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-6.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3242, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi 5', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-5.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3243, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi 4', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-4.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3244, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi 3', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-3.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3245, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi 2', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-2.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3246, 'Trường NetSpace Đà Nẵng làm từ thiện tại bệnh viện Phụ sản Nhi', 'truong-netspace-da-nang-lam-tu-thien-tai-benh-vien-phu-san-nhi-1.jpg', ',239,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3247, 'hoạt động bếp nhật khóa 2 ', '1(46).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3248, 'hoạt động 2', '2(48).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3249, 'hoạt động 3', '3(45).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3250, 'hoạt động 4', '4(46).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3251, 'hoạt động 5', '5(48).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3252, 'hoạt động 6', '6(42).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3253, 'hoạt động 7', '7(42).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3254, 'hoạt động 8', '8(37).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3255, 'hoạt động 9', '9(33).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3256, 'hoạt động 10', '10(36).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3257, 'hoạt động 11', '11(32).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3258, 'hoạt động 12', '12(38).jpg', ',242,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3259, 'hoạt động barista khóa 17', 'IMG_0974.jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3260, 'hoạt động 2', '2(49).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3261, 'hoạt động 3', '3(46).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3262, 'hoạt động 4', '4(47).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3263, 'hoạt động 5', '5(49).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3264, 'hoạt động 6', '6(43).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3265, 'hoạt động 7', '7(43).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3266, 'hoạt động 8', '8(38).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3267, 'hoạt động 9', '9(34).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3268, 'hoạt động 10', '10(37).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3269, 'hoạt động 11', '11(33).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3270, 'hoạt động lớp quốc tế khóa 4', '1(47).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3271, 'hoạt động 2', '2(50).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3272, 'hoạt động 3', '3(47).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3273, 'hoạt động 4', '4(48).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3274, 'hoạt động 5', '5(50).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3275, 'hoạt động 6', '6(44).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3276, 'hoạt động 7', '7(44).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3277, 'bò hấp gừng', 'bò hấp gừng.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3278, 'cá lăng nướng muối ớt', 'cá lăng nướng muối ớt.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3279, 'BBQ', 'BBQ.jpg', ',91,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3280, 'hoạt động  barista khóa 15', '1(48).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3281, 'hoạt động 2', '2(51).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3282, 'hoạt động 3', '3(48).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3283, 'hoạt động 4', '4(49).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3284, 'hoạt động 5', '5(51).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3285, 'hoạt động 6', '6(45).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3286, 'hoạt động 7', '7(45).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3287, 'hoạt động 8', '8(39).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3288, 'hoạt động 9', '9(35).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3289, 'hoạt động 10', '10(38).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3290, 'hoạt động 11', '11(34).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3291, 'hoạt động 12', '12(39).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3292, 'hoạt động 13', '13(35).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3293, 'hoạt động 14', '14(31).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3294, 'hoạt động 15', '15(33).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3295, 'hoạt động 16', '16(29).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3296, 'hoạt động  17', '17(32).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3297, 'hoạt động barista khóa 14', '1(49).jpg', ',246,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3298, 'hoạt động 2', '2(52).jpg', ',246,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3299, 'hoạt động 3', '3(49).jpg', ',246,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3300, 'hoạt động 4', '4(50).jpg', ',246,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3301, 'hoạt động 5', '5(52).jpg', ',246,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3302, 'hoạt động 6', '6(46).jpg', ',246,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3303, 'hoạt động 7', '7(46).jpg', ',246,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3304, 'gỏi cà tím', 'gỏi cà tím.jpg', ',64,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3305, 'hoạt động barista 17 (12)', '12(40).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3306, 'hoạt động 13', '13(36).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3307, 'hoạt động 14', '14(32).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3308, 'hoạt động 15', '15(34).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3309, 'hoạt động 16', '16(30).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3310, 'hoạt động 17', '17(33).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3311, 'hoạt động 18', '18(30).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3312, 'hoạt động 19', '19(28).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3313, 'hoạt động 20', '20(26).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3314, 'hoạt động 21', '21(30).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3315, 'hoạt động 22', '22(23).jpg', ',240,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3316, 'hoạt động barista khóa 15 ( 18 )', '18(31).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3317, 'hoạt động 19', '19(29).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3318, 'hoạt động 20', '20(27).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3319, 'hoạt động 21', '21(31).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3320, 'hoạt động 22', '22(24).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3321, 'hoạt động 23', '23(27).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3322, 'hoạt động 24', '24(22).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3323, 'hoạt động 25', '25(24).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3324, 'hoạt động 26', '26(29).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3325, 'hoạt động 27', '27(20).jpg', ',244,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3326, 'hoạt động quốc tế 4 ( 8 )', '8(40).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3327, 'hoạt động 9', '9(36).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3328, 'hoạt động 10', '10(39).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3329, 'hoạt động 11', '11(35).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3330, 'hoạt động 12', '12(41).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3331, 'hoạt động 13', '13(37).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3332, 'hoạt động 14', '14(33).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3333, 'hoạt động 15', '15(35).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3334, 'hoạt động 16', '16(31).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3335, 'hoạt động 17', '17(34).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3336, 'hoạt động 18', '18(32).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3337, 'hoạt động 19', '19(30).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3338, 'hoạt động 20', '20(28).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3339, 'hoạt động 21', '21(32).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3340, 'hoạt động 22', '22(25).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3341, 'hoạt động 23', '23(28).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3342, 'hoạt động 24', '24(23).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3343, 'hoạt động 25', '25(25).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3344, 'hoạt động 26', '26(30).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3345, 'hoạt động 27', '27(21).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3346, 'hoạt động 28', '28(22).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3347, 'hoạt động 29', '29.jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3348, 'hoạt động 30', '30(18).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3349, 'hoạt động 31', '31(19).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3350, 'hoạt động 32', '32(9).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3351, 'hoạt động 33', '33(11).jpg', ',241,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3352, 'diễn viên học nấu ăn ( 1 )', '1(50).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3353, 'hoạt động 2', '2(53).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3354, 'hoạt động 3', '3(50).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3355, 'hoạt động 4', '4(51).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3356, 'hoạt động 5', '5(53).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3357, 'hoạt động 6', '6(47).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3358, 'hoạt động 7', '7(47).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3359, 'hoạt động 8', '8(41).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3360, 'hoạt động 9', '9(37).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3361, 'hoạt động 10', '10(40).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3362, 'hoạt động 11', '11(36).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3363, 'hoạt động 12', '12(42).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3364, 'hoạt động 13', '13(38).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3365, 'hoạt động 14', '14(34).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3366, 'hoạt động 15', '15(36).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3367, 'hoạt động 16', '16(32).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3368, 'hoạt động 17', '17(35).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3369, 'hoạt động 18', '18(33).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3370, 'hoạt động 19', '19(31).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3371, 'hoạt động 20', '20(29).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3372, 'hoạt động 21', '21(33).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3373, 'hoạt động 22', '22(26).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3374, 'hoạt động 24', '24(24).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3375, 'hoạt động 25', '25(26).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3376, 'hoạt động 27', '27(22).jpg', ',168,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3377, 'pha chế barista khóa 16', '1(51).jpg', ',247,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3378, 'hoạt động 2', '2(54).jpg', ',247,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3379, 'hoạt động 3', '3(51).jpg', ',247,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3380, 'cam tam 15', 'cach-lam-com-tam-15.jpg', '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 1);
INSERT INTO `web_photo_gallery` VALUES (3381, 'hình ảnh độc đáo bí ngô', 'anh1.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3382, 'anh 2', 'anh2.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3383, 'anh 3', 'anh3.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3384, 'anh 4', 'anh4.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3385, 'anh 5', 'anh5.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3386, 'anh 7', 'anh7.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3387, 'anh 8', 'anh8.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3388, 'anh 9', 'anh9.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3389, 'anh 11', 'anh11.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3390, 'anh 12', 'anh12.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3391, 'anh 13', 'anh13.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3392, 'anh 15', 'anh15.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3393, 'anh 16', 'anh16.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3394, 'anh 17', 'anh17.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3395, 'anh 18', 'anh18.jpg', ',248,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'longruoi', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3396, '90. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-90.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (3397, '89. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-89.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3398, '88. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-88.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3399, '87. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-87.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3400, '86. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-86.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3401, '85. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-85.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3402, '84. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-84.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3403, '83. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-83.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3404, '82. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-82.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3405, '81. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-81.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3406, '80. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-80.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3407, '79. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-79.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3408, '78. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-78.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3409, '77. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-77.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3410, '76. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-76.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3411, '75. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-75.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3412, '74. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-74.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3413, '73. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-73.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3414, '72. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-72.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3415, '71. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-71.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3416, '60. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-60.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3417, '59. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-59.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3418, '58. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-58.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3419, '57. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-57.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3420, '56. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-56.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3421, '55. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-55.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3422, '54. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-54.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3423, '53. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-53.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3424, '52. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-52.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3425, '51. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-51.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3426, '50. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-50.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3427, '49. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-49.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3428, '48. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-48.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3429, '47. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-47.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3430, '46. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-46.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3431, '45. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-45.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3432, '44. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-44.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3433, '43. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-43.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3434, '42. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-42.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3435, '41. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-41.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3436, '40. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-40.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3437, '39. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-39.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3438, '38. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-38.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3439, '37. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-37.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3440, '36. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-36.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3441, '35. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-35.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3442, '34. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-34.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3443, '33. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-33.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3444, '32. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-32.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3445, '31. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-31.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3446, '30. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-30.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3447, '29. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-29.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3448, '28. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-28.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3449, '27. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-27.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3450, '26. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-26.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3451, '25. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-25.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3452, '24. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-24.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3453, '23. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-23.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3454, '22. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-22.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3455, '21. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-21.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3456, '20. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-20.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3457, '19. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-19.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3458, '18. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-18.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (3459, '17. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-17.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3460, '16. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-16.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3461, '15. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-15.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3462, '14. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-14.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3463, '13. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-13.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3464, '12. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-12.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3465, '11. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-11.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3466, '10. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-10.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3467, '9. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-9.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3468, '8. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-8.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3469, '7. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-7.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3470, '6. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-6.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3471, '5. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-5.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3472, '4. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-4.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3473, '3. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-3.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3474, '2. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-2.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3475, '1. Công tác tuyển sinh năm 2014', 'cong-tac-tuyen-sinh-1.jpg', ',249,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3476, '31. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-31.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (3477, '30. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-30.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (3478, '29. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-29.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (3479, '28. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-28.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3480, '27. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-27.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3481, '26. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-26.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3482, '25. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-25.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3483, '24. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-24.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3484, '23. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-23.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3485, '22. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-22.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3486, '21. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-21.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3487, '20. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-20.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3488, '19. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-19.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3489, '18. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-18.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3490, '17. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-17.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3491, '16. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-16.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3492, '15. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-15.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3493, '14. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-14.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3494, '13. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-13.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3495, '12. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-12.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3496, '11. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-11.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3497, '10. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-10.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3498, '9. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-9.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3499, '8. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-8.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3500, '7. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-7.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3501, '6. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-6.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3502, '5. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-5.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3503, '4. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-4.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3504, '3. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-3.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3505, '2. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-2.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3506, '1. Tiệc Tất Niên 2013 Trường NETSPACE', 'tiec-tat-nien-2014-1.jpg', ',250,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3507, '24. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-24.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3508, '23. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-23.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3509, '22. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-22.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3510, '21. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-21.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3511, '20. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-20.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3512, '19. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-19.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3513, '18. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-18.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3514, '17. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-17.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3515, '16. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-16.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3516, '15. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-15.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3517, '14. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-14.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3518, '13. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-13.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3519, '12. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-12.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3520, '11. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-11.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3521, '10. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-10.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3522, '9. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-9.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3523, '8. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-8.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3524, '7. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-7.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3525, '6. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-6.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3526, '5. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-5.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3527, '4. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-4.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3528, '3. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-3.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3529, '2. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-2.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3530, '1. Chợ Hoa Xuân TAO ĐÀN 2014', 'cho-hoa-xuan-tao-dan-2014-1.jpg', ',251,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3531, '26. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-26.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3532, '25. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-25.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3533, '24. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-24.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3534, '23. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-23.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3535, '22. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-22.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3536, '21. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-21.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3537, '20. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-20.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3538, '19. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-19.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3539, '18. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-18.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3540, '17. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-17.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3541, '16. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-16.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3542, '15. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-15.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3543, '14. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-14.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3544, '13. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-13.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3545, '12. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-12.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3546, '11. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-11.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3547, '10. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-10.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3548, '9. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-9.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3549, '8. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-8.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3550, '7. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-7.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3551, '6. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-6.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3552, '5. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-5.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3553, '4. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-4.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3554, '3. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-3.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3555, '2. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-2.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3556, '1. Hoa Xuân năm 2014', 'hoa-xuan-nam-2014-1.jpg', ',252,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_photo_gallery` VALUES (3557, 'Bếp Việt - Khóa 20 - 1', 'bếp việt khóa 20 - 1.jpg', ',203,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3558, 'Bếp Việt - Khóa 20 - 2', 'bếp việt khóa 20 - 2.jpg', ',203,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3559, 'Bếp Việt - Khóa 20 - 3', 'bếp việt khóa 20 - 3.jpg', ',203,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3560, 'Bếp Việt - Khóa 20 - 4', 'bếp việt khóa 20 - 4.jpg', ',203,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3561, 'Bếp Việt - Khóa 20 - 5', 'bếp việt khóa 20 - 5.jpg', ',203,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_photo_gallery` VALUES (3562, 'Bếp Việt - Khóa 20 - 6', 'bếp việt khóa 20 - 6.jpg', ',203,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_slider_banner`
-- 

CREATE TABLE `web_slider_banner` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) default NULL,
  `link` varchar(250) default NULL,
  `position_id` int(1) default NULL,
  `menu_id` varchar(100) NOT NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

-- 
-- Dumping data for table `web_slider_banner`
-- 

INSERT INTO `web_slider_banner` VALUES (1, 'Slider', 'slider.jpg', 'javascript:;', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', '', 0);
INSERT INTO `web_slider_banner` VALUES (2, 'Học viên trường NETSPACE', 'slider1.jpg', 'javascript:;', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', '', 0);
INSERT INTO `web_slider_banner` VALUES (3, 'Ký kết hợp tác với Evolution', 'slider2.jpg', 'javascript:;', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', '', 0);
INSERT INTO `web_slider_banner` VALUES (4, 'Kỷ lục gỏi cuốn', 'slider3.jpg', 'javascript:;', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', '', 0);
INSERT INTO `web_slider_banner` VALUES (5, 'Hiệu trưởng trường NETSPACE giao lưu cùng ban giám khảo chương trình Iron Chef Viet Nam', 'Hieu-Truong-Truong-Netspace-Giao-Luu-Cung-Ban-Giam-Khao-Chuong-Trinh-Iron-Chef-Viet-Nam.jpg', 'javascript:;', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', '', 0);
INSERT INTO `web_slider_banner` VALUES (6, 'Chương trình giao lưu với siêu đầu bếp David Thái', 'chuong-trinh-giao-luu-sieu-dau-bep-david-thai.jpg', 'javascript:;', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', '', 0);
INSERT INTO `web_slider_banner` VALUES (7, 'Lớp học barista', 'lop-barista.jpg', 'javascript:;', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (8, 'Mô hình kinh doanh thành công của Học viên Trường NETSPACE', 'mo-hinh-kinh-doanh-thanh-cong-cua-hoc-vien.jpg', 'javascript:;', 2, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (9, 'Dịch vụ tư vấn, setup Nhà hàng, quán cà phê, quán ăn', 'dich-vu-tu-van-setup-nha-hang-quan-an-quan-cafe.jpg', 'xem-tin/Dich-Vu-Tu-Van-Setup-Nha-Hang-Cafe-Karaoke-Bar-197.html', 2, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (10, 'Dạy nấu ăn Online', 'day-nau-an-online.jpg', 'javascript:;', 2, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (11, 'Thư viện học nấu ăn Trường dạy nghề ẩm thực NETSPACE', 'thu-vien-truong-netspace.jpg', 'http://www.dayamthuc.vn/thu-vien/', 2, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (12, 'Chi nhánh học nấu ăn Cần Thơ', 'banner-can-tho(1).gif', 'http://www.dayamthuc.vn/xem-tin/lop-hoc-nau-an-o-can-tho-314.html', 2, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (23, 'Netspace fuel the future flame', 'THAY LAP.jpg', 'javascript:;', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'chau', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (13, 'Chi nhánh học nấu ăn Đà Nẵng', 'chi-nhanh-da-nang.jpg', 'http://www.dayamthuc.vn/xem-tin/hoc-nau-an-o-da-nang-co-hoi-cho-cac-ban-tre-239.html', 2, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (14, 'Chương trình dã ngoại NETSPACE 18-07', 'da-ngoai-netspace-18-07.jpg', 'http://www.dayamthuc.vn/xem-tin/chuong-trinh-giao-luu-ngoai-khoa-18-07-2013-truong-am-thuc-netspace-264.html', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (15, 'Kichi Kichi', 'kichikichi.jpg', 'http://kichi.com.vn/', 3, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (16, 'Vietravel', 'viettravel.jpg', 'http://www.vietravel-vn.com/vn.aspx', 3, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (17, 'Mekong Long Thanh', 'long-thanh.jpg', 'javascript:void();', 3, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (18, 'Dìn Ký', 'dinky.jpg', 'http://www.dinky.com.vn/', 3, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (19, 'Simplex Pte Ltd', 'simplex.jpg', 'http://www.simplex.com.sg/', 3, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (20, 'Fanny Ice Cream', 'fanny.jpg', 'http://fannyicecream.wordpress.com/', 3, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (21, 'Vedan', 'vedan.jpg', 'http://www.vedan.com.vn/', 3, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (22, 'Hội đầu bếp chuyên nghiệp Sài Gòn', 'hoi-dau-bep-01.jpg', 'http://www.vietnamchefs.com/', 3, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_slider_banner` VALUES (24, 'Chương trình từ thiện - Trung Thu sẻ chia nụ cười', 'TRUNG THU.jpg', 'http://www.dayamthuc.vn/xem-tin/chuong-trinh-tu-thien-trung-thu-se-chia-nu-cuoi-291.html', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'chau', 'chau', 0);
INSERT INTO `web_slider_banner` VALUES (25, 'Chương Trình Đào Tạo Phụ Bếp Miễn Phí', 'dao-tao-phu -bep-mien-phi.jpg', 'http://www.dayamthuc.vn/xem-tin/thong-bao-chuong-trinh-dao-tao-phu-bep-mien-phi-2013-329.html', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'chau', 'admin', 1);
INSERT INTO `web_slider_banner` VALUES (26, 'day am thuc', '1.swf', 'http://www.dayamthuc.vn/', 2, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 1);
INSERT INTO `web_slider_banner` VALUES (27, 'Chương Trình Đào Tạo Phụ Bếp Miễn Phí', 'dao-tao-phu -bep-mien-phi.jpg', 'http://www.dayamthuc.vn/xem-tin/thong-bao-chuong-trinh-dao-tao-phu-bep-mien-phi-2013-329.html', 1, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'chau', 0);
INSERT INTO `web_slider_banner` VALUES (28, 'Chương Trình Đào Tạo Phụ Bếp Miễn Phí', 'phu-bep-mien-phi.gif', 'http://www.dayamthuc.vn/xem-tin/thong-bao-chuong-trinh-dao-tao-phu-bep-mien-phi-2013-329.html', 2, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 1);
INSERT INTO `web_slider_banner` VALUES (29, 'Găng tay thực phẩm', 'gang-tay-thuc-pham.jpg', 'http://www.leyenanh.com', 3, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 0);
INSERT INTO `web_slider_banner` VALUES (30, 'Thông tin học nấu ăn', 'Untitled-1-01.gif', 'http://www.dayamthuc.vn/danh-muc/Thong-Tin-Hoc-Nau-An-6-1.html', 2, '', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', 'admin', 1);
INSERT INTO `web_slider_banner` VALUES (31, 'Slider Home', 'slider.jpg', 'javascript:;', 1, ',1,', 'vi', 1, '0000-00-00 00:00:00', NULL, 'admin', NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_slider_banner_position`
-- 

CREATE TABLE `web_slider_banner_position` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `web_slider_banner_position`
-- 

INSERT INTO `web_slider_banner_position` VALUES (1, 'Slider 960x280 px', 1);
INSERT INTO `web_slider_banner_position` VALUES (2, 'Right width:265px', 1);
INSERT INTO `web_slider_banner_position` VALUES (3, 'Đối tác 200x120 px', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_users`
-- 

CREATE TABLE `web_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` tinyint(1) NOT NULL default '1',
  `url_hinh` varchar(150) NOT NULL,
  `ngaydangky` datetime NOT NULL,
  `salt` varchar(3) NOT NULL,
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `quyen_xem` varchar(100) NOT NULL,
  `quyen_action` varchar(100) NOT NULL,
  `group_id` int(1) NOT NULL default '0',
  `RandomKey` varchar(255) default NULL,
  `LoginNumber` int(11) default '0',
  `DisableDate` datetime default NULL,
  `Expiration` int(11) default NULL,
  `lang` varchar(3) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- 
-- Dumping data for table `web_users`
-- 

INSERT INTO `web_users` VALUES (25, 'Admin', '', '', '', '0000-00-00', 1, '', '0000-00-00 00:00:00', '', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,', 1, NULL, 0, '2011-09-21 16:42:26', NULL, 'vi', 1, '2013-06-14 00:00:00', '2014-02-27 14:23:00', 'admin', 'admin', 0);
INSERT INTO `web_users` VALUES (27, 'Trần Nhân', '', '', '', '0000-00-00', 1, '', '0000-00-00 00:00:00', '', 'nhan', '25f9e794323b453885f5181f1b624d0b', ',1,15,', ',1,15,', 0, NULL, 0, NULL, NULL, 'vi', 1, '2014-03-05 15:48:32', '2014-03-05 15:58:57', 'admin', 'admin', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `web_users_group`
-- 

CREATE TABLE `web_users_group` (
  `id` int(2) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `web_users_group`
-- 

INSERT INTO `web_users_group` VALUES (1, 'Khách hàng');
INSERT INTO `web_users_group` VALUES (2, 'Thành viên');
INSERT INTO `web_users_group` VALUES (3, 'Quản trị website');

-- --------------------------------------------------------

-- 
-- Table structure for table `web_video`
-- 

CREATE TABLE `web_video` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) NOT NULL,
  `link` varchar(250) NOT NULL,
  `metaDescription` varchar(300) NOT NULL,
  `metaKeyword` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) default '0',
  `menu_id` varchar(20) default NULL,
  `lang` varchar(2) NOT NULL default 'vi',
  `status` tinyint(1) default '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime default NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) default NULL,
  `delete` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `web_video`
-- 

