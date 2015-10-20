-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2014 at 04:50 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sachhuongnghiep`
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
  `url_img` varchar(150) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=421 ;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`id`, `name`, `name_alias`, `url`, `url_img`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(271, 'Giới thiệu trang chủ', 'gioi-thieu-trang-chu', 'su-kien/gioi-thieu-trang-chu.html', '', 'Công ty cổ phần quốc tế Lô-Gi-Stic Hoàng Hà (HIL) được thành lập từ năm 1992.\r\n', 'Giới thiệu trang chủ', '<h1>Công ty cổ phần quốc tế Lô-Gi-Stic Hoàng Hà (HIL) được thành lập từ năm 1992.</h1>\r\n\r\n<p>HIL là một trong những công ty cung cấp dịch vụ logistics sớm nhất ở Việt Nam.</p>\r\n\r\n<p>Dịch vụ của chúng tôi bao gồm: dịch vụ hàng không, dịch vụ tàu biển, đường bộ, xuất nhập khẩu, khai hải quan, chứng từ xuất nhập khẩu, giao hàng tận nơi, kho bãi.</p>\r\n\r\n<p>Dịch vụ vận chuyển hàng không HIL là lựa chọn tốt nhất cho những loại hàng hóa yêu cầu hạn định thời gian. Đội HIL Cargo sẽ thiết kế những giải pháp tình huống phù hợp nhất với nhu cầu của bạn.</p>\r\n', 1, 1376306760, 'vi', 1, ',7,'),
(272, 'Lịch sử phát triển HIL', 'lich-su-phat-trien', 'su-kien/lich-su-phat-trien.html', 'lich-su-phat-trien.jpg', 'Thành lập Công ty Cổ phần Quốc tế Logistics Hoàng Hà Giấy phép số 711/GP-UB TP. Thành lập kho bảo quản và sơ chế hàng hóa xuất nhập khẩu.\r\n', 'Lịch sử phát triển Hoàng Hà,HIL từ năm 1992', '<table border="0" cellpadding="0" cellspacing="10" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>1992</strong></td>\r\n			<td>- Thành lập Công ty TNHH Thương mại Hoàng Hà Giấy phép số 711/GP-UB TP</td>\r\n			<td rowspan="22" style="vertical-align: top;">\r\n			<p><img alt="HH 02" src="http://hoangha.com/images/stories/about_uss/HH_02.jpg" style="width: 400px; height: 266px;" /></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1993</strong></td>\r\n			<td>- Thành lập kho bảo quản và sơ chế hàng hóa xuất nhập khẩu.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1994</strong></td>\r\n			<td>- Phát triển ngành vận tải hàng không với nhiều hãng bay: Việt Nam Airlines, TG, CX, SQ, BR .</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>- Trở thành đại lý giao nhận quốc tế.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1995</strong></td>\r\n			<td>- Đại lý hàng đầu Việt Nam Airlines</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>- Vinh dự nhận bằng khen hạng I của Việt Nam Airlines</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1996</strong></td>\r\n			<td>- Lập xưởng bao bì và đội xe vận tải</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1997</strong></td>\r\n			<td>- Lập văn phòng sân bay tại 63 Trường Sơn, phường 2, quận Tân Bình, TP. Hồ Chí Minh</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1998</strong></td>\r\n			<td>- Đại lý hàng đầu các hãng hàng không quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1999</strong></td>\r\n			<td>- Thành viên IATA, FIATA, VIFFAS,VASEF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>- Thành lập văn phòng tại Hà Nội</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2000</strong></td>\r\n			<td>- Thành lập văn phòng tại Đà Nẵng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2001</strong></td>\r\n			<td>- Lập Trung tâm Dịch vụ - Giao nhận - Thương mại tại 63 Trường Sơn, quận Tân Bình, TP. HCM.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2002</strong></td>\r\n			<td>- Thiết lập mạng lưới giao nhận quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2003</strong></td>\r\n			<td>- Lập xưởng đông lạnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2004</strong></td>\r\n			<td>- Đại lý hàng đầu IATA tại Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2005</strong></td>\r\n			<td>- Xây dựng tiêu chuẩn ISO: 9001-2000</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2006</strong></td>\r\n			<td>- Chuyên nghiệp hóa giao nhận quốc tế logistics..</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2007</strong></td>\r\n			<td>- Thiết lập hệ thống quản lý phân phối hàng hóa quốc tế logistics</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2008</strong></td>\r\n			<td>- Trở thành Công ty Cổ phần Quốc tế Logistics Hoàng Hà</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2009</strong></td>\r\n			<td>- Đạt danh hiệu Thương Hiệu Mạnh Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2011</strong></td>\r\n			<td>- Thành lập văn phòng tại Cần Thơ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 1381577280, 'vi', 1, ',7,'),
(276, 'FCL - Full Container Load', 'fcl-full-container-load', 'su-kien/fcl-full-container-load.html', 'fcl-lcl.jpg', 'FCL là chữ viết tắt của cụm từ "Full Container Load" được sử dụng trong ngành công nghiệp vận tải biển quốc tế cho xuất khẩu và nhập khẩu hàng hóa vận tải đường biển.\r\n', 'FCL,Full Container Load', '<p><strong>FCL = Full Container Load</strong><img alt="customs brokerage" src="http://hoangha.com/images/stories/tintuc/31-07-2012/customs_brokerage.jpg" style="height: 217px; width: 400px; float: right; margin-left: 10px; margin-right: 10px;" /></p>\r\n\r\n<h2>FCL là chữ viết tắt của cụm từ "Full Container Load" được sử dụng trong ngành công nghiệp vận tải biển quốc tế cho xuất khẩu và nhập khẩu hàng hóa vận tải đường biển.</h2>\r\n\r\n<p>Thuật ngữ này thường được sử dụng để mô tả một dịch vụ đường biển quốc tế được thiết kế cho các lô hàng vận chuyển hàng hóa đại dương của hàng hoá mà một nước xuất khẩu, nhập khẩu có sử dụng độc quyền của một container vận tải biển chuyên dụng (thường là một container 20ft hoặc 40ft). Container vận chuyển hàng hóa bằng đường biển thường được nạp và đóng dấu tại gốc và sau đó được vận chuyển bằng một sự kết hợp của đường biển, đường sắt và / hoặc đường bộ đến nơi cuối.</p>\r\n\r\n<p><strong>LCL = Less than Container Load</strong></p>\r\n\r\n<p>Khi bạn không có đủ hàng hóa (hoặc có lẽ bạn phải vận chuyển hàng hóa nhiều) cho một container (FCL), bạn cần dịch vụ LCL của chúng tôi. Đây là một dịch vụ vận tải biển mà nhóm một số khách hàng lô hàng với nhau thành một tải container và được lô hàng của bạn di chuyển không chậm trễ. GBS cung cấp hàng lẻ khởi hành từ và đến các cảng chính trên toàn thế giới.</p>\r\n', 1, 1376317020, 'vi', 1, ',7,'),
(277, 'Mã container', 'ma-container', 'su-kien/ma-container.html', 'container-code.gif', 'Trên container có rất nhiều loại ký, mã hiệu thể hiện những ý nghĩa khác nhau. Tiêu chuẩn hiện hành quy định đối với các ký mã hiệu container là ISO 6346:1995\r\n', 'Mã container,ma container', '<h2>Trên container có rất nhiều loại ký, mã hiệu thể hiện những ý nghĩa khác nhau. Tiêu chuẩn hiện hành quy định đối với các ký mã hiệu container là ISO 6346:1995, theo đó, các nhãn hiệu này chia thành những loại chính sau:</h2>\r\n\r\n<div>\r\n<ul>\r\n	<li>Hệ thống nhận biết (identification system)</li>\r\n	<li>Mã kích thước và mã loại (size and type codes)</li>\r\n	<li>Các ký hiệu khai thác (operational markings)</li>\r\n</ul>\r\n</div>\r\n\r\n<p><strong>1. Hệ thống nhận biết (identification system):</strong></p>\r\n\r\n<div>\r\n<ul>\r\n	<li>Hệ thống nhận biết của container bao gồm 4 thành phần</li>\r\n	<li>Mã chủ sở hữu (owner code)</li>\r\n	<li>Ký hiệu loại thiết bị (equipment category identifier / product group code)</li>\r\n	<li>Số sê-ri (serial number / registration number)<br />\r\n	Chữ số kiểm tra (check digit)</li>\r\n</ul>\r\n</div>\r\n\r\n<p style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Tahoma, Verdana; font-size: 14px; line-height: 28px; text-align: center;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;"><img alt="Hệ thống nhận biết container" src="http://www.container-transportation.com/image-files/he-thong-nhan-biet-container.gif" style="margin: 0px; padding: 0px; border-style: solid; border-width: 0px; width: 350px; height: 104px;" /></span></span></p>\r\n\r\n<p><em>-&nbsp;Mã chủ sở hữu (owner code):</em>&nbsp;Mã chủ sở hữu (còn gọi là tiếp đầu ngữ container) bao gồm 3 chữ cái viết hoa được thống nhất và đăng ký với cơ quan đăng kiểm quốc tế thông qua cơ quan đăng kiểm quốc gia hoặc đăng kí trực tiếp với Cục container quốc tế - BIC (Bureau International des Containers et du Transport Intermodal). Sau khi đăng ký, việc sở hữu mã này mới được chính thức công nhận trên toàn thế giới. Một hãng có thể sở hữu một hoặc nhiều mã khác nhau, mặc dù BIC hạn chế điều này, và đưa ra những điều kiện nhất định cho việc đăng kí nhiều mã.<br />\r\nỞ Việt Nam, đến đầu năm 2010, có 6 công ty đăng kí mã tiếp đầu ngữ với BIC, chi tiết như dưới đây.</p>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="10" style="color: rgb(0, 0, 0); font-family: arial, tahoma, verdana; font-size: 14px; height: 28px; line-height: 28px; text-align: center; width: 40%; margin: auto;">\r\n	<tbody style="text-align: left;">\r\n		<tr>\r\n			<td style="text-align: center;" valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px; text-align: left;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;"><strong>TT</strong></span></span></p>\r\n			</td>\r\n			<td style="text-align: center;" valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px; text-align: left;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;"><strong>Mã BIC</strong></span></span></p>\r\n			</td>\r\n			<td style="text-align: center;" valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px; text-align: left;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;"><strong>Tên công ty</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">1</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">GMDU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Gemadept</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">2</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">GMTU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Gematrans</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">3</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">NSHU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Nam Trieu shipping</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">4</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">VCLU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Vinashin-TGC</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">5</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">VNLU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Vinalines container</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">6</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">VNTU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Vinashin-TGC</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em>(Ghi chú: container đầu ngữ GMTU hiện do Gemadept quản lý; Vinashin-TGC đăng ký 2 tiếp đầu ngữ VCLU và VNTU)</em></p>\r\n\r\n<p>Một số công ty khác đang sở hữu, khai thác container với những đầu ngữ nhất định, nhưng chưa đăng ký với BIC, chẳng hạn như Biển Đông dùng đầu ngữ BISU, Vinafco dùng đầu ngữ VFCU... Việc sử dụng các đầu ngữ không đăng ký như vậy có một số bất lợi. Thứ nhất, điều này trái với nội dung quy định trong Phụ lục G của tiêu chuẩn ISO 6343, có điều khoản quy định về đăng ký mã xác định chủ sở hữu với BIC để được bảo vệ quyền sở hữu đối với mã này trên phạm vi quốc tế. Thứ hai, BIC khuyến cáo, container không được đăng ký tiếp đầu ngữ, trong quá trình lưu thông, có thể bị hải quan giữ, kiểm tra, và có thể không được lưu thông tự do như trong Công ước hải quan về container (Customs Convention on Containers) quy định. Điều này sẽ gây bất lợi hoặc thậm chí cản trở toàn bộ quá trình vận tải. Thứ ba, việc không đăng ký và không được thừa nhận về quyền sở hữu đối với tiếp đầu ngữ và kéo theo là quyền sở hữu container dễ dẫn đến nhầm lẫn, khiếu nại, và có thể dẫn đến mất container.</p>\r\n\r\n<p><strong>-&nbsp;Ký hiệu loại thiết bị:</strong>&nbsp;là một trong ba chữ cái dưới đây viết hoa, tương ứng với một loại thiết bị:</p>\r\n\r\n<div>\r\n<blockquote>\r\n<p>U: container chở hàng (freight container)<br />\r\nJ: thiết bị có thể tháo rời của container chở hàng (detachable freight container-related equipment)<br />\r\nZ: đầu kéo (trailer) hoặc mooc (chassis)</p>\r\n</blockquote>\r\nViệc sử dụng bất kỳ chữ cái nào không thuộc ba chữ cái trên (U; J; Z) làm ký hiệu loại thiết bị được coi là không tuân theo tiêu chuẩn ISO 6346.&nbsp;</div>\r\n\r\n<p><em>-&nbsp;Số sê-ri (serial number):</em>&nbsp;đây chính là số container, gồm 6 chữ số. Nếu số sê-ri không đủ 6 chữ số, thì các chữ số 0 sẽ được thêm vào phía trước để thành đủ 6 chữ số. Chẳng hạn, nếu số sê-ri là 1234, thì sẽ thêm 2 chữ số 0, và số sê-ri đầy đủ sẽ là 001234. Số sê-ri này do chủ sở hữu container tự đặt ra, nhưng đảm bảo nguyên tắc mỗi số chỉ sử dụng duy nhất cho một container.</p>\r\n\r\n<p><em>-&nbsp;Chữ số kiểm tra (check digit):</em> là một chữ số (đứng sau số sê-ri), dùng để kiểm tra tính chính xác của chuỗi ký tự đứng trước đó, gồm: tiếp đầu ngữ, số sê-ri. Với mỗi chuỗi ký tự gồm tiếp đầu ngữ và số sê-ri, áp dụng cách tính chữ số kiểm tra container, sẽ tính được chữ số kiểm tra cần thiết.</p>\r\n\r\n<p>Việc sử dụng số kiểm tra là để giảm thiểu rủi ro sai sót trong quá trình nhập số container. Thực tế là số container được nhiều đối tượng sử dụng (chủ hàng, forwarder, hãng tàu, hải quan…), nhiều lần, trên nhiều chứng từ (B/L, Manifest, D/O…), do đó khả năng nhập sai số là rất lớn. Mỗi số container (gồm tiếp đầu ngữ và số sê-ri) sẽ tương ứng với một chữ số kiểm tra. Do đó, việc nhập sai số phần lớn sẽ bị phát hiện do chữ số kiểm tra khác với thực tế. Tuy vậy, cũng cần lưu ý điều này không phải tuyệt đối, bởi nếu sai 2 ký tự trở lên thì có thể số kiểm tra vẫn đúng, và sai sót không bị phát hiện ra.</p>\r\n\r\n<p><strong>2. Mã kích thước và mã kiểu (size and type codes):</strong></p>\r\n\r\n<p style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Tahoma, Verdana; font-size: 14px; line-height: 28px; text-align: center;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;"><img alt="Mã kích thước và mã kiểu container" src="http://www.container-transportation.com/image-files/size-and-type-code.jpg" style="margin: 0px; padding: 0px; border-style: solid; border-width: 0px; width: 250px; height: 90px;" /></span></span></p>\r\n\r\n<p>- Mã kích thước: 2 ký tự (chữ cái hoặc chữ số). Ký tự thứ nhất biểu thị chiều dài container, chữ số 4 trong ví dụ trên thể hiện chiều dài container này là 40ft (12,192m). Ký tự thứ hai biểu thị chiều rộng và chiều cao container, chữ số 2 biểu thị chiều cao 8ft 6in (2,591m).</p>\r\n\r\n<p>- Mã kiểu: 2 ký tự. Ký tự thứ nhất cho biết kiểu container, trong ví dụ trên: G thể hiện container hàng bách hóa. Ký tự thứ hai biểu thị đặc tính chính liên quan đến container, số 1 (sau chữ G) nghĩa là container có cửa thông gió phía trên.</p>\r\n\r\n<p>Tóm lại, 42G1 trong hình trên thể hiện container bách hóa dài 20ft, cao 8ft 6in, thông gió phía trên.</p>\r\n\r\n<p>Tiêu chuẩn ISO 6346:1995 quy định chi tiết ý nghĩa các mã kích thước và mã kiểu.</p>\r\n\r\n<p><strong>3. Các dấu hiệu khai thác (operational markings):</strong></p>\r\n\r\n<p>Các dấu hiệu trong khai thác gồm hai loại: bắt buộc và không bắt buộc</p>\r\n\r\n<p>- Dấu hiệu bắt buộc: tải trọng container, cảnh báo nguy hiểm điện; container cao.</p>\r\n\r\n<div>\r\n<ul>\r\n	<li>Trọng lượng tối đa (maximum gross mass) được ghi trên cửa container, số liệu tương tự như trong Biển chứng nhận an toàn CSC. Một số container cũng thể hiện trọng lượng vỏ (tare weight), trọng tải hữu ích (net weight) hay lượng hàng xếp cho phép (payload)</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Trọng lượng container tối đa" src="http://www.container-transportation.com/image-files/container-max-gross.jpg" style="border-width: 0px; border-style: solid; width: 199px; height: 87px;" /></p>\r\n\r\n<ul>\r\n	<li>Dấu hiệu cảnh báo nguy hiểm điện từ đường dây điện phía trên, dùng cho tất cả các container có lắp thang leo.</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Cảnh báo nguy hiểm điện" src="http://www.container-transportation.com/image-files/electrical-danger-symbol.gif" style="border-width: 0px; border-style: solid; width: 150px; height: 139px;" /></p>\r\n\r\n<ul>\r\n	<li>Dấu hiệu container cao trên 2,6 mét: bắt buộc đối với những container cao trên 8ft 6in (2,6m). Chẳng hạn, hình trên thể hiện container cao 9ft 6in (2,9m)</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Dấu hiệu container cao" src="http://www.container-transportation.com/image-files/high-cube-symbol.jpg" style="border-width: 0px; border-style: solid; width: 119px; height: 158px;" /></p>\r\n</div>\r\n\r\n<p>- Dấu hiệu không bắt buộc: khối lượng hữu ích lớn nhất (max net mass), mã quốc gia (country code)</p>\r\n\r\n<div>\r\n<ul>\r\n	<li>Khối lượng hữu ích lớn nhất (max net mass) dán trên cửa container, phía dưới dấu hiệu trọng lượng container tối đa.</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Khối lượng hữu ích lớn nhất của container" src="http://www.container-transportation.com/image-files/container-net-weight.jpg" style="border-width: 0px; border-style: solid; width: 186px; height: 77px;" /></p>\r\n\r\n<ul>\r\n	<li>Mã quốc gia (<a href="http://sotrans.com.vn/index.php?option=com_content&amp;view=article&amp;id=1110%3Aquoc-ky-cac-quoc-gia-a-i&amp;catid=92&amp;Itemid=305&amp;lang=vi" target="_blank" title="Open a new window">country code</a>) gồm 2 chữ cái viết tắt thể hiện tên quốc gia sở hữu container. Trong hình dưới đây, US viết tắt của United Stated Hoa Kỳ.</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Mã quốc gia sở hữu container" src="http://www.container-transportation.com/image-files/country-code-symbol.jpg" style="border-width: 0px; border-style: solid; width: 254px; height: 90px;" /></p>\r\n</div>\r\n\r\n<p>Ngoài ba loại ký mã hiệu chính, trên vỏ container còn các dấu hiệu mô tả các thông tin cần thiết khác.</p>\r\n\r\n<div>\r\n<ul>\r\n	<li>Biển chứng nhận an toàn CSC</li>\r\n	<li>Biển Chấp nhận của hải quan</li>\r\n	<li>Ký hiệu của tổ chức đường sắt quốc tế UIC (IC codes)</li>\r\n	<li>Logo hãng đăng kiểm</li>\r\n	<li>Test plate (của đăng kiểm), dấu hiệu xếp chồng (stacking height)</li>\r\n	<li>Tên hãng (Maersk, MSC…), logo, slogan (nếu có)</li>\r\n	<li>Mác hãng chế tạo (CIMC, VTC…)</li>\r\n	<li>Ghi chú vật liệu chế tạo vách container (corten steel), hướng dẫn sửa chữa (…repaired only with corten steel)</li>\r\n	<li>Bảng vật liệu chế tạo các bộ phận container; các lưuý…</li>\r\n	<li>Thông tin về xử lý gỗ (ván sàn)</li>\r\n	<li>Nhãn hàng nguy hiểm (nếu có)</li>\r\n</ul>\r\n</div>\r\n', 1, 1376317020, 'vi', 1, ',7,'),
(297, 'Các loại container', 'cac-loai-container', 'su-kien/cac-loai-container.html', 'sea-container.jpg', 'Các loại container đường biển được chia thành hai nhóm chính: theo tiêu chuẩn và không theo tiêu chuẩn ISO. Loại không theo tiêu chuẩn có thể tương tự container ISO về hình dáng kích thước, nhưng không được sử dụng rộng rãi và nhất quán do không được tiêu chuẩn hóa. ', 'Các loại container', '<h2>Các loại container đường biển được chia thành hai nhóm chính: theo tiêu chuẩn và không theo tiêu chuẩn ISO. Loại không theo tiêu chuẩn có thể tương tự container ISO về hình dáng kích thước, nhưng không được sử dụng rộng rãi và nhất quán do không được tiêu chuẩn hóa.&nbsp;</h2>\r\n\r\n<p>Ở đây, bài viết này chỉ xem xét các loại container theo tiêu chuẩn ISO (ISO container). Theo tiêu chuẩn ISO 6346 (1995), container đường biển bao gồm 7 loại chính. Loại container được thể hiện qua&nbsp;<a href="http://sotrans.com.vn/index.php?option=com_content&amp;view=article&amp;id=1121%3Aky-ma-hieu-container&amp;catid=93&amp;Itemid=307&amp;lang=vi">Ký mã hiệu trên vỏ container</a>.</p>\r\n\r\n<div>\r\n<ul>\r\n	<li>Container bách hóa (General purpose container)</li>\r\n	<li>Container hàng rời (Dry bulk container / Bulk container)</li>\r\n	<li>Container chuyên dụng: chở súc vật, ô tô…&nbsp;<br />\r\n	(Named cargo containers: Livestock container, Automobile containers…)</li>\r\n	<li>Container bảo ôn (Thermal container)</li>\r\n	<li>Container hở mái (Open-top container)</li>\r\n	<li>Container mặt bằng (Platform container)</li>\r\n	<li>Container bồn (Tank container)</li>\r\n</ul>\r\n</div>\r\n\r\n<table _mce_new="1" border="0" cellpadding="0" cellspacing="10" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2"><strong>1. Container bách hóa (General purpose container):</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="iso-container-20ft" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/iso-container-20ft.jpg" style="border-width: 0px; border-style: solid; width: 150px; height: 121px;" /></td>\r\n			<td>Container bách hóa thường được sử dụng để chở hàng khô, nên còn được gọi là container khô (dry container, viết tắt là 20’DC hay 40’DC). Loại container này được sử dụng phổ biến nhất trong vận tải biển.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>2. Container hàng rời (Bulk container)</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="bulk-container-4" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/bulk-container-4.jpg" style="border-width: 0px; border-style: solid; height: 150px; width: 150px;" /></td>\r\n			<td>\r\n			<div>Là loại container cho phép xếp hàng rời khô (xi măng, ngũ cốc, quặng…) bằng cách rót từ trên xuống qua miệng xếp hàng (loading hatch), và dỡ hàng dưới đáy hoặc bên cạnh (discharge hatch). Loại container hàng rời bình thường có hình dáng bên ngoài gần giống với container bách hóa, trừ miệng xếp hàng và cửa dỡ hàng. Hình dưới đây thể hiện container hàng rời với miệng xếp hàng (phía trên) và cửa dỡ hàng (bên cạnh) đang mở.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>3. Container chuyên dụng (Named cargo containers):</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="automobile-container" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/automobile-container.jpg" style="border-width: 0px; border-style: solid; height: 90px; width: 150px;" /></td>\r\n			<td>\r\n			<p>Là loại thiết kế đặc thù chuyên để chở một loại hàng nào đó như ô tô, súc vật sống...</p>\r\n\r\n			<p>-&nbsp;Container chở ô tô:&nbsp;cấu trúc gồm một bộ khung liên kết với mặt sàn, không cần vách với mái che bọc, chuyên để chở ô tô, và có thể xếp bên trong 1 hoặc 2 tầng tùy theo chiều cao xe. (Hiện nay, người ta vẫn chở ô tô trong container bách hóa khá phổ biến).</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="livestock-container" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/livestock-container.jpg" style="border-width: 0px; border-style: solid; height: 113px; width: 150px;" /></td>\r\n			<td>\r\n			<p>-&nbsp;Container chở súc vật:&nbsp;được thiết kế đặc biệt để chở gia súc. Vách dọc hoặc vách mặt trước có gắn cửa lưới nhỏ để thông hơi. Phần dưới của vách dọc bố trí lỗ thoát bẩn khi dọn vệ sinh.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>4. Container bảo ôn (Thermal container):&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="container lạnh" src="http://www.container-transportation.com/image-files/refer-container-2.jpg" style="border-width: 0px; border-style: solid; height: 93px; width: 150px;" /></td>\r\n			<td>\r\n			<p>Được thiết kế để chuyên chở các loại hàng đòi hỏi khống chế nhiệt độ bên trong container ở mức nhất định. Vách và mái loại này thường bọc phủ lớp cách nhiệt. Sàn làm bằng nhôm dạng cấu trúc chữ T (T-shaped) cho phép không khí lưu thông dọc theo sàn và đến những khoảng trống không có hàng trên sàn.</p>\r\n\r\n			<div>Container bảo ôn thường có thể duy trì nhiệt độ nóng hoặc lạnh. Thực tế thường gặp container lạnh (refer container)</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>5. Container hở mái (Open-top container):</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="container hở mái" src="http://www.container-transportation.com/image-files/open-top-container.jpg" style="border-width: 0px; border-style: solid; height: 133px; width: 150px;" /></td>\r\n			<td>\r\n			<p>Container hở mái được thiết kế thuận tiện cho việc đóng hàng vào và rút hàng ra qua mái container. Sau khi đóng hàng, mái sẽ được phủ kín bằng vải dầu. Loại container này dùng để chuyên chở hàng máy móc thiết bị hoặc gỗ có thân dài.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>6. Container mặt bằng (Platform container):&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="platform-container-1" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/platform-container-1.jpg" style="border-width: 0px; border-style: solid; height: 57px; width: 150px;" /></td>\r\n			<td>Được thiết kế không vách, không mái mà chỉ có sàn là mặt bằng vững chắc, chuyên dùng để vận chuyển hàng nặng như máy móc thiết bị, sắt thép…</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><img alt="platform-container" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/platform-container.gif" style="border-width: 0px; border-style: solid; height: 150px; width: 150px;" /></p>\r\n			</td>\r\n			<td>Container mặt bằng có loại có vách hai đầu (mặt trước và mặt sau), vách này có thể cố định, gập xuống, hoặc có thể tháo rời.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>7. Container bồn (Tank container):&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="tank_container-1" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/tank_container-1.jpg" style="border-width: 0px; border-style: solid; height: 125px; width: 150px;" /></td>\r\n			<td>\r\n			<p>Container bồn về cơ bản gồm một khung chuẩn ISO trong đó gắn một bồn chứa, dùng để chở hàng lỏng như rượu, hóa chất, thực phẩm… Hàng được rót vào qua miệng bồn (manhole) phía trên mái container, và được rút ra qua van xả (Outlet valve) nhờ tác dụng của trọng lực hoặc rút ra qua miệng bồn bằng bơm.</p>\r\n\r\n			<p>Trên thức tế, tùy theo mục đích sử dụng, người ta còn phân loại container theo kích thước (20&#39;; 40&#39;...), theo vật liệu chế tạo (nhôm, thép...).</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1379932380, 'vi', 1, ',7,'),
(298, 'Đá khô CO2', 'da-kho-co2', 'su-kien/da-kho-co2.html', 'co2-ice-pack.jpg', 'Đá khô bay hơi trực tiếp thành khí CO2 đồng thời làm lạnh các sản phẩm và vùng không khí xung quanh đến nhiệt độ mà ta mong muốn.\r\n', 'Đá khô CO2, CO2 ice,da CO2', '<p><img alt="Đá khô CO2" src="http://hoangha.com/images/stories/tintuc/31-07-2012/00367543.jpg" style="opacity: 0.9; width: 334px; height: 500px; float: right; margin-left: 10px; margin-right: 10px;" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size: 12px;"><strong>Đá khô là dạng rắn của CO2</strong>, ở nhiệt độ thấp -79<sup>0</sup>C có hình dạng đá cẩm thạch trắng, tinh khiết.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size: 12px;"><strong>Đá khô bay hơi trực tiếp thành khí CO<sub>2</sub></strong>&nbsp;đồng thời làm lạnh các sản phẩm và vùng không khí xung quanh đến nhiệt độ mà ta mong muốn.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size: 12px;">Năng suất lạnh ở 0<sup>0</sup>C của <strong>đá khô</strong> là 152 Kcal/kg, gấp đôi năng suất lạnh của 1 khối nước đá có cùng trọng lượng và gấp 3 lần khối nước đá có cùng thể tích.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size: 12px;">Khí CO<sub>2</sub>&nbsp;không màu, không mùi, có khả năng ngăn chặn sự biến màu, axit hóa, sự thối rửa rau quả do nấm mốc, vi khuẩn gây ra </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size: 12px;">Có 2 dạng : </span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="margin-left: 80px;">- <strong>Đá khô dạng viên</strong> <em>(pellets)</em>, đá khô dạng sợi dùng nhiều trong vệ sinh công nghiệp</p>\r\n\r\n<p style="margin-left: 80px;">- <strong>Đá khô dạng khối</strong> <em>(block)</em> dùng trong ngành công nghiệp làm lạnh, bảo quản thực phẩm, giải trí (tạo khói)</p>\r\n\r\n<p><strong>Công dụng của đá khô:</strong></p>\r\n\r\n<ul>\r\n	<li>Vận chuyển bảo quản thực phẩm tươi sống, rau quả, trái cây ...</li>\r\n	<li>Vận chuyển bảo quản thực phẩm đông lạnh, kem, chả giò ...</li>\r\n	<li>Vận chuyển bảo quản dược phẩm.</li>\r\n	<li>Máy tạo khói mỹ thuật phục vụ cho điện ảnh, vũ trường, sân khấu, lễ cưới, liên hoan.</li>\r\n	<li>Lưu trữ thi hài, đám tang.</li>\r\n	<li>Sử dụng trong vệ sinh công nghiệp: làm sạch khuôn đế giầy.</li>\r\n	<li>Sử dụng trong công nghiệp hóa chất: vệ sinh máy in.</li>\r\n	<li>Sử dụng trong vệ sinh turbin: máy phát điện.</li>\r\n	<li>Sử dụng trong sản xuất công nghiệp.</li>\r\n</ul>\r\n\r\n<p><em><strong>Lưu ý:</strong>&nbsp;cẩn thận khi sử dụng, phải bao tay bảo hộ vì nhiệt độ có thể làm bỏng da. Không được ăn hay uống - Để xa tầm tay trẻ em</em></p>\r\n', 0, 1379932740, 'vi', 1, ',7,'),
(299, 'Đá GEL - Túi giữ lạnh', 'da-gel-tui-giu-lanh', 'su-kien/da-gel-tui-giu-lanh.html', 'da gel.jpg', 'Túi giữ lạnh là sản phẩm GEL được sản xuất theo công nghệ tiên tiến của hãng NORTHWEST Hoa Kỳ.\r\n', 'Đá GEL,Túi giữ lạnh,da gel,tui giu lanh', '<h2>Túi giữ lạnh là sản phẩm GEL được sản xuất theo công nghệ tiên tiến của hãng NORTHWEST Hoa Kỳ</h2>\r\n\r\n<p><strong>GEL</strong> khi hòa tan trong nước tạo thành hỗn hợp có độ dẻo kết dính tự nhiên. Sau khi được đông cứng GEL luôn tỏa lạnh trong điều kiện bảo ôn, giữ cho hàng hóa luôn tươi tốt.</p>\r\n\r\n<p><strong>Túi lạnh</strong> không độc hại và gây phản ứng phụ cho người sử dụng</p>\r\n\r\n<p><strong>Công dụng đá GEL:</strong></p>\r\n\r\n<ol>\r\n	<li>Đặc biệt dùng cho hải sản tươi sống và rau củ quả tươi dùng cho xuất khẩu.</li>\r\n	<li><em><strong>Bảo quản tân dược</strong></em></li>\r\n	<li>Ngoài ra <strong>đá&nbsp;GEL</strong> còn công dụng khác như: chườm nóng lạnh khi bị sốt cao, giữ lạnh thực phẩm cho các cuộc du ngoại ngoài trời...</li>\r\n</ol>\r\n\r\n<p><strong>Cách sử dụng đá GEL:</strong></p>\r\n\r\n<ol>\r\n	<li><strong>Túi GEL</strong> ở dạng lỏng trước khi sủ dụng phải cho túi vào ngăn đá để cấp đông, sau khi túi đã đống cứng ta cho vào thùng xốp hoặc dụng cụ giữ lạnh để bảo quản,</li>\r\n	<li><strong>Túi GEL</strong> khi đông lạnh cứng có thể giữ lạnh hàng hóa trong vòng 20 giờ mới tan chảy.</li>\r\n	<li>Túi giữ lạnh có thể dùng được nhiều lần, tuy nhiên thời gian giữ lạnh sẽ giảm dần.</li>\r\n</ol>\r\n\r\n<p><em><strong>Lưu ý:</strong>&nbsp;Nên để túi giữ lạnh còn nguyên vẹn, không làm rách bao bì, không để chất lỏng tràn ra ngoài dính vào thức ăn, đồ uống. Không được ăn hay uống - Để xa tầm tay trẻ em</em></p>\r\n\r\n<p style="text-align: center;"><em><img alt="" src="/public/images/da%20gel.jpg" style="width: 600px; height: 406px;" /></em></p>\r\n', 0, 1379932860, 'vi', 1, ',6,7,');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `name`, `name_var`, `value`, `lang`, `status`) VALUES
(1, 'Slogan', 'slogan', 'Thời trang cho mọi người', 'vi', 1),
(2, 'Slogan', 'slogan', 'Thời trang cho mọi người', 'en', 1),
(5, 'Số tin / trang', 'limit_1', '10', 'vi', 1),
(6, 'Số sách / trang', 'limit_2', '30', 'vi', 1),
(7, 'Số photo / trang', 'limit_3', '10', 'vi', 1),
(8, 'Số video / trang', 'limit_4', '10', 'vi', 1),
(9, 'Copyright', 'copyright', 'Copyright © 2014', 'vi', 1),
(10, 'Email', 'email', 'info@hoangha.com', 'vi', 1),
(11, 'Điện thoại', 'tel', '(84.8) 3 948 4696', 'vi', 1),
(12, 'Hotline', 'hotline', '0988 388 003', 'vi', 1),
(13, 'Yahoo', 'yahoo', 'hieu_nhan1', 'vi', 1),
(14, 'Skype', 'skype', 'hieu_nhan1', 'vi', 1),
(15, 'Địa chỉ', 'address', '87 Thăng Long, Phường 4, Quận Tân Bình, Tp.Hồ Chí Minh, Việt Nam.', 'vi', 1),
(16, 'News number / page', 'limit_1', '10', 'en', 1),
(17, 'Product number / page', 'limit_2', '10', 'en', 1),
(18, 'Photos number / page', 'limit_3', '10', 'en', 1),
(19, 'Videos number / page', 'limit_4', '10', 'en', 1),
(20, 'Copyright', 'copyright', 'Copyright © 2014', 'en', 1),
(21, 'Email', 'email', 'info@hoangha.com', 'en', 1),
(22, 'Telephone', 'tel', '(84.8) 3 948 4696', 'en', 1),
(23, 'Hotline', 'hotline', '0988 388 003', 'en', 0),
(24, 'Yahoo', 'yahoo', 'hieu_nhan1', 'en', 1),
(25, 'Skype', 'skype', 'hieu_nhan1', 'en', 1),
(26, 'Address', 'address', '87 Thăng Long, Phường 4, Quận Tân Bình, Tp.Hồ Chí Minh, Việt Nam.', 'en', 1),
(27, 'Tên trang website', 'sitename', 'HOANG HA INTERNATIONAL LOGISTICS JSC.,', 'vi', 1),
(28, 'Site name', 'sitename', 'HOANG HA INTERNATIONAL LOGISTICS JSC.,', 'en', 1),
(29, 'Fax', 'fax', '(84.8) 3 948 4697', 'vi', 1),
(30, 'Fax', 'fax', '(84.8) 3 948 4697', 'en', 1),
(32, '4 hotline service', 'hotline_service', '08 6262 1234,08 6263 1234,08 6264 1234,08 6265 1234', 'en', 1),
(33, 'Số sách trên trang chủ', 'limit_home', '5', 'vi', 1),
(34, 'Site name', 'site_name', 'HOANG HA HIL', 'en', 1);

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
  `datetime` bigint(10) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `web_contact`
--

INSERT INTO `web_contact` (`id`, `name`, `email`, `phone`, `address`, `message`, `datetime`, `lang`, `status`) VALUES
(1, 'Tran Nhan', 'hieunhan1@yahoo.com', '0988 388 003', '123 CMT 8', 'Test noi dung lien he sach ABC', 1416486935, 'vi', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `web_language`
--

INSERT INTO `web_language` (`id`, `name`, `code`, `order`, `status`) VALUES
(1, 'Việt Nam', 'vi', 1, 1),
(2, 'English', 'en', 2, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=901 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `web_logs`
--

INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(1, 'Đá GEL - Túi giữ lạnh', 'update', 'web_article', 1416485525, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values299%%%Đá GEL - Túi giữ lạnh%%%da-gel%%%%%%da gel.jpg%%%Túi giữ lạnh là sản phẩm GEL được sản xuất theo công nghệ tiên tiến của hãng NORTHWEST Hoa Kỳ.\n%%%Đá GEL,Túi giữ lạnh,da gel,tui giu lanh%%%<h2>Túi giữ lạnh là sản phẩm GEL được sản xuất theo công nghệ tiên tiến của hãng NORTHWEST Hoa Kỳ</h2>\r\n\r\n<p><strong>GEL</strong> khi hòa tan trong nước tạo thành hỗn hợp có độ dẻo kết dính tự nhiên. Sau khi được đông cứng GEL luôn tỏa lạnh trong điều kiện bảo ôn, giữ cho hàng hóa luôn tươi tốt.</p>\r\n\r\n<p><strong>Túi lạnh</strong> không độc hại và gây phản ứng phụ cho người sử dụng</p>\r\n\r\n<p><strong>Công dụng đá GEL:</strong></p>\r\n\r\n<ol>\r\n	<li>Đặc biệt dùng cho hải sản tươi sống và rau củ quả tươi dùng cho xuất khẩu.</li>\r\n	<li><em><strong>Bảo quản tân dược</strong></em></li>\r\n	<li>Ngoài ra <strong>đá&nbsp;GEL</strong> còn công dụng khác như: chườm nóng lạnh khi bị sốt cao, giữ lạnh thực phẩm cho các cuộc du ngoại ngoài trời...</li>\r\n</ol>\r\n\r\n<p><strong>Cách sử dụng đá GEL:</strong></p>\r\n\r\n<ol>\r\n	<li><strong>Túi GEL</strong> ở dạng lỏng trước khi sủ dụng phải cho túi vào ngăn đá để cấp đông, sau khi túi đã đống cứng ta cho vào thùng xốp hoặc dụng cụ giữ lạnh để bảo quản,</li>\r\n	<li><strong>Túi GEL</strong> khi đông lạnh cứng có thể giữ lạnh hàng hóa trong vòng 20 giờ mới tan chảy.</li>\r\n	<li>Túi giữ lạnh có thể dùng được nhiều lần, tuy nhiên thời gian giữ lạnh sẽ giảm dần.</li>\r\n</ol>\r\n\r\n<p><em><strong>Lưu ý:</strong>&nbsp;Nên để túi giữ lạnh còn nguyên vẹn, không làm rách bao bì, không để chất lỏng tràn ra ngoài dính vào thức ăn, đồ uống. Không được ăn hay uống - Để xa tầm tay trẻ em</em></p>\r\n\r\n<p style="text-align: center;"><em><img alt="" src="/public/images/da%20gel.jpg" style="width: 600px; height: 406px;" /></em></p>\r\n%%%0%%%1379932901%%%vi%%%1%%%,23,', 'vi', 0, NULL, NULL),
(2, 'Đá khô CO2', 'update', 'web_article', 1416485535, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values298%%%Đá khô CO2%%%da-kho-co2%%%%%%co2-ice-pack.jpg%%%Đá khô bay hơi trực tiếp thành khí CO2 đồng thời làm lạnh các sản phẩm và vùng không khí xung quanh đến nhiệt độ mà ta mong muốn.\n%%%Đá khô CO2, CO2 ice,da CO2%%%<p><img alt="Đá khô CO2" src="http://hoangha.com/images/stories/tintuc/31-07-2012/00367543.jpg" style="opacity: 0.9; width: 334px; height: 500px; float: right; margin-left: 10px; margin-right: 10px;" /></p>\r\n<ul>\r\n	<li>\r\n	<p><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size: 12px;"><strong>Đá khô là dạng rắn của CO2</strong>, ở nhiệt độ thấp -79<sup>0</sup>C có hình dạng đá cẩm thạch trắng, tinh khiết.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size: 12px;"><strong>Đá khô bay hơi trực tiếp thành khí CO<sub>2</sub></strong>&nbsp;đồng thời làm lạnh các sản phẩm và vùng không khí xung quanh đến nhiệt độ mà ta mong muốn.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size: 12px;">Năng suất lạnh ở 0<sup>0</sup>C của <strong>đá khô</strong> là 152 Kcal/kg, gấp đôi năng suất lạnh của 1 khối nước đá có cùng trọng lượng và gấp 3 lần khối nước đá có cùng thể tích.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size: 12px;">Khí CO<sub>2</sub>&nbsp;không màu, không mùi, có khả năng ngăn chặn sự biến màu, axit hóa, sự thối rửa rau quả do nấm mốc, vi khuẩn gây ra </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size: 12px;">Có 2 dạng : </span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="margin-left: 80px;">- <strong>Đá khô dạng viên</strong> <em>(pellets)</em>, đá khô dạng sợi dùng nhiều trong vệ sinh công nghiệp</p>\r\n\r\n<p style="margin-left: 80px;">- <strong>Đá khô dạng khối</strong> <em>(block)</em> dùng trong ngành công nghiệp làm lạnh, bảo quản thực phẩm, giải trí (tạo khói)</p>\r\n\r\n<p><strong>Công dụng của đá khô:</strong></p>\r\n\r\n<ul>\r\n	<li>Vận chuyển bảo quản thực phẩm tươi sống, rau quả, trái cây ...</li>\r\n	<li>Vận chuyển bảo quản thực phẩm đông lạnh, kem, chả giò ...</li>\r\n	<li>Vận chuyển bảo quản dược phẩm.</li>\r\n	<li>Máy tạo khói mỹ thuật phục vụ cho điện ảnh, vũ trường, sân khấu, lễ cưới, liên hoan.</li>\r\n	<li>Lưu trữ thi hài, đám tang.</li>\r\n	<li>Sử dụng trong vệ sinh công nghiệp: làm sạch khuôn đế giầy.</li>\r\n	<li>Sử dụng trong công nghiệp hóa chất: vệ sinh máy in.</li>\r\n	<li>Sử dụng trong vệ sinh turbin: máy phát điện.</li>\r\n	<li>Sử dụng trong sản xuất công nghiệp.</li>\r\n</ul>\r\n\r\n<p><em><strong>Lưu ý:</strong>&nbsp;cẩn thận khi sử dụng, phải bao tay bảo hộ vì nhiệt độ có thể làm bỏng da. Không được ăn hay uống - Để xa tầm tay trẻ em</em></p>\r\n%%%0%%%1379932781%%%vi%%%1%%%,23,', 'vi', 0, NULL, NULL),
(3, 'Các loại container', 'update', 'web_article', 1416485545, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values297%%%Các loại container%%%cac-loai-container%%%%%%sea-container.jpg%%%Các loại container đường biển được chia thành hai nhóm chính: theo tiêu chuẩn và không theo tiêu chuẩn ISO. Loại không theo tiêu chuẩn có thể tương tự container ISO về hình dáng kích thước, nhưng không được sử dụng rộng rãi và nhất quán do không được tiêu chuẩn hóa. %%%Các loại container%%%<h2>Các loại container đường biển được chia thành hai nhóm chính: theo tiêu chuẩn và không theo tiêu chuẩn ISO. Loại không theo tiêu chuẩn có thể tương tự container ISO về hình dáng kích thước, nhưng không được sử dụng rộng rãi và nhất quán do không được tiêu chuẩn hóa.&nbsp;</h2>\r\n\r\n<p>Ở đây, bài viết này chỉ xem xét các loại container theo tiêu chuẩn ISO (ISO container). Theo tiêu chuẩn ISO 6346 (1995), container đường biển bao gồm 7 loại chính. Loại container được thể hiện qua&nbsp;<a href="http://sotrans.com.vn/index.php?option=com_content&amp;view=article&amp;id=1121%3Aky-ma-hieu-container&amp;catid=93&amp;Itemid=307&amp;lang=vi">Ký mã hiệu trên vỏ container</a>.</p>\r\n\r\n<div>\r\n<ul>\r\n	<li>Container bách hóa (General purpose container)</li>\r\n	<li>Container hàng rời (Dry bulk container / Bulk container)</li>\r\n	<li>Container chuyên dụng: chở súc vật, ô tô…&nbsp;<br />\r\n	(Named cargo containers: Livestock container, Automobile containers…)</li>\r\n	<li>Container bảo ôn (Thermal container)</li>\r\n	<li>Container hở mái (Open-top container)</li>\r\n	<li>Container mặt bằng (Platform container)</li>\r\n	<li>Container bồn (Tank container)</li>\r\n</ul>\r\n</div>\r\n\r\n<table _mce_new="1" border="0" cellpadding="0" cellspacing="10" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2"><strong>1. Container bách hóa (General purpose container):</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="iso-container-20ft" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/iso-container-20ft.jpg" style="border-width: 0px; border-style: solid; width: 150px; height: 121px;" /></td>\r\n			<td>Container bách hóa thường được sử dụng để chở hàng khô, nên còn được gọi là container khô (dry container, viết tắt là 20’DC hay 40’DC). Loại container này được sử dụng phổ biến nhất trong vận tải biển.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>2. Container hàng rời (Bulk container)</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="bulk-container-4" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/bulk-container-4.jpg" style="border-width: 0px; border-style: solid; height: 150px; width: 150px;" /></td>\r\n			<td>\r\n			<div>Là loại container cho phép xếp hàng rời khô (xi măng, ngũ cốc, quặng…) bằng cách rót từ trên xuống qua miệng xếp hàng (loading hatch), và dỡ hàng dưới đáy hoặc bên cạnh (discharge hatch). Loại container hàng rời bình thường có hình dáng bên ngoài gần giống với container bách hóa, trừ miệng xếp hàng và cửa dỡ hàng. Hình dưới đây thể hiện container hàng rời với miệng xếp hàng (phía trên) và cửa dỡ hàng (bên cạnh) đang mở.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>3. Container chuyên dụng (Named cargo containers):</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="automobile-container" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/automobile-container.jpg" style="border-width: 0px; border-style: solid; height: 90px; width: 150px;" /></td>\r\n			<td>\r\n			<p>Là loại thiết kế đặc thù chuyên để chở một loại hàng nào đó như ô tô, súc vật sống...</p>\r\n\r\n			<p>-&nbsp;Container chở ô tô:&nbsp;cấu trúc gồm một bộ khung liên kết với mặt sàn, không cần vách với mái che bọc, chuyên để chở ô tô, và có thể xếp bên trong 1 hoặc 2 tầng tùy theo chiều cao xe. (Hiện nay, người ta vẫn chở ô tô trong container bách hóa khá phổ biến).</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="livestock-container" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/livestock-container.jpg" style="border-width: 0px; border-style: solid; height: 113px; width: 150px;" /></td>\r\n			<td>\r\n			<p>-&nbsp;Container chở súc vật:&nbsp;được thiết kế đặc biệt để chở gia súc. Vách dọc hoặc vách mặt trước có gắn cửa lưới nhỏ để thông hơi. Phần dưới của vách dọc bố trí lỗ thoát bẩn khi dọn vệ sinh.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>4. Container bảo ôn (Thermal container):&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="container lạnh" src="http://www.container-transportation.com/image-files/refer-container-2.jpg" style="border-width: 0px; border-style: solid; height: 93px; width: 150px;" /></td>\r\n			<td>\r\n			<p>Được thiết kế để chuyên chở các loại hàng đòi hỏi khống chế nhiệt độ bên trong container ở mức nhất định. Vách và mái loại này thường bọc phủ lớp cách nhiệt. Sàn làm bằng nhôm dạng cấu trúc chữ T (T-shaped) cho phép không khí lưu thông dọc theo sàn và đến những khoảng trống không có hàng trên sàn.</p>\r\n\r\n			<div>Container bảo ôn thường có thể duy trì nhiệt độ nóng hoặc lạnh. Thực tế thường gặp container lạnh (refer container)</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>5. Container hở mái (Open-top container):</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="container hở mái" src="http://www.container-transportation.com/image-files/open-top-container.jpg" style="border-width: 0px; border-style: solid; height: 133px; width: 150px;" /></td>\r\n			<td>\r\n			<p>Container hở mái được thiết kế thuận tiện cho việc đóng hàng vào và rút hàng ra qua mái container. Sau khi đóng hàng, mái sẽ được phủ kín bằng vải dầu. Loại container này dùng để chuyên chở hàng máy móc thiết bị hoặc gỗ có thân dài.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>6. Container mặt bằng (Platform container):&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="platform-container-1" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/platform-container-1.jpg" style="border-width: 0px; border-style: solid; height: 57px; width: 150px;" /></td>\r\n			<td>Được thiết kế không vách, không mái mà chỉ có sàn là mặt bằng vững chắc, chuyên dùng để vận chuyển hàng nặng như máy móc thiết bị, sắt thép…</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><img alt="platform-container" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/platform-container.gif" style="border-width: 0px; border-style: solid; height: 150px; width: 150px;" /></p>\r\n			</td>\r\n			<td>Container mặt bằng có loại có vách hai đầu (mặt trước và mặt sau), vách này có thể cố định, gập xuống, hoặc có thể tháo rời.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2"><strong>7. Container bồn (Tank container):&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt="tank_container-1" src="http://sotrans.com.vn/images/stories/Phan%20loai%20Container/tank_container-1.jpg" style="border-width: 0px; border-style: solid; height: 125px; width: 150px;" /></td>\r\n			<td>\r\n			<p>Container bồn về cơ bản gồm một khung chuẩn ISO trong đó gắn một bồn chứa, dùng để chở hàng lỏng như rượu, hóa chất, thực phẩm… Hàng được rót vào qua miệng bồn (manhole) phía trên mái container, và được rút ra qua van xả (Outlet valve) nhờ tác dụng của trọng lực hoặc rút ra qua miệng bồn bằng bơm.</p>\r\n\r\n			<p>Trên thức tế, tùy theo mục đích sử dụng, người ta còn phân loại container theo kích thước (20&#39;; 40&#39;...), theo vật liệu chế tạo (nhôm, thép...).</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n%%%1%%%1379932439%%%vi%%%1%%%,19,', 'vi', 0, NULL, NULL),
(4, 'Mã container', 'update', 'web_article', 1416485555, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values277%%%Mã container%%%ma-container%%%%%%container-code.gif%%%Trên container có rất nhiều loại ký, mã hiệu thể hiện những ý nghĩa khác nhau. Tiêu chuẩn hiện hành quy định đối với các ký mã hiệu container là ISO 6346:1995\n%%%Mã container,ma container%%%<h2>Trên container có rất nhiều loại ký, mã hiệu thể hiện những ý nghĩa khác nhau. Tiêu chuẩn hiện hành quy định đối với các ký mã hiệu container là ISO 6346:1995, theo đó, các nhãn hiệu này chia thành những loại chính sau:</h2>\r\n\r\n<div>\r\n<ul>\r\n	<li>Hệ thống nhận biết (identification system)</li>\r\n	<li>Mã kích thước và mã loại (size and type codes)</li>\r\n	<li>Các ký hiệu khai thác (operational markings)</li>\r\n</ul>\r\n</div>\r\n\r\n<p><strong>1. Hệ thống nhận biết (identification system):</strong></p>\r\n\r\n<div>\r\n<ul>\r\n	<li>Hệ thống nhận biết của container bao gồm 4 thành phần</li>\r\n	<li>Mã chủ sở hữu (owner code)</li>\r\n	<li>Ký hiệu loại thiết bị (equipment category identifier / product group code)</li>\r\n	<li>Số sê-ri (serial number / registration number)<br />\r\n	Chữ số kiểm tra (check digit)</li>\r\n</ul>\r\n</div>\r\n\r\n<p style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Tahoma, Verdana; font-size: 14px; line-height: 28px; text-align: center;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;"><img alt="Hệ thống nhận biết container" src="http://www.container-transportation.com/image-files/he-thong-nhan-biet-container.gif" style="margin: 0px; padding: 0px; border-style: solid; border-width: 0px; width: 350px; height: 104px;" /></span></span></p>\r\n\r\n<p><em>-&nbsp;Mã chủ sở hữu (owner code):</em>&nbsp;Mã chủ sở hữu (còn gọi là tiếp đầu ngữ container) bao gồm 3 chữ cái viết hoa được thống nhất và đăng ký với cơ quan đăng kiểm quốc tế thông qua cơ quan đăng kiểm quốc gia hoặc đăng kí trực tiếp với Cục container quốc tế - BIC (Bureau International des Containers et du Transport Intermodal). Sau khi đăng ký, việc sở hữu mã này mới được chính thức công nhận trên toàn thế giới. Một hãng có thể sở hữu một hoặc nhiều mã khác nhau, mặc dù BIC hạn chế điều này, và đưa ra những điều kiện nhất định cho việc đăng kí nhiều mã.<br />\r\nỞ Việt Nam, đến đầu năm 2010, có 6 công ty đăng kí mã tiếp đầu ngữ với BIC, chi tiết như dưới đây.</p>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="10" style="color: rgb(0, 0, 0); font-family: arial, tahoma, verdana; font-size: 14px; height: 28px; line-height: 28px; text-align: center; width: 40%; margin: auto;">\r\n	<tbody style="text-align: left;">\r\n		<tr>\r\n			<td style="text-align: center;" valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px; text-align: left;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;"><strong>TT</strong></span></span></p>\r\n			</td>\r\n			<td style="text-align: center;" valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px; text-align: left;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;"><strong>Mã BIC</strong></span></span></p>\r\n			</td>\r\n			<td style="text-align: center;" valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px; text-align: left;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;"><strong>Tên công ty</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">1</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">GMDU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Gemadept</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">2</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">GMTU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Gematrans</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">3</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">NSHU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Nam Trieu shipping</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">4</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">VCLU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Vinashin-TGC</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">5</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">VNLU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Vinalines container</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="42">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">6</span></span></p>\r\n			</td>\r\n			<td valign="top" width="79">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">VNTU</span></span></p>\r\n			</td>\r\n			<td valign="top" width="171">\r\n			<p style="margin: 0px; padding: 0px;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;">Vinashin-TGC</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em>(Ghi chú: container đầu ngữ GMTU hiện do Gemadept quản lý; Vinashin-TGC đăng ký 2 tiếp đầu ngữ VCLU và VNTU)</em></p>\r\n\r\n<p>Một số công ty khác đang sở hữu, khai thác container với những đầu ngữ nhất định, nhưng chưa đăng ký với BIC, chẳng hạn như Biển Đông dùng đầu ngữ BISU, Vinafco dùng đầu ngữ VFCU... Việc sử dụng các đầu ngữ không đăng ký như vậy có một số bất lợi. Thứ nhất, điều này trái với nội dung quy định trong Phụ lục G của tiêu chuẩn ISO 6343, có điều khoản quy định về đăng ký mã xác định chủ sở hữu với BIC để được bảo vệ quyền sở hữu đối với mã này trên phạm vi quốc tế. Thứ hai, BIC khuyến cáo, container không được đăng ký tiếp đầu ngữ, trong quá trình lưu thông, có thể bị hải quan giữ, kiểm tra, và có thể không được lưu thông tự do như trong Công ước hải quan về container (Customs Convention on Containers) quy định. Điều này sẽ gây bất lợi hoặc thậm chí cản trở toàn bộ quá trình vận tải. Thứ ba, việc không đăng ký và không được thừa nhận về quyền sở hữu đối với tiếp đầu ngữ và kéo theo là quyền sở hữu container dễ dẫn đến nhầm lẫn, khiếu nại, và có thể dẫn đến mất container.</p>\r\n\r\n<p><strong>-&nbsp;Ký hiệu loại thiết bị:</strong>&nbsp;là một trong ba chữ cái dưới đây viết hoa, tương ứng với một loại thiết bị:</p>\r\n\r\n<div>\r\n<blockquote>\r\n<p>U: container chở hàng (freight container)<br />\r\nJ: thiết bị có thể tháo rời của container chở hàng (detachable freight container-related equipment)<br />\r\nZ: đầu kéo (trailer) hoặc mooc (chassis)</p>\r\n</blockquote>\r\nViệc sử dụng bất kỳ chữ cái nào không thuộc ba chữ cái trên (U; J; Z) làm ký hiệu loại thiết bị được coi là không tuân theo tiêu chuẩn ISO 6346.&nbsp;</div>\r\n\r\n<p><em>-&nbsp;Số sê-ri (serial number):</em>&nbsp;đây chính là số container, gồm 6 chữ số. Nếu số sê-ri không đủ 6 chữ số, thì các chữ số 0 sẽ được thêm vào phía trước để thành đủ 6 chữ số. Chẳng hạn, nếu số sê-ri là 1234, thì sẽ thêm 2 chữ số 0, và số sê-ri đầy đủ sẽ là 001234. Số sê-ri này do chủ sở hữu container tự đặt ra, nhưng đảm bảo nguyên tắc mỗi số chỉ sử dụng duy nhất cho một container.</p>\r\n\r\n<p><em>-&nbsp;Chữ số kiểm tra (check digit):</em> là một chữ số (đứng sau số sê-ri), dùng để kiểm tra tính chính xác của chuỗi ký tự đứng trước đó, gồm: tiếp đầu ngữ, số sê-ri. Với mỗi chuỗi ký tự gồm tiếp đầu ngữ và số sê-ri, áp dụng cách tính chữ số kiểm tra container, sẽ tính được chữ số kiểm tra cần thiết.</p>\r\n\r\n<p>Việc sử dụng số kiểm tra là để giảm thiểu rủi ro sai sót trong quá trình nhập số container. Thực tế là số container được nhiều đối tượng sử dụng (chủ hàng, forwarder, hãng tàu, hải quan…), nhiều lần, trên nhiều chứng từ (B/L, Manifest, D/O…), do đó khả năng nhập sai số là rất lớn. Mỗi số container (gồm tiếp đầu ngữ và số sê-ri) sẽ tương ứng với một chữ số kiểm tra. Do đó, việc nhập sai số phần lớn sẽ bị phát hiện do chữ số kiểm tra khác với thực tế. Tuy vậy, cũng cần lưu ý điều này không phải tuyệt đối, bởi nếu sai 2 ký tự trở lên thì có thể số kiểm tra vẫn đúng, và sai sót không bị phát hiện ra.</p>\r\n\r\n<p><strong>2. Mã kích thước và mã kiểu (size and type codes):</strong></p>\r\n\r\n<p style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Tahoma, Verdana; font-size: 14px; line-height: 28px; text-align: center;"><span style="font-size: 10pt;"><span style="font-family: arial, helvetica, sans-serif;"><img alt="Mã kích thước và mã kiểu container" src="http://www.container-transportation.com/image-files/size-and-type-code.jpg" style="margin: 0px; padding: 0px; border-style: solid; border-width: 0px; width: 250px; height: 90px;" /></span></span></p>\r\n\r\n<p>- Mã kích thước: 2 ký tự (chữ cái hoặc chữ số). Ký tự thứ nhất biểu thị chiều dài container, chữ số 4 trong ví dụ trên thể hiện chiều dài container này là 40ft (12,192m). Ký tự thứ hai biểu thị chiều rộng và chiều cao container, chữ số 2 biểu thị chiều cao 8ft 6in (2,591m).</p>\r\n\r\n<p>- Mã kiểu: 2 ký tự. Ký tự thứ nhất cho biết kiểu container, trong ví dụ trên: G thể hiện container hàng bách hóa. Ký tự thứ hai biểu thị đặc tính chính liên quan đến container, số 1 (sau chữ G) nghĩa là container có cửa thông gió phía trên.</p>\r\n\r\n<p>Tóm lại, 42G1 trong hình trên thể hiện container bách hóa dài 20ft, cao 8ft 6in, thông gió phía trên.</p>\r\n\r\n<p>Tiêu chuẩn ISO 6346:1995 quy định chi tiết ý nghĩa các mã kích thước và mã kiểu.</p>\r\n\r\n<p><strong>3. Các dấu hiệu khai thác (operational markings):</strong></p>\r\n\r\n<p>Các dấu hiệu trong khai thác gồm hai loại: bắt buộc và không bắt buộc</p>\r\n\r\n<p>- Dấu hiệu bắt buộc: tải trọng container, cảnh báo nguy hiểm điện; container cao.</p>\r\n\r\n<div>\r\n<ul>\r\n	<li>Trọng lượng tối đa (maximum gross mass) được ghi trên cửa container, số liệu tương tự như trong Biển chứng nhận an toàn CSC. Một số container cũng thể hiện trọng lượng vỏ (tare weight), trọng tải hữu ích (net weight) hay lượng hàng xếp cho phép (payload)</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Trọng lượng container tối đa" src="http://www.container-transportation.com/image-files/container-max-gross.jpg" style="border-width: 0px; border-style: solid; width: 199px; height: 87px;" /></p>\r\n\r\n<ul>\r\n	<li>Dấu hiệu cảnh báo nguy hiểm điện từ đường dây điện phía trên, dùng cho tất cả các container có lắp thang leo.</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Cảnh báo nguy hiểm điện" src="http://www.container-transportation.com/image-files/electrical-danger-symbol.gif" style="border-width: 0px; border-style: solid; width: 150px; height: 139px;" /></p>\r\n\r\n<ul>\r\n	<li>Dấu hiệu container cao trên 2,6 mét: bắt buộc đối với những container cao trên 8ft 6in (2,6m). Chẳng hạn, hình trên thể hiện container cao 9ft 6in (2,9m)</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Dấu hiệu container cao" src="http://www.container-transportation.com/image-files/high-cube-symbol.jpg" style="border-width: 0px; border-style: solid; width: 119px; height: 158px;" /></p>\r\n</div>\r\n\r\n<p>- Dấu hiệu không bắt buộc: khối lượng hữu ích lớn nhất (max net mass), mã quốc gia (country code)</p>\r\n\r\n<div>\r\n<ul>\r\n	<li>Khối lượng hữu ích lớn nhất (max net mass) dán trên cửa container, phía dưới dấu hiệu trọng lượng container tối đa.</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Khối lượng hữu ích lớn nhất của container" src="http://www.container-transportation.com/image-files/container-net-weight.jpg" style="border-width: 0px; border-style: solid; width: 186px; height: 77px;" /></p>\r\n\r\n<ul>\r\n	<li>Mã quốc gia (<a href="http://sotrans.com.vn/index.php?option=com_content&amp;view=article&amp;id=1110%3Aquoc-ky-cac-quoc-gia-a-i&amp;catid=92&amp;Itemid=305&amp;lang=vi" target="_blank" title="Open a new window">country code</a>) gồm 2 chữ cái viết tắt thể hiện tên quốc gia sở hữu container. Trong hình dưới đây, US viết tắt của United Stated Hoa Kỳ.</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Mã quốc gia sở hữu container" src="http://www.container-transportation.com/image-files/country-code-symbol.jpg" style="border-width: 0px; border-style: solid; width: 254px; height: 90px;" /></p>\r\n</div>\r\n\r\n<p>Ngoài ba loại ký mã hiệu chính, trên vỏ container còn các dấu hiệu mô tả các thông tin cần thiết khác.</p>\r\n\r\n<div>\r\n<ul>\r\n	<li>Biển chứng nhận an toàn CSC</li>\r\n	<li>Biển Chấp nhận của hải quan</li>\r\n	<li>Ký hiệu của tổ chức đường sắt quốc tế UIC (IC codes)</li>\r\n	<li>Logo hãng đăng kiểm</li>\r\n	<li>Test plate (của đăng kiểm), dấu hiệu xếp chồng (stacking height)</li>\r\n	<li>Tên hãng (Maersk, MSC…), logo, slogan (nếu có)</li>\r\n	<li>Mác hãng chế tạo (CIMC, VTC…)</li>\r\n	<li>Ghi chú vật liệu chế tạo vách container (corten steel), hướng dẫn sửa chữa (…repaired only with corten steel)</li>\r\n	<li>Bảng vật liệu chế tạo các bộ phận container; các lưuý…</li>\r\n	<li>Thông tin về xử lý gỗ (ván sàn)</li>\r\n	<li>Nhãn hàng nguy hiểm (nếu có)</li>\r\n</ul>\r\n</div>\r\n%%%1%%%1376317052%%%vi%%%1%%%,19,', 'vi', 0, NULL, NULL),
(5, 'FCL - Full Container Load', 'update', 'web_article', 1416485564, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values276%%%FCL - Full Container Load%%%fcl-full-container-load%%%%%%fcl-lcl.jpg%%%FCL là chữ viết tắt của cụm từ "Full Container Load" được sử dụng trong ngành công nghiệp vận tải biển quốc tế cho xuất khẩu và nhập khẩu hàng hóa vận tải đường biển.\n%%%FCL,Full Container Load%%%<p><strong>FCL = Full Container Load</strong><img alt="customs brokerage" src="http://hoangha.com/images/stories/tintuc/31-07-2012/customs_brokerage.jpg" style="height: 217px; width: 400px; float: right; margin-left: 10px; margin-right: 10px;" /></p>\r\n\r\n<h2>FCL là chữ viết tắt của cụm từ "Full Container Load" được sử dụng trong ngành công nghiệp vận tải biển quốc tế cho xuất khẩu và nhập khẩu hàng hóa vận tải đường biển.</h2>\r\n\r\n<p>Thuật ngữ này thường được sử dụng để mô tả một dịch vụ đường biển quốc tế được thiết kế cho các lô hàng vận chuyển hàng hóa đại dương của hàng hoá mà một nước xuất khẩu, nhập khẩu có sử dụng độc quyền của một container vận tải biển chuyên dụng (thường là một container 20ft hoặc 40ft). Container vận chuyển hàng hóa bằng đường biển thường được nạp và đóng dấu tại gốc và sau đó được vận chuyển bằng một sự kết hợp của đường biển, đường sắt và / hoặc đường bộ đến nơi cuối.</p>\r\n\r\n<p><strong>LCL = Less than Container Load</strong></p>\r\n\r\n<p>Khi bạn không có đủ hàng hóa (hoặc có lẽ bạn phải vận chuyển hàng hóa nhiều) cho một container (FCL), bạn cần dịch vụ LCL của chúng tôi. Đây là một dịch vụ vận tải biển mà nhóm một số khách hàng lô hàng với nhau thành một tải container và được lô hàng của bạn di chuyển không chậm trễ. GBS cung cấp hàng lẻ khởi hành từ và đến các cảng chính trên toàn thế giới.</p>\r\n%%%1%%%1376317044%%%vi%%%1%%%,19,', 'vi', 0, NULL, NULL),
(6, 'Lịch sử phát triển HIL', 'update', 'web_article', 1416485572, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values272%%%Lịch sử phát triển HIL%%%lich-su-phat-trien%%%%%%lich-su-phat-trien.jpg%%%Thành lập Công ty Cổ phần Quốc tế Logistics Hoàng Hà Giấy phép số 711/GP-UB TP. Thành lập kho bảo quản và sơ chế hàng hóa xuất nhập khẩu.\r\n%%%Lịch sử phát triển Hoàng Hà,HIL từ năm 1992%%%<table border="0" cellpadding="0" cellspacing="10" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>1992</strong></td>\r\n			<td>- Thành lập Công ty TNHH Thương mại Hoàng Hà Giấy phép số 711/GP-UB TP</td>\r\n			<td rowspan="22" style="vertical-align: top;">\r\n			<p><img alt="HH 02" src="http://hoangha.com/images/stories/about_uss/HH_02.jpg" style="width: 400px; height: 266px;" /></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1993</strong></td>\r\n			<td>- Thành lập kho bảo quản và sơ chế hàng hóa xuất nhập khẩu.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1994</strong></td>\r\n			<td>- Phát triển ngành vận tải hàng không với nhiều hãng bay: Việt Nam Airlines, TG, CX, SQ, BR .</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>- Trở thành đại lý giao nhận quốc tế.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1995</strong></td>\r\n			<td>- Đại lý hàng đầu Việt Nam Airlines</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>- Vinh dự nhận bằng khen hạng I của Việt Nam Airlines</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1996</strong></td>\r\n			<td>- Lập xưởng bao bì và đội xe vận tải</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1997</strong></td>\r\n			<td>- Lập văn phòng sân bay tại 63 Trường Sơn, phường 2, quận Tân Bình, TP. Hồ Chí Minh</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1998</strong></td>\r\n			<td>- Đại lý hàng đầu các hãng hàng không quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1999</strong></td>\r\n			<td>- Thành viên IATA, FIATA, VIFFAS,VASEF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>- Thành lập văn phòng tại Hà Nội</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2000</strong></td>\r\n			<td>- Thành lập văn phòng tại Đà Nẵng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2001</strong></td>\r\n			<td>- Lập Trung tâm Dịch vụ - Giao nhận - Thương mại tại 63 Trường Sơn, quận Tân Bình, TP. HCM.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2002</strong></td>\r\n			<td>- Thiết lập mạng lưới giao nhận quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2003</strong></td>\r\n			<td>- Lập xưởng đông lạnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2004</strong></td>\r\n			<td>- Đại lý hàng đầu IATA tại Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2005</strong></td>\r\n			<td>- Xây dựng tiêu chuẩn ISO: 9001-2000</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2006</strong></td>\r\n			<td>- Chuyên nghiệp hóa giao nhận quốc tế logistics..</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2007</strong></td>\r\n			<td>- Thiết lập hệ thống quản lý phân phối hàng hóa quốc tế logistics</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2008</strong></td>\r\n			<td>- Trở thành Công ty Cổ phần Quốc tế Logistics Hoàng Hà</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2009</strong></td>\r\n			<td>- Đạt danh hiệu Thương Hiệu Mạnh Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2011</strong></td>\r\n			<td>- Thành lập văn phòng tại Cần Thơ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n%%%0%%%1381577280%%%vi%%%1%%%,40,', 'vi', 0, NULL, NULL),
(7, 'Giới thiệu trang chủ', 'update', 'web_article', 1416485578, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values271%%%Giới thiệu trang chủ%%%gioi-thieu-trang-chu%%%%%%%%%Công ty cổ phần quốc tế Lô-Gi-Stic Hoàng Hà (HIL) được thành lập từ năm 1992.\r\n%%%Giới thiệu trang chủ%%%<h1>Công ty cổ phần quốc tế Lô-Gi-Stic Hoàng Hà (HIL) được thành lập từ năm 1992.</h1>\r\n\r\n<p>HIL là một trong những công ty cung cấp dịch vụ logistics sớm nhất ở Việt Nam.</p>\r\n\r\n<p>Dịch vụ của chúng tôi bao gồm: dịch vụ hàng không, dịch vụ tàu biển, đường bộ, xuất nhập khẩu, khai hải quan, chứng từ xuất nhập khẩu, giao hàng tận nơi, kho bãi.</p>\r\n\r\n<p>Dịch vụ vận chuyển hàng không HIL là lựa chọn tốt nhất cho những loại hàng hóa yêu cầu hạn định thời gian. Đội HIL Cargo sẽ thiết kế những giải pháp tình huống phù hợp nhất với nhu cầu của bạn.</p>\r\n%%%1%%%1376306760%%%vi%%%1%%%,39,', 'vi', 0, NULL, NULL),
(8, 'Trang chủ 2', 'update', 'web_slider_banner', 1416485892, 'admin', '`id`,`name`,`url_img`,`url`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values9%%%Trang chủ 2%%%slider-home-2.jpg%%%javascript:;%%%2%%%vi%%%1%%%1%%%,1,', 'vi', 0, NULL, NULL),
(9, 'Số SP / trang', 'update', 'web_config', 1416486264, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values6%%%Số SP / trang%%%limit_2%%%10%%%vi%%%1', 'vi', 0, NULL, NULL),
(10, 'Tên trang website', 'update', 'web_config', 1416486364, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values33%%%Tên trang website%%%site_name%%%HOANG HA HIL%%%vi%%%1', 'vi', 0, NULL, NULL),
(11, 'Số sách trên trang chủ', 'update', 'web_config', 1416486412, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values33%%%Số sách trên trang chủ%%%limit_home%%%5%%%vi%%%1', 'vi', 0, NULL, NULL),
(12, 'Số sách trên trang chủ', 'update', 'web_config', 1416486419, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values33%%%Số sách trên trang chủ%%%limit_home%%%2%%%vi%%%1', 'vi', 0, NULL, NULL),
(13, '4 số hotline service', 'delete', 'web_config', 1416486422, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values31%%%4 số hotline service%%%hotline_service%%%08 6262 1234,08 6263 1234,08 6264 1234,08 6265 1234%%%vi%%%1', 'vi', 0, NULL, NULL),
(14, 'Books', 'update', 'web_menu_type', 1416486478, 'admin', '`id`,`name`,`description`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values3%%%Books%%%Sách%%%public/images/books/%%%public/_thumbs/Images/books/%%%vi%%%3%%%1', 'vi', 0, NULL, NULL),
(15, 'Số sách / trang', 'update', 'web_config', 1416486715, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values6%%%Số sách / trang%%%limit_2%%%10%%%vi%%%1', 'vi', 0, NULL, NULL),
(16, 'Số sách / trang', 'update', 'web_config', 1416486760, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values6%%%Số sách / trang%%%limit_2%%%2%%%vi%%%1', 'vi', 0, NULL, NULL),
(17, 'Số sách / trang', 'update', 'web_config', 1416486775, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values6%%%Số sách / trang%%%limit_2%%%40%%%vi%%%1', 'vi', 0, NULL, NULL),
(18, 'Đá GEL - Túi giữ lạnh', 'update', 'web_article', 1416487231, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values299%%%Đá GEL - Túi giữ lạnh%%%da-gel-tui-giu-lanh%%%su-kien/da-gel-tui-giu-lanh.html%%%da gel.jpg%%%Túi giữ lạnh là sản phẩm GEL được sản xuất theo công nghệ tiên tiến của hãng NORTHWEST Hoa Kỳ.\r\n%%%Đá GEL,Túi giữ lạnh,da gel,tui giu lanh%%%<h2>Túi giữ lạnh là sản phẩm GEL được sản xuất theo công nghệ tiên tiến của hãng NORTHWEST Hoa Kỳ</h2>\r\n\r\n<p><strong>GEL</strong> khi hòa tan trong nước tạo thành hỗn hợp có độ dẻo kết dính tự nhiên. Sau khi được đông cứng GEL luôn tỏa lạnh trong điều kiện bảo ôn, giữ cho hàng hóa luôn tươi tốt.</p>\r\n\r\n<p><strong>Túi lạnh</strong> không độc hại và gây phản ứng phụ cho người sử dụng</p>\r\n\r\n<p><strong>Công dụng đá GEL:</strong></p>\r\n\r\n<ol>\r\n	<li>Đặc biệt dùng cho hải sản tươi sống và rau củ quả tươi dùng cho xuất khẩu.</li>\r\n	<li><em><strong>Bảo quản tân dược</strong></em></li>\r\n	<li>Ngoài ra <strong>đá&nbsp;GEL</strong> còn công dụng khác như: chườm nóng lạnh khi bị sốt cao, giữ lạnh thực phẩm cho các cuộc du ngoại ngoài trời...</li>\r\n</ol>\r\n\r\n<p><strong>Cách sử dụng đá GEL:</strong></p>\r\n\r\n<ol>\r\n	<li><strong>Túi GEL</strong> ở dạng lỏng trước khi sủ dụng phải cho túi vào ngăn đá để cấp đông, sau khi túi đã đống cứng ta cho vào thùng xốp hoặc dụng cụ giữ lạnh để bảo quản,</li>\r\n	<li><strong>Túi GEL</strong> khi đông lạnh cứng có thể giữ lạnh hàng hóa trong vòng 20 giờ mới tan chảy.</li>\r\n	<li>Túi giữ lạnh có thể dùng được nhiều lần, tuy nhiên thời gian giữ lạnh sẽ giảm dần.</li>\r\n</ol>\r\n\r\n<p><em><strong>Lưu ý:</strong>&nbsp;Nên để túi giữ lạnh còn nguyên vẹn, không làm rách bao bì, không để chất lỏng tràn ra ngoài dính vào thức ăn, đồ uống. Không được ăn hay uống - Để xa tầm tay trẻ em</em></p>\r\n\r\n<p style="text-align: center;"><em><img alt="" src="/public/images/da%20gel.jpg" style="width: 600px; height: 406px;" /></em></p>\r\n%%%0%%%1379932860%%%vi%%%1%%%,7,', 'vi', 0, NULL, NULL),
(19, 'Đá GEL - Túi giữ lạnh', 'update', 'web_article', 1416487251, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values299%%%Đá GEL - Túi giữ lạnh%%%da-gel-tui-giu-lanh%%%su-kien/da-gel-tui-giu-lanh.html%%%da gel.jpg%%%Túi giữ lạnh là sản phẩm GEL được sản xuất theo công nghệ tiên tiến của hãng NORTHWEST Hoa Kỳ.\r\n%%%Đá GEL,Túi giữ lạnh,da gel,tui giu lanh%%%<h2>Túi giữ lạnh là sản phẩm GEL được sản xuất theo công nghệ tiên tiến của hãng NORTHWEST Hoa Kỳ</h2>\r\n\r\n<p><strong>GEL</strong> khi hòa tan trong nước tạo thành hỗn hợp có độ dẻo kết dính tự nhiên. Sau khi được đông cứng GEL luôn tỏa lạnh trong điều kiện bảo ôn, giữ cho hàng hóa luôn tươi tốt.</p>\r\n\r\n<p><strong>Túi lạnh</strong> không độc hại và gây phản ứng phụ cho người sử dụng</p>\r\n\r\n<p><strong>Công dụng đá GEL:</strong></p>\r\n\r\n<ol>\r\n	<li>Đặc biệt dùng cho hải sản tươi sống và rau củ quả tươi dùng cho xuất khẩu.</li>\r\n	<li><em><strong>Bảo quản tân dược</strong></em></li>\r\n	<li>Ngoài ra <strong>đá&nbsp;GEL</strong> còn công dụng khác như: chườm nóng lạnh khi bị sốt cao, giữ lạnh thực phẩm cho các cuộc du ngoại ngoài trời...</li>\r\n</ol>\r\n\r\n<p><strong>Cách sử dụng đá GEL:</strong></p>\r\n\r\n<ol>\r\n	<li><strong>Túi GEL</strong> ở dạng lỏng trước khi sủ dụng phải cho túi vào ngăn đá để cấp đông, sau khi túi đã đống cứng ta cho vào thùng xốp hoặc dụng cụ giữ lạnh để bảo quản,</li>\r\n	<li><strong>Túi GEL</strong> khi đông lạnh cứng có thể giữ lạnh hàng hóa trong vòng 20 giờ mới tan chảy.</li>\r\n	<li>Túi giữ lạnh có thể dùng được nhiều lần, tuy nhiên thời gian giữ lạnh sẽ giảm dần.</li>\r\n</ol>\r\n\r\n<p><em><strong>Lưu ý:</strong>&nbsp;Nên để túi giữ lạnh còn nguyên vẹn, không làm rách bao bì, không để chất lỏng tràn ra ngoài dính vào thức ăn, đồ uống. Không được ăn hay uống - Để xa tầm tay trẻ em</em></p>\r\n\r\n<p style="text-align: center;"><em><img alt="" src="/public/images/da%20gel.jpg" style="width: 600px; height: 406px;" /></em></p>\r\n%%%0%%%1379932860%%%vi%%%1%%%,2,7,', 'vi', 0, NULL, NULL),
(20, 'tracing_express', 'update', 'web_menu_type', 1416643090, 'admin', '`id`,`name`,`description`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values11%%%tracing_express%%%Tracing Express%%%%%%%%%vi%%%11%%%0', 'vi', 0, NULL, NULL),
(21, 'Giỏ hàng', 'create', 'web_menu', 1416643117, 'admin', '', 'vi', 0, NULL, NULL),
(22, 'Từ Liêm', 'update', 'web_listdistricts', 1416644525, 'admin', '`id`,`name`,`deliverycosts`,`city_id`,`order`,`lang`,`status`fields%%%values113%%%Từ Liêm%%%10000%%%2%%%1%%%vi%%%1', 'vi', 0, NULL, NULL),
(23, 'Cần Thơ', 'update', 'web_listcity', 1416644528, 'admin', '`id`,`name`,`deliverycosts`,`order`,`lang`,`status`fields%%%values72%%%Cần Thơ%%%30000%%%0%%%vi%%%1', 'vi', 0, NULL, NULL),
(24, 'Sóc Sơn', 'update', 'web_listdistricts', 1416644633, 'admin', '`id`,`name`,`deliverycosts`,`city_id`,`order`,`lang`,`status`fields%%%values115%%%Sóc Sơn%%%0%%%2%%%3%%%vi%%%1', 'vi', 0, NULL, NULL),
(25, 'Hotline', 'status', 'web_config', 1416647486, 'admin', '1', 'vi', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu`
--

CREATE TABLE IF NOT EXISTS `web_menu` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_alias` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_img` varchar(150) DEFAULT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `web_menu`
--

INSERT INTO `web_menu` (`id`, `name`, `name_alias`, `url`, `url_img`, `title`, `description`, `tags`, `parent`, `order`, `other`, `lang`, `status`, `type_id`, `position_id`) VALUES
(1, 'Trang chủ', 'trang-chu', 'http://localhost/all/sachhuongnghiep/', '', 'Sách hướng nghiệp', 'Mô tả Sách hướng nghiệp', 'Sách hướng nghiệp', 0, 1, 0, 'vi', 1, 1, ',2,3,'),
(2, 'Hướng nghiệp', 'huong-nghiep', 'huong-nghiep/', '', 'Hướng nghiệp', 'Hướng nghiệp', 'hướng nghiệp,huong nghiep', 0, 2, 0, 'vi', 1, 2, ',2,3,'),
(3, 'Sách hay', 'sach-hay', 'sach-hay/', '', 'Sách hay', 'Sách hay', 'sách hay,sach hay', 0, 3, 0, 'vi', 1, 3, ',2,3,'),
(4, 'Tính cách', 'tinh-cach', 'tinh-cach/', '', 'Tính cách', 'Tính cách', 'tính cách,tinh cach', 0, 4, 0, 'vi', 1, 2, ',2,3,'),
(5, 'Tuyển sinh Đại Học', 'tuyen-sinh-dai-hoc', 'tuyen-sinh-dai-hoc/', '', 'Tuyển sinh Đại Học', 'Tuyển sinh Đại Học', 'tuyển sinh đại học,tuyen sinh dai hoc', 0, 5, 0, 'vi', 1, 2, ',2,3,'),
(6, 'Chia sẻ', 'chia-se', 'chia-se/', '', 'Chia sẻ', 'Chia sẻ', 'chia sẻ,chia se', 0, 6, 0, 'vi', 1, 2, ',2,3,'),
(7, 'Sự kiện', 'su-kien', 'su-kien/', '', 'Sự kiện', 'Sự kiện', 'sự kiện,su kien', 0, 7, 0, 'vi', 1, 2, ',2,3,'),
(8, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'liên hệ,lien he', 0, 8, 0, 'vi', 1, 13, ',2,3,'),
(9, 'Sách mới', 'sach-moi', 'sach-moi/', '', 'Sách mới', 'Sách mới', 'sách mới,sach moi', 1, 1, 1, 'vi', 1, 3, ',9,'),
(10, 'Sách bán chạy', 'sach-ban-chay', 'sach-ban-chay/', '', 'Sách bán chạy', 'Sách bán chạy', 'sách bán chạy,sach ban chay', 1, 2, 1, 'vi', 1, 3, ',9,'),
(11, 'Sách nổi bật', 'sach-noi-bat', 'sach-noi-bat/', '', 'Sách nổi bật', 'Sách nổi bật', 'sách nổi bật,sach noi bat', 1, 3, 1, 'vi', 1, 3, ',9,'),
(12, 'Giỏ hàng', 'gio-hang', 'gio-hang/', '', 'Giỏ hàng', 'Giỏ hàng', 'giỏ hàng,gio hang', 0, 30, 0, 'vi', 1, 11, ',9,');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `web_menu_admin`
--

INSERT INTO `web_menu_admin` (`id`, `name`, `url`, `url_img`, `order`, `other`, `ajax`, `status`) VALUES
(1, 'Trang chủ', 'home', 'icon-home.jpg', 1, 0, NULL, 1),
(2, 'Cấu hình website', 'web_config', 'icon-cau-hinh.jpg', 2, 1, NULL, 1),
(3, 'Danh mục menu', 'web_menu', 'icon-menu.jpg', 3, 0, NULL, 1),
(4, 'Thông tin, bài viết', 'web_article', 'icon-info.jpg', 4, 0, NULL, 1),
(5, 'Thông tin sách', 'web_product', 'icon-product.jpg', 5, 0, NULL, 1),
(6, 'Thư viện ảnh', 'web_photo', 'icon-thu-vien-anh.jpg', 6, 0, NULL, 0),
(7, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 7, 0, NULL, 0),
(8, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 8, 1, NULL, 1),
(9, 'DS Tỉnh - Thành', 'web_listcity', 'icon-city.jpg', 9, 0, NULL, 1),
(10, 'DS Quận - Huyện', 'web_listdistricts', 'icon-districts.jpg', 10, 0, NULL, 1),
(11, 'Đơn đặt hàng', 'web_product_order', 'icon-order.jpg', 11, 0, '<span id="web_product_order" class="ajax_thongtin"></span>', 1),
(12, 'Đơn đặt hàng chi tiết', 'web_product_order_detail', 'icon-order-detail.jpg', 12, 1, '', 1),
(13, 'Cấu hình forum', 'forum_config', 'icon-cau-hinh.jpg', 13, 0, NULL, 0),
(14, 'Danh mục forum', 'forum_menu', 'icon-menu.jpg', 14, 0, NULL, 0),
(15, 'Bài viết forum', 'forum_article', 'icon-info.jpg', 15, 0, NULL, 0),
(16, 'Comment forum', 'forum_article_cm', 'icon-info.jpg', 16, 1, NULL, 0),
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `web_menu_position`
--

INSERT INTO `web_menu_position` (`id`, `name`, `order`, `status`) VALUES
(1, 'Top', 1, 1),
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
  `url_img` varchar(100) NOT NULL,
  `url_img_thumb` varchar(100) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `order` int(2) NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `web_menu_type`
--

INSERT INTO `web_menu_type` (`id`, `name`, `description`, `url_img`, `url_img_thumb`, `lang`, `order`, `status`) VALUES
(1, 'site', 'Trang chủ', '', '', 'vi', 1, 1),
(2, 'article', 'Thông tin bài viết', 'public/images/articles/', 'public/_thumbs/Images/articles/', 'vi', 2, 1),
(3, 'product', 'Sách', 'public/images/books/', 'public/_thumbs/Images/books/', 'vi', 3, 1),
(4, 'service_all', 'Tất cả dịch vụ', 'public/images/articles/', 'public/_thumbs/Images/articles/', 'vi', 4, 0),
(5, 'service_item', 'Dịch vụ', 'public/images/articles/', 'public/_thumbs/Images/articles/', 'vi', 5, 0),
(6, 'video', 'Video', 'public/images/videos/', 'public/_thumbs/Images/videos/', 'vi', 6, 0),
(7, 'location', 'Văn phòng', 'public/images/articles/', 'public/_thumbs/Images/articles/', 'vi', 7, 0),
(8, 'sale_online', 'Sale Online', '', '', 'vi', 8, 0),
(9, 'booking_online', 'Booking Online', '', '', 'vi', 9, 0),
(10, 'track_trace', 'Track & trace', '', '', 'vi', 10, 0),
(11, 'payment', 'Đặt hàng', '', '', 'vi', 11, 1),
(12, 'timezone', 'Bảng giờ', '', '', 'vi', 12, 0),
(13, 'contact', 'Liên hệ', '', '', 'vi', 13, 1),
(14, 'no', 'Không', '', '', 'vi', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_photo`
--

CREATE TABLE IF NOT EXISTS `web_photo` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `url_img` varchar(150) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `url_img` varchar(150) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `price` int(7) NOT NULL,
  `price_cost` int(7) DEFAULT NULL,
  `content` text NOT NULL,
  `more` varchar(500) DEFAULT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `web_product`
--

INSERT INTO `web_product` (`id`, `name`, `name_alias`, `code`, `url`, `url_img`, `description`, `tags`, `price`, `price_cost`, `content`, `more`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(3, 'Người Thầy Tuyệt Vời - Dưới Mái Trường', 'nguoi-thay-tuyet-voi-duoi-mai-truong', '01', 'sach-hay/nguoi-thay-tuyet-voi-duoi-mai-truong.html', 'nguoi-thay-tuyet-voi-duoi-mai-truong.jpg', 'Bộ sách Dưới Mái Trường bao gồm những mẩu chuyện sống động về lứa tuổi học trò, về các thầy cô giáo và những bậc làm cha mẹ - một mảng hiện thực trong cuộc sống muôn màu muôn vẻ của chúng ta.', 'người thầy tuyệt vời dưới mái trường,nguoi thay tuyet voi duoi mai truong', 39000, 0, '<p>Bộ sách&nbsp;Dưới Mái Trường&nbsp;bao gồm những mẩu chuyện sống động về lứa tuổi học trò, về các thầy cô giáo và những bậc làm cha mẹ - một mảng hiện thực trong cuộc sống muôn màu muôn vẻ của chúng ta. Tất cả những nhân vật ấy đã bước vào trang sách, chuyện trò, tâm sự với chúng ta, mang lại cho chúng ta một bức tranh đậm nét về đời sống gia đình, xã hội, mà nổi bật nhất là môi trường giáo dục lành mạnh, hài hòa nhưng không phải không còn những điều cần suy ngẫm.</p>\r\n\r\n<p>Dưới Mái Trường&nbsp;là bộ sách dành cho lứa tuổi học trò, vì vậy nhân vật trung tâm luôn là các em học sinh. Nội dung xoay quanh các chủ đề: tình bạn, tình thầy trò, tình yêu thương giữa mẹ cha và con cái, được thể hiện bằng những mẩu chuyện ấm áp tình người và giàu tính giáo dục. Mỗi câu chuyện đều được thể hiện sinh động, hấp dẫn, có sức lôi cuốn.</p>\r\n\r\n<p>Tư tưởng xuyên suốt bộ sách là ngợi ca, nhưng không phải không có yếu tố phê phán châm biếm. Sự phê phán thường là nhẹ nhàng, chừng mực. Xen lẫn giữa những câu chuyện đời thực là một số mẩu chuyện có tính chất ngụ ngôn, cổ tích, đặc biệt là cô giáo Mai Chi với các biến hóa của cô được đặt trong bối cảnh đời sống hiện đại, nhằm tác động đả phá cái xấu, những mặt trì trệ trong môi trường sư phạm, khuyến khích cái mới, cái tiến bộ, phê phán thói bảo thủ, bệnh thành tích.<br />\r\n<br />\r\nNội Dung:<br />\r\nLời giới thiệu</p>\r\n\r\n<p>Cô giáo thời đại mới</p>\r\n\r\n<p>Món quà ngày Nhà giáo</p>\r\n\r\n<p>Bài học về tuổi dạy thì</p>\r\n\r\n<p>Tôn trọng tình cảm của người khác</p>\r\n\r\n<p>48 trái tim trong một lẵng hoa</p>\r\n\r\n<p>Chấm điểm cho cô giáo</p>\r\n\r\n<p>Lớp 8/3 khiêu chiến lớp 8/2</p>\r\n\r\n<p>Tập quyền anh và đấu vật</p>\r\n\r\n<p>Cô chủ nhiệm xử vụ đánh nhau</p>\r\n\r\n<p>Đợt sát hạch nâng bậc</p>\r\n\r\n<p>Một bài văn đả phá mùa xuân</p>\r\n\r\n<p>Nới lời chân thực</p>\r\n\r\n<p>Tiếng nói của nhà báo</p>\r\n\r\n<p>Chuyện cá chết</p>\r\n\r\n<p>Cú điện thoại thần bí</p>\r\n\r\n<p>Xem cá chảy nước mắt</p>\r\n\r\n<p>Tình tiết gia tăng</p>\r\n\r\n<p>Đối tượng bị tình nghi</p>\r\n\r\n<p>Mối nghi ngờ trong lòng Thảo Vy</p>\r\n\r\n<p>Ly trà sữa ở tiệm bánh Cây Chanh</p>\r\n\r\n<p>Con cá lưu manh</p>\r\n\r\n<p>Tìm ra hung thủ</p>\r\n\r\n<p>Thế nhắt cúp cua</p>\r\n\r\n<p>Chuyện tình mèo trắng - mèo đen</p>\r\n\r\n<p>Cứu tinh của Thế nhắt</p>\r\n\r\n<p>Thể nghiệm tình cảm tốt đẹp</p>\r\n\r\n<p>Bọn con trai ganh với Thế nhắt</p>\r\n\r\n<p>Thầy giáo phi thường</p>\r\n\r\n<p>Bài kiểm tra không chấm điểm</p>\r\n\r\n<p>Thầy giáo thần tượng</p>\r\n\r\n<p>Hãy nghe bạn ấy nói hết câu</p>\r\n\r\n<p>Thầy Thư và cô Hoài Thu</p>\r\n\r\n<p>Chuyện trang phục biểu diễn</p>\r\n\r\n<p>Tóc của thầy Giang</p>\r\n\r\n<p>Thầy “Nói tóm lại”</p>\r\n\r\n<p>Bí mật của thầy Trạng</p>\r\n\r\n<p>Anh sinh viên làm thầy giáo</p>\r\n\r\n<p>Cô giáo búp bê</p>\r\n\r\n<p>Vị tiến sĩ điều gì cũng biết</p>\r\n\r\n<p>Mai Chi - Cô giáo thần bí</p>\r\n\r\n<p>Những đứa trẻ đánh mất chính mình</p>\r\n\r\n<p>Lễ mai táng đặc biệt</p>\r\n\r\n<p>Con chim giấy “Tôi là kỳ tích”</p>\r\n\r\n<p>Một bài học đẹp</p>\r\n\r\n<p>Điều kỳ diệu của nụ cười.</p>\r\n', '', 0, 1416483060, 'vi', 1, ',9,10,11,3,'),
(4, 'Sao Thầy Không Mãi Teen Teen?', 'sao-thay-khong-mai-teen-teen', '02', 'sach-hay/sao-thay-khong-mai-teen-teen.html', 'sao-thay-khong-mai-teen-teen.jpg', 'Hỡi các bạn teen béoHỡi các bạn teen gầyHỡi các bạn teen xinhHỡi các bạn teen không xinh nhưng cá tínhKhi có khoảng 100k trong túi, bạn sẽ làm gì', 'sao thầy không mãi teen teen,sao thay khong mai teen teen', 78000, 97000, '<p>Hỡi các bạn teen béo</p>\r\n\r\n<p>Hỡi các bạn teen gầy</p>\r\n\r\n<p>Hỡi các bạn teen xinh</p>\r\n\r\n<p>Hỡi các bạn teen không xinh nhưng cá tính</p>\r\n\r\n<p>Khi có khoảng 100k trong túi, bạn sẽ làm gì?</p>\r\n\r\n<p>Phải chăng sẽ mua vài đĩa bánh tráng trộn chấm với ruồi để sau đó lăn quay ra vì đau bụng.</p>\r\n\r\n<p>Phải chăng sẽ mua 2 ly sinh tố pha với kiến và xay trong cái bình không rửa đã 3 năm?</p>\r\n\r\n<p>Phải chăng sẽ mua 1 cái áo pull trên đó in hình các trai Hàn Quốc, mới nhúng vào xà bông 10 phút đã phai màu.</p>\r\n\r\n<p>Hoặc tai hại hơn, mua vé xem một bộ phim kinh dị, sau đó cuối phim phát hiện ra ma đang ở trong nhà mình.</p>\r\n\r\n<p>Tôi tin chắc các bạn sẽ không làm thế.</p>\r\n\r\n<p>Hãy dùng số tiền vĩ đại đó để mua cuốn sách, à không, mua quả bom có tên&nbsp;“Sao thầy không mãi teen teen”.</p>\r\n\r\n<p>Tại sao nó lại là quả bom?</p>\r\n\r\n<p>Tại vì sau khi đọc sách nữ sinh sẽ thấy cần phải nhảy xuống nước cứu thầy.<br />\r\nNữ sinh sẽ biết rằng muốn học giỏi phải dám yêu tài tử đẹp trai<br />\r\nNữ sinh sẽ có khao khát bay lên đá vào mông những chàng tẻ nhạt.<br />\r\nNữ sinh sẽ khóc òa nếu không được gọi lên bảng trả bài<br />\r\nNữ sinh sẽ hối hận nếu không thức suốt đêm nắm tay bạn trai đi bộ trên vỉa hè trong thành phố đầy sao.<br />\r\nNữ sinh sẽ hiểu mình tuyệt đẹp khi mặc váy ngắn xòe.<br />\r\nNữ sinh sẽ ngồi khóc trên thềm khi thầy giáo không xuất hiện.<br />\r\nVà cuối cùng, nữ sinh sẽ hiểu rằng phải sống để yêu. Nhưng yêu ai, yêu cái gì? Yêu như thế nào? Phải đọc từng trang mới biết.</p>\r\n\r\n<p>Một cuốn sách khiến bạn phải khóc nức nở khi đọc trang cuối.</p>\r\n\r\n<p>Một cuốn sách do kẻ đáng ghét nhất trên đời viết ra: Lê Hoàng.</p>\r\n\r\n<p>Một cuốn sách giá khoảng 100k nhưng bàn về những vấn đề mấy trăm năm của bạn.</p>\r\n\r\n<p>Hãy mua đi.</p>\r\n\r\n<p>Nếu không mua bạn cũng chẳng sao. Nhưng mua rồi, đọc xong, bạn sẽ không còn nhận ra mình.</p>\r\n\r\n<p><strong>Mời bạn đón đọc.</strong></p>\r\n', '', 0, 1416483780, 'vi', 1, ',9,10,11,3,'),
(5, 'Xuôi Nhớ Ngược Thương', 'xuoi-nho-nguoc-thuong', '02', 'sach-hay/xuoi-nho-nguoc-thuong.html', 'xuoi-nho-nguoc-thuong.jpg', '"Xuôi nhớ ngược thương" là một cuốn sách buồn! Mẫu số chung của cả cuốn sách là một nỗi niềm không vui của những kẻ đã yêu! Mọi thứ tình cảm trong những trang tản văn này đều vì lý do yêu người không yêu ta mà lỡ', 'sao thầy không mãi teen teen,sao thay khong mai teen teen', 61500, 77000, '<p>"Xuôi nhớ ngược thương"&nbsp;là một cuốn sách buồn!&nbsp;</p>\r\n\r\n<p>Mẫu số chung của cả cuốn sách là một nỗi niềm không vui của những kẻ đã yêu!&nbsp;</p>\r\n\r\n<p>Mọi thứ tình cảm trong những trang tản văn này đều vì lý do yêu người không yêu ta mà lỡ dở.&nbsp;</p>\r\n\r\n<p>Đọc nó, có thể bạn cũng sẽ thấy giống như tôi, một cảm giác rối ren như đứng giữa ngã tư không có đèn xanh đỏ, rốt cuộc, người đó kẹt ở quãng nào mà mình gỡ mãi không ra? Và cũng rất có thể nữa,&nbsp;"Xuôi nhớ ngược thương"&nbsp;sẽ có vị nước mắt của chính bạn, nếu bạn chia sẻ những con chữ này cùng với tôi...&nbsp;</p>\r\n\r\n<p>"Dù lý trí đã mệt nhoài và trái tim đã rỗng tuếch những cảm xúc vô tri. Dù những gì còn lại chỉ là vụn lòng xác xơ trong một cuộc tình có người cam tâm bỏ chạy. Nhưng kiệt sức rồi thì sẽ buông, không níu được thì sẽ thôi nắm. Như hết cơn mơ rồi, người ta phải tỉnh thức để tiếp tục cuộc sống đang trôi chảy ngoài kia.&nbsp;</p>\r\n\r\n<p>Cuộc đời vốn không dư dả thanh xuân để chúng ta đau đáu về một người dưng, cũng như em không đủ tình yêu để làm anh hạnh phúc, cũng như em đã không đủ mê muội để cứ thế - thương anh!"&nbsp;</p>\r\n\r\n<p><strong>Mời bạn đón đọc.</strong></p>\r\n', '', 0, 1416484080, 'vi', 1, ',9,10,11,3,');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `web_product_order`
--

INSERT INTO `web_product_order` (`id`, `name`, `email`, `phone`, `address`, `total_current`, `total_number`, `deliverycosts`, `discounts`, `total`, `datetime`, `other`, `lang`, `status`, `city_id`, `districts_id`) VALUES
(6, 'Tran Nhan', 'hieunhan112@gmail.com', '0988388003', '123 CMT 8', 273000, 5, 5000, 0, 278000, 1416644201, 'Giao gio HC', 'vi', 0, 3, 127),
(7, 'Nhan 2', 'hieu_nhan1@yahoo.com', '0937239542', '123 CMT 8', 615000, 10, 5000, 0, 620000, 1416646493, 'ABC', 'vi', 0, 3, 129);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `web_product_order_detail`
--

INSERT INTO `web_product_order_detail` (`id`, `name`, `number`, `price`, `discounts`, `total`, `lang`, `status`, `product_id`, `order_id`) VALUES
(38, 'Sao Thầy Không Mãi Teen Teen?', 2, 78000, 0, 156000, 'vi', 1, 4, 1416644201),
(39, 'Người Thầy Tuyệt Vời - Dưới Mái Trường', 3, 39000, 0, 117000, 'vi', 1, 3, 1416644201),
(40, 'Xuôi Nhớ Ngược Thương', 10, 61500, 0, 615000, 'vi', 1, 5, 1416646493);

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `url_img` varchar(150) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `position_id` int(1) NOT NULL,
  `menu_id` varchar(30) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `web_slider_banner`
--

INSERT INTO `web_slider_banner` (`id`, `name`, `url_img`, `url`, `order`, `lang`, `status`, `position_id`, `menu_id`) VALUES
(1, 'Trang chủ', 'slider-home.jpg', 'javascript:;', 1, 'vi', 1, 1, ',1,'),
(2, 'Home', 'slider-home.jpg', 'javascript:;', 1, 'en', 1, 1, ',1,'),
(5, 'Sale online', 'slider-sale-online.jpg', 'javascript:;', 2, 'en', 1, 1, ',48,51,50,49,'),
(6, 'Contact us', 'slider-contact-us.jpg', 'javascript:;', 3, 'en', 1, 1, ',4,'),
(9, 'Trang chủ 2', 'slider-home-2.jpg', 'javascript:;', 2, 'vi', 1, 1, ',1,7,');

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner_position`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner_position` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `web_slider_banner_position`
--

INSERT INTO `web_slider_banner_position` (`id`, `name`, `status`) VALUES
(1, 'Slider 1000x200 px', 1),
(2, 'Right width:265px', 1),
(3, 'Đối tác 95x65 px', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `address`, `phone`, `email`, `birthday`, `gender`, `url_img`, `salt`, `username`, `password`, `rule_view`, `rule_action`, `random_key`, `login_number`, `disable_date`, `expiration`, `lang`, `datetime`, `status`, `group_id`) VALUES
(25, 'Admin', '', '0988 388 003', 'hieunhan112@gmail.com', 0, 1, '', '', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,20,3,4,5,6,7,8,9,10,11,12,21,22,23,', ',1,2,20,3,4,5,6,7,8,9,10,11,12,21,22,23,', NULL, 0, '2011-09-21 16:42:26', NULL, 'vi', 0, 1, 3),
(32, 'Nhân', '12 CMT 8', '0988388003', 'hieunhan@yahoo.com', 0, 1, '', '', 'nhan', '867e1a36d190000d2f266d80889683fc', ',1,2,22,', ',1,2,22,', NULL, 0, NULL, NULL, 'vi', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_group`
--

CREATE TABLE IF NOT EXISTS `web_users_group` (
`id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `web_users_group`
--

INSERT INTO `web_users_group` (`id`, `name`) VALUES
(1, 'Khách hàng'),
(2, 'Thành viên forum'),
(3, 'Quản trị website');

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
  `url_img` varchar(150) NOT NULL,
  `url_code` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=421;
--
-- AUTO_INCREMENT for table `web_article_cm`
--
ALTER TABLE `web_article_cm`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_config`
--
ALTER TABLE `web_config`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `web_contact`
--
ALTER TABLE `web_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `web_menu`
--
ALTER TABLE `web_menu`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_product`
--
ALTER TABLE `web_product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_product_order`
--
ALTER TABLE `web_product_order`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `web_product_order_detail`
--
ALTER TABLE `web_product_order_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `web_slider_banner`
--
ALTER TABLE `web_slider_banner`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `web_slider_banner_position`
--
ALTER TABLE `web_slider_banner_position`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_users`
--
ALTER TABLE `web_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `web_users_group`
--
ALTER TABLE `web_users_group`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_video`
--
ALTER TABLE `web_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
