-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2014 at 12:48 PM
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
-- Table structure for table `web_ds_quanhuyen`
--

CREATE TABLE IF NOT EXISTS `web_ds_quanhuyen` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `tinhthanh_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `order` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=901 ;

--
-- Dumping data for table `web_ds_quanhuyen`
--

INSERT INTO `web_ds_quanhuyen` (`id`, `name`, `tinhthanh_id`, `status`, `order`) VALUES
(127, 'Quận 1', 3, 1, 1),
(128, 'Quận 2', 3, 1, 2),
(129, 'Quận 3', 3, 1, 3),
(130, 'Quận 4', 3, 1, 4),
(131, 'Quận 5', 3, 1, 5),
(132, 'Quận 6', 3, 1, 6),
(133, 'Quận 7', 3, 1, 7),
(134, 'Quận 8', 3, 1, 8),
(135, 'Quận 9', 3, 1, 9),
(136, 'Quận 10', 3, 1, 10),
(137, 'Quận 11', 3, 1, 11),
(138, 'Quận 12', 3, 1, 12),
(139, 'Quận Phú Nhuận', 3, 1, 13),
(140, 'Quận Bình Thạnh', 3, 1, 14),
(141, 'Quận Tân Bình', 3, 1, 15),
(142, 'Quận Tân Phú', 3, 1, 16),
(143, 'Quận Gò Vấp', 3, 1, 17),
(144, 'Quận Thủ Đức', 3, 1, 18),
(145, 'Quận Bình Tân', 3, 1, 19),
(146, 'Huyện Bình Chánh', 3, 1, 20),
(147, 'Huyện Củ Chi', 3, 1, 21),
(149, 'Huyện Nhà Bè', 3, 1, 22),
(150, 'Huyện Cần Giờ', 3, 1, 23),
(856, 'Huyện Hóc Môn', 3, 1, 24),
(113, 'Từ Liêm', 2, 1, 1),
(114, 'Thanh Trì', 2, 1, 2),
(115, 'Sóc Sơn', 2, 1, 3),
(116, 'Gia Lâm', 2, 1, 4),
(117, 'Đông Anh', 2, 1, 5),
(118, 'Long Biên', 2, 1, 6),
(119, 'Hoàng Mai', 2, 1, 7),
(120, 'Cầu Giấy', 2, 1, 8),
(121, 'Tây Hồ', 2, 1, 9),
(122, 'Thanh Xuân', 2, 1, 10),
(123, 'Hai Bà Trưng', 2, 1, 11),
(124, 'Đống Đa', 2, 1, 12),
(125, 'Ba Đình', 2, 1, 13),
(126, 'Hoàn Kiếm', 2, 1, 14),
(450, 'Mê Linh', 2, 1, 15),
(840, 'Vân Điền', 2, 1, 16),
(857, 'Ba Vì', 2, 1, 17),
(858, 'Chương Mỹ', 2, 1, 18),
(859, 'Đan Phượng', 2, 1, 19),
(860, 'Hà Đông', 2, 1, 20),
(861, 'Hoài Đức', 2, 1, 21),
(862, 'Mỹ Đức', 2, 1, 22),
(863, 'Phú Xuyên', 2, 1, 23),
(864, 'Phúc Thọ', 2, 1, 24),
(865, 'Quốc Oai', 2, 1, 25),
(866, 'Sơn Tây', 2, 1, 26),
(867, 'Thạch Thất', 2, 1, 27),
(868, 'Thanh Oai', 2, 1, 28),
(869, 'Thường Tín', 2, 1, 29),
(871, 'Ứng Hòa', 2, 1, 30),
(626, 'Lục Yên', 10, 1, 1),
(627, 'Mù Căng Chải', 10, 1, 2),
(628, 'Trạm Tấu', 10, 1, 3),
(629, 'Trấn Yên', 10, 1, 4),
(630, 'Văn Chấn', 10, 1, 5),
(631, 'Văn Yên', 10, 1, 6),
(632, 'Yên Bái', 10, 1, 7),
(633, 'Yên Bình', 10, 1, 8),
(448, 'Bình Xuyên', 11, 1, 1),
(449, 'Lập Thạch', 11, 1, 2),
(451, 'Tam Dương', 11, 1, 3),
(452, 'Vĩnh Tường', 11, 1, 4),
(453, 'Vĩnh Yên', 11, 1, 5),
(454, 'Yên Lạc', 11, 1, 6),
(850, 'Phúc Yên', 11, 1, 7),
(853, 'Tam Đảo', 11, 1, 8),
(812, 'Bình Minh', 12, 1, 1),
(813, 'Long Hồ', 12, 1, 2),
(814, 'Mang Thít', 12, 1, 3),
(815, 'Tam Bình', 12, 1, 4),
(816, 'Trà Ôn', 12, 1, 5),
(817, 'Vĩnh Long', 12, 1, 6),
(818, 'Vũng Liêm', 12, 1, 7),
(620, 'Chiêm Hóa', 13, 1, 1),
(621, 'Hàm Yên', 13, 1, 2),
(622, 'Na Hang', 13, 1, 3),
(623, 'Sơn Dương', 13, 1, 4),
(624, 'Tuyên Quang', 13, 1, 5),
(625, 'Yên Sơn', 13, 1, 6),
(440, 'Càng Long', 14, 1, 1),
(441, 'Cầu Kè', 14, 1, 2),
(442, 'Cầu Ngang', 14, 1, 3),
(443, 'Châu Thành', 14, 1, 4),
(444, 'Duyên Hải', 14, 1, 5),
(445, 'Tiểu Cần', 14, 1, 6),
(446, 'Trà Cú', 14, 1, 7),
(447, 'Trà Vinh', 14, 1, 8),
(803, 'Cái Bè', 15, 1, 1),
(804, 'Cai Lậy', 15, 1, 2),
(805, 'Châu Thành', 15, 1, 3),
(806, 'Chợ Gạo', 15, 1, 4),
(807, 'Gò Công', 15, 1, 5),
(808, 'Gò Công Đông', 15, 1, 6),
(809, 'Gò Công Tây', 15, 1, 7),
(810, 'Mỹ Tho', 15, 1, 8),
(811, 'Tân Phước', 15, 1, 9),
(423, 'A Lưới', 16, 1, 1),
(424, 'Huế', 16, 1, 2),
(425, 'Hương Thủy', 16, 1, 3),
(426, 'Hương Trà', 16, 1, 4),
(427, 'Nam Đông', 16, 1, 5),
(428, 'Phong Điền', 16, 1, 6),
(429, 'Phú Lộc', 16, 1, 7),
(430, 'Phú Vang', 16, 1, 8),
(431, 'Quảng Điền', 16, 1, 9),
(776, 'Bá Thước', 17, 1, 1),
(777, 'Bỉm Sơn', 17, 1, 2),
(778, 'Cẩm Thủy', 17, 1, 3),
(779, 'Đông Sơn', 17, 1, 4),
(780, 'Hà Trung', 17, 1, 5),
(781, 'Hậu Lộc', 17, 1, 6),
(782, 'Hoằng Hóa', 17, 1, 7),
(783, 'Lang Chánh', 17, 1, 8),
(784, 'Mường Lát', 17, 1, 9),
(785, 'Nga Sơn', 17, 1, 10),
(786, 'Ngọc Lặc', 17, 1, 11),
(787, 'Như Thanh', 17, 1, 12),
(788, 'Như Xuân', 17, 1, 13),
(789, 'Nông Cống', 17, 1, 14),
(790, 'Quan Hóa', 17, 1, 15),
(791, 'Quan Sơn', 17, 1, 16),
(792, 'Quảng Xương', 17, 1, 17),
(793, 'Sầm Sơn', 17, 1, 18),
(794, 'Thạch Thành', 17, 1, 19),
(795, 'Thanh Hóa', 17, 1, 20),
(796, 'Thọ Xuân', 17, 1, 21),
(797, 'Thường Xuân', 17, 1, 22),
(798, 'Tĩnh Gia', 17, 1, 23),
(799, 'Thiệu Hóa', 17, 1, 24),
(800, 'Triệu Sơn', 17, 1, 25),
(801, 'Vĩnh Lộc', 17, 1, 26),
(802, 'Yên Định', 17, 1, 27),
(611, 'Đại Từ', 18, 1, 1),
(612, 'Định Hóa', 18, 1, 2),
(613, 'Đồng Hỷ', 18, 1, 3),
(614, 'Phổ Yên', 18, 1, 4),
(615, 'Phú Bình', 18, 1, 5),
(616, 'Phú Lương', 18, 1, 6),
(617, 'Sông Công', 18, 1, 7),
(618, 'Thái Nguyên', 18, 1, 8),
(619, 'Võ Nhai', 18, 1, 9),
(432, 'Đông Hưng', 19, 1, 1),
(433, 'Hưng Hà', 19, 1, 2),
(434, 'Kiến Xương', 19, 1, 3),
(435, 'Quỳnh Phụ', 19, 1, 4),
(436, 'Thái Bình', 19, 1, 5),
(437, 'Thái Thụy', 19, 1, 6),
(438, 'Tiền Hải', 19, 1, 7),
(439, 'Vũ Thư', 19, 1, 8),
(602, 'Bến Cầu', 21, 1, 1),
(603, 'Châu Thành', 21, 1, 2),
(604, 'Dương Minh Châu', 21, 1, 3),
(605, 'Gò Dầu', 21, 1, 4),
(606, 'Hòa Thành', 21, 1, 5),
(607, 'Tân Biên', 21, 1, 6),
(608, 'Tân Châu', 21, 1, 7),
(609, 'Tây Ninh', 21, 1, 8),
(610, 'Trảng Bàng', 21, 1, 9),
(766, 'Bắc Yên', 22, 1, 1),
(767, 'Mai Sơn', 22, 1, 2),
(768, 'Mộc Châu', 22, 1, 3),
(769, 'Muờng La', 22, 1, 4),
(770, 'Phù Yên', 22, 1, 5),
(771, 'Quỳnh Nhai', 22, 1, 6),
(772, 'Sơn La', 22, 1, 7),
(773, 'Sông Mã', 22, 1, 8),
(774, 'Thuận Châu', 22, 1, 9),
(775, 'Yên Châu', 22, 1, 10),
(874, 'Sốp Cộp', 22, 1, 11),
(595, 'Kế Sách', 23, 1, 1),
(596, 'Long Phú', 23, 1, 2),
(597, 'Mỹ Tú', 23, 1, 3),
(598, 'Mỹ Xuyên', 23, 1, 4),
(599, 'Sóc Trăng', 23, 1, 5),
(600, 'Thanh Trị', 23, 1, 6),
(601, 'Vĩnh Châu', 23, 1, 7),
(414, 'Cam Lộ', 24, 1, 1),
(415, 'Đa Krông', 24, 1, 2),
(416, 'Đông Hà', 24, 1, 3),
(417, 'Gio Linh', 24, 1, 4),
(418, 'Hải Lăng', 24, 1, 5),
(419, 'Hướng Hóa', 24, 1, 6),
(420, 'Quảng Trị', 24, 1, 7),
(421, 'Triệu Phong', 24, 1, 8),
(422, 'Vĩnh Linh', 24, 1, 9),
(753, 'Ba Chế', 25, 1, 1),
(754, 'Bình Liêu', 25, 1, 2),
(755, 'Cẩm Phả', 25, 1, 3),
(756, 'Cô Tô', 25, 1, 4),
(757, 'Đông Triều', 25, 1, 5),
(758, 'Hạ Long', 25, 1, 6),
(759, 'Hoành Bồ', 25, 1, 7),
(760, 'Móng Cái', 25, 1, 8),
(761, 'Quảng Hà', 25, 1, 9),
(762, 'Tiên Yên', 25, 1, 10),
(763, 'Uông Bí', 25, 1, 11),
(764, 'Vân Đồn', 25, 1, 12),
(765, 'Yên Hưng', 25, 1, 13),
(582, 'Ba Tơ', 26, 1, 1),
(583, 'Bình Sơn', 26, 1, 2),
(584, 'Đức Phổ', 26, 1, 3),
(585, 'Lý Sơn', 26, 1, 4),
(586, 'Minh Long', 26, 1, 5),
(587, 'Mộ Đức', 26, 1, 6),
(588, 'Nghĩa Hành', 26, 1, 7),
(589, 'Quãng Ngãi', 26, 1, 8),
(590, 'Sơn Hà', 26, 1, 9),
(591, 'Sơn Tây', 26, 1, 10),
(592, 'Sơn Tịnh', 26, 1, 11),
(593, 'Trà Bồng', 26, 1, 12),
(594, 'Tư Nghĩa', 26, 1, 13),
(400, 'Đại Lộc', 27, 1, 1),
(401, 'Điện Bàn', 27, 1, 2),
(402, 'Duy Xuyên', 27, 1, 3),
(403, 'Hiên', 27, 1, 4),
(404, 'Hiệp Đức', 27, 1, 5),
(405, 'Hội An', 27, 1, 6),
(406, 'Nam Giang', 27, 1, 7),
(407, 'Núi Thành', 27, 1, 8),
(408, 'Phước Sơn', 27, 1, 9),
(409, 'Quế Sơn', 27, 1, 10),
(410, 'Tam Kỳ', 27, 1, 11),
(411, 'Thăng Bình', 27, 1, 12),
(412, 'Tiên Phước', 27, 1, 13),
(413, 'Trà My', 27, 1, 14),
(747, 'Bố Trạch', 28, 1, 1),
(748, 'Đồng Hới', 28, 1, 2),
(749, 'Lệ Thủy', 28, 1, 3),
(750, 'Quảng Ninh', 28, 1, 4),
(751, 'Quảng Trạch', 28, 1, 5),
(752, 'Tuyên Hóa', 28, 1, 6),
(880, 'Minh Hóa', 28, 1, 7),
(576, 'Đồng Xuân', 29, 1, 1),
(577, 'Sơn Hòa', 29, 1, 2),
(578, 'Sông Cầu', 29, 1, 3),
(579, 'Sông Hinh', 29, 1, 4),
(580, 'Tuy An', 29, 1, 5),
(581, 'Tuy Hòa', 29, 1, 6),
(877, 'Đông Hòa', 29, 1, 7),
(878, 'Tây Hòa', 29, 1, 8),
(879, 'Phú Hòa', 29, 1, 9),
(388, 'Đoan Hùng', 30, 1, 1),
(389, 'Hạ Hòa', 30, 1, 2),
(390, 'Lâm Thao', 30, 1, 3),
(391, 'Phù Ninh', 30, 1, 4),
(392, 'Phú Thọ', 30, 1, 5),
(393, 'Sông Thao', 30, 1, 6),
(394, 'Tam Nông', 30, 1, 7),
(395, 'Thanh Ba', 30, 1, 8),
(396, 'Thanh Sơn', 30, 1, 9),
(397, 'Thanh Thủy', 30, 1, 10),
(398, 'Việt Trì', 30, 1, 11),
(399, 'Yên Lập', 30, 1, 12),
(875, 'Cẩm Khê', 30, 1, 13),
(876, 'Tân Sơn', 30, 1, 14),
(743, 'Ninh Hải', 31, 1, 1),
(744, 'Ninh Phước', 31, 1, 2),
(745, 'Ninh Sơn', 31, 1, 3),
(746, 'Phan Rang - Tháp Chàm', 31, 1, 4),
(568, 'Hoa Lư', 32, 1, 1),
(569, 'Kim Sơn', 32, 1, 2),
(571, 'Nho Quan', 32, 1, 3),
(572, 'Ninh Bình', 32, 1, 4),
(573, 'Tam Điệp', 32, 1, 5),
(574, 'Yên Khánh', 32, 1, 6),
(575, 'Yên Mô', 32, 1, 7),
(872, 'Gia Viễn', 32, 1, 8),
(369, 'Anh Sơn', 33, 1, 1),
(370, 'Con Cuông', 33, 1, 2),
(371, 'Cửa Lò', 33, 1, 3),
(372, 'Diễn Châu', 33, 1, 4),
(373, 'Đô Lương', 33, 1, 5),
(374, 'Hưng Nguyên', 33, 1, 6),
(375, 'Kỳ Sơn', 33, 1, 7),
(376, 'Nam Đàn', 33, 1, 8),
(377, 'Nghi Lộc', 33, 1, 9),
(378, 'Nghĩa Đàn', 33, 1, 10),
(379, 'Quế Phong', 33, 1, 11),
(380, 'Quỳ Châu', 33, 1, 12),
(381, 'Quỳ Hợp', 33, 1, 13),
(382, 'Quỳnh Lưu', 33, 1, 14),
(383, 'Tân Kỳ', 33, 1, 15),
(384, 'Thanh Chương', 33, 1, 16),
(385, 'Tương Dương', 33, 1, 17),
(386, 'Vinh', 33, 1, 18),
(387, 'Yên Thành', 33, 1, 19),
(883, 'Thái Hòa', 33, 1, 20),
(358, 'Giao Thủy', 34, 1, 1),
(360, 'Hải Hậu', 34, 1, 2),
(361, 'Mỹ Lộc', 34, 1, 3),
(362, 'Nam Định', 34, 1, 4),
(363, 'Nam Trực', 34, 1, 5),
(364, 'Nghĩa Hưng', 34, 1, 6),
(365, 'Trực Ninh', 34, 1, 7),
(366, 'Vụ Bản', 34, 1, 8),
(367, 'Xuân Trường', 34, 1, 9),
(368, 'Ý Yên', 34, 1, 10),
(341, 'Bến Lức', 35, 1, 1),
(344, 'Cần Đước', 35, 1, 2),
(345, 'Cần Giuộc', 35, 1, 3),
(346, 'Châu Thành', 35, 1, 4),
(347, 'Đức Hòa', 35, 1, 5),
(348, 'Đức Huệ', 35, 1, 6),
(349, 'Mộc Hóa', 35, 1, 7),
(350, 'Tân An', 35, 1, 8),
(351, 'Tân Hưng', 35, 1, 9),
(352, 'Tân Thạnh', 35, 1, 10),
(354, 'Tân Trụ', 35, 1, 11),
(355, 'Thạnh Hóa', 35, 1, 12),
(356, 'Thủ Thừa', 35, 1, 13),
(357, 'Vĩnh Hưng', 35, 1, 14),
(849, 'Liên Hưng', 35, 1, 15),
(306, 'Bắc Hà', 36, 1, 1),
(307, 'Bảo Thắng', 36, 1, 2),
(308, 'Bảo Yên', 36, 1, 3),
(309, 'Bát Xát', 36, 1, 4),
(310, 'Cam Đường', 36, 1, 5),
(311, 'Lào Cai', 36, 1, 6),
(312, 'Mường Khương', 36, 1, 7),
(313, 'Sa Pa', 36, 1, 8),
(314, 'Than Uyên', 36, 1, 9),
(315, 'Văn Bàn', 36, 1, 10),
(316, 'Xi Ma Cai', 36, 1, 11),
(328, 'Bắc Sơn', 37, 1, 1),
(329, 'Bình Gia', 37, 1, 2),
(330, 'Cao Lăng', 37, 1, 3),
(331, 'Cao Lộc', 37, 1, 4),
(332, 'Đình Lập', 37, 1, 5),
(333, 'Hữu Lũng', 37, 1, 6),
(334, 'Lạng Sơn', 37, 1, 7),
(336, 'Lộc Bình', 37, 1, 8),
(337, 'Tràng Định', 37, 1, 9),
(342, 'Văn Lãng', 37, 1, 10),
(343, 'Văn Quang', 37, 1, 11),
(317, 'Bảo Lâm', 38, 1, 1),
(318, 'Bảo Lộc', 38, 1, 2),
(319, 'Cát Tiên', 38, 1, 3),
(320, 'Đà Lạt', 38, 1, 4),
(321, 'Đạ Tẻh', 38, 1, 5),
(322, 'Đạ Huoai', 38, 1, 6),
(323, 'Di Linh', 38, 1, 7),
(324, 'Đơn Dương', 38, 1, 8),
(325, 'Đức Trọng', 38, 1, 9),
(326, 'Lạc Dương', 38, 1, 10),
(327, 'Lâm Hà', 38, 1, 11),
(296, 'Điện Biên', 39, 1, 1),
(297, 'Điện Biên Đông', 39, 1, 2),
(298, 'Điện Biên Phủ', 39, 1, 3),
(299, 'Lai Châu', 39, 1, 4),
(300, 'Mường Lay', 39, 1, 5),
(301, 'Mường Tè', 39, 1, 6),
(302, 'Phong Thổ', 39, 1, 7),
(303, 'Sìn Hồ', 39, 1, 8),
(304, 'Tủa Chùa', 39, 1, 9),
(305, 'Tuần Giáo', 39, 1, 10),
(290, 'Đắk Glei', 40, 1, 1),
(291, 'Đắk Tô', 40, 1, 2),
(292, 'Kon Plông', 40, 1, 3),
(293, 'Kon Tum', 40, 1, 4),
(294, 'Ngọc Hồi', 40, 1, 5),
(295, 'Sa Thầy', 40, 1, 6),
(715, 'Đắk Glei', 40, 1, 7),
(716, 'Đắk Hà', 40, 1, 8),
(717, 'Đắk Tô', 40, 1, 9),
(718, 'Kon Plông', 40, 1, 10),
(719, 'Kon Tum', 40, 1, 11),
(720, 'Ngọc Hồi', 40, 1, 12),
(721, 'Sa Thầy', 40, 1, 13),
(277, 'An Biên', 41, 1, 1),
(278, 'An Minh', 41, 1, 2),
(279, 'Châu Thành', 41, 1, 3),
(280, 'Gò Quao', 41, 1, 4),
(281, 'Gồng Giềng', 41, 1, 5),
(282, 'Hà Tiên', 41, 1, 6),
(283, 'Hòn Đất', 41, 1, 7),
(284, 'Kiên Hải', 41, 1, 8),
(285, 'Phú Quốc', 41, 1, 9),
(286, 'Rạch Giá', 41, 1, 10),
(287, 'Tân Hiệp', 41, 1, 11),
(288, 'Vĩnh Thuận', 41, 1, 12),
(269, 'Nha Trang', 42, 1, 1),
(270, 'Khánh Vĩnh', 42, 1, 2),
(271, 'Diên Khánh', 42, 1, 3),
(272, 'Ninh Hòa', 42, 1, 4),
(273, 'Khánh Sơn', 42, 1, 5),
(274, 'Cam Ranh', 42, 1, 6),
(275, 'Trường Sa', 42, 1, 7),
(276, 'Vạn Ninh', 42, 1, 8),
(262, 'Ân Thi', 43, 1, 1),
(263, 'Hưng Yên', 43, 1, 2),
(264, 'Khoái Châu', 43, 1, 3),
(265, 'Tiên Lữ', 43, 1, 4),
(266, 'Văn Giang', 43, 1, 5),
(267, 'Văn Lâm', 43, 1, 6),
(268, 'Yên Mỹ', 43, 1, 7),
(705, 'Ân Thi', 43, 1, 8),
(706, 'Hưng Yên', 43, 1, 9),
(707, 'Khoái Châu', 43, 1, 10),
(708, 'Kim Động', 43, 1, 11),
(709, 'Mỹ Hào', 43, 1, 12),
(710, 'Phù Cừ', 43, 1, 13),
(224, 'Đà Bắc', 44, 1, 1),
(225, 'Hòa Bình', 44, 1, 2),
(226, 'Kim Bôi', 44, 1, 3),
(227, 'Kỳ Sơn', 44, 1, 4),
(228, 'Lạc Sơn', 44, 1, 5),
(229, 'Lạc Thủy', 44, 1, 6),
(230, 'Lương Sơn', 44, 1, 7),
(231, 'Mai Châu', 44, 1, 8),
(232, 'Tân Lạc', 44, 1, 9),
(233, 'Yên Thủy', 44, 1, 10),
(873, 'Cao Phong', 44, 1, 11),
(682, 'Châu Thành', 45, 1, 1),
(683, 'Long Mỹ', 45, 1, 2),
(685, 'Phụng Hiệp', 45, 1, 3),
(687, 'Vị Thanh', 45, 1, 4),
(688, 'Vị Thủy', 45, 1, 5),
(890, 'Châu Thành A', 45, 1, 6),
(891, 'Ngã Bảy', 45, 1, 7),
(234, 'Bình Giang', 46, 1, 1),
(235, 'Cẩm Giàng', 46, 1, 2),
(236, 'Chí Linh', 46, 1, 3),
(238, 'Gia Lộc', 46, 1, 4),
(239, 'Hải Dương', 46, 1, 5),
(241, 'Kim Thành', 46, 1, 6),
(242, 'Nam Sách', 46, 1, 7),
(243, 'Ninh Giang', 46, 1, 8),
(244, 'Kinh Môn', 46, 1, 9),
(245, 'Ninh Giang', 46, 1, 10),
(246, 'Thanh Hà', 46, 1, 11),
(247, 'Thanh Miện', 46, 1, 12),
(248, 'Từ Kỳ', 46, 1, 13),
(214, 'Cẩm Xuyên', 47, 1, 1),
(215, 'Can Lộc', 47, 1, 2),
(216, 'Đức Thọ', 47, 1, 3),
(217, 'Hà Tĩnh', 47, 1, 4),
(218, 'Hồng Lĩnh', 47, 1, 5),
(219, 'Hương Khê', 47, 1, 6),
(220, 'Hương Sơn', 47, 1, 7),
(221, 'Kỳ Anh', 47, 1, 8),
(222, 'Nghi Xuân', 47, 1, 9),
(223, 'Thạch Hà', 47, 1, 10),
(881, 'Vũ Quang', 47, 1, 11),
(882, 'Lộc Hà', 47, 1, 12),
(689, 'Bình Lục', 49, 1, 1),
(690, 'Duy Tiên', 49, 1, 2),
(691, 'Kim Bảng', 49, 1, 3),
(692, 'Lý Nhân', 49, 1, 4),
(693, 'Phủ Lý', 49, 1, 5),
(694, 'Thanh Liêm', 49, 1, 6),
(498, 'Bắc Mê', 50, 1, 1),
(499, 'Bắc Quang', 50, 1, 2),
(500, 'Đồng Văn', 50, 1, 3),
(501, 'Hà Giang', 50, 1, 4),
(502, 'Hoàng Su Phì', 50, 1, 5),
(503, 'Mèo Vạt', 50, 1, 6),
(504, 'Quản Bạ', 50, 1, 7),
(505, 'Vị Xuyên', 50, 1, 8),
(506, 'Xín Mần', 50, 1, 9),
(507, 'Yên Minh', 50, 1, 10),
(187, 'An Khê', 51, 1, 1),
(188, 'Ayun Pa ', 51, 1, 2),
(189, 'Chư Păh', 51, 1, 3),
(190, 'Chư Prông  ', 51, 1, 4),
(191, 'Chư Sê ', 51, 1, 5),
(192, 'Đức Cơ  ', 51, 1, 6),
(193, 'KBang  ', 51, 1, 7),
(194, 'Krông Chro', 51, 1, 8),
(195, 'Krông Pa ', 51, 1, 9),
(196, 'La Grai  ', 51, 1, 10),
(197, 'Mang Yang ', 51, 1, 11),
(198, 'Pleiku', 51, 1, 12),
(826, 'Cao Lãnh', 52, 1, 1),
(827, 'Châu Thành', 52, 1, 2),
(828, 'Hồng Ngự', 52, 1, 3),
(829, 'Lai Vung', 52, 1, 4),
(830, 'Lấp Vò', 52, 1, 5),
(831, 'Tam Nông', 52, 1, 6),
(832, 'Tân Hồng', 52, 1, 7),
(833, 'Thanh Bình', 52, 1, 8),
(834, 'Tháp Mười', 52, 1, 9),
(835, 'Xa Đéc', 52, 1, 10),
(634, 'Biên Hòa', 53, 1, 1),
(635, 'Định Quán', 53, 1, 2),
(636, 'Long Khánh', 53, 1, 3),
(637, 'Long Thành', 53, 1, 4),
(638, 'Nhơn Trạch', 53, 1, 5),
(639, 'Tân Phú', 53, 1, 6),
(640, 'Thống Nhất', 53, 1, 7),
(641, 'Vĩnh Cừu', 53, 1, 8),
(642, 'Xuân Lộc', 53, 1, 9),
(838, 'Trảng Bom', 53, 1, 10),
(455, 'Buôn Đôn', 56, 1, 1),
(456, 'Buôn Ma Thuột', 56, 1, 2),
(457, 'Cư Jút', 56, 1, 3),
(458, 'Cư M''gar', 56, 1, 4),
(459, 'Đắk Mil', 56, 1, 5),
(460, 'Đắk Nông', 56, 1, 6),
(461, 'Đắk R''lấp', 56, 1, 7),
(462, 'Ea H''leo', 56, 1, 8),
(463, 'Ea Kra', 56, 1, 9),
(464, 'Ea Súp', 56, 1, 10),
(465, 'Krông A Na', 56, 1, 11),
(466, 'Krông Bông', 56, 1, 12),
(467, 'Krông Búk', 56, 1, 13),
(468, 'Krông Năng', 56, 1, 14),
(469, 'Krông Nô', 56, 1, 15),
(470, 'Krông Pắc', 56, 1, 16),
(471, 'Lắk', 56, 1, 17),
(472, 'M''Đrắt', 56, 1, 18),
(176, 'Bảo Lạc', 57, 1, 1),
(177, 'Cao Bắng', 57, 1, 2),
(178, 'Hạ Lang', 57, 1, 3),
(179, 'Hà Quảng', 57, 1, 4),
(180, 'Hòa An', 57, 1, 5),
(181, 'Nguyên Bình', 57, 1, 6),
(182, 'Quảng Hòa', 57, 1, 7),
(183, 'Thạch An', 57, 1, 8),
(184, 'Thông Nông', 57, 1, 9),
(185, 'Trà Lĩnh', 57, 1, 10),
(186, 'Trùng Khánh', 57, 1, 11),
(491, 'Cà Mau', 58, 1, 1),
(492, 'Cái Nước', 58, 1, 2),
(493, 'Đầm Dơi', 58, 1, 3),
(494, 'Ngọc Hiển', 58, 1, 4),
(495, 'Thới Bình', 58, 1, 5),
(496, 'Trần Văn Thời', 58, 1, 6),
(497, 'U Minh', 58, 1, 7),
(887, 'Năm Căn', 58, 1, 8),
(888, 'Phú Tân', 58, 1, 9),
(654, 'Bắc Bình', 59, 1, 1),
(655, 'Đức Linh', 59, 1, 2),
(656, 'Hàm Tân', 59, 1, 3),
(657, 'Hàm Thuận Bắc', 59, 1, 4),
(658, 'Hàm Thuận Nam', 59, 1, 5),
(659, 'Phan Thiết', 59, 1, 6),
(660, 'Phú Quí', 59, 1, 7),
(661, 'Tánh Linh', 59, 1, 8),
(662, 'Tuy Phong', 59, 1, 9),
(897, 'La Gi', 59, 1, 10),
(836, 'Bình Long', 60, 1, 1),
(839, 'Phước Long', 60, 1, 2),
(851, 'Bù Ðăng', 60, 1, 3),
(852, 'Chơn Thành', 60, 1, 4),
(473, 'Bến Cát', 61, 1, 1),
(474, 'Dầu Tiếng', 61, 1, 2),
(475, 'Dĩ An', 61, 1, 3),
(476, 'Tân Uyên', 61, 1, 4),
(477, 'Thủ Dầu Một', 61, 1, 5),
(478, 'Thuận An', 61, 1, 6),
(841, 'Lái Thiêu', 61, 1, 7),
(896, 'Phú Giáo', 61, 1, 8),
(158, 'An Lão', 62, 1, 1),
(159, 'An Nhơn', 62, 1, 2),
(160, 'Hoài Ân', 62, 1, 3),
(161, 'Hoài Nhơn', 62, 1, 4),
(162, 'Phù Cát', 62, 1, 5),
(163, 'Phù Mỹ', 62, 1, 6),
(164, 'Qui Nhơn', 62, 1, 7),
(165, 'Tây Sơn', 62, 1, 8),
(166, 'Tuy Phước', 62, 1, 9),
(167, 'Vân Canh', 62, 1, 10),
(168, 'Vĩnh Thạnh', 62, 1, 11),
(673, 'Ba Tri', 63, 1, 1),
(674, 'Bến Tre', 63, 1, 2),
(675, 'Bình Đại', 63, 1, 3),
(676, 'Châu Thành', 63, 1, 4),
(677, 'Chợ Lách', 63, 1, 5),
(678, 'Giồng Trôm', 63, 1, 6),
(679, 'Mỏ Cày', 63, 1, 7),
(680, 'Thạnh Phú', 63, 1, 8),
(483, 'Bắc Ninh', 64, 1, 1),
(484, 'Gia Bình', 64, 1, 2),
(485, 'Lương Tài', 64, 1, 3),
(486, 'Quế Võ', 64, 1, 4),
(487, 'Thuận Thành', 64, 1, 5),
(488, 'Tiên Du', 64, 1, 6),
(489, 'Từ Sơn', 64, 1, 7),
(490, 'Yên Phong', 64, 1, 8),
(479, 'Bạc Liêu', 65, 1, 1),
(480, 'Giá Rai', 65, 1, 2),
(481, 'Hồng Dân', 65, 1, 3),
(482, 'Vĩnh Lợi', 65, 1, 4),
(884, 'Phước Long', 65, 1, 5),
(885, 'Đông Hải', 65, 1, 6),
(886, 'Hòa Bình', 65, 1, 7),
(169, 'Ba Bể', 66, 1, 1),
(170, 'Bắc Kạn', 66, 1, 2),
(171, 'Bạch Thông ', 66, 1, 3),
(172, 'Chợ Đồn', 66, 1, 4),
(173, 'Chợ Mới', 66, 1, 5),
(174, 'Na Rì', 66, 1, 6),
(175, 'Ngân Sơn', 66, 1, 7),
(663, 'Bắc Giang', 67, 1, 1),
(664, 'Hiệp Hòa', 67, 1, 2),
(665, 'Lạng Giang', 67, 1, 3),
(666, 'Lục Nam', 67, 1, 4),
(667, 'Lục Ngạn', 67, 1, 5),
(668, 'Sơn Động', 67, 1, 6),
(669, 'Tân Yên', 67, 1, 7),
(670, 'Việt Yên', 67, 1, 8),
(671, 'Yên Dũng', 67, 1, 9),
(672, 'Yên Thế', 67, 1, 10),
(151, 'Bà Rịa', 68, 1, 1),
(152, 'Châu Đất', 68, 1, 2),
(153, 'Côn Đảo', 68, 1, 3),
(154, 'Long Đất', 68, 1, 4),
(155, 'Tân Thành', 68, 1, 5),
(156, 'Vũng Tàu', 68, 1, 6),
(157, 'Xuyên Mộc', 68, 1, 7),
(898, 'Long Điền', 68, 1, 8),
(899, 'Đất Đỏ', 68, 1, 9),
(643, 'An Phú', 69, 1, 1),
(644, 'Châu Đốc', 69, 1, 2),
(645, 'Châu Phú', 69, 1, 3),
(646, 'Châu Thành', 69, 1, 4),
(647, 'Chợ Mới', 69, 1, 5),
(648, 'Long Xuyên', 69, 1, 6),
(649, 'Phú Tân', 69, 1, 7),
(650, 'Tân Châu', 69, 1, 8),
(651, 'Thoại Sơn', 69, 1, 9),
(652, 'Tịnh Biên', 69, 1, 10),
(653, 'Tri Tôn', 69, 1, 11),
(249, 'An Hải', 70, 1, 1),
(250, 'An Lão', 70, 1, 2),
(251, 'Bạch Long Vỹ', 70, 1, 3),
(253, 'Đồ Sơn', 70, 1, 4),
(254, 'Hồng Bàng', 70, 1, 5),
(255, 'Kiến An', 70, 1, 6),
(256, 'Kiến Thụy', 70, 1, 7),
(257, 'Lê Chân', 70, 1, 8),
(258, 'Ngô Quyền', 70, 1, 9),
(259, 'Thủy Nguyên', 70, 1, 10),
(260, 'Tiên Lãng', 70, 1, 11),
(261, 'Vĩnh Bảo', 70, 1, 12),
(854, 'Cát Bà', 70, 1, 13),
(900, 'Dương Kinh', 70, 1, 14),
(819, 'Đảo Hòang Sa', 71, 1, 1),
(820, 'Hải Châu', 71, 1, 2),
(821, 'Hòa Vang', 71, 1, 3),
(822, 'Liên Chiểu', 71, 1, 4),
(823, 'Ngũ Hành Sơn', 71, 1, 5),
(824, 'Sơn Trà', 71, 1, 6),
(825, 'Thanh Khê', 71, 1, 7),
(844, 'Cẩm Lệ', 71, 1, 8),
(681, 'Cần Thơ', 72, 1, 1),
(684, 'Ô Môn', 72, 1, 2),
(686, 'Thốt Nốt', 72, 1, 3),
(837, 'Ninh Kiều', 72, 1, 4),
(848, 'Cái Răng', 72, 1, 5),
(855, 'Bình Thủy', 72, 1, 6),
(892, 'Phong Điền', 72, 1, 7),
(893, 'Cờ Đỏ', 72, 1, 8),
(894, 'Thới Lai', 72, 1, 9),
(895, 'Vĩnh Thạnh', 72, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `web_ds_tinhthanh`
--

CREATE TABLE IF NOT EXISTS `web_ds_tinhthanh` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `order` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_ds_tinhthanh`
--

INSERT INTO `web_ds_tinhthanh` (`id`, `name`, `status`, `order`) VALUES
(3, 'Hồ Chí Minh', 1, 1),
(2, 'Hà Nội', 1, 1),
(10, 'Yên Bái', 1, 0),
(11, 'Vĩnh Phúc', 1, 0),
(12, 'Vĩnh Long', 1, 0),
(13, 'Tuyên Quang', 1, 0),
(14, 'Trà Vinh', 1, 0),
(15, 'Tiền Giang', 1, 0),
(16, 'Thừa Thiên Huế', 1, 0),
(17, 'Thanh Hóa', 1, 0),
(18, 'Thái Nguyên', 1, 0),
(19, 'Thái Bình', 1, 0),
(21, 'Tây Ninh', 1, 0),
(22, 'Sơn La', 1, 0),
(23, 'Sóc Trăng', 1, 0),
(24, 'Quảng Trị', 1, 0),
(25, 'Quảng Ninh', 1, 0),
(26, 'Quảng Ngãi', 1, 0),
(27, 'Quảng Nam', 1, 0),
(28, 'Quảng Bình', 1, 0),
(29, 'Phú Yên', 1, 0),
(30, 'Phú Thọ', 1, 0),
(31, 'Ninh Thuận', 1, 0),
(32, 'Ninh Bình', 1, 0),
(33, 'Nghệ An', 1, 0),
(34, 'Nam Định', 1, 0),
(35, 'Long An', 1, 0),
(36, 'Lào Cai', 1, 0),
(37, 'Lạng Sơn', 1, 0),
(38, 'Lâm Đồng', 1, 0),
(39, 'Lai Châu', 1, 0),
(40, 'Kon Tum', 1, 0),
(41, 'Kiên Giang', 1, 0),
(42, 'Khánh Hòa', 1, 0),
(43, 'Hưng Yên', 1, 0),
(44, 'Hòa Bình', 1, 0),
(45, 'Hậu Giang', 1, 0),
(46, 'Hải Dương', 1, 0),
(47, 'Hà Tĩnh', 1, 0),
(49, 'Hà Nam ', 1, 0),
(50, 'Hà Giang', 1, 0),
(51, 'Gia Lai', 1, 0),
(52, 'Đồng Tháp', 1, 0),
(53, 'Đồng Nai', 1, 0),
(54, 'Điện Biên', 1, 0),
(55, 'Đắk Nông', 1, 0),
(56, 'Đắk Lắk', 1, 0),
(57, 'Cao Bằng', 1, 0),
(58, 'Cà Mau', 1, 0),
(59, 'Bình Thuận', 1, 0),
(60, 'Bình Phước', 1, 0),
(61, 'Bình Dương', 1, 0),
(62, 'Bình Định', 1, 0),
(63, 'Bến Tre', 1, 0),
(64, 'Bắc Ninh', 1, 0),
(65, 'Bạc Liêu', 1, 0),
(66, 'Bắc Kạn', 1, 0),
(67, 'Bắc Giang', 1, 0),
(68, 'Bà Rịa - Vũng Tàu', 1, 0),
(69, 'An Giang', 1, 0),
(70, 'Hải Phòng', 1, 0),
(71, 'Đà Nẵng', 1, 0),
(72, 'Cần Thơ', 1, 0);

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
(1, 'Trang chủ', 'trang-chu', '', '', 'Title trang chủ', 'Des trang chủ', 'key trang chủ', 0, 1, ',2,', 1, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-06-14 05:12:07', 'admin', 'admin', 0),
(2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', 'Koala.jpg', 'Title giới thiệu', 'Des giới thiệu', 'key giới thiệu', 0, 2, ',2,', 2, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-06-14 05:03:29', 'admin', 'admin', 0),
(3, 'Tầm nhìn', 'tam-nhin', 'tam-nhin/', '', 'Tầm nhìn', 'Tầm nhìn', 'Tầm nhìn', 2, 2, ',2,', 1, 0, 'vi', 0, '2014-05-29 00:00:00', '2014-06-19 09:34:31', 'admin', 'admin', 0),
(4, 'Sứ mệnh', 'su-menh', 'su-menh/', '', 'Sứ mệnh', 'Sứ mệnh', 'Sứ mệnh', 2, 2, ',2,', 1, 0, 'vi', 0, '2014-05-29 00:00:00', '2014-06-19 09:34:32', 'admin', 'admin', 0),
(5, 'Đối tác', 'doi-tac', 'doi-tac/', '', 'Đối tác', 'Đối tác', 'đối tác,doi tac', 2, 2, ',2,', 3, 0, 'vi', 0, '2014-05-29 00:00:00', '2014-06-19 09:34:34', 'admin', 'admin', 0),
(6, 'Sản phẩm', 'san-pham', 'san-pham/', '', 'Sản phẩm', 'Sản phẩm', 'sản phẩm,san pham', 0, 3, ',2,', 3, 0, 'vi', 1, '2014-05-30 10:19:14', '2014-06-14 09:43:39', 'admin', 'admin', 0),
(7, 'Hướng dẫn thanh toán', 'huong-dan-thanh-toan', 'huong-dan-thanh-toan/', '', 'Hướng dẫn thanh toán', 'Hướng dẫn thanh toán', 'hướng dẫn thanh toán,huong dan thanh toan', 0, 2, ',2,', 4, 0, 'vi', 1, '2014-05-30 11:06:51', '2014-06-14 05:10:47', 'admin', 'admin', 0),
(8, 'Thông tin sản phẩm', 'thong-tin-san-pham', 'thong-tin-san-pham/', '', 'Thông tin sản phẩm', 'Thông tin sản phẩm', 'thông tin sản phẩm,thong tin san pham', 0, 2, ',2,', 5, 0, 'vi', 1, '2014-05-30 11:07:21', '2014-06-14 09:55:51', 'admin', 'admin', 0),
(9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'liên hệ,lien he', 0, 13, ',2,', 6, 0, 'vi', 1, '2014-05-30 11:07:57', '2014-05-30 11:37:44', 'admin', 'nhan', 0),
(10, 'Home', 'home', '/?lang=en', '', 'Home', 'Home', 'Home', 0, 1, ',2,', 1, 0, 'en', 1, '2014-06-14 05:12:47', '2014-06-14 05:15:41', 'admin', 'admin', 0),
(11, 'About US', 'about-us', 'about-us/', '', 'About US', 'About US', 'About US', 0, 2, ',2,', 2, 0, 'en', 1, '2014-06-14 05:15:37', NULL, 'admin', NULL, 0),
(12, 'Products', 'products', 'products/', '', 'Products', 'Products', 'Products', 0, 3, ',2,', 3, 0, 'en', 1, '2014-06-14 05:16:42', NULL, 'admin', NULL, 0),
(13, 'Mùng chống muỗi', 'mung-chong-muoi', 'mung-chong-muoi/', 'icon-mung-chong-muoi.gif', 'Mùng chống muỗi', 'Mùng chống muỗi', 'mùng chống muỗi,mung chong muoi', 6, 3, ',2,', 1, 1, 'vi', 1, '2014-06-14 07:58:44', NULL, 'admin', NULL, 0),
(14, 'Rèn chống muỗi', 'ren-chong-muoi', 'ren-chong-muoi/', 'icon-ren-chong-muoi.gif', 'Rèn chống muỗi', 'Rèn chống muỗi', 'rèn chống muỗi,ren chong muoi', 6, 3, ',2,', 2, 1, 'vi', 1, '2014-06-14 08:00:30', NULL, 'admin', NULL, 0),
(15, 'Võng chống muỗi', 'vong-chong-muoi', 'vong-chong-muoi/', 'icon-vong-chong-muoi.gif', 'Võng chống muỗi', 'Võng chống muỗi', 'võng chống muỗi,vong chong muoi', 6, 3, ',2,', 3, 1, 'vi', 1, '2014-06-14 08:00:56', NULL, 'admin', NULL, 0),
(16, 'Đặt hàng', 'dat-hang', 'dat-hang/', '', 'Đặt hàng', 'Đặt hàng', 'đặt hàng,dat hang', 0, 7, ',9,', 100, 0, 'vi', 1, '2014-06-21 09:21:42', NULL, 'admin', NULL, 0),
(17, 'Giỏ hàng', 'gio-hang', 'gio-hang/', '', 'Giỏ hàng', 'Giỏ hàng', 'giỏ hàng,gio hang', 16, 8, ',9,', 1, 0, 'vi', 1, '2014-06-23 06:41:50', '2014-06-23 06:42:22', 'admin', 'admin', 0),
(18, 'Thanh toán', 'thanh-toan', 'thanh-toan/', '', 'Thanh toán', 'Thanh toán', 'thanh toán,thanh toan', 16, 8, ',9,', 2, 0, 'vi', 1, '2014-06-23 06:43:12', NULL, 'admin', NULL, 0);

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
(7, 'Đặt hàng', 7, 1),
(8, 'Thanh toán', 8, 1),
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

INSERT INTO `web_product` (`id`, `name`, `name_alias`, `masp`, `url_hinh`, `metaDescription`, `metaKeyword`, `giaban`, `giagoc`, `content`, `info_more`, `other`, `menu_id`, `lang`, `status`, `ngay_dang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Mùng chống muỗi hình nón', 'mung-chong-muoi-hinh-non', 'MMHT-01', 'mung-chong-muoi.jpg', 'Mùng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.', 'mùng chống muỗi hình nón,mung chong muoi hinh non', 200000, 250000, '<p>Mùng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng. Mùng ChamCham rất hữu ích cho phòng chống lan truyền bệnh sốt rét, sốt xuất huyết, viêm não Nhật Bản B và các bệnh khác gây ra do côn trùng chích đốt giúp bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>Mùng Võng Rèm ChamCham đáp ứng nhu cầu sử dụng đa dạng trong nhà, ngoài trời, treo móc...</p>\r\n', NULL, 1, ',6,13,', 'vi', 1, '2014-06-14 14:11:00', '2014-06-14 09:13:15', '2014-06-21 08:39:08', 'admin', 'admin', 0),
(2, 'Mùng chống muỗi tam giác ba dây trắng', 'mung-chong-muoi-tam-giac-ba-day-trang', 'MMTG-01', 'mung-chong-muoi-tam-giac-ba-day-trang.jpg', 'Mùng chống muỗi tam giác ba dây trắng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.', 'mùng chống muỗi tam giác ba dây trắng,mung chong muoi tam giac ba day trang', 250000, 0, '<h2>Mùng chống muỗi tam giác ba dây trắng&nbsp;là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.</h2>\r\n\r\n<p>Mùng ChamCham rất hữu ích cho phòng chống lan truyền bệnh sốt rét, sốt xuất huyết, viêm não Nhật Bản B và các bệnh khác gây ra do côn trùng chích đốt giúp bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>Mùng Võng Rèm ChamCham đáp ứng nhu cầu sử dụng đa dạng trong nhà, ngoài trời, treo móc...</p>\r\n', '<p>Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng</p>\r\n\r\n<p>Giao hàng toàn quốc</p>\r\n', 1, ',6,13,', 'vi', 1, '2014-06-14 14:15:00', '2014-06-14 09:16:57', '2014-06-21 08:44:05', 'admin', 'admin', 0);

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
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `web_product_order`
--

INSERT INTO `web_product_order` (`id`, `name`, `email`, `phone`, `tinh_thanh`, `quan_huyen`, `diachi`, `tongtien`, `tongsoluong`, `phigiaohang`, `giamgia`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(21, 'Nhan', 'hieunhan112@gmail.com', '01689373352', 1, 2, '123 CMT 8', 0, 0, 0, 0, 'vi', 0, '2014-06-24 12:26:34', '2014-06-24 12:26:34', 'khachhang', NULL, 0),
(20, 'Nhan', 'hieunhan112@gmail.com', '01689373352', 1, 2, '123 CMT 8', 0, 0, 0, 0, 'vi', 0, '2014-06-24 12:26:34', '2014-06-24 12:26:34', 'khachhang', NULL, 0),
(19, 'Nhan', 'hieunhan112@gmail.com', '01689373352', 1, 2, '123 CMT 8', 0, 0, 0, 0, 'vi', 0, '2014-06-24 12:26:26', '2014-06-24 12:26:26', 'khachhang', NULL, 0),
(17, 'Nhan', 'hieunhan112@gmail.com', '01689373352', 1, 2, '123 CMT 8', 0, 0, 0, 0, 'vi', 0, '2014-06-24 12:26:23', '2014-06-24 12:26:23', 'khachhang', NULL, 0),
(18, 'Nhan', 'hieunhan112@gmail.com', '01689373352', 1, 2, '123 CMT 8', 0, 0, 0, 0, 'vi', 0, '2014-06-24 12:26:25', '2014-06-24 12:26:25', 'khachhang', NULL, 0),
(16, 'Nhan', 'hieunhan112@gmail.com', '01689373352', 1, 2, '123 CMT 8', 0, 0, 0, 0, 'vi', 0, '2014-06-24 12:25:36', '2014-06-24 12:25:36', 'khachhang', NULL, 0),
(22, 'Nhan', 'hieunhan112@gmail.com', '01689373352', 1, 2, '123 CMT 8', 0, 0, 0, 0, 'vi', 0, '2014-06-24 12:26:34', '2014-06-24 12:26:34', 'khachhang', NULL, 0),
(23, 'Nhan', 'hieunhan112@gmail.com', '01689373352', 1, 2, '123 CMT 8', 0, 0, 0, 0, 'vi', 0, '2014-06-24 12:28:13', '2014-06-24 12:28:13', 'khachhang', NULL, 0);

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
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
