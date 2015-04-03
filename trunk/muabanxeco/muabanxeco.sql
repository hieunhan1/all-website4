-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2015 at 12:44 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `muabanxeco`
--

-- --------------------------------------------------------

--
-- Table structure for table `web_article`
--

CREATE TABLE IF NOT EXISTS `web_article` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `img_avatar` varchar(150) NOT NULL,
  `img_arr` varchar(250) DEFAULT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`id`, `name`, `name_alias`, `url`, `img_avatar`, `img_arr`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Giới thiệu mua bán xe cổ Hồng Cường', 'gioi-thieu-mua-ban-xe-co-hong-cuong', 'gioi-thieu/gioi-thieu-mua-ban-xe-co-hong-cuong.html', 'gioi-thieu-mua-ban-xe-co-hong-cuong.png', NULL, 'Thú chơi xe cổ đã trở thành một iữa những dòng xe hiện đại trên phố, chiếc xe cổ vẫn luôn thu hút mọi ánh nhìn tò mò và ngưỡng mộ của mọi người dù là thanh niên trẻ hay các ông cụ lão.', 'giới thiệu mua bán xe cổ hồng cường,gioi thieu mua ban xe co hong cuong', '<p>Thú chơi xe cổ đã trở thành một iữa những dòng xe hiện đại trên phố, chiếc xe cổ vẫn luôn thu hút mọi ánh nhìn tò mò và ngưỡng mộ của mọi người dù là thanh niên trẻ hay các ông cụ lão.</p>\r\n\r\n<p>Không giống như nhiều “đại gia” khác thể hiện độ giàu có của mình bằng bộ sưu tập các loại ô tô đắt tiền, Nguyễn Hiển Tuấn chọn cho mình một lối đi riêng, khiến nhiều đại gia có “máu mặt” khác cũng phải ghen tị.</p>\r\n\r\n<p>Hàng ngày, Tuấn tranh thủ giải quyết công việc rồi lân la ra khu chợ gần nhà tìm mua, bán xe máy cũ. Lúc đầu, nhiều tiểu thương thấy lạ, đâm ra nghi hoặc về căn bệnh “khác người” này của Tuấn và gọi anh bằng cái tên chẳng mấy tốt đẹp: Tuấn “hâm”.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1427536140, 'vi', 1, ',1,2,'),
(2, 'Hồng Cường mừng sinh nhật lần 03', 'hong-cuong-mung-sinh-nhat-lan-03', 'tin-tuc-su-kien/hong-cuong-mung-sinh-nhat-lan-03.html', 'hong-cuong-mung-sinh-nhat-lan-03.jpg', NULL, 'Hững tiếng cười nói xôn xao, những cái bắt tay thật chặt của bằng hữu lâu ngày gặp lại', 'hồng cường mừng sinh nhật lần 03,hong cuong mung sinh nhat lan 03', '<p>6h sáng, không khí tại CLB xe cổ Hồng Cường rộn ràng hơn bao giờ hết. Những tiếng cười nói xôn xao, những cái bắt tay thật chặt của bằng hữu lâu ngày gặp lại, tiếng xe máy nổ giòn &nbsp;như pháo,... tất cả tạo nên một không khí lễ hội thực sự, khiến cho người đi đường ai cũng phải chú ý. Bởi vì hôm nay là kỷ niệm lần thứ 3 sinh nhật CLB xe cổ Hồng Cường, một ngày hội lớn cho những ai yêu xe cổ.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/sn1.jpg" style="width: 600px; height: 400px;" /><br />\r\n<em style="line-height: 1.6em;">Mới sáng sớm nhưng khách đã tập trung rất đông ở cổng Nhà hàng Hồng Cường</em></p>\r\n\r\n<p>Hàng trăm chiếc xe cổ dựng trước cổng CLB để chờ lấy số thứ tự, ai ai cũng háo hức mang chiếc xế cổ mà mình cưng chiều nhất, không chỉ đơn giản để “ khoe”, mà còn là món quà tinh thần dành tặng cho sinh nhật Hồng Cường Club.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/sn5.jpg" style="width: 600px; height: 400px;" />&nbsp; &nbsp;<br />\r\n<em style="line-height: 1.6em;">Dòng xe đông đúc tới sự sinh nhật đông vui như trẩy hội.</em></p>\r\n\r\n<p>Chương trình lần này thu hút được rất nhiều CLB xe cổ trong cả nước tới tham gia. &nbsp;Có người còn mang chiếc xe cổ vượt cả ngàn km từ ngoài Bắc vào tham dự, thậm chí có khách từ nước ngoài nghe tin cũng đáp máy bay về. Bởi vì sinh nhật lần này, ngoài những chương trình&nbsp; khoe xe cổ và Game show thú vị còn có một chương trình đặc biệt được khách tham dự trông đợi nhất: Chiêm ngưỡng những chiếc xe cổ độc đáo nhất, đẹp nhất trong BST của Hồng Cường, lần đầu tiên ra mắt những người yêu xe cổ.</p>\r\n', 1, 1427537220, 'vi', 1, ',5,'),
(3, 'Sinh Nhật 01 năm tuổi SH Club', 'sinh-nhat-01-nam-tuoi-sh-club', 'tin-tuc-su-kien/sinh-nhat-01-nam-tuoi-sh-club.html', 'sinh-nhat-01-nam-tuoi-sh-club.jpg', NULL, 'Đã một năm rồi gắn bó và chia sẻ, cùng nhau vượt qua những vui bùn, trăn trở và phát triển.', 'hồng cường mừng sinh nhật lần 03,hong cuong mung sinh nhat lan 03', '<p>Đã một năm rồi gắn bó và chia sẻ, cùng nhau vượt qua những vui bùn, trăn trở và phát triển. Đến ngày hôm nay SSC đã chính thức lớn mạnh, với một website có uy tín, một page hội với hơn 2,400 thành viên và một tập thể anh em đoàn kết và vững mạnh. Buổi tiệc big off mừng sinh nhật thành công đã khép lại, một trang nhật kí cho một năm đã trôi qua, nhưng đối với SSC mà nói nó chỉ là một bước mở đầu cho sự phát triển mạnh hơn nữa về sự gắn kết và chia sẽ đam mê.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/SH02.jpg" style="width: 600px; height: 399px;" /></p>\r\n\r\n<p><strong>HONGCUONGCLUB&nbsp;chúc CLB Sài Gòn SH Club thêm 1 tuổi mới, ngày càng gắn kết và phát triển.</strong></p>\r\n', 1, 1427537280, 'vi', 1, ',5,'),
(4, 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', 'dan-xe-co-hiem-trung-bay-o-sai-gon', 'tin-tuc-su-kien/dan-xe-co-hiem-trung-bay-o-sai-gon.html', 'dan-xe-co-hiem-trung-bay-o-sai-gon.JPG', NULL, 'Trong khuôn khổ "Ngày hội siêu xe lần 2" đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.', 'dàn xe cổ hiếm trưng bày ở sài gòn,dan xe co hiem trung bay o sai gon', '<p>Trong khuôn khổ "Ngày hội siêu xe lần 2" đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/dan-xe-co-hiem-trung-bay-o-sai-gon.JPG" style="width: 600px; height: 337px;" /></p>\r\n\r\n<p>Tại "Ngày hội siêu xe lần 2", bộ sưu tập gần 30 mẫu xe cổ của Hồng Cường Club là một trong những điểm sáng của sự kiện này. Đa số những chiếc xe được trưng bày là những mẫu quý hiếm, vừa lạ vừa quen thuộc với người Việt Nam. Theo đại diện của Hồng Cường, bộ sưu tập này sẽ xác lập kỉ lục Việt Nam trong năm nay.</p>\r\n\r\n<p>Đây là mẫu Lambretta TV 175 của Ý, được sản xuất từ năm 1959, sử dụng động cơ 2 kì 175 cc. Xe đã được phục chế lại màu sơn và một vài chi tiết nhỏ.</p>\r\n\r\n<p>Những chiếc xe cup "huyền thoại" một thời của thế hệ trước giờ vẫn có thể hoạt động tốt.</p>\r\n\r\n<p>Đây là mẫu Honda CL 90, sản xuất năm 1967 - 1969 tại Nhật Bản.&nbsp;</p>\r\n\r\n<p>Chiếc Berlin Roller SR 50 sản xuất tại Đức vào năm 1959 là mẫu xe "đinh" của bộ sưu tập này. Chiếc xe này vẫn giữ được các chi tiết và đường nét nguyên bản sau nhiều thập kỉ.</p>\r\n\r\n<p>Cùng với chiếc&nbsp;Berlin Roller SR 50, chiếc Lambretta LD 150 sản xuất từ năm 1955 đến 1958 cũng là mẫu xe nguyên bản được đánh giá cao.&nbsp;</p>\r\n\r\n<p>Chiếc Vespa ACMA này được Piaggio sản xuất sau chiến tranh thế giới thứ 2.</p>\r\n\r\n<p>Một chiếc Honda Super Cub khá quen thuộc với người Việt Nam.</p>\r\n', 1, 1427537280, 'vi', 1, ',5,');

-- --------------------------------------------------------

--
-- Table structure for table `web_article_cm`
--

CREATE TABLE IF NOT EXISTS `web_article_cm` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `article_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_config`
--

CREATE TABLE IF NOT EXISTS `web_config` (
`id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `name_var` varchar(30) NOT NULL,
  `value` varchar(250) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `name`, `name_var`, `value`, `lang`, `status`) VALUES
(1, 'Slogan', 'slogan', 'Trao đổi, mua bán xe cổ', 'vi', 1),
(2, 'Slogan', 'slogan', 'Trao đổi, mua bán xe cổ', 'en', 1),
(5, 'Số tin / trang', 'limit_1', '10', 'vi', 1),
(6, 'Số xe / trang', 'limit_2', '20', 'vi', 1),
(7, 'Số xe / trang home', 'limit_3', '4', 'vi', 1),
(8, 'Số video / trang', 'limit_4', '10', 'vi', 0),
(9, 'Copyright', 'copyright', 'Copyright © 2015 by muabanxeco.com', 'vi', 1),
(10, 'Email', 'email', 'quanly.hongcuong@gmail.com', 'vi', 1),
(11, 'Điện thoại', 'tel', '(84.8) 37267477', 'vi', 1),
(12, 'Hotline', 'hotline', '0906941112', 'vi', 1),
(13, 'Yahoo', 'yahoo', 'hieu_nhan1', 'vi', 1),
(14, 'Skype', 'skype', 'hieu_nhan1', 'vi', 1),
(15, 'Địa chỉ', 'address', '195 Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM', 'vi', 1),
(16, 'News number / page', 'limit_1', '10', 'en', 1),
(17, 'Product number / page', 'limit_2', '10', 'en', 1),
(18, 'Photos number / page', 'limit_3', '10', 'en', 1),
(19, 'Videos number / page', 'limit_4', '10', 'en', 1),
(20, 'Copyright', 'copyright', 'Copyright © 2015 by muabanxeco.com', 'en', 1),
(21, 'Email', 'email', 'hieunhan112@gmail.com', 'en', 1),
(22, 'Telephone', 'tel', '0988 388 003', 'en', 1),
(23, 'Hotline', 'hotline', '0988 388 003', 'en', 1),
(24, 'Yahoo', 'yahoo', 'hieu_nhan1', 'en', 1),
(25, 'Skype', 'skype', 'hieu_nhan1', 'en', 1),
(26, 'Address', 'address', '195 Quốc lộ 13, P. Hiệp Bình Chánh, Thủ Đức, TP.HCM', 'en', 1),
(27, 'Tên trang website', 'sitename', 'Mua bán xe cổ Hồng Cường', 'vi', 1),
(28, 'Site name', 'sitename', 'Mua bán xe cổ Hồng Cường', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_contact`
--

CREATE TABLE IF NOT EXISTS `web_contact` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_forex`
--

CREATE TABLE IF NOT EXISTS `web_forex` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `exactly` tinyint(1) NOT NULL DEFAULT '1',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_forex`
--

INSERT INTO `web_forex` (`id`, `name`, `description`, `exactly`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Consultations 10/3 days', 'Increased by 10 points when buying pair USD exchange rate - VND', 1, 1424941800, 'en', 1, ',15,'),
(2, 'Consultations 12/3 days', 'Increased by 5 points when buying pair USD exchange rate - VND', 1, 1426151280, 'en', 1, ',15,'),
(3, 'Consultations 14/3 days', 'Increased by 15 points when buying pair USD exchange rate - VND', 1, 1426324020, 'en', 1, ',15,'),
(4, 'Consultations 18/3 days', 'Increased by 16 points when buying pair USD exchange rate - VND', 1, 1426669500, 'en', 1, ',15,'),
(5, 'Consultations 20/3 days', '<p>Increased by 12 points when buying pair USD exchange rate - VND</p>\r\n', 1, 1426842240, 'en', 1, ',15,'),
(7, 'Consultations 22/3 days', '<p>Increased by 8 points when buying pair USD exchange rate - VND</p>\r\n', 0, 1427014980, 'en', 1, ',15,');

-- --------------------------------------------------------

--
-- Table structure for table `web_language`
--

CREATE TABLE IF NOT EXISTS `web_language` (
`id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_language`
--

INSERT INTO `web_language` (`id`, `name`, `code`, `order`, `status`) VALUES
(1, 'Việt Nam', 'vi', 1, 1),
(2, 'English', 'en', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_listcity`
--

CREATE TABLE IF NOT EXISTS `web_listcity` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `deliverycosts` int(8) NOT NULL DEFAULT '0',
  `order` int(2) DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_listcity`
--

INSERT INTO `web_listcity` (`id`, `name`, `deliverycosts`, `order`, `lang`, `status`) VALUES
(3, 'Hồ Chí Minh', 5000, 1, 'vi', 1),
(2, 'Hà Nội', 30000, 1, 'vi', 1),
(10, 'Yên Bái', 0, 0, 'vi', 1),
(11, 'Vĩnh Phúc', 0, 0, 'vi', 1),
(12, 'Vĩnh Long', 0, 0, 'vi', 1),
(13, 'Tuyên Quang', 0, 0, 'vi', 1),
(14, 'Trà Vinh', 0, 0, 'vi', 1),
(15, 'Tiền Giang', 0, 0, 'vi', 1),
(16, 'Thừa Thiên Huế', 0, 0, 'vi', 1),
(17, 'Thanh Hóa', 0, 0, 'vi', 1),
(18, 'Thái Nguyên', 0, 0, 'vi', 1),
(19, 'Thái Bình', 0, 0, 'vi', 1),
(21, 'Tây Ninh', 0, 0, 'vi', 1),
(22, 'Sơn La', 0, 0, 'vi', 1),
(23, 'Sóc Trăng', 0, 0, 'vi', 1),
(24, 'Quảng Trị', 0, 0, 'vi', 1),
(25, 'Quảng Ninh', 0, 0, 'vi', 1),
(26, 'Quảng Ngãi', 0, 0, 'vi', 1),
(27, 'Quảng Nam', 0, 0, 'vi', 1),
(28, 'Quảng Bình', 0, 0, 'vi', 1),
(29, 'Phú Yên', 0, 0, 'vi', 1),
(30, 'Phú Thọ', 0, 0, 'vi', 1),
(31, 'Ninh Thuận', 0, 0, 'vi', 1),
(32, 'Ninh Bình', 0, 0, 'vi', 1),
(33, 'Nghệ An', 0, 0, 'vi', 1),
(34, 'Nam Định', 0, 0, 'vi', 1),
(35, 'Long An', 0, 0, 'vi', 1),
(36, 'Lào Cai', 0, 0, 'vi', 1),
(37, 'Lạng Sơn', 0, 0, 'vi', 1),
(38, 'Lâm Đồng', 0, 0, 'vi', 1),
(39, 'Lai Châu', 0, 0, 'vi', 1),
(40, 'Kon Tum', 0, 0, 'vi', 1),
(41, 'Kiên Giang', 0, 0, 'vi', 1),
(42, 'Khánh Hòa', 0, 0, 'vi', 1),
(43, 'Hưng Yên', 0, 0, 'vi', 1),
(44, 'Hòa Bình', 0, 0, 'vi', 1),
(45, 'Hậu Giang', 0, 0, 'vi', 1),
(46, 'Hải Dương', 0, 0, 'vi', 1),
(47, 'Hà Tĩnh', 0, 0, 'vi', 1),
(49, 'Hà Nam ', 0, 0, 'vi', 1),
(50, 'Hà Giang', 0, 0, 'vi', 1),
(51, 'Gia Lai', 0, 0, 'vi', 1),
(52, 'Đồng Tháp', 0, 0, 'vi', 1),
(53, 'Đồng Nai', 0, 0, 'vi', 1),
(54, 'Điện Biên', 0, 0, 'vi', 1),
(55, 'Đắk Nông', 0, 0, 'vi', 1),
(56, 'Đắk Lắk', 0, 0, 'vi', 1),
(57, 'Cao Bằng', 0, 0, 'vi', 1),
(58, 'Cà Mau', 0, 0, 'vi', 1),
(59, 'Bình Thuận', 0, 0, 'vi', 1),
(60, 'Bình Phước', 0, 0, 'vi', 1),
(61, 'Bình Dương', 0, 0, 'vi', 1),
(62, 'Bình Định', 0, 0, 'vi', 1),
(63, 'Bến Tre', 0, 0, 'vi', 1),
(64, 'Bắc Ninh', 0, 0, 'vi', 1),
(65, 'Bạc Liêu', 0, 0, 'vi', 1),
(66, 'Bắc Kạn', 0, 0, 'vi', 1),
(67, 'Bắc Giang', 0, 0, 'vi', 1),
(68, 'Bà Rịa - Vũng Tàu', 0, 0, 'vi', 1),
(69, 'An Giang', 0, 0, 'vi', 1),
(70, 'Hải Phòng', 0, 0, 'vi', 1),
(71, 'Đà Nẵng', 0, 0, 'vi', 1),
(72, 'Cần Thơ', 30000, 0, 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_listdistricts`
--

CREATE TABLE IF NOT EXISTS `web_listdistricts` (
`id` int(3) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `deliverycosts` int(8) NOT NULL DEFAULT '0',
  `city_id` int(11) NOT NULL,
  `order` int(3) DEFAULT '0',
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `web_listdistricts`
--

INSERT INTO `web_listdistricts` (`id`, `name`, `deliverycosts`, `city_id`, `order`, `lang`, `status`) VALUES
(127, 'Quận 1', 0, 3, 1, 'vi', 1),
(128, 'Quận 2', 0, 3, 2, 'vi', 1),
(129, 'Quận 3', 0, 3, 3, 'vi', 1),
(130, 'Quận 4', 0, 3, 4, 'vi', 1),
(131, 'Quận 5', 0, 3, 5, 'vi', 1),
(132, 'Quận 6', 0, 3, 6, 'vi', 1),
(133, 'Quận 7', 0, 3, 7, 'vi', 1),
(134, 'Quận 8', 0, 3, 8, 'vi', 1),
(135, 'Quận 9', 0, 3, 9, 'vi', 1),
(136, 'Quận 10', 0, 3, 10, 'vi', 1),
(137, 'Quận 11', 0, 3, 11, 'vi', 1),
(138, 'Quận 12', 0, 3, 12, 'vi', 1),
(139, 'Quận Phú Nhuận', 0, 3, 13, 'vi', 1),
(140, 'Quận Bình Thạnh', 0, 3, 14, 'vi', 1),
(141, 'Quận Tân Bình', 0, 3, 15, 'vi', 1),
(142, 'Quận Tân Phú', 0, 3, 16, 'vi', 1),
(143, 'Quận Gò Vấp', 0, 3, 17, 'vi', 1),
(144, 'Quận Thủ Đức', 0, 3, 18, 'vi', 1),
(145, 'Quận Bình Tân', 0, 3, 19, 'vi', 1),
(146, 'Huyện Bình Chánh', 10000, 3, 20, 'vi', 1),
(147, 'Huyện Củ Chi', 0, 3, 21, 'vi', 1),
(149, 'Huyện Nhà Bè', 0, 3, 22, 'vi', 1),
(150, 'Huyện Cần Giờ', 0, 3, 23, 'vi', 1),
(856, 'Huyện Hóc Môn', 5000, 3, 24, 'vi', 1),
(113, 'Từ Liêm', 10000, 2, 1, 'vi', 1),
(114, 'Thanh Trì', 0, 2, 2, 'vi', 1),
(115, 'Sóc Sơn', 0, 2, 3, 'vi', 1),
(116, 'Gia Lâm', 0, 2, 4, 'vi', 1),
(117, 'Đông Anh', 0, 2, 5, 'vi', 1),
(118, 'Long Biên', 0, 2, 6, 'vi', 1),
(119, 'Hoàng Mai', 0, 2, 7, 'vi', 1),
(120, 'Cầu Giấy', 0, 2, 8, 'vi', 1),
(121, 'Tây Hồ', 0, 2, 9, 'vi', 1),
(122, 'Thanh Xuân', 0, 2, 10, 'vi', 1),
(123, 'Hai Bà Trưng', 0, 2, 11, 'vi', 1),
(124, 'Đống Đa', 0, 2, 12, 'vi', 1),
(125, 'Ba Đình', 0, 2, 13, 'vi', 1),
(126, 'Hoàn Kiếm', 0, 2, 14, 'vi', 1),
(450, 'Mê Linh', 0, 2, 15, 'vi', 1),
(840, 'Vân Điền', 0, 2, 16, 'vi', 1),
(857, 'Ba Vì', 0, 2, 17, 'vi', 1),
(858, 'Chương Mỹ', 0, 2, 18, 'vi', 1),
(859, 'Đan Phượng', 0, 2, 19, 'vi', 1),
(860, 'Hà Đông', 0, 2, 20, 'vi', 1),
(861, 'Hoài Đức', 0, 2, 21, 'vi', 1),
(862, 'Mỹ Đức', 0, 2, 22, 'vi', 1),
(863, 'Phú Xuyên', 0, 2, 23, 'vi', 1),
(864, 'Phúc Thọ', 0, 2, 24, 'vi', 1),
(865, 'Quốc Oai', 0, 2, 25, 'vi', 1),
(866, 'Sơn Tây', 0, 2, 26, 'vi', 1),
(867, 'Thạch Thất', 0, 2, 27, 'vi', 1),
(868, 'Thanh Oai', 0, 2, 28, 'vi', 1),
(869, 'Thường Tín', 0, 2, 29, 'vi', 1),
(871, 'Ứng Hòa', 0, 2, 30, 'vi', 1),
(626, 'Lục Yên', 0, 10, 1, 'vi', 1),
(627, 'Mù Căng Chải', 0, 10, 2, 'vi', 1),
(628, 'Trạm Tấu', 0, 10, 3, 'vi', 1),
(629, 'Trấn Yên', 0, 10, 4, 'vi', 1),
(630, 'Văn Chấn', 0, 10, 5, 'vi', 1),
(631, 'Văn Yên', 0, 10, 6, 'vi', 1),
(632, 'Yên Bái', 0, 10, 7, 'vi', 1),
(633, 'Yên Bình', 0, 10, 8, 'vi', 1),
(448, 'Bình Xuyên', 0, 11, 1, 'vi', 1),
(449, 'Lập Thạch', 0, 11, 2, 'vi', 1),
(451, 'Tam Dương', 0, 11, 3, 'vi', 1),
(452, 'Vĩnh Tường', 0, 11, 4, 'vi', 1),
(453, 'Vĩnh Yên', 0, 11, 5, 'vi', 1),
(454, 'Yên Lạc', 0, 11, 6, 'vi', 1),
(850, 'Phúc Yên', 0, 11, 7, 'vi', 1),
(853, 'Tam Đảo', 0, 11, 8, 'vi', 1),
(812, 'Bình Minh', 0, 12, 1, 'vi', 1),
(813, 'Long Hồ', 0, 12, 2, 'vi', 1),
(814, 'Mang Thít', 0, 12, 3, 'vi', 1),
(815, 'Tam Bình', 0, 12, 4, 'vi', 1),
(816, 'Trà Ôn', 0, 12, 5, 'vi', 1),
(817, 'Vĩnh Long', 0, 12, 6, 'vi', 1),
(818, 'Vũng Liêm', 0, 12, 7, 'vi', 1),
(620, 'Chiêm Hóa', 0, 13, 1, 'vi', 1),
(621, 'Hàm Yên', 0, 13, 2, 'vi', 1),
(622, 'Na Hang', 0, 13, 3, 'vi', 1),
(623, 'Sơn Dương', 0, 13, 4, 'vi', 1),
(624, 'Tuyên Quang', 0, 13, 5, 'vi', 1),
(625, 'Yên Sơn', 0, 13, 6, 'vi', 1),
(440, 'Càng Long', 0, 14, 1, 'vi', 1),
(441, 'Cầu Kè', 0, 14, 2, 'vi', 1),
(442, 'Cầu Ngang', 0, 14, 3, 'vi', 1),
(443, 'Châu Thành', 0, 14, 4, 'vi', 1),
(444, 'Duyên Hải', 0, 14, 5, 'vi', 1),
(445, 'Tiểu Cần', 0, 14, 6, 'vi', 1),
(446, 'Trà Cú', 0, 14, 7, 'vi', 1),
(447, 'Trà Vinh', 0, 14, 8, 'vi', 1),
(803, 'Cái Bè', 0, 15, 1, 'vi', 1),
(804, 'Cai Lậy', 0, 15, 2, 'vi', 1),
(805, 'Châu Thành', 0, 15, 3, 'vi', 1),
(806, 'Chợ Gạo', 0, 15, 4, 'vi', 1),
(807, 'Gò Công', 0, 15, 5, 'vi', 1),
(808, 'Gò Công Đông', 0, 15, 6, 'vi', 1),
(809, 'Gò Công Tây', 0, 15, 7, 'vi', 1),
(810, 'Mỹ Tho', 0, 15, 8, 'vi', 1),
(811, 'Tân Phước', 0, 15, 9, 'vi', 1),
(423, 'A Lưới', 0, 16, 1, 'vi', 1),
(424, 'Huế', 0, 16, 2, 'vi', 1),
(425, 'Hương Thủy', 0, 16, 3, 'vi', 1),
(426, 'Hương Trà', 0, 16, 4, 'vi', 1),
(427, 'Nam Đông', 0, 16, 5, 'vi', 1),
(428, 'Phong Điền', 0, 16, 6, 'vi', 1),
(429, 'Phú Lộc', 0, 16, 7, 'vi', 1),
(430, 'Phú Vang', 0, 16, 8, 'vi', 1),
(431, 'Quảng Điền', 0, 16, 9, 'vi', 1),
(776, 'Bá Thước', 0, 17, 1, 'vi', 1),
(777, 'Bỉm Sơn', 0, 17, 2, 'vi', 1),
(778, 'Cẩm Thủy', 0, 17, 3, 'vi', 1),
(779, 'Đông Sơn', 0, 17, 4, 'vi', 1),
(780, 'Hà Trung', 0, 17, 5, 'vi', 1),
(781, 'Hậu Lộc', 0, 17, 6, 'vi', 1),
(782, 'Hoằng Hóa', 0, 17, 7, 'vi', 1),
(783, 'Lang Chánh', 0, 17, 8, 'vi', 1),
(784, 'Mường Lát', 0, 17, 9, 'vi', 1),
(785, 'Nga Sơn', 0, 17, 10, 'vi', 1),
(786, 'Ngọc Lặc', 0, 17, 11, 'vi', 1),
(787, 'Như Thanh', 0, 17, 12, 'vi', 1),
(788, 'Như Xuân', 0, 17, 13, 'vi', 1),
(789, 'Nông Cống', 0, 17, 14, 'vi', 1),
(790, 'Quan Hóa', 0, 17, 15, 'vi', 1),
(791, 'Quan Sơn', 0, 17, 16, 'vi', 1),
(792, 'Quảng Xương', 0, 17, 17, 'vi', 1),
(793, 'Sầm Sơn', 0, 17, 18, 'vi', 1),
(794, 'Thạch Thành', 0, 17, 19, 'vi', 1),
(795, 'Thanh Hóa', 0, 17, 20, 'vi', 1),
(796, 'Thọ Xuân', 0, 17, 21, 'vi', 1),
(797, 'Thường Xuân', 0, 17, 22, 'vi', 1),
(798, 'Tĩnh Gia', 0, 17, 23, 'vi', 1),
(799, 'Thiệu Hóa', 0, 17, 24, 'vi', 1),
(800, 'Triệu Sơn', 0, 17, 25, 'vi', 1),
(801, 'Vĩnh Lộc', 0, 17, 26, 'vi', 1),
(802, 'Yên Định', 0, 17, 27, 'vi', 1),
(611, 'Đại Từ', 0, 18, 1, 'vi', 1),
(612, 'Định Hóa', 0, 18, 2, 'vi', 1),
(613, 'Đồng Hỷ', 0, 18, 3, 'vi', 1),
(614, 'Phổ Yên', 0, 18, 4, 'vi', 1),
(615, 'Phú Bình', 0, 18, 5, 'vi', 1),
(616, 'Phú Lương', 0, 18, 6, 'vi', 1),
(617, 'Sông Công', 0, 18, 7, 'vi', 1),
(618, 'Thái Nguyên', 0, 18, 8, 'vi', 1),
(619, 'Võ Nhai', 0, 18, 9, 'vi', 1),
(432, 'Đông Hưng', 0, 19, 1, 'vi', 1),
(433, 'Hưng Hà', 0, 19, 2, 'vi', 1),
(434, 'Kiến Xương', 0, 19, 3, 'vi', 1),
(435, 'Quỳnh Phụ', 0, 19, 4, 'vi', 1),
(436, 'Thái Bình', 0, 19, 5, 'vi', 1),
(437, 'Thái Thụy', 0, 19, 6, 'vi', 1),
(438, 'Tiền Hải', 0, 19, 7, 'vi', 1),
(439, 'Vũ Thư', 0, 19, 8, 'vi', 1),
(602, 'Bến Cầu', 0, 21, 1, 'vi', 1),
(603, 'Châu Thành', 0, 21, 2, 'vi', 1),
(604, 'Dương Minh Châu', 0, 21, 3, 'vi', 1),
(605, 'Gò Dầu', 0, 21, 4, 'vi', 1),
(606, 'Hòa Thành', 0, 21, 5, 'vi', 1),
(607, 'Tân Biên', 0, 21, 6, 'vi', 1),
(608, 'Tân Châu', 0, 21, 7, 'vi', 1),
(609, 'Tây Ninh', 0, 21, 8, 'vi', 1),
(610, 'Trảng Bàng', 0, 21, 9, 'vi', 1),
(766, 'Bắc Yên', 0, 22, 1, 'vi', 1),
(767, 'Mai Sơn', 0, 22, 2, 'vi', 1),
(768, 'Mộc Châu', 0, 22, 3, 'vi', 1),
(769, 'Muờng La', 0, 22, 4, 'vi', 1),
(770, 'Phù Yên', 0, 22, 5, 'vi', 1),
(771, 'Quỳnh Nhai', 0, 22, 6, 'vi', 1),
(772, 'Sơn La', 0, 22, 7, 'vi', 1),
(773, 'Sông Mã', 0, 22, 8, 'vi', 1),
(774, 'Thuận Châu', 0, 22, 9, 'vi', 1),
(775, 'Yên Châu', 0, 22, 10, 'vi', 1),
(874, 'Sốp Cộp', 0, 22, 11, 'vi', 1),
(595, 'Kế Sách', 0, 23, 1, 'vi', 1),
(596, 'Long Phú', 0, 23, 2, 'vi', 1),
(597, 'Mỹ Tú', 0, 23, 3, 'vi', 1),
(598, 'Mỹ Xuyên', 0, 23, 4, 'vi', 1),
(599, 'Sóc Trăng', 0, 23, 5, 'vi', 1),
(600, 'Thanh Trị', 0, 23, 6, 'vi', 1),
(601, 'Vĩnh Châu', 0, 23, 7, 'vi', 1),
(414, 'Cam Lộ', 0, 24, 1, 'vi', 1),
(415, 'Đa Krông', 0, 24, 2, 'vi', 1),
(416, 'Đông Hà', 0, 24, 3, 'vi', 1),
(417, 'Gio Linh', 0, 24, 4, 'vi', 1),
(418, 'Hải Lăng', 0, 24, 5, 'vi', 1),
(419, 'Hướng Hóa', 0, 24, 6, 'vi', 1),
(420, 'Quảng Trị', 0, 24, 7, 'vi', 1),
(421, 'Triệu Phong', 0, 24, 8, 'vi', 1),
(422, 'Vĩnh Linh', 0, 24, 9, 'vi', 1),
(753, 'Ba Chế', 0, 25, 1, 'vi', 1),
(754, 'Bình Liêu', 0, 25, 2, 'vi', 1),
(755, 'Cẩm Phả', 0, 25, 3, 'vi', 1),
(756, 'Cô Tô', 0, 25, 4, 'vi', 1),
(757, 'Đông Triều', 0, 25, 5, 'vi', 1),
(758, 'Hạ Long', 0, 25, 6, 'vi', 1),
(759, 'Hoành Bồ', 0, 25, 7, 'vi', 1),
(760, 'Móng Cái', 0, 25, 8, 'vi', 1),
(761, 'Quảng Hà', 0, 25, 9, 'vi', 1),
(762, 'Tiên Yên', 0, 25, 10, 'vi', 1),
(763, 'Uông Bí', 0, 25, 11, 'vi', 1),
(764, 'Vân Đồn', 0, 25, 12, 'vi', 1),
(765, 'Yên Hưng', 0, 25, 13, 'vi', 1),
(582, 'Ba Tơ', 0, 26, 1, 'vi', 1),
(583, 'Bình Sơn', 0, 26, 2, 'vi', 1),
(584, 'Đức Phổ', 0, 26, 3, 'vi', 1),
(585, 'Lý Sơn', 0, 26, 4, 'vi', 1),
(586, 'Minh Long', 0, 26, 5, 'vi', 1),
(587, 'Mộ Đức', 0, 26, 6, 'vi', 1),
(588, 'Nghĩa Hành', 0, 26, 7, 'vi', 1),
(589, 'Quãng Ngãi', 0, 26, 8, 'vi', 1),
(590, 'Sơn Hà', 0, 26, 9, 'vi', 1),
(591, 'Sơn Tây', 0, 26, 10, 'vi', 1),
(592, 'Sơn Tịnh', 0, 26, 11, 'vi', 1),
(593, 'Trà Bồng', 0, 26, 12, 'vi', 1),
(594, 'Tư Nghĩa', 0, 26, 13, 'vi', 1),
(400, 'Đại Lộc', 0, 27, 1, 'vi', 1),
(401, 'Điện Bàn', 0, 27, 2, 'vi', 1),
(402, 'Duy Xuyên', 0, 27, 3, 'vi', 1),
(403, 'Hiên', 0, 27, 4, 'vi', 1),
(404, 'Hiệp Đức', 0, 27, 5, 'vi', 1),
(405, 'Hội An', 0, 27, 6, 'vi', 1),
(406, 'Nam Giang', 0, 27, 7, 'vi', 1),
(407, 'Núi Thành', 0, 27, 8, 'vi', 1),
(408, 'Phước Sơn', 0, 27, 9, 'vi', 1),
(409, 'Quế Sơn', 0, 27, 10, 'vi', 1),
(410, 'Tam Kỳ', 0, 27, 11, 'vi', 1),
(411, 'Thăng Bình', 0, 27, 12, 'vi', 1),
(412, 'Tiên Phước', 0, 27, 13, 'vi', 1),
(413, 'Trà My', 0, 27, 14, 'vi', 1),
(747, 'Bố Trạch', 0, 28, 1, 'vi', 1),
(748, 'Đồng Hới', 0, 28, 2, 'vi', 1),
(749, 'Lệ Thủy', 0, 28, 3, 'vi', 1),
(750, 'Quảng Ninh', 0, 28, 4, 'vi', 1),
(751, 'Quảng Trạch', 0, 28, 5, 'vi', 1),
(752, 'Tuyên Hóa', 0, 28, 6, 'vi', 1),
(880, 'Minh Hóa', 0, 28, 7, 'vi', 1),
(576, 'Đồng Xuân', 0, 29, 1, 'vi', 1),
(577, 'Sơn Hòa', 0, 29, 2, 'vi', 1),
(578, 'Sông Cầu', 0, 29, 3, 'vi', 1),
(579, 'Sông Hinh', 0, 29, 4, 'vi', 1),
(580, 'Tuy An', 0, 29, 5, 'vi', 1),
(581, 'Tuy Hòa', 0, 29, 6, 'vi', 1),
(877, 'Đông Hòa', 0, 29, 7, 'vi', 1),
(878, 'Tây Hòa', 0, 29, 8, 'vi', 1),
(879, 'Phú Hòa', 0, 29, 9, 'vi', 1),
(388, 'Đoan Hùng', 0, 30, 1, 'vi', 1),
(389, 'Hạ Hòa', 0, 30, 2, 'vi', 1),
(390, 'Lâm Thao', 0, 30, 3, 'vi', 1),
(391, 'Phù Ninh', 0, 30, 4, 'vi', 1),
(392, 'Phú Thọ', 0, 30, 5, 'vi', 1),
(393, 'Sông Thao', 0, 30, 6, 'vi', 1),
(394, 'Tam Nông', 0, 30, 7, 'vi', 1),
(395, 'Thanh Ba', 0, 30, 8, 'vi', 1),
(396, 'Thanh Sơn', 0, 30, 9, 'vi', 1),
(397, 'Thanh Thủy', 0, 30, 10, 'vi', 1),
(398, 'Việt Trì', 0, 30, 11, 'vi', 1),
(399, 'Yên Lập', 0, 30, 12, 'vi', 1),
(875, 'Cẩm Khê', 0, 30, 13, 'vi', 1),
(876, 'Tân Sơn', 0, 30, 14, 'vi', 1),
(743, 'Ninh Hải', 0, 31, 1, 'vi', 1),
(744, 'Ninh Phước', 0, 31, 2, 'vi', 1),
(745, 'Ninh Sơn', 0, 31, 3, 'vi', 1),
(746, 'Phan Rang - Tháp Chàm', 0, 31, 4, 'vi', 1),
(568, 'Hoa Lư', 0, 32, 1, 'vi', 1),
(569, 'Kim Sơn', 0, 32, 2, 'vi', 1),
(571, 'Nho Quan', 0, 32, 3, 'vi', 1),
(572, 'Ninh Bình', 0, 32, 4, 'vi', 1),
(573, 'Tam Điệp', 0, 32, 5, 'vi', 1),
(574, 'Yên Khánh', 0, 32, 6, 'vi', 1),
(575, 'Yên Mô', 0, 32, 7, 'vi', 1),
(872, 'Gia Viễn', 0, 32, 8, 'vi', 1),
(369, 'Anh Sơn', 0, 33, 1, 'vi', 1),
(370, 'Con Cuông', 0, 33, 2, 'vi', 1),
(371, 'Cửa Lò', 0, 33, 3, 'vi', 1),
(372, 'Diễn Châu', 0, 33, 4, 'vi', 1),
(373, 'Đô Lương', 0, 33, 5, 'vi', 1),
(374, 'Hưng Nguyên', 0, 33, 6, 'vi', 1),
(375, 'Kỳ Sơn', 0, 33, 7, 'vi', 1),
(376, 'Nam Đàn', 0, 33, 8, 'vi', 1),
(377, 'Nghi Lộc', 0, 33, 9, 'vi', 1),
(378, 'Nghĩa Đàn', 0, 33, 10, 'vi', 1),
(379, 'Quế Phong', 0, 33, 11, 'vi', 1),
(380, 'Quỳ Châu', 0, 33, 12, 'vi', 1),
(381, 'Quỳ Hợp', 0, 33, 13, 'vi', 1),
(382, 'Quỳnh Lưu', 0, 33, 14, 'vi', 1),
(383, 'Tân Kỳ', 0, 33, 15, 'vi', 1),
(384, 'Thanh Chương', 0, 33, 16, 'vi', 1),
(385, 'Tương Dương', 0, 33, 17, 'vi', 1),
(386, 'Vinh', 0, 33, 18, 'vi', 1),
(387, 'Yên Thành', 0, 33, 19, 'vi', 1),
(883, 'Thái Hòa', 0, 33, 20, 'vi', 1),
(358, 'Giao Thủy', 0, 34, 1, 'vi', 1),
(360, 'Hải Hậu', 0, 34, 2, 'vi', 1),
(361, 'Mỹ Lộc', 0, 34, 3, 'vi', 1),
(362, 'Nam Định', 0, 34, 4, 'vi', 1),
(363, 'Nam Trực', 0, 34, 5, 'vi', 1),
(364, 'Nghĩa Hưng', 0, 34, 6, 'vi', 1),
(365, 'Trực Ninh', 0, 34, 7, 'vi', 1),
(366, 'Vụ Bản', 0, 34, 8, 'vi', 1),
(367, 'Xuân Trường', 0, 34, 9, 'vi', 1),
(368, 'Ý Yên', 0, 34, 10, 'vi', 1),
(341, 'Bến Lức', 0, 35, 1, 'vi', 1),
(344, 'Cần Đước', 0, 35, 2, 'vi', 1),
(345, 'Cần Giuộc', 0, 35, 3, 'vi', 1),
(346, 'Châu Thành', 0, 35, 4, 'vi', 1),
(347, 'Đức Hòa', 0, 35, 5, 'vi', 1),
(348, 'Đức Huệ', 0, 35, 6, 'vi', 1),
(349, 'Mộc Hóa', 0, 35, 7, 'vi', 1),
(350, 'Tân An', 0, 35, 8, 'vi', 1),
(351, 'Tân Hưng', 0, 35, 9, 'vi', 1),
(352, 'Tân Thạnh', 0, 35, 10, 'vi', 1),
(354, 'Tân Trụ', 0, 35, 11, 'vi', 1),
(355, 'Thạnh Hóa', 0, 35, 12, 'vi', 1),
(356, 'Thủ Thừa', 0, 35, 13, 'vi', 1),
(357, 'Vĩnh Hưng', 0, 35, 14, 'vi', 1),
(849, 'Liên Hưng', 0, 35, 15, 'vi', 1),
(306, 'Bắc Hà', 0, 36, 1, 'vi', 1),
(307, 'Bảo Thắng', 0, 36, 2, 'vi', 1),
(308, 'Bảo Yên', 0, 36, 3, 'vi', 1),
(309, 'Bát Xát', 0, 36, 4, 'vi', 1),
(310, 'Cam Đường', 0, 36, 5, 'vi', 1),
(311, 'Lào Cai', 0, 36, 6, 'vi', 1),
(312, 'Mường Khương', 0, 36, 7, 'vi', 1),
(313, 'Sa Pa', 0, 36, 8, 'vi', 1),
(314, 'Than Uyên', 0, 36, 9, 'vi', 1),
(315, 'Văn Bàn', 0, 36, 10, 'vi', 1),
(316, 'Xi Ma Cai', 0, 36, 11, 'vi', 1),
(328, 'Bắc Sơn', 0, 37, 1, 'vi', 1),
(329, 'Bình Gia', 0, 37, 2, 'vi', 1),
(330, 'Cao Lăng', 0, 37, 3, 'vi', 1),
(331, 'Cao Lộc', 0, 37, 4, 'vi', 1),
(332, 'Đình Lập', 0, 37, 5, 'vi', 1),
(333, 'Hữu Lũng', 0, 37, 6, 'vi', 1),
(334, 'Lạng Sơn', 0, 37, 7, 'vi', 1),
(336, 'Lộc Bình', 0, 37, 8, 'vi', 1),
(337, 'Tràng Định', 0, 37, 9, 'vi', 1),
(342, 'Văn Lãng', 0, 37, 10, 'vi', 1),
(343, 'Văn Quang', 0, 37, 11, 'vi', 1),
(317, 'Bảo Lâm', 0, 38, 1, 'vi', 1),
(318, 'Bảo Lộc', 0, 38, 2, 'vi', 1),
(319, 'Cát Tiên', 0, 38, 3, 'vi', 1),
(320, 'Đà Lạt', 0, 38, 4, 'vi', 1),
(321, 'Đạ Tẻh', 0, 38, 5, 'vi', 1),
(322, 'Đạ Huoai', 0, 38, 6, 'vi', 1),
(323, 'Di Linh', 0, 38, 7, 'vi', 1),
(324, 'Đơn Dương', 0, 38, 8, 'vi', 1),
(325, 'Đức Trọng', 0, 38, 9, 'vi', 1),
(326, 'Lạc Dương', 0, 38, 10, 'vi', 1),
(327, 'Lâm Hà', 0, 38, 11, 'vi', 1),
(296, 'Điện Biên', 0, 39, 1, 'vi', 1),
(297, 'Điện Biên Đông', 0, 39, 2, 'vi', 1),
(298, 'Điện Biên Phủ', 0, 39, 3, 'vi', 1),
(299, 'Lai Châu', 0, 39, 4, 'vi', 1),
(300, 'Mường Lay', 0, 39, 5, 'vi', 1),
(301, 'Mường Tè', 0, 39, 6, 'vi', 1),
(302, 'Phong Thổ', 0, 39, 7, 'vi', 1),
(303, 'Sìn Hồ', 0, 39, 8, 'vi', 1),
(304, 'Tủa Chùa', 0, 39, 9, 'vi', 1),
(305, 'Tuần Giáo', 0, 39, 10, 'vi', 1),
(290, 'Đắk Glei', 0, 40, 1, 'vi', 1),
(291, 'Đắk Tô', 0, 40, 2, 'vi', 1),
(292, 'Kon Plông', 0, 40, 3, 'vi', 1),
(293, 'Kon Tum', 0, 40, 4, 'vi', 1),
(294, 'Ngọc Hồi', 0, 40, 5, 'vi', 1),
(295, 'Sa Thầy', 0, 40, 6, 'vi', 1),
(715, 'Đắk Glei', 0, 40, 7, 'vi', 1),
(716, 'Đắk Hà', 0, 40, 8, 'vi', 1),
(717, 'Đắk Tô', 0, 40, 9, 'vi', 1),
(718, 'Kon Plông', 0, 40, 10, 'vi', 1),
(719, 'Kon Tum', 0, 40, 11, 'vi', 1),
(720, 'Ngọc Hồi', 0, 40, 12, 'vi', 1),
(721, 'Sa Thầy', 0, 40, 13, 'vi', 1),
(277, 'An Biên', 0, 41, 1, 'vi', 1),
(278, 'An Minh', 0, 41, 2, 'vi', 1),
(279, 'Châu Thành', 0, 41, 3, 'vi', 1),
(280, 'Gò Quao', 0, 41, 4, 'vi', 1),
(281, 'Gồng Giềng', 0, 41, 5, 'vi', 1),
(282, 'Hà Tiên', 0, 41, 6, 'vi', 1),
(283, 'Hòn Đất', 0, 41, 7, 'vi', 1),
(284, 'Kiên Hải', 0, 41, 8, 'vi', 1),
(285, 'Phú Quốc', 0, 41, 9, 'vi', 1),
(286, 'Rạch Giá', 0, 41, 10, 'vi', 1),
(287, 'Tân Hiệp', 0, 41, 11, 'vi', 1),
(288, 'Vĩnh Thuận', 0, 41, 12, 'vi', 1),
(269, 'Nha Trang', 0, 42, 1, 'vi', 1),
(270, 'Khánh Vĩnh', 0, 42, 2, 'vi', 1),
(271, 'Diên Khánh', 0, 42, 3, 'vi', 1),
(272, 'Ninh Hòa', 0, 42, 4, 'vi', 1),
(273, 'Khánh Sơn', 0, 42, 5, 'vi', 1),
(274, 'Cam Ranh', 0, 42, 6, 'vi', 1),
(275, 'Trường Sa', 0, 42, 7, 'vi', 1),
(276, 'Vạn Ninh', 0, 42, 8, 'vi', 1),
(262, 'Ân Thi', 0, 43, 1, 'vi', 1),
(263, 'Hưng Yên', 0, 43, 2, 'vi', 1),
(264, 'Khoái Châu', 0, 43, 3, 'vi', 1),
(265, 'Tiên Lữ', 0, 43, 4, 'vi', 1),
(266, 'Văn Giang', 0, 43, 5, 'vi', 1),
(267, 'Văn Lâm', 0, 43, 6, 'vi', 1),
(268, 'Yên Mỹ', 0, 43, 7, 'vi', 1),
(705, 'Ân Thi', 0, 43, 8, 'vi', 1),
(706, 'Hưng Yên', 0, 43, 9, 'vi', 1),
(707, 'Khoái Châu', 0, 43, 10, 'vi', 1),
(708, 'Kim Động', 0, 43, 11, 'vi', 1),
(709, 'Mỹ Hào', 0, 43, 12, 'vi', 1),
(710, 'Phù Cừ', 0, 43, 13, 'vi', 1),
(224, 'Đà Bắc', 0, 44, 1, 'vi', 1),
(225, 'Hòa Bình', 0, 44, 2, 'vi', 1),
(226, 'Kim Bôi', 0, 44, 3, 'vi', 1),
(227, 'Kỳ Sơn', 0, 44, 4, 'vi', 1),
(228, 'Lạc Sơn', 0, 44, 5, 'vi', 1),
(229, 'Lạc Thủy', 0, 44, 6, 'vi', 1),
(230, 'Lương Sơn', 0, 44, 7, 'vi', 1),
(231, 'Mai Châu', 0, 44, 8, 'vi', 1),
(232, 'Tân Lạc', 0, 44, 9, 'vi', 1),
(233, 'Yên Thủy', 0, 44, 10, 'vi', 1),
(873, 'Cao Phong', 0, 44, 11, 'vi', 1),
(682, 'Châu Thành', 0, 45, 1, 'vi', 1),
(683, 'Long Mỹ', 0, 45, 2, 'vi', 1),
(685, 'Phụng Hiệp', 0, 45, 3, 'vi', 1),
(687, 'Vị Thanh', 0, 45, 4, 'vi', 1),
(688, 'Vị Thủy', 0, 45, 5, 'vi', 1),
(890, 'Châu Thành A', 0, 45, 6, 'vi', 1),
(891, 'Ngã Bảy', 0, 45, 7, 'vi', 1),
(234, 'Bình Giang', 0, 46, 1, 'vi', 1),
(235, 'Cẩm Giàng', 0, 46, 2, 'vi', 1),
(236, 'Chí Linh', 0, 46, 3, 'vi', 1),
(238, 'Gia Lộc', 0, 46, 4, 'vi', 1),
(239, 'Hải Dương', 0, 46, 5, 'vi', 1),
(241, 'Kim Thành', 0, 46, 6, 'vi', 1),
(242, 'Nam Sách', 0, 46, 7, 'vi', 1),
(243, 'Ninh Giang', 0, 46, 8, 'vi', 1),
(244, 'Kinh Môn', 0, 46, 9, 'vi', 1),
(245, 'Ninh Giang', 0, 46, 10, 'vi', 1),
(246, 'Thanh Hà', 0, 46, 11, 'vi', 1),
(247, 'Thanh Miện', 0, 46, 12, 'vi', 1),
(248, 'Từ Kỳ', 0, 46, 13, 'vi', 1),
(214, 'Cẩm Xuyên', 0, 47, 1, 'vi', 1),
(215, 'Can Lộc', 0, 47, 2, 'vi', 1),
(216, 'Đức Thọ', 0, 47, 3, 'vi', 1),
(217, 'Hà Tĩnh', 0, 47, 4, 'vi', 1),
(218, 'Hồng Lĩnh', 0, 47, 5, 'vi', 1),
(219, 'Hương Khê', 0, 47, 6, 'vi', 1),
(220, 'Hương Sơn', 0, 47, 7, 'vi', 1),
(221, 'Kỳ Anh', 0, 47, 8, 'vi', 1),
(222, 'Nghi Xuân', 0, 47, 9, 'vi', 1),
(223, 'Thạch Hà', 0, 47, 10, 'vi', 1),
(881, 'Vũ Quang', 0, 47, 11, 'vi', 1),
(882, 'Lộc Hà', 0, 47, 12, 'vi', 1),
(689, 'Bình Lục', 0, 49, 1, 'vi', 1),
(690, 'Duy Tiên', 0, 49, 2, 'vi', 1),
(691, 'Kim Bảng', 0, 49, 3, 'vi', 1),
(692, 'Lý Nhân', 0, 49, 4, 'vi', 1),
(693, 'Phủ Lý', 0, 49, 5, 'vi', 1),
(694, 'Thanh Liêm', 0, 49, 6, 'vi', 1),
(498, 'Bắc Mê', 0, 50, 1, 'vi', 1),
(499, 'Bắc Quang', 0, 50, 2, 'vi', 1),
(500, 'Đồng Văn', 0, 50, 3, 'vi', 1),
(501, 'Hà Giang', 0, 50, 4, 'vi', 1),
(502, 'Hoàng Su Phì', 0, 50, 5, 'vi', 1),
(503, 'Mèo Vạt', 0, 50, 6, 'vi', 1),
(504, 'Quản Bạ', 0, 50, 7, 'vi', 1),
(505, 'Vị Xuyên', 0, 50, 8, 'vi', 1),
(506, 'Xín Mần', 0, 50, 9, 'vi', 1),
(507, 'Yên Minh', 0, 50, 10, 'vi', 1),
(187, 'An Khê', 0, 51, 1, 'vi', 1),
(188, 'Ayun Pa ', 0, 51, 2, 'vi', 1),
(189, 'Chư Păh', 0, 51, 3, 'vi', 1),
(190, 'Chư Prông  ', 0, 51, 4, 'vi', 1),
(191, 'Chư Sê ', 0, 51, 5, 'vi', 1),
(192, 'Đức Cơ  ', 0, 51, 6, 'vi', 1),
(193, 'KBang  ', 0, 51, 7, 'vi', 1),
(194, 'Krông Chro', 0, 51, 8, 'vi', 1),
(195, 'Krông Pa ', 0, 51, 9, 'vi', 1),
(196, 'La Grai  ', 0, 51, 10, 'vi', 1),
(197, 'Mang Yang ', 0, 51, 11, 'vi', 1),
(198, 'Pleiku', 0, 51, 12, 'vi', 1),
(826, 'Cao Lãnh', 0, 52, 1, 'vi', 1),
(827, 'Châu Thành', 0, 52, 2, 'vi', 1),
(828, 'Hồng Ngự', 0, 52, 3, 'vi', 1),
(829, 'Lai Vung', 0, 52, 4, 'vi', 1),
(830, 'Lấp Vò', 0, 52, 5, 'vi', 1),
(831, 'Tam Nông', 0, 52, 6, 'vi', 1),
(832, 'Tân Hồng', 0, 52, 7, 'vi', 1),
(833, 'Thanh Bình', 0, 52, 8, 'vi', 1),
(834, 'Tháp Mười', 0, 52, 9, 'vi', 1),
(835, 'Xa Đéc', 0, 52, 10, 'vi', 1),
(634, 'Biên Hòa', 0, 53, 1, 'vi', 1),
(635, 'Định Quán', 0, 53, 2, 'vi', 1),
(636, 'Long Khánh', 0, 53, 3, 'vi', 1),
(637, 'Long Thành', 0, 53, 4, 'vi', 1),
(638, 'Nhơn Trạch', 0, 53, 5, 'vi', 1),
(639, 'Tân Phú', 0, 53, 6, 'vi', 1),
(640, 'Thống Nhất', 0, 53, 7, 'vi', 1),
(641, 'Vĩnh Cừu', 0, 53, 8, 'vi', 1),
(642, 'Xuân Lộc', 0, 53, 9, 'vi', 1),
(838, 'Trảng Bom', 0, 53, 10, 'vi', 1),
(455, 'Buôn Đôn', 0, 56, 1, 'vi', 1),
(456, 'Buôn Ma Thuột', 0, 56, 2, 'vi', 1),
(457, 'Cư Jút', 0, 56, 3, 'vi', 1),
(458, 'Cư M''gar', 0, 56, 4, 'vi', 1),
(459, 'Đắk Mil', 0, 56, 5, 'vi', 1),
(460, 'Đắk Nông', 0, 56, 6, 'vi', 1),
(461, 'Đắk R''lấp', 0, 56, 7, 'vi', 1),
(462, 'Ea H''leo', 0, 56, 8, 'vi', 1),
(463, 'Ea Kra', 0, 56, 9, 'vi', 1),
(464, 'Ea Súp', 0, 56, 10, 'vi', 1),
(465, 'Krông A Na', 0, 56, 11, 'vi', 1),
(466, 'Krông Bông', 0, 56, 12, 'vi', 1),
(467, 'Krông Búk', 0, 56, 13, 'vi', 1),
(468, 'Krông Năng', 0, 56, 14, 'vi', 1),
(469, 'Krông Nô', 0, 56, 15, 'vi', 1),
(470, 'Krông Pắc', 0, 56, 16, 'vi', 1),
(471, 'Lắk', 0, 56, 17, 'vi', 1),
(472, 'M''Đrắt', 0, 56, 18, 'vi', 1),
(176, 'Bảo Lạc', 0, 57, 1, 'vi', 1),
(177, 'Cao Bắng', 0, 57, 2, 'vi', 1),
(178, 'Hạ Lang', 0, 57, 3, 'vi', 1),
(179, 'Hà Quảng', 0, 57, 4, 'vi', 1),
(180, 'Hòa An', 0, 57, 5, 'vi', 1),
(181, 'Nguyên Bình', 0, 57, 6, 'vi', 1),
(182, 'Quảng Hòa', 0, 57, 7, 'vi', 1),
(183, 'Thạch An', 0, 57, 8, 'vi', 1),
(184, 'Thông Nông', 0, 57, 9, 'vi', 1),
(185, 'Trà Lĩnh', 0, 57, 10, 'vi', 1),
(186, 'Trùng Khánh', 0, 57, 11, 'vi', 1),
(491, 'Cà Mau', 0, 58, 1, 'vi', 1),
(492, 'Cái Nước', 0, 58, 2, 'vi', 1),
(493, 'Đầm Dơi', 0, 58, 3, 'vi', 1),
(494, 'Ngọc Hiển', 0, 58, 4, 'vi', 1),
(495, 'Thới Bình', 0, 58, 5, 'vi', 1),
(496, 'Trần Văn Thời', 0, 58, 6, 'vi', 1),
(497, 'U Minh', 0, 58, 7, 'vi', 1),
(887, 'Năm Căn', 0, 58, 8, 'vi', 1),
(888, 'Phú Tân', 0, 58, 9, 'vi', 1),
(654, 'Bắc Bình', 0, 59, 1, 'vi', 1),
(655, 'Đức Linh', 0, 59, 2, 'vi', 1),
(656, 'Hàm Tân', 0, 59, 3, 'vi', 1),
(657, 'Hàm Thuận Bắc', 0, 59, 4, 'vi', 1),
(658, 'Hàm Thuận Nam', 0, 59, 5, 'vi', 1),
(659, 'Phan Thiết', 0, 59, 6, 'vi', 1),
(660, 'Phú Quí', 0, 59, 7, 'vi', 1),
(661, 'Tánh Linh', 0, 59, 8, 'vi', 1),
(662, 'Tuy Phong', 0, 59, 9, 'vi', 1),
(897, 'La Gi', 0, 59, 10, 'vi', 1),
(836, 'Bình Long', 0, 60, 1, 'vi', 1),
(839, 'Phước Long', 0, 60, 2, 'vi', 1),
(851, 'Bù Ðăng', 0, 60, 3, 'vi', 1),
(852, 'Chơn Thành', 0, 60, 4, 'vi', 1),
(473, 'Bến Cát', 0, 61, 1, 'vi', 1),
(474, 'Dầu Tiếng', 0, 61, 2, 'vi', 1),
(475, 'Dĩ An', 0, 61, 3, 'vi', 1),
(476, 'Tân Uyên', 0, 61, 4, 'vi', 1),
(477, 'Thủ Dầu Một', 0, 61, 5, 'vi', 1),
(478, 'Thuận An', 0, 61, 6, 'vi', 1),
(841, 'Lái Thiêu', 0, 61, 7, 'vi', 1),
(896, 'Phú Giáo', 0, 61, 8, 'vi', 1),
(158, 'An Lão', 0, 62, 1, 'vi', 1),
(159, 'An Nhơn', 0, 62, 2, 'vi', 1),
(160, 'Hoài Ân', 0, 62, 3, 'vi', 1),
(161, 'Hoài Nhơn', 0, 62, 4, 'vi', 1),
(162, 'Phù Cát', 0, 62, 5, 'vi', 1),
(163, 'Phù Mỹ', 0, 62, 6, 'vi', 1),
(164, 'Qui Nhơn', 0, 62, 7, 'vi', 1),
(165, 'Tây Sơn', 0, 62, 8, 'vi', 1),
(166, 'Tuy Phước', 0, 62, 9, 'vi', 1),
(167, 'Vân Canh', 0, 62, 10, 'vi', 1),
(168, 'Vĩnh Thạnh', 0, 62, 11, 'vi', 1),
(673, 'Ba Tri', 0, 63, 1, 'vi', 1),
(674, 'Bến Tre', 0, 63, 2, 'vi', 1),
(675, 'Bình Đại', 0, 63, 3, 'vi', 1),
(676, 'Châu Thành', 0, 63, 4, 'vi', 1),
(677, 'Chợ Lách', 0, 63, 5, 'vi', 1),
(678, 'Giồng Trôm', 0, 63, 6, 'vi', 1),
(679, 'Mỏ Cày', 0, 63, 7, 'vi', 1),
(680, 'Thạnh Phú', 0, 63, 8, 'vi', 1),
(483, 'Bắc Ninh', 0, 64, 1, 'vi', 1),
(484, 'Gia Bình', 0, 64, 2, 'vi', 1),
(485, 'Lương Tài', 0, 64, 3, 'vi', 1),
(486, 'Quế Võ', 0, 64, 4, 'vi', 1),
(487, 'Thuận Thành', 0, 64, 5, 'vi', 1),
(488, 'Tiên Du', 0, 64, 6, 'vi', 1),
(489, 'Từ Sơn', 0, 64, 7, 'vi', 1),
(490, 'Yên Phong', 0, 64, 8, 'vi', 1),
(479, 'Bạc Liêu', 0, 65, 1, 'vi', 1),
(480, 'Giá Rai', 0, 65, 2, 'vi', 1),
(481, 'Hồng Dân', 0, 65, 3, 'vi', 1),
(482, 'Vĩnh Lợi', 0, 65, 4, 'vi', 1),
(884, 'Phước Long', 0, 65, 5, 'vi', 1),
(885, 'Đông Hải', 0, 65, 6, 'vi', 1),
(886, 'Hòa Bình', 0, 65, 7, 'vi', 1),
(169, 'Ba Bể', 0, 66, 1, 'vi', 1),
(170, 'Bắc Kạn', 0, 66, 2, 'vi', 1),
(171, 'Bạch Thông ', 0, 66, 3, 'vi', 1),
(172, 'Chợ Đồn', 0, 66, 4, 'vi', 1),
(173, 'Chợ Mới', 0, 66, 5, 'vi', 1),
(174, 'Na Rì', 0, 66, 6, 'vi', 1),
(175, 'Ngân Sơn', 0, 66, 7, 'vi', 1),
(663, 'Bắc Giang', 0, 67, 1, 'vi', 1),
(664, 'Hiệp Hòa', 0, 67, 2, 'vi', 1),
(665, 'Lạng Giang', 0, 67, 3, 'vi', 1),
(666, 'Lục Nam', 0, 67, 4, 'vi', 1),
(667, 'Lục Ngạn', 0, 67, 5, 'vi', 1),
(668, 'Sơn Động', 0, 67, 6, 'vi', 1),
(669, 'Tân Yên', 0, 67, 7, 'vi', 1),
(670, 'Việt Yên', 0, 67, 8, 'vi', 1),
(671, 'Yên Dũng', 0, 67, 9, 'vi', 1),
(672, 'Yên Thế', 0, 67, 10, 'vi', 1),
(151, 'Bà Rịa', 0, 68, 1, 'vi', 1),
(152, 'Châu Đất', 0, 68, 2, 'vi', 1),
(153, 'Côn Đảo', 0, 68, 3, 'vi', 1),
(154, 'Long Đất', 0, 68, 4, 'vi', 1),
(155, 'Tân Thành', 0, 68, 5, 'vi', 1),
(156, 'Vũng Tàu', 0, 68, 6, 'vi', 1),
(157, 'Xuyên Mộc', 0, 68, 7, 'vi', 1),
(898, 'Long Điền', 0, 68, 8, 'vi', 1),
(899, 'Đất Đỏ', 0, 68, 9, 'vi', 1),
(643, 'An Phú', 0, 69, 1, 'vi', 1),
(644, 'Châu Đốc', 0, 69, 2, 'vi', 1),
(645, 'Châu Phú', 0, 69, 3, 'vi', 1),
(646, 'Châu Thành', 0, 69, 4, 'vi', 1),
(647, 'Chợ Mới', 0, 69, 5, 'vi', 1),
(648, 'Long Xuyên', 0, 69, 6, 'vi', 1),
(649, 'Phú Tân', 0, 69, 7, 'vi', 1),
(650, 'Tân Châu', 0, 69, 8, 'vi', 1),
(651, 'Thoại Sơn', 0, 69, 9, 'vi', 1),
(652, 'Tịnh Biên', 0, 69, 10, 'vi', 1),
(653, 'Tri Tôn', 0, 69, 11, 'vi', 1),
(249, 'An Hải', 0, 70, 1, 'vi', 1),
(250, 'An Lão', 0, 70, 2, 'vi', 1),
(251, 'Bạch Long Vỹ', 0, 70, 3, 'vi', 1),
(253, 'Đồ Sơn', 0, 70, 4, 'vi', 1),
(254, 'Hồng Bàng', 0, 70, 5, 'vi', 1),
(255, 'Kiến An', 0, 70, 6, 'vi', 1),
(256, 'Kiến Thụy', 0, 70, 7, 'vi', 1),
(257, 'Lê Chân', 0, 70, 8, 'vi', 1),
(258, 'Ngô Quyền', 0, 70, 9, 'vi', 1),
(259, 'Thủy Nguyên', 0, 70, 10, 'vi', 1),
(260, 'Tiên Lãng', 0, 70, 11, 'vi', 1),
(261, 'Vĩnh Bảo', 0, 70, 12, 'vi', 1),
(854, 'Cát Bà', 0, 70, 13, 'vi', 1),
(900, 'Dương Kinh', 0, 70, 14, 'vi', 1),
(819, 'Đảo Hòang Sa', 0, 71, 1, 'vi', 1),
(820, 'Hải Châu', 0, 71, 2, 'vi', 1),
(821, 'Hòa Vang', 0, 71, 3, 'vi', 1),
(822, 'Liên Chiểu', 0, 71, 4, 'vi', 1),
(823, 'Ngũ Hành Sơn', 0, 71, 5, 'vi', 1),
(824, 'Sơn Trà', 0, 71, 6, 'vi', 1),
(825, 'Thanh Khê', 0, 71, 7, 'vi', 1),
(844, 'Cẩm Lệ', 0, 71, 8, 'vi', 1),
(681, 'Cần Thơ', 0, 72, 1, 'vi', 1),
(684, 'Ô Môn', 0, 72, 2, 'vi', 1),
(686, 'Thốt Nốt', 0, 72, 3, 'vi', 1),
(837, 'Ninh Kiều', 0, 72, 4, 'vi', 1),
(848, 'Cái Răng', 0, 72, 5, 'vi', 1),
(855, 'Bình Thủy', 0, 72, 6, 'vi', 1),
(892, 'Phong Điền', 0, 72, 7, 'vi', 1),
(893, 'Cờ Đỏ', 0, 72, 8, 'vi', 1),
(894, 'Thới Lai', 0, 72, 9, 'vi', 1),
(895, 'Vĩnh Thạnh', 0, 72, 10, 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_listsendmail`
--

CREATE TABLE IF NOT EXISTS `web_listsendmail` (
`id` int(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_listsendmail`
--

INSERT INTO `web_listsendmail` (`id`, `name`, `email`, `lang`, `status`) VALUES
(1, 'Tú', 'consultant1@netspace.edu.vn', 'vi', 1),
(2, 'Thanh', 'consultant2@netspace.edu.vn', 'vi', 1),
(3, 'Khắc', 'consultant3@netspace.edu.vn', 'vi', 1),
(4, 'Tiên', 'consultant4@netspace.edu.vn', 'vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_logs`
--

CREATE TABLE IF NOT EXISTS `web_logs` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `action` varchar(30) NOT NULL,
  `table` varchar(30) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `content` text,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_restore` bigint(10) DEFAULT NULL,
  `user_restore` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_logs`
--

INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(1, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425610009, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%%%%%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL),
(2, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425610019, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%142561000339.JPG%%%142561000339.JPG,142560999931.JPG,%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 1, 1425610051, 'admin'),
(3, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425610065, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%142561000339.JPG%%%142561000339.JPG,142560999931.JPG,%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 1, 1425610084, 'admin'),
(4, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425610093, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%142561000339.JPG%%%142561000339.JPG,142560999931.JPG,%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL),
(5, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425610108, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%%%%142560999931.JPG,%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL),
(6, 'Trang chủ', 'update', 'web_menu', 1425610694, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%%%%%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(7, 'Trang chủ', 'update', 'web_menu', 1425610699, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%142561068831.JPG%%%142561068939.JPG,142561068831.JPG,%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(8, 'Trang chủ', 'update', 'web_menu', 1425610707, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%142561068939.JPG%%%142561068939.JPG,142561068831.JPG,%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(9, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425610760, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%%%%142560999931.JPG,%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL),
(10, 'payment', 'update', 'web_menu_type', 1425610970, 'admin', '`id`,`name`,`description`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values11%%%payment%%%Payment%%%%%%%%%vi%%%11%%%0', 'vi', 0, NULL, NULL),
(11, 'item5', 'update', 'web_menu_type', 1425610977, 'admin', '`id`,`name`,`description`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values11%%%item5%%%Item 5%%%%%%%%%vi%%%11%%%0', 'vi', 0, NULL, NULL),
(12, 'register', 'update', 'web_menu_type', 1425611010, 'admin', '`id`,`name`,`description`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values12%%%register%%%Register%%%%%%%%%vi%%%12%%%0', 'vi', 0, NULL, NULL),
(13, 'slider_banner', 'update', 'web_menu_type', 1425611052, 'admin', '`id`,`name`,`description`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values12%%%slider_banner%%%Slider - Banner%%%%%%%%%vi%%%12%%%0', 'vi', 0, NULL, NULL),
(14, 'slider_banner', 'status', 'web_menu_type', 1425611056, 'admin', '1', 'vi', 0, NULL, NULL),
(15, 'article', 'update', 'web_menu_type', 1425611676, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values2%%%article%%%Thông tin bài viết%%%%%%public/images/articles/%%%public/_thumbs/Images/articles/%%%vi%%%2%%%1', 'vi', 0, NULL, NULL),
(16, 'product', 'update', 'web_menu_type', 1425611766, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values3%%%product%%%Sản phẩm%%%%%%public/images/products/%%%public/_thumbs/Images/products/%%%vi%%%3%%%0', 'vi', 0, NULL, NULL),
(17, 'photo', 'update', 'web_menu_type', 1425611779, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values5%%%photo%%%Hình ảnh%%%%%%public/images/photos/%%%public/_thumbs/Images/photos/%%%vi%%%5%%%0', 'vi', 0, NULL, NULL),
(18, 'video', 'update', 'web_menu_type', 1425611790, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values6%%%video%%%Video%%%%%%public/images/videos/%%%public/_thumbs/Images/videos/%%%vi%%%6%%%0', 'vi', 0, NULL, NULL),
(19, 'slider_banner', 'update', 'web_menu_type', 1425611805, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values12%%%slider_banner%%%Slider - Banner%%%%%%public/images/slider-banner/%%%public/_thumbs/Images/slider-banner/%%%vi%%%12%%%1', 'vi', 0, NULL, NULL),
(20, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425613496, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%%%%%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL),
(21, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425613503, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%1425613491DSC04668.JPG%%%1425613491DSC04668.JPG,1425613487DSC04662.JPG,%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(22, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425613693, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%1425613491DSC04668.JPG%%%1425613491DSC04668.JPG,%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL),
(23, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425613712, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%1425613491DSC04668.JPG%%%1425613491DSC04668.JPG,%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL),
(24, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425613734, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%%%%%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL),
(25, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425613746, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%1425613720DSC04665.JPG%%%1425613721DSC04686.JPG,1425613720DSC04665.JPG,%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL),
(26, 'item_5', 'update', 'web_menu_type', 1425613822, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values11%%%item_5%%%Item 5%%%%%%%%%%%%vi%%%11%%%0', 'vi', 0, NULL, NULL),
(27, 'item_5', 'update', 'web_menu_type', 1425613849, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values11%%%item_5%%%Danh mục menu%%%web_menu%%%public/images/catalog/%%%public/_thumbs/Images/catalog/%%%vi%%%11%%%1', 'vi', 0, NULL, NULL),
(28, 'Trang chủ', 'update', 'web_menu', 1425613867, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%%%%%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(29, 'Trang chủ', 'update', 'web_menu', 1425614020, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%1425613863DSC04699.JPG%%%1425613863DSC04699.JPG,1425613861DSC04698.JPG,%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(30, 'Trang chủ', 'update', 'web_menu', 1425614043, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%%%%%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(31, 'catalog', 'update', 'web_menu_type', 1425615130, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values11%%%catalog%%%Danh mục menu%%%web_menu%%%public/images/catalog/%%%public/_thumbs/Images/catalog/%%%vi%%%11%%%1', 'vi', 0, NULL, NULL),
(32, 'Trang chủ', 'update', 'web_menu', 1425615846, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%%%%%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(33, 'Trang chủ', 'update', 'web_menu', 1425615864, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%1425615843DSC04662.JPG%%%1425615843DSC04662.JPG,1425615842DSC04654.JPG,%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(34, 'Trang chủ', 'update', 'web_menu', 1425615869, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%1425615842DSC04654.JPG%%%1425615843DSC04662.JPG,1425615842DSC04654.JPG,%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(35, 'Trang chủ', 'update', 'web_menu', 1425615875, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%1425615842DSC04654.JPG%%%1425615842DSC04654.JPG,%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(36, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425615883, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%%%%%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL),
(37, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'update', 'web_article', 1425615896, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values16%%%IronFX: Tin tức thị trường forex ngày 26/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html%%%1425615880DSC04670.JPG%%%1425615880DSC04670.JPG,%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015%%%<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425094080%%%vi%%%1%%%,6,8,', 'vi', 0, NULL, NULL),
(38, 'Admin', 'update', 'web_users', 1425616081, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`url_img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`login_number`,`disable_date`,`expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values25%%%Admin%%%%%%0988 388 003%%%hieunhan112@gmail.com%%%0%%%1%%%%%%%%%admin%%%fc7fc678608590b123692867f176fe63%%%,1,2,20,3,4,5,6,7,8,9,10,11,12,21,22,23,%%%,1,2,20,3,4,5,6,7,8,9,10,11,12,21,22,23,%%%%%%0%%%2011-09-21 16:42:26%%%%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(39, 'Nhân', 'update', 'web_users', 1425616123, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`url_img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`login_number`,`disable_date`,`expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values32%%%Nhân%%%12 CMT 8%%%0988388003%%%hieunhan@yahoo.com%%%0%%%1%%%%%%%%%nhan%%%867e1a36d190000d2f266d80889683fc%%%,1,2,22,%%%,1,2,22,%%%%%%0%%%%%%%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(40, 'Lê Tấn Hảo', 'create', 'web_users', 1425616224, 'admin', '', 'vi', 0, NULL, NULL),
(41, 'Trang chủ', 'update', 'web_menu', 1427271820, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%%%%%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(42, 'Trang chủ', 'update', 'web_menu', 1427273925, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexsignalpro%%%%%%%%%Forexcareer%%%Des Forexcareer%%%forexcareer,forex%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(43, 'Giới thiệu', 'update', 'web_menu', 1427273949, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values2%%%Giới thiệu%%%gioi-thieu%%%gioi-thieu/%%%%%%%%%Title giới thiệu%%%Des giới thiệu%%%giới thiệu,gioi thieu%%%0%%%2%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(44, 'Liên hệ', 'update', 'web_menu', 1427274003, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values9%%%Liên hệ%%%lien-he%%%lien-he/%%%%%%%%%Liên hệ%%%Liên hệ%%%liên hệ,lien he%%%0%%%6%%%0%%%vi%%%1%%%13%%%,2,3,', 'vi', 0, NULL, NULL),
(45, 'Chương trình đào tạo', 'update', 'web_menu', 1427274047, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values7%%%Chương trình đào tạo%%%chuong-trinh-dao-tao%%%chuong-trinh-dao-tao/%%%%%%%%%Chương trình đào tạo%%%Chương trình đào tạo%%%chương trình đào tạo,chuong trinh dao tao%%%0%%%3%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(46, 'Phân tích thị trường', 'update', 'web_menu', 1427274073, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Phân tích thị trường%%%phan-tich-thi-truong%%%phan-tich-thi-truong/%%%%%%%%%Phân tích thị trường%%%Phân tích thị trường%%%phân tích thị trường,phan tich thi truong%%%0%%%4%%%1%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(47, 'Tin tức - Sự kiện', 'update', 'web_menu', 1427274098, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values8%%%Tin tức - Sự kiện%%%tin-tuc-su-kien%%%tin-tuc-su-kien/%%%%%%%%%Tin tức - Sự kiện%%%Tin tức - Sự kiện%%%tin tức sự kiện,tin tuc su kien%%%0%%%5%%%1%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(48, 'Reasons to choose FOREXCAREER.com', 'update', 'web_menu', 1427275154, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values15%%%Reasons to choose FOREXCAREER.com%%%reasons-to-choose-forexcareer-com%%%reasons-to-choose-forexcareer-com/%%%%%%%%%Reasons to choose FOREXCAREER.com%%%Reasons to choose FOREXCAREER.com%%%Reasons to choose FOREXCAREER.com%%%1%%%0%%%1%%%vi%%%1%%%2%%%,9,', 'vi', 0, NULL, NULL),
(49, 'Strength and Security', 'update', 'web_article', 1427275293, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Strength and Security%%%strength-and-security%%%%%%%%%%%%Trade with a market leader who has strong financial resources and over 15 years’ experience serving 200,000 clients globally.%%%strength and security,strength and security%%%%%%1%%%1424941800%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(50, 'Price transparency', 'update', 'web_article', 1427275341, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Price transparency%%%price-transparency%%%reasons-to-choose-forexcareer-com/price-transparency.html%%%%%%%%%Tight spreads, quality executions and low roll rates – we publish all our pricing so you can concentrate on trading instead of focusing on the costs.%%%%%%%%%1%%%1424941680%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(51, 'Forex & CFD trading', 'update', 'web_article', 1427275367, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Forex & CFD trading%%%forex-cfd-trading%%%%%%%%%%%%Trade currency pairs from around the globe plus hundreds of Index and Commodity CFDs - all with tight spreads and quality executions.%%%%%%%%%1%%%1424941620%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(52, 'MetaTrader & FOREX.com', 'update', 'web_article', 1427275393, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%MetaTrader & FOREX.com%%%metatrader-forex-com%%%%%%%%%%%%Tight transparent spreads, quality executions, free EA hosting, integrated order management features and free research – get the FOREX.com advantage.%%%%%%%%%1%%%1424941500%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(53, 'Exclusive research', 'update', 'web_article', 1427275409, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values5%%%Exclusive research%%%exclusive-research%%%%%%%%%%%%Benefit from the experience and insights of our global research team with real-time market analysis and actionable trade ideas.%%%%%%%%%1%%%1424941440%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(54, '100% segregated funds', 'update', 'web_article', 1427275425, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values7%%%100% segregated funds%%%100-segregated-funds%%%%%%%%%%%%All customer funds, including your unrealised profits, are fully segregated from our own assets and held with top-tier global banks. We never use client funds for hedging.%%%100 segregated funds,100 segregated funds%%%%%%1%%%1424941380%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(55, 'Consultations 22/3 days', 'update', 'web_article', 1427275453, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values7%%%Consultations 22/3 days%%%consultations-22-3-days%%%%%%%%%%%%Increased by 8 points when buying pair USD exchange rate - VND%%%100 segregated funds,100 segregated funds%%%%%%1%%%1424941380%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(56, 'Consultations 20/3 days', 'update', 'web_article', 1427275463, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values5%%%Consultations 20/3 days%%%consultations-20-3-days%%%%%%%%%%%%Increased by 12 points when buying pair USD exchange rate - VND%%%%%%%%%1%%%1424941440%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(57, 'Consultations 18/3 days', 'update', 'web_article', 1427275469, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%Consultations 18/3 days%%%consultations-18-3-days%%%%%%%%%%%%Increased by 16 points when buying pair USD exchange rate - VND%%%%%%%%%1%%%1424941500%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(58, 'Consultations 14/3 days', 'update', 'web_article', 1427275490, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Consultations 14/3 days%%%consultations-14-3-days%%%%%%%%%%%%Increased by 15 points when buying pair USD exchange rate - VND%%%%%%%%%1%%%1424941620%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(59, 'Consultations 12/3 days', 'update', 'web_article', 1427275496, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Consultations 12/3 days%%%consultations-12-3-days%%%history-forexsignalpro-net/consultations-12-3-days.html%%%%%%%%%Increased by 5 points when buying pair USD exchange rate - VND%%%%%%%%%1%%%1424941680%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(60, 'History ForexSignalPro.Net', 'update', 'web_menu', 1427276233, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values15%%%History ForexSignalPro.Net%%%history-forexsignalpro-net%%%history-forexsignalpro-net/%%%%%%%%%History ForexSignalPro.Net%%%History ForexSignalPro.Net%%%history forexsignalpro net,history forexsignalpro net%%%1%%%0%%%1%%%vi%%%1%%%2%%%,9,', 'vi', 0, NULL, NULL),
(61, 'Automated Trading', 'update', 'web_menu', 1427278510, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Automated Trading%%%automated-trading%%%automated-trading/%%%%%%%%%Automated Trading%%%Automated Trading%%%automated trading,automated trading%%%0%%%4%%%1%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(62, 'Tên trang website', 'update', 'web_config', 1427279105, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values27%%%Tên trang website%%%sitename%%%Forexcareer%%%vi%%%1', 'vi', 0, NULL, NULL),
(63, 'Site name', 'update', 'web_config', 1427279193, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values28%%%Site name%%%sitename%%%Thời trang 09%%%en%%%1', 'en', 0, NULL, NULL),
(64, 'Products', 'delete', 'web_menu', 1427279213, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values12%%%Products%%%products%%%products/%%%%%%%%%Products%%%Products%%%Products%%%0%%%3%%%0%%%en%%%1%%%0', 'en', 0, NULL, NULL),
(65, 'About US', 'delete', 'web_menu', 1427279214, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values11%%%About US%%%about-us%%%about-us/%%%%%%%%%About US%%%About US%%%About US%%%0%%%2%%%0%%%en%%%1%%%0', 'en', 0, NULL, NULL),
(66, 'Home', 'delete', 'web_menu', 1427279214, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values10%%%Home%%%home%%%/?lang=en%%%%%%%%%Home%%%Home%%%Home%%%0%%%1%%%0%%%en%%%1%%%0', 'en', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(67, 'Đồng Euro gặp khó với khả năng Hy Lạp rời EU?', 'update', 'web_article', 1427279906, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values8%%%Đồng Euro gặp khó với khả năng Hy Lạp rời EU?%%%dong-euro-gap-kho-voi-kha-nang-hy-lap-roi-eu%%%phan-tich-thi-truong/dong-euro-gap-kho-voi-kha-nang-hy-lap-roi-eu.html%%%%%%%%%Chỉ số S&P 500 tiếp tục giao dịch trong phạm vi hẹp. Bất chấp tất cả những biến động trong 2 tháng vừa qua, chúng ta cuối cùng vân chẳng đi tới đâu.%%%đồng euro gặp khó với khả năng hy lạp rời eu,dong euro gap kho voi kha nang hy lap roi eu%%%<p>Chỉ số S&amp;P 500 tiếp tục giao dịch trong phạm vi hẹp. Bất chấp tất cả những biến động trong 2 tháng vừa qua, chúng ta cuối cùng vân chẳng đi tới đâu.</p>\r\n\r\n<p>Câu chuyện lớn hơn có liên quan tới châu Âu, đặc biệt là Hy Lạp- nơi mà khủng hoảng tài chính kinh tế cuối cùng cũng lan rộng sang cả chính trị. Gần đây, mỗi phiên thảo luận về vấn đề nợ Hy Lạp đều có sự tham gia của các chính trị gia- những người có quyền lực lớn trong giới ngân hàng và tài chính. Kết quả là, tất cả những phiên thảo luận trước đây đều kết thúc tại các vấn đề ngân hàng trong khi nền kinh tế Hy Lạp vẫn đầy rối ren.</p>\r\n\r\n<p>Lúc này đây, rủi ro Hy Lạp rời khỏi EU đang trở nên nhạt nhòa bởi vì chẳng có tia hi vọng nào cho thấy một vụ vỡ nợ khác sẽ làm mọi thứ tốt hơn. Hơn nữa, Nga cũng đã sẵn sàng hỗ trợ cho những ai biết cách giúp Putin phá vỡ các biện pháp trừng phạt của EU. Hy Lạp biết điều này.</p>\r\n\r\n<p>Chẳng ai biết tình hình hiện tại chính xác ra sao. Tuy nhiên, một số người lại cho rằng khả năng Hy Lạp rời bỏ EU còn cao hơn trước. Thị trường cảm thấy đây chính là lý do tại sao đồng euro lại phá thủng đường hỗ trợ mà chúng đã nắm giữ trong suốt thời kỳ đầu của khủng hoảng tài chính khu vực đồng tiền chung: 2010- 2012.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.gold-eagle.com/sites/default/files/summers021015-2.jpg" />​</p>\r\n\r\n<p>Có thể nói nguyên nhân thực tế không phải là Hy Lạp nhưng lại xuất phát từ quốc gia này. Nếu các cuộc đàm phá về tái cấu trúc nợ của Hy Lạp thành công thì Tây Ban Nha, Italia và Pháp sẽ là những cái tên tiếp theo. Tiện thể khi nói về điều này, chúng ta có thể thấy hơn 1/3 quốc gia khối EU đang cần phải tái cấu trúc nợ…</p>\r\n\r\n<p>Vậy tại sao Hy Lạp lại là một thỏa thuận lớn đến như vậy…bởi vì đó là chỉ số tham chiếu cho thấy chu kỳ tiếp theo của khủng hoảng sẽ diễn ra như thế nào. Hy Lạp chiếm gần 2% nền kinh tế châu Âu. Tây Ban Nha, Italia và Pháp còn là vấn đề lớn hơn nữa. Tất cả họ đều đang chờ đợi xem những gì sẽ xảy ra (cần phải nhớ rằng mới đây Pháp đã ủng hộ cho Hy Lạp trong kế hoạch tái cơ cấu nợ).</p>\r\n\r\n<p>Ông Draghi cần phải vượt qua nhiều hàng rào khó nhằn trên con đường của ông. Thị trường đang ngửi thấy mùi “máu”.</p>\r\n\r\n<p>Giavang.net</p>\r\n%%%1%%%1425092940%%%en%%%1%%%,6,', 'en', 0, NULL, NULL),
(68, 'Giày Nam', 'update', 'web_menu', 1427280068, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values5%%%Giày Nam%%%giay-nam%%%giay-nam/%%%%%%%%%Giày Nam%%%Giày Nam%%%giày nam,giay nam%%%13%%%3%%%0%%%en%%%0%%%3%%%,2,4,', 'en', 0, NULL, NULL),
(69, 'Trang chủ', 'update', 'web_slider_banner', 1427280955, 'admin', '`id`,`name`,`img_avatar`,`img_arr`,`url`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values1%%%Trang chủ%%%slider-home.jpg%%%%%%javascript:;%%%1%%%en%%%1%%%1%%%,1,2,', 'en', 0, NULL, NULL),
(70, 'Trang chủ', 'update', 'web_slider_banner', 1427281122, 'admin', '`id`,`name`,`img_avatar`,`img_arr`,`url`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values1%%%Trang chủ%%%forexcareer1427280903.png%%%forexcareer1427280903.png,%%%javascript:;%%%1%%%en%%%1%%%1%%%,1,2,', 'en', 0, NULL, NULL),
(71, 'Trang chủ', 'update', 'web_slider_banner', 1427281136, 'admin', '`id`,`name`,`img_avatar`,`img_arr`,`url`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values1%%%Trang chủ%%%slider-forex.png%%%forexcareer1427280903.png,%%%javascript:;%%%1%%%en%%%1%%%1%%%,1,2,', 'en', 0, NULL, NULL),
(72, 'catalog', 'update', 'web_menu_type', 1427344180, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`type`,`status`fields%%%values11%%%catalog%%%Danh mục menu%%%web_menu%%%public/images/catalog/%%%public/_thumbs/Images/catalog/%%%vi%%%11%%%1%%%1', 'vi', 0, NULL, NULL),
(73, 'slider_banner', 'update', 'web_menu_type', 1427344187, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`type`,`status`fields%%%values12%%%slider_banner%%%Slider - Banner%%%web_slider_banner%%%public/images/slider-banner/%%%public/_thumbs/Images/slider-banner/%%%vi%%%12%%%1%%%1', 'vi', 0, NULL, NULL),
(74, 'site', 'update', 'web_menu_type', 1427345280, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`type`,`status`fields%%%values1%%%site%%%Trang chủ%%%%%%%%%%%%vi%%%1%%%1%%%1', 'en', 0, NULL, NULL),
(75, 'site', 'update', 'web_menu_type', 1427345329, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`type`,`status`fields%%%values1%%%site%%%Home%%%%%%%%%%%%en%%%1%%%1%%%1', 'en', 0, NULL, NULL),
(76, 'item_1', 'update', 'web_menu_type', 1427345420, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`type`,`status`fields%%%values7%%%item_1%%%Item 1%%%%%%%%%%%%vi%%%7%%%1%%%0', 'en', 0, NULL, NULL),
(77, 'item_2', 'update', 'web_menu_type', 1427345490, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`type`,`status`fields%%%values8%%%item_2%%%Item 2%%%%%%%%%%%%vi%%%8%%%1%%%0', 'en', 0, NULL, NULL),
(78, 'signup', 'update', 'web_menu_type', 1427345501, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`type`,`status`fields%%%values7%%%signup%%%Đăng ký thành viên%%%web_users%%%%%%%%%en%%%7%%%1%%%1', 'en', 0, NULL, NULL),
(79, 'Forex Signal', 'update', 'web_menu', 1427345625, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values5%%%Forex Signal%%%forex-signal%%%forex-signal/%%%%%%%%%Forex Signal Service - Pricing and Subscription Plans%%%Forex Signal Service - Pricing and Subscription Plans%%%forex signal,forex signal%%%0%%%7%%%0%%%en%%%1%%%3%%%,9,', 'en', 0, NULL, NULL),
(80, 'Thời trang Nữ', 'update', 'web_menu', 1427345668, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values14%%%Thời trang Nữ%%%thoi-trang-nu%%%thoi-trang-nu/%%%%%%%%%Thời trang dành cho Nữ%%%Thời trang dành cho Nữ%%%thời trang nữ,thoi trang nu%%%16%%%2%%%1%%%en%%%0%%%3%%%,2,4,', 'en', 0, NULL, NULL),
(81, 'Forex Login', 'update', 'web_menu', 1427345709, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values14%%%Forex Login%%%forex-login%%%forex-login/%%%%%%%%%Forex Login%%%Forex Login%%%Forex Login%%%0%%%2%%%1%%%en%%%1%%%8%%%,9,', 'en', 0, NULL, NULL),
(82, 'Forex Signal', 'update', 'web_menu', 1427345741, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values5%%%Forex Signal%%%forex-signal%%%forex-signal/%%%%%%%%%Forex Signal Service - Pricing and Subscription Plans%%%Forex Signal Service - Pricing and Subscription Plans%%%forex signal,forex signal%%%0%%%7%%%0%%%en%%%1%%%7%%%,9,', 'en', 0, NULL, NULL),
(83, 'item_3', 'update', 'web_menu_type', 1427345777, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`type`,`status`fields%%%values9%%%item_3%%%Item 3%%%%%%%%%%%%vi%%%9%%%1%%%0', 'en', 0, NULL, NULL),
(84, 'Thanh toán', 'update', 'web_menu', 1427345825, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values18%%%Thanh toán%%%thanh-toan%%%thanh-toan/%%%%%%%%%Thanh toán%%%Thanh toán%%%thanh toán,thanh toan%%%16%%%2%%%0%%%en%%%0%%%7%%%,9,', 'en', 0, NULL, NULL),
(85, 'Forex Login', 'update', 'web_menu', 1427345830, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values14%%%Forex Login%%%forex-login%%%forex-login/%%%%%%%%%Forex Login%%%Forex Login%%%Forex Login%%%0%%%8%%%1%%%en%%%1%%%8%%%,9,', 'en', 0, NULL, NULL),
(86, 'Forex Signup', 'update', 'web_menu', 1427347144, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values5%%%Forex Signup%%%forex-signup%%%forex-signup/%%%%%%%%%Forex Signal Service - Pricing and Subscription Plans%%%Forex Signal Service - Pricing and Subscription Plans%%%forex signup,forex signup%%%0%%%7%%%0%%%en%%%1%%%7%%%,9,', 'en', 0, NULL, NULL),
(87, 'Forex Login', 'update', 'web_menu', 1427347158, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values14%%%Forex Login%%%forex-login%%%forex-login/%%%%%%%%%Forex Login%%%Forex Login%%%Forex Login%%%0%%%8%%%0%%%en%%%1%%%8%%%,9,', 'en', 0, NULL, NULL),
(88, 'Sign Up', 'update', 'web_menu', 1427348018, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values5%%%Sign Up%%%forex-signup%%%forex-signup/%%%%%%%%%Forex Signal Service - Pricing and Subscription Plans%%%Forex Signal Service - Pricing and Subscription Plans%%%forex signup,forex signup%%%0%%%7%%%0%%%en%%%1%%%7%%%,9,', 'en', 0, NULL, NULL),
(89, 'Login', 'update', 'web_menu', 1427348026, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values14%%%Login%%%forex-login%%%forex-login/%%%%%%%%%Forex Login%%%Forex Login%%%Forex Login%%%0%%%8%%%0%%%en%%%1%%%8%%%,9,', 'en', 0, NULL, NULL),
(90, 'Sign Up', 'update', 'web_menu', 1427362005, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values5%%%Sign Up%%%signup%%%signup/%%%%%%%%%Forex Signal Service - Pricing and Subscription Plans%%%Forex Signal Service - Pricing and Subscription Plans%%%forex signup,forex signup%%%0%%%7%%%0%%%en%%%1%%%7%%%,9,', 'en', 0, NULL, NULL),
(91, 'Payment', 'update', 'web_menu', 1427362015, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values18%%%Payment%%%payment%%%payment/%%%%%%%%%Payment%%%Payment%%%payment,payment%%%0%%%9%%%0%%%en%%%1%%%9%%%,9,', 'en', 0, NULL, NULL),
(92, 'Login', 'update', 'web_menu', 1427362020, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values14%%%Login%%%login%%%login/%%%%%%%%%Forex Login%%%Forex Login%%%Forex Login%%%0%%%8%%%0%%%en%%%1%%%8%%%,9,', 'en', 0, NULL, NULL),
(93, 'Đặt hàng', 'update', 'web_menu', 1427362076, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values16%%%Đặt hàng%%%dat-hang%%%dat-hang/%%%%%%%%%Đặt hàng%%%Đặt hàng%%%đặt hàng,dat hang%%%0%%%100%%%0%%%en%%%0%%%8%%%,9,', 'en', 0, NULL, NULL),
(94, 'Thời trang Nam', 'update', 'web_menu', 1427362113, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values13%%%Thời trang Nam%%%thoi-trang-nam%%%thoi-trang-nam/%%%%%%%%%Thời trang dành cho Nam%%%Thời trang dành cho Nam%%%thời trang nam,thoi trang nam%%%16%%%1%%%1%%%en%%%0%%%3%%%,2,4,', 'en', 0, NULL, NULL),
(95, 'Giỏ hàng', 'update', 'web_menu', 1427362146, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values17%%%Giỏ hàng%%%gio-hang%%%gio-hang/%%%%%%%%%Giỏ hàng%%%Giỏ hàng%%%giỏ hàng,gio hang%%%16%%%1%%%0%%%en%%%0%%%8%%%,9,', 'en', 0, NULL, NULL),
(96, 'Áo Nam', 'update', 'web_menu', 1427362172, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values3%%%Áo Nam%%%ao-nam%%%ao-nam/%%%%%%%%%Áo Nam%%%Áo Nam%%%áo nam,ao nam%%%13%%%1%%%0%%%en%%%0%%%3%%%,2,4,', 'en', 0, NULL, NULL),
(97, 'Quần Nam', 'update', 'web_menu', 1427362198, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values4%%%Quần Nam%%%quan-nam%%%quan-nam/%%%%%%%%%Quần Nam%%%Quần Nam%%%quần nam,quan nam%%%13%%%2%%%0%%%en%%%0%%%3%%%,2,4,', 'en', 0, NULL, NULL),
(98, 'Forex Buy & Sell signals sent in real-time to your mobile phone, email and computer.', 'create', 'web_menu', 1427362257, 'admin', '', 'en', 0, NULL, NULL),
(99, 'Signals include Entry, Stop Loss, and Take Profit targets.', 'create', 'web_menu', 1427362273, 'admin', '', 'en', 0, NULL, NULL),
(100, 'Real-Time Trade Signal updates.', 'create', 'web_menu', 1427362284, 'admin', '', 'en', 0, NULL, NULL),
(101, 'Forex Signals auto executed and copied directly to your MT4 account.', 'create', 'web_menu', 1427362300, 'admin', '', 'en', 0, NULL, NULL),
(102, 'Cloud based Forex Signal Platform', 'create', 'web_menu', 1427362314, 'admin', '', 'en', 0, NULL, NULL),
(103, 'Enhanced Forex Charting ($295 value)', 'create', 'web_menu', 1427362326, 'admin', '', 'en', 0, NULL, NULL),
(104, 'SMS / Email Alert Control Panel', 'create', 'web_menu', 1427362342, 'admin', '', 'en', 0, NULL, NULL),
(105, 'Market Trend Meters', 'create', 'web_menu', 1427362351, 'admin', '', 'en', 0, NULL, NULL),
(106, 'Announcement Tracker', 'create', 'web_menu', 1427362364, 'admin', '', 'en', 0, NULL, NULL),
(107, 'Live Streaming Forex News', 'create', 'web_menu', 1427362374, 'admin', '', 'en', 0, NULL, NULL),
(108, 'Forex Economic Calender', 'create', 'web_menu', 1427362383, 'admin', '', 'en', 0, NULL, NULL),
(109, 'Free Telephone/Email Support', 'create', 'web_menu', 1427362397, 'admin', '', 'en', 0, NULL, NULL),
(110, '8 Exit Strategies to Enhance Your Forex Trading*', 'create', 'web_menu', 1427362406, 'admin', '', 'en', 0, NULL, NULL),
(111, 'Real-Time Live & Interactive Forex Trading Room. ($129 value)', 'create', 'web_menu', 1427362417, 'admin', '', 'en', 0, NULL, NULL),
(112, 'New! One hour per month discussion with a senior ForexSignal.com trader. ($150 value)', 'create', 'web_menu', 1427362426, 'admin', '', 'en', 0, NULL, NULL),
(113, 'New! One hour per month discussion with a senior ForexSignal.com trader. ($150 value)', 'update', 'web_menu', 1427362464, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values35%%%New! One hour per month discussion with a senior ForexSignal.com trader. ($150 value)%%%%%%%%%%%%%%%New! One hour per month discussion with a senior ForexSignal.com trader. ($150 value)%%%%%%%%%4%%%4%%%0%%%en%%%1%%%14%%%,9,', 'en', 0, NULL, NULL),
(114, 'product', 'status', 'web_menu_type', 1427365258, 'admin', '1', 'en', 0, NULL, NULL),
(115, 'product', 'status', 'web_menu_type', 1427365279, 'admin', '0', 'en', 0, NULL, NULL),
(116, 'Admin', 'update', 'web_users', 1427365652, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`url_img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`login_number`,`disable_date`,`expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%hieunhan112@gmail.com%%%0%%%1%%%%%%%%%admin%%%fc7fc678608590b123692867f176fe63%%%,1,2,20,3,4,5,6,7,8,9,10,11,12,21,22,23,%%%,1,2,20,3,4,5,6,7,8,9,10,11,12,21,22,23,%%%%%%0%%%2011-09-21 16:42:26%%%%%%vi%%%0%%%1%%%3', 'en', 0, NULL, NULL),
(117, 'STANDARD', 'create', 'web_users_package', 1427366061, 'admin', '', 'en', 0, NULL, NULL),
(118, 'PRO', 'create', 'web_users_package', 1427366126, 'admin', '', 'en', 0, NULL, NULL),
(119, 'ULTIMATE', 'create', 'web_users_package', 1427366172, 'admin', '', 'en', 0, NULL, NULL),
(120, 'STANDARD', 'update', 'web_users_package', 1427366399, 'admin', '`id`,`name`,`price`,`price_trial`,`discount`,`order`,`menu_id`,`lang`,`status`fields%%%values1%%%STANDARD%%%169%%%0%%%0%%%1%%%,21,22,23,25,28,29,30,31,32,33,%%%en%%%1', 'en', 0, NULL, NULL),
(121, 'PRO', 'update', 'web_users_package', 1427366464, 'admin', '`id`,`name`,`price`,`price_trial`,`discount`,`order`,`menu_id`,`lang`,`status`fields%%%values2%%%PRO%%%199%%%0%%%0%%%2%%%,21,22,23,24,25,27,28,29,30,32,33,34,%%%en%%%1', 'en', 0, NULL, NULL),
(122, 'ULTIMATE', 'update', 'web_users_package', 1427366471, 'admin', '`id`,`name`,`price`,`price_trial`,`discount`,`order`,`menu_id`,`lang`,`status`fields%%%values3%%%ULTIMATE%%%295%%%0%%%0%%%3%%%,21,22,23,24,25,26,27,28,29,30,32,33,34,35,%%%en%%%1', 'en', 0, NULL, NULL),
(123, 'STANDARD', 'update', 'web_users_package', 1427421324, 'admin', '`id`,`name`,`price`,`price_trial`,`discount`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values1%%%STANDARD%%%169%%%60%%%0%%%1%%%0%%%,21,22,23,25,28,29,30,31,32,33,%%%en%%%1', 'en', 0, NULL, NULL),
(124, '10 Day Trial Monthly renewal in 10 days at $169 price.', 'create', 'web_users_package', 1427421720, 'admin', '', 'en', 0, NULL, NULL),
(125, '10 Day Trial Monthly renewal in 10 days at $169 price.', 'update', 'web_users_package', 1427421816, 'admin', '`id`,`name`,`price`,`discount`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values4%%%10 Day Trial Monthly renewal in 10 days at $169 price.%%%60%%%0%%%1%%%1%%%%%%en%%%1', 'en', 0, NULL, NULL),
(126, 'Monthly Standard Subscription', 'create', 'web_users_package', 1427421899, 'admin', '', 'en', 0, NULL, NULL),
(127, '3 Month Standard Subscription', 'create', 'web_users_package', 1427422090, 'admin', '', 'en', 0, NULL, NULL),
(128, '6 Month Standard Subscription  ', 'create', 'web_users_package', 1427422147, 'admin', '', 'en', 0, NULL, NULL),
(129, '10 Day Trial Monthly renewal in 10 days at $199 price.', 'create', 'web_users_package', 1427422196, 'admin', '', 'en', 0, NULL, NULL),
(130, 'Monthly Subscription', 'create', 'web_users_package', 1427422218, 'admin', '', 'en', 0, NULL, NULL),
(131, '3 Month Subscription', 'create', 'web_users_package', 1427422306, 'admin', '', 'en', 0, NULL, NULL),
(132, '3 Month Subscription', 'update', 'web_users_package', 1427422312, 'admin', '`id`,`name`,`price`,`discount`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values10%%%3 Month Subscription%%%597%%%15%%%2%%%2%%%%%%en%%%1', 'en', 0, NULL, NULL),
(133, '6 Month Subscription', 'create', 'web_users_package', 1427422369, 'admin', '', 'en', 0, NULL, NULL),
(134, '6 Month Subscription', 'update', 'web_users_package', 1427422386, 'admin', '`id`,`name`,`price`,`discount`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values11%%%6 Month Subscription%%%1194%%%25%%%3%%%2%%%%%%en%%%1', 'en', 0, NULL, NULL),
(135, '10 Day Trial   Monthly renewal in 10 days at $295 price.', 'create', 'web_users_package', 1427422510, 'admin', '', 'en', 0, NULL, NULL),
(136, '10 Day Trial Monthly renewal in 10 days at $199 price.', 'update', 'web_users_package', 1427422553, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values8%%%10 Day Trial Monthly renewal in 10 days at $199 price.%%%199%%%70%%%0%%%1%%%2%%%%%%en%%%1', 'en', 0, NULL, NULL),
(137, 'Monthly Subscription', 'create', 'web_users_package', 1427422587, 'admin', '', 'en', 0, NULL, NULL),
(138, '3 Month Subscription', 'create', 'web_users_package', 1427422660, 'admin', '', 'en', 0, NULL, NULL),
(139, '6 Month Subscription', 'create', 'web_users_package', 1427422747, 'admin', '', 'en', 0, NULL, NULL),
(140, '10 Day Trial Monthly renewal in 10 days at $169 price.', 'update', 'web_users_package', 1427422844, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values4%%%10 Day Trial Monthly renewal in 10 days at $169 price.%%%60%%%0%%%0%%%1%%%1%%%%%%en%%%1', 'en', 0, NULL, NULL),
(141, 'Monthly Standard Subscription', 'update', 'web_users_package', 1427422851, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values5%%%Monthly Standard Subscription%%%169%%%0%%%0%%%2%%%1%%%%%%en%%%1', 'en', 0, NULL, NULL),
(142, '3 Month Standard Subscription', 'update', 'web_users_package', 1427422858, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values6%%%3 Month Standard Subscription%%%507%%%22%%%0%%%3%%%1%%%%%%en%%%1', 'en', 0, NULL, NULL),
(143, '6 Month Standard Subscription  ', 'update', 'web_users_package', 1427422863, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values7%%%6 Month Standard Subscription  %%%1014%%%32%%%0%%%4%%%1%%%%%%en%%%1', 'en', 0, NULL, NULL),
(144, '10 Day Trial Monthly renewal in 10 days at $199 price.', 'update', 'web_users_package', 1427422874, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values8%%%10 Day Trial Monthly renewal in 10 days at $199 price.%%%70%%%0%%%0%%%1%%%2%%%%%%en%%%1', 'en', 0, NULL, NULL),
(145, 'Monthly Subscription', 'update', 'web_users_package', 1427422878, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values9%%%Monthly Subscription%%%199%%%0%%%0%%%2%%%2%%%%%%en%%%1', 'en', 0, NULL, NULL),
(146, '3 Month Subscription', 'update', 'web_users_package', 1427422882, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values10%%%3 Month Subscription%%%597%%%15%%%0%%%3%%%2%%%%%%en%%%1', 'en', 0, NULL, NULL),
(147, '6 Month Subscription', 'update', 'web_users_package', 1427422887, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values11%%%6 Month Subscription%%%1194%%%25%%%0%%%4%%%2%%%%%%en%%%1', 'en', 0, NULL, NULL),
(148, 'STANDARD', 'update', 'web_users_package', 1427425269, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values1%%%STANDARD%%%169%%%0%%%0%%%1%%%0%%%,21,22,23,25,28,29,30,31,32,33,%%%en%%%1', 'en', 0, NULL, NULL),
(149, 'ULTIMATE', 'update', 'web_users_package', 1427425288, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`parent`,`menu_id`,`lang`,`status`fields%%%values3%%%ULTIMATE%%%295%%%0%%%0%%%3%%%0%%%,21,22,23,24,25,26,27,28,29,30,32,33,34,35,%%%en%%%1', 'en', 0, NULL, NULL),
(150, '10 Day Trial Monthly renewal in 10 days at $169 price.', 'update', 'web_users_package', 1427428721, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values4%%%10 Day Trial Monthly renewal in 10 days at $169 price.%%%60%%%0%%%10%%%1%%%%%%1%%%%%%en%%%1', 'en', 0, NULL, NULL),
(151, 'Test payment $1', 'create', 'web_users_package', 1427428994, 'admin', '', 'en', 0, NULL, NULL),
(152, 'Test payment $1', 'update', 'web_users_package', 1427429251, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values16%%%Test payment $1%%%1%%%0%%%1%%%0%%%%%%1%%%%%%en%%%1', 'en', 0, NULL, NULL),
(153, '10 Day Trial Monthly renewal in 10 days at $169 price.', 'update', 'web_users_package', 1427430820, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values4%%%10 Day Trial Monthly renewal in 10 days at $169 price.%%%60%%%0%%%10%%%1%%%https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=EBRZ7Q3DDBJ42%%%1%%%%%%en%%%1', 'en', 0, NULL, NULL),
(154, 'Test payment $1', 'update', 'web_users_package', 1427430895, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values16%%%Test payment $1%%%1%%%0%%%1%%%0%%%https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=RPVEPZJRTRTGA%%%1%%%%%%en%%%1', 'en', 0, NULL, NULL),
(155, '10 Day Trial Monthly renewal in 10 days at $169 price.', 'update', 'web_users_package', 1427435470, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values4%%%10 Day Trial Monthly renewal in 10 days at $169 price.%%%60%%%0%%%10%%%1%%%%%%1%%%%%%en%%%1', 'en', 0, NULL, NULL),
(156, 'Test payment $1', 'update', 'web_users_package', 1427435545, 'admin', '`id`,`name`,`price`,`discount`,`songay`,`order`,`payment_paypal`,`parent`,`menu_id`,`lang`,`status`fields%%%values16%%%Test payment $1%%%1%%%0%%%1%%%0%%%https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=V5C427XP9GK8C%%%1%%%%%%en%%%1', 'en', 0, NULL, NULL),
(157, 'Admin', 'update', 'web_users', 1427448664, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`url_img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`login_number`,`disable_date`,`expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%hieunhan112@gmail.com%%%0%%%1%%%%%%%%%admin%%%fc7fc678608590b123692867f176fe63%%%,1,2,20,3,4,6,7,8,9,10,11,12,13,21,22,23,%%%,1,2,20,3,4,6,7,8,9,10,11,12,13,21,22,23,%%%%%%0%%%2011-09-21 16:42:26%%%%%%en%%%0%%%1%%%3', 'en', 0, NULL, NULL),
(158, 'History counseling ForexSignalPro.Net', 'update', 'web_menu', 1427448736, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values15%%%History counseling ForexSignalPro.Net%%%history-forexsignalpro-net%%%history-forexsignalpro-net/%%%%%%%%%History ForexSignalPro.Net%%%History ForexSignalPro.Net%%%history forexsignalpro net,history forexsignalpro net%%%1%%%0%%%1%%%en%%%1%%%2%%%,9,', 'en', 0, NULL, NULL),
(159, 'Consultations 22/3 days', 'update', 'web_forex', 1427450263, 'admin', '`id`,`name`,`description`,`exactly`,`datetime`,`lang`,`status`,`menu_id`fields%%%values7%%%Consultations 22/3 days%%%Increased by 8 points when buying pair USD exchange rate - VND%%%1%%%1427014980%%%en%%%1%%%,15,', 'en', 0, NULL, NULL),
(160, 'Consultations 20/3 days', 'update', 'web_forex', 1427450273, 'admin', '`id`,`name`,`description`,`exactly`,`datetime`,`lang`,`status`,`menu_id`fields%%%values5%%%Consultations 20/3 days%%%Increased by 12 points when buying pair USD exchange rate - VND%%%1%%%1426842240%%%en%%%1%%%,15,', 'en', 0, NULL, NULL),
(161, 'Consultations 20/3 days', 'update', 'web_forex', 1427450281, 'admin', '`id`,`name`,`description`,`exactly`,`datetime`,`lang`,`status`,`menu_id`fields%%%values5%%%Consultations 20/3 days%%%<p>Increased by 12 points when buying pair USD exchange rate - VND</p>\r\n%%%2%%%1426842240%%%en%%%1%%%,15,', 'en', 0, NULL, NULL),
(162, 'Trang chủ', 'create', 'web_menu', 1427514410, 'admin', '', 'vi', 0, NULL, NULL),
(163, 'Giới thiệu', 'create', 'web_menu', 1427514466, 'admin', '', 'vi', 0, NULL, NULL),
(164, 'product', 'update', 'web_menu_type', 1427514484, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`type`,`status`fields%%%values3%%%product%%%Sản phẩm%%%web_product%%%public/images/products/%%%public/_thumbs/Images/products/%%%vi%%%3%%%1%%%0', 'vi', 0, NULL, NULL),
(165, 'product', 'status', 'web_menu_type', 1427514487, 'admin', '1', 'vi', 0, NULL, NULL),
(166, 'signup', 'status', 'web_menu_type', 1427514494, 'admin', '0', 'vi', 0, NULL, NULL),
(167, 'login', 'status', 'web_menu_type', 1427514494, 'admin', '0', 'vi', 0, NULL, NULL),
(168, 'payment', 'status', 'web_menu_type', 1427514495, 'admin', '0', 'vi', 0, NULL, NULL),
(169, 'Mua bán xe cố', 'create', 'web_menu', 1427514535, 'admin', '', 'vi', 0, NULL, NULL),
(170, 'product', 'update', 'web_menu_type', 1427514545, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`type`,`status`fields%%%values3%%%product%%%Xe cổ%%%web_product%%%public/images/products/%%%public/_thumbs/Images/products/%%%vi%%%3%%%1%%%1', 'vi', 0, NULL, NULL),
(171, 'Kiến thức xe cổ', 'create', 'web_menu', 1427514571, 'admin', '', 'vi', 0, NULL, NULL),
(172, 'Tin tức - Sự kiện', 'create', 'web_menu', 1427514591, 'admin', '', 'vi', 0, NULL, NULL),
(173, 'Liên hệ', 'create', 'web_menu', 1427514616, 'admin', '', 'vi', 0, NULL, NULL),
(174, 'Mua bán xe cố - ZIN', 'create', 'web_menu', 1427514686, 'admin', '', 'vi', 0, NULL, NULL),
(175, 'Xe độ', 'create', 'web_menu', 1427514724, 'admin', '', 'vi', 0, NULL, NULL),
(176, 'Xe phục chế', 'create', 'web_menu', 1427514753, 'admin', '', 'vi', 0, NULL, NULL),
(177, 'Mua bán xe cố - ZIN', 'update', 'web_menu', 1427514769, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values7%%%Mua bán xe cố - ZIN%%%mua-ban-xe-co-zin%%%mua-ban-xe-co-zin/%%%%%%%%%Mua bán xe cố - ZIN%%%Mua bán xe cố - ZIN%%%mua bán xe cố zin,mua ban xe co zin%%%3%%%1%%%0%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(178, 'Xe độ', 'update', 'web_menu', 1427514772, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values8%%%Xe độ%%%xe-do%%%xe-do/%%%%%%%%%Mua bán xe độ%%%Mua bán xe độ%%%Mua bán xe độ, xe do%%%3%%%2%%%0%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(179, 'Xe phục chế', 'update', 'web_menu', 1427514775, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values9%%%Xe phục chế%%%xe-phuc-che%%%xe-phuc-che/%%%%%%%%%Mua bán xe phục chế%%%Mua bán xe phục chế%%%mua bán xe phục chế,xe phuc che%%%3%%%3%%%0%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(180, 'Admin', 'update', 'web_users', 1427514883, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`url_img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`login_number`,`disable_date`,`expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%hieunhan112@gmail.com%%%0%%%1%%%%%%%%%admin%%%fc7fc678608590b123692867f176fe63%%%,1,2,20,3,4,6,7,8,13,14,21,22,23,%%%,1,2,20,3,4,6,7,8,13,14,21,22,23,%%%%%%0%%%2011-09-21 16:42:26%%%%%%en%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(181, 'Admin', 'update', 'web_users', 1427514953, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`url_img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`login_number`,`disable_date`,`expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%hieunhan112@gmail.com%%%0%%%1%%%%%%%%%admin%%%fc7fc678608590b123692867f176fe63%%%,1,2,20,3,4,5,6,7,8,21,22,23,%%%,1,2,20,3,4,5,6,7,8,21,22,23,%%%%%%0%%%2011-09-21 16:42:26%%%%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(182, 'Tên trang website', 'update', 'web_config', 1427514991, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values27%%%Tên trang website%%%sitename%%%ForexSignalPro%%%vi%%%1', 'vi', 0, NULL, NULL),
(183, 'Địa chỉ', 'update', 'web_config', 1427515014, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values15%%%Địa chỉ%%%address%%%123 CMT 8, phường 10, quận 10, Tp.HCM%%%vi%%%1', 'vi', 0, NULL, NULL),
(184, 'Điện thoại', 'update', 'web_config', 1427515026, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values11%%%Điện thoại%%%tel%%%0988 388 003%%%vi%%%1', 'vi', 0, NULL, NULL),
(185, 'Hotline', 'update', 'web_config', 1427515034, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values12%%%Hotline%%%hotline%%%0988 388 003%%%vi%%%1', 'vi', 0, NULL, NULL),
(186, 'Email', 'update', 'web_config', 1427515049, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values10%%%Email%%%email%%%hieunhan112@gmail.com%%%vi%%%1', 'vi', 0, NULL, NULL),
(187, 'Copyright', 'update', 'web_config', 1427515069, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values9%%%Copyright%%%copyright%%%Copyright © 2014%%%vi%%%1', 'vi', 0, NULL, NULL),
(188, 'Số photo / trang', 'status', 'web_config', 1427515080, 'admin', '0', 'vi', 0, NULL, NULL),
(189, 'Số video / trang', 'status', 'web_config', 1427515080, 'admin', '0', 'vi', 0, NULL, NULL),
(190, 'Slogan', 'update', 'web_config', 1427515105, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values1%%%Slogan%%%slogan%%%Thời trang cho mọi người%%%vi%%%1', 'vi', 0, NULL, NULL),
(191, 'Site name', 'update', 'web_config', 1427515120, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values28%%%Site name%%%sitename%%%ForexSignalPro%%%en%%%1', 'en', 0, NULL, NULL),
(192, 'Address', 'update', 'web_config', 1427515130, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values26%%%Address%%%address%%%123 CMT 8%%%en%%%1', 'en', 0, NULL, NULL),
(193, 'Slogan', 'update', 'web_config', 1427515147, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values2%%%Slogan%%%slogan%%%Thời trang cho mọi người%%%en%%%1', 'en', 0, NULL, NULL),
(194, 'Copyright', 'update', 'web_config', 1427515154, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values20%%%Copyright%%%copyright%%%Copyright © 2014%%%en%%%1', 'en', 0, NULL, NULL),
(195, 'Copyright', 'update', 'web_config', 1427515158, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values20%%%Copyright%%%copyright%%%Copyright © 2015%%%en%%%1', 'en', 0, NULL, NULL),
(196, 'Facebook', 'create', 'web_menu', 1427521420, 'admin', '', 'vi', 0, NULL, NULL),
(197, 'Youtube', 'create', 'web_menu', 1427521443, 'admin', '', 'vi', 0, NULL, NULL),
(198, 'Google', 'create', 'web_menu', 1427521461, 'admin', '', 'vi', 0, NULL, NULL),
(199, 'Twitter', 'create', 'web_menu', 1427521476, 'admin', '', 'vi', 0, NULL, NULL),
(200, 'Giới thiệu mua bán xe cổ Hồng Cường', 'create', 'web_article', 1427536312, 'admin', '', 'vi', 0, NULL, NULL),
(201, 'Giới thiệu mua bán xe cổ Hồng Cường', 'update', 'web_article', 1427536511, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Giới thiệu mua bán xe cổ Hồng Cường%%%gioi-thieu-mua-ban-xe-co-hong-cuong%%%gioi-thieu/gioi-thieu-mua-ban-xe-co-hong-cuong.html%%%gioi-thieu-mua-ban-xe-co-%%%%%%Thú chơi xe cổ đã trở thành một iữa những dòng xe hiện đại trên phố, chiếc xe cổ vẫn luôn thu hút mọi ánh nhìn tò mò và ngưỡng mộ của mọi người dù là thanh niên trẻ hay các ông cụ lão.%%%giới thiệu mua bán xe cổ hồng cường,gioi thieu mua ban xe co hong cuong%%%<p>Thú chơi xe cổ đã trở thành một iữa những dòng xe hiện đại trên phố, chiếc xe cổ vẫn luôn thu hút mọi ánh nhìn tò mò và ngưỡng mộ của mọi người dù là thanh niên trẻ hay các ông cụ lão.</p>\r\n\r\n<p>Không giống như nhiều “đại gia” khác thể hiện độ giàu có của mình bằng bộ sưu tập các loại ô tô đắt tiền, Nguyễn Hiển Tuấn chọn cho mình một lối đi riêng, khiến nhiều đại gia có “máu mặt” khác cũng phải ghen tị.</p>\r\n\r\n<p>Hàng ngày, Tuấn tranh thủ giải quyết công việc rồi lân la ra khu chợ gần nhà tìm mua, bán xe máy cũ. Lúc đầu, nhiều tiểu thương thấy lạ, đâm ra nghi hoặc về căn bệnh “khác người” này của Tuấn và gọi anh bằng cái tên chẳng mấy tốt đẹp: Tuấn “hâm”.</p>\r\n\r\n<p>&nbsp;</p>\r\n%%%1%%%1427536140%%%vi%%%1%%%,1,2,', 'vi', 0, NULL, NULL),
(202, 'Tin tứức', 'create', 'web_menu', 1427537070, 'admin', '', 'vi', 0, NULL, NULL),
(203, 'Tin tứức', 'update', 'web_menu', 1427537113, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values14%%%Tin tứức%%%%%%%%%%%%%%%%%%%%%%%%1%%%0%%%0%%%vi%%%1%%%2%%%,9,', 'vi', 0, NULL, NULL),
(204, 'Tin tức - Sự kiện', 'delete', 'web_menu', 1427537241, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values14%%%Tin tức - Sự kiện%%%%%%tin-tuc-su-kien/%%%%%%%%%Tin tức - Sự kiện%%%%%%%%%1%%%0%%%1%%%vi%%%1%%%2%%%,9,', 'vi', 0, NULL, NULL),
(205, 'Tin tức - Sự kiện', 'update', 'web_menu', 1427537251, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values5%%%Tin tức - Sự kiện%%%tin-tuc-su-kien%%%tin-tuc-su-kien/%%%%%%%%%Tin tức - Sự kiện%%%Tin tức - Sự kiện%%%tin tức sự kiện,tin tuc su kien%%%0%%%5%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(206, 'Hồng Cường mừng sinh nhật lần 03', 'create', 'web_article', 1427537305, 'admin', '', 'vi', 0, NULL, NULL),
(207, 'Sinh Nhật 01 năm tuổi SH Club', 'create', 'web_article', 1427537326, 'admin', '', 'vi', 0, NULL, NULL),
(208, 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', 'create', 'web_article', 1427537346, 'admin', '', 'vi', 0, NULL, NULL),
(209, 'Số photo / trang', 'update', 'web_config', 1427620575, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values7%%%Số photo / trang%%%limit_3%%%10%%%vi%%%0', 'vi', 0, NULL, NULL),
(210, 'Số SP / trang', 'update', 'web_config', 1427620585, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values6%%%Số SP / trang%%%limit_2%%%10%%%vi%%%1', 'vi', 0, NULL, NULL),
(211, 'Số xe / trang', 'update', 'web_config', 1427620593, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values6%%%Số xe / trang%%%limit_2%%%10%%%vi%%%1', 'vi', 0, NULL, NULL),
(212, 'Số xe / trang home', 'status', 'web_config', 1427620597, 'admin', '1', 'vi', 0, NULL, NULL),
(213, 'Mùng chống muỗi tam giác ba dây trắng', 'update', 'web_product', 1427621757, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Mùng chống muỗi tam giác ba dây trắng%%%mung-chong-muoi-tam-giac-ba-day-trang%%%MMTG-01%%%thoi-trang-nam/mung-chong-muoi-tam-giac-ba-day-trang.html%%%mung-chong-muoi-tam-giac-%%%%%%Mùng chống muỗi tam giác ba dây trắng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.%%%mùng chống muỗi tam giác ba dây trắng,mung chong muoi tam giac ba day trang%%%250000%%%0%%%<h2>M&ugrave;ng chống muỗi tam gi&aacute;c ba d&acirc;y trắng&nbsp;l&agrave; m&agrave;n ngủ ứng dụng kỹ thuật mới với sợi m&agrave;n bằng nguy&ecirc;n liệu Polyethylene t&iacute;ch hợp Permethrin tạo n&ecirc;n chiếc m&agrave;n bền chắc, th&ocirc;ng tho&aacute;ng kh&iacute; v&agrave; đặc biệt l&agrave; t&iacute;nh năng xua đuổi diệt muỗi, c&ocirc;n tr&ugrave;ng cho người sử dụng.</h2>\r\n\r\n<p>M&ugrave;ng ChamCham rất hữu &iacute;ch cho ph&ograve;ng chống lan truyền bệnh sốt r&eacute;t, sốt xuất huyết, vi&ecirc;m n&atilde;o Nhật Bản B v&agrave; c&aacute;c bệnh kh&aacute;c g&acirc;y ra do c&ocirc;n tr&ugrave;ng ch&iacute;ch đốt gi&uacute;p bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>M&ugrave;ng V&otilde;ng R&egrave;m ChamCham đ&aacute;p ứng nhu cầu sử dụng đa dạng trong nh&agrave;, ngo&agrave;i trời, treo m&oacute;c...</p>\r\n%%%<p>Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n%%%1%%%1408460940%%%vi%%%1%%%,6,13,', 'vi', 0, NULL, NULL),
(214, 'Mùng chống muỗi tam giác ba dây trắng', 'update', 'web_product', 1427622281, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Mùng chống muỗi tam giác ba dây trắng%%%mung-chong-muoi-tam-giac-ba-day-trang%%%MMTG-01%%%thoi-trang-nam/mung-chong-muoi-tam-giac-ba-day-trang.html%%%mung-chong-muoi-tam-giac-%%%%%%Mùng chống muỗi tam giác ba dây trắng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.%%%mùng chống muỗi tam giác ba dây trắng,mung chong muoi tam giac ba day trang%%%250000%%%0%%%<h2>Mùng chống muỗi tam giác ba dây trắng&nbsp;là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.</h2>\r\n\r\n<p>Mùng ChamCham rất hữu ích cho phòng chống lan truyền bệnh sốt rét, sốt xuất huyết, viêm não Nhật Bản B và các bệnh khác gây ra do côn trùng chích đốt giúp bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>Mùng Võng Rèm ChamCham đáp ứng nhu cầu sử dụng đa dạng trong nhà, ngoài trời, treo móc...</p>\r\n%%%<p>Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n%%%1%%%1408460940%%%vi%%%1%%%,6,13,', 'vi', 0, NULL, NULL),
(215, 'Mùng chống muỗi tam giác ba dây trắng', 'update', 'web_product', 1427622354, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Mùng chống muỗi tam giác ba dây trắng%%%mung-chong-muoi-tam-giac-ba-day-trang%%%MMTG-01%%%thoi-trang-nam/mung-chong-muoi-tam-giac-ba-day-trang.html%%%1.jpg%%%%%%Mùng chống muỗi tam giác ba dây trắng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.%%%mùng chống muỗi tam giác ba dây trắng,mung chong muoi tam giac ba day trang%%%250000%%%0%%%<h2>Mùng chống muỗi tam giác ba dây trắng&nbsp;là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.</h2>\r\n\r\n<p>Mùng ChamCham rất hữu ích cho phòng chống lan truyền bệnh sốt rét, sốt xuất huyết, viêm não Nhật Bản B và các bệnh khác gây ra do côn trùng chích đốt giúp bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>Mùng Võng Rèm ChamCham đáp ứng nhu cầu sử dụng đa dạng trong nhà, ngoài trời, treo móc...</p>\r\n%%%<p>Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n%%%1%%%1408460940%%%vi%%%1%%%,6,13,', 'vi', 0, NULL, NULL),
(216, 'Mùng chống muỗi hình nón', 'update', 'web_product', 1427622393, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Mùng chống muỗi hình nón%%%mung-chong-muoi-hinh-non%%%MMHT-01%%%thoi-trang-nam/mung-chong-muoi-hinh-non.html%%%mung-chong-muoi.jpg%%%%%%Mùng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.%%%mùng chống muỗi hình nón,mung chong muoi hinh non%%%200000%%%250000%%%<p>M&ugrave;ng l&agrave; m&agrave;n ngủ ứng dụng kỹ thuật mới với sợi m&agrave;n bằng nguy&ecirc;n liệu Polyethylene t&iacute;ch hợp Permethrin tạo n&ecirc;n chiếc m&agrave;n bền chắc, th&ocirc;ng tho&aacute;ng kh&iacute; v&agrave; đặc biệt l&agrave; t&iacute;nh năng xua đuổi diệt muỗi, c&ocirc;n tr&ugrave;ng cho người sử dụng. M&ugrave;ng ChamCham rất hữu &iacute;ch cho ph&ograve;ng chống lan truyền bệnh sốt r&eacute;t, sốt xuất huyết, vi&ecirc;m n&atilde;o Nhật Bản B v&agrave; c&aacute;c bệnh kh&aacute;c g&acirc;y ra do c&ocirc;n tr&ugrave;ng ch&iacute;ch đốt gi&uacute;p bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>M&ugrave;ng V&otilde;ng R&egrave;m ChamCham đ&aacute;p ứng nhu cầu sử dụng đa dạng trong nh&agrave;, ngo&agrave;i trời, treo m&oacute;c...</p>\r\n%%%%%%1%%%1408460940%%%vi%%%1%%%,6,13,', 'vi', 0, NULL, NULL),
(217, 'Vespa cam đời 1955', 'update', 'web_product', 1427623191, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Vespa cam đời 1955%%%vespa-cam-doi-1955%%%MMTG-01%%%mua-ban-xe-co-zin/vespa-cam-doi-1955.html%%%1.jpg%%%%%%%%%vespa cam đời 1955,vespa cam doi 1955%%%89000000%%%0%%%%%%<p>Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n%%%1%%%1408460940%%%vi%%%1%%%,3,7,', 'vi', 0, NULL, NULL),
(218, 'Môtô BMW đời 1965', 'create', 'web_product', 1427623359, 'admin', '', 'vi', 0, NULL, NULL),
(219, 'Môtô cảnh sát BMW', 'create', 'web_product', 1427623416, 'admin', '', 'vi', 0, NULL, NULL),
(220, 'Môtô cảnh sát BMW', 'update', 'web_product', 1427623495, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%Môtô cảnh sát BMW%%%moto-canh-sat-bmw%%%%%%mua-ban-xe-co-zin/moto-canh-sat-bmw.html%%%3.jpg%%%%%%%%%môtô cảnh sát bmw,moto canh sat bmw%%%59000000%%%0%%%%%%%%%1%%%1427623380%%%vi%%%1%%%,3,7,', 'vi', 0, NULL, NULL),
(221, 'Môtô BMW đời 1965', 'update', 'web_product', 1427623499, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Môtô BMW đời 1965%%%moto-bmw-doi-1965%%%%%%mua-ban-xe-co-zin/moto-bmw-doi-1965.html%%%2.jpg%%%%%%%%%môtô bmw đời 1965,moto bmw doi 1965%%%69000000%%%0%%%%%%%%%1%%%1427623320%%%vi%%%1%%%,3,7,', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(222, 'Vespa cam đời 1955', 'update', 'web_product', 1427623502, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Vespa cam đời 1955%%%vespa-cam-doi-1955%%%MMTG-01%%%mua-ban-xe-co-zin/vespa-cam-doi-1955.html%%%1.jpg%%%%%%%%%vespa cam đời 1955,vespa cam doi 1955%%%89000000%%%95000000%%%%%%<p>Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n%%%1%%%1408460940%%%vi%%%1%%%,3,7,', 'vi', 0, NULL, NULL),
(223, 'Vespa trắng đời 1945', 'update', 'web_product', 1427623507, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Vespa trắng đời 1945%%%vespa-trang-doi-1945%%%MMHT-01%%%mua-ban-xe-co-zin/vespa-trang-doi-1945.html%%%4.jpg%%%%%%%%%vespa trắng đời 1945,vespa trang doi 1945%%%99000000%%%0%%%%%%%%%1%%%1408460940%%%vi%%%1%%%,3,7,', 'vi', 0, NULL, NULL),
(224, 'Vespa trắng đời 1945', 'update', 'web_product', 1427623523, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Vespa trắng đời 1945%%%vespa-trang-doi-1945%%%MMHT-01%%%mua-ban-xe-co-zin/vespa-trang-doi-1945.html%%%4.jpg%%%%%%%%%vespa trắng đời 1945,vespa trang doi 1945%%%99000000%%%0%%%%%%%%%1%%%1408460940%%%vi%%%1%%%,3,7,8,9,', 'vi', 0, NULL, NULL),
(225, 'Vespa cam đời 1955', 'update', 'web_product', 1427623529, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Vespa cam đời 1955%%%vespa-cam-doi-1955%%%MMTG-01%%%mua-ban-xe-co-zin/vespa-cam-doi-1955.html%%%1.jpg%%%%%%%%%vespa cam đời 1955,vespa cam doi 1955%%%89000000%%%95000000%%%%%%<p>Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n%%%1%%%1408460940%%%vi%%%1%%%,3,7,8,9,', 'vi', 0, NULL, NULL),
(226, 'Môtô BMW đời 1965', 'update', 'web_product', 1427623538, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Môtô BMW đời 1965%%%moto-bmw-doi-1965%%%%%%mua-ban-xe-co-zin/moto-bmw-doi-1965.html%%%2.jpg%%%%%%%%%môtô bmw đời 1965,moto bmw doi 1965%%%69000000%%%0%%%%%%%%%1%%%1427623320%%%vi%%%1%%%,3,7,8,9,', 'vi', 0, NULL, NULL),
(227, 'Môtô cảnh sát BMW', 'update', 'web_product', 1427623543, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%Môtô cảnh sát BMW%%%moto-canh-sat-bmw%%%%%%mua-ban-xe-co-zin/moto-canh-sat-bmw.html%%%3.jpg%%%%%%%%%môtô cảnh sát bmw,moto canh sat bmw%%%59000000%%%0%%%%%%%%%1%%%1427623380%%%vi%%%1%%%,3,7,8,9,', 'vi', 0, NULL, NULL),
(228, 'Số xe / trang', 'update', 'web_config', 1427624257, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values6%%%Số xe / trang%%%limit_2%%%20%%%vi%%%1', 'vi', 0, NULL, NULL),
(229, 'Số xe / trang', 'update', 'web_config', 1427624360, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values6%%%Số xe / trang%%%limit_2%%%2%%%vi%%%1', 'vi', 0, NULL, NULL),
(230, 'Môtô cảnh sát BMW', 'status', 'web_product', 1427624403, 'admin', '0', 'vi', 0, NULL, NULL),
(231, 'Môtô BMW đời 1965', 'status', 'web_product', 1427624404, 'admin', '0', 'vi', 0, NULL, NULL),
(232, 'Vespa cam đời 1955', 'status', 'web_product', 1427624404, 'admin', '0', 'vi', 0, NULL, NULL),
(233, 'Vespa trắng đời 1945', 'status', 'web_product', 1427624405, 'admin', '0', 'vi', 0, NULL, NULL),
(234, 'Môtô cảnh sát BMW', 'status', 'web_product', 1427624410, 'admin', '1', 'vi', 0, NULL, NULL),
(235, 'Môtô BMW đời 1965', 'status', 'web_product', 1427624410, 'admin', '1', 'vi', 0, NULL, NULL),
(236, 'Vespa cam đời 1955', 'status', 'web_product', 1427624411, 'admin', '1', 'vi', 0, NULL, NULL),
(237, 'Vespa trắng đời 1945', 'status', 'web_product', 1427624411, 'admin', '1', 'vi', 0, NULL, NULL),
(238, 'Hồng Cường mừng sinh nhật lần 03', 'update', 'web_article', 1427625523, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Hồng Cường mừng sinh nhật lần 03%%%hong-cuong-mung-sinh-nhat-lan-03%%%tin-tuc-su-kien/hong-cuong-mung-sinh-nhat-lan-03.html%%%%%%%%%Hững tiếng cười nói xôn xao, những cái bắt tay thật chặt của bằng hữu lâu ngày gặp lại%%%hồng cường mừng sinh nhật lần 03,hong cuong mung sinh nhat lan 03%%%<p>Hững tiếng cười nói xôn xao, những cái bắt tay thật chặt của bằng hữu lâu ngày gặp lại...</p>\r\n%%%1%%%1427537220%%%vi%%%1%%%,5,', 'vi', 0, NULL, NULL),
(239, 'Hồng Cường mừng sinh nhật lần 03', 'update', 'web_article', 1427625544, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Hồng Cường mừng sinh nhật lần 03%%%hong-cuong-mung-sinh-nhat-lan-03%%%tin-tuc-su-kien/hong-cuong-mung-sinh-nhat-lan-03.html%%%%%%%%%Hững tiếng cười nói xôn xao, những cái bắt tay thật chặt của bằng hữu lâu ngày gặp lại%%%hồng cường mừng sinh nhật lần 03,hong cuong mung sinh nhat lan 03%%%<h2>6h sáng, không khí tại CLB xe cổ Hồng Cường rộn ràng hơn bao giờ hết. Những tiếng cười nói xôn xao, những cái bắt tay thật chặt của bằng hữu lâu ngày gặp lại, tiếng xe máy nổ giòn &nbsp;như pháo,... tất cả tạo nên một không khí lễ hội thực sự, khiến cho người đi đường ai cũng phải chú ý. Bởi vì hôm nay là kỷ niệm lần thứ 3 sinh nhật CLB xe cổ Hồng Cường, một ngày hội lớn cho những ai yêu xe cổ.</h2>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/sn1.jpg" style="width: 600px; height: 400px;" /><br />\r\n<em style="line-height: 1.6em;">Mới sáng sớm nhưng khách đã tập trung rất đông ở cổng Nhà hàng Hồng Cường</em></p>\r\n\r\n<p>Hàng trăm chiếc xe cổ dựng trước cổng CLB để chờ lấy số thứ tự, ai ai cũng háo hức mang chiếc xế cổ mà mình cưng chiều nhất, không chỉ đơn giản để “ khoe”, mà còn là món quà tinh thần dành tặng cho sinh nhật Hồng Cường Club.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/sn5.jpg" style="width: 600px; height: 400px;" />&nbsp; &nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/sn4.jpg" /><br />\r\n<em style="line-height: 1.6em;">Dòng xe đông đúc tới sự sinh nhật đông vui như trẩy hội.</em></p>\r\n\r\n<p>Chương trình lần này thu hút được rất nhiều CLB xe cổ trong cả nước tới tham gia. &nbsp;Có người còn mang chiếc xe cổ vượt cả ngàn km từ ngoài Bắc vào tham dự, thậm chí có khách từ nước ngoài nghe tin cũng đáp máy bay về. Bởi vì sinh nhật lần này, ngoài những chương trình&nbsp; khoe xe cổ và Game show thú vị còn có một chương trình đặc biệt được khách tham dự trông đợi nhất: Chiêm ngưỡng những chiếc xe cổ độc đáo nhất, đẹp nhất trong BST của Hồng Cường, lần đầu tiên ra mắt những người yêu xe cổ.</p>\r\n%%%1%%%1427537220%%%vi%%%1%%%,5,', 'vi', 0, NULL, NULL),
(240, 'Hồng Cường mừng sinh nhật lần 03', 'update', 'web_article', 1427625570, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Hồng Cường mừng sinh nhật lần 03%%%hong-cuong-mung-sinh-nhat-lan-03%%%tin-tuc-su-kien/hong-cuong-mung-sinh-nhat-lan-03.html%%%%%%%%%Hững tiếng cười nói xôn xao, những cái bắt tay thật chặt của bằng hữu lâu ngày gặp lại%%%hồng cường mừng sinh nhật lần 03,hong cuong mung sinh nhat lan 03%%%<p>6h sáng, không khí tại CLB xe cổ Hồng Cường rộn ràng hơn bao giờ hết. Những tiếng cười nói xôn xao, những cái bắt tay thật chặt của bằng hữu lâu ngày gặp lại, tiếng xe máy nổ giòn &nbsp;như pháo,... tất cả tạo nên một không khí lễ hội thực sự, khiến cho người đi đường ai cũng phải chú ý. Bởi vì hôm nay là kỷ niệm lần thứ 3 sinh nhật CLB xe cổ Hồng Cường, một ngày hội lớn cho những ai yêu xe cổ.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/sn1.jpg" style="width: 600px; height: 400px;" /><br />\r\n<em style="line-height: 1.6em;">Mới sáng sớm nhưng khách đã tập trung rất đông ở cổng Nhà hàng Hồng Cường</em></p>\r\n\r\n<p>Hàng trăm chiếc xe cổ dựng trước cổng CLB để chờ lấy số thứ tự, ai ai cũng háo hức mang chiếc xế cổ mà mình cưng chiều nhất, không chỉ đơn giản để “ khoe”, mà còn là món quà tinh thần dành tặng cho sinh nhật Hồng Cường Club.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/sn5.jpg" style="width: 600px; height: 400px;" />&nbsp; &nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/sn4.jpg" /><br />\r\n<em style="line-height: 1.6em;">Dòng xe đông đúc tới sự sinh nhật đông vui như trẩy hội.</em></p>\r\n\r\n<p>Chương trình lần này thu hút được rất nhiều CLB xe cổ trong cả nước tới tham gia. &nbsp;Có người còn mang chiếc xe cổ vượt cả ngàn km từ ngoài Bắc vào tham dự, thậm chí có khách từ nước ngoài nghe tin cũng đáp máy bay về. Bởi vì sinh nhật lần này, ngoài những chương trình&nbsp; khoe xe cổ và Game show thú vị còn có một chương trình đặc biệt được khách tham dự trông đợi nhất: Chiêm ngưỡng những chiếc xe cổ độc đáo nhất, đẹp nhất trong BST của Hồng Cường, lần đầu tiên ra mắt những người yêu xe cổ.</p>\r\n%%%1%%%1427537220%%%vi%%%1%%%,5,', 'vi', 0, NULL, NULL),
(241, 'Hồng Cường mừng sinh nhật lần 03', 'update', 'web_article', 1427625594, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Hồng Cường mừng sinh nhật lần 03%%%hong-cuong-mung-sinh-nhat-lan-03%%%tin-tuc-su-kien/hong-cuong-mung-sinh-nhat-lan-03.html%%%%%%%%%Hững tiếng cười nói xôn xao, những cái bắt tay thật chặt của bằng hữu lâu ngày gặp lại%%%hồng cường mừng sinh nhật lần 03,hong cuong mung sinh nhat lan 03%%%<p>6h sáng, không khí tại CLB xe cổ Hồng Cường rộn ràng hơn bao giờ hết. Những tiếng cười nói xôn xao, những cái bắt tay thật chặt của bằng hữu lâu ngày gặp lại, tiếng xe máy nổ giòn &nbsp;như pháo,... tất cả tạo nên một không khí lễ hội thực sự, khiến cho người đi đường ai cũng phải chú ý. Bởi vì hôm nay là kỷ niệm lần thứ 3 sinh nhật CLB xe cổ Hồng Cường, một ngày hội lớn cho những ai yêu xe cổ.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/sn1.jpg" style="width: 600px; height: 400px;" /><br />\r\n<em style="line-height: 1.6em;">Mới sáng sớm nhưng khách đã tập trung rất đông ở cổng Nhà hàng Hồng Cường</em></p>\r\n\r\n<p>Hàng trăm chiếc xe cổ dựng trước cổng CLB để chờ lấy số thứ tự, ai ai cũng háo hức mang chiếc xế cổ mà mình cưng chiều nhất, không chỉ đơn giản để “ khoe”, mà còn là món quà tinh thần dành tặng cho sinh nhật Hồng Cường Club.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/sn5.jpg" style="width: 600px; height: 400px;" />&nbsp; &nbsp;<br />\r\n<em style="line-height: 1.6em;">Dòng xe đông đúc tới sự sinh nhật đông vui như trẩy hội.</em></p>\r\n\r\n<p>Chương trình lần này thu hút được rất nhiều CLB xe cổ trong cả nước tới tham gia. &nbsp;Có người còn mang chiếc xe cổ vượt cả ngàn km từ ngoài Bắc vào tham dự, thậm chí có khách từ nước ngoài nghe tin cũng đáp máy bay về. Bởi vì sinh nhật lần này, ngoài những chương trình&nbsp; khoe xe cổ và Game show thú vị còn có một chương trình đặc biệt được khách tham dự trông đợi nhất: Chiêm ngưỡng những chiếc xe cổ độc đáo nhất, đẹp nhất trong BST của Hồng Cường, lần đầu tiên ra mắt những người yêu xe cổ.</p>\r\n%%%1%%%1427537220%%%vi%%%1%%%,5,', 'vi', 0, NULL, NULL),
(242, 'Sinh Nhật 01 năm tuổi SH Club', 'update', 'web_article', 1427625747, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Sinh Nhật 01 năm tuổi SH Club%%%sinh-nhat-01-nam-tuoi-sh-club%%%tin-tuc-su-kien/sinh-nhat-01-nam-tuoi-sh-club.html%%%%%%%%%Đã một năm rồi gắn bó và chia sẻ, cùng nhau vượt qua những vui bùn, trăn trở và phát triển.%%%hồng cường mừng sinh nhật lần 03,hong cuong mung sinh nhat lan 03%%%<p>Đã một năm rồi gắn bó và chia sẻ, cùng nhau vượt qua những vui bùn, trăn trở và phát triển.</p>\r\n%%%1%%%1427537280%%%vi%%%1%%%,5,', 'vi', 0, NULL, NULL),
(243, 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', 'update', 'web_article', 1427625812, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%Dàn xe cổ hiếm trưng bày ở Sài Gòn%%%dan-xe-co-hiem-trung-bay-o-sai-gon%%%tin-tuc-su-kien/dan-xe-co-hiem-trung-bay-o-sai-gon.html%%%%%%%%%Trong khuôn khổ "Ngày hội siêu xe lần 2" đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.%%%dàn xe cổ hiếm trưng bày ở sài gòn,dan xe co hiem trung bay o sai gon%%%<p>Trong khuôn khổ "Ngày hội siêu xe lần 2" đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.</p>\r\n%%%1%%%1427537280%%%vi%%%1%%%,5,', 'vi', 0, NULL, NULL),
(244, 'Dàn xe cổ hiếm trưng bày ở Sài Gòn', 'update', 'web_article', 1427625824, 'admin', '`id`,`name`,`name_alias`,`url`,`img_avatar`,`img_arr`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%Dàn xe cổ hiếm trưng bày ở Sài Gòn%%%dan-xe-co-hiem-trung-bay-o-sai-gon%%%tin-tuc-su-kien/dan-xe-co-hiem-trung-bay-o-sai-gon.html%%%dan-xe-co-hiem-trung-bay-o-sai-gon.JPG%%%%%%Trong khuôn khổ "Ngày hội siêu xe lần 2" đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.%%%dàn xe cổ hiếm trưng bày ở sài gòn,dan xe co hiem trung bay o sai gon%%%<p>Trong khuôn khổ "Ngày hội siêu xe lần 2" đang diễn ra tại TP.HCM, bộ sưu tập xe cổ Hồng Cường đã thu hút nhiều sự chú ý của những người tham dự với những mẫu xe quý và hiếm.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.hongcuongclub.com/public/images/articles/dan-xe-co-hiem-trung-bay-o-sai-gon.JPG" style="width: 660px; height: 371px;" /></p>\r\n\r\n<p>Tại "Ngày hội siêu xe lần 2", bộ sưu tập gần 30 mẫu xe cổ của Hồng Cường Club là một trong những điểm sáng của sự kiện này. Đa số những chiếc xe được trưng bày là những mẫu quý hiếm, vừa lạ vừa quen thuộc với người Việt Nam. Theo đại diện của Hồng Cường, bộ sưu tập này sẽ xác lập kỉ lục Việt Nam trong năm nay.</p>\r\n\r\n<p>Đây là mẫu Lambretta TV 175 của Ý, được sản xuất từ năm 1959, sử dụng động cơ 2 kì 175 cc. Xe đã được phục chế lại màu sơn và một vài chi tiết nhỏ.</p>\r\n\r\n<p>Những chiếc xe cup "huyền thoại" một thời của thế hệ trước giờ vẫn có thể hoạt động tốt.</p>\r\n\r\n<p>Đây là mẫu Honda CL 90, sản xuất năm 1967 - 1969 tại Nhật Bản.&nbsp;</p>\r\n\r\n<p>Chiếc Berlin Roller SR 50 sản xuất tại Đức vào năm 1959 là mẫu xe "đinh" của bộ sưu tập này. Chiếc xe này vẫn giữ được các chi tiết và đường nét nguyên bản sau nhiều thập kỉ.</p>\r\n\r\n<p>Cùng với chiếc&nbsp;Berlin Roller SR 50, chiếc Lambretta LD 150 sản xuất từ năm 1955 đến 1958 cũng là mẫu xe nguyên bản được đánh giá cao.&nbsp;</p>\r\n\r\n<p>Chiếc Vespa ACMA này được Piaggio sản xuất sau chiến tranh thế giới thứ 2.</p>\r\n\r\n<p>Một chiếc Honda Super Cub khá quen thuộc với người Việt Nam.</p>\r\n%%%1%%%1427537280%%%vi%%%1%%%,5,', 'vi', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu`
--

CREATE TABLE IF NOT EXISTS `web_menu` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_alias` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `img_avatar` varchar(150) DEFAULT NULL,
  `img_arr` varchar(250) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `tags` varchar(150) DEFAULT NULL,
  `parent` int(3) NOT NULL DEFAULT '0',
  `order` int(3) DEFAULT '0',
  `other` tinyint(1) DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `type_id` int(1) NOT NULL,
  `position_id` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu`
--

INSERT INTO `web_menu` (`id`, `name`, `name_alias`, `url`, `img_avatar`, `img_arr`, `title`, `description`, `tags`, `parent`, `order`, `other`, `lang`, `status`, `type_id`, `position_id`) VALUES
(1, 'Trang chủ', '', 'http://localhost/all/muabanxeco/', '', NULL, 'Mua bán xe cổ Hồng Cường', 'Mua bán xe cổ Hồng Cường', 'Mua bán xe cổ Hồng Cường', 0, 1, 0, 'vi', 1, 1, ',2,3,'),
(2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', NULL, 'Giới thiệu mua bán xe cổ Hồng Cường', 'Giới thiệu mua bán xe cổ Hồng Cường', 'giới thiệu mua bán xe cổ Hồng Cường', 0, 2, 0, 'vi', 1, 2, ',2,3,'),
(3, 'Mua bán xe cố', 'mua-ban-xe-co', 'mua-ban-xe-co/', '', NULL, 'Mua bán xe cố Hồng Cường', 'Mua bán xe cố Hồng Cường', 'mua bán xe cố,mua ban xe co', 0, 3, 0, 'vi', 1, 3, ',2,3,'),
(4, 'Kiến thức xe cổ', 'kien-thuc-xe-co', 'kien-thuc-xe-co/', '', NULL, 'Kiến thức xe cổ', 'Kiến thức xe cổ', 'kiến thức xe cổ,kien thuc xe co', 0, 4, 0, 'vi', 1, 2, ',2,3,'),
(5, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', 'tin-tuc-su-kien/', '', NULL, 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 'tin tức sự kiện,tin tuc su kien', 0, 5, 1, 'vi', 1, 2, ',2,3,'),
(6, 'Liên hệ', 'lien-he', 'lien-he/', '', NULL, 'Liên hệ mua bán xe cổ', 'Liên hệ mua bán xe cổ', 'Liên hệ mua bán xe cổ', 0, 6, 0, 'vi', 1, 13, ',2,3,'),
(7, 'Mua bán xe cố - ZIN', 'mua-ban-xe-co-zin', 'mua-ban-xe-co-zin/', '', NULL, 'Mua bán xe cố - ZIN', 'Mua bán xe cố - ZIN', 'mua bán xe cố zin,mua ban xe co zin', 3, 1, 1, 'vi', 1, 3, ',2,'),
(8, 'Xe độ', 'xe-do', 'xe-do/', '', NULL, 'Mua bán xe độ', 'Mua bán xe độ', 'Mua bán xe độ, xe do', 3, 2, 1, 'vi', 1, 3, ',2,'),
(9, 'Xe phục chế', 'xe-phuc-che', 'xe-phuc-che/', '', NULL, 'Mua bán xe phục chế', 'Mua bán xe phục chế', 'mua bán xe phục chế,xe phuc che', 3, 3, 1, 'vi', 1, 3, ',2,'),
(10, 'Facebook', '', 'javascript:;', 'facebook.gif', NULL, 'Facebook', '', '', 0, 31, 0, 'vi', 1, 14, ',6,'),
(11, 'Youtube', '', 'javascript:;', 'youtube.gif', NULL, 'Youtube', '', '', 0, 32, 0, 'vi', 1, 14, ',6,'),
(12, 'Google', '', 'javascript:;', 'google.gif', NULL, 'Google', '', '', 0, 33, 0, 'vi', 1, 14, ',6,'),
(13, 'Twitter', '', 'javascript:;', 'twitter.gif', NULL, 'Twitter', '', '', 0, 34, 0, 'vi', 1, 14, ',6,');

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_admin`
--

CREATE TABLE IF NOT EXISTS `web_menu_admin` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_img` varchar(150) DEFAULT NULL,
  `order` int(3) DEFAULT '0',
  `other` tinyint(1) DEFAULT '0',
  `ajax` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu_admin`
--

INSERT INTO `web_menu_admin` (`id`, `name`, `url`, `url_img`, `order`, `other`, `ajax`, `status`) VALUES
(1, 'Trang chủ', 'home', 'icon-home.jpg', 1, 0, NULL, 1),
(2, 'Cấu hình website', 'web_config', 'icon-cau-hinh.jpg', 2, 1, NULL, 1),
(3, 'Danh mục menu', 'web_menu', 'icon-menu.jpg', 3, 0, NULL, 1),
(4, 'Thông tin, bài viết', 'web_article', 'icon-info.jpg', 4, 0, NULL, 1),
(5, 'Mua bán xe cổ', 'web_product', 'icon-product.jpg', 5, 0, NULL, 1),
(6, 'Thư viện ảnh', 'web_photo', 'icon-thu-vien-anh.jpg', 6, 0, NULL, 0),
(7, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 7, 0, NULL, 0),
(8, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 8, 1, NULL, 1),
(9, 'DS Tỉnh - Thành', 'web_listcity', 'icon-city.jpg', 9, 0, NULL, 1),
(10, 'DS Quận - Huyện', 'web_listdistricts', 'icon-districts.jpg', 10, 0, NULL, 1),
(11, 'Đơn đặt hàng', 'web_product_order', 'icon-order.jpg', 11, 0, '<span id="web_product_order" class="ajax_thongtin"></span>', 1),
(12, 'Đơn đặt hàng chi tiết', 'web_product_order_detail', 'icon-order-detail.jpg', 12, 1, NULL, 1),
(13, 'Forex', 'web_forex', 'icon-tuyen-dung-thong-tin.jpg', 13, 0, NULL, 0),
(14, 'Gói đăng ký', 'web_users_package', 'icon-tuyen-dung-thong-tin.jpg', 14, 0, NULL, 0),
(15, 'Item 15', '', 'icon-tuyendung-ho-so.jpg', 15, 0, NULL, 0),
(16, 'Item 16', '', '', 16, 0, NULL, 0),
(17, 'Item 17', '', '', 17, 0, NULL, 0),
(18, 'Item 18', '', '', 18, 0, NULL, 0),
(19, 'Item 19', '', '', 19, 0, NULL, 0),
(20, 'Loại danh mục', 'web_menu_type', 'icon-item.jpg', 2, 0, NULL, 1),
(21, 'Liên hệ trực tuyến', 'web_contact', 'icon-lien-he.jpg', 21, 0, '<span id="web_contact" class="ajax_thongtin"></span>', 1),
(22, 'Event logs', 'web_logs', 'icon-logs.jpg', 22, 0, '', 1),
(23, 'Tài khoản', 'web_users', 'icon-account.jpg', 100, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_position`
--

CREATE TABLE IF NOT EXISTS `web_menu_position` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu_position`
--

INSERT INTO `web_menu_position` (`id`, `name`, `order`, `status`) VALUES
(1, 'Top', 1, 0),
(2, 'Main', 2, 1),
(3, 'Bottom', 3, 1),
(4, 'Left', 4, 1),
(5, 'Right', 5, 0),
(6, 'Social', 6, 1),
(7, 'Other 1', 7, 0),
(8, 'Other 2', 8, 0),
(9, 'Không', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_type`
--

CREATE TABLE IF NOT EXISTS `web_menu_type` (
`id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(30) NOT NULL,
  `table_data` varchar(30) DEFAULT NULL,
  `url_img` varchar(100) NOT NULL,
  `url_img_thumb` varchar(100) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `order` int(2) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu_type`
--

INSERT INTO `web_menu_type` (`id`, `name`, `description`, `table_data`, `url_img`, `url_img_thumb`, `lang`, `order`, `type`, `status`) VALUES
(1, 'site', 'Trang chủ', '', '', '', 'en', 1, 1, 1),
(2, 'article', 'Thông tin bài viết', 'web_article', 'public/images/articles/', 'public/_thumbs/Images/articles/', 'vi', 2, 1, 1),
(3, 'product', 'Mua bán xe cổ', 'web_product', 'public/images/products/', 'public/_thumbs/Images/products/', 'vi', 3, 1, 1),
(4, 'service', 'Dịch vụ', NULL, 'public/images/services/', 'public/_thumbs/Images/services/', 'vi', 4, 1, 0),
(5, 'photo', 'Hình ảnh', 'web_photo', 'public/images/photos/', 'public/_thumbs/Images/photos/', 'vi', 5, 1, 0),
(6, 'video', 'Video', 'web_video', 'public/images/videos/', 'public/_thumbs/Images/videos/', 'vi', 6, 1, 0),
(7, 'signup', 'Đăng ký', 'web_users', '', '', 'en', 7, 1, 0),
(8, 'login', 'Đăng nhập', 'web_users', '', '', 'en', 8, 1, 0),
(9, 'payment', 'Thanh toán', '', '', '', 'en', 9, 1, 0),
(10, 'item_4', 'Item 4', NULL, '', '', 'vi', 10, 1, 0),
(11, 'catalog', 'Danh mục menu', 'web_menu', 'public/images/catalog/', 'public/_thumbs/Images/catalog/', 'vi', 11, 0, 1),
(12, 'slider_banner', 'Slider - Banner', 'web_slider_banner', 'public/images/slider-banner/', 'public/_thumbs/Images/slider-banner/', 'vi', 12, 0, 1),
(13, 'contact', 'Liên hệ', NULL, '', '', 'vi', 13, 1, 1),
(14, 'no', 'Không', NULL, '', '', 'vi', 14, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_photo`
--

CREATE TABLE IF NOT EXISTS `web_photo` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `img_avatar` varchar(150) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_photo`
--

INSERT INTO `web_photo` (`id`, `name`, `img_avatar`, `order`, `lang`, `status`, `menu_id`) VALUES
(1, 'Hoạt động', '', 1, 'vi', 1, ',');

-- --------------------------------------------------------

--
-- Table structure for table `web_product`
--

CREATE TABLE IF NOT EXISTS `web_product` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `code` varchar(10) NOT NULL,
  `url` varchar(250) NOT NULL,
  `img_avatar` varchar(150) NOT NULL,
  `img_arr` varchar(250) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `price` int(9) NOT NULL,
  `price_cost` int(9) DEFAULT NULL,
  `content` text NOT NULL,
  `more` varchar(500) DEFAULT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_product`
--

INSERT INTO `web_product` (`id`, `name`, `name_alias`, `code`, `url`, `img_avatar`, `img_arr`, `description`, `tags`, `price`, `price_cost`, `content`, `more`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Vespa trắng đời 1945', 'vespa-trang-doi-1945', 'MMHT-01', 'mua-ban-xe-co-zin/vespa-trang-doi-1945.html', '4.jpg', '', '', 'vespa trắng đời 1945,vespa trang doi 1945', 99000000, 0, '', '', 1, 1427623320, 'vi', 1, ',3,7,8,9,'),
(3, 'Môtô BMW đời 1965', 'moto-bmw-doi-1965', '', 'mua-ban-xe-co-zin/moto-bmw-doi-1965.html', '2.jpg', '', '', 'môtô bmw đời 1965,moto bmw doi 1965', 69000000, 0, '', NULL, 1, 1427536920, 'vi', 1, ',3,7,8,9,'),
(4, 'Môtô cảnh sát BMW', 'moto-canh-sat-bmw', '', 'mua-ban-xe-co-zin/moto-canh-sat-bmw.html', '3.jpg', '', '', 'môtô cảnh sát bmw,moto canh sat bmw', 59000000, 0, '', NULL, 1, 1427536980, 'vi', 1, ',3,7,8,9,'),
(2, 'Vespa cam đời 1955', 'vespa-cam-doi-1955', 'MMTG-01', 'mua-ban-xe-co-zin/vespa-cam-doi-1955.html', '1.jpg', '', '', 'vespa cam đời 1955,vespa cam doi 1955', 89000000, 95000000, '', '<p>Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n', 1, 1427623380, 'vi', 1, ',3,7,8,9,');

-- --------------------------------------------------------

--
-- Table structure for table `web_product_order`
--

CREATE TABLE IF NOT EXISTS `web_product_order` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `total_current` int(9) NOT NULL,
  `total_number` int(4) NOT NULL,
  `deliverycosts` int(8) NOT NULL DEFAULT '0',
  `discounts` int(8) NOT NULL DEFAULT '0',
  `total` int(8) NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `other` varchar(250) DEFAULT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `city_id` int(3) NOT NULL,
  `districts_id` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_product_order`
--

INSERT INTO `web_product_order` (`id`, `name`, `email`, `phone`, `address`, `total_current`, `total_number`, `deliverycosts`, `discounts`, `total`, `datetime`, `other`, `lang`, `status`, `city_id`, `districts_id`) VALUES
(5, 'Nhan', 'hieunhan@yahoo.com', '0988 388 003', '12 CMT 8', 700000, 3, 5000, 0, 705000, 1409024803, '333', 'vi', 0, 3, 136),
(4, 'Nhan', 'hieunhan@yahoo.com', '0988 388 003', '12 CMT 8', 200000, 1, 5000, 0, 205000, 1409024551, '111', 'vi', 0, 3, 136);

-- --------------------------------------------------------

--
-- Table structure for table `web_product_order_detail`
--

CREATE TABLE IF NOT EXISTS `web_product_order_detail` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `number` int(4) NOT NULL,
  `price` int(8) NOT NULL,
  `discounts` int(8) NOT NULL DEFAULT '0',
  `total` int(8) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_product_order_detail`
--

INSERT INTO `web_product_order_detail` (`id`, `name`, `number`, `price`, `discounts`, `total`, `lang`, `status`, `product_id`, `order_id`) VALUES
(37, 'Mùng chống muỗi tam giác ba dây trắng', 2, 250000, 0, 500000, 'vi', 1, 2, 1409024803),
(36, 'Mùng chống muỗi hình nón', 1, 200000, 0, 200000, 'vi', 1, 1, 1409024803),
(35, 'Mùng chống muỗi hình nón', 1, 200000, 0, 200000, 'vi', 1, 1, 1409024551);

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img_avatar` varchar(150) NOT NULL,
  `img_arr` varchar(250) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `position_id` int(1) NOT NULL,
  `menu_id` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner_position`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner_position` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `birthday` bigint(10) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `url_img` varchar(150) NOT NULL,
  `salt` varchar(3) NOT NULL,
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `rule_view` varchar(100) NOT NULL,
  `rule_action` varchar(100) NOT NULL,
  `random_key` varchar(255) DEFAULT NULL,
  `login_number` int(11) DEFAULT '0',
  `disable_date` datetime DEFAULT NULL,
  `expiration` int(11) DEFAULT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `group_id` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `address`, `phone`, `email`, `birthday`, `gender`, `url_img`, `salt`, `username`, `password`, `rule_view`, `rule_action`, `random_key`, `login_number`, `disable_date`, `expiration`, `lang`, `datetime`, `status`, `group_id`) VALUES
(25, 'Admin', '123 CMT 8', '0988 388 003', 'hieunhan112@gmail.com', 0, 1, '', '', 'admin', 'fc7fc678608590b123692867f176fe63', ',1,2,20,3,4,5,8,9,10,11,12,21,22,23,', ',1,2,20,3,4,5,8,9,10,11,12,21,22,23,', NULL, 0, '2011-09-21 16:42:26', NULL, 'vi', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_group`
--

CREATE TABLE IF NOT EXISTS `web_users_group` (
`id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_group`
--

INSERT INTO `web_users_group` (`id`, `name`) VALUES
(1, 'Khách hàng'),
(2, 'Thành viên'),
(3, 'Quản trị website');

-- --------------------------------------------------------

--
-- Table structure for table `web_users_package`
--

CREATE TABLE IF NOT EXISTS `web_users_package` (
`id` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` int(2) NOT NULL,
  `songay` int(3) NOT NULL,
  `order` int(2) NOT NULL DEFAULT '0',
  `payment_paypal` varchar(250) NOT NULL,
  `parent` int(2) NOT NULL,
  `menu_id` varchar(100) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_package`
--

INSERT INTO `web_users_package` (`id`, `name`, `price`, `discount`, `songay`, `order`, `payment_paypal`, `parent`, `menu_id`, `lang`, `status`) VALUES
(1, 'STANDARD', 169, 0, 0, 1, '', 0, ',21,22,23,25,28,29,30,32,33,', 'en', 1),
(2, 'PRO', 199, 0, 0, 2, '', 0, ',21,22,23,24,25,27,28,29,30,32,33,34,', 'en', 1),
(3, 'ULTIMATE', 295, 0, 0, 3, '', 0, ',21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,', 'en', 1),
(4, '10 Day Trial Monthly renewal in 10 days at $169 price.', 60, 0, 10, 1, 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=ND5LDUAAQMSTC', 1, '', 'en', 1),
(5, 'Monthly Standard Subscription', 169, 0, 30, 2, '', 1, '', 'en', 1),
(6, '3 Month Standard Subscription', 507, 22, 90, 3, '', 1, '', 'en', 1),
(7, '6 Month Standard Subscription  ', 1014, 32, 180, 4, '', 1, '', 'en', 1),
(8, '10 Day Trial Monthly renewal in 10 days at $199 price.', 70, 0, 10, 1, '', 2, '', 'en', 1),
(9, 'Monthly Subscription', 199, 0, 30, 2, '', 2, '', 'en', 1),
(10, '3 Month Subscription', 597, 15, 90, 3, '', 2, '', 'en', 1),
(11, '6 Month Subscription', 1194, 25, 180, 4, '', 2, '', 'en', 1),
(12, '10 Day Trial   Monthly renewal in 10 days at $295 price.', 100, 0, 10, 1, '', 3, '', 'en', 1),
(13, 'Monthly Subscription', 295, 0, 30, 2, '', 3, '', 'en', 1),
(14, '3 Month Subscription', 885, 15, 90, 3, '', 3, '', 'en', 1),
(15, '6 Month Subscription', 1770, 26, 180, 3, '', 3, '', 'en', 1),
(16, 'Test payment $1', 1, 0, 1, 0, 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=V5C427XP9GK8C', 1, '', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_video`
--

CREATE TABLE IF NOT EXISTS `web_video` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1',
  `url` varchar(250) NOT NULL,
  `img_avatar` varchar(150) NOT NULL,
  `img_arr` varchar(250) NOT NULL,
  `url_code` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_video`
--

INSERT INTO `web_video` (`id`, `name`, `name_alias`, `type`, `url`, `img_avatar`, `img_arr`, `url_code`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Video trang chủ', 'video-trang-chu', 1, 'quan-nam/video-trang-chu.html', 'Chrysanthemum.jpg', '', '432432432', 'Video trang chủ', 'video trang chủ,video trang chu', '<p>Video trang chủVideo trang chủVideo trang chủVideo trang chủVideo trang chủVideo trang chủ</p>\r\n', 1, 1408497780, 'vi', 1, ',4,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `web_article`
--
ALTER TABLE `web_article`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_article_cm`
--
ALTER TABLE `web_article_cm`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_config`
--
ALTER TABLE `web_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_contact`
--
ALTER TABLE `web_contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_forex`
--
ALTER TABLE `web_forex`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_language`
--
ALTER TABLE `web_language`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_listcity`
--
ALTER TABLE `web_listcity`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_listdistricts`
--
ALTER TABLE `web_listdistricts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_listsendmail`
--
ALTER TABLE `web_listsendmail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_logs`
--
ALTER TABLE `web_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_menu`
--
ALTER TABLE `web_menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_menu_admin`
--
ALTER TABLE `web_menu_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_menu_position`
--
ALTER TABLE `web_menu_position`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_menu_type`
--
ALTER TABLE `web_menu_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `web_photo`
--
ALTER TABLE `web_photo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_product`
--
ALTER TABLE `web_product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_product_order`
--
ALTER TABLE `web_product_order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_product_order_detail`
--
ALTER TABLE `web_product_order_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_slider_banner`
--
ALTER TABLE `web_slider_banner`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_slider_banner_position`
--
ALTER TABLE `web_slider_banner_position`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users`
--
ALTER TABLE `web_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `web_users_group`
--
ALTER TABLE `web_users_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users_package`
--
ALTER TABLE `web_users_package`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_video`
--
ALTER TABLE `web_video`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `web_article`
--
ALTER TABLE `web_article`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `web_article_cm`
--
ALTER TABLE `web_article_cm`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_config`
--
ALTER TABLE `web_config`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `web_contact`
--
ALTER TABLE `web_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_forex`
--
ALTER TABLE `web_forex`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `web_language`
--
ALTER TABLE `web_language`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_listdistricts`
--
ALTER TABLE `web_listdistricts`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=901;
--
-- AUTO_INCREMENT for table `web_listsendmail`
--
ALTER TABLE `web_listsendmail`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `web_logs`
--
ALTER TABLE `web_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `web_menu`
--
ALTER TABLE `web_menu`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `web_menu_admin`
--
ALTER TABLE `web_menu_admin`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `web_menu_position`
--
ALTER TABLE `web_menu_position`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `web_menu_type`
--
ALTER TABLE `web_menu_type`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `web_photo`
--
ALTER TABLE `web_photo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `web_product`
--
ALTER TABLE `web_product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `web_product_order`
--
ALTER TABLE `web_product_order`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_product_order_detail`
--
ALTER TABLE `web_product_order_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `web_slider_banner`
--
ALTER TABLE `web_slider_banner`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_slider_banner_position`
--
ALTER TABLE `web_slider_banner_position`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_users`
--
ALTER TABLE `web_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `web_users_group`
--
ALTER TABLE `web_users_group`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_users_package`
--
ALTER TABLE `web_users_package`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `web_video`
--
ALTER TABLE `web_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
