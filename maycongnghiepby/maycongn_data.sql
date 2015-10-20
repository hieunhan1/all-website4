-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 05, 2015 at 06:13 PM
-- Server version: 5.5.45-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `maycongn_data`
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`id`, `name`, `name_alias`, `url`, `url_hinh`, `metaDescription`, `metaKeyword`, `content`, `other`, `menu_id`, `lang`, `status`, `ngay_dang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'HEO XINH shop', '', '', 'home.png', '', 'HEO XINH shop', '<p><strong>Chuyên cung cấp sỉ quần áo thời trang&nbsp;giá rẻ</strong> chỉ 150.000đ, 180.000đ, 250.00đ chất liệu cotton mềm mại, thoáng mát, màu sắc hoa văn tươi sáng thoáng mát</p>\r\n\r\n<p><strong>Quần áo xuất xứ từ Thái Lan và hàng Việt Nam chất lượng cao.</strong></p>\r\n\r\n<p>Bạn sẽ hài lòng khi mua quần áo tại&nbsp;<strong>HEO XINH shop</strong>&nbsp;với các chế độ bảo hành và cam kết chất lượng của cửa hàng chúng tôi.</p>\r\n', 1, ',1,', 'vi', 0, '2014-05-29 15:00:00', '2014-05-29 09:35:29', '2014-10-11 08:59:46', 'admin', 'admin', 1),
(2, 'Công dụng của mùng chuống muỗi', 'cong-dung-cua-mung-chuong-muoi', 'thong-tin-san-pham/cong-dung-cua-mung-chuong-muoi.html', 'home.png', 'Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.', 'công dụng của mùng chuống muỗi,cong dung cua mung chuong muoi', '<p>Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.</p>\r\n', 1, ',8,', 'vi', 0, '2014-06-03 20:49:00', '2014-06-03 15:50:29', '2014-10-11 08:59:47', 'admin', 'admin', 1),
(3, 'Tác dụng của mùng chuống muỗi', 'tac-dung-cua-mung-chuong-muoi', 'thong-tin-san-pham/tac-dung-cua-mung-chuong-muoi.html', 'home.png', 'Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.', 'tác dụng của mùng chuống muỗi,tac dung cua mung chuong muoi', '<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', 1, ',8,', 'vi', 0, '2014-06-05 20:49:00', '2014-06-03 15:50:52', '2014-10-11 08:59:47', 'admin', 'admin', 1),
(4, 'Lợi ích mùng chống muỗi', 'loi-ich-mung-chong-muoi', 'thong-tin-san-pham/loi-ich-mung-chong-muoi.html', 'home.png', 'Lợi ích mùng chống muỗi sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền', 'lợi ích mùng chống muỗi,loi ich mung chong muoi', '<h2>Lợi ích mùng chống muỗi sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền</h2>\r\n', 1, ',8,', 'vi', 0, '2014-06-06 20:49:00', '2014-06-03 15:51:26', '2014-10-11 08:59:48', 'admin', 'admin', 1),
(5, 'Giới thiệu về công ty', 'gioi-thieu-ve-cong-ty', 'gioi-thieu/gioi-thieu-ve-cong-ty.html', '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.', 'giới thiệu về công ty,gioi thieu ve cong ty', '<p><span style="line-height: 1.6em;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</span></p>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus.</p>\r\n\r\n<p>&#39;Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros.</p>\r\n\r\n<p>Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis.</p>\r\n\r\n<p>Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', 1, ',2,', 'vi', 0, '2014-06-03 20:57:00', '2014-06-03 15:57:55', '2014-10-11 08:59:48', 'admin', 'admin', 1),
(6, 'Công Ty TNHH TM DV  Bảo Ý', 'cong-ty-tnhh-tm-dv-bao-y', 'gioi-thieu/cong-ty-tnhh-tm-dv-bao-y.html', '', 'Công Ty TNHH TM DV  Bảo Ý xin gửi lời chào chân thành đến quý khách hàng đã tín nhiệm và sử dụng sản phảm mà công ty chúng tôi cung cấp trong suốt thời gian qua.', 'công ty tnhh tm dv bảo ý,cong ty tnhh tm dv bao y', '<h2>C&ocirc;ng Ty TNHH TM DV &nbsp;Bảo Ý xin gửi lời chào ch&acirc;n thành đ&ecirc;́n quý khách hàng đã tín nhi&ecirc;̣m và sử dụng sản phảm mà c&ocirc;ng ty chúng t&ocirc;i cung c&acirc;́p trong su&ocirc;́t thời gian qua.</h2>\r\n\r\n<p>C&ocirc;ng ty chúng t&ocirc;i chuy&ecirc;n ph&acirc;n ph&ocirc;́i sỉ và lẻ các sản ph&acirc;̉m phục vụ trong ngành c&ocirc;ng n&ocirc;ng nghi&ecirc;̣p như:&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href="http://www.maycongnghiepby.com/may-nen-khi-may-bom-hoi/" title="Máy Nén Khí">Máy Nén Khí</a></li>\r\n	<li><a href="http://www.maycongnghiepby.com/may-han/" title="Máy Hàn">Máy Hàn</a></li>\r\n	<li><a href="http://www.maycongnghiepby.com/palang-xich/" title="Pa Lăng Xích">Pa Lăng Xích</a></li>\r\n	<li><a href="http://www.maycongnghiepby.com/may-cua-xich/" title="Máy Cưa">Máy Cưa</a></li>\r\n	<li><a href="http://www.maycongnghiepby.com/may-cat-co/" title="Máy Cắt Cỏ">Máy Cắt Cỏ</a> ...</li>\r\n</ul>\r\n\r\n<p>Với đ&ocirc;̣i ngủ nh&acirc;n vi&ecirc;n và cán b&ocirc;̣ kỹ thu&acirc;̣t nhi&ecirc;̀u năm kinh nghi&ecirc;̣m, có tinh th&acirc;̀n trách nhi&ecirc;̣m, nhi&ecirc;̣t huy&ecirc;́t t&acirc;̣n t&acirc;m trong c&ocirc;ng vi&ecirc;̣c.Với&nbsp;mục ti&ecirc;u phát tri&ecirc;̉n l&acirc;u dài mu&ocirc;́n cơ giới h óa ngành c&ocirc;ng&nbsp;n&ocirc;ng nghi&ecirc;̣p đ&ecirc;̉ xã h&ocirc;̣i ngày càng phát tri&ecirc;̉n đi l&ecirc;n, C&ocirc;ng ty &nbsp;Bảo Ý kh&ocirc;ng ngừng n&ocirc;̉ lực, tìm ki&ecirc;́m đ&ecirc;̉ mang đ&ecirc;́n cho khách hàng các dòng sản ph&acirc;̉m Uy Tín&nbsp;Đảm Bảo Ch&acirc;́t Lượng mà giá thành lại h&acirc;́p d&acirc;̃n, đ&ecirc;̉ phục khách hàng t&ocirc;́t nh&acirc;́t.</p>\r\n\r\n<p><em><strong>C&ocirc;ng ty Bảo Ý tr&acirc;n&nbsp;trọng cảm ơn và kính chúc quý khách hàng ngày càng thịnh vượng.</strong></em></p>\r\n', 1, ',2,', 'vi', 1, '2014-10-10 21:31:00', '2014-10-10 21:56:56', '2014-10-11 09:15:23', 'luandon', 'admin', 0),
(7, 'Báo Giá Máy Hàn OSHIMA', 'bao-gia-may-han-oshima', 'thong-tin-san-pham/bao-gia-may-han-oshima.html', '', 'Báo Giá Máy Hàn Oshima', 'báo giá máy hàn oshima,bao gia may han oshima', '<p align="center"><strong>BẢNG B&Aacute;O GI&Aacute;</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em><u>K&iacute;nh gửi</u></em></strong><em>:</em><strong> Qu&yacute; Kh&aacute;ch H&agrave;ng</strong></p>\r\n\r\n<p style="margin-left:4.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&ocirc;ng ty TNHH TM DV BẢO &Yacute; xin tr&acirc;n trọng gửi đến Qu&yacute; kh&aacute;ch bảng b&aacute;o gi&aacute; một số mặt h&agrave;ng &nbsp;&nbsp;<strong>M&Aacute;Y H&Agrave;N ĐIỆN TỬ OSHIMA </strong>ch&uacute;ng t&ocirc;i đang kinh doanh như sau:</p>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" width="726">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:132px;">\r\n			<p align="center"><strong>T&Ecirc;N H&Agrave;NG - NH&Atilde;N HIỆU</strong></p>\r\n			</td>\r\n			<td style="width:192px;">\r\n			<p align="center"><strong>QUY C&Aacute;CH</strong></p>\r\n			</td>\r\n			<td style="width:60px;">\r\n			<p align="center"><strong>ĐVT</strong></p>\r\n			</td>\r\n			<td style="width:144px;">\r\n			<p align="center"><strong>GI&Aacute;</strong></p>\r\n			</td>\r\n			<td style="width:198px;">\r\n			<p align="center"><strong>GHI CH&Uacute;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:132px;height:113px;">\r\n			<p align="center"><strong>OSHIMA </strong></p>\r\n\r\n			<p align="center"><strong>MOS 200</strong></p>\r\n\r\n			<p align="center">&nbsp;</p>\r\n			</td>\r\n			<td style="width:192px;height:113px;">\r\n			<p align="center"><strong>C&oacute; 8 con s&ograve;,&nbsp; K&yacute; hiệu: TOSHIBA, FUJI </strong></p>\r\n\r\n			<p align="center"><strong>(Nhật) &ndash; C&oacute; hệ thống ổn dịnh d&ograve;ng h&agrave;n</strong></p>\r\n			</td>\r\n			<td style="width:60px;height:113px;">\r\n			<p align="center">C&aacute;i</p>\r\n			</td>\r\n			<td style="width:144px;height:113px;">\r\n			<p align="center"><strong>2.600.000</strong></p>\r\n			</td>\r\n			<td rowspan="4" style="width:198px;height:113px;">\r\n			<p><strong>Phụ t&ugrave;ng tặng k&egrave;m theo: 2m d&acirc;y nối đất, 4m d&acirc;y cầm que/kẹp mass, 3m d&acirc;y điện, mặt nạ bảo h&ocirc;̣.</strong></p>\r\n\r\n			<p>Tất cả đều c&oacute; đồng hồ hiển thị</p>\r\n\r\n			<p><strong>Hàng được que 4 ly</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:132px;height:113px;">\r\n			<p align="center"><strong>OSHIMA </strong></p>\r\n\r\n			<p align="center"><strong>MOS 250</strong></p>\r\n\r\n			<p align="center">&nbsp;</p>\r\n			</td>\r\n			<td style="width:192px;height:113px;">\r\n			<p align="center"><strong>C&oacute; 6 con s&ograve;/ mặt. Tổng: 12 con s&ograve;. K&yacute; hiệu: D92-02 (TOSHIBA, FUJI - Nhật)</strong></p>\r\n			</td>\r\n			<td style="width:60px;height:113px;">\r\n			<p align="center">C&aacute;i</p>\r\n			</td>\r\n			<td style="width:144px;height:113px;">\r\n			<p align="center"><strong>2.950.000</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:132px;height:84px;">\r\n			<p align="center"><strong>OSHIMA </strong></p>\r\n\r\n			<p align="center"><strong>S-MOS 200</strong></p>\r\n\r\n			<p align="center">&nbsp;</p>\r\n			</td>\r\n			<td style="width:192px;height:84px;">\r\n			<p align="center"><strong>C&oacute; 8 con s&ograve;/ mặt. Tổng: 16 con s&ograve;. K&yacute; hiệu: D92-02 (FUJI - Nhật)</strong></p>\r\n			</td>\r\n			<td style="width:60px;height:84px;">\r\n			<p align="center">C&aacute;i</p>\r\n			</td>\r\n			<td style="width:144px;height:84px;">\r\n			<p align="center"><strong>3.200.000</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:132px;height:96px;">\r\n			<p align="center"><strong>OSHIMA </strong></p>\r\n\r\n			<p align="center"><strong>S-MOS 250</strong></p>\r\n\r\n			<p align="center">&nbsp;</p>\r\n			</td>\r\n			<td style="width:192px;height:96px;">\r\n			<p align="center"><strong>C&oacute; 12 con s&ograve;/ mặt. Tổng: 24 con s&ograve;. K&yacute; hiệu: D92-02 (FUJI - Nhật)</strong></p>\r\n			</td>\r\n			<td style="width:60px;height:96px;">\r\n			<p align="center">C&aacute;i</p>\r\n			</td>\r\n			<td style="width:144px;height:96px;">\r\n			<p align="center"><strong>3.500.000</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="margin-left:.25in;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gi&aacute; tr&ecirc;n đ&atilde; c&oacute; Thuế VAT</p>\r\n\r\n<p style="margin-left:.25in;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hiệu lực b&aacute;o gi&aacute; : Từ&nbsp; 1/1/2014 cho đến khi c&oacute; b&aacute;o gi&aacute; mới</p>\r\n\r\n<p style="margin-left:.25in;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phương thức giao h&agrave;ng : Giao tại Tp.HCM</p>\r\n\r\n<p style="margin-left:.25in;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em>Ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh cảm ơn sự quan t&acirc;m của Qu&yacute; Kh&aacute;ch H&agrave;ng v&agrave; mong sớm nhận được ph&uacute;c đ&aacute;p cho bảng ch&agrave;o gi&aacute; tr&ecirc;n</em></strong></p>\r\n\r\n<p>Tr&acirc;n trọng k&iacute;nh ch&agrave;o</p>\r\n\r\n<p align="center" style="margin-left:-.25in;">&nbsp;</p>\r\n', 0, ',1,8,', 'vi', 1, '2014-11-21 21:43:00', '2014-11-21 21:48:25', '2014-11-21 21:49:44', 'luandon', 'luandon', 0),
(8, 'Báo Giá Pa Lăng KCT', 'bao-gia-pa-lang-kct', 'thong-tin-san-pham/bao-gia-pa-lang-kct.html', '', 'Báo giá Pa lăng KCT', '', '<p align="center"><strong>BẢNG B&Aacute;O GI&Aacute;</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em><u>K&iacute;nh gửi</u></em></strong><em>:</em><strong> Qu&yacute; Kh&aacute;ch H&agrave;ng</strong></p>\r\n\r\n<p style="margin-left:4.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&ocirc;ng ty TNHH TM DV BẢO &Yacute; xin tr&acirc;n trọng gửi đến Qu&yacute; kh&aacute;ch bảng b&aacute;o gi&aacute; một số mặt h&agrave;ng b <strong>Pa lăng KCT&nbsp; </strong>ch&uacute;ng t&ocirc;i đang kinh doanh như sau:</p>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" width="648">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:156px;">\r\n			<p align="center">T&Ecirc;N H&Agrave;NG - NH&Atilde;N HIỆU</p>\r\n			</td>\r\n			<td style="width:126px;">\r\n			<p align="center">QUY</p>\r\n\r\n			<p align="center">C&Aacute;CH</p>\r\n			</td>\r\n			<td style="width:60px;">\r\n			<p align="center">ĐVT</p>\r\n			</td>\r\n			<td style="width:144px;">\r\n			<p align="center">GI&Aacute; TT NGAY</p>\r\n\r\n			<p align="center">(VNĐ)</p>\r\n			</td>\r\n			<td style="width:162px;">\r\n			<p align="center">GHI CH&Uacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="6" style="width:156px;height:23px;">\r\n			<p align="center">Palăng KCT</p>\r\n\r\n			<p align="center">(USA Technology)</p>\r\n			</td>\r\n			<td style="width:126px;height:23px;">\r\n			<p align="center">0.5 tấn x 2.5m</p>\r\n			</td>\r\n			<td style="width:60px;height:23px;">\r\n			<p align="center">C&aacute;i</p>\r\n			</td>\r\n			<td style="width:144px;height:23px;">\r\n			<p align="center">1,000,000</p>\r\n			</td>\r\n			<td rowspan="6" style="width:162px;height:23px;">\r\n			<p>Hộp giấy kiếng m&agrave;u</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:126px;height:23px;">\r\n			<p align="center">1.0 tấn x 2.5m</p>\r\n			</td>\r\n			<td style="width:60px;height:23px;">\r\n			<p align="center">C&aacute;i</p>\r\n			</td>\r\n			<td style="width:144px;height:23px;">\r\n			<p align="center"><strong>1,200,000</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:126px;height:23px;">\r\n			<p align="center">2.0 tấn x 2.5m</p>\r\n			</td>\r\n			<td style="width:60px;height:23px;">\r\n			<p align="center">C&aacute;i</p>\r\n			</td>\r\n			<td style="width:144px;height:23px;">\r\n			<p align="center"><strong>1,400,000</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:126px;height:11px;">\r\n			<p align="center">3.0 tấn x 3M</p>\r\n			</td>\r\n			<td style="width:60px;height:11px;">\r\n			<p align="center">C&aacute;i</p>\r\n			</td>\r\n			<td style="width:144px;height:11px;">\r\n			<p align="center"><strong>1,500,000</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:126px;height:11px;">\r\n			<p align="center">3.0 tấn x 5M</p>\r\n			</td>\r\n			<td style="width:60px;height:11px;">\r\n			<p align="center">C&aacute;i</p>\r\n			</td>\r\n			<td style="width:144px;height:11px;">\r\n			<p align="center"><strong>1,700,000 (Tạm hết)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:126px;height:16px;">\r\n			<p align="center">5.0 tấn x 3M</p>\r\n			</td>\r\n			<td style="width:60px;height:16px;">\r\n			<p align="center">C&aacute;i</p>\r\n			</td>\r\n			<td style="width:144px;height:16px;">\r\n			<p align="center"><strong>2,400,000</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="3" style="width:156px;height:23px;">\r\n			<p align="center"><strong>X&Iacute;CH TH&Eacute;P (G80-Japan)</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:23px;">\r\n			<p align="center">&AElig; 6,0mm</p>\r\n			</td>\r\n			<td style="width:60px;height:23px;">\r\n			<p align="center">M&eacute;t</p>\r\n			</td>\r\n			<td style="width:144px;height:23px;">\r\n			<p align="center"><strong>50,000</strong></p>\r\n			</td>\r\n			<td style="width:162px;height:23px;">\r\n			<p>100-200m&eacute;t/th&ugrave;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:126px;height:23px;">\r\n			<p align="center">&AElig; 8,0mm</p>\r\n			</td>\r\n			<td style="width:60px;height:23px;">\r\n			<p align="center">M&eacute;t</p>\r\n			</td>\r\n			<td style="width:144px;height:23px;">\r\n			<p align="center"><strong>60,000</strong></p>\r\n			</td>\r\n			<td style="width:162px;height:23px;">\r\n			<p>100 m&eacute;t/th&ugrave;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:126px;height:22px;">\r\n			<p align="center">&AElig; 10,0mm</p>\r\n			</td>\r\n			<td style="width:60px;height:22px;">\r\n			<p align="center">M&eacute;t</p>\r\n			</td>\r\n			<td style="width:144px;height:22px;">\r\n			<p align="center"><strong>80,000</strong></p>\r\n			</td>\r\n			<td style="width:162px;height:22px;">\r\n			<p>100 m&eacute;t/th&ugrave;ng</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="margin-left:.25in;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gi&aacute; tr&ecirc;n đ&atilde; c&oacute; Thuế VAT</p>\r\n\r\n<p style="margin-left:.25in;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hiệu lực b&aacute;o gi&aacute; : Từ&nbsp; 1/1/2014 cho đến khi c&oacute; b&aacute;o gi&aacute; mới</p>\r\n\r\n<p style="margin-left:.25in;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phương thức giao h&agrave;ng : Giao tại Tp.HCM</p>\r\n\r\n<p style="margin-left:.25in;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em>Ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh cảm ơn sự quan t&acirc;m của Qu&yacute; Kh&aacute;ch H&agrave;ng v&agrave; mong sớm nhận được ph&uacute;c đ&aacute;p cho bảng ch&agrave;o gi&aacute; tr&ecirc;n</em></strong></p>\r\n\r\n<p>Tr&acirc;n trọng k&iacute;nh ch&agrave;o</p>\r\n', 0, ',1,8,', 'vi', 1, '2014-11-21 21:58:00', '2014-11-21 22:02:26', NULL, 'luandon', NULL, 0);

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
  `slogan` varchar(100) DEFAULT NULL,
  `copyright` varchar(250) DEFAULT NULL,
  `contact_foo` varchar(500) DEFAULT NULL,
  `contact_form` text NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `yahoo` varchar(30) DEFAULT NULL,
  `skype` varchar(30) DEFAULT NULL,
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

INSERT INTO `web_config` (`id`, `name`, `lang`, `domain`, `max_limit_1`, `max_limit_2`, `max_limit_3`, `max_limit_4`, `slogan`, `copyright`, `contact_foo`, `contact_form`, `email`, `yahoo`, `skype`, `tel`, `hotline`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Công ty TNHH TM DV Bảo Ý', 'vi', 'localhost/all/source_temp_v4', 10, 16, 8, 10, 'Chuyên kinh doanh máy công nông nghiệp', 'Copyright © 2014 by maycongnghiepby.com', '<p>Địa chỉ: 75 Đường B4, Phường Tậy Thạnh, Quận T&acirc;n Ph&uacute;.</p>\r\n\r\n<p>Điện thoại: 0938 50 55 44 - 0903 914 782</p>\r\n\r\n<p>Email:&nbsp;kimluukd@gmail.com</p>\r\n', '', 'kimluukd@gmail.com', '', '', '0938 50 55 44', '0988 388 388', 1, '2013-02-20 13:35:24', '2014-12-06 19:31:44', 'admin', 'admin', 0),
(2, 'English', 'en', 'localhost/all/source_temp_v4', 10, 10, 10, 10, NULL, 'Copyright © 2014 by NETSPACE', 'Culinary Arts School NetSpace', '', 'hieunhan112@gmail.com', 'hieu_nhan1', NULL, '0988 388 388', '0988 388 388', 1, '2013-08-10 10:09:29', '2014-05-29 11:37:06', 'admin', 'admin', 0),
(4, '', '0', NULL, 0, 0, 0, 0, NULL, '', '', '', '', NULL, NULL, NULL, '', 1, '2014-05-29 09:18:55', NULL, 'admin', NULL, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `web_contact`
--

INSERT INTO `web_contact` (`id`, `name`, `email`, `phone`, `diachi`, `message`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(5, 'Nhan', 'hieu_nhan1@yahoo.com', '0988388003', '123 CMT8', 'Test noi dung lien he. Test noi dung lien he', 'vi', 0, '2014-10-06 10:51:43', '2014-10-06 11:37:19', 'khachhang', 'admin', 1),
(6, 'Nhan 2', 'hieu@yahoo.com', '0988388003', '123 cmt 8', 'test noi dung mail test noi dung mail test noi dung mail test noi dung mail', 'vi', 0, '2014-10-06 11:36:25', '2014-10-06 11:37:17', 'khachhang', 'admin', 1),
(7, 'Nhan', 'admin@netspace.edu.vn', '0988388003', '123 cmt 8', 'test mail abc aaaas as a s a s a s a s', 'vi', 0, '2014-10-06 11:41:03', '2014-10-06 11:46:04', 'khachhang', 'admin', 1),
(8, 'Nhan 3', 'admin@netspace.edu.vn', '0988388003', '123 CMT 8', 'Công ty TNHH TM DV Bảo Ý Công ty TNHH TM DV Bảo Ý', 'vi', 0, '2014-10-06 11:44:00', '2014-10-06 11:46:02', 'khachhang', 'admin', 1),
(9, 'Nhan 5', 'hieu@yahoo.com', '0988 388 388', '123 abc', 'b b b  b b b b  b b b b b b b  b b b b  b Công ty TNHH TM DV Bảo Ý\nĐịa chỉ: 75 Đường B4, Phường Tậy Thạnh, Quận Tân Phú.\n\nĐiện thoại: 0938 50 55 44 - 0903 914 782\n\nEmail: kimluukd@gmail.com', 'vi', 1, '2014-10-06 11:45:50', '2014-10-06 11:47:53', 'khachhang', 'admin', 1),
(10, 'Trinh Văn Ngọc', 'vanngoc_trinh@66yahoo.com', '0908243767', '36/2B quang trung P8 Gò vấp Tphcm', 'loại bơm khí nén loại ko dầu và có dầu ưu điểm ra sao? hoặc tiện dụng xử dụng gia đình\n-loại bơm nhỏ Oshima và pona,D&D giá như vậy có dây bơm dụng cu bơm đi kèm ko ạ?', 'vi', 1, '2015-01-30 15:49:22', '2015-02-01 11:29:18', 'khachhang', NULL, 0),
(11, 'hoang', 'llovelorn2003@yahoo.com', '0979012897', '', 'sao k thay de xut xu san pham vay\nhi co may loai may cua nay thoi ah', 'vi', 1, '2015-02-04 17:44:33', '2015-02-04 17:48:53', 'khachhang', NULL, 0),
(12, 'nguyễn quang bình', 'binh15998@yahoo.com.vn', '01234971049', '01234971049', '<p>T&ocirc;i hiện ở An Viễn,Trảng Bơm.T&ocirc;i muốn mở cửa h&agrave;ng b&aacute;n c&aacute;c m&aacute;y c&ocirc;ng n&ocirc;ng nghiệp v&agrave; c&aacute;c m&aacute;y cầm tay.Xin qu&yacute; c&ocirc;ng ty cho biết chi tiết về c&aacute;c mặt h&agrave;ng,gi&aacute; cả li&ecirc;n quan đến c&aacute;c sản phẩm đ&atilde; n&ecirc;u.Ch&acirc;n th&agrave;nh cảm ơn.</p>\r\n', 'vi', 1, '2015-06-21 18:33:05', '2015-06-29 09:03:54', 'khachhang', 'luandon', 0),
(13, 'nguyễn hùng vỹ tuân', 'cuahanghuytuan77@gmail.com', '01665407578', 'ninh hòa - khánh hòa', 'của hàng m cần 1 số mặt hàng như máy phát cỏ, máy cưa. M có thể hợp tác đc chứ/ Xin chân thành cảm ơn', 'vi', 1, '2015-06-26 18:33:11', '2015-06-26 18:35:01', 'khachhang', NULL, 0),
(14, 'vanviettien', 'viettien64@gmail.com', '01686519420', '', 'Xin báo giá máy cắt cỏ 4 thì chạy xăng, nhập khẩu toàn bộ từ Thái Lan.', 'vi', 1, '2015-08-31 10:09:13', '2015-08-31 10:18:14', 'khachhang', NULL, 0);

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
(2, 'English', 'en', 2, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `web_menu`
--

INSERT INTO `web_menu` (`id`, `name`, `name_alias`, `url`, `url_hinh`, `title`, `metaDescription`, `metaKeyword`, `parent_id`, `type_id`, `position_id`, `order`, `other`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Trang chủ', '', '', '', 'Công ty TNHH TM DV Bảo Ý, máy công nông nghiệp', 'Công ty TNHH TM DV Bảo Ý chuyên cung cấp máy công nông nghiệp động cơ tốt, bền, tiết kiệm chi phí và thời gian cho người sử dụng.', 'Công ty TNHH TM DV Bảo Ý,máy công nông nghiệp,may cong nghiep,may nong nghiep', 0, 1, ',2,3,', 1, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-10-06 15:31:14', 'admin', 'admin', 0),
(2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', 'Giới thiệu công ty TNHH TM DV Bảo Ý', 'Giới thiệu công ty TNHH TM DV Bảo Ý', 'Giới thiệu công ty TNHH TM DV Bảo Ý,may nen bao y', 0, 2, ',2,3,', 2, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-10-06 15:00:47', 'admin', 'admin', 0),
(3, 'Sản phẩm khuyến mãi', 'san-pham-khuyen-mai', 'san-pham-khuyen-mai/', '', 'Sản phẩm khuyến mãi', 'Sản phẩm thời trang khuyến mãi', 'sản phẩm khuyến mãi,san pham khuyen mai', 1, 14, ',9,', 1, 1, 'vi', 0, '2014-05-29 00:00:00', '2014-10-06 15:28:50', 'admin', 'admin', 0),
(4, 'Máy nén khí', 'may-nen-khi-may-bom-hoi', 'may-nen-khi-may-bom-hoi/', '', 'Máy nén khí, máy bơm hơi', 'Công ty Bảo Ý chuyên cung cấp máy khí nén, máy bơm hơi nhập khẩu của các hãng nổi tiếng như: Puma, Oshima, D&D, KCT, Pona...', 'máy nén khí,máy bơm hơi,may nen khi,may bom hoi', 13, 3, ',4,', 1, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-10-06 15:42:24', 'admin', 'admin', 0),
(5, 'Máy hàn', 'may-han', 'may-han/', '', 'Máy hàn điện tử', 'Công ty Bảo Ý chuyên cung cấp máy hàn điện tử chất lương rất tốt, đặc biệt là máy hàn của Oshima.', 'máy hàn,may han,may han oshima', 13, 3, ',4,', 2, 0, 'vi', 1, '2014-05-29 00:00:00', '2014-10-06 15:54:01', 'admin', 'admin', 0),
(6, 'Sản phẩm', 'san-pham', 'san-pham/', '', 'Sản phẩm máy công nghiệp, máy nông nghiệp', 'Công ty Bảo Ý chuyên cung cấp máy công nghiệp, máy nông nghiệp như: máy nén khí, máy bơm hơi, máy hàn, palăng xích, máy cắt cỏ, máy cưa xích,... hội tụ đầy đủ tiêu chuẩn của một động cơ tốt, bền, tiết kiệm chi phí và thời gian cho người sử dụng.', 'sản phẩm máy công nghiệp,máy nông nghiệp,máy nén khí, máy bơm hơi,máy cắt cỏ', 0, 3, ',2,3,4,', 3, 0, 'vi', 1, '2014-05-30 10:19:14', '2014-10-06 13:50:31', 'admin', 'admin', 0),
(7, 'Hướng dẫn thanh toán', 'huong-dan-thanh-toan', 'huong-dan-thanh-toan/', '', 'Hướng dẫn thanh toán', 'Hướng dẫn thanh toán', 'hướng dẫn thanh toán,huong dan thanh toan', 0, 2, ',2,3,', 4, 0, 'vi', 0, '2014-05-30 11:06:51', '2014-10-05 15:33:55', 'admin', 'admin', 0),
(8, 'Thông tin sản phẩm', 'thong-tin-san-pham', 'thong-tin-san-pham/', '', 'Thông tin sản phẩm', 'Thông tin sản phẩm', 'thông tin sản phẩm,thong tin san pham', 0, 2, ',2,3,', 5, 0, 'vi', 1, '2014-05-30 11:07:21', '2014-08-07 15:06:42', 'admin', 'admin', 0),
(9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'liên hệ,lien he', 0, 13, ',2,3,', 6, 0, 'vi', 1, '2014-05-30 11:07:57', '2014-08-07 15:06:44', 'admin', 'admin', 0),
(10, 'Home', 'home', '/?lang=en', '', 'Home', 'Home', 'Home', 0, 1, ',2,', 1, 0, 'en', 1, '2014-06-14 05:12:47', '2014-06-14 05:15:41', 'admin', 'admin', 0),
(11, 'About US', 'about-us', 'about-us/', '', 'About US', 'About US', 'About US', 0, 2, ',2,', 2, 0, 'en', 1, '2014-06-14 05:15:37', NULL, 'admin', NULL, 0),
(12, 'Products', 'products', 'products/', '', 'Products', 'Products', 'Products', 0, 3, ',2,', 3, 0, 'en', 1, '2014-06-14 05:16:42', NULL, 'admin', NULL, 0),
(13, 'Máy công nghiệp', 'may-cong-nghiep', 'may-cong-nghiep/', '', 'Máy công nghiệp', 'Máy công nghiệp', 'máy công nghiệp,may cong nghiep', 6, 3, ',2,4,', 1, 1, 'vi', 1, '2014-06-14 07:58:44', '2014-10-05 12:56:38', 'admin', 'admin', 0),
(26, 'Máy bơm nước', 'may-bom-nuoc', 'may-bom-nuoc/', '', 'Máy bơm nước', 'Đang cập nhật... Vui lòng liên hệ 0938 50 55 44 để mua hàng', 'máy bơm nước,may bom nuoc', 14, 3, ',4,', 4, 0, 'vi', 1, '2014-10-05 12:59:32', '2015-06-16 09:55:35', 'admin', 'luandon', 1),
(14, 'Máy nông nghiệp', 'may-nong-nghiep', 'may-nong-nghiep/', '', 'Máy nông nghiệp', 'Máy nông nghiệp', 'máy nông nghiệp,may nong nghiep', 6, 3, ',2,4,', 2, 1, 'vi', 1, '2014-06-14 08:00:30', '2014-10-05 13:03:11', 'admin', 'admin', 0),
(15, 'Đầu nén khí', 'dau-nen-khi', 'dau-nen-khi/', '', 'Đầu nén khí', 'Đang cập nhật... Vui lòng liên hệ 0938 50 55 44 để mua hàng', 'đầu nén khí,dau nen khi', 13, 3, ',4,', 4, 0, 'vi', 1, '2014-06-14 08:00:56', '2014-10-05 15:13:43', 'admin', 'admin', 0),
(25, 'Con đội', 'con-doi', 'con-doi/', '', 'Con đội', 'Đang cập nhật... Vui lòng liên hệ 0938 50 55 44 để mua hàng', 'con đội,con doi', 13, 3, ',4,', 5, 0, 'vi', 1, '2014-10-05 12:57:40', '2014-10-05 15:13:52', 'admin', 'admin', 0),
(16, 'Đặt hàng', 'dat-hang', 'dat-hang/', '', 'Đặt hàng', 'Đặt hàng', 'đặt hàng,dat hang', 0, 7, ',9,', 100, 0, 'vi', 1, '2014-06-21 09:21:42', NULL, 'admin', NULL, 0),
(17, 'Giỏ hàng', 'gio-hang', 'gio-hang/', '', 'Giỏ hàng', 'Giỏ hàng', 'giỏ hàng,gio hang', 16, 8, ',9,', 1, 0, 'vi', 1, '2014-06-23 06:41:50', '2014-06-23 06:42:22', 'admin', 'admin', 0),
(18, 'Thanh toán', 'thanh-toan', 'thanh-toan/', '', 'Thanh toán', 'Thanh toán', 'thanh toán,thanh toan', 16, 8, ',9,', 2, 0, 'vi', 1, '2014-06-23 06:43:12', NULL, 'admin', NULL, 0),
(19, 'Facebook', 'facebook', 'javascript:;', 'icon-facebook.gif', 'Facebook', '', '', 0, 14, ',6,', 101, 0, 'vi', 1, '2014-07-25 09:08:14', NULL, 'admin', NULL, 0),
(20, 'Youtube', 'youtube', 'javascript:;', 'icon-youtube.gif', 'Youtube', '', '', 0, 14, ',6,', 102, 0, 'vi', 1, '2014-07-25 09:08:32', NULL, 'admin', NULL, 0),
(21, 'Palăng xích', 'palang-xich', 'palang-xich/', '', 'Palang xích', 'Công ty Bảo Ý chuyên phân phối các loại palăng xích kéo tay với giá thành tốt nhất với các loại palăng xích 2 tấn, 3 tấn', 'palăng xích,palang xich', 13, 3, ',4,', 3, 0, 'vi', 1, '2014-07-26 10:55:35', '2014-10-05 15:27:05', 'admin', 'admin', 0),
(22, 'Máy cắt cỏ', 'may-cat-co', 'may-cat-co/', '', 'Máy cắt cỏ', 'Công ty Bảo Ý  chuyên cung cấp máy cắt cỏ hội tụ đầy đủ tiêu chuẩn của một động cơ tốt, bền, tiết kiệm chi phí và thời gian cho người sử dụng.', 'máy cắt cỏ,may cat co', 14, 3, ',4,', 1, 0, 'vi', 1, '2014-07-26 10:56:00', '2014-10-05 15:28:50', 'admin', 'admin', 0),
(23, 'Máy cưa xích', 'may-cua-xich', 'may-cua-xich/', '', 'Máy cưa xích', 'Công ty Bảo Ý chuyên cung cấp máy cưa xích hội tụ đầy đủ tiêu chuẩn của một động cơ tốt, bền, tiết kiệm chi phí và thời gian cho người sử dụng.', 'máy cưa xích,may cua xich', 14, 3, ',4,', 2, 0, 'vi', 1, '2014-07-26 10:56:19', '2014-10-05 15:30:12', 'admin', 'admin', 0),
(24, 'Bình phun thuốc', 'binh-phun-thuoc', 'binh-phun-thuoc/', '', 'Bình phun thuốc', 'Đang cập nhật... Vui lòng liên hệ 0938 50 55 44 để mua hàng', 'bình phun thuốc,binh phun thuoc', 14, 3, ',4,', 3, 0, 'vi', 1, '2014-07-26 10:56:33', '2014-10-05 15:14:09', 'admin', 'admin', 0),
(27, 'Máy khoan đất', 'may-khoan-dat', 'may-khoan-dat/', '', 'Máy khoan đất', 'Đang cập nhật... Vui lòng liên hệ 0938 50 55 44 để mua hàng', 'máy khoan đất,may khoan dat', 14, 3, ',4,', 5, 0, 'vi', 1, '2014-10-05 13:00:06', '2014-10-05 15:14:20', 'admin', 'admin', 0),
(28, 'Máy khoan ', 'may-khoan', 'may-khoan/', '', 'Máy khoan Makita, máy khoan maktec', 'Công ty Bảo Ý chuyên cung cấp máy khoan Makita và máy khoan maktec chất lượng tốt, máy có trọng lượng nhẹ, thiết kế nhỏ gọn, dễ điều khiển thao tác và khả năng di chuyển cao.', 'máy khoan,may khoan,Máy khoan Makita, máy khoan maktec', 13, 3, ',4,', 6, 0, 'vi', 1, '2014-11-08 19:54:17', '2014-11-08 19:55:09', 'luandon', 'luandon', 0),
(29, 'Nhớt 2 thì', 'nhot-2-thi', 'nhot-2-thi/', '', 'Nhớt chuyên dùng cho động cơ 2 thì.', 'Công ty Bảo Ý chuyên cung cấp Nhớt 2 thì chuyên dùng cho động cơ 2 thì như máy cưa xích ,máy cắt cỏ.', 'nhớt 2 thì,nhot 2 thi', 14, 3, ',4,', 6, 0, 'vi', 1, '2015-04-15 10:19:51', '2015-06-15 18:26:54', 'luandon', 'admin', 0),
(30, 'Sản phẩm và dịch vụ khác', 'san-pham-va-dich-vu-khac', 'san-pham-va-dich-vu-khac/', '', 'Sản phẩm và dịch vụ khác', 'Công ty tnhh tm dv Bảo Ý chuyên thi công an toàn hệ thống điện, hệ thống chống sét.', 'sản phẩm và dịch vụ khác,san pham va dich vu khac', 6, 3, ',4,', 3, 1, 'vi', 1, '2015-05-27 21:49:15', '2015-06-15 18:26:12', 'luandon', 'admin', 0),
(31, 'Máy Xịt Rửa Xe', 'may-xit-rua-xe', 'may-xit-rua-xe/', '', 'Máy Xịt Rửa Xe - May rua xe', 'Công ty Bảo Ý chuyên cung cấp máy rửa máy, rửa xe công nghiệp. Hội tụ đầy đủ tiêu chuẩn bền, tiết kiệm chi phí và thời gian cho người sử dụng.', 'máy xịt rửa xe,may xit rua xe,máy rửa xe,may rua xe', 14, 3, ',4,', 4, 0, 'vi', 1, '2015-06-16 09:55:45', '2015-07-29 09:23:12', 'luandon', 'admin', 0);

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
(5, 'Sản phẩm', 'web_product', 'icon-product.jpg', 5, 1, 0, NULL),
(6, 'Thư viện ảnh', 'web_photo', 'icon-thu-vien-anh.jpg', 6, 0, 0, NULL),
(7, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 7, 0, 0, NULL),
(8, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 8, 1, 1, NULL),
(9, 'DS Tỉnh - Thành', 'web_ds_tinhthanh', 'icon-product.jpg', 9, 1, 0, NULL),
(10, 'DS Quận - Huyện', 'web_ds_quanhuyen', 'icon-register.jpg', 10, 1, 0, NULL),
(11, 'Đơn đặt hàng', 'web_product_order', 'icon-hoc-vien.jpg', 11, 1, 0, '<span id="web_product_order" class="ajax_thongtin"></span>'),
(12, 'Đơn đặt hàng chi tiết', 'web_product_order_detail', 'icon-lien-he.jpg', 12, 1, 1, NULL),
(13, 'Item 13', '', 'icon-tuyen-dung-thong-tin.jpg', 13, 0, 0, NULL),
(14, 'Item 14', '', 'icon-contact.jpg', 14, 0, 0, NULL),
(15, 'Item 15', '', 'icon-tuyendung-ho-so.jpg', 15, 0, 0, NULL),
(16, 'Item 16', '', '', 16, 0, 0, NULL),
(17, 'Item 17', '', '', 17, 0, 0, NULL),
(18, 'Item 18', '', '', 18, 0, 0, NULL),
(19, 'Item 19', '', '', 19, 0, 0, NULL),
(20, 'Item 20', '', '', 20, 0, 0, NULL),
(21, 'Item 21', '', '', 21, 0, 0, NULL),
(22, 'Liên hệ trực tuyến', 'web_contact', 'icon-lien-he.jpg', 22, 1, 0, '<span id="web_contact" class="ajax_thongtin"></span>'),
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `web_product`
--

INSERT INTO `web_product` (`id`, `name`, `name_alias`, `masp`, `url`, `url_hinh`, `metaDescription`, `metaKeyword`, `giaban`, `giagoc`, `content`, `info_more`, `other`, `menu_id`, `lang`, `status`, `ngay_dang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Máy bơm hơi OSHIMA mini 24 lít', 'may-bom-hoi-oshima-mini-24-lit', 'OSHIMA-24L', 'may-nen-khi-may-bom-hoi/may-bom-hoi-oshima-mini-24-lit.html', 'may-bom-hoi-oshima-mini-24-lit.png', 'Máy bơm hơi OSHIMA mini bình được sơn tĩnh điện chống ăn mòn kim loại theo công nghệ Nhật Bản, đảm bảo an toàn tuyệt đối', 'máy bơm hơi oshima mini 24 lít,may bom hoi oshima', 1800000, 0, '<h2>M&aacute;y bơm hơi OSHIMA mini b&igrave;nh được sơn tĩnh điện chống ăn m&ograve;n kim loại theo c&ocirc;ng nghệ Nhật Bản, đảm bảo an to&agrave;n tuyệt đối</h2>\r\n', '<p><strong>Gi&aacute; tr&ecirc;n chưa bao gồm VAT</strong></p>\r\n\r\n<p>Lưu lượng n&eacute;n: 198 l&iacute;t/ph&uacute;t.</p>\r\n\r\n<p>Điện &aacute;p sử dụng: 1 pha - 220V - 50Hz.</p>\r\n\r\n<p>&Aacute;p suất l&agrave;m việc tối đa: 10 kG/cm2.</p>\r\n\r\n<p>&Aacute;p suất thử thủy lực kiểm định: 15 kG/cm2.</p>\r\n\r\n<p>Thể t&iacute;ch b&igrave;nh chứa kh&iacute; n&eacute;n: 24 l&iacute;t.</p>\r\n\r\n<p>Khối lượng: 12 kg</p>\r\n', 1, ',6,13,4,', 'vi', 1, '2014-06-14 14:11:00', '2014-06-14 09:13:15', '2015-05-22 16:02:15', 'admin', 'luandon', 0),
(3, 'Máy bơm hơi D&D mini 24 lít.', 'may-bom-hoi-d-d-mini-24-lit', 'D&D-24L', 'may-nen-khi-may-bom-hoi/may-bom-hoi-d-d-mini-24-lit.html', '20150524_134537.jpg', 'Máy bơm hơi D&D mini 24 lít bình được sơn tĩnh điện chống ăn mòn kim loại, đảm bảo an toàn tuyệt đối', 'máy bơm hơi d&d mini 24 lít,may bom hoi d&d mini', 1700000, 0, '<h2>M&aacute;y bơm hơi D&amp;D mini 24 l&iacute;t b&igrave;nh được sơn tĩnh điện chống ăn m&ograve;n kim loại, đảm bảo an to&agrave;n tuyệt đối</h2>\r\n', '<p>C&ocirc;ng suất (HP): 2</p>\r\n\r\n<p>&Aacute;p lực (Bar): 8</p>\r\n\r\n<p>Lưu lượng&nbsp;<span style="line-height: 1.6em;">(L/min): 140</span></p>\r\n\r\n<p>B&igrave;nh chứa ( L): 24</p>\r\n\r\n<p>D&ograve;ng đi&ecirc;n/ (V): 220</p>\r\n\r\n<p>Tần số (Hz): 50</p>\r\n\r\n<p>K&iacute;ch thướt (mm): 575*270*605</p>\r\n', 1, ',6,13,4,', 'vi', 1, '2014-07-26 10:08:00', '2014-07-26 10:10:09', '2015-05-25 22:16:07', 'admin', 'luandon', 0),
(2, 'Máy bơm hơi PONA mini 24 lít.', 'may-bom-hoi-pona-mini-24-lit', 'PONA-24L', 'may-nen-khi-may-bom-hoi/may-bom-hoi-pona-mini-24-lit.html', 'may-bom-hoi-pona-mini-24-lit.jpg', 'Máy bơm hơi PONA mini 24 lít bình được sơn tĩnh điện chống ăn mòn kim loại theo công nghệ Nhật Bản, đảm bảo an toàn tuyệt đối', 'máy bơm hơi pona mini 24 lít,may bom hoi pona mini', 1800000, 0, '<h2>M&aacute;y bơm hơi PONA mini 24 l&iacute;t b&igrave;nh được sơn tĩnh điện chống ăn m&ograve;n kim loại theo c&ocirc;ng nghệ Nhật Bản, đảm bảo an to&agrave;n tuyệt đối</h2>\r\n', '<p><strong>Gi&aacute; tr&ecirc;n đ&atilde; bao gồm VAT</strong></p>\r\n\r\n<p>C&ocirc;ng suất động cơ: 2 HP.</p>\r\n\r\n<p>Lưu lượng n&eacute;n: 198 l&iacute;t/ph&uacute;t.</p>\r\n\r\n<p>Điện &aacute;p sử dụng: 1 pha - 220V - 50Hz.</p>\r\n\r\n<p>&Aacute;p suất l&agrave;m việc tối đa: 10 kG/cm2.</p>\r\n\r\n<p>&Aacute;p suất thử thủy lực kiểm định: 15 kG/cm2.</p>\r\n\r\n<p>Thể t&iacute;ch b&igrave;nh chứa kh&iacute; n&eacute;n: 24 l&iacute;t.</p>\r\n', 0, ',6,13,4,', 'vi', 1, '2014-06-14 14:15:00', '2014-06-14 09:16:57', '2015-09-21 17:23:16', 'admin', 'luandon', 0),
(6, 'Máy hàn OSHIMA MOS 250', 'may-han-oshima-mos-250', 'OSHIMA250', 'may-han/may-han-oshima-mos-250.html', 'may-han-oshima-mos-200.jpg', 'Máy hàn OSHIMA MOS 250 đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 12 tháng.', 'máy hàn oshima mos 250,may han oshima mos 250', 2950000, 3100000, '<h2>M&aacute;y h&agrave;n OSHIMA MOS 250&nbsp;đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</h2>\r\n\r\n<table border="1" cellpadding="5" cellspacing="0" style="width: 60%; margin: auto; border-collapse: collapse;">\r\n	<tbody>\r\n		<tr>\r\n			<td bgcolor="#ffff33" style="text-align: center;"><strong>MODEL</strong></td>\r\n			<td bgcolor="#ffff33" style="text-align: center;"><strong>OSHIMA MOS 250</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Điện &aacute;p v&agrave;o (V)</td>\r\n			<td style="text-align: center;">220</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Điện &aacute;p hản (V)</td>\r\n			<td style="text-align: center;">65</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Mức d&ograve;ng h&agrave;n(A)</td>\r\n			<td style="text-align: center;">25-250</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Hiệu suất (%)</td>\r\n			<td style="text-align: center;">85%</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">C&ocirc;ng suất đầu v&agrave;o</td>\r\n			<td style="text-align: center;">9.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Lớp c&aacute;ch điện</td>\r\n			<td style="text-align: center;">F</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Trọng lượng (kg)</td>\r\n			<td style="text-align: center;">6.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">K&iacute;ch thước (cm)</td>\r\n			<td style="text-align: center;">39x21x27</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Gi&aacute; tr&ecirc;n chưa bao gồm thuế 10% VAT.</p>\r\n\r\n<p>Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (TPHCM ).</p>\r\n\r\n<p><span style="line-height: 1.6em;">C&oacute; quạt l&agrave;m m&aacute;t.</span></p>\r\n\r\n<p>C&oacute; rơ le ngắt tự động khi nhiệt độ tăng qu&aacute; cao, bảo vệ bo mạch.</p>\r\n\r\n<p>Que h&agrave;n th&iacute;ch hợp: 2mm; 2,5mm; 2,8mm; 3mm; 3,2mm, 4,0mm. (H&agrave;n que k&eacute;o li&ecirc;n tục 3,2mm)</p>\r\n\r\n<p>H&agrave;n được th&eacute;p d&agrave;y đến 10mm</p>\r\n', 0, ',6,13,5,', 'vi', 1, '2014-10-05 13:55:00', '2014-10-05 13:58:38', '2015-05-25 22:19:32', 'admin', 'luandon', 0),
(4, 'Máy hàn OSHIMA MOS 200', 'may-han-oshima-mos-200', 'OSHIMA200', 'may-han/may-han-oshima-mos-200.html', 'may-han-oshima-mos-200.jpg', 'Máy hàn OSHIMA MOS 200 đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 18 tháng.', 'máy hàn oshima mos 200,may han oshima mos 200', 2600000, 2700000, '<h2>M&aacute;y h&agrave;n OSHIMA MOS 200 đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</h2>\r\n\r\n<table border="1" cellpadding="5" cellspacing="0" style="margin: auto; border-collapse: collapse; width: 60%;">\r\n	<tbody>\r\n		<tr>\r\n			<td bgcolor="#ffff33" style="text-align: center;"><strong>MODEL</strong></td>\r\n			<td bgcolor="#ffff33" style="text-align: center;"><strong>OSHIMA MOS 200</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Điện &aacute;p v&agrave;o (V)</td>\r\n			<td style="text-align: center;">1 pha - 220</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Điện &aacute;p hản (V)</td>\r\n			<td style="text-align: center;">1 pha - 65</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Mức d&ograve;ng h&agrave;n(A)</td>\r\n			<td style="text-align: center;">25-200</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Hiệu suất (%)</td>\r\n			<td style="text-align: center;">85%</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">C&ocirc;ng suất đầu v&agrave;o</td>\r\n			<td style="text-align: center;">7.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Lớp c&aacute;ch điện</td>\r\n			<td style="text-align: center;">F</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">Trọng lượng (kg)</td>\r\n			<td style="text-align: center;">5.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;">K&iacute;ch thước (cm)</td>\r\n			<td style="text-align: center;">39 x 21 x 27</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align: center;">&nbsp;</p>\r\n', '<p><span style="line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa bao gồm thuế 10% VAT.</span></p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (TPHCM ).</p>\r\n\r\n<p><span style="line-height: 1.6em;">C&oacute; quạt l&agrave;m m&aacute;t.</span></p>\r\n\r\n<p>C&oacute; rơ le ngắt tự động khi nhiệt độ tăng qu&aacute; cao, bảo vệ bo mạch.</p>\r\n\r\n<p>Que h&agrave;n th&iacute;ch hợp: 2mm; 2,5mm; 2,8mm; 3mm; 3,2mm, 4,0mm&nbsp;(H&', 1, ',6,13,5,', 'vi', 1, '2014-07-26 10:11:00', '2014-07-26 10:13:09', '2015-05-25 22:22:03', 'admin', 'luandon', 0),
(5, 'Máy hàn OSHIMA MOS S-250', 'may-han-oshima-mos-s-250', 'OSHIMAS250', 'may-han/may-han-oshima-mos-s-250.html', 'may-han-oshima-mos-200.jpg', 'Máy hàn OSHIMA MOS S-250 đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 18 tháng', 'máy hàn oshima mos s 250,may han oshima', 3500000, 3600000, '<h2>M&aacute;y h&agrave;n OSHIMA MOS S-250&nbsp;đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</h2>\r\n\r\n<table border="1" cellpadding="5" cellspacing="0" style="width: 60%; border-collapse: collapse; margin: auto;">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align: center; background-color: rgb(255, 255, 0);"><span style="font-size: 12px;">MODEL</span></td>\r\n			<td style="text-align: center; background-color: rgb(255, 255, 0);"><span style="font-size: 12px;">OSHIMA S-MOS 250</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">Điện &aacute;p v&agrave;o (V)</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">220</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">D&ograve;ng điện v&agrave;o định mức (A)</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">29,6</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">Điện &aacute;p hản (V)</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">65</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">Mức d&ograve;ng h&agrave;n(A)</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">20-250</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">Hiệu suất (%)</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">85%</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">C&ocirc;ng suất đầu v&agrave;o (KVA)</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">9.6</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">Lớp c&aacute;ch điện</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">B</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">Đường k&iacute;nh que h&agrave;n (mm)</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">2,2 - 4,0</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">Lớp bảo vệ</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">IP21</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">Bi&ecirc;n độ d&ograve;ng điện (A)</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">0-100</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">Trọng lượng (kg)</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">6.5</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">K&iacute;ch thước (cm)</span></td>\r\n			<td style="text-align: center;"><span style="font-size: 12px;">37,6 x 15,5 x 28,5</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style="line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa bao gồm thuế 10% VAT.</span></p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (TPHCM ).</p>\r\n\r\n<p><span style="line-height: 1.6em;">C&oacute; quạt l&agrave;m m&aacute;t.</span></p>\r\n\r\n<p>C&oacute; rơ le ngắt tự động khi nhiệt độ tăng qu&aacute; cao, bảo vệ bo mạch.</p>\r\n\r\n<p>M&aacute;y vẫn h&agrave;n được ở những nơi c&oacute; nguồn điện chập chờn, kh&', 0, ',6,13,5,', 'vi', 1, '2014-07-26 10:13:00', '2014-07-26 10:14:57', '2015-05-25 22:20:53', 'admin', 'luandon', 0),
(7, 'Máy hàn OSHIMA MOS S-200', 'may-han-oshima-mos-s-200', 'OSHIMAS200', 'may-han/may-han-oshima-mos-s-200.html', 'may-han-oshima-mos-200.jpg', 'Máy hàn OSHIMA MOS S-200 đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 18 tháng.', 'máy hàn oshima mos s 200,may han oshima mos s 200', 3200000, 3400000, '<h2>M&aacute;y h&agrave;n OSHIMA MOS S-200 đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</h2>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa bao gồm thuế 10% VAT.</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (TPHCM ).</p>\r\n\r\n<p>C&oacute; quạt l&agrave;m m&aacute;t.</p>\r\n\r\n<p>C&oacute; rơ le ngắt tự động khi nhiệt độ tăng qu&aacute; cao, bảo vệ bo mạch.</p>\r\n\r\n<p>Que h&agrave;n th&iacute;ch hợp: 2mm; 2,5mm; 2,8mm; 3mm; 3,2mm, 4,0mm&nbsp;(H&agrave;n que k&eacute;o li&ecirc;n tụ', 0, ',6,13,5,', 'vi', 1, '2014-10-05 14:02:00', '2014-10-05 14:04:32', '2015-05-25 22:21:36', 'admin', 'luandon', 0),
(8, 'Palang xích KCT 2 tấn', 'palang-xich-kct-2-tan', 'KCT2T', 'palang-xich/palang-xich-kct-2-tan.html', 'palang-xich-kct-2-tan.jpg', 'Palang xích KCT 2 tấn đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 12 tháng.', 'palang xích kct 2 tấn,palang xich kct 2 tan', 1400000, 0, '<h2>Palang x&iacute;ch KCT 2 tấn đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</h2>\r\n', '<p>Gi&aacute; tr&ecirc;n chưa&nbsp;bao gồm thuế 10%&nbsp;VAT.</p>\r\n\r\n<p>Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</p>\r\n\r\n<p>Tải trọng n&acirc;ng h&agrave;ng: 2 tấn - 2000 kg.</p>\r\n\r\n<p>Sức tải kiểm định: 2500 kg - 2,5 tấn.</p>\r\n\r\n<p>Đường k&iacute;nh x&iacute;ch tải G80: 8mm.<br />\r\n&nbsp;</p>\r\n', 0, ',6,13,21,', 'vi', 1, '2014-10-05 14:05:00', '2014-10-05 14:10:42', '2015-05-25 22:23:52', 'admin', 'luandon', 0),
(9, 'Palang xích KCT 3 tấn', 'palang-xich-kct-3-tan', 'KCT3T', 'palang-xich/palang-xich-kct-3-tan.html', 'palang-xich-kct-2-tan.jpg', 'Palang xích KCT 3 tấn đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 12 tháng.', 'palang xích kct 3 tấn,palang xich kct', 1700000, 0, '<h2>Palang x&iacute;ch KCT 3 tấn đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</h2>\r\n', '<p>Gi&aacute; tr&ecirc;n chưa&nbsp;bao gồm thuế 10%&nbsp;VAT.</p>\r\n\r\n<p>Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</p>\r\n\r\n<p><span style="line-height: 1.6em;"><span style="line-height: 1.6em;">Tải trọng n&acirc;ng h&agrave;ng: 3 tấn - 3000 kg.</span></span></p>\r\n\r\n<p><span style="line-height: 1.6em;">Sức tải kiểm định: 3750 kg - 3,75 tấn.</span></p>\r\n\r\n<p>Đường k&iacute;nh x&iacute;ch tải G80: 8mm.</p>\r\n', 1, ',6,13,21,', 'vi', 1, '2014-10-05 14:05:00', '2014-10-05 14:34:21', '2015-05-25 22:24:22', 'admin', 'luandon', 0),
(10, 'Máy cắt cỏ OSHIMA CX 330 (cần Inox) ', 'may-cat-co-oshima-cx-330-can-inox', 'OSHIMA330', 'may-cat-co/may-cat-co-oshima-cx-330-can-inox.html', 'may-cat-co-oshima-cx-330-can-inox.jpg', 'Máy cắt cỏ OSHIMA CX 330 (cần Inox) đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 12 tháng.', 'máy cắt cỏ oshima cx 330 cần inox,may cat co oshima cx 330 can inox', 1750000, 0, '<h2>M&aacute;y cắt cỏ OSHIMA CX 330 (Cam X&aacute;m, cần Inox) sản xuất theo c&ocirc;ng nghệ nhật bản,&nbsp;đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</h2>\r\n\r\n<table border=&quot;1&quot; cellpadding=&quot;5&quot; cellspacing=&quot;0&quot; style=&quot;border-collapse: collapse; margin: auto; width: 80%;&quot;>\r\n	<colgroup>\r\n		<col />\r\n		<col />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr>\r\n			<td bgcolor=&quot;#ffff33&quot;><strong>Model</strong></td>\r\n			<td bgcolor=&quot;#ffff33&quot;><strong>CX 330</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y</td>\r\n			<td>Động cơ hai th&igrave;, l&agrave;m m&aacute;t bằng kh&iacute;, xi lanh đơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Năng suất m&aacute;y</td>\r\n			<td>0.9kw/6500 v&ograve;ng/ph&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung t&iacute;ch (cc)</td>\r\n			<td>32.6cc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&igrave;nh xăng con</td>\r\n			<td>M&agrave;ng lọc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</td>\r\n			<td>25 : 01</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tốc độ kh&ocirc;ng tải</td>\r\n			<td>2800-3200 V&ograve;ng/Ph&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung t&iacute;ch b&igrave;nh xăng nhựa (L)</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung tich nhớt (L)</td>\r\n			<td>0.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh lưỡi cắt</td>\r\n			<td>28mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khối lượng tịnh</td>\r\n			<td>7.0 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H&igrave;nh thức sử dụng</td>\r\n			<td>Mang b&ecirc;n vai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ thống khởi động</td>\r\n			<td>Giật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lưỡi cắt</td>\r\n			<td>2 Lưỡi&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=&quot;line-height: 1.6em;&quot;>Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</span></p>\r\n', 1, ',6,14,22,', 'vi', 1, '2014-10-05 14:37:00', '2014-10-05 14:44:05', '2015-10-05 11:52:49', 'admin', 'luandon', 0),
(11, 'Máy cắt cỏ OSHIMA CX 260 (cần Inox) ', 'may-cat-co-oshima-cx-260-can-inox', 'OSHIMA260', 'may-cat-co/may-cat-co-oshima-cx-260-can-inox.html', 'may-cat-co-oshima-cx-330-can-inox.jpg', 'Máy cắt cỏ OSHIMA CX 260 (cần Inox) đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 18 tháng.', 'máy cắt cỏ oshima cx 260 cần inox,may cat co oshima cx 260 can inox', 1600000, 0, '<h2>M&aacute;y cắt cỏ OSHIMA CX 260 (cần Inox) đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</h2>\r\n\r\n<table border=&quot;1&quot; cellpadding=&quot;5&quot; cellspacing=&quot;0&quot; style=&quot;border-collapse: collapse; margin: auto; width: 80%;&quot;>\r\n	<colgroup>\r\n		<col />\r\n		<col />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr>\r\n			<td bgcolor=&quot;#ffff33&quot;><strong>Model</strong></td>\r\n			<td bgcolor=&quot;#ffff33&quot;><strong>CX 260</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y</td>\r\n			<td>Động cơ hai th&igrave;, l&agrave;m m&aacute;t bằng kh&iacute;, xi lanh đơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Năng suất m&aacute;y</td>\r\n			<td>0.75kw/75000 v&ograve;ng/ph&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung t&iacute;ch (cc)</td>\r\n			<td>32.6cc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&igrave;nh xăng con</td>\r\n			<td>M&agrave;ng lọc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</td>\r\n			<td>25 : 01</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tốc độ kh&ocirc;ng tải</td>\r\n			<td>2800-3200 V&ograve;ng/Ph&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung t&iacute;ch b&igrave;nh xăng nhựa (L)</td>\r\n			<td>0.7</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung tich nhớt (L)</td>\r\n			<td>0.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh lưỡi cắt</td>\r\n			<td>28mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khối lượng tịnh</td>\r\n			<td>7 kgs</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H&igrave;nh thức sử dụng</td>\r\n			<td>Mang b&ecirc;n vai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ thống khởi động</td>\r\n			<td>Giật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lưỡi cắt</td>\r\n			<td>2 Lưỡi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=&quot;line-height: 1.6em;&quot;>Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</span></p>\r\n', 1, ',6,14,22,', 'vi', 1, '2014-10-05 14:37:00', '2014-10-05 14:49:11', '2015-10-05 11:48:45', 'admin', 'luandon', 0),
(12, 'Cưa xích OSHIMA 5200 (dùng xăng) - Màu xanh', 'cua-xich-oshima-5200-dung-xang-mau-xanh', 'OSHIMA5200', 'may-cua-xich/cua-xich-oshima-5200-dung-xang-mau-xanh.html', 'cua-xach-oshima-dung-xang-mau-xanh.jpg', 'Cưa xích OSHIMA 5200 (dùng xăng) màu xanh đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 18 tháng.', 'cưa xích oshima 5200 dùng xăng màu xanh,cua xach oshima 5200 dung xang mau xanh', 2400000, 2600000, '<h2>Cưa x&iacute;ch OSHIMA 5200 (d&ugrave;ng xăng) m&agrave;u xanh đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12 th&aacute;ng.</h2>\r\n\r\n<table border="1" cellpadding="5" cellspacing="0" style="width: 60%; margin: auto; border-collapse: collapse;">\r\n	<tbody>\r\n		<tr>\r\n			<td style="background-color: rgb(255, 255, 0);"><strong>MODEL</strong></td>\r\n			<td style="background-color: rgb(255, 255, 0);"><strong>5200</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung t&iacute;ch xi lanh</td>\r\n			<td>54cc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ thống khởi động</td>\r\n			<td>Giật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&ocirc;ng suất</td>\r\n			<td>2.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bạc đạn</td>\r\n			<td>Nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</td>\r\n			<td>25:01</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung t&iacute;ch b&igrave;nh nhi&ecirc;n liệu</td>\r\n			<td>1200ml</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng (kh&ocirc;ng lam x&iacute;ch)</td>\r\n			<td>5kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước th&ugrave;ng (mm)</td>\r\n			<td>410*270*300</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;"><span style="line-height: 20.8px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</span></p>\r\n', 1, ',6,14,23,', 'vi', 1, '2014-10-05 14:58:00', '2014-10-05 15:02:49', '2015-09-16 17:38:15', 'admin', 'luandon', 0),
(13, 'Cưa xích KCT 5800 (dùng xăng)', 'cua-xich-kct-5800-dung-xang', 'KCT5800', 'may-cua-xich/cua-xich-kct-5800-dung-xang.html', 'cua-xich-kct-5800-dung-xang.jpg', 'Cưa xích KCT 5800 đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 18 tháng.', 'cưa xích kct 5800 dùng xăng,cua xich kct 5800 dung xang', 2000000, 0, '<h2>Cưa x&iacute;ch KCT 5800 đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</h2>\r\n\r\n<table border="1" cellpadding="5" cellspacing="0" style="width: 60%; margin: auto; border-collapse: collapse;">\r\n	<tbody>\r\n		<tr>\r\n			<td bgcolor="#ffff33"><strong>MODEL</strong></td>\r\n			<td bgcolor="#ffff33"><strong>KCT 5800</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung t&iacute;ch xi lanh</td>\r\n			<td>58cc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ thống khởi động</td>\r\n			<td>Giật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&ocirc;ng suất</td>\r\n			<td>2.2kw</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bạc đạn</td>\r\n			<td>Nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</td>\r\n			<td>25:01</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung t&iacute;ch b&igrave;nh nhi&ecirc;n liệu</td>\r\n			<td>1200ml</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng (kh&ocirc;ng lam x&iacute;ch)</td>\r\n			<td>5kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước th&ugrave;ng (mm)</td>\r\n			<td>510*290*295</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Gi&aacute; tr&ecirc;n đ&atilde; bao gồm VAT.</p>\r\n\r\n<p>Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</p>\r\n', 1, ',6,14,23,', 'vi', 0, '2014-10-05 15:07:00', '2014-10-05 15:11:33', '2015-04-15 09:14:15', 'admin', 'luandon', 0),
(14, 'Máy Cưa Xích YAMATA 5280', 'may-cua-xich-yamata-5280', 'YAMATA5280', 'may-cua-xich/may-cua-xich-yamata-5280.html', 'may-cua-xich-yamata-5280.jpg', 'Máy Cưa Xích YAMATA CS5280\r\n1. Bình xăng chất lượng cao giúp máy chạy ổn định\r\n2. Bạc đạn hiệu NSK của Nhật, piston, xylanh, tay dênh đều được đúc từ hợp kim tinh chất nên có độ bền cao\r\n3. Lớp vỏ làm từ nhựa Dupon nguyên chất nên giữ được su deo dai và màu sáng bóng qua thời gian dài', 'máy cưa xích yamata 5280,may cua xich yamata 5280', 2700000, 3000000, '<p>&nbsp;</p>\r\n\r\n<p>M&aacute;y Cưa X&iacute;ch YAMATA CS5280</p>\r\n\r\n<ul>\r\n	<li>B&igrave;nh xăng chất lượng cao gi&uacute;p m&aacute;y chạy ổn định</li>\r\n	<li>Bạc đạn hiệu NSK của Nhật, piston, xylanh, tay d&ecirc;nh đều được đ&uacute;c từ hợp kim tinh chất n&ecirc;n c&oacute; độ bền cao</li>\r\n	<li>Lớp vỏ l&agrave;m từ nhựa Dupon nguy&ecirc;n chất n&ecirc;n giữ được su deo dai v&agrave; m&agrave;u s&aacute;ng b&oacute;ng qua thời gian d&agrave;i</li>\r\n</ul>\r\n\r\n<p>Cưa X&iacute;ch YAMATA CS 5280 được nhập khẩu nguy&ecirc;n bộ. Thời gian bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng.&nbsp;</p>\r\n\r\n<table align=&quot;center&quot; border=&quot;5&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;font-size: 13px; margin: 0px; padding: 0px; border: 0px; border-collapse: collapse; border-spacing: 0px; empty-cells: show; width: 389pt; font-family: Arial, &#39;Droid Sans&#39;, helvetica, sans-serif; line-height: 20.1499996185303px;&quot;>\r\n	<colgroup style=&quot;margin: 0px; padding: 0px;&quot;>\r\n		<col style=&quot;margin: 0px; padding: 0px;&quot; width=&quot;259&quot; />\r\n		<col style=&quot;margin: 0px; padding: 0px;&quot; width=&quot;260&quot; />\r\n	</colgroup>\r\n	<tbody style=&quot;margin: 0px; padding: 0px;&quot;>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td bgcolor=&quot;#ffff33&quot; height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px;&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>MODEL</font></span></span></td>\r\n			<td bgcolor=&quot;#ffff33&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px;&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>YAMATA CS5288</font></span></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Dung t&iacute;ch xi lanh</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>54cc</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Hệ thống khởi động</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Giật</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>C&ocirc;ng suất&nbsp;</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>2.5kw, 8500v&ograve;ng/ph&uacute;t</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Bạc đạn</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Nhật</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>25:01</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Dung t&iacute;ch b&igrave;nh nhi&ecirc;n liệu</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>550ml</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;24&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Trọng lượng (kh&ocirc;ng lam x&iacute;ch)</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>5kg</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;24&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>K&iacute;ch thước th&ugrave;ng (mm)</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>510*270*290</font></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;><span style=&quot;line-height: 20.7999992370605px;&quot;>Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</span></p>\r\n', 1, ',6,14,23,', 'vi', 1, '2014-10-13 08:38:00', '2014-10-13 09:10:48', '2015-09-22 11:25:53', 'luandon', 'luandon', 0),
(15, 'Binh xit Oshima ', '', 'binhOsg', '', 'binhxit_oshima_4 thi.png', 'Giao Hàng Miễn Phí Trong Nội Thành', 'binh xit oshima gx35,binh xit oshima gx35', 3500000, 0, '', '', 1, ',6,14,24,', 'vi', 1, '2014-10-17 11:12:00', '2014-10-17 11:43:49', '2015-09-25 10:26:58', 'luandon', 'luandon', 0),
(16, 'Cưa xích OSHIMA CMI (dùng xăng) - Màu xanh', 'cua-xich-oshima-cmi-dung-xang-mau-xanh', 'CuaXichCMI', 'may-cua-xich/cua-xich-oshima-cmi-dung-xang-mau-xanh.html', 'Cua-Xich-CMI.gif', 'Cưa dùng cho việc tỉa cành cây, cấu tạo bình xăng con độc đáo giúp máy hoạt động khi cưa ở vị trí dốc đứng.\r\n\r\nCưa sử dụng lam và xích Oregon chất lượng cao nên giúp tăng hiệu quả khi tỉa, cắt cành, cưa gỗ...\r\n\r\nBình xăng con được sản xuất theo công nghệ Nhật Bản.', 'cưa xích oshima cmi dùng xăng màu xanh,cua xich oshima cmi dung xang mau xanh', 2500000, 0, '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Cưa d&ugrave;ng cho việc tỉa c&agrave;nh c&acirc;y, cấu tạo b&igrave;nh xăng con độc đ&aacute;o gi&uacute;p m&aacute;y hoạt động khi cưa ở vị tr&iacute; dốc đứng.</li>\r\n	<li>Cưa sử dụng lam v&agrave; x&iacute;ch Oregon chất lượng cao n&ecirc;n gi&uacute;p tăng hiệu quả khi tỉa, cắt c&agrave;nh, cưa gỗ...</li>\r\n	<li>B&igrave;nh xăng con được sản xuất theo c&ocirc;ng nghệ Nhật Bản.</li>\r\n</ul>\r\n\r\n<p><b>C</b>ưa X&iacute;ch CMI l&agrave; sản phẩm được nhập khẩu nguy&ecirc;n bộ&nbsp;. Thời&nbsp;gian bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng.</p>\r\n\r\n<table align="center" border="5" cellpadding="0" cellspacing="0" style="margin: 0px; padding: 0px; border: 0px; border-collapse: collapse; border-spacing: 0px; empty-cells: show; font-size: 13px; width: 413pt; font-family: Arial, ''Droid Sans'', helvetica, sans-serif; line-height: 20.1499996185303px;">\r\n	<colgroup style="margin: 0px; padding: 0px;">\r\n		<col style="margin: 0px; padding: 0px;" width="288" />\r\n		<col style="margin: 0px; padding: 0px;" width="263" />\r\n	</colgroup>\r\n	<tbody style="margin: 0px; padding: 0px;">\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td bgcolor="#ffff33" height="24" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="288"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">MODEL</font></span></td>\r\n			<td bgcolor="#ffff33" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="263"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">Oshima CMI</font></span></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="24" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="288"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">Dung t&iacute;ch xi lanh</font></span></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="263"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">40cc</font></span></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="24" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="288"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">Hệ thống khởi động</font></span></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="263"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">Giật</font></span></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="24" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="288"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">C&ocirc;ng suất&nbsp;</font></span></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="263"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">1.7</font></span></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="24" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="288"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">Bạc đạn</font></span></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="263"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">Nhập khẩu, chất lượng tốt, bền</font></span></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="24" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="288"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</font></span></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="263"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">25:01</font></span></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="24" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="288"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">Dung t&iacute;ch b&igrave;nh nhi&ecirc;n liệu</font></span></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="263"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">410ml</font></span></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="24" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="288"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">Trọng lượng (kh&ocirc;ng lam x&iacute;ch)</font></span></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="263"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">4.3kg</font></span></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="24" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="288"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">K&iacute;ch thước th&ugrave;ng (mm)</font></span></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="263"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;"><font face="sans-serif, Arial, Verdana, Trebuchet MS">430*250*290</font></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><font face="Arial, Droid Sans, helvetica, sans-serif"><span style="line-height: 20.1499996185303px;">Gi</span></font>&aacute; Tr&ecirc;n&nbsp;Đ&atilde; Bao Gồm Thuế VAT</p>\r\n\r\n<p>Miễn Ph&iacute; Vận Chuyển Trong Nội Th&agrave;nh</p>\r\n', 0, ',6,14,23,', 'vi', 1, '2014-10-19 17:26:00', '2014-10-19 17:39:38', '2014-10-19 17:55:54', 'luandon', 'luandon', 0),
(17, 'Palang xích KCT 1 tấn', 'palang-xich-kct-1-tan', 'KCT1T', 'palang-xich/palang-xich-kct-1-tan.html', 'palang kct1T.jpg', 'Palang xích KCT 1tấn đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 12 tháng.', 'palang xích kct 1 tấn,palang xich kct 1 tan', 1200000, 0, '<p>Palang x&iacute;ch KCT 1&nbsp;tấn đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</p>\r\n\r\n<ul>\r\n	<li>N&acirc;ng, k&eacute;o c&aacute;c vật nặng trong xưởng cơ kh&iacute;, gara, tiệm sửa xe</li>\r\n	<li>Trục vớt c&aacute;c vật năng nằm dưới đất (gắn v&agrave;o gi&aacute; đỡ)</li>\r\n	<li>N&acirc;ng, đỡ mũi ph&agrave; (c&aacute;c loại ph&agrave; nhỏ)</li>\r\n</ul>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa&nbsp;bao gồm &nbsp;thuế 10%&nbsp;VAT.</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Tải trọng n&acirc;ng h&agrave;ng: 1&nbsp;tấn - 1000 kg.</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Đường k&iacute;nh x&iacute;ch tải G80: 6mm.</p>\r\n', 1, ',13,21,', 'vi', 1, '2014-11-16 08:36:00', '2014-11-16 08:54:17', '2015-06-15 18:33:40', 'luandon', 'admin', 0),
(32, 'Máy xịt rửa dân dụng Oshima 1100N', 'may-xit-rua-dan-dung-oshima-1100n', '1100N', 'may-xit-rua-xe/may-xit-rua-dan-dung-oshima-1100n.html', 'May xịt rửa dan dụng Oshima 1100N.png', 'CÔNG TY TNHH TM DV BẢO Ý chuyên phân phối máy rửa xe dân dụng ,công nghiệp.', 'máy xịt rửa dân dụng oshima 1100n,may xit rua dan dung oshima 1100n', 2800000, 0, '<p>M&aacute;y Xịt Rửa D&acirc;n Dụng Oshima 1100N</p>\r\n\r\n<p style="margin-left: 40px;">- M&ocirc; tơ d&acirc;y đồng, c&aacute;m ứng từ bển bỉ v&agrave; &ecirc;m</p>\r\n\r\n<p style="margin-left: 40px;">- Nhỏ gọn ,đẹp</p>\r\n\r\n<p style="margin-left: 40px;">- &Aacute;p lực phun mạnh dễ d&agrave;ng sử dụng</p>\r\n\r\n<p style="margin-left: 40px;">- C&ocirc;ng suất hoạt động&nbsp; mạnh trong thời gian d&agrave;i</p>\r\n\r\n<p style="margin-left: 40px;">- Bộ bơm thau hoạt động&nbsp; mạnh mẽ v&agrave; bền bỉ</p>\r\n\r\n<p style="margin-left: 40px;">- Sản phẩm nhập khẩu nguy&ecirc;n bộ.</p>\r\n\r\n<p>Th&ocirc;ng số kỹ thuật:</p>\r\n\r\n<table border="1" style="margin: 0px; padding: 0px; border: 0px; border-collapse: collapse; border-spacing: 0px; empty-cells: show; font-size: 12px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px; background-color: rgb(255, 255, 255);">\r\n	<tbody style="margin: 0px; padding: 0px;">\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center; background-color: rgb(250, 250, 4);"><strong style="margin: 0px; padding: 0px;">Model</strong></td>\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center; background-color: rgb(250, 250, 4);"><strong style="margin: 0px; padding: 0px;">OSHIMA OS-1100N</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">C&ocirc;ng suất</td>\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">1.1 KW</td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">&Aacute;p lực l&agrave;m việc</td>\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">7 mpa</td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">Nguy&ecirc;n liệu</td>\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">8 l&iacute;t/ph&uacute;t</td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">Chất lượng</td>\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">2800 v&ograve;ng/ph&uacute;t</td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">&Aacute;p lực đầu ra tối đa</td>\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">60 bar</td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">Đường k&iacute;ch piston</td>\r\n			<td style="margin: 0px; padding: 0px; vertical-align: top; text-align: center;">12 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Gi&aacute; tr&ecirc;n chưa bao gồm thuế 10%VAT.</p>\r\n\r\n<p>Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh.(TP.HCM)</p>\r\n', 0, ',6,14,31,', 'vi', 1, '2015-06-16 09:57:00', '2015-06-16 10:18:58', NULL, 'luandon', NULL, 0);
INSERT INTO `web_product` (`id`, `name`, `name_alias`, `masp`, `url`, `url_hinh`, `metaDescription`, `metaKeyword`, `giaban`, `giagoc`, `content`, `info_more`, `other`, `menu_id`, `lang`, `status`, `ngay_dang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(18, 'Máy cắt cỏ OSHIMA CX 328 (cần Inox) ', 'may-cat-co-oshima-cx-328-can-inox', 'OSHIMA328', 'may-cat-co/may-cat-co-oshima-cx-328-can-inox.html', 'oshima_328.jpg', 'Máy cắt cỏ OSHIMA CX 328 (cần Inox) đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 12 tháng.', 'máy cắt cỏ oshima cx 328 cần inox,may cat co oshima cx 328 can inox', 1700000, 0, '<h2>M&aacute;y cắt cỏ OSHIMA CX 328&nbsp;(cần Inox) Sản xuất theo c&ocirc;ng nghệ nhật bản,&nbsp;đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</h2>\r\n\r\n<table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;>\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=&quot;2&quot; style=&quot;width:638px;&quot;>\r\n			<p align=&quot;center&quot;><strong>TH&Ocirc;NG SỐ KỸ THUẬT M&Aacute;Y CẮT CỎ OSHIMA 328</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Model</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>328</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Loại m&aacute;y</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Động cơ hai th&igrave;, l&agrave;m m&aacute;t bằng kh&iacute;, xi lanh đơn</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Năng suất m&aacute;y</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>0.81kw/6000 v&ograve;ng/ph&uacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Dung t&iacute;ch (cc)</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>32.6cc</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>B&igrave;nh xăng con</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>M&agrave;ng lọc</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>25 : 01</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Tốc độ kh&ocirc;ng tải</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>2800-3200 V&ograve;ng/Ph&uacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Dung t&iacute;ch b&igrave;nh xăng nhựa (L)</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>1.2</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Dung tich nhớt (L)</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>0.1</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Đường k&iacute;nh lưỡi cắt</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>28mm</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>H&igrave;nh thức sử dụng</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Mang b&ecirc;n vai</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Hệ thống khởi động</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Giật</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>Lưỡi cắt</strong></p>\r\n			</td>\r\n			<td style=&quot;width:319px;&quot;>\r\n			<p style=&quot;text-align: center;&quot;><strong>2 Lưỡi</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;><span style=&quot;line-height: 20.7999992370605px;&quot;>Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</span></p>\r\n', 0, ',6,14,22,', 'vi', 1, '2014-11-16 08:58:00', '2014-11-16 09:32:19', '2015-10-05 11:47:53', 'luandon', 'luandon', 0),
(19, 'Máy Cưa Xích KAVI G750', 'may-cua-xich-kavi-g750', 'KAVI G750', 'may-cua-xich/may-cua-xich-kavi-g750.html', 'KAVI G750.jpg', 'Máy Cưa Xích KAVI G750\r\n1. Bình xăng chất lượng cao giúp máy chạy ổn định\r\n', '', 2700000, 3000000, '<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;>M&aacute;y Cưa X&iacute;ch KAVI G 750</p>\r\n\r\n<ul style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;>\r\n	<li>Lam x&iacute;ch chất lượng tốt.</li>\r\n	<li>Bộ chế h&ograve;a kh&iacute;:&nbsp;walbro.</li>\r\n	<li>B&igrave;nh xăng chất lượng cao gi&uacute;p m&aacute;y chạy ổn định</li>\r\n</ul>\r\n\r\n<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;>Cưa X&iacute;ch KAVI G750&nbsp;được nhập khẩu nguy&ecirc;n bộ. Thời gian bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng.&nbsp;</p>\r\n\r\n<table align=&quot;center&quot; border=&quot;5&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;font-size: 13px; margin: 0px; padding: 0px; border: 0px; border-collapse: collapse; border-spacing: 0px; empty-cells: show; width: 389pt; font-family: Arial, &#39;Droid Sans&#39;, helvetica, sans-serif; line-height: 20.1499996185303px;&quot;>\r\n	<colgroup style=&quot;margin: 0px; padding: 0px;&quot;>\r\n		<col style=&quot;margin: 0px; padding: 0px;&quot; width=&quot;259&quot; />\r\n		<col style=&quot;margin: 0px; padding: 0px;&quot; width=&quot;260&quot; />\r\n	</colgroup>\r\n	<tbody style=&quot;margin: 0px; padding: 0px;&quot;>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td bgcolor=&quot;#ffff33&quot; height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px;&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>MODEL</font></span></span></td>\r\n			<td bgcolor=&quot;#ffff33&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;><span style=&quot;font-size: 12px; line-height: 20.7999992370605px;&quot;>KAVI G750</span></font></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Dung t&iacute;ch xi lanh</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>52cc</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Hệ thống khởi động</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Giật</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>C&ocirc;ng suất&nbsp;</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>2.2kw, 7500v&ograve;ng/ph&uacute;t</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Bộ h&ograve;a kh&iacute;</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Nhật</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>25:01</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;40&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Dung t&iacute;ch b&igrave;nh nhi&ecirc;n liệu</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>550ml</font></span></td>\r\n		</tr>\r\n		<tr style=&quot;margin: 0px; padding: 0px;&quot;>\r\n			<td height=&quot;24&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;259&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>Trọng lượng (kh&ocirc;ng lam x&iacute;ch)</font></span></td>\r\n			<td style=&quot;margin: 0px; padding: 0px 0px 0px 5px; text-align: center;&quot; width=&quot;260&quot;><span style=&quot;margin: 0px; padding: 0px; font-size: 12px; line-height: 20.7999992370605px;&quot;><font face=&quot;sans-serif, Arial, Verdana, Trebuchet MS&quot;>5,5kg</font></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;><span style=&quot;line-height: 20.7999992370605px;&quot;>Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</span></p>\r\n', 0, ',6,14,23,', 'vi', 1, '2014-11-18 10:56:00', '2014-11-18 11:30:47', '2015-09-22 11:26:59', 'luandon', 'luandon', 0),
(20, 'Máy Cưa Xích TIGER X1', 'may-cua-xich-tiger-x1', 'TIGER X1', 'may-cua-xich/may-cua-xich-tiger-x1.html', 'P181114_12_21.jpg', 'Cưa xích TIGER X1 đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 06 tháng.', 'máy cưa xích tiger x1,may cua xich tiger x1', 1800000, 0, '<h2>Cưa x&iacute;ch TIGER X1&nbsp;đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 06&nbsp;th&aacute;ng.</h2>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;"><span style="line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa&nbsp;bao gồm VAT.</span></p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</p>\r\n', 0, ',6,23,', 'vi', 1, '2014-11-18 11:54:00', '2014-11-18 12:20:10', '2015-05-22 16:07:12', 'luandon', 'luandon', 0),
(21, 'Máy Cưa Xích TIGER N', 'may-cua-xich-tiger-n', 'TIGER N', 'may-cua-xich/may-cua-xich-tiger-n.html', 'TIGER N.jpg', 'Cưa xích TIGER N đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 06 tháng.', 'máy cưa xích tiger n,may cua xich tiger n', 1900000, 0, '<h2>Cưa x&iacute;ch TIGER N&nbsp;đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 06&nbsp;th&aacute;ng.</h2>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n đ&atilde; bao gồm VAT.</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</p>\r\n', 0, ',6,14,23,', 'vi', 0, '2014-11-18 12:21:00', '2014-11-18 12:23:56', '2015-04-15 09:14:42', 'luandon', 'luandon', 0),
(22, 'Máy Cưa Xích TIGER R1', 'may-cua-xich-tiger-r1', 'TIGER R1', 'may-cua-xich/may-cua-xich-tiger-r1.html', 'TIGER R1.jpg', 'Cưa xích TIGER R1 đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 06 tháng.', 'máy cưa xích tiger r1,may cua xich tiger r1', 2000000, 0, '<p>Cưa x&iacute;ch TIGER R1&nbsp;đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 06&nbsp;th&aacute;ng.</p>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;"><span style="line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa bao gồm VAT.</span></p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</p>\r\n', 0, ',6,14,23,', 'vi', 1, '2014-11-18 12:24:00', '2014-11-18 12:27:15', '2015-05-22 16:06:04', 'luandon', 'luandon', 0),
(23, 'Máy cắt cỏ Tiger B330', 'may-cat-co-tiger-b330', 'Tiger B330', 'may-cat-co/may-cat-co-tiger-b330.html', 'Tiger B330.jpg', 'Máy cắt cỏ tiger B330  đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 12 tháng.', '', 1500000, 1900000, '<p>M&aacute;y cắt cỏ Tiger B330 &nbsp;đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ..</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="1" cellpadding="5" cellspacing="0" style="font-size: 13px; line-height: 20.7999992370605px; border-collapse: collapse; margin: auto; width: 655px;">\r\n	<colgroup>\r\n		<col />\r\n		<col />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr>\r\n			<td bgcolor="#ffff33"><strong>Model</strong></td>\r\n			<td bgcolor="#ffff33"><strong>B330</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y</td>\r\n			<td>Động cơ hai th&igrave;, l&agrave;m m&aacute;t bằng kh&iacute;, xi lanh đơn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Năng suất m&aacute;y</td>\r\n			<td>0.9kw/6500 v&ograve;ng/ph&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung t&iacute;ch (cc)</td>\r\n			<td>32.6cc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&igrave;nh xăng con</td>\r\n			<td>M&agrave;ng lọc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</td>\r\n			<td>25 : 01</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tốc độ kh&ocirc;ng tải</td>\r\n			<td>2800-3200 V&ograve;ng/Ph&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung t&iacute;ch b&igrave;nh xăng nhựa (L)</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung tich nhớt (L)</td>\r\n			<td>0.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh lưỡi cắt</td>\r\n			<td>28mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khối lượng tịnh</td>\r\n			<td>7.0 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H&igrave;nh thức sử dụng</td>\r\n			<td>Mang b&ecirc;n vai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ thống khởi động</td>\r\n			<td>Giật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lưỡi cắt</td>\r\n			<td>2 Lưỡi&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 0, ',6,14,22,', 'vi', 1, '2014-12-01 11:12:00', '2014-12-01 11:18:56', '2015-05-30 15:31:35', 'luandon', 'luandon', 0),
(24, 'Máy cắt cỏ Tiger B411', 'may-cat-co-tiger-b411', 'Tiger B411', 'may-cat-co/may-cat-co-tiger-b411.html', 'Tiger B411.jpg', 'Máy cắt cỏ tiger B411  đảm bảo mới 100%, nhập khẩu nguyên bộ, thời gian bảo hành 12 tháng.', 'máy cắt cỏ tiger b411,may cat co tiger b411', 1600000, 2000000, '<p>M&aacute;y cắt cỏ &nbsp;Tiger B330 &nbsp;đảm bảo mới 100%, nhập khẩu nguy&ecirc;n bộ.</p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<table align="center" border="5" cellpadding="0" cellspacing="0" style="margin: 0px; padding: 0px; border: 0px; border-collapse: collapse; border-spacing: 0px; empty-cells: show; font-size: 13px; width: 429pt; font-family: Arial, ''Droid Sans'', helvetica, sans-serif; line-height: 20.1499996185303px;">\r\n	<tbody style="margin: 0px; padding: 0px;">\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td bgcolor="#ffff33" height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><span style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px;">Model</strong></span></td>\r\n			<td bgcolor="#ffff33" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><span style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px;">411</strong></span></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">Loại m&aacute;y</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">Động cơ hai th&igrave;, l&agrave;m m&aacute;t bằng kh&iacute;, xi lanh đơn</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">Năng suất m&aacute;y</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">0.81kw/6000 v&ograve;ng/ph&uacute;t</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">Dung t&iacute;ch (cc)</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">32.6cc</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">B&igrave;nh xăng con</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">M&agrave;ng lọc</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">25 : 01</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">Tốc độ kh&ocirc;ng tải</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">2800-3200 V&ograve;ng/Ph&uacute;t</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">Dung t&iacute;ch b&igrave;nh xăng nhựa (L)</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">1.2</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">Dung tich nhớt (L)</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">0.1</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">Đường k&iacute;nh lưỡi cắt</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">28mm</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">Khối lượng tịnh</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">10.5kgs</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">H&igrave;nh thức sử dụng</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">Mang b&ecirc;n vai</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">Hệ thống khởi động</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">Giật</strong></td>\r\n		</tr>\r\n		<tr style="margin: 0px; padding: 0px;">\r\n			<td height="40" style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="168"><strong style="margin: 0px; padding: 0px;">Lưỡi cắt</strong></td>\r\n			<td style="margin: 0px; padding: 0px 0px 0px 5px; text-align: center;" width="404"><strong style="margin: 0px; padding: 0px;">2 Lưỡi</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;">&nbsp;</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">&nbsp;</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">&nbsp;</p>\r\n', 0, ',6,14,22,', 'vi', 1, '2014-12-01 11:32:00', '2014-12-01 11:34:54', '2015-05-30 15:31:59', 'luandon', 'luandon', 0),
(25, 'Pa lăng xích daesan', 'pa-lang-xich-daesan', 'DSN', 'palang-xich/pa-lang-xich-daesan.html', 'palang-xich-keo-tay-daesan-dsn-3-tan.jpg', 'Công ty Bảo Ý chuyên cung cấp thiết bị nâng , pa lăng xích Daesan, giá cực tốt, nhập khẩu từ Hàn Quốc. ', 'pa lăng xích daesan,pa lang xich daesan', 2000000, 0, '<p style="font-size: 13px; line-height: 20.7999992370605px;">Pa lăng x&iacute;ch k&eacute;o tay Daesan, nhập khẩu từ h&agrave;n quốc.</p>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" style="font-size: 13px; line-height: 20.7999992370605px;" width="666">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width: 180px;">\r\n			<p style="text-align: center;">Pa lăng x&iacute;ch k&eacute;o tay</p>\r\n\r\n			<p style="text-align: center;">H&agrave;n Quốc</p>\r\n			</td>\r\n			<td style="width: 144px;">\r\n			<p style="text-align: center;">QUY C&Aacute;CH</p>\r\n			</td>\r\n			<td style="width: 120px;">\r\n			<p style="text-align: center;">M&Atilde; H&Agrave;NG</p>\r\n			</td>\r\n			<td style="width: 102px;">\r\n			<p style="text-align: center;">&nbsp;</p>\r\n\r\n			<p style="text-align: center;">GI&Aacute; TIỀN</p>\r\n\r\n			<p style="text-align: center;">&nbsp;</p>\r\n			</td>\r\n			<td style="width: 120px;">\r\n			<p style="text-align: center;">GHI CH&Uacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="4" style="width: 180px; height: 16px;">\r\n			<p align="center">HIỆU DAESAN</p>\r\n			</td>\r\n			<td style="width: 144px; height: 16px;">\r\n			<p align="center">1.0T x 2.5M</p>\r\n			</td>\r\n			<td style="width: 120px; height: 16px;">\r\n			<p align="center">DSN1</p>\r\n			</td>\r\n			<td style="width: 102px; height: 16px;">\r\n			<p align="right">2.000.000</p>\r\n			</td>\r\n			<td rowspan="4" style="width: 120px; height: 16px;">\r\n			<p>C&oacute; đầy đủ giấy tờ xuất xứ từ H&agrave;n Quốc</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width: 144px; height: 16px;">\r\n			<p align="center">1.5T x 2.5M</p>\r\n			</td>\r\n			<td style="width: 120px; height: 16px;">\r\n			<p align="center">DSN1.5</p>\r\n			</td>\r\n			<td style="width: 102px; height: 16px;">\r\n			<p align="right">2.600.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width: 144px; height: 16px;">\r\n			<p align="center">2.0T x 3M</p>\r\n			</td>\r\n			<td style="width: 120px; height: 16px;">\r\n			<p align="center">DSN2 (New)</p>\r\n			</td>\r\n			<td style="width: 102px; height: 16px;">\r\n			<p align="right">3.000.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width: 144px; height: 16px;">\r\n			<p align="center">3.0T x 3M</p>\r\n			</td>\r\n			<td style="width: 120px; height: 16px;">\r\n			<p align="center">DSN3</p>\r\n			</td>\r\n			<td style="width: 102px; height: 16px;">\r\n			<p align="right">4.000.000</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style="page-break-after: always;"><span style="display: none;">&nbsp;</span></div>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p>Gi&aacute; tr&ecirc;n chưa bao gồm thuế 10% VAT</p>\r\n\r\n<p><span style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (Tp.HCM)</span></p>\r\n', 1, ',6,13,21,', 'vi', 1, '2015-02-26 14:44:00', '2015-02-26 15:11:52', NULL, 'luandon', NULL, 0),
(26, 'Máy nén khí piston D&D', 'may-nen-khi-piston-d-d', 'RVO_17-8', 'may-nen-khi-may-bom-hoi/may-nen-khi-piston-d-d.html', 'RV0_17-8.jpg', 'Máy nén khí piston D&D được sơn tĩnh điện chống ăn mòn kim loại , đảm bảo an toàn tuyệt đối.', '', 6750000, 0, '<p>BẢNG B&Aacute;O GI&Aacute; M&Aacute;Y N&Eacute;N KH&Iacute; PISTON D&amp;D&nbsp;</p>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" width="708">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Model </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">RV0.17/8 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">RV0.25/8 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">RW0.48/7 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">RW0.67/7 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">RW1.0/7 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">RW2.0/7</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;height:20px;">\r\n			<p><span style="font-size: 12px;">Compress degree &nbsp;</span></p>\r\n			</td>\r\n			<td style="width:96px;height:20px;">\r\n			<p><span style="font-size: 12px;">single</span></p>\r\n			</td>\r\n			<td style="width:96px;height:20px;">\r\n			<p><span style="font-size: 12px;">single</span></p>\r\n			</td>\r\n			<td style="width:96px;height:20px;">\r\n			<p><span style="font-size: 12px;">single</span></p>\r\n			</td>\r\n			<td style="width:102px;height:20px;">\r\n			<p><span style="font-size: 12px;">single</span></p>\r\n			</td>\r\n			<td style="width:102px;height:20px;">\r\n			<p><span style="font-size: 12px;">single</span></p>\r\n			</td>\r\n			<td style="width:102px;height:20px;">\r\n			<p><span style="font-size: 12px;">single</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Power(KW/HP) </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">1.5/2 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">2.2/3 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">4/5.5 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">5.5/7.5</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">7.5/10 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">15/20</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Normal volume</span></p>\r\n\r\n			<p><span style="font-size: 12px;">flow(m&sup3; /min)</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">0.17 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">0.25 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">0.48 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">0.67 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">1</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">&nbsp;2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Swept volume(m&sup3; /min) </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">0.2 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">0.32 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">0.55 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">0.7 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">1.4 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">2.4</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Pressure (Mpa) </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">0.8 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">0.8 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">0.7</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">0.7 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">0.7 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">0.7 </span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Compressor</span></p>\r\n\r\n			<p><span style="font-size: 12px;">speed(r/min)</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">1050</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">&nbsp;1050 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">1063</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">&nbsp;566 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">828</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">732</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Packing size (mm)</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">1100*500*800 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">1150*500*900 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">150*720*1100</span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">1750*750*1300</span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">1970*800*1360</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">2000*840*1500</span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Weight (KG) </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">85</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">110</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">200</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">270</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">300</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;445</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Voltage(V) </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">220</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">&nbsp;220 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">380</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">380</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">380</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">380</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Motor speed(r/min) </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">2850</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">2850</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">1450</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">1450</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">1450</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">1450</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Tank(L) </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">60</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">70</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">175</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">250</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">340</span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">420</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:114px;">\r\n			<p><span style="font-size: 12px;">Price(VND) </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">6,750,000</span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">7,250,000 </span></p>\r\n			</td>\r\n			<td style="width:96px;">\r\n			<p><span style="font-size: 12px;">16,400,000 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">20,700,000 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">25,500,000 </span></p>\r\n			</td>\r\n			<td style="width:102px;">\r\n			<p><span style="font-size: 12px;">42,500,000</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Gi&aacute; tr&ecirc;n chưa bao gồm thuế 10% VAT</p>\r\n\r\n<p>Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (TPHCM)</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, ',6,13,4,', 'vi', 1, '2015-03-20 10:25:00', '2015-03-20 10:55:39', NULL, 'luandon', NULL, 0),
(27, 'cưa xích STIHL MS 180', 'cua-xich-stihl-ms-180', 'STIHLMS180', 'may-cua-xich/cua-xich-stihl-ms-180.html', 'Cua Xich STIHL MS 170.png', 'Nếu bạn đang tìm kiếm một máy cưa để làm việc lâu dài ,bạn đã đến đúng nơi .Công ty tnhh tm Dịch Vụ Bảo Ý chuyên phân phối máy cưa xích STIHL Đức.\r\nCưa xích STIHL luôn luôn đi đầu về công nghệ như công nghệ chống rung và bộ chế hòa khí được thiết kế để tự động điều chỉnh tỷ lệ không khí, hệ thống kh', 'cưa xích stihl ms 180,cua xich stihl ms 180', 4400000, 0, '<p>&nbsp;C&ocirc;ng ty tnhh tm Dịch Vụ Bảo &Yacute; chuy&ecirc;n ph&acirc;n phối m&aacute;y cưa x&iacute;ch STIHL .</p>\r\n\r\n<p><b><span style=&quot;font-size: 10pt; line-height: 115%; font-family: Arial, sans-serif;&quot;>M&aacute;y cưa x&iacute;ch chạy xăng Stihl MS 180 ch&iacute;nh h&atilde;ng l&agrave; d&ograve;ng m&aacute;y cưa x&iacute;ch được &nbsp;ph&aacute;t triển bởi c&ocirc;ng nghệ bậc nhất của Đức.</span></b></p>\r\n\r\n<p><strong>Được sở hữu c&ocirc;ng nghệ khởi động bằng điện tử th&ocirc;ng minh, m&aacute;y cưa x&iacute;ch chạy xăng STIHL MS180 l&agrave; d&ograve;ng được thị trường ưa chuộng. D&ograve;ng m&aacute;y cưa x&iacute;ch mini được hầu hết mọi người sử dụng như một dụng cụ đắc lực của nh&agrave; l&agrave;m vườn.</strong></p>\r\n\r\n<p><strong style=&quot;line-height: 1.6em;&quot;>Tay cầm được thiết kế hệ thống chống rung, gi&uacute;p người cưa c&acirc;y sử dụng được m&aacute;y l&acirc;u hơn , tăng hiệu quả cho c&ocirc;ng việc.</strong></p>\r\n\r\n<table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;width:361px;&quot; width=&quot;361&quot;>\r\n	<tbody>\r\n		<tr>\r\n			<td style=&quot;width:199px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>MODEL</strong></p>\r\n			</td>\r\n			<td style=&quot;width:162px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>STIHL MS180</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:199px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>Dung t&iacute;ch n&ograve;ng</strong></p>\r\n			</td>\r\n			<td style=&quot;width:162px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>31,8cc</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:199px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>C&ocirc;ng suất</strong></p>\r\n			</td>\r\n			<td style=&quot;width:162px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>1,5 Kw</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:199px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>Lam</strong></p>\r\n			</td>\r\n			<td style=&quot;width:162px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>18in</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:199px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>Dung t&iacute;ch b&igrave;nh nhi&ecirc;n liệu</strong></p>\r\n			</td>\r\n			<td style=&quot;width:162px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>250ml</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:199px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>Hệ thống khởi động</strong></p>\r\n			</td>\r\n			<td style=&quot;width:162px;height:40px;&quot;>\r\n			<p align=&quot;center&quot;><strong>Giật</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:199px;height:24px;&quot;>\r\n			<p align=&quot;center&quot;><strong>Trọng lượng (kh&ocirc;ng lam x&iacute;ch)</strong></p>\r\n			</td>\r\n			<td style=&quot;width:162px;height:24px;&quot;>\r\n			<p align=&quot;center&quot;><strong>4,2kg</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><span style=&quot;line-height: 1.6em;&quot;>Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh TPHCM</span></p>\r\n\r\n<p>Để biết th&ocirc;ng tin sản phẩm vui l&ograve;ng li&ecirc;n hệ Mr&nbsp;Đ&ocirc;n 0903914782.</p>\r\n', 1, ',6,14,23,', 'vi', 1, '2015-03-25 10:58:00', '2015-03-25 11:08:25', '2015-09-28 18:26:05', 'luandon', 'luandon', 0),
(30, 'Nhớt 2 thì', 'nhot-2-thi', '', 'san-pham-va-dich-vu-khac/nhot-2-thi.html', '', '', 'nhớt 2 thì,nhot 2 thi', 100000, 0, '', '', 1, ',30,', 'vi', 1, '2015-06-15 18:27:00', '2015-06-15 18:29:12', NULL, 'admin', NULL, 0);
INSERT INTO `web_product` (`id`, `name`, `name_alias`, `masp`, `url`, `url_hinh`, `metaDescription`, `metaKeyword`, `giaban`, `giagoc`, `content`, `info_more`, `other`, `menu_id`, `lang`, `status`, `ngay_dang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(28, 'Máy cắt cỏ HonDa BC 35JK', 'may-cat-co-honda-bc-35jk', 'BC 35JK', 'may-cat-co/may-cat-co-honda-bc-35jk.html', 'GREENLAND_BC_35JK.jpg', 'Công ty Bảo Ý chuyên cung cấp máy cắt cỏ HonDa BC 35JK Chính Hãng.', 'máy cắt cỏ honda bc 35jk,may cat co honda bc 35jk', 5300000, 0, '<div style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; line-height: normal; text-align: justify;"><span style="font-weight: bold; font-size: 14px;">M&aacute;y cắt cỏ HonDa BC 35JK L</span><strong>oại 4 th&igrave;</strong>&nbsp;<strong><span style="font-size:14px;">&nbsp;đảm bảo mới 100%, c&oacute; đầy đủ chứng từ&nbsp;nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</span></strong></div>\r\n\r\n<div style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; line-height: normal; text-align: justify;">&nbsp;</div>\r\n\r\n<div style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; line-height: normal; text-align: justify;"><strong>BẢNG TH&Ocirc;NG SỐ KỸ THUẬT</strong></div>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; line-height: normal; text-align: justify; width: 587px; border-collapse: collapse; height: 629px;">\r\n	<tbody style="text-align: left;">\r\n		<tr height="52">\r\n			<td colspan="2" height="52">\r\n			<div style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">KIỂU M&Aacute;Y CẮT CỎ</span></font></div>\r\n			</td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">GREENLAND BC35 JK</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td rowspan="5" style="width: 90px; height: 160px;" valign="middle">\r\n			<div style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">BỘ CẦN</span></font></div>\r\n\r\n			<div style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">CẮT CỎ</span></font></div>\r\n			</td>\r\n			<td width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Loại</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Mang vai,&nbsp; ống cần tự xoay &Oslash;28 mm</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Trục truyền động</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Trục cứng</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Tay cầm&nbsp;</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Kiểu ghi đ&ocirc;ng chữ U</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Lưỡi cắt</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Hai c&aacute;nh</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">D&acirc;y đeo&nbsp;</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">D&acirc;y đơn</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td rowspan="9" style="width: 90px; height: 288px;" valign="middle">\r\n			<div style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">ĐỘNG CƠ&nbsp;</span></font></div>\r\n			</td>\r\n			<td width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Kiểu</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Honda GX 35 TSD</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Loại</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">4 th&igrave;, l&agrave;m m&aacute;t bằng gi&oacute;,1 xilanh, cam treo</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Dung t&iacute;ch xi lanh</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">35.8 cc</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">C&ocirc;ng suất định mức</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">1.3 m&atilde; lực (1.0 KW) / 7000v/p</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Kiểu đ&aacute;nh lửa</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Transistor từ t&iacute;nh (IC)</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Kiểu khởi động</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Bằng tay</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Dung t&iacute;ch b&igrave;nh xăng</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">0.65 l&iacute;t</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Dung t&iacute;ch nhớt</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">0.1 l&iacute;t</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Mức&nbsp;ti&ecirc;u hao nhi&ecirc;n liệu</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">0.48 l&iacute;t/giờ</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td rowspan="4" style="width: 90px; height: 128px;" valign="middle">\r\n			<div style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">TH&Ocirc;NG SỐ LẮP ĐẶT</span></font></div>\r\n			</td>\r\n			<td width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">K&iacute;ch thước phủ b&igrave; (D x R x C)</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">1840 x 615 x 390 mm</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Trọng lượng kh&ocirc;</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">7.8 Kg</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Bộ dụng cụ</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">C&oacute;</span></font></td>\r\n		</tr>\r\n		<tr height="32">\r\n			<td height="32" width="216"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">Tấm chắn an to&agrave;n</span></font></td>\r\n			<td colspan="2" style="text-align: center;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 12px; line-height: 20.7999992370605px;">C&oacute;</span></font><br />\r\n			&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;">Hiện nay tr&ecirc;n thị trường xuất hiện rất nhiều d&ograve;ng m&aacute;y nh&aacute;i&nbsp;mang thương hiệu HonDa BC 35JK c&oacute; xuất xứ kh&ocirc;ng rỏ r&agrave;ng.&nbsp;</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa&nbsp;bao gồm thuế 10%VAT</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (TPHCM)</p>\r\n', 1, ',6,14,22,', 'vi', 1, '2015-05-07 13:44:00', '2015-05-07 14:06:18', '2015-05-07 14:15:01', 'luandon', 'luandon', 0),
(29, 'Xe đẩy cắt cỏ 5.5 mã lực', 'xe-day-cat-co-5-5-ma-luc', 'BUFFALO5.5', 'may-cat-co/xe-day-cat-co-5-5-ma-luc.html', 'Xe Day Cat Co.jpg', 'Xe đẩy cắt cỏ Buffalo 5.5 mã lực chuyên dùng cắt cỏ vườn trái cây, nông trường cao su .', 'xe đẩy cắt cỏ 5 5 mã lực,xe day cat co 5 5 ma luc', 6000000, 0, '<p style="text-align: start; "><span style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; line-height: normal; text-align: justify; font-weight: bold; font-size: 14px;">M&aacute;y cắt cỏ Bufflalo&nbsp;L</span><strong style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; font-size: 13px; line-height: normal; text-align: justify;">oại 4 th&igrave;</strong><span style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; font-size: 13px; line-height: normal; text-align: justify;">&nbsp;</span><span style="text-align: justify;"><span style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; font-size: 14px; line-height: normal; font-weight: bold;">&nbsp;đảm bảo mới 100%,&nbsp;</span></span><strong style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; font-size: 13px; line-height: normal; text-align: justify;"><span style="font-size: 14px;">nhập khẩu nguy&ecirc;n bộ, thời gian bảo h&agrave;nh 12&nbsp;th&aacute;ng.</span></strong></p>\r\n', '<p>Gi&aacute; tr&ecirc;n chưa bao&nbsp;gồm Thuế 10%VAT.</p>\r\n\r\n<p>Miễn ph&iacute; vận chuyển trong nội th&agrave;nh TPHCM.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, ',6,14,22,', 'vi', 1, '2015-05-12 09:52:00', '2015-05-12 10:02:59', '2015-05-22 16:00:53', 'luandon', 'luandon', 0),
(31, 'Thi Công An Toàn Điện', 'thi-cong-an-toan-dien', 'An Toàn', 'san-pham-va-dich-vu-khac/thi-cong-an-toan-dien.html', 'Setdanh.jpg', 'CTY TNHH TM DV BẢO Ý chuyên thi công an toàn điện.Thi công chống sét ,lan truyền.', 'thi công an toàn điện,thi cong an toan dien', 0, 0, '', '', 1, ',6,30,', 'vi', 1, '2015-06-16 09:14:00', '2015-06-16 09:16:46', '2015-06-16 10:44:26', 'luandon', 'luandon', 0),
(33, 'Máy xịt rửa dân dụng Oshima IM4', 'may-xit-rua-dan-dung-oshima-im4', 'IM4', 'may-xit-rua-xe/may-xit-rua-dan-dung-oshima-im4.html', 'Oshima_IM4.jpg', 'CÔNG TY TNHH TM DV BẢO Ý chuyên phân phối máy rửa xe dân dụng ,công nghiệp.', 'máy xịt rửa dân dụng oshima im4,may xit rua dan dung oshima im4', 3000000, 0, '<p>M&aacute;y Xịt Rửa D&acirc;n Dụng Oshima IM4</p>\r\n\r\n<ul>\r\n	<li>M&ocirc; tơ d&acirc;y đồng, M&ocirc; tơ cảm ứng từ rất &ecirc;m v&agrave; bền bỉ.</li>\r\n	<li>Nhỏ gọn, đẹp.</li>\r\n	<li>T&iacute;ch hợp b&igrave;nh chứa h&oacute;a chất, dễ d&agrave;ng sử dụng khi chuyển đổi ngay tr&ecirc;n sung.</li>\r\n	<li>&Aacute;p lực phun mạnh.</li>\r\n	<li>C&ocirc;ng suất hoạt động&nbsp; mạnh trong thời gian l&acirc;u.</li>\r\n	<li>Bộ bơm nh&ocirc;m cao cấp hoạt động mạnh mẻ v&agrave; bền bỉ.</li>\r\n	<li>Phụ kiện đi k&egrave;m :<br />\r\n	1. D&acirc;y phun &aacute;p lực d&agrave;i 8m<br />\r\n	2. S&uacute;ng phun &aacute;p lực : 1c<br />\r\n	3. Đầu nối d&acirc;y nước &nbsp;: 1c<br />\r\n	4. Gi&aacute; treo s&uacute;ng : 1c<br />\r\n	5. Tay cầm s&uacute;ng : 1c</li>\r\n	<li>Sản phẩm nhập khẩu&nbsp;nguy&ecirc;n bộ.</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng số kỹ thuật:</p>\r\n\r\n<table align=&quot;left&quot; border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;>\r\n	<tbody>\r\n		<tr>\r\n			<td style=&quot;width:259px;height:47px;&quot;>\r\n			<p><strong>Model</strong></p>\r\n			</td>\r\n			<td style=&quot;width:156px;height:47px;&quot;>\r\n			<p><strong>IM 4</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:259px;height:28px;&quot;>\r\n			<p><strong>&Aacute;p lực l&agrave;m việc (Pressure)</strong></p>\r\n			</td>\r\n			<td style=&quot;width:156px;height:28px;&quot;>\r\n			<p><strong>90 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:259px;height:35px;&quot;>\r\n			<p><strong>&Aacute;p lực tối đa (Max. pressure)</strong></p>\r\n			</td>\r\n			<td style=&quot;width:156px;height:35px;&quot;>\r\n			<p><strong>135 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:259px;height:34px;&quot;>\r\n			<p><strong>Lưu lượng nước (water flow rate)</strong></p>\r\n			</td>\r\n			<td style=&quot;width:156px;height:34px;&quot;>\r\n			<p><strong>6l/min</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:259px;height:22px;&quot;>\r\n			<p><strong>C&ocirc;ng suất (power)</strong></p>\r\n			</td>\r\n			<td style=&quot;width:156px;height:22px;&quot;>\r\n			<p><strong>1.4kw</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:259px;height:25px;&quot;>\r\n			<p><strong>Trọng lượng (net weight)</strong></p>\r\n			</td>\r\n			<td style=&quot;width:156px;height:25px;&quot;>\r\n			<p><strong>17kgs</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:259px;height:26px;&quot;>\r\n			<p><strong>Kich thước th&ugrave;ng</strong></p>\r\n			</td>\r\n			<td style=&quot;width:156px;height:26px;&quot;>\r\n			<p><strong>360*350*840</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;width:259px;height:37px;&quot;>\r\n			<p><strong>Chiều d&agrave;i d&acirc;y &aacute;p lực cao</strong></p>\r\n			</td>\r\n			<td style=&quot;width:156px;height:37px;&quot;>\r\n			<p><strong>8m</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><span style=&quot;line-height: 1.6em;&quot;>Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh.(TP.HCM)</span></p>\r\n', 0, ',6,14,31,', 'vi', 1, '2015-06-16 09:57:00', '2015-06-16 10:19:16', '2015-10-01 13:45:48', 'luandon', 'luandon', 0),
(38, 'Máy xịt rửa dân dụng Oshima OS 1100', 'may-xit-rua-dan-dung-oshima-os-1100', 'OS1100', 'may-xit-rua-xe/may-xit-rua-dan-dung-oshima-os-1100.html', 'may_xit_rua_oshima_os1100.jpg', 'CÔNG TY TNHH TM DV BẢO Ý chuyên phân phối máy rửa xe dân dụng ,công nghiệp.', 'máy xịt rửa dân dụng oshima os 1100,may xit rua dan dung oshima os 1100', 3200000, 0, '<p><span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;>M&aacute;y Xịt Rửa D&acirc;n Dụng Oshima OS 1100</span></p>\r\n\r\n<p>- <strong>M&ocirc; tơ d&acirc;y đồng, cảm ứng từ bền bỉ v&agrave; &ecirc;m </strong></p>\r\n\r\n<p><strong>- Piston mạ sứ ,bộ bơm đồng.</strong></p>\r\n\r\n<p><strong>- Nhỏ gọn đẹp.</strong></p>\r\n\r\n<p><strong>- &Aacute;p lực phun mạnh dễ d&agrave;ng sử dụng.</strong></p>\r\n\r\n<p><strong>- C&ocirc;ng suất hoạt động mạnh trong thời gian l&acirc;u d&agrave;i.</strong></p>\r\n\r\n<p><strong>- 3 Piston hoạt động mạnh mẽ v&agrave; bền bỉ.</strong></p>\r\n\r\n<ul style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;>\r\n	<li>Phụ kiện đi k&egrave;m :<br />\r\n	1. D&acirc;y phun &aacute;p lực d&agrave;i 10m</li>\r\n	<li>2. S&uacute;ng phun &aacute;p lực : 1c<br />\r\n	3. D&acirc;y h&uacute;t nước: 1,6m</li>\r\n	<li>4.Bộ phốt + ron l&agrave;m k&iacute;n + cổ d&ecirc;.</li>\r\n	<li>5. Lổ thở</li>\r\n</ul>\r\n\r\n<table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;width:642px;&quot; width=&quot;642&quot;>\r\n	<tbody>\r\n		<tr>\r\n			<td style=&quot;height:38px;&quot;>\r\n			<p><strong>Model</strong></p>\r\n			</td>\r\n			<td style=&quot;height:38px;&quot;>\r\n			<p><strong>OSHIMA OS-1100</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height:38px;&quot;>\r\n			<p><strong>C&ocirc;ng suất</strong></p>\r\n			</td>\r\n			<td style=&quot;height:38px;&quot;>\r\n			<p><strong>1.1 KW</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height:35px;&quot;>\r\n			<p><strong>&Aacute;p lực l&agrave;m việc</strong></p>\r\n			</td>\r\n			<td style=&quot;height:35px;&quot;>\r\n			<p><strong>7 mpa</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height:35px;&quot;>\r\n			<p><strong>Nguy&ecirc;n liệu</strong></p>\r\n			</td>\r\n			<td style=&quot;height:35px;&quot;>\r\n			<p><strong>8 l&iacute;t/ph&uacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height:38px;&quot;>\r\n			<p><strong>Chất lượng</strong></p>\r\n			</td>\r\n			<td style=&quot;height:38px;&quot;>\r\n			<p><strong>2800 v&ograve;ng/ph&uacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height:35px;&quot;>\r\n			<p><strong>&Aacute;p lực đầu ra tối đa</strong></p>\r\n			</td>\r\n			<td style=&quot;height:35px;&quot;>\r\n			<p><strong>70 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height:41px;&quot;>\r\n			<p><strong>Đường k&iacute;ch piston</strong></p>\r\n			</td>\r\n			<td style=&quot;height:41px;&quot;>\r\n			<p><strong>12 mm</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;><span style=&quot;line-height: 20.7999992370605px;&quot;>Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh.(TP.HCM)</span></p>\r\n', 0, ',6,14,31,', 'vi', 1, '2015-07-01 10:21:00', '2015-07-01 10:24:22', '2015-10-01 13:55:12', 'luandon', 'luandon', 0),
(34, 'Máy xịt rửa dân dụng Oshima IM1', 'may-xit-rua-dan-dung-oshima-im1', 'IM1', 'may-xit-rua-xe/may-xit-rua-dan-dung-oshima-im1.html', 'Oshima _IM1.jpg', 'CÔNG TY TNHH TM DV BẢO Ý chuyên phân phối máy rửa xe dân dụng ,công nghiệp.', 'máy xịt rửa dân dụng oshima im1,may xit rua dan dung oshima im1', 2400000, 0, '<p><span style="font-size: 13px; line-height: 20.7999992370605px;">M&aacute;y Xịt Rửa D&acirc;n Dụng Oshima IM1</span></p>\r\n\r\n<p><span style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;">+ Motor điện từ (c&ocirc;ng nghệ mới)</span><br style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;" />\r\n<span style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;">+ Dộng cơ cảm ứng từ loại mới kh&ocirc;ng cần thay chổi than</span><br style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;" />\r\n<span style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;">+ Tuổi thọ cao (life span)</span><br style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;" />\r\n<span style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;">+ Bền, ch</span>ạy&nbsp;&ecirc;m,&nbsp;&iacute;t n&oacute;ng m&aacute;y tiết kiệm&nbsp;điện.<br style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;" />\r\n<span style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;">+ Hiệu quả kinh tế cao&nbsp;</span><br style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;" />\r\n<span style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;">+ &Aacute;p lực cao, Mạnh mẽ.</span></p>\r\n\r\n<p><span style="margin: 0px; padding: 0px; color: rgb(103, 103, 103); font-family: Arial, Helvetica, sans-serif; line-height: 16.2000007629395px;">Ph</span>ụ kiện&nbsp;đi k&egrave;m:</p>\r\n\r\n<p>1. D&acirc;y phun &aacute;p lực d&agrave;i 10m<br />\r\n2. S&uacute;ng phun &aacute;p lực : 1c<br />\r\n3. Đầu nối d&acirc;y nước &nbsp;: 1c<br />\r\n4. B&igrave;nh pha x&agrave; ph&ograve;ng : 1c<br />\r\n5. Gi&aacute; treo s&uacute;ng : 1c<br />\r\n6. Tay cầm s&uacute;ng : 1c</p>\r\n\r\n<p>Th&ocirc;ng số kỹ thuật:</p>\r\n\r\n<table align="center" border="1" cellpadding="0" cellspacing="0" style="width:570px;" width="570">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:457px;height:37px;">\r\n			<p align="center"><strong>&nbsp;Model</strong></p>\r\n			</td>\r\n			<td style="width:113px;height:37px;">\r\n			<p align="center"><strong>IM1</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>&Aacute;p lực l&agrave;m việc (Pressure)</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>90 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>&Aacute;p lực tối đa (Max. pressure)</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>135 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>Lưu lượng nước (water flow rate)</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>6l/min</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>C&ocirc;ng suất (power)</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>1.5kw</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>Trọng lượng (net weight)</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>13kgs</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>Kich thước th&ugrave;ng</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>520*320*310</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>Chiều d&agrave;i d&acirc;y &aacute;p lực cao</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>10m</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="clear:both;">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;"><span style="font-size: 13px; line-height: 20.7999992370605px;">M</span><span style="font-size: 13px; line-height: 20.7999992370605px;">&aacute;y chuy</span><span style="font-size: 13px; line-height: 20.7999992370605px;">&ecirc;n&nbsp;xịt r</span>ửa xe gia&nbsp;đ&igrave;nh.</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa bao gồm thuế 10%VAT.</p>\r\n\r\n<p style="font-size: 13px; line-height: 2', 0, ',6,14,31,', 'vi', 1, '2015-07-01 09:12:00', '2015-07-01 09:40:33', '2015-07-01 10:04:52', 'luandon', 'luandon', 1),
(35, 'Máy xịt rửa dân dụng Oshima IM2', 'may-xit-rua-dan-dung-oshima-im2', 'IM2', 'may-xit-rua-xe/may-xit-rua-dan-dung-oshima-im2.html', 'Oshima _IM2.jpg', 'CÔNG TY TNHH TM DV BẢO Ý chuyên phân phối máy rửa xe dân dụng ,công nghiệp.', 'máy xịt rửa dân dụng oshima im2,may xit rua dan dung oshima im2', 2600000, 0, '<p><span style="font-size: 13px; line-height: 20.7999992370605px;">M&aacute;y Xịt Rửa D&acirc;n Dụng Oshima&nbsp;</span>IM2</p>\r\n\r\n<p><strong>+ Motor điện từ (c&ocirc;ng nghệ mới)<br />\r\n+ Dộng cơ cảm ứng từ loại mới kh&ocirc;ng cần thay chổi than<br />\r\n+ Tuổi thọ cao (life span)<br />\r\n+ Bền, ch</strong>ạy&nbsp;&ecirc;m ,&iacute;t n&oacute;ng m&aacute;y, tiết kiệm&nbsp;điện.<br />\r\n<strong>+ Hiệu quả kinh tế cao&nbsp;<br />\r\n+ &Aacute;p lực cao, Mạnh mẽ</strong></p>\r\n\r\n<p>Phụ kiện đi k&egrave;m :<br />\r\n1. D&acirc;y phun &aacute;p lực d&agrave;i 10m<br />\r\n2. S&uacute;ng phun &aacute;p lực : 1c<br />\r\n3. Đầu nối d&acirc;y nước &nbsp;: 1c<br />\r\n4. B&igrave;nh pha x&agrave; ph&ograve;ng : 1c<br />\r\n5. Gi&aacute; treo s&uacute;ng : 1c<br />\r\n6. Tay cầm s&uacute;ng : 1c</p>\r\n\r\n<table align="center" border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:521px;height:38px;">\r\n			<p align="center"><strong>Model</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:38px;">\r\n			<p align="center"><strong>IM 2</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:521px;height:77px;">\r\n			<p align="center"><strong>&Aacute;p lực l&agrave;m việc (Pressure)</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:77px;">\r\n			<p align="center"><strong>90 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:521px;height:77px;">\r\n			<p align="center"><strong>&Aacute;p lực tối đa (Max. pressure)</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:77px;">\r\n			<p align="center"><strong>135 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:521px;height:77px;">\r\n			<p align="center"><strong>Lưu lượng nước (water flow rate)</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:77px;">\r\n			<p align="center"><strong>6l/min</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:521px;height:38px;">\r\n			<p align="center"><strong>C&ocirc;ng suất (power)</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:38px;">\r\n			<p align="center"><strong>1.5kw</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:521px;height:83px;">\r\n			<p align="center"><strong>Trọng lượng (net weight)</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:83px;">\r\n			<p align="center"><strong>17kgs</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style="clear:both;">&nbsp;</div>\r\n', '<p>M&aacute;y xịt rửa d&acirc;n dụng,&nbsp;gia&nbsp;đ&igrave;nh.</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa bao gồm thuế 10%VAT.</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh.(TP.HCM)</p>\r\n', 0, ',6,14,31,', 'vi', 1, '2015-07-01 09:51:00', '2015-07-01 10:00:24', '2015-07-09 22:20:14', 'luandon', 'luandon', 0),
(36, 'Máy xịt rửa dân dụng Oshima IM3', 'may-xit-rua-dan-dung-oshima-im3', 'IM3', 'may-xit-rua-xe/may-xit-rua-dan-dung-oshima-im3.html', 'Oshima _IM3.jpg', 'CÔNG TY TNHH TM DV BẢO Ý chuyên phân phối máy rửa xe dân dụng ,công nghiệp.', 'máy xịt rửa dân dụng oshima im3,may xit rua dan dung oshima im3', 2700000, 0, '<p style="font-size: 13px; line-height: 20.7999992370605px;"><span style="line-height: 20.7999992370605px;">M&aacute;y Xịt Rửa D&acirc;n Dụng Oshima&nbsp;</span>IM3</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;"><strong>+ Motor điện từ (c&ocirc;ng nghệ mới)<br />\r\n+ Dộng cơ cảm ứng từ loại mới kh&ocirc;ng cần thay chổi than<br />\r\n+ Tuổi thọ cao (life span)<br />\r\n+ Bền, ch</strong>ạy&nbsp;&ecirc;m ,&iacute;t n&oacute;ng m&aacute;y, tiết kiệm&nbsp;điện.<br />\r\n<strong>+ Hiệu quả kinh tế cao&nbsp;<br />\r\n+ &Aacute;p lực cao, Mạnh mẽ</strong></p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Phụ kiện đi k&egrave;m :<br />\r\n1. D&acirc;y phun &aacute;p lực d&agrave;i 10m<br />\r\n2. S&uacute;ng phun &aacute;p lực : 1c<br />\r\n3. Đầu nối d&acirc;y nước &nbsp;: 1c<br />\r\n4. Gi&aacute; treo s&uacute;ng : 1c<br />\r\n5. Tay cầm s&uacute;ng : 1c</p>\r\n\r\n<table align="center" border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:521px;height:38px;">\r\n			<p><strong>&nbsp;Model</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:38px;">\r\n			<p><strong>IM 3</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:521px;height:77px;">\r\n			<p><strong>&Aacute;p lực l&agrave;m việc (Pressure)</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:77px;">\r\n			<p><strong>90 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:521px;height:77px;">\r\n			<p><strong>&Aacute;p lực tối đa (Max. pressure)</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:77px;">\r\n			<p><strong>135 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:521px;height:77px;">\r\n			<p><strong>Lưu lượng nước (water flow rate)</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:77px;">\r\n			<p><strong>6l/min</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:521px;height:38px;">\r\n			<p><strong>C&ocirc;ng suất (power)</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:38px;">\r\n			<p><strong>1.5kw</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:521px;height:83px;">\r\n			<p><strong>Trọng lượng (net weight)</strong></p>\r\n			</td>\r\n			<td style="width:126px;height:83px;">\r\n			<p><strong>17kgs</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style="clear:both;">&nbsp;</div>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;">M&aacute;y xịt rửa d&acirc;n dụng,&nbsp;gia&nbsp;đ&igrave;nh.</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh.(TP.HCM)</p>\r\n', 1, ',1,6,14,31,', 'vi', 1, '2015-07-01 10:00:00', '2015-07-01 10:04:26', '2015-09-21 21:17:42', 'luandon', 'luandon', 0),
(37, 'Máy xịt rửa dân dụng Oshima IM1', 'may-xit-rua-dan-dung-oshima-im1', 'IM1', 'may-xit-rua-xe/may-xit-rua-dan-dung-oshima-im1.html', 'Oshima _IM1.jpg', 'CÔNG TY TNHH TM DV BẢO Ý chuyên phân phối máy rửa xe dân dụng ,công nghiệp.', '', 2500000, 0, '<p style="font-size: 13px; line-height: 20.7999992370605px;"><span style="line-height: 20.7999992370605px;">M&aacute;y Xịt Rửa D&acirc;n Dụng Oshima&nbsp;</span>IM1</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;"><strong>+ Motor điện từ (c&ocirc;ng nghệ mới)<br />\r\n+ Dộng cơ cảm ứng từ loại mới kh&ocirc;ng cần thay chổi than<br />\r\n+ Tuổi thọ cao (life span)<br />\r\n+ Bền, ch</strong>ạy&nbsp;&ecirc;m ,&iacute;t n&oacute;ng m&aacute;y, tiết kiệm&nbsp;điện.<br />\r\n<strong>+ Hiệu quả kinh tế cao&nbsp;<br />\r\n+ &Aacute;p lực cao, Mạnh mẽ</strong></p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Phụ kiện đi k&egrave;m :<br />\r\n1. D&acirc;y phun &aacute;p lực d&agrave;i 10m<br />\r\n2. S&uacute;ng phun &aacute;p lực : 1c<br />\r\n3. Đầu nối d&acirc;y nước &nbsp;: 1c<br />\r\n4. B&igrave;nh pha x&agrave; ph&ograve;ng : 1c<br />\r\n5. Gi&aacute; treo s&uacute;ng : 1c<br />\r\n6. Tay cầm s&uacute;ng : 1c</p>\r\n\r\n<table align="center" border="1" cellpadding="0" cellspacing="0" style="width:570px;" width="570">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:457px;height:37px;">\r\n			<p align="center"><strong>&nbsp;Model</strong></p>\r\n			</td>\r\n			<td style="width:113px;height:37px;">\r\n			<p align="center"><strong>IM1</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>&Aacute;p lực l&agrave;m việc (Pressure)</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>90 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>&Aacute;p lực tối đa (Max. pressure)</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>135 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>Lưu lượng nước (water flow rate)</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>6l/min</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>C&ocirc;ng suất (power)</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>1.5kw</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>Trọng lượng (net weight)</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>13kgs</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>Kich thước th&ugrave;ng</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>520*320*310</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>Chiều d&agrave;i d&acirc;y &aacute;p lực cao</strong></p>\r\n			</td>\r\n			<td style="height:36px;">\r\n			<p align="center"><strong>10m</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style="clear:both;">&nbsp;</div>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;">M&aacute;y xịt rửa d&acirc;n dụng,&nbsp;gia&nbsp;đ&igrave;nh.</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh.(TP.HCM)</p>\r\n', 0, ',6,14,31,', 'vi', 1, '2015-07-01 10:04:00', '2015-07-01 10:07:28', '2015-09-21 21:16:31', 'luandon', 'luandon', 0),
(39, 'Máy xịt rửa dân dụng Oshima OS 1100 A', 'may-xit-rua-dan-dung-oshima-os-1100-a', 'OS1100 A', 'may-xit-rua-xe/may-xit-rua-dan-dung-oshima-os-1100-a.html', 'may_xit_rua_oshima_os1100a.jpg', 'CÔNG TY TNHH TM DV BẢO Ý chuyên phân phối máy rửa xe dân dụng ,công nghiệp.', 'máy xịt rửa dân dụng oshima os 1100 a,may xit rua dan dung oshima os 1100 a', 3400000, 3600000, '<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;><span style=&quot;line-height: 20.7999992370605px;&quot;>M&aacute;y Xịt Rửa D&acirc;n Dụng Oshima OS 1100 A</span></p>\r\n\r\n<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;>-&nbsp;<strong>M&ocirc; tơ d&acirc;y đồng, cảm ứng từ bền bỉ v&agrave; &ecirc;m</strong></p>\r\n\r\n<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;><strong>- Piston mạ sứ ,bộ bơm đồng.</strong></p>\r\n\r\n<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;><strong>- Nhỏ gọn đẹp.</strong></p>\r\n\r\n<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;><strong>- &Aacute;p lực phun mạnh dễ d&agrave;ng sử dụng.</strong></p>\r\n\r\n<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;><strong>- C&ocirc;ng suất hoạt động mạnh trong thời gian l&acirc;u d&agrave;i.</strong></p>\r\n\r\n<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;><strong>- 3 Piston hoạt động mạnh mẽ v&agrave; bền bỉ.</strong></p>\r\n\r\n<ul style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;>\r\n	<li>Phụ kiện đi k&egrave;m :<br />\r\n	1. D&acirc;y phun &aacute;p lực d&agrave;i 10m</li>\r\n	<li>2. S&uacute;ng phun &aacute;p lực : 1c<br />\r\n	3. D&acirc;y h&uacute;t nước: 1,6m</li>\r\n	<li>4.Bộ phốt + ron l&agrave;m k&iacute;n + cổ d&ecirc;.</li>\r\n	<li>5. Lổ thở</li>\r\n	<li>Sản phẩm nhập khẩu&nbsp;nguy&ecirc;n bộ.</li>\r\n</ul>\r\n\r\n<table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;font-size: 13px; line-height: 20.7999992370605px; width: 625px;&quot; width=&quot;625&quot;>\r\n	<tbody>\r\n		<tr>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>Model</strong></p>\r\n			</td>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>OSHIMA OS-1100A</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>C&ocirc;ng suất</strong></p>\r\n			</td>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>1.1 KW</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>&Aacute;p lực l&agrave;m việc</strong></p>\r\n			</td>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>7 mpa</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>Nguy&ecirc;n liệu</strong></p>\r\n			</td>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>8 l&iacute;t/ph&uacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>Chất lượng</strong></p>\r\n			</td>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>2800 v&ograve;ng/ph&uacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>&Aacute;p lực đầu ra tối đa</strong></p>\r\n			</td>\r\n			<td style=&quot;height: 29px;&quot;>\r\n			<p align=&quot;center&quot;><strong>70 bar</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=&quot;height: 31px;&quot;>\r\n			<p align=&quot;center&quot;><strong>Đường k&iacute;ch piston</strong></p>\r\n			</td>\r\n			<td style=&quot;height: 31px;&quot;>\r\n			<p align=&quot;center&quot;><strong>12 mm</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;><span style=&quot;line-height: 20.7999992370605px;&quot;>Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh.(TP.HCM)</span></p>\r\n', 0, ',6,14,31,', 'vi', 1, '2015-07-01 10:24:00', '2015-07-01 10:30:02', '2015-10-01 13:54:23', 'luandon', 'luandon', 0),
(40, 'Máy cắt cỏ 4 thì Hon Da GX 35', 'may-cat-co-4-thi-hon-da-gx-35', 'GX 35', 'may-cat-co/may-cat-co-4-thi-hon-da-gx-35.html', 'may-cat-co-cam-tay.jpg', 'Công ty Bảo Ý chuyên cung cấp máy cắt cỏ 4 thì hon da GX35 .', 'máy cắt cỏ 4 thì hon da gx 35,may cat co 4 thi hon da gx 35', 2700000, 3200000, '<p style="text-align: start; "><span style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; line-height: normal; text-align: justify; font-weight: bold; font-size: 14px;">M&aacute;y cắt cỏ HonDa GX 35 L</span><strong style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; font-size: 13px; line-height: normal; text-align: justify;">oại 4 th&igrave;</strong><span style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; font-size: 13px; line-height: normal; text-align: justify;">&nbsp;</span><span style="text-align: justify;"><span style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; font-size: 14px; line-height: normal; font-weight: bold;">&nbsp;đảm bảo mới 100%</span></span><strong style="color: rgb(81, 81, 81); font-family: tahoma, arial, verdana, helvetica, sans-serif; font-size: 13px; line-height: normal; text-align: justify;"><span style="font-size: 14px;">, thời gian bảo h&agrave;nh 06&nbsp;th&aacute;ng.</span></strong></p>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="3" style="width:577px;height:18px;">\r\n			<p align="center">M&aacute;y cắt cỏ 4 th&igrave; GX 35</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="5" style="width:133px;height:18px;">\r\n			<p><strong>BỘ CẦN CẮT CỎ</strong></p>\r\n			</td>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Loại</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>Mang vai,&nbsp; ống cần tự xoay &Oslash;28 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Trục truyền động</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>Trục cứng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Tay cầm&nbsp;</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>Kiểu ghi đ&ocirc;ng chữ U</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Lưỡi cắt</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>Hai c&aacute;nh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>D&acirc;y đeo&nbsp;</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>D&acirc;y đơn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="9" style="width:133px;height:18px;">\r\n			<p><strong>ĐỘNG CƠ</strong></p>\r\n			</td>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Kiểu</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>Hon Da GX 35</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Loại</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>4 th&igrave;, l&agrave;m m&aacute;t bằng gi&oacute;,1 xilanh, cam treo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Dung t&iacute;ch xi lanh</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>35.8 cc</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>C&ocirc;ng suất định mức</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>1.3 m&atilde; lực (1.0 KW) / 7000v/p</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Kiểu đ&aacute;nh lửa</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>Transistor từ t&iacute;nh (IC)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Kiểu khởi động</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>Bằng tay</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Dung t&iacute;ch b&igrave;nh xăng</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>0.65 l&iacute;t</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Dung t&iacute;ch nhớt</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>0.1 l&iacute;t</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Mức&nbsp;ti&ecirc;u hao nhi&ecirc;n liệu</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>0.48 l&iacute;t/giờ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan="2" style="width:133px;height:18px;">\r\n			<p><strong>TH&Ocirc;NG SỐ LẮP ĐẶT</strong></p>\r\n			</td>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Bộ dụng cụ</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:150px;height:18px;">\r\n			<p>Tấm chắn an to&agrave;n</p>\r\n			</td>\r\n			<td style="width:294px;height:18px;">\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;"><span style="line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (TPHCM)</span></p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Khuyến m&atilde;i tặng 1 bộ cắt &nbsp;bằng d&acirc;y cước.</p>\r\n', 0, ',6,14,22,', 'vi', 1, '2015-08-24 13:48:00', '2015-08-24 14:13:39', '2015-09-21 21:20:02', 'luandon', 'luandon', 0);
INSERT INTO `web_product` (`id`, `name`, `name_alias`, `masp`, `url`, `url_hinh`, `metaDescription`, `metaKeyword`, `giaban`, `giagoc`, `content`, `info_more`, `other`, `menu_id`, `lang`, `status`, `ngay_dang`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(41, 'Máy cắt cỏ 2 thì Maruyama EE230', 'may-cat-co-2-thi-maruyama-ee230', 'EE230', 'may-cat-co/may-cat-co-2-thi-maruyama-ee230.html', 'Maruyama EE230 nhat.jpg', 'Công ty TNHH TM DV Bảo Ý chuyên cung cấp máy cắt cỏ Nhật Bản Hãng Maruyama.', 'máy cắt cỏ 2 thì maruyama ee230,may cat co 2 thi maruyama ee230', 5500000, 0, '<p>- B&igrave;nh xăng dưới sử dụng m&agrave;ng bơm tiết kiệm nhi&ecirc;n liệu, b&igrave;nh xăng con Walbro chất lượng tốt của Nhật .</p>\r\n\r\n<p>- N&ograve;ng 32mm, dung t&iacute;ch xi lanh 23 cc .</p>\r\n\r\n<p>- B&igrave;nh xăng nhựa d&agrave;y, cổ b&igrave;nh xăng cao gi&uacute;p &iacute;ch cho việc sửa chữa, dốc m&aacute;y kh&ocirc;ng lo sợ xăng chảy ra ngo&agrave;i .</p>\r\n\r\n<p>- Maruyama được biết đến bởi thị trường h&agrave;ng b&atilde;i đ&atilde; c&oacute; mặt nhiều năm tr&ecirc;n thị trường Việt Nam l&agrave; lợi thế cho việc ra h&agrave;ng nhanh .</p>\r\n\r\n<p>- Mẫu m&aacute;y nhỏ, gọn nhẹ dễ d&agrave;ng di chuyển khi cắt .</p>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:459px;" width="459">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>Model</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>EE230</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>Loại m&aacute;y</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>Động cơ hai th&igrave;, l&agrave;m m&aacute;t bằng kh&iacute;, xi lanh đơn</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>Năng suất m&aacute;y</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>0.9kw/7000 v&ograve;ng/ph&uacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>Dung t&iacute;ch (cc)</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>22.5cc</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>B&igrave;nh xăng con</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>M&agrave;ng lọc</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>25 : 01</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>Dung t&iacute;ch b&igrave;nh xăng nhựa (L)</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>0.6</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>Đường k&iacute;nh lưỡi cắt</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>24mm</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>Khối lượng tịnh</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>4.4kgs</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>H&igrave;nh thức sử dụng</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>Mang b&ecirc;n vai</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>Hệ thống khởi động</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>Giật</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:199px;height:40px;">\r\n			<p><strong>Lưỡi cắt</strong></p>\r\n			</td>\r\n			<td style="width:259px;height:40px;">\r\n			<p><strong>2 Lưỡi</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style="clear:both;">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa&nbsp;bao gồm thuế 10%VAT</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (TPHCM)</p>\r\n\r\n<p>M&aacute;y nhập khẩu mới 100%,&nbsp;H&agrave;ng ch&iacute;nh h&atilde;ng của Nhật c&oacute; tem bảo h&agrave;nh v&agrave; Made in Japan</p>\r\n', 1, ',1,6,14,22,', 'vi', 1, '2015-08-24 15:07:00', '2015-08-24 15:17:48', '2015-08-24 15:49:47', 'luandon', 'luandon', 0),
(42, 'Máy cắt cỏ 2 thì Maruyama EE260', 'may-cat-co-2-thi-maruyama-ee260', 'EE260', 'may-cat-co/may-cat-co-2-thi-maruyama-ee260.html', 'maruyama-EE260 nhat.jpg', 'Công ty TNHH TM DV Bảo Ý chuyên cung cấp máy cắt cỏ Nhật Bản Hãng Maruyama.', 'máy cắt cỏ 2 thì maruyama ee260,may cat co 2 thi maruyama ee260', 5700000, 0, '<p>- B&igrave;nh xăng dưới sử dụng m&agrave;ng bơm tiết kiệm nhi&ecirc;n liệu, b&igrave;nh xăng con Walbro chất lượng tốt của Nhật .</p>\r\n\r\n<p>- N&ograve;ng 34mm, dung t&iacute;ch xi lanh 26 cc .</p>\r\n\r\n<p>- B&igrave;nh xăng nhựa d&agrave;y, cổ b&igrave;nh xăng cao gi&uacute;p &iacute;ch cho việc sửa chữa, dốc m&aacute;y kh&ocirc;ng lo sợ xăng chảy ra ngo&agrave;i .</p>\r\n\r\n<p>- Maruyama được biết đến bởi thị trường h&agrave;ng b&atilde;i đ&atilde; c&oacute; mặt nhiều năm tr&ecirc;n thị trường Việt Nam l&agrave; lợi thế cho việc ra h&agrave;ng nhanh .</p>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:395px;" width="395">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>Model</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>EE260</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>Loại m&aacute;y</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>Động cơ hai th&igrave;, l&agrave;m m&aacute;t bằng kh&iacute;, xi lanh đơn</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>Năng suất m&aacute;y</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>0.77kw/7000 v&ograve;ng/ph&uacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>Dung t&iacute;ch (cc)</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>25.4cc</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>B&igrave;nh xăng con</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>M&agrave;ng lọc</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>25 : 01</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>Dung t&iacute;ch b&igrave;nh xăng nhựa (L)</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>0.6</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>Đường k&iacute;nh lưỡi cắt</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>24mm</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>Khối lượng tịnh</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>4.5kgs</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>H&igrave;nh thức sử dụng</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>Mang b&ecirc;n vai</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>Hệ thống khởi động</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>Giật</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:112px;height:40px;">\r\n			<p><strong>Lưỡi cắt</strong></p>\r\n			</td>\r\n			<td style="width:283px;height:40px;">\r\n			<p><strong>2 Lưỡi</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style="clear:both;">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa&nbsp;bao gồm thuế 10%VAT</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (TPHCM)</p>\r\n\r\n<p>M&aacute;y nhập khẩu mới 100%,&nbsp;H&agrave;ng ch&iacute;nh h&atilde;ng của Nhật c&oacute; tem bảo h&agrave;nh v&agrave; Made in Japan</p>\r\n', 1, ',6,13,14,22,', 'vi', 1, '2015-08-24 15:18:00', '2015-08-24 15:23:38', '2015-08-24 15:49:38', 'luandon', 'luandon', 0),
(43, 'Máy cắt cỏ 2 thì Maruyama AE320', 'may-cat-co-2-thi-maruyama-ae320', 'AE320', 'may-cat-co/may-cat-co-2-thi-maruyama-ae320.html', 'maruyama-ae320 nhat.jpg', 'Công ty TNHH TM DV Bảo Ý chuyên cung cấp máy cắt cỏ Nhật Bản Hãng Maruyama.', 'máy cắt cỏ 2 thì maruyama ae320,may cat co 2 thi maruyama ae320', 5900000, 0, '<p>- B&igrave;nh xăng dưới sử dụng m&agrave;ng bơm tiết kiệm nhi&ecirc;n liệu, b&igrave;nh xăng con Walbro chất lượng tốt của Nhật .</p>\r\n\r\n<p>- Bộ n&ograve;ng 38mm, dung t&iacute;ch xi lanh 32 cc .</p>\r\n\r\n<p>- B&igrave;nh xăng nhựa d&agrave;y, cổ b&igrave;nh xăng cao gi&uacute;p &iacute;ch cho việc sửa chữa, dốc m&aacute;y kh&ocirc;ng lo sợ xăng chảy ra ngo&agrave;i .</p>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:334px;" width="334">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Model</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>AE320</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Loại m&aacute;y</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>Động cơ hai th&igrave;, l&agrave;m m&aacute;t bằng kh&iacute;, xi lanh đơn</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Năng suất m&aacute;y</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>0.92kw/6500 v&ograve;ng/ph&uacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Dung t&iacute;ch (cc)</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>31.8cc</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>B&igrave;nh xăng con</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>M&agrave;ng lọc</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>25 : 01</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Dung t&iacute;ch b&igrave;nh xăng nhựa (L)</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>1</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Đường k&iacute;nh lưỡi cắt</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>28mm</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Khối lượng tịnh</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>7kgs</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>H&igrave;nh thức sử dụng</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>Mang b&ecirc;n vai</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Hệ thống khởi động</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>Giật</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Lưỡi cắt</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>2 Lưỡi</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style="clear:both;">&nbsp;</div>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa&nbsp;bao gồm thuế 10%VAT</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (TPHCM)</p>\r\n\r\n<p>M&aacute;y nhập khẩu mới 100%,&nbsp;H&agrave;ng ch&iacute;nh h&atilde;ng của Nhật c&oacute; tem bảo h&agrave;nh v&agrave; Made in Japan</p>\r\n', 1, ',6,14,22,', 'vi', 1, '2015-08-24 15:24:00', '2015-08-24 15:33:48', '2015-08-24 15:49:26', 'luandon', 'luandon', 0),
(44, 'Máy cắt cỏ 2 thì Maruyama NE 420', 'may-cat-co-2-thi-maruyama-ne-420', 'NE420', 'may-cat-co/may-cat-co-2-thi-maruyama-ne-420.html', 'maruyama-NE420.jpg', 'Công ty TNHH TM DV Bảo Ý chuyên cung cấp máy cắt cỏ Nhật Bản Hãng Maruyama.', 'máy cắt cỏ 2 thì maruyama ne 420,may cat co 2 thi maruyama ne 420', 6100000, 0, '<p>- B&igrave;nh xăng dưới sử dụng m&agrave;ng bơm tiết kiệm nhi&ecirc;n liệu, b&igrave;nh xăng con Walbro chất lượng tốt của Nhật .</p>\r\n\r\n<p>- Bộ n&ograve;ng 40mm, dung t&iacute;ch xi lanh 41,5 cc .</p>\r\n\r\n<p>- B&igrave;nh xăng nhựa d&agrave;y, cổ b&igrave;nh xăng cao gi&uacute;p &iacute;ch cho việc sửa chữa, dốc m&aacute;y kh&ocirc;ng lo sợ xăng chảy ra ngo&agrave;i .</p>\r\n\r\n<p>- Loại 420 c&oacute; c&ocirc;ng suất lớn c&oacute; thể d&ugrave;ng để thổi l&aacute; cao su, ph&aacute;t cỏ m&iacute;a d&agrave;y&hellip;</p>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" style="width:334px;" width="334">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Model</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>NE420</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Loại m&aacute;y</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>Động cơ hai th&igrave;, l&agrave;m m&aacute;t bằng kh&iacute;, xi lanh đơn</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Năng suất m&aacute;y</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>1.85kw/8000 v&ograve;ng/ph&uacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Dung t&iacute;ch (cc)</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>41.5cc</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>B&igrave;nh xăng con</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>M&agrave;ng lọc</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Tỉ lệ pha trộn nhi&ecirc;n liệu (xăng/nhớt)</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>25 : 01</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Dung t&iacute;ch b&igrave;nh xăng nhựa (L)</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>1</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Đường k&iacute;nh lưỡi cắt</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>28mm</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Khối lượng tịnh</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>8.1kgs</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>H&igrave;nh thức sử dụng</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>Mang b&ecirc;n vai</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Hệ thống khởi động</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>Giật</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:168px;height:40px;">\r\n			<p><strong>Lưỡi cắt</strong></p>\r\n			</td>\r\n			<td style="width:404px;height:40px;">\r\n			<p><strong>2 Lưỡi</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style="clear:both;">&nbsp;</div>\r\n', '<p style="font-size: 13px; line-height: 20.7999992370605px;">Gi&aacute; tr&ecirc;n chưa&nbsp;bao gồm thuế 10%VAT</p>\r\n\r\n<p style="font-size: 13px; line-height: 20.7999992370605px;">Miễn ph&iacute; vận chuyển trong nội th&agrave;nh (TPHCM)</p>\r\n\r\n<p>M&aacute;y nhập khẩu mới 100%,&nbsp;H&agrave;ng ch&iacute;nh h&atilde;ng của Nhật c&oacute; tem bảo h&agrave;nh v&agrave; Made in Japan</p>\r\n', 1, ',6,14,22,', 'vi', 1, '2015-08-24 15:34:00', '2015-08-24 15:37:11', '2015-08-24 15:49:14', 'luandon', 'luandon', 0);

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
  `other` varchar(100) DEFAULT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=929062201 ;

--
-- Dumping data for table `web_product_order`
--

INSERT INTO `web_product_order` (`id`, `name`, `email`, `phone`, `tinh_thanh`, `quan_huyen`, `diachi`, `tongtien`, `tongsoluong`, `phigiaohang`, `giamgia`, `thanhtien`, `other`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(106101121, 'Nhân', 'admin@netspace.edu.vn', '0988388003', 3, 127, '123 CMT 8', 2500000, 1, 5000, 0, 2505000, '', 'vi', 0, '2014-10-06 09:11:21', '2014-10-06 10:50:30', 'khachhang', 'admin', 1),
(506103016, 'Nhan', 'admin@netspace.edu.vn', '0988388003', 3, 127, '123 cmt 8', 2000000, 1, 5000, 0, 2005000, 'test mail', 'vi', 0, '2014-10-06 11:30:16', '2014-10-06 11:37:07', 'khachhang', 'admin', 1),
(706103225, 'Nhan', 'admin@netspace.edu.vn', '0988388003', 3, 127, '123 cmt 8', 1500000, 1, 5000, 0, 1505000, '', 'vi', 0, '2014-10-06 11:32:25', '2014-10-06 11:37:06', 'khachhang', 'admin', 1),
(515111849, 'Anh Bảy', 'sevenbeersaigon@yahoo.com', '0964000373', 3, 146, 'E2/53_ XÃ ĐA PHƯỚC _H,BC', 1800000, 1, 15000, 0, 1815000, 'Giao trong ngày 16/11/2014', 'vi', 0, '2014-11-15 19:18:49', '2014-11-15 19:18:49', 'khachhang', NULL, 0),
(808024606, 'nguyenthanhtoan', 'paztoannguyen123@gmail.com', '01668721721', 15, 810, '501154', 1800000, 1, 0, 0, 1800000, 'toi muon mua cay may nay', 'vi', 0, '2015-02-08 13:46:06', '2015-02-08 13:46:06', 'khachhang', NULL, 0),
(607031235, 'Nguyễn đông Hà', 'dongha@btn.vn', '0996936314', 3, 138, '6/4 khu phố 5 đường Tô Ngọc Vân phường Thạnh Xuân', 1800000, 1, 5000, 0, 1805000, 'Giao hàng vào ngày chủ nhật', 'vi', 0, '2015-03-07 12:12:35', '2015-03-07 12:12:35', 'khachhang', NULL, 0),
(902042603, 'hạnh', 'quanghanhtn@gmail.com', '0919113820', 21, 607, 'xã tân bình - huyện tân biên', 1800000, 1, 0, 0, 1800000, 'gọi lại', 'vi', 0, '2015-04-02 23:26:03', '2015-04-02 23:26:03', 'khachhang', NULL, 0),
(312045411, 'Nguyễn Đức Trí', 'cuasattri@gmail.com', '0943288900', 41, 280, 'KP Phướcc hưng 1 thị trấn Gò quao', 1800000, 1, 0, 0, 1800000, '', 'vi', 0, '2015-04-12 08:54:11', '2015-04-12 08:54:11', 'khachhang', NULL, 0),
(915041433, 'võ hữu thiết', 'buithidiemphuc5@gmail.com', '0969001793', 29, 576, 'khu phố long bình thị trấn la hai đồng xuân phú yên', 1900000, 1, 0, 0, 1900000, '', 'vi', 0, '2015-04-15 13:14:33', '2015-04-15 13:14:33', 'khachhang', NULL, 0),
(820042208, 'NGUYEN ANH TAM', 'huunhadoan@gmail.com', '0902498658', 53, 639, '85 TO1 KHU6 TT TAN PHU', 1800000, 1, 0, 0, 1800000, 'CAN GAP', 'vi', 0, '2015-04-20 13:22:08', '2015-04-20 13:22:08', 'khachhang', NULL, 0),
(529045445, 'Ngo Duc Tien', 'anhkhang4086@gmail.com', '0912345343', 15, 806, 'Hop tac xa Dang Hung Phuoc', 1200000, 1, 0, 0, 1200000, 'de nghi giao hang truoc 2/5/2015', 'vi', 0, '2015-04-29 22:54:45', '2015-04-29 22:54:45', 'khachhang', NULL, 0),
(409054408, 'đoàn văn đỡ', 'doanvando@gmail.com', '0943875919', 41, 285, 'ấp cây thông, xã cửa dương, huyện phú quốc, kiên giang', 2500000, 1, 0, 0, 2500000, '', 'vi', 0, '2015-05-09 20:44:08', '2015-05-09 20:44:08', 'khachhang', NULL, 0),
(915052405, 'nguyễn ngọc lân', 'ngoclantran783@gmail.com', '0963406682', 3, 134, 'C3/55 Pham hung Q8', 1800000, 1, 5000, 0, 1805000, 'MAY BOM oshima 24L mau xam - 1Trieu8', 'vi', 0, '2015-05-15 10:24:05', '2015-05-15 10:24:05', 'khachhang', NULL, 0),
(711060902, 'giàng a páo', 'povyaj791992@gmail.com', '0944255142', 10, 627, 'bản;dế xu phình,xã;dế xu phình,huyện;mù cang chải,tỉnh;yên bái', 2400000, 1, 0, 0, 2400000, 'Giao hàng hàng nhanh càng nhanh càng tốt', 'vi', 0, '2015-06-11 10:09:02', '2015-06-11 10:09:02', 'khachhang', NULL, 0),
(411061032, 'giàng a páo', 'povyaj791992@gmail.com', '0944255142', 10, 627, 'bản;dế xu phình,xã;dế xu phình,huyện;mù cang chải,tỉnh;yên bái', 0, 0, 0, 0, 0, 'Thanh toán sau khi nhận hàng', 'vi', 0, '2015-06-11 10:10:32', '2015-06-11 10:10:32', 'khachhang', NULL, 0),
(929062200, 'hao', 'thaotran776@gmail.com', '0927755240', 3, 134, 'duong  ba  trac q8', 1500000, 1, 5000, 0, 1505000, 'may moi bao hanh day du mau do', 'vi', 0, '2015-06-29 15:22:00', '2015-06-29 15:22:00', 'khachhang', NULL, 0),
(708072209, 'Hồ Minh Quyết', 'xtthegioiruoubia@gmail.com', '0912688333', 41, 285, '29-31 Nguyễn Huệ, Khu phố 5, thị trấn Dương Đông, Phú Quốc, Kiên Giang', 2800000, 1, 0, 0, 2800000, 'Giao đến địa chỉ trên', 'vi', 0, '2015-07-08 17:22:09', '2015-07-08 17:22:09', 'khachhang', NULL, 0),
(8095902, 'lê trung thành', 'trungthanh1804@yahoo.com', '0987388838', 3, 147, '329 hồ văn tắng.xã tân phú trung.Củ Chi', 2000000, 1, 5000, 0, 2005000, '', 'vi', 0, '2015-09-08 09:59:02', '2015-09-08 09:59:02', 'khachhang', NULL, 0),
(312093054, 'Nguyễn Việt Hoàng', 'stern.nguyen.1302@gmail.com', '0909217220', 59, 662, 'nhà hàng Việt hương, đường quang trung, thị trấn, phan rí cửa', 2400000, 1, 0, 0, 2400000, '', 'vi', 0, '2015-09-12 12:30:54', '2015-09-12 12:30:54', 'khachhang', NULL, 0),
(317094224, 'Huỳnh Hải Nam', 'kaka02021975@gmail.com', '01667383868', 61, 841, 'ubnd thi xa thuan an', 1800000, 1, 0, 0, 1800000, '', 'vi', 0, '2015-09-17 16:42:24', '2015-09-17 16:42:24', 'khachhang', NULL, 0),
(430093406, 'HUỲNH VĂN HẢI', 'seafood1@vinasea.com', '01227777412', 42, 269, 'NHATRANG , KHÁNH HÒA', 1800000, 1, 0, 0, 1800000, 'CHÚNG TÔI CẦN MUA MÁY NÀY. MONG BẠN SỚM GỌI LẠI CHO TÔI.', 'vi', 0, '2015-09-30 14:34:06', '2015-09-30 14:34:06', 'khachhang', NULL, 0),
(430094056, 'Ngo Thi Oanh', 'missviet.88@gmail.com', '0934169529', 3, 144, '33/15/9 Duong 8, kp1, Linh Xuan, Thủ Dức', 2400000, 1, 5000, 0, 2405000, 'Nhân viên tới giao hàng phải hướng dẫn cách sử dụng, cách bảo quản, cách bảo trì và sửa chữa sản phẩ', 'vi', 0, '2015-10-01 04:40:56', '2015-10-01 04:40:56', 'khachhang', NULL, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `web_product_order_detail`
--

INSERT INTO `web_product_order_detail` (`id`, `name`, `product_id`, `order_id`, `soluong`, `dongia`, `giamgia`, `tien`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(22, 'Cưa xách OSHIMA 5200 (dùng xăng) - Màu xanh', 12, 106101121, 1, 2500000, 0, 2500000, 'vi', 1, '2014-10-06 09:11:21', NULL, 'khachhang', NULL, 0),
(23, 'Cưa xích KCT 5800 (dùng xăng)', 13, 506103016, 1, 2000000, 0, 2000000, 'vi', 1, '2014-10-06 11:30:16', NULL, 'khachhang', NULL, 0),
(24, 'Palang xích KCT 3 tấn', 9, 706103225, 1, 1500000, 0, 1500000, 'vi', 1, '2014-10-06 11:32:25', NULL, 'khachhang', NULL, 0),
(25, 'Máy bơm hơi OSHIMA mini 24 lít', 1, 515111849, 1, 1800000, 0, 1800000, 'vi', 1, '2014-11-15 19:18:49', NULL, 'khachhang', NULL, 0),
(26, 'Máy cắt cỏ OSHIMA CX 260 (cần Inox) ', 11, 808024606, 1, 1800000, 0, 1800000, 'vi', 1, '2015-02-08 13:46:06', NULL, 'khachhang', NULL, 0),
(27, 'Máy bơm hơi OSHIMA mini 24 lít', 1, 607031235, 1, 1800000, 0, 1800000, 'vi', 1, '2015-03-07 12:12:35', NULL, 'khachhang', NULL, 0),
(28, 'Máy bơm hơi OSHIMA mini 24 lít', 1, 902042603, 1, 1800000, 0, 1800000, 'vi', 1, '2015-04-02 23:26:03', NULL, 'khachhang', NULL, 0),
(29, 'Máy bơm hơi OSHIMA mini 24 lít', 1, 312045411, 1, 1800000, 0, 1800000, 'vi', 1, '2015-04-12 08:54:11', NULL, 'khachhang', NULL, 0),
(30, 'Máy Cưa Xích TIGER X1', 20, 915041433, 1, 1900000, 0, 1900000, 'vi', 1, '2015-04-15 13:14:33', NULL, 'khachhang', NULL, 0),
(31, 'Máy bơm hơi OSHIMA mini 24 lít', 1, 820042208, 1, 1800000, 0, 1800000, 'vi', 1, '2015-04-20 13:22:08', NULL, 'khachhang', NULL, 0),
(32, 'Palang xích KCT 1 tấn', 17, 529045445, 1, 1200000, 0, 1200000, 'vi', 1, '2015-04-29 22:54:45', NULL, 'khachhang', NULL, 0),
(33, 'Cưa xích OSHIMA 5200 (dùng xăng) - Màu xanh', 12, 409054408, 1, 2500000, 0, 2500000, 'vi', 1, '2015-05-09 20:44:08', NULL, 'khachhang', NULL, 0),
(34, 'Máy bơm hơi OSHIMA mini 24 lít', 1, 915052405, 1, 1800000, 0, 1800000, 'vi', 1, '2015-05-15 10:24:05', NULL, 'khachhang', NULL, 0),
(35, 'Cưa xích OSHIMA 5200 (dùng xăng) - Màu xanh', 12, 711060902, 1, 2400000, 0, 2400000, 'vi', 1, '2015-06-11 10:09:02', NULL, 'khachhang', NULL, 0),
(36, 'Bạn chưa đặt mua sản phẩm.', 0, 411061032, 0, 0, 0, 0, 'vi', 1, '2015-06-11 10:10:32', NULL, 'khachhang', NULL, 0),
(37, 'Máy cắt cỏ Tiger B330', 23, 929062200, 1, 1500000, 0, 1500000, 'vi', 1, '2015-06-29 15:22:00', NULL, 'khachhang', NULL, 0),
(38, 'Máy Cưa Xích YAMATA 5280', 14, 708072209, 1, 2800000, 0, 2800000, 'vi', 1, '2015-07-08 17:22:09', NULL, 'khachhang', NULL, 0),
(39, 'Máy Cưa Xích TIGER R1', 22, 8095902, 1, 2000000, 0, 2000000, 'vi', 1, '2015-09-08 09:59:02', NULL, 'khachhang', NULL, 0),
(40, 'Cưa xích OSHIMA 5200 (dùng xăng) - Màu xanh', 12, 312093054, 1, 2400000, 0, 2400000, 'vi', 1, '2015-09-12 12:30:54', NULL, 'khachhang', NULL, 0),
(41, 'Máy bơm hơi OSHIMA mini 24 lít', 1, 317094224, 1, 1800000, 0, 1800000, 'vi', 1, '2015-09-17 16:42:24', NULL, 'khachhang', NULL, 0),
(42, 'Máy bơm hơi OSHIMA mini 24 lít', 1, 430093406, 1, 1800000, 0, 1800000, 'vi', 1, '2015-09-30 14:34:06', NULL, 'khachhang', NULL, 0),
(43, 'Cưa xích OSHIMA 5200 (dùng xăng) - Màu xanh', 12, 430094056, 1, 2400000, 0, 2400000, 'vi', 1, '2015-10-01 04:40:56', NULL, 'khachhang', NULL, 0);

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
(1, 'Trang chủ', 'slider.png', 'javascript:;', 1, ',1,', 1, 'vi', 1, '2014-05-30 10:55:30', '2014-10-05 11:19:54', 'admin', 'admin', 0),
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `diachi`, `phone`, `email`, `ngaysinh`, `gioitinh`, `url_hinh`, `ngaydangky`, `salt`, `username`, `password`, `quyen_xem`, `quyen_action`, `group_id`, `RandomKey`, `LoginNumber`, `DisableDate`, `Expiration`, `lang`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(25, 'Admin', '', '', '', '0000-00-00', 1, '', '0000-00-00 00:00:00', '', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,', 1, NULL, 0, '2011-09-21 16:42:26', NULL, 'vi', 1, '2013-06-14 00:00:00', '2014-05-31 09:49:36', 'admin', 'admin', 0),
(27, 'Trần Nhân', '', '', '', '0000-00-00', 1, '', '0000-00-00 00:00:00', '', 'nhan', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,23,', ',3,23,', 0, NULL, 0, NULL, NULL, 'vi', 1, '2014-03-05 15:48:32', '2014-06-14 05:06:32', 'admin', 'admin', 0),
(30, 'Quản trị BV', '', '', '', '0000-00-00', 1, '', '0000-00-00 00:00:00', '', 'quantri', '', ',1,4,', ',1,4,', 0, NULL, 0, NULL, NULL, 'vi', 1, '2014-06-14 05:26:55', NULL, 'admin', NULL, 0),
(31, 'Ayun Luân Đôn', '', '', '', '0000-00-00', 1, '', '0000-00-00 00:00:00', '', 'luandon', '867e1a36d190000d2f266d80889683fc', ',1,2,3,4,5,8,9,10,11,12,22,', ',1,2,3,4,5,8,9,10,11,12,22,', 0, NULL, 0, NULL, NULL, 'vi', 1, '2014-10-10 10:27:21', '2014-10-10 10:27:49', 'admin', 'admin', 0);

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
