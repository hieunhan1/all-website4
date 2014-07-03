-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2014 at 12:06 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `khaibaothue`
--

-- --------------------------------------------------------

--
-- Table structure for table `web_article`
--

CREATE TABLE IF NOT EXISTS `web_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
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

INSERT INTO `web_article` (`id`, `name`, `name_alias`, `url`, `url_hinh`, `metaDescription`, `metaKeyword`, `content`, `other`, `menu_id`, `lang`, `status`, `ngay_dang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Giới thiệu dịch vụ kế toán, khai báo thuế An Phát', 'gioi-thieu-dich-vu-ke-toan-khai-bao-thue-an-phat', '', '', 'Cung cấp dịch vụ tận nơi: Người nộp thuế chỉ cần đăng ký sử dụng dịch vụ, mọi thủ tục còn lại sẽ được Bkav chịu trách nhiệm thực hiện tại địa điểm của khách hàng mà không phải trả thêm phí.', 'giới thiệu dịch vụ kế toán khai báo thuế an phát,gioi thieu dich vu ke toan khai bao thue an phat', '<p><img alt="Giới thiệu dịch vụ kế toán, khai báo thuế An Phát" src="/all/khaibaothue/public/images/articles/gioi-thieu-dich-vu-ke-toan-khai-bao-thue-an-phat.gif" style="width: 235px; height: 136px; float: right; margin-left: 10px; margin-right: 10px;" /></p>\r\n\r\n<p style="text-align: justify;">Cung cấp dịch vụ tận nơi: Người nộp thuế chỉ cần đăng ký sử dụng dịch vụ, mọi thủ tục còn lại sẽ được Bkav chịu trách nhiệm thực hiện tại địa điểm của khách hàng mà không phải trả thêm phí.</p>\r\n\r\n<p style="text-align: justify;">Hỗ trợ cài đặt, hướng dẫn sử dụng: Người nộp thuế sẽ được hỗ trợ cài đặt, hướng dẫn sử dụng, đảm bảo kê khai thuế qua mạng thành công. Hỗ trợ giải quyết kịp thời các vướng mắc trong quá trình sử dụng.</p>\r\n\r\n<p style="text-align: justify;">Bảo mật thông tin: Các tờ khai, dữ liệu được bảo vệ nghiêm ngặt theo quy định của Cơ quan Thuế.</p>\r\n', 1, ',1,', 'vi', 1, '2014-05-29 15:00:00', '2014-05-29 09:35:29', '2014-07-03 11:46:29', 'admin', 'admin', 0),
(2, 'Dịch vụ khai báo thuế online', 'dich-vu-khai-bao-thue-online', 'dich-vu-ke-toan/dich-vu-khai-bao-thue-online.html', 'dich-vu.jpg', 'Người nộp thuế chỉ cần đăng ký sử dụng dịch vụ, mọi thủ tục còn lại sẽ được Bkav chịu trách nhiệm thực hiện tại địa điểm của khách hàng mà không phải trả thêm phí.', 'dịch vụ khai báo thuế online,dich vu khai bao thue online', '<p>Người nộp thuế chỉ cần đăng ký sử dụng dịch vụ, mọi thủ tục còn lại sẽ được Bkav chịu trách nhiệm thực hiện tại địa điểm của khách hàng mà không phải trả thêm phí.</p>\r\n', 1, ',7,', 'vi', 1, '2014-06-03 20:49:00', '2014-06-03 15:50:29', '2014-07-03 11:46:25', 'admin', 'admin', 0),
(3, 'Dịch vụ kiểm toán kế toán', 'dich-vu-kiem-toan-ke-toan', 'khai-bao-thue/dich-vu-kiem-toan-ke-toan.html', 'dich-vu.jpg', 'Người nộp thuế sẽ được hỗ trợ cài đặt, hướng dẫn sử dụng, đảm bảo kê khai thuế qua mạng thành công. Hỗ trợ giải quyết kịp thời các vướng mắc trong quá trình sử dụng.', 'dịch vụ kiểm toán kế toán,dich vu kiem toan ke toan', '<p>Người nộp thuế sẽ được hỗ trợ cài đặt, hướng dẫn sử dụng, đảm bảo kê khai thuế qua mạng thành công. Hỗ trợ giải quyết kịp thời các vướng mắc trong quá trình sử dụng.</p>\r\n', 1, ',7,', 'vi', 1, '2014-06-05 20:49:00', '2014-06-03 15:50:52', '2014-07-03 11:22:57', 'admin', 'admin', 0),
(4, 'Dịch vụ văn phòng đại diện', 'dich-vu-van-phong-dai-dien', 'khai-bao-thue/dich-vu-van-phong-dai-dien.html', 'dich-vu.jpg', 'Xác nhận nộp tờ khai từ Cơ quan Thuế qua tin nhắn điện thoại (SMS), hỗ trợ ký phân cấp theo vai trò của người sử dụng.', 'dịch vụ văn phòng đại diện,dich vu van phong dai dien', '<p>Xác nhận nộp tờ khai từ Cơ quan Thuế qua tin nhắn điện thoại (SMS), hỗ trợ ký phân cấp theo vai trò của người sử dụng.</p>\r\n', 1, ',7,', 'vi', 1, '2014-06-06 20:49:00', '2014-06-03 15:51:26', '2014-07-03 11:46:18', 'admin', 'admin', 0),
(5, 'Bảng báo cáo giá dịch vụ hỗ trợ kê khai cho doanh nghiệp', 'bang-bao-cao-gia-dich-vu-ho-tro-ke-khai-cho-doanh-nghiep', 'thong-tin-ke-toan-thue/bang-bao-cao-gia-dich-vu-ho-tro-ke-khai-cho-doanh-nghiep.html', '', 'Dưới đây chúng tôi xin gửi đến quý doanh nghiệp bảng báo giá dịch vụ hỗ trợ kê khai thuế qua mạng tháng 3/2014', 'bảng báo cáo giá dịch vụ hỗ trợ kê khai cho doanh nghiệp,bang bao cao gia dich vu ho tro ke khai cho doanh nghiep', '<p>Kính gửi quý doanh nghiệp!</p>\r\n\r\n<p>Dưới đây chúng tôi xin gửi đến quý doanh nghiệp bảng báo giá dịch vụ hỗ trợ kê khai thuế qua mạng tháng 3/2014. Đơn vị nào có nhu cầu đăng ký mới hoặc gia hạn dịch vụ vui lòng liên hệ với chúng tôi để được hỗ trợ sớm nhất, nhanh nhất và ưu đãi tốt nhất về giá cước cũng như chất lượng dịch vụ sau bán hàng.</p>\r\n', 1, ',14,', 'vi', 1, '2014-06-12 20:57:00', '2014-06-03 15:57:55', '2014-07-03 11:48:19', 'admin', 'admin', 0);

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
  `name` varchar(100) NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `domain` varchar(30) DEFAULT NULL,
  `max_limit_1` int(2) DEFAULT NULL,
  `max_limit_2` int(2) DEFAULT NULL,
  `max_limit_3` int(2) DEFAULT NULL,
  `max_limit_4` int(2) DEFAULT NULL,
  `copyright` varchar(250) DEFAULT NULL,
  `contact_foo` varchar(500) DEFAULT NULL,
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
(1, 'Dịch vụ kế toán - Khai báo thuế An Phát', 'vi', 'localhost/all/source_temp_v4', 10, 10, 10, 10, 'Copyright © 2014 by AN PHAT', '<p>Địa chỉ: Lô 32C/I, Đường 2G, KCN Vĩnh Lộc, Huyện Bình Chánh, TP. Hồ Chí Minh</p>\r\n\r\n<p>Điện thoại: (84 -8) 38550213 - 37652056 Fax: (84 -8) 38570352 - 37652055</p>\r\n\r\n<p>Email:&nbsp;contact@khaibaothue.net</p>\r\n', '', 'contact@khaibaothue.net', 'hieu_nhan1', '+84 988 388 388', '0988 388 388', 1, '2013-02-20 13:35:24', '2014-07-03 06:04:33', 'admin', 'admin', 0),
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
-- Table structure for table `web_ds_quanhuyen`
--

CREATE TABLE IF NOT EXISTS `web_ds_quanhuyen` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `phigiaohang` int(8) NOT NULL DEFAULT '0',
  `tinhthanh_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `order` int(3) DEFAULT '0',
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_update` datetime DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=901 ;

--
-- Dumping data for table `web_ds_quanhuyen`
--

INSERT INTO `web_ds_quanhuyen` (`id`, `name`, `phigiaohang`, `tinhthanh_id`, `status`, `order`, `lang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(127, 'Quận 1', 0, 3, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(128, 'Quận 2', 0, 3, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(129, 'Quận 3', 0, 3, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(130, 'Quận 4', 0, 3, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(131, 'Quận 5', 0, 3, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(132, 'Quận 6', 0, 3, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(133, 'Quận 7', 0, 3, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(134, 'Quận 8', 0, 3, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(135, 'Quận 9', 0, 3, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(136, 'Quận 10', 0, 3, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(137, 'Quận 11', 0, 3, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(138, 'Quận 12', 0, 3, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(139, 'Quận Phú Nhuận', 0, 3, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(140, 'Quận Bình Thạnh', 0, 3, 1, 14, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(141, 'Quận Tân Bình', 0, 3, 1, 15, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(142, 'Quận Tân Phú', 0, 3, 1, 16, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(143, 'Quận Gò Vấp', 0, 3, 1, 17, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(144, 'Quận Thủ Đức', 0, 3, 1, 18, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(145, 'Quận Bình Tân', 0, 3, 1, 19, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(146, 'Huyện Bình Chánh', 10000, 3, 1, 20, 'vi', '2014-06-25 00:00:00', '2014-06-25 05:14:17', 'admin', '0000-00-00 00:00:00', 0),
(147, 'Huyện Củ Chi', 0, 3, 1, 21, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(149, 'Huyện Nhà Bè', 0, 3, 1, 22, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(150, 'Huyện Cần Giờ', 0, 3, 1, 23, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(856, 'Huyện Hóc Môn', 5000, 3, 1, 24, 'vi', '2014-06-25 00:00:00', '2014-06-25 05:43:56', 'admin', '0000-00-00 00:00:00', 0),
(113, 'Từ Liêm', 0, 2, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(114, 'Thanh Trì', 0, 2, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(115, 'Sóc Sơn', 0, 2, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(116, 'Gia Lâm', 0, 2, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(117, 'Đông Anh', 0, 2, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(118, 'Long Biên', 0, 2, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(119, 'Hoàng Mai', 0, 2, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(120, 'Cầu Giấy', 0, 2, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(121, 'Tây Hồ', 0, 2, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(122, 'Thanh Xuân', 0, 2, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(123, 'Hai Bà Trưng', 0, 2, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(124, 'Đống Đa', 0, 2, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(125, 'Ba Đình', 0, 2, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(126, 'Hoàn Kiếm', 0, 2, 1, 14, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(450, 'Mê Linh', 0, 2, 1, 15, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(840, 'Vân Điền', 0, 2, 1, 16, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(857, 'Ba Vì', 0, 2, 1, 17, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(858, 'Chương Mỹ', 0, 2, 1, 18, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(859, 'Đan Phượng', 0, 2, 1, 19, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(860, 'Hà Đông', 0, 2, 1, 20, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(861, 'Hoài Đức', 0, 2, 1, 21, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(862, 'Mỹ Đức', 0, 2, 1, 22, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(863, 'Phú Xuyên', 0, 2, 1, 23, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(864, 'Phúc Thọ', 0, 2, 1, 24, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(865, 'Quốc Oai', 0, 2, 1, 25, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(866, 'Sơn Tây', 0, 2, 1, 26, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(867, 'Thạch Thất', 0, 2, 1, 27, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(868, 'Thanh Oai', 0, 2, 1, 28, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(869, 'Thường Tín', 0, 2, 1, 29, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(871, 'Ứng Hòa', 0, 2, 1, 30, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(626, 'Lục Yên', 0, 10, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(627, 'Mù Căng Chải', 0, 10, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(628, 'Trạm Tấu', 0, 10, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(629, 'Trấn Yên', 0, 10, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(630, 'Văn Chấn', 0, 10, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(631, 'Văn Yên', 0, 10, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(632, 'Yên Bái', 0, 10, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(633, 'Yên Bình', 0, 10, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(448, 'Bình Xuyên', 0, 11, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(449, 'Lập Thạch', 0, 11, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(451, 'Tam Dương', 0, 11, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(452, 'Vĩnh Tường', 0, 11, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(453, 'Vĩnh Yên', 0, 11, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(454, 'Yên Lạc', 0, 11, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(850, 'Phúc Yên', 0, 11, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(853, 'Tam Đảo', 0, 11, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(812, 'Bình Minh', 0, 12, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(813, 'Long Hồ', 0, 12, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(814, 'Mang Thít', 0, 12, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(815, 'Tam Bình', 0, 12, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(816, 'Trà Ôn', 0, 12, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(817, 'Vĩnh Long', 0, 12, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(818, 'Vũng Liêm', 0, 12, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(620, 'Chiêm Hóa', 0, 13, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(621, 'Hàm Yên', 0, 13, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(622, 'Na Hang', 0, 13, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(623, 'Sơn Dương', 0, 13, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(624, 'Tuyên Quang', 0, 13, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(625, 'Yên Sơn', 0, 13, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(440, 'Càng Long', 0, 14, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(441, 'Cầu Kè', 0, 14, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(442, 'Cầu Ngang', 0, 14, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(443, 'Châu Thành', 0, 14, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(444, 'Duyên Hải', 0, 14, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(445, 'Tiểu Cần', 0, 14, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(446, 'Trà Cú', 0, 14, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(447, 'Trà Vinh', 0, 14, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(803, 'Cái Bè', 0, 15, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(804, 'Cai Lậy', 0, 15, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(805, 'Châu Thành', 0, 15, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(806, 'Chợ Gạo', 0, 15, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(807, 'Gò Công', 0, 15, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(808, 'Gò Công Đông', 0, 15, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(809, 'Gò Công Tây', 0, 15, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(810, 'Mỹ Tho', 0, 15, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(811, 'Tân Phước', 0, 15, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(423, 'A Lưới', 0, 16, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(424, 'Huế', 0, 16, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(425, 'Hương Thủy', 0, 16, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(426, 'Hương Trà', 0, 16, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(427, 'Nam Đông', 0, 16, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(428, 'Phong Điền', 0, 16, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(429, 'Phú Lộc', 0, 16, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(430, 'Phú Vang', 0, 16, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(431, 'Quảng Điền', 0, 16, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(776, 'Bá Thước', 0, 17, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(777, 'Bỉm Sơn', 0, 17, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(778, 'Cẩm Thủy', 0, 17, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(779, 'Đông Sơn', 0, 17, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(780, 'Hà Trung', 0, 17, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(781, 'Hậu Lộc', 0, 17, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(782, 'Hoằng Hóa', 0, 17, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(783, 'Lang Chánh', 0, 17, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(784, 'Mường Lát', 0, 17, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(785, 'Nga Sơn', 0, 17, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(786, 'Ngọc Lặc', 0, 17, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(787, 'Như Thanh', 0, 17, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(788, 'Như Xuân', 0, 17, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(789, 'Nông Cống', 0, 17, 1, 14, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(790, 'Quan Hóa', 0, 17, 1, 15, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(791, 'Quan Sơn', 0, 17, 1, 16, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(792, 'Quảng Xương', 0, 17, 1, 17, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(793, 'Sầm Sơn', 0, 17, 1, 18, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(794, 'Thạch Thành', 0, 17, 1, 19, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(795, 'Thanh Hóa', 0, 17, 1, 20, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(796, 'Thọ Xuân', 0, 17, 1, 21, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(797, 'Thường Xuân', 0, 17, 1, 22, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(798, 'Tĩnh Gia', 0, 17, 1, 23, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(799, 'Thiệu Hóa', 0, 17, 1, 24, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(800, 'Triệu Sơn', 0, 17, 1, 25, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(801, 'Vĩnh Lộc', 0, 17, 1, 26, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(802, 'Yên Định', 0, 17, 1, 27, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(611, 'Đại Từ', 0, 18, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(612, 'Định Hóa', 0, 18, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(613, 'Đồng Hỷ', 0, 18, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(614, 'Phổ Yên', 0, 18, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(615, 'Phú Bình', 0, 18, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(616, 'Phú Lương', 0, 18, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(617, 'Sông Công', 0, 18, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(618, 'Thái Nguyên', 0, 18, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(619, 'Võ Nhai', 0, 18, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(432, 'Đông Hưng', 0, 19, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(433, 'Hưng Hà', 0, 19, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(434, 'Kiến Xương', 0, 19, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(435, 'Quỳnh Phụ', 0, 19, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(436, 'Thái Bình', 0, 19, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(437, 'Thái Thụy', 0, 19, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(438, 'Tiền Hải', 0, 19, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(439, 'Vũ Thư', 0, 19, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(602, 'Bến Cầu', 0, 21, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(603, 'Châu Thành', 0, 21, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(604, 'Dương Minh Châu', 0, 21, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(605, 'Gò Dầu', 0, 21, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(606, 'Hòa Thành', 0, 21, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(607, 'Tân Biên', 0, 21, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(608, 'Tân Châu', 0, 21, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(609, 'Tây Ninh', 0, 21, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(610, 'Trảng Bàng', 0, 21, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(766, 'Bắc Yên', 0, 22, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(767, 'Mai Sơn', 0, 22, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(768, 'Mộc Châu', 0, 22, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(769, 'Muờng La', 0, 22, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(770, 'Phù Yên', 0, 22, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(771, 'Quỳnh Nhai', 0, 22, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(772, 'Sơn La', 0, 22, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(773, 'Sông Mã', 0, 22, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(774, 'Thuận Châu', 0, 22, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(775, 'Yên Châu', 0, 22, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(874, 'Sốp Cộp', 0, 22, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(595, 'Kế Sách', 0, 23, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(596, 'Long Phú', 0, 23, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(597, 'Mỹ Tú', 0, 23, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(598, 'Mỹ Xuyên', 0, 23, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(599, 'Sóc Trăng', 0, 23, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(600, 'Thanh Trị', 0, 23, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(601, 'Vĩnh Châu', 0, 23, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(414, 'Cam Lộ', 0, 24, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(415, 'Đa Krông', 0, 24, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(416, 'Đông Hà', 0, 24, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(417, 'Gio Linh', 0, 24, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(418, 'Hải Lăng', 0, 24, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(419, 'Hướng Hóa', 0, 24, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(420, 'Quảng Trị', 0, 24, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(421, 'Triệu Phong', 0, 24, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(422, 'Vĩnh Linh', 0, 24, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(753, 'Ba Chế', 0, 25, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(754, 'Bình Liêu', 0, 25, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(755, 'Cẩm Phả', 0, 25, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(756, 'Cô Tô', 0, 25, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(757, 'Đông Triều', 0, 25, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(758, 'Hạ Long', 0, 25, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(759, 'Hoành Bồ', 0, 25, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(760, 'Móng Cái', 0, 25, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(761, 'Quảng Hà', 0, 25, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(762, 'Tiên Yên', 0, 25, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(763, 'Uông Bí', 0, 25, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(764, 'Vân Đồn', 0, 25, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(765, 'Yên Hưng', 0, 25, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(582, 'Ba Tơ', 0, 26, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(583, 'Bình Sơn', 0, 26, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(584, 'Đức Phổ', 0, 26, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(585, 'Lý Sơn', 0, 26, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(586, 'Minh Long', 0, 26, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(587, 'Mộ Đức', 0, 26, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(588, 'Nghĩa Hành', 0, 26, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(589, 'Quãng Ngãi', 0, 26, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(590, 'Sơn Hà', 0, 26, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(591, 'Sơn Tây', 0, 26, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(592, 'Sơn Tịnh', 0, 26, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(593, 'Trà Bồng', 0, 26, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(594, 'Tư Nghĩa', 0, 26, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(400, 'Đại Lộc', 0, 27, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(401, 'Điện Bàn', 0, 27, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(402, 'Duy Xuyên', 0, 27, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(403, 'Hiên', 0, 27, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(404, 'Hiệp Đức', 0, 27, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(405, 'Hội An', 0, 27, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(406, 'Nam Giang', 0, 27, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(407, 'Núi Thành', 0, 27, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(408, 'Phước Sơn', 0, 27, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(409, 'Quế Sơn', 0, 27, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(410, 'Tam Kỳ', 0, 27, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(411, 'Thăng Bình', 0, 27, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(412, 'Tiên Phước', 0, 27, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(413, 'Trà My', 0, 27, 1, 14, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(747, 'Bố Trạch', 0, 28, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(748, 'Đồng Hới', 0, 28, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(749, 'Lệ Thủy', 0, 28, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(750, 'Quảng Ninh', 0, 28, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(751, 'Quảng Trạch', 0, 28, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(752, 'Tuyên Hóa', 0, 28, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(880, 'Minh Hóa', 0, 28, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(576, 'Đồng Xuân', 0, 29, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(577, 'Sơn Hòa', 0, 29, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(578, 'Sông Cầu', 0, 29, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(579, 'Sông Hinh', 0, 29, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(580, 'Tuy An', 0, 29, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(581, 'Tuy Hòa', 0, 29, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(877, 'Đông Hòa', 0, 29, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(878, 'Tây Hòa', 0, 29, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(879, 'Phú Hòa', 0, 29, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(388, 'Đoan Hùng', 0, 30, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(389, 'Hạ Hòa', 0, 30, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(390, 'Lâm Thao', 0, 30, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(391, 'Phù Ninh', 0, 30, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(392, 'Phú Thọ', 0, 30, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(393, 'Sông Thao', 0, 30, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(394, 'Tam Nông', 0, 30, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(395, 'Thanh Ba', 0, 30, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(396, 'Thanh Sơn', 0, 30, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(397, 'Thanh Thủy', 0, 30, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(398, 'Việt Trì', 0, 30, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(399, 'Yên Lập', 0, 30, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(875, 'Cẩm Khê', 0, 30, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(876, 'Tân Sơn', 0, 30, 1, 14, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(743, 'Ninh Hải', 0, 31, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(744, 'Ninh Phước', 0, 31, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(745, 'Ninh Sơn', 0, 31, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(746, 'Phan Rang - Tháp Chàm', 0, 31, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(568, 'Hoa Lư', 0, 32, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(569, 'Kim Sơn', 0, 32, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(571, 'Nho Quan', 0, 32, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(572, 'Ninh Bình', 0, 32, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(573, 'Tam Điệp', 0, 32, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(574, 'Yên Khánh', 0, 32, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(575, 'Yên Mô', 0, 32, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(872, 'Gia Viễn', 0, 32, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(369, 'Anh Sơn', 0, 33, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(370, 'Con Cuông', 0, 33, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(371, 'Cửa Lò', 0, 33, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(372, 'Diễn Châu', 0, 33, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(373, 'Đô Lương', 0, 33, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(374, 'Hưng Nguyên', 0, 33, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(375, 'Kỳ Sơn', 0, 33, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(376, 'Nam Đàn', 0, 33, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(377, 'Nghi Lộc', 0, 33, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(378, 'Nghĩa Đàn', 0, 33, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(379, 'Quế Phong', 0, 33, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(380, 'Quỳ Châu', 0, 33, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(381, 'Quỳ Hợp', 0, 33, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(382, 'Quỳnh Lưu', 0, 33, 1, 14, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(383, 'Tân Kỳ', 0, 33, 1, 15, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(384, 'Thanh Chương', 0, 33, 1, 16, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(385, 'Tương Dương', 0, 33, 1, 17, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(386, 'Vinh', 0, 33, 1, 18, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(387, 'Yên Thành', 0, 33, 1, 19, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(883, 'Thái Hòa', 0, 33, 1, 20, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(358, 'Giao Thủy', 0, 34, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(360, 'Hải Hậu', 0, 34, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(361, 'Mỹ Lộc', 0, 34, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(362, 'Nam Định', 0, 34, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(363, 'Nam Trực', 0, 34, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(364, 'Nghĩa Hưng', 0, 34, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(365, 'Trực Ninh', 0, 34, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(366, 'Vụ Bản', 0, 34, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(367, 'Xuân Trường', 0, 34, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(368, 'Ý Yên', 0, 34, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(341, 'Bến Lức', 0, 35, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(344, 'Cần Đước', 0, 35, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(345, 'Cần Giuộc', 0, 35, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(346, 'Châu Thành', 0, 35, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(347, 'Đức Hòa', 0, 35, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(348, 'Đức Huệ', 0, 35, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(349, 'Mộc Hóa', 0, 35, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(350, 'Tân An', 0, 35, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(351, 'Tân Hưng', 0, 35, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(352, 'Tân Thạnh', 0, 35, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(354, 'Tân Trụ', 0, 35, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(355, 'Thạnh Hóa', 0, 35, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(356, 'Thủ Thừa', 0, 35, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(357, 'Vĩnh Hưng', 0, 35, 1, 14, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(849, 'Liên Hưng', 0, 35, 1, 15, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(306, 'Bắc Hà', 0, 36, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(307, 'Bảo Thắng', 0, 36, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(308, 'Bảo Yên', 0, 36, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(309, 'Bát Xát', 0, 36, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(310, 'Cam Đường', 0, 36, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(311, 'Lào Cai', 0, 36, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(312, 'Mường Khương', 0, 36, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(313, 'Sa Pa', 0, 36, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(314, 'Than Uyên', 0, 36, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(315, 'Văn Bàn', 0, 36, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(316, 'Xi Ma Cai', 0, 36, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(328, 'Bắc Sơn', 0, 37, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(329, 'Bình Gia', 0, 37, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(330, 'Cao Lăng', 0, 37, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(331, 'Cao Lộc', 0, 37, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(332, 'Đình Lập', 0, 37, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(333, 'Hữu Lũng', 0, 37, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(334, 'Lạng Sơn', 0, 37, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(336, 'Lộc Bình', 0, 37, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(337, 'Tràng Định', 0, 37, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(342, 'Văn Lãng', 0, 37, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(343, 'Văn Quang', 0, 37, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(317, 'Bảo Lâm', 0, 38, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(318, 'Bảo Lộc', 0, 38, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(319, 'Cát Tiên', 0, 38, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(320, 'Đà Lạt', 0, 38, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(321, 'Đạ Tẻh', 0, 38, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(322, 'Đạ Huoai', 0, 38, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(323, 'Di Linh', 0, 38, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(324, 'Đơn Dương', 0, 38, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(325, 'Đức Trọng', 0, 38, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(326, 'Lạc Dương', 0, 38, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(327, 'Lâm Hà', 0, 38, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(296, 'Điện Biên', 0, 39, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(297, 'Điện Biên Đông', 0, 39, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(298, 'Điện Biên Phủ', 0, 39, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(299, 'Lai Châu', 0, 39, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(300, 'Mường Lay', 0, 39, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(301, 'Mường Tè', 0, 39, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(302, 'Phong Thổ', 0, 39, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(303, 'Sìn Hồ', 0, 39, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(304, 'Tủa Chùa', 0, 39, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(305, 'Tuần Giáo', 0, 39, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(290, 'Đắk Glei', 0, 40, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(291, 'Đắk Tô', 0, 40, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(292, 'Kon Plông', 0, 40, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(293, 'Kon Tum', 0, 40, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(294, 'Ngọc Hồi', 0, 40, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(295, 'Sa Thầy', 0, 40, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(715, 'Đắk Glei', 0, 40, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(716, 'Đắk Hà', 0, 40, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(717, 'Đắk Tô', 0, 40, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(718, 'Kon Plông', 0, 40, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(719, 'Kon Tum', 0, 40, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(720, 'Ngọc Hồi', 0, 40, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(721, 'Sa Thầy', 0, 40, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(277, 'An Biên', 0, 41, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(278, 'An Minh', 0, 41, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(279, 'Châu Thành', 0, 41, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(280, 'Gò Quao', 0, 41, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(281, 'Gồng Giềng', 0, 41, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(282, 'Hà Tiên', 0, 41, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(283, 'Hòn Đất', 0, 41, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(284, 'Kiên Hải', 0, 41, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(285, 'Phú Quốc', 0, 41, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(286, 'Rạch Giá', 0, 41, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(287, 'Tân Hiệp', 0, 41, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(288, 'Vĩnh Thuận', 0, 41, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(269, 'Nha Trang', 0, 42, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(270, 'Khánh Vĩnh', 0, 42, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(271, 'Diên Khánh', 0, 42, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(272, 'Ninh Hòa', 0, 42, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(273, 'Khánh Sơn', 0, 42, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(274, 'Cam Ranh', 0, 42, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(275, 'Trường Sa', 0, 42, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(276, 'Vạn Ninh', 0, 42, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(262, 'Ân Thi', 0, 43, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(263, 'Hưng Yên', 0, 43, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(264, 'Khoái Châu', 0, 43, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(265, 'Tiên Lữ', 0, 43, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(266, 'Văn Giang', 0, 43, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(267, 'Văn Lâm', 0, 43, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(268, 'Yên Mỹ', 0, 43, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(705, 'Ân Thi', 0, 43, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(706, 'Hưng Yên', 0, 43, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(707, 'Khoái Châu', 0, 43, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(708, 'Kim Động', 0, 43, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(709, 'Mỹ Hào', 0, 43, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(710, 'Phù Cừ', 0, 43, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(224, 'Đà Bắc', 0, 44, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(225, 'Hòa Bình', 0, 44, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(226, 'Kim Bôi', 0, 44, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(227, 'Kỳ Sơn', 0, 44, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(228, 'Lạc Sơn', 0, 44, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(229, 'Lạc Thủy', 0, 44, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(230, 'Lương Sơn', 0, 44, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(231, 'Mai Châu', 0, 44, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(232, 'Tân Lạc', 0, 44, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(233, 'Yên Thủy', 0, 44, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(873, 'Cao Phong', 0, 44, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(682, 'Châu Thành', 0, 45, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(683, 'Long Mỹ', 0, 45, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(685, 'Phụng Hiệp', 0, 45, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(687, 'Vị Thanh', 0, 45, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(688, 'Vị Thủy', 0, 45, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(890, 'Châu Thành A', 0, 45, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(891, 'Ngã Bảy', 0, 45, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(234, 'Bình Giang', 0, 46, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(235, 'Cẩm Giàng', 0, 46, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(236, 'Chí Linh', 0, 46, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(238, 'Gia Lộc', 0, 46, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(239, 'Hải Dương', 0, 46, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(241, 'Kim Thành', 0, 46, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(242, 'Nam Sách', 0, 46, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(243, 'Ninh Giang', 0, 46, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(244, 'Kinh Môn', 0, 46, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(245, 'Ninh Giang', 0, 46, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(246, 'Thanh Hà', 0, 46, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(247, 'Thanh Miện', 0, 46, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(248, 'Từ Kỳ', 0, 46, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(214, 'Cẩm Xuyên', 0, 47, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(215, 'Can Lộc', 0, 47, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(216, 'Đức Thọ', 0, 47, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(217, 'Hà Tĩnh', 0, 47, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(218, 'Hồng Lĩnh', 0, 47, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(219, 'Hương Khê', 0, 47, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(220, 'Hương Sơn', 0, 47, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(221, 'Kỳ Anh', 0, 47, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(222, 'Nghi Xuân', 0, 47, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(223, 'Thạch Hà', 0, 47, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(881, 'Vũ Quang', 0, 47, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(882, 'Lộc Hà', 0, 47, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(689, 'Bình Lục', 0, 49, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(690, 'Duy Tiên', 0, 49, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(691, 'Kim Bảng', 0, 49, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(692, 'Lý Nhân', 0, 49, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(693, 'Phủ Lý', 0, 49, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(694, 'Thanh Liêm', 0, 49, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(498, 'Bắc Mê', 0, 50, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(499, 'Bắc Quang', 0, 50, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(500, 'Đồng Văn', 0, 50, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(501, 'Hà Giang', 0, 50, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(502, 'Hoàng Su Phì', 0, 50, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(503, 'Mèo Vạt', 0, 50, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(504, 'Quản Bạ', 0, 50, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(505, 'Vị Xuyên', 0, 50, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(506, 'Xín Mần', 0, 50, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(507, 'Yên Minh', 0, 50, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(187, 'An Khê', 0, 51, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(188, 'Ayun Pa ', 0, 51, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(189, 'Chư Păh', 0, 51, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(190, 'Chư Prông  ', 0, 51, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(191, 'Chư Sê ', 0, 51, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(192, 'Đức Cơ  ', 0, 51, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(193, 'KBang  ', 0, 51, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(194, 'Krông Chro', 0, 51, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(195, 'Krông Pa ', 0, 51, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(196, 'La Grai  ', 0, 51, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(197, 'Mang Yang ', 0, 51, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(198, 'Pleiku', 0, 51, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(826, 'Cao Lãnh', 0, 52, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(827, 'Châu Thành', 0, 52, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(828, 'Hồng Ngự', 0, 52, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(829, 'Lai Vung', 0, 52, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(830, 'Lấp Vò', 0, 52, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(831, 'Tam Nông', 0, 52, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(832, 'Tân Hồng', 0, 52, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(833, 'Thanh Bình', 0, 52, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(834, 'Tháp Mười', 0, 52, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(835, 'Xa Đéc', 0, 52, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(634, 'Biên Hòa', 0, 53, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(635, 'Định Quán', 0, 53, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(636, 'Long Khánh', 0, 53, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(637, 'Long Thành', 0, 53, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(638, 'Nhơn Trạch', 0, 53, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(639, 'Tân Phú', 0, 53, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(640, 'Thống Nhất', 0, 53, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(641, 'Vĩnh Cừu', 0, 53, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(642, 'Xuân Lộc', 0, 53, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(838, 'Trảng Bom', 0, 53, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(455, 'Buôn Đôn', 0, 56, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(456, 'Buôn Ma Thuột', 0, 56, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(457, 'Cư Jút', 0, 56, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(458, 'Cư M''gar', 0, 56, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(459, 'Đắk Mil', 0, 56, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(460, 'Đắk Nông', 0, 56, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(461, 'Đắk R''lấp', 0, 56, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(462, 'Ea H''leo', 0, 56, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(463, 'Ea Kra', 0, 56, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(464, 'Ea Súp', 0, 56, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(465, 'Krông A Na', 0, 56, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(466, 'Krông Bông', 0, 56, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(467, 'Krông Búk', 0, 56, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(468, 'Krông Năng', 0, 56, 1, 14, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(469, 'Krông Nô', 0, 56, 1, 15, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(470, 'Krông Pắc', 0, 56, 1, 16, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(471, 'Lắk', 0, 56, 1, 17, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(472, 'M''Đrắt', 0, 56, 1, 18, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(176, 'Bảo Lạc', 0, 57, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(177, 'Cao Bắng', 0, 57, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(178, 'Hạ Lang', 0, 57, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(179, 'Hà Quảng', 0, 57, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(180, 'Hòa An', 0, 57, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(181, 'Nguyên Bình', 0, 57, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(182, 'Quảng Hòa', 0, 57, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(183, 'Thạch An', 0, 57, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(184, 'Thông Nông', 0, 57, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(185, 'Trà Lĩnh', 0, 57, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(186, 'Trùng Khánh', 0, 57, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(491, 'Cà Mau', 0, 58, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(492, 'Cái Nước', 0, 58, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(493, 'Đầm Dơi', 0, 58, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(494, 'Ngọc Hiển', 0, 58, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(495, 'Thới Bình', 0, 58, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(496, 'Trần Văn Thời', 0, 58, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(497, 'U Minh', 0, 58, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(887, 'Năm Căn', 0, 58, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(888, 'Phú Tân', 0, 58, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(654, 'Bắc Bình', 0, 59, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(655, 'Đức Linh', 0, 59, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(656, 'Hàm Tân', 0, 59, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(657, 'Hàm Thuận Bắc', 0, 59, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(658, 'Hàm Thuận Nam', 0, 59, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(659, 'Phan Thiết', 0, 59, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(660, 'Phú Quí', 0, 59, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(661, 'Tánh Linh', 0, 59, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(662, 'Tuy Phong', 0, 59, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(897, 'La Gi', 0, 59, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(836, 'Bình Long', 0, 60, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(839, 'Phước Long', 0, 60, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(851, 'Bù Ðăng', 0, 60, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(852, 'Chơn Thành', 0, 60, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(473, 'Bến Cát', 0, 61, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(474, 'Dầu Tiếng', 0, 61, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(475, 'Dĩ An', 0, 61, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(476, 'Tân Uyên', 0, 61, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(477, 'Thủ Dầu Một', 0, 61, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(478, 'Thuận An', 0, 61, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(841, 'Lái Thiêu', 0, 61, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(896, 'Phú Giáo', 0, 61, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(158, 'An Lão', 0, 62, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(159, 'An Nhơn', 0, 62, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(160, 'Hoài Ân', 0, 62, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(161, 'Hoài Nhơn', 0, 62, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(162, 'Phù Cát', 0, 62, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(163, 'Phù Mỹ', 0, 62, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(164, 'Qui Nhơn', 0, 62, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(165, 'Tây Sơn', 0, 62, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(166, 'Tuy Phước', 0, 62, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(167, 'Vân Canh', 0, 62, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(168, 'Vĩnh Thạnh', 0, 62, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(673, 'Ba Tri', 0, 63, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(674, 'Bến Tre', 0, 63, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(675, 'Bình Đại', 0, 63, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(676, 'Châu Thành', 0, 63, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(677, 'Chợ Lách', 0, 63, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(678, 'Giồng Trôm', 0, 63, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(679, 'Mỏ Cày', 0, 63, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(680, 'Thạnh Phú', 0, 63, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(483, 'Bắc Ninh', 0, 64, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(484, 'Gia Bình', 0, 64, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(485, 'Lương Tài', 0, 64, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(486, 'Quế Võ', 0, 64, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0);
INSERT INTO `web_ds_quanhuyen` (`id`, `name`, `phigiaohang`, `tinhthanh_id`, `status`, `order`, `lang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(487, 'Thuận Thành', 0, 64, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(488, 'Tiên Du', 0, 64, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(489, 'Từ Sơn', 0, 64, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(490, 'Yên Phong', 0, 64, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(479, 'Bạc Liêu', 0, 65, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(480, 'Giá Rai', 0, 65, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(481, 'Hồng Dân', 0, 65, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(482, 'Vĩnh Lợi', 0, 65, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(884, 'Phước Long', 0, 65, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(885, 'Đông Hải', 0, 65, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(886, 'Hòa Bình', 0, 65, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(169, 'Ba Bể', 0, 66, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(170, 'Bắc Kạn', 0, 66, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(171, 'Bạch Thông ', 0, 66, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(172, 'Chợ Đồn', 0, 66, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(173, 'Chợ Mới', 0, 66, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(174, 'Na Rì', 0, 66, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(175, 'Ngân Sơn', 0, 66, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(663, 'Bắc Giang', 0, 67, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(664, 'Hiệp Hòa', 0, 67, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(665, 'Lạng Giang', 0, 67, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(666, 'Lục Nam', 0, 67, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(667, 'Lục Ngạn', 0, 67, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(668, 'Sơn Động', 0, 67, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(669, 'Tân Yên', 0, 67, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(670, 'Việt Yên', 0, 67, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(671, 'Yên Dũng', 0, 67, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(672, 'Yên Thế', 0, 67, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(151, 'Bà Rịa', 0, 68, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(152, 'Châu Đất', 0, 68, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(153, 'Côn Đảo', 0, 68, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(154, 'Long Đất', 0, 68, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(155, 'Tân Thành', 0, 68, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(156, 'Vũng Tàu', 0, 68, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(157, 'Xuyên Mộc', 0, 68, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(898, 'Long Điền', 0, 68, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(899, 'Đất Đỏ', 0, 68, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(643, 'An Phú', 0, 69, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(644, 'Châu Đốc', 0, 69, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(645, 'Châu Phú', 0, 69, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(646, 'Châu Thành', 0, 69, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(647, 'Chợ Mới', 0, 69, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(648, 'Long Xuyên', 0, 69, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(649, 'Phú Tân', 0, 69, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(650, 'Tân Châu', 0, 69, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(651, 'Thoại Sơn', 0, 69, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(652, 'Tịnh Biên', 0, 69, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(653, 'Tri Tôn', 0, 69, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(249, 'An Hải', 0, 70, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(250, 'An Lão', 0, 70, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(251, 'Bạch Long Vỹ', 0, 70, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(253, 'Đồ Sơn', 0, 70, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(254, 'Hồng Bàng', 0, 70, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(255, 'Kiến An', 0, 70, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(256, 'Kiến Thụy', 0, 70, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(257, 'Lê Chân', 0, 70, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(258, 'Ngô Quyền', 0, 70, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(259, 'Thủy Nguyên', 0, 70, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(260, 'Tiên Lãng', 0, 70, 1, 11, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(261, 'Vĩnh Bảo', 0, 70, 1, 12, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(854, 'Cát Bà', 0, 70, 1, 13, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(900, 'Dương Kinh', 0, 70, 1, 14, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(819, 'Đảo Hòang Sa', 0, 71, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(820, 'Hải Châu', 0, 71, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(821, 'Hòa Vang', 0, 71, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(822, 'Liên Chiểu', 0, 71, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(823, 'Ngũ Hành Sơn', 0, 71, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(824, 'Sơn Trà', 0, 71, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(825, 'Thanh Khê', 0, 71, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(844, 'Cẩm Lệ', 0, 71, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(681, 'Cần Thơ', 0, 72, 1, 1, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(684, 'Ô Môn', 0, 72, 1, 2, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(686, 'Thốt Nốt', 0, 72, 1, 3, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(837, 'Ninh Kiều', 0, 72, 1, 4, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(848, 'Cái Răng', 0, 72, 1, 5, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(855, 'Bình Thủy', 0, 72, 1, 6, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(892, 'Phong Điền', 0, 72, 1, 7, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(893, 'Cờ Đỏ', 0, 72, 1, 8, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(894, 'Thới Lai', 0, 72, 1, 9, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(895, 'Vĩnh Thạnh', 0, 72, 1, 10, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_ds_tinhthanh`
--

CREATE TABLE IF NOT EXISTS `web_ds_tinhthanh` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phigiaohang` int(8) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `order` int(2) DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(20) NOT NULL,
  `user_update` varchar(20) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_ds_tinhthanh`
--

INSERT INTO `web_ds_tinhthanh` (`id`, `name`, `phigiaohang`, `status`, `order`, `lang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(3, 'Hồ Chí Minh', 5000, 1, 1, 'vi', '2014-06-25 00:00:00', '2014-06-25 04:49:48', 'admin', 'admin', 0),
(2, 'Hà Nội', 30000, 1, 1, 'vi', '2014-06-25 00:00:00', '2014-06-25 04:49:23', 'admin', 'admin', 0),
(10, 'Yên Bái', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(11, 'Vĩnh Phúc', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(12, 'Vĩnh Long', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(13, 'Tuyên Quang', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(14, 'Trà Vinh', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(15, 'Tiền Giang', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(16, 'Thừa Thiên Huế', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(17, 'Thanh Hóa', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(18, 'Thái Nguyên', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(19, 'Thái Bình', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(21, 'Tây Ninh', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(22, 'Sơn La', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(23, 'Sóc Trăng', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(24, 'Quảng Trị', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(25, 'Quảng Ninh', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(26, 'Quảng Ngãi', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(27, 'Quảng Nam', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(28, 'Quảng Bình', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(29, 'Phú Yên', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(30, 'Phú Thọ', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(31, 'Ninh Thuận', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(32, 'Ninh Bình', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(33, 'Nghệ An', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(34, 'Nam Định', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(35, 'Long An', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(36, 'Lào Cai', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(37, 'Lạng Sơn', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(38, 'Lâm Đồng', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(39, 'Lai Châu', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(40, 'Kon Tum', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(41, 'Kiên Giang', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(42, 'Khánh Hòa', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(43, 'Hưng Yên', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(44, 'Hòa Bình', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(45, 'Hậu Giang', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(46, 'Hải Dương', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(47, 'Hà Tĩnh', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(49, 'Hà Nam ', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(50, 'Hà Giang', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(51, 'Gia Lai', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(52, 'Đồng Tháp', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(53, 'Đồng Nai', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(54, 'Điện Biên', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(55, 'Đắk Nông', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(56, 'Đắk Lắk', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(57, 'Cao Bằng', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(58, 'Cà Mau', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(59, 'Bình Thuận', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(60, 'Bình Phước', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(61, 'Bình Dương', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(62, 'Bình Định', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(63, 'Bến Tre', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(64, 'Bắc Ninh', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(65, 'Bạc Liêu', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(66, 'Bắc Kạn', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(67, 'Bắc Giang', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(68, 'Bà Rịa - Vũng Tàu', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(69, 'An Giang', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(70, 'Hải Phòng', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(71, 'Đà Nẵng', 0, 1, 0, 'vi', '2014-06-25 00:00:00', NULL, 'admin', NULL, 0),
(72, 'Cần Thơ', 25000, 1, 0, 'vi', '2014-06-25 00:00:00', '2014-06-25 05:13:51', 'admin', 'admin', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `web_menu`
--

INSERT INTO `web_menu` (`id`, `name`, `name_alias`, `url`, `url_hinh`, `title`, `metaDescription`, `metaKeyword`, `parent_id`, `type_id`, `position_id`, `order`, `other`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trang chủ', 'trang-chu', '', '', 'Title trang chủ', 'Des trang chủ', 'key trang chủ', 0, 1, ',2,', 1, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-07-03 05:45:44', 'admin', 'admin', 0),
(2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', 'Giới thiệu', 'Giới thiệu', 'giới thiệu,gioi thieu', 0, 2, ',2,', 2, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-07-03 05:50:03', 'admin', 'admin', 0),
(3, 'Tầm nhìn', 'tam-nhin', 'tam-nhin/', '', 'Tầm nhìn', 'Tầm nhìn', 'Tầm nhìn', 16, 2, ',2,', 1, 0, 'vi', 0, '2014-05-29 00:00:00', '2014-07-03 05:52:52', 'admin', 'admin', 0),
(4, 'Sứ mệnh', 'su-menh', 'su-menh/', '', 'Sứ mệnh', 'Sứ mệnh', 'Sứ mệnh', 16, 2, ',2,', 1, 0, 'vi', 0, '2014-05-29 00:00:00', '2014-07-03 05:52:56', 'admin', 'admin', 0),
(5, 'Đối tác', 'doi-tac', 'doi-tac/', '', 'Đối tác', 'Đối tác', 'đối tác,doi tac', 16, 2, ',2,', 3, 0, 'vi', 0, '2014-05-29 00:00:00', '2014-07-03 05:53:00', 'admin', 'admin', 0),
(6, 'Báo cáo tài chính', 'bao-cao-tai-chinh', 'bao-cao-tai-chinh/', '', 'Báo cáo tài chính', 'Báo cáo tài chính', 'báo cáo tài chính,bao cao tai chinh', 0, 2, ',2,', 3, 0, 'vi', 1, '2014-05-30 10:19:14', '2014-07-03 05:50:11', 'admin', 'admin', 0),
(7, 'Dịch vụ kế toán', 'dich-vu-ke-toan', 'dich-vu-ke-toan/', '', 'Dịch vụ kế toán', 'Dịch vụ kế toán', 'dịch vụ kế toán,dich vu ke toan', 0, 4, ',2,', 4, 0, 'vi', 1, '2014-05-30 11:06:51', '2014-07-03 10:44:21', 'admin', 'admin', 0),
(8, 'Khai báo thuế', 'khai-bao-thue', 'khai-bao-thue/', '', 'Khai báo thuế', 'Khai báo thuế', 'khai báo thuế,khai bao thue', 0, 2, ',2,', 5, 0, 'vi', 1, '2014-05-30 11:07:21', '2014-07-03 05:50:38', 'admin', 'admin', 0),
(9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'liên hệ,lien he', 0, 13, ',2,', 8, 0, 'vi', 1, '2014-05-30 11:07:57', '2014-07-03 05:51:00', 'admin', 'admin', 0),
(10, 'Home', 'home', '/?lang=en', '', 'Home', 'Home', 'Home', 0, 1, ',2,', 1, 0, 'en', 1, '2014-06-14 05:12:47', '2014-06-14 05:15:41', 'admin', 'admin', 0),
(11, 'About US', 'about-us', 'about-us/', '', 'About US', 'About US', 'About US', 0, 2, ',2,', 2, 0, 'en', 1, '2014-06-14 05:15:37', NULL, 'admin', NULL, 0),
(12, 'Products', 'products', 'products/', '', 'Products', 'Products', 'Products', 0, 3, ',2,', 3, 0, 'en', 1, '2014-06-14 05:16:42', NULL, 'admin', NULL, 0),
(13, 'Phí dịch vụ', 'phi-dich-vu', 'phi-dich-vu/', '', 'Phí dịch vụ', 'Phí dịch vụ', 'phí dịch vụ,phi dich vu', 0, 2, ',2,', 6, 0, 'vi', 1, '2014-06-14 07:58:44', '2014-07-03 05:51:40', 'admin', 'admin', 0),
(14, 'Thông tin kế toán - Thuế', 'thong-tin-ke-toan-thue', 'thong-tin-ke-toan-thue/', '', 'Thông tin kế toán - Thuế', 'Thông tin kế toán - Thuế', 'thông tin kế toán thuế,thong tin ke toan thue', 0, 2, ',2,', 7, 1, 'vi', 1, '2014-06-14 08:00:30', '2014-07-03 11:32:49', 'admin', 'admin', 0),
(15, 'Võng chống muỗi', 'vong-chong-muoi', 'vong-chong-muoi/', 'icon-vong-chong-muoi.gif', 'Võng chống muỗi', 'Võng chống muỗi', 'võng chống muỗi,vong chong muoi', 16, 3, ',2,', 3, 1, 'vi', 0, '2014-06-14 08:00:56', '2014-07-03 05:53:05', 'admin', 'admin', 0),
(16, 'Đặt hàng', 'dat-hang', 'dat-hang/', '', 'Đặt hàng', 'Đặt hàng', 'đặt hàng,dat hang', 0, 7, ',9,', 100, 0, 'vi', 0, '2014-06-21 09:21:42', '2014-07-03 05:53:06', 'admin', 'admin', 0),
(17, 'Giỏ hàng', 'gio-hang', 'gio-hang/', '', 'Giỏ hàng', 'Giỏ hàng', 'giỏ hàng,gio hang', 16, 8, ',9,', 1, 0, 'vi', 0, '2014-06-23 06:41:50', '2014-07-03 05:53:04', 'admin', 'admin', 0),
(18, 'Thanh toán', 'thanh-toan', 'thanh-toan/', '', 'Thanh toán', 'Thanh toán', 'thanh toán,thanh toan', 16, 8, ',9,', 2, 0, 'vi', 0, '2014-06-23 06:43:12', '2014-07-03 05:53:04', 'admin', 'admin', 0);

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
(5, 'Sản phẩm', 'web_product', 'icon-product.jpg', 5, 0, 0, NULL),
(6, 'Thư viện ảnh', 'web_photo', 'icon-thu-vien-anh.jpg', 6, 0, 0, NULL),
(7, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 7, 0, 0, NULL),
(8, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 8, 1, 1, NULL),
(9, 'DS Tỉnh - Thành', 'web_ds_tinhthanh', 'icon-product.jpg', 9, 0, 0, NULL),
(10, 'DS Quận - Huyện', 'web_ds_quanhuyen', 'icon-register.jpg', 10, 0, 0, NULL),
(11, 'Đơn đặt hàng', 'web_product_order', 'icon-hoc-vien.jpg', 11, 0, 0, NULL),
(12, 'Đơn đặt hàng chi tiết', 'web_product_order_detail', 'icon-lien-he.jpg', 12, 0, 1, NULL),
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
(3, 'Sản phẩm', 3, 0),
(4, 'Dịch vụ', 4, 1),
(5, 'Hình ảnh', 5, 0),
(6, 'Video', 6, 0),
(7, 'Đặt hàng', 7, 0),
(8, 'Thanh toán', 8, 0),
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
  `masp` varchar(10) NOT NULL,
  `url` varchar(250) NOT NULL,
  `url_hinh` varchar(150) NOT NULL,
  `metaDescription` varchar(300) NOT NULL,
  `metaKeyword` varchar(250) NOT NULL,
  `giaban` int(7) NOT NULL,
  `giagoc` int(7) DEFAULT NULL,
  `content` text NOT NULL,
  `info_more` varchar(500) DEFAULT NULL,
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

INSERT INTO `web_product` (`id`, `name`, `name_alias`, `masp`, `url`, `url_hinh`, `metaDescription`, `metaKeyword`, `giaban`, `giagoc`, `content`, `info_more`, `other`, `menu_id`, `lang`, `status`, `ngay_dang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Mùng chống muỗi hình nón', 'mung-chong-muoi-hinh-non', 'MMHT-01', 'mung-chong-muoi/mung-chong-muoi-hinh-non.html', 'mung-chong-muoi.jpg', 'Mùng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.', 'mùng chống muỗi hình nón,mung chong muoi hinh non', 200000, 250000, '<p>Mùng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng. Mùng ChamCham rất hữu ích cho phòng chống lan truyền bệnh sốt rét, sốt xuất huyết, viêm não Nhật Bản B và các bệnh khác gây ra do côn trùng chích đốt giúp bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>Mùng Võng Rèm ChamCham đáp ứng nhu cầu sử dụng đa dạng trong nhà, ngoài trời, treo móc...</p>\r\n', '', 1, ',6,13,', 'vi', 1, '2014-06-14 14:11:00', '2014-06-14 09:13:15', '2014-06-25 12:35:51', 'admin', 'admin', 0),
(2, 'Mùng chống muỗi tam giác ba dây trắng', 'mung-chong-muoi-tam-giac-ba-day-trang', 'MMTG-01', 'mung-chong-muoi/mung-chong-muoi-tam-giac-ba-day-trang.html', 'mung-chong-muoi-tam-giac-ba-day-trang.jpg', 'Mùng chống muỗi tam giác ba dây trắng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.', 'mùng chống muỗi tam giác ba dây trắng,mung chong muoi tam giac ba day trang', 250000, 0, '<h2>Mùng chống muỗi tam giác ba dây trắng&nbsp;là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.</h2>\r\n\r\n<p>Mùng ChamCham rất hữu ích cho phòng chống lan truyền bệnh sốt rét, sốt xuất huyết, viêm não Nhật Bản B và các bệnh khác gây ra do côn trùng chích đốt giúp bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>Mùng Võng Rèm ChamCham đáp ứng nhu cầu sử dụng đa dạng trong nhà, ngoài trời, treo móc...</p>\r\n', '<p>Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng</p>\r\n\r\n<p>Giao hàng toàn quốc</p>\r\n', 1, ',6,13,', 'vi', 1, '2014-06-14 14:15:00', '2014-06-14 09:16:57', '2014-06-25 12:35:47', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_product_order`
--

CREATE TABLE IF NOT EXISTS `web_product_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `tinh_thanh` int(4) NOT NULL,
  `quan_huyen` int(5) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `tongtien` int(9) NOT NULL,
  `tongsoluong` int(4) NOT NULL,
  `phigiaohang` int(8) NOT NULL DEFAULT '0',
  `giamgia` int(8) NOT NULL DEFAULT '0',
  `thanhtien` int(8) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `web_product_order`
--

INSERT INTO `web_product_order` (`id`, `name`, `email`, `phone`, `tinh_thanh`, `quan_huyen`, `diachi`, `tongtien`, `tongsoluong`, `phigiaohang`, `giamgia`, `thanhtien`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(38, 'Nhan', 'hieunhan112@gmail.com', '01689373352', 3, 856, '118 3/2 Street, Ward Xuan Khanh, District Ninh Kieu, Can Tho City, Vietnam', 200000, 1, 10000, 0, 210000, 'vi', 0, '2014-06-25 11:05:10', '2014-06-25 11:05:10', 'khachhang', NULL, 0),
(37, 'Nhan 2', 'hieunhan112@gmail.com', '01689373352', 3, 127, '14 Lê Quý Đôn, phường 6, Quận 3, TP.HCM', 250000, 1, 5000, 0, 255000, 'vi', 0, '2014-06-25 10:25:59', '2014-06-25 10:30:15', 'khachhang', 'admin', 0),
(36, 'Nhân', 'hieunhan112@gmail.com', '0988 388 003', 3, 127, '1 CMT 8', 700000, 3, 5000, 0, 705000, 'vi', 0, '2014-06-25 10:11:37', '2014-06-25 10:11:37', 'khachhang', NULL, 0),
(39, 'Hieu', 'hieunhan112@gmail.com', '0897456321', 2, 114, '1 CMT 8', 200000, 1, 30000, 0, 230000, 'vi', 0, '2014-06-25 11:11:06', '2014-06-25 11:11:06', 'khachhang', NULL, 0),
(40, 'Hien', 'hieu_nhan1@yahoo.com', '0123456789', 2, 113, '1 Tu Liem Son', 200000, 1, 30000, 0, 230000, 'vi', 0, '2014-06-25 11:12:56', '2014-06-25 11:12:56', 'khachhang', NULL, 0),
(41, 'Nhan', 'hieunhan@yahoo.com', '0988 388 003', 3, 856, '123 cmt87', 450000, 2, 10000, 0, 460000, 'vi', 0, '2014-06-25 13:05:45', '2014-06-25 13:05:45', 'khachhang', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_product_order_detail`
--

CREATE TABLE IF NOT EXISTS `web_product_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `product_id` int(5) NOT NULL,
  `order_id` int(11) NOT NULL,
  `soluong` int(4) NOT NULL,
  `dongia` int(8) NOT NULL,
  `giamgia` int(8) NOT NULL DEFAULT '0',
  `tien` int(8) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `web_product_order_detail`
--

INSERT INTO `web_product_order_detail` (`id`, `name`, `product_id`, `order_id`, `soluong`, `dongia`, `giamgia`, `tien`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(3, 'Mùng chống muỗi tam giác ba dây trắng', 2, 36, 2, 250000, 0, 500000, 'vi', 1, '2014-06-25 10:11:37', '2014-06-25 10:27:47', 'khachhang', 'admin', 0),
(4, 'Mùng chống muỗi hình nón', 1, 36, 1, 200000, 0, 200000, 'vi', 1, '2014-06-25 10:11:37', '2014-06-25 10:22:01', 'khachhang', 'admin', 0),
(5, 'Mùng chống muỗi tam giác ba dây trắng', 2, 37, 1, 250000, 0, 250000, 'vi', 1, '2014-06-25 10:25:59', '2014-06-25 10:27:45', 'khachhang', 'admin', 0),
(6, 'Mùng chống muỗi hình nón', 1, 38, 1, 200000, 0, 200000, 'vi', 1, '2014-06-25 11:05:10', NULL, 'khachhang', NULL, 0),
(7, 'Mùng chống muỗi hình nón', 1, 39, 1, 200000, 0, 200000, 'vi', 1, '2014-06-25 11:11:06', NULL, 'khachhang', NULL, 0),
(8, 'Mùng chống muỗi hình nón', 1, 40, 1, 200000, 0, 200000, 'vi', 1, '2014-06-25 11:12:56', NULL, 'khachhang', NULL, 0),
(9, 'Mùng chống muỗi tam giác ba dây trắng', 2, 41, 1, 250000, 0, 250000, 'vi', 1, '2014-06-25 13:05:45', NULL, 'khachhang', NULL, 0),
(10, 'Mùng chống muỗi hình nón', 1, 41, 1, 200000, 0, 200000, 'vi', 1, '2014-06-25 13:05:45', NULL, 'khachhang', NULL, 0);

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
(1, 'Trang chủ', 'slider-home.jpg', 'javascript:;', 1, ',1,9,', 0, 'vi', 1, '2014-05-30 10:55:30', '2014-07-03 11:51:38', 'admin', 'admin', 0),
(2, 'VIETNAM POST', 'partner.gif', 'javascript:;', 3, ',', 0, 'vi', 1, '2014-05-31 05:46:04', '2014-07-03 11:51:33', 'admin', 'admin', 0);

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
(2, 'Right width:265px', 0),
(3, 'Đối tác 95x65 px', 1);

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
