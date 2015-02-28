-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2015 at 04:44 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forexcareer`
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`id`, `name`, `name_alias`, `url`, `url_img`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Strength and Security', 'strength-and-security', '', '', 'Trade with a market leader who has strong financial resources and over 15 years’ experience serving 200,000 clients globally.', 'strength and security,strength and security', '', 1, 1424941800, 'vi', 1, ',15,'),
(2, 'Price transparency', 'price-transparency', 'reasons-to-choose-forexcareer-com/price-transparency.html', '', 'Tight spreads, quality executions and low roll rates – we publish all our pricing so you can concentrate on trading instead of focusing on the costs.', '', '', 1, 1424941680, 'vi', 1, ',15,'),
(3, 'Forex & CFD trading', 'forex-cfd-trading', '', '', 'Trade currency pairs from around the globe plus hundreds of Index and Commodity CFDs - all with tight spreads and quality executions.', '', '', 1, 1424941620, 'vi', 1, ',15,'),
(9, 'Bản tin thị trường tiền tệ thế giới ngày 6/2', 'ban-tin-thi-truong-tien-te-the-gioi-ngay-6-2', 'phan-tich-thi-truong/ban-tin-thi-truong-tien-te-the-gioi-ngay-6-2.html', '', 'Đồng Euro phục hồi nhờ đồn đoán ngân hàng trung ương Thụy Sĩ đang mua vào euro để làm suy yếu franc.', 'bản tin thị trường tiền tệ thế giới ngày 6 2,ban tin thi truong tien te the gioi ngay 6 2', '<p>Theo phân tích kỹ thuật, ngưỡng kháng cự trước mắt của giá vàng là 1.274,6 USD/ounce, sau đó là 1.286,5 USD/ounce.</p>\r\n\r\n<p>EURO DẦN LẤY LẠI SỨC MẠNH</p>\r\n\r\n<p>Đồng Euro phục hồi nhờ đồn đoán ngân hàng trung ương Thụy Sĩ đang mua vào euro để làm suy yếu franc.</p>\r\n\r\n<p>Chốt phiên hôm qua, euro tăng 1,21% so với USD lên 1,14835 USD sau khi chạm ngưỡng thấp nhất trong ngày ở 1,13040 USD. Euro cũng tăng giá lên 1,06425 franc – mức cao nhất kể từ ngày 15/1 khi ngân hàng trung ương Thụy Sĩ bỏ trần tỷ giá france/euro.</p>\r\n\r\n<p>Đà hồi phục càng được củng cố sau những thông tin kinh tế tích cực. Theo đó, số đơn đặt hàng sản xuất của Đức trong tháng 12 tăng 4.2% so với mức giảm 1.4% của tháng trước. Bên cạnh đó, Liên minh châu Âu (EU) hôm qua nâng dự báo tăng trưởng kinh tế của khu vực trong năm 2015 từ 1.1% lên 1.3% và hạ tỷ lệ thất nghiệp từ 11.3% xuống còn 11.2%.</p>\r\n\r\n<p>Thêm vào đó, giới đầu tư cũng dần lạc quan hơn về tình hình Hy Lạp sau khi Ngân hàng Trung ương châu Âu quyết định không xem trái phiếu chính phủ nước này là một tài sản thế chấp nợ. Một số chuyên gia cho rằng, vấn đề của Hy Lạp sẽ không ảnh hưởng mạnh đến phần lớn các thị trường tài chính toàn cầu do không có ngân hàng nước ngoài nào đang nắm giữ trái phiếu của Hy Lạp.</p>\r\n\r\n<p>Đối lập với đồng tiền chung, USD lại giảm giá ngay sau khi số liệu chính thức cho biết, thâm hụt thương mại của Mỹ bất ngờ lên cao nhất 2 năm trong tháng 12/2014. Nguyên nhân chính do đà tăng giá mạnh của USD đã kéo giảm kim ngạch nhập khẩu và gây áp lực lên xuất khẩu.</p>\r\n\r\n<p>Chỉ số đôla ICE, theo dõi biến động tỷ giá giữa USD và 6 đồng tiền mạnh khác, theo đó giảm 0,49% xuống 93,524 điểm.</p>\r\n\r\n<p>Tuy nhiên, USD vẫn tăng giá so với yên khi giá dầu phục hồi và cổ phiếu tại Mỹ tăng giá mạnh. USD tăng 0,23% so với yên lên 117,55 yên.</p>\r\n\r\n<p>Sự chú ý của thị trường hôm nay tập trung vào báo cáo việc làm tháng 1 của Mỹ do Bộ Lao động nước này công bố. Theo dự báo trung bình của các nhà phân tích, trong tháng vừa qua nền kinh tế lớn nhất thế giới tạo thêm được 236,000 việc làm mới, giảm so với con số 256,000 của tháng trước và tỷ lệ thất nghiệp duy trì ở ngưỡng 5.6%.</p>\r\n\r\n<p>VÀNG BIẾN ĐỘNG NHẸ CHỜ TIN MỚI</p>\r\n\r\n<p>Trên thị trường thế giới, đóng cửa phiên hôm qua tại Mỹ, giá vàng giao tháng 4/2015 giảm 1,8 USD, tương ứng 0,1%, xuống 1.262,7 USD/ounce; giá vàng giao ngay hạ 0,5%, còn 1.263,5 USD. Hiện mỗi ounce vàng đang có giá là 1.267 USD/ounce, tăng nhẹ so với trước đó.</p>\r\n\r\n<p>Có thể thấy, giá kim loại quý này giảm sau khi Ngân hàng Trung ương châu Âu tuyên bố không chấp nhận trái phiếu Hy Lạp làm tài sản thế chấp khiến đồng USD tăng giá so với EUR.</p>\r\n\r\n<p>Tuy nhiên, giá vẫn được hỗ trợ ngắn hạn, do Trung Quốc đã hạ tỷ lệ dự trữ bắt buộc với các ngân hàng, nhằm ngăn đà tăng trưởng chậm của nền kinh tế và chống giảm phát. Hôm nay, Mỹ sẽ công bố số liệu việc làm, cơ sở để nhà đầu tư dự đoán thời điểm Mỹ tăng lãi suất lần đầu tiên trong gần một thập kỷ.</p>\r\n\r\n<p>Theo phân tích kỹ thuật, ngưỡng kháng cự trước mắt của giá vàng là 1.274,6 USD/ounce, sau đó là 1.286,5 USD/ounce. Ngưỡng hỗ trợ đầu tiên là 1.255,8 USD/ounce, kế đến là 1.252,1 USD/ounce.</p>\r\n\r\n<p style="text-align: center;"><a href="http://www.giavang.net/wp-content/uploads/2015/02/Untitled7.png" rel="lightbox[35775]" title="Bản tin thị trường tiền tệ thế giới ngày 6/2"><img alt="Untitled" src="http://www.giavang.net/wp-content/uploads/2015/02/Untitled7.png" style="width: 800px; height: 347px;" /></a></p>\r\n', 1, 1425093180, 'vi', 1, ',6,'),
(4, 'MetaTrader & FOREX.com', 'metatrader-forex-com', '', '', 'Tight transparent spreads, quality executions, free EA hosting, integrated order management features and free research – get the FOREX.com advantage.', '', '', 1, 1424941500, 'vi', 1, ',15,'),
(5, 'Exclusive research', 'exclusive-research', '', '', 'Benefit from the experience and insights of our global research team with real-time market analysis and actionable trade ideas.', '', '', 1, 1424941440, 'vi', 1, ',15,'),
(7, '100% segregated funds', '100-segregated-funds', '', '', 'All customer funds, including your unrealised profits, are fully segregated from our own assets and held with top-tier global banks. We never use client funds for hedging.', '100 segregated funds,100 segregated funds', '', 1, 1424941380, 'vi', 1, ',15,'),
(8, 'Đồng Euro gặp khó với khả năng Hy Lạp rời EU?', 'dong-euro-gap-kho-voi-kha-nang-hy-lap-roi-eu', 'phan-tich-thi-truong/dong-euro-gap-kho-voi-kha-nang-hy-lap-roi-eu.html', '', 'Chỉ số S&P 500 tiếp tục giao dịch trong phạm vi hẹp. Bất chấp tất cả những biến động trong 2 tháng vừa qua, chúng ta cuối cùng vân chẳng đi tới đâu.', 'đồng euro gặp khó với khả năng hy lạp rời eu,dong euro gap kho voi kha nang hy lap roi eu', '<p>Chỉ số S&amp;P 500 tiếp tục giao dịch trong phạm vi hẹp. Bất chấp tất cả những biến động trong 2 tháng vừa qua, chúng ta cuối cùng vân chẳng đi tới đâu.</p>\r\n\r\n<p>Câu chuyện lớn hơn có liên quan tới châu Âu, đặc biệt là Hy Lạp- nơi mà khủng hoảng tài chính kinh tế cuối cùng cũng lan rộng sang cả chính trị. Gần đây, mỗi phiên thảo luận về vấn đề nợ Hy Lạp đều có sự tham gia của các chính trị gia- những người có quyền lực lớn trong giới ngân hàng và tài chính. Kết quả là, tất cả những phiên thảo luận trước đây đều kết thúc tại các vấn đề ngân hàng trong khi nền kinh tế Hy Lạp vẫn đầy rối ren.</p>\r\n\r\n<p>Lúc này đây, rủi ro Hy Lạp rời khỏi EU đang trở nên nhạt nhòa bởi vì chẳng có tia hi vọng nào cho thấy một vụ vỡ nợ khác sẽ làm mọi thứ tốt hơn. Hơn nữa, Nga cũng đã sẵn sàng hỗ trợ cho những ai biết cách giúp Putin phá vỡ các biện pháp trừng phạt của EU. Hy Lạp biết điều này.</p>\r\n\r\n<p>Chẳng ai biết tình hình hiện tại chính xác ra sao. Tuy nhiên, một số người lại cho rằng khả năng Hy Lạp rời bỏ EU còn cao hơn trước. Thị trường cảm thấy đây chính là lý do tại sao đồng euro lại phá thủng đường hỗ trợ mà chúng đã nắm giữ trong suốt thời kỳ đầu của khủng hoảng tài chính khu vực đồng tiền chung: 2010- 2012.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="http://www.gold-eagle.com/sites/default/files/summers021015-2.jpg" />​</p>\r\n\r\n<p>Có thể nói nguyên nhân thực tế không phải là Hy Lạp nhưng lại xuất phát từ quốc gia này. Nếu các cuộc đàm phá về tái cấu trúc nợ của Hy Lạp thành công thì Tây Ban Nha, Italia và Pháp sẽ là những cái tên tiếp theo. Tiện thể khi nói về điều này, chúng ta có thể thấy hơn 1/3 quốc gia khối EU đang cần phải tái cấu trúc nợ…</p>\r\n\r\n<p>Vậy tại sao Hy Lạp lại là một thỏa thuận lớn đến như vậy…bởi vì đó là chỉ số tham chiếu cho thấy chu kỳ tiếp theo của khủng hoảng sẽ diễn ra như thế nào. Hy Lạp chiếm gần 2% nền kinh tế châu Âu. Tây Ban Nha, Italia và Pháp còn là vấn đề lớn hơn nữa. Tất cả họ đều đang chờ đợi xem những gì sẽ xảy ra (cần phải nhớ rằng mới đây Pháp đã ủng hộ cho Hy Lạp trong kế hoạch tái cơ cấu nợ).</p>\r\n\r\n<p>Ông Draghi cần phải vượt qua nhiều hàng rào khó nhằn trên con đường của ông. Thị trường đang ngửi thấy mùi “máu”.</p>\r\n\r\n<p>Giavang.net</p>\r\n', 1, 1425092940, 'vi', 1, ',6,'),
(10, 'Giá dầu thấp sẽ không tốt cho đồng EUR, JPY?', 'gia-dau-thap-se-khong-tot-cho-dong-eur-jpy', 'phan-tich-thi-truong/gia-dau-thap-se-khong-tot-cho-dong-eur-jpy.html', '', 'Giá dầu thấp là một yếu tố tốt cho nền kinh tế Mỹ, châu Âu và Nhật Bản. Sự mất giá thảm hại của dầu gần đây có thể sẽ hỗ trợ đồng USD, tuy nhiên, đối với đồng ERU và JPY, sự biến động mang nhiều sắc thái hơn.', 'giá dầu thấp sẽ không tốt cho đồng eur jpy,gia dau thap se khong tot cho dong eur jpy', '<p>Giá dầu thấp là một yếu tố tốt cho nền kinh tế Mỹ, châu Âu và Nhật Bản. Sự mất giá thảm hại của dầu gần đây có thể sẽ hỗ trợ đồng USD, tuy nhiên, đối với đồng ERU và JPY, sự biến động mang nhiều sắc thái hơn.</p>\r\n\r\n<p>Nhiều nhà bình luận lý giải sự lao dốc của giá dầu và giá hàng hóa là do tăng trưởng kinh tế toàn cầu khá chậm chạp khiến cho mối nguy giảm phát ngày càng dai dẳng hơn. Tuy nhiên, nếu nền kinh tế tăng trưởng quá chậm – giá dầu thấp có thể sẽ là một “loại thuốc bổ tốt”. Giá năng lượng ở mức thấp có phải thực sự là một mô hình giảm phát tốt đối với tiêu dùng của một số quốc gia.</p>\r\n\r\n<p>Tuy nhiên, đối với các ngân hàng trung ương gắn bó với nỗi lo ngại về giảm phát – Ngân hàng Nhật Bản và Ngân hàng Trung ương châu Âu – họ đại diện cho một lý do khác để theo đuổi chính sách tiền tệ nới lỏng và thậm chí là càng làm cho chúng được mở rộng. Vì vậy, trong ngắn hạn và trung hạn, giá dầu giảm có thể là một tiêu cực đối với EUR và JPY. Trong những trường hợp bình thường, giá năng lượng thấp hơn sẽ hỗ trợ cho hai loại tiền tệ này.</p>\r\n\r\n<p>Đối với Mỹ, giá năng lượng rẻ hơn sẽ làm giảm lạm phát và có thể thấy Cục Dự trữ Liên bang Mỹ sẽ duy trì mức lãi suất thấp trong thời gian dài hơn so với dự đoán. Thật vậy, Fed đang mắc kẹt với lập trường tương đối u ám của mình, hứa hẹn sẽ “kiên nhẫn” đối với động thái nâng lãi suất tại cuộc họp FOMC gần nhất, nhưng thị trường cần lưu ý rằng năng lượng không phải là yếu tố đầu vào duy nhất tạo nên giảm phát .</p>\r\n\r\n<p style="text-align: center;">Giá dầu thấp = đồng JPY mất giá?<br />\r\n<img alt="USD/JPY" src="http://c3352932.r32.cf0.rackcdn.com/content/pic0027ea8af8f209b702f646cc3da88d8e.png" style="width: 650px; height: 462px;" title="USD/JPY" /><br />\r\nUSD/JPY</p>\r\n\r\n<p>Khi Mỹ tăng lãi suất – cả hai đồng tiền này đều có thể tăng lên một cách nhanh chóng</p>\r\n\r\n<p>Kỳ vọng tăng lãi suất sẽ hỗ trợ rất nhiều những đồng tiền thị trường mới nổi đang gặp khó khăn, chúng đã trở thành nạn nhân của sự thay đổi trong chính sách tiền tệ và giá cả hàng hóa giảm.</p>\r\n\r\n<p>Trong khi đó, tình hình tăng trưởng kinh tế Mỹ khá mạnh mẽ, việc tăng lãi suất dự kiến sẽ diễn ra trong năm tới. Giá năng lượng thấp sẽ tiếp tục thúc đẩy nền kinh tế Mỹ với ngụ ý rằng một khi giá năng lượng giảm thì tăng trưởng sẽ ở thì tương lai – lãi suất có thể tăng lên trong quý II năm sau và có thể tăng với tốc độ khá nhanh chóng.</p>\r\n\r\n<p>Điều thú vị là USD đang ngày càng hành xử như một đồng tiền có “nguy cơ” bởi dòng vốn chảy vào các tài sản như chứng khoán Mỹ trong khi tại châu Âu và Nhật Bản thì không như vậy. Điều này có thể làm cho sự thể hiện của đồng USD nhạy cảm hơn so với con số như GDP.</p>\r\n\r\n<p>Đà tăng của đồng USD đã gây ra một cuộc khủng hoảng tại các thị trường mới nổi, đặc biệt là với các nước có khoản vay bằng USD, điều này có thể thúc đẩy hành động của ngân hàng trung ương để ngăn chặn sự gia tăng của nó. Tuy nhiên, đối với các quốc gia như Nhật Bản, Châu Âu và nhiều quốc gia khác sẽ cảm thấy thích sự tăng giá của đồng USD bởi họ sẽ đạt được lợi nhuận khi xuất khẩu và tìm lại sự tăng trưởng của mình.</p>\r\n', 1, 1425093240, 'vi', 1, ',6,'),
(11, 'Forex Million: Vàng giao dịch trong kênh tăng', 'forex-million-vang-giao-dich-trong-kenh-tang', 'phan-tich-thi-truong/forex-million-vang-giao-dich-trong-kenh-tang.html', '', 'Xu hướng tăng kì vọng sẽ tiếp tục khi vàng giao dịch ổn định trên vùng hỗ trợ $1147, và theo sau đó là việc kiểm nghiệm kháng cự $1180.', 'forex million vàng giao dịch trong kênh tăng,forex million vang giao dich trong kenh tang', '<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Kịch bản chính:</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Vàng (XAU/USD) đang được giao dịch theo xu hướng tăng.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Xu hướng tăng kì vọng sẽ tiếp tục khi vàng giao dịch ổn định trên vùng hỗ trợ $1147, và theo sau đó là việc kiểm nghiệm kháng cự $1180.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><em style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Kịch bản phụ:</strong></em></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Xu hướng giảm sẽ nhanh chóng xuất hiện khi vàng giảm xuống dưới vùng hỗ trợ $1147, và theo sau đó là việc dịch chuyển xuống hỗ trợ tại $1135.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">&nbsp;</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">&nbsp;</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">&nbsp;</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><img alt="XAU/USD Hour Chart" class="aligncenter" src="http://c3352932.r32.cf0.rackcdn.com/content/picd2059c6c685658c0a40927eab61b3c6b.png" style="max-width: 98%; height: auto; margin: 0px auto; padding: 2px; border: 1px solid rgb(204, 204, 204); vertical-align: baseline; display: block;" title="XAU/USD Hour Chart" width="474" /></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px; text-align: center;">Vàng (XAU/USD) biểu đồ giờ H1</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Dự báo trước</strong><br />\r\n<img alt="XAU/USD Hour Chart" class="aligncenter" height="300" src="http://c3352932.r32.cf0.rackcdn.com/content/picd11b37411215e01a37b157de139ba00e.png" style="max-width: 98%; height: auto; margin: 0px auto; padding: 2px; border: 1px solid rgb(204, 204, 204); vertical-align: baseline; display: block;" title="XAU/USD Hour Chart" width="464" /></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px; text-align: center;">Vàng (XAU/USD) biểu đồ giờ H1</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Dự báo giá vàng tuần từ 10/11 – 14/11</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Kịch bản chính:</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Vàng (XAU/USD) đang được giao dịch theo xu hướng giảm.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Xu hướng giảm kì vọng sẽ tiếp tục khi vàng giao dịch ổn định dưới vùng kháng cự $1180, và theo sau đó là việc tiếp cận kháng cự $1135. Nếu xu hướng giảm tiếp tục và vàng giảm xuống dưới ngưỡng này, chúng tôi kì vọng kim quý tiếp cận hỗ trợ tại $1100.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;"><em style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Kịch bản phụ:</em></strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Xu hướng tăng sẽ nhanh chóng xuất hiện khi vàng tăng lên trên vùng hỗ trợ $1180, và theo sau đó là việc dịch chuyển lên kháng cự tại $1248.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px; text-align: center;"><img alt="XAU/USD Hourly Chart" class="aligncenter" height="298" src="http://c3352932.r32.cf0.rackcdn.com/content/pic01494e8ae50254467132a92cf3e4b0ae.png" style="max-width: 98%; height: auto; margin: 0px auto; padding: 2px; border: 1px solid rgb(204, 204, 204); vertical-align: baseline; display: block;" title="XAU/USD Hourly Chart" width="460" /><br />\r\nVàng (XAU/USD) biểu đồ giờ H4</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Dự báo trước:</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px; text-align: center;"><img alt="XAU/USD Hourly Chart" class="aligncenter" height="293" src="http://c3352932.r32.cf0.rackcdn.com/content/picf3ef7c852da5c3964d42f2c17d70f5fd.png" style="max-width: 98%; height: auto; margin: 0px auto; padding: 2px; border: 1px solid rgb(204, 204, 204); vertical-align: baseline; display: block;" title="XAU/USD Hourly Chart" width="454" /><br />\r\nVàng (XAU/USD) biểu đồ giờ H4</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Dự báo giá vàng hàng tháng: tháng 10, tháng 11</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Kịch bản chính:</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Vàng (XAU/USD) được giao dịch theo xu hướng giảm.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Xu hướng giảm dự kiến sẽ tiếp tục trong trường hợp thị trường giảm xuống dưới mức hỗ trợ $1205. Đà giảm mở rộng kéo thị trường đi xuống và tiếp cận mức hỗ trợ $1186, nếu kim loại quý vẫn tiếp tục di chuyển xuống dưới mức này thì chúng tôi cho rằng thị trường sẽ tạo hỗ trợ tốt tại mức giá $1135.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Kịch bản phụ:</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Xu hướng tăng sẽ sớm xuất hiện khi giá vàng vượt kháng cự $1228. Đây là tín hiệu để quý kim có thể leo lên các kháng cự tiếp theo là $1250 và sau đó là $1285.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><img alt="XAU/USD Hourly Chart" class="aligncenter" height="318" src="http://c3352932.r32.cf0.rackcdn.com/content/pic0cc6a7652f2a4bdec17eefbda4228364.png" style="max-width: 98%; height: auto; margin: 0px auto; padding: 2px; border: 1px solid rgb(204, 204, 204); vertical-align: baseline; display: block;" title="XAU/USD Hourly Chart" width="463" /></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px; text-align: center;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Vàng (XAU/USD) biểu đồ ngày</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Dự báo trước:</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px; text-align: center;"><img alt="XAU/USD Daily Chart" class="aligncenter" height="297" src="http://c3352932.r32.cf0.rackcdn.com/content/pic2c51a36cb78c0c2e693f08be41f60e3d.png" style="max-width: 98%; height: auto; margin: 0px auto; padding: 2px; border: 1px solid rgb(204, 204, 204); vertical-align: baseline; display: block;" title="XAU/USD Daily Chart" width="460" /><br />\r\nVàng (XAU/USD) biểu đồ ngày</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Dự báo dài hạn: Tháng 5 -8</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Kịch bản chính:</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Vàng (XAU/USD) được giao dịch theo xu hướng giảm.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Xu hướng giảm dự kiến sẽ tiếp tục trong trường hợp thị trường giao dịch dưới mức kháng cự $1560. Đà giảm mở rộng kéo thị trường xuống và tiếp cận mức hỗ trợ $1182 và sau đó là $975 – $878.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><strong style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;">Kịch bản phụ:</strong></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;">Xu hướng tăng sẽ sớm xuất hiện khi giá vàng vượt kháng cự $1560. Đây là tín hiệu để quý kim có thể leo lên các kháng cự tiếp theo là $1747 và sau đó là $2000.</p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px;"><img alt="XAU/USD Weekly Chart" class="aligncenter" height="298" src="http://c3352932.r32.cf0.rackcdn.com/content/pica183bc33f610485b4b614c7e4a67092e.png" style="max-width: 98%; height: auto; margin: 0px auto; padding: 2px; border: 1px solid rgb(204, 204, 204); vertical-align: baseline; display: block;" title="XAU/USD Weekly Chart" width="460" /></p>\r\n\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(68, 68, 68); font-family: helvetica, arial, sans-serif; line-height: 20px; text-align: center;">Vàng (XAU/USD) biểu đồ tuần</p>\r\n', 1, 1425093300, 'vi', 1, ',6,'),
(12, 'Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 27/02/2015', 'ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-27-02-2015', 'tin-tuc-su-kien/ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-27-02-2015.html', 'img-1.jpg', 'USD bật tăng mạnh trở lại so với các đồng tiền chủ chốt hôm qua sau các dữ liệu tích cực đến từ kinh tế Mỹ.', 'bản tin tư vấn tiền tệ vàng của eximbank ngày 27 02 2015,ban tin tu van tien te vang cua eximbank ngay 27 02 2015', '<p>USD TĂNG MẠNH SAU DỮ LIỆU KINH TẾ MỸ</p>\r\n\r\n<p>USD bật tăng mạnh trở lại so với các đồng tiền chủ chốt hôm qua sau các dữ liệu tích cực đến từ kinh tế Mỹ. Dollar – Index, chỉ số đo lường sức mạnh của đồng bạc xanh so với rổ tiền tệ chủ chốt tăng 1.1% lên 95.33 điểm, mức cao nhất trong vòng 1 tháng qua.</p>\r\n\r\n<p>Theo số liệu của Bộ Lao động Mỹ công bố hôm qua, chỉ số giá tiêu dùng (CPI) giảm 0.7% trong tháng 1 sau khi đã giảm 0.3% trong tháng 12/2014. Nguyên nhân chủ yếu do giá nhiên liệu, đặc biệt là xăng, giảm mạnh theo giá dầu. Tuy nhiên, nếu không tính giá thực phẩm và nhiên liệu, chỉ số CPI lõi của Mỹ lại tăng 0.2%, cao hơn so với kỳ vọng của giới chuyên gia. Giá nhiên liệu giảm thúc đẩy người dân Mỹ tăng cường chi tiêu vào những loại hàng hóa khác, phần nào hỗ trợ đà tăng trưởng của kinh tế Mỹ.</p>\r\n\r\n<p>Bên cạnh đó, số đơn đặt hàng lâu bền của Mỹ tăng 2.8% trong tháng 1, cao hơn nhiều so với dự báo 1.7% của các nhà phân tích và mức giảm 3.3% trong tháng 12/2014. Giới đầu tư dần lấy lại niềm tin vào tình hình kinh tế Mỹ và tăng kỳ vọng vào khả năng Fed sẽ sớm nâng lãi suất.</p>\r\n', 1, 1425093780, 'vi', 1, ',8,'),
(13, 'IronFX: Tin tức thị trường forex ngày 12/02/2015', 'ironfx-tin-tuc-thi-truong-forex-ngay-12-02-2015', 'tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-12-02-2015.html', 'img-1.jpg', 'Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.', 'ironfx tin tức thị trường forex ngày 12 02 2015,ironfx tin tuc thi truong forex ngay 12 02 2015', '<p>IronFX – Marshall Gittler: Bức tranh toàn cảnh thị trường Forex</p>\r\n\r\n<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n', 1, 1425093900, 'vi', 1, ',8,'),
(14, 'Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 12/02/2015', 'ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-12-02-2015', 'tin-tuc-su-kien/ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-12-02-2015.html', 'img-1.jpg', 'Tỷ giá EUR/USD dao động trong biên độ hẹp trong những ngày qua khi thị trường đang chờ đợi thông tin về cuộc họp giữa các Bộ trưởng Tài chính khu vực đồng Euro', 'bản tin tư vấn tiền tệ vàng của eximbank ngày 12 02 2015,ban tin tu van tien te vang cua eximbank ngay 12 02 2015', '<p>Tỷ giá EUR/USD dao động trong biên độ hẹp trong những ngày qua khi thị trường đang chờ đợi thông tin về cuộc họp giữa các Bộ trưởng Tài chính khu vực đồng Euro với Bộ trưởng Tài chính Hy Lạp về vấn đề nợ của nước này. Ngày đàm phán hôm qua đã không đưa ra một tuyên bố chính thức cũng như thông tin về việc liệu có tiếp tục giải ngân gói cứu trợ dành cho Hy Lạp cho đến cuộc họp tiếp theo dự kiến diễn ra vào thứ Hai tuần sau.</p>\r\n\r\n<p>AUD giảm giá mạnh sáng nay khi dữ liệu công bố cho thấy số việc làm của nền kinh tế Úc trong tháng qua giảm 12,200, nhiều hơn so với dự báo giảm 4,700 của giới phân tích và mức tăng 42,300 của tháng 12/2014. Tỷ lệ thất nghiệp của Úc trong tháng 1 cũng tăng từ 6.2% lên 6.4%, mức cao nhất trong vòng 13 năm qua. Tuần trước, Ngân hàng Trung ương Úc đã giảm lãi suất cơ bản xuống mức thấp kỷ lục là 2.25% và cơ quan này được dự báo sẽ tiếp tục hạ lãi suất trong thời gian tới.</p>\r\n\r\n<p>Thông tin đáng chú ý hôm nay là báo cáo kinh tế của Ngân hàng Trung ương Anh (BOE). Báo cáo ra hàng quý này của BOE được giới đầu tư đặc biệt theo dõi để tìm manh mối về chính sách tiền tệ của cơ quan này. Nếu tại báo cáo lần này, BOE hạ dự báo lạm phát nhưng cho biết lạm phát thấp hiện không đáng ngại và đây chỉ là vấn đề tạm thời thì đồng bảng Anh sẽ hồi phục nhanh chóng sau khi giảm giá. Tuy nhiên, nếu BOE cho rằng chính sách tiền tệ sẽ được giữ ổn định trong một thời gian dài nữa bởi áp lực lạm phát xuống thấp thì GBP sẽ lao dốc mạnh và xóa nhòa mức tăng trong những ngày qua.</p>\r\n', 1, 1425093960, 'vi', 1, ',8,'),
(15, 'Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 26/02/2015', 'ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-26-02-2015', 'tin-tuc-su-kien/ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-26-02-2015.html', 'img-1.jpg', 'USD – Index, chỉ số đo lường sức mạnh của đồng bạc xanh so với rổ tiền tệ chủ chốt tiếp tục giảm điểm trong phiên giao dịch hôm qua sau khi chủ tịch Fed Janet Yellen', 'bản tin tư vấn tiền tệ vàng của eximbank ngày 26 02 2015,ban tin tu van tien te vang cua eximbank ngay 26 02 2015', '<p>USD – Index, chỉ số đo lường sức mạnh của đồng bạc xanh so với rổ tiền tệ chủ chốt tiếp tục giảm điểm trong phiên giao dịch hôm qua sau khi chủ tịch Fed Janet Yellen, trong phiên điều trần thứ hai, lặp lại quan điểm rằng các nhà hoạch định chính sách của Fed sẽ không tự buộc mình vào một lịch trình nâng lãi suất cố định mà sẽ xem xét trong các cuộc họp chính sách tới đây dựa trên các số liệu kinh tế.</p>\r\n\r\n<p>Đồng bảng Anh tăng giá mạnh hôm qua sau dữ liệu tích cực từ thị trường nhà đất và phát biểu của các quan chức Ngân hàng Trung ương Anh (BOE) về khả năng lãi suất có thể tăng sớm hơn so với kỳ vọng của thị trường.</p>\r\n\r\n<p>CAD có phiên tăng mạnh thứ hai liên tiếp nhờ sự phục hồi của giá dầu thế giới sau khi Bộ trưởng Dầu mỏ Arab Saudi tuyên bố nhu cầu dầu thô đang tăng trở lại. Một yếu tố khác hỗ trợ giá dầu là chỉ số sản xuất của Trung Quốc, nước tiêu thụ dầu lớn thứ 2 thế giới, tăng trong tháng 2. Theo số liệu sơ bộ, chỉ số PMI sản xuất của Trung Quốc trong tháng 2 tăng lên 50.1 điểm so với 49.7 trong tháng 1.</p>\r\n', 1, 1425094020, 'vi', 1, ',8,'),
(16, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015', 'tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-26-02-2015.html', 'img-1.jpg', 'Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.', 'ironfx tin tức thị trường forex ngày 26 02 2015,ironfx tin tuc thi truong forex ngay 26 02 2015', '<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n', 1, 1425094080, 'vi', 1, ',8,');

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
(1, 'Slogan', 'slogan', 'Thời trang cho mọi người', 'vi', 1),
(2, 'Slogan', 'slogan', 'Thời trang cho mọi người', 'en', 1),
(5, 'Số tin / trang', 'limit_1', '10', 'vi', 1),
(6, 'Số SP / trang', 'limit_2', '10', 'vi', 1),
(7, 'Số photo / trang', 'limit_3', '10', 'vi', 1),
(8, 'Số video / trang', 'limit_4', '10', 'vi', 1),
(9, 'Copyright', 'copyright', 'Copyright © 2014', 'vi', 1),
(10, 'Email', 'email', 'hieunhan112@gmail.com', 'vi', 1),
(11, 'Điện thoại', 'tel', '0988 388 003', 'vi', 1),
(12, 'Hotline', 'hotline', '0988 388 003', 'vi', 1),
(13, 'Yahoo', 'yahoo', 'hieu_nhan1', 'vi', 1),
(14, 'Skype', 'skype', 'hieu_nhan1', 'vi', 1),
(15, 'Địa chỉ', 'address', '123 CMT 8, phường 10, quận 10, Tp.HCM', 'vi', 1),
(16, 'News number / page', 'limit_1', '10', 'en', 1),
(17, 'Product number / page', 'limit_2', '10', 'en', 1),
(18, 'Photos number / page', 'limit_3', '10', 'en', 1),
(19, 'Videos number / page', 'limit_4', '10', 'en', 1),
(20, 'Copyright', 'copyright', 'Copyright © 2014', 'en', 1),
(21, 'Email', 'email', 'hieunhan112@gmail.com', 'en', 1),
(22, 'Telephone', 'tel', '0988 388 003', 'en', 1),
(23, 'Hotline', 'hotline', '0988 388 003', 'en', 1),
(24, 'Yahoo', 'yahoo', 'hieu_nhan1', 'en', 1),
(25, 'Skype', 'skype', 'hieu_nhan1', 'en', 1),
(26, 'Address', 'address', '123 CMT 8', 'en', 1),
(27, 'Tên trang website', 'sitename', 'Forexcareer', 'vi', 1),
(28, 'Site name', 'sitename', 'Thời trang 09', 'en', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_logs`
--

INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(1, 'Trang chủ', 'update', 'web_menu', 1423647840, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%%%%%%%Title trang chủ%%%Des trang chủ%%%trang chủ,trang chu%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(2, 'Trang chủ', 'update', 'web_menu', 1423647865, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%trang-chu/%%%%%%Title trang chủ%%%Des trang chủ%%%trang chủ,trang chu%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(3, 'site', 'update', 'web_menu_type', 1423647897, 'admin', '`id`,`name`,`description`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values1%%%site%%%Trang chủ%%%%%%%%%vi%%%1%%%1', 'vi', 0, NULL, NULL),
(4, 'sites', 'update', 'web_menu_type', 1423647906, 'admin', '`id`,`name`,`description`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values1%%%sites%%%Trang chủ%%%%%%%%%vi%%%1%%%1', 'vi', 0, NULL, NULL),
(5, 'Trang chủ', 'update', 'web_menu', 1423647931, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%%%%%%%Title trang chủ%%%Des trang chủ%%%trang chủ,trang chu%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(6, 'Trang chủ', 'update', 'web_menu', 1423647942, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%#%%%%%%Title trang chủ%%%Des trang chủ%%%trang chủ,trang chu%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(7, 'Sản phẩm', 'update', 'web_menu', 1423648181, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Sản phẩm%%%san-pham%%%san-pham/%%%%%%Sản phẩm%%%Sản phẩm%%%sản phẩm,san pham%%%0%%%3%%%0%%%vi%%%1%%%3%%%,3,4,', 'vi', 0, NULL, NULL),
(8, 'Thời trang Nam', 'update', 'web_menu', 1423648185, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values13%%%Thời trang Nam%%%thoi-trang-nam%%%thoi-trang-nam/%%%%%%Thời trang dành cho Nam%%%Thời trang dành cho Nam%%%thời trang nam,thoi trang nam%%%6%%%1%%%1%%%vi%%%1%%%3%%%,4,', 'vi', 0, NULL, NULL),
(9, 'Thời trang Nữ', 'update', 'web_menu', 1423648192, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values14%%%Thời trang Nữ%%%thoi-trang-nu%%%thoi-trang-nu/%%%%%%Thời trang dành cho Nữ%%%Thời trang dành cho Nữ%%%thời trang nữ,thoi trang nu%%%6%%%2%%%1%%%vi%%%1%%%3%%%,4,', 'vi', 0, NULL, NULL),
(10, 'Thời trang Trẻ em - Bé', 'update', 'web_menu', 1423648197, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values15%%%Thời trang Trẻ em - Bé%%%thoi-trang-tre-em-be%%%thoi-trang-tre-em-be/%%%%%%Thời trang dành cho Trẻ em - Bé%%%Thời trang dành cho Trẻ em - Bé%%%thời trang trẻ em bé,thoi trang tre em be%%%6%%%3%%%1%%%vi%%%1%%%3%%%,4,', 'vi', 0, NULL, NULL),
(11, 'Áo Nam', 'update', 'web_menu', 1423648201, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values3%%%Áo Nam%%%ao-nam%%%ao-nam/%%%%%%Áo Nam%%%Áo Nam%%%áo nam,ao nam%%%13%%%1%%%0%%%vi%%%1%%%3%%%,4,', 'vi', 0, NULL, NULL),
(12, 'Quần Nam', 'update', 'web_menu', 1423648205, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values4%%%Quần Nam%%%quan-nam%%%quan-nam/%%%%%%Quần Nam%%%Quần Nam%%%quần nam,quan nam%%%13%%%2%%%0%%%vi%%%1%%%3%%%,4,', 'vi', 0, NULL, NULL),
(13, 'Giày Nam', 'update', 'web_menu', 1423648209, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values5%%%Giày Nam%%%giay-nam%%%giay-nam/%%%%%%Giày Nam%%%Giày Nam%%%giày nam,giay nam%%%13%%%3%%%0%%%vi%%%1%%%3%%%,4,', 'vi', 0, NULL, NULL),
(14, 'Sản phẩm', 'status', 'web_menu', 1423648566, 'admin', '0', 'vi', 0, NULL, NULL),
(15, 'Trang chủ', 'update', 'web_slider_banner', 1423648792, 'admin', '`id`,`name`,`url_img`,`url`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values1%%%Trang chủ%%%slider-home.jpg%%%javascript:;%%%1%%%vi%%%1%%%1%%%,1,', 'vi', 0, NULL, NULL),
(16, 'Sản phẩm', 'status', 'web_menu', 1424940458, 'admin', '1', 'vi', 0, NULL, NULL),
(17, 'Sản phẩm', 'status', 'web_menu', 1424940468, 'admin', '0', 'vi', 0, NULL, NULL),
(18, 'Trang chủ', 'update', 'web_menu', 1424943523, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%%%%Title trang chủ%%%Des trang chủ%%%trang chủ,trang chu%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(19, 'Giới thiệu', 'update', 'web_menu', 1424943529, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values2%%%Giới thiệu%%%gioi-thieu%%%gioi-thieu/%%%%%%Title giới thiệu%%%Des giới thiệu%%%giới thiệu,gioi thieu%%%0%%%2%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(20, 'Hướng dẫn thanh toán', 'update', 'web_menu', 1424943535, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values7%%%Hướng dẫn thanh toán%%%huong-dan-thanh-toan%%%huong-dan-thanh-toan/%%%%%%Hướng dẫn thanh toán%%%Hướng dẫn thanh toán%%%hướng dẫn thanh toán,huong dan thanh toan%%%0%%%4%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(21, 'Thông tin sản phẩm', 'update', 'web_menu', 1424943538, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values8%%%Thông tin sản phẩm%%%thong-tin-san-pham%%%thong-tin-san-pham/%%%%%%Thông tin sản phẩm%%%Thông tin sản phẩm%%%thông tin sản phẩm,thong tin san pham%%%0%%%5%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(22, 'Liên hệ', 'update', 'web_menu', 1424943542, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values9%%%Liên hệ%%%lien-he%%%lien-he/%%%%%%Liên hệ%%%Liên hệ%%%liên hệ,lien he%%%0%%%6%%%0%%%vi%%%1%%%13%%%,2,3,', 'vi', 0, NULL, NULL),
(23, 'Giới thiệu', 'status', 'web_slider_banner', 1424944863, 'admin', '0', 'vi', 0, NULL, NULL),
(24, 'Trang chủ', 'update', 'web_slider_banner', 1424944869, 'admin', '`id`,`name`,`url_img`,`url`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values1%%%Trang chủ%%%slider-home.jpg%%%javascript:;%%%1%%%vi%%%1%%%1%%%,1,', 'vi', 0, NULL, NULL),
(25, 'Trang chủ', 'update', 'web_slider_banner', 1424944893, 'admin', '`id`,`name`,`url_img`,`url`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values1%%%Trang chủ%%%slider-home.jpg%%%javascript:;%%%1%%%vi%%%1%%%1%%%,1,2,', 'vi', 0, NULL, NULL),
(26, 'Sản phẩm', 'status', 'web_menu', 1424945241, 'admin', '1', 'vi', 0, NULL, NULL),
(27, 'Sản phẩm', 'status', 'web_menu', 1424945289, 'admin', '0', 'vi', 0, NULL, NULL),
(28, 'Home - Mùng chống muỗi', 'update', 'web_article', 1425026496, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Home - Mùng chống muỗi%%%home-mung-chong-muoi%%%%%%about-home-mung-chong-muoi.png%%%Phòng ngủ của bạn sẽ sạch sẽ hơn, an toàn hơn, giấc ngủ sẽ sâu hơn, trọn vẹn hơn khi bạn có chiếc mùng (màn) ChamCham với chức năng đặc biệt: xua đuổi diệt muỗi, ruồi, gián, rận, rệp, kiến, rầy, bọ, v.v.%%%home mùng chống muỗi%%%<p><img alt="Home - Mùng chống muỗi" src="/all/source_temp_v4/public/images/articles/about-home-mung-chong-muoi.png" style="width: 300px; height: 180px; float: right; margin-left: 10px; margin-right: 10px;" /></p>\r\n\r\n<h2>Ph&ograve;ng ngủ của bạn sẽ sạch sẽ hơn, an to&agrave;n hơn, giấc ngủ sẽ s&acirc;u hơn, trọn vẹn hơn khi bạn c&oacute; chiếc m&ugrave;ng (m&agrave;n) ChamCham với chức năng đặc biệt: xua đuổi diệt muỗi, ruồi, gi&aacute;n, rận, rệp, kiến, rầy, bọ, v.v. Kh&ocirc;ng c&ograve;n ch&iacute;ch đốt, kh&ocirc;ng c&ograve;n vo ve. Giấc ngủ an to&agrave;n, giấc ngủ ngon!</h2>\r\n\r\n<h2>Sản phẩm m&ugrave;ng xua đuổi diệt muỗi ChamCham đ&aacute;p ứng được ti&ecirc;u chuẩn xuất khẩu l&agrave; sản phẩm m&ugrave;ng ngủ chất lượng sản xuất theo d&acirc;y chuyền, c&ocirc;ng nghệ đột ph&aacute;.</h2>\r\n\r\n<h2>Sản phẩm c&oacute; khả năng xua đuổi diệt muỗi v&agrave; c&ocirc;n tr&ugrave;ng, kh&ocirc;ng cho ch&uacute;ng đến gần ch&iacute;ch đốt, vo ve bực bội b&ecirc;n tai.</h2>\r\n%%%1%%%1408459980%%%vi%%%1%%%,1,', 'vi', 0, NULL, NULL),
(29, 'Công dụng của mùng chuống muỗi', 'update', 'web_article', 1425026513, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Công dụng của mùng chuống muỗi%%%cong-dung-cua-mung-chuong-muoi%%%thong-tin-san-pham/cong-dung-cua-mung-chuong-muoi.html%%%about-home-mung-chong-muoi.png%%%Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.%%%công dụng của mùng chuống muỗi,cong dung cua mung chuong muoi%%%<p>Sản phẩm m&ugrave;ng xua đuổi diệt muỗi ChamCham đ&aacute;p ứng được ti&ecirc;u chuẩn xuất khẩu l&agrave; sản phẩm m&ugrave;ng ngủ chất lượng sản xuất theo d&acirc;y chuyền, c&ocirc;ng nghệ đột ph&aacute;.</p>\r\n%%%1%%%1408459980%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(30, 'Tác dụng của mùng chuống muỗi', 'update', 'web_article', 1425026522, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Tác dụng của mùng chuống muỗi%%%tac-dung-cua-mung-chuong-muoi%%%thong-tin-san-pham/tac-dung-cua-mung-chuong-muoi.html%%%about-home-mung-chong-muoi.png%%%Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.%%%tác dụng của mùng chuống muỗi,tac dung cua mung chuong muoi%%%<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n%%%1%%%1408459980%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(31, 'Lợi ích mùng chống muỗi', 'update', 'web_article', 1425026529, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%Lợi ích mùng chống muỗi%%%loi-ich-mung-chong-muoi%%%thong-tin-san-pham/loi-ich-mung-chong-muoi.html%%%about-home-mung-chong-muoi.png%%%Lợi ích mùng chống muỗi sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền%%%lợi ích mùng chống muỗi,loi ich mung chong muoi%%%<h2>Lợi ích mùng chống muỗi sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền</h2>\r\n%%%0%%%1408459800%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(32, 'Giới thiệu về công ty', 'update', 'web_article', 1425026537, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values5%%%Giới thiệu về công ty%%%gioi-thieu-ve-cong-ty%%%gioi-thieu/gioi-thieu-ve-cong-ty.html%%%%%%Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.%%%giới thiệu về công ty,gioi thieu ve cong ty%%%<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus.</p>\r\n\r\n<p>Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros.</p>\r\n\r\n<p>Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis.</p>\r\n\r\n<p>Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n%%%0%%%1408439640%%%vi%%%1%%%,2,', 'vi', 0, NULL, NULL),
(33, 'Home - Mùng chống muỗi', 'update', 'web_article', 1425028162, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Home - Mùng chống muỗi%%%home-mung-chong-muoi%%%%%%img-1.jpg%%%Phòng ngủ của bạn sẽ sạch sẽ hơn, an toàn hơn, giấc ngủ sẽ sâu hơn, trọn vẹn hơn khi bạn có chiếc mùng (màn) ChamCham với chức năng đặc biệt: xua đuổi diệt muỗi, ruồi, gián, rận, rệp, kiến, rầy, bọ, v.v.%%%home mùng chống muỗi%%%<p><img alt="Home - Mùng chống muỗi" src="/all/source_temp_v4/public/images/articles/about-home-mung-chong-muoi.png" style="width: 300px; height: 180px; float: right; margin-left: 10px; margin-right: 10px;" /></p>\r\n\r\n<h2>Phòng ngủ của bạn sẽ sạch sẽ hơn, an toàn hơn, giấc ngủ sẽ sâu hơn, trọn vẹn hơn khi bạn có chiếc mùng (màn) ChamCham với chức năng đặc biệt: xua đuổi diệt muỗi, ruồi, gián, rận, rệp, kiến, rầy, bọ, v.v. Không còn chích đốt, không còn vo ve. Giấc ngủ an toàn, giấc ngủ ngon!</h2>\r\n\r\n<h2>Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.</h2>\r\n\r\n<h2>Sản phẩm có khả năng xua đuổi diệt muỗi và côn trùng, không cho chúng đến gần chích đốt, vo ve bực bội bên tai.</h2>\r\n%%%1%%%1408459980%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(34, 'Công dụng của mùng chuống muỗi', 'update', 'web_article', 1425028172, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Công dụng của mùng chuống muỗi%%%cong-dung-cua-mung-chuong-muoi%%%thong-tin-san-pham/cong-dung-cua-mung-chuong-muoi.html%%%img-1.jpg%%%Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.%%%công dụng của mùng chuống muỗi,cong dung cua mung chuong muoi%%%<p>Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.</p>\r\n%%%1%%%1408459980%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(35, 'Tác dụng của mùng chuống muỗi', 'update', 'web_article', 1425028183, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Tác dụng của mùng chuống muỗi%%%tac-dung-cua-mung-chuong-muoi%%%thong-tin-san-pham/tac-dung-cua-mung-chuong-muoi.html%%%img-1.jpg%%%Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.%%%tác dụng của mùng chuống muỗi,tac dung cua mung chuong muoi%%%<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n%%%1%%%1408459980%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(36, 'Home - Mùng chống muỗi', 'update', 'web_article', 1425028196, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Home - Mùng chống muỗi%%%home-mung-chong-muoi%%%%%%img-1.jpg%%%Phòng ngủ của bạn sẽ sạch sẽ hơn, an toàn hơn, giấc ngủ sẽ sâu hơn, trọn vẹn hơn khi bạn có chiếc mùng (màn) ChamCham với chức năng đặc biệt: xua đuổi diệt muỗi, ruồi, gián, rận, rệp, kiến, rầy, bọ, v.v.%%%home mùng chống muỗi%%%<p><img alt="Home - Mùng chống muỗi" src="/all/source_temp_v4/public/images/articles/about-home-mung-chong-muoi.png" style="width: 300px; height: 180px; float: right; margin-left: 10px; margin-right: 10px;" /></p>\r\n\r\n<h2>Phòng ngủ của bạn sẽ sạch sẽ hơn, an toàn hơn, giấc ngủ sẽ sâu hơn, trọn vẹn hơn khi bạn có chiếc mùng (màn) ChamCham với chức năng đặc biệt: xua đuổi diệt muỗi, ruồi, gián, rận, rệp, kiến, rầy, bọ, v.v. Không còn chích đốt, không còn vo ve. Giấc ngủ an toàn, giấc ngủ ngon!</h2>\r\n\r\n<h2>Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.</h2>\r\n\r\n<h2>Sản phẩm có khả năng xua đuổi diệt muỗi và côn trùng, không cho chúng đến gần chích đốt, vo ve bực bội bên tai.</h2>\r\n%%%1%%%1425028140%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(37, 'Tác dụng của mùng chuống muỗi', 'update', 'web_article', 1425028359, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Tác dụng của mùng chuống muỗi%%%tac-dung-cua-mung-chuong-muoi%%%thong-tin-san-pham/tac-dung-cua-mung-chuong-muoi.html%%%img-1.jpg%%%Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.%%%tác dụng của mùng chuống muỗi,tac dung cua mung chuong muoi%%%<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n%%%1%%%1424323800%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(38, 'Số tin / trang', 'update', 'web_config', 1425028603, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values5%%%Số tin / trang%%%limit_1%%%10%%%vi%%%1', 'vi', 0, NULL, NULL),
(39, 'Số tin / trang', 'update', 'web_config', 1425028864, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values5%%%Số tin / trang%%%limit_1%%%2%%%vi%%%1', 'vi', 0, NULL, NULL),
(40, 'Số tin / trang', 'update', 'web_config', 1425028928, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values5%%%Số tin / trang%%%limit_1%%%10%%%vi%%%1', 'vi', 0, NULL, NULL),
(41, 'Số tin / trang', 'update', 'web_config', 1425030833, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values5%%%Số tin / trang%%%limit_1%%%2%%%vi%%%1', 'vi', 0, NULL, NULL),
(42, 'Tên trang website', 'update', 'web_config', 1425032265, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values27%%%Tên trang website%%%sitename%%%Thời trang 09%%%vi%%%1', 'vi', 0, NULL, NULL),
(43, 'tran nhan', 'delete', 'web_contact', 1425040757, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`lang`,`status`fields%%%values3%%%tran nhan%%%123@yahoo.com%%%0988388003%%%123 CMT 8%%%aaaaaaaaaaaaaaaaaaaa%%%1425032691%%%vi%%%0', 'vi', 0, NULL, NULL),
(44, 'Tran Hieu Nhan', 'delete', 'web_contact', 1425040758, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`lang`,`status`fields%%%values2%%%Tran Hieu Nhan%%%hieunhan112@gmail.com%%%0988 388 003%%%%%%Test noi dung lien he%%%1425032218%%%vi%%%0', 'vi', 0, NULL, NULL),
(45, 'Trần Nhân', 'delete', 'web_contact', 1425040759, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`lang`,`status`fields%%%values1%%%Trần Nhân%%%hieunhan112@gmail.com%%%0988388003%%%123 CMT 8%%%<p>Test <span style="color:#A52A2A;">lien he</span></p>\r\n%%%0%%%vi%%%0', 'vi', 0, NULL, NULL),
(46, 'Trang chủ', 'update', 'web_menu', 1425040787, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/forexcareer/%%%%%%Title trang chủ%%%Des trang chủ%%%trang chủ,trang chu%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(47, 'Hướng dẫn thanh toán', 'update', 'web_menu', 1425091399, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values7%%%Hướng dẫn thanh toán%%%huong-dan-thanh-toan%%%huong-dan-thanh-toan/%%%%%%Hướng dẫn thanh toán%%%Hướng dẫn thanh toán%%%hướng dẫn thanh toán,huong dan thanh toan%%%0%%%4%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(48, 'Chương trình đào tạo', 'update', 'web_menu', 1425091416, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values7%%%Chương trình đào tạo%%%chuong-trinh-dao-tao%%%chuong-trinh-dao-tao/%%%%%%http://localhost/all/forexcareer/%%%http://localhost/all/forexcareer/%%%chương trình đào tạo,chuong trinh dao tao%%%0%%%4%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(49, 'Thông tin sản phẩm', 'update', 'web_menu', 1425091476, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values8%%%Thông tin sản phẩm%%%thong-tin-san-pham%%%thong-tin-san-pham/%%%%%%Thông tin sản phẩm%%%Thông tin sản phẩm%%%thông tin sản phẩm,thong tin san pham%%%0%%%5%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(50, 'Chương trình đào tạo', 'update', 'web_menu', 1425091500, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values7%%%Chương trình đào tạo%%%chuong-trinh-dao-tao%%%chuong-trinh-dao-tao/%%%%%%Chương trình đào tạo%%%Chương trình đào tạo%%%chương trình đào tạo,chuong trinh dao tao%%%0%%%4%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(51, 'Sản phẩm', 'update', 'web_menu', 1425091576, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Sản phẩm%%%san-pham%%%san-pham/%%%%%%Sản phẩm%%%Sản phẩm%%%sản phẩm,san pham%%%0%%%3%%%0%%%vi%%%0%%%3%%%,2,3,4,', 'vi', 0, NULL, NULL),
(52, '-- Thời trang Nam', 'status', 'web_menu', 1425091590, 'admin', '0', 'vi', 0, NULL, NULL),
(53, '-- -- Áo Nam', 'status', 'web_menu', 1425091590, 'admin', '0', 'vi', 0, NULL, NULL),
(54, '-- -- Quần Nam', 'status', 'web_menu', 1425091591, 'admin', '0', 'vi', 0, NULL, NULL),
(55, '-- -- Giày Nam', 'status', 'web_menu', 1425091592, 'admin', '0', 'vi', 0, NULL, NULL),
(56, '-- Thời trang Nữ', 'status', 'web_menu', 1425091593, 'admin', '0', 'vi', 0, NULL, NULL),
(57, '-- Thời trang Trẻ em - Bé', 'status', 'web_menu', 1425091594, 'admin', '0', 'vi', 0, NULL, NULL),
(58, 'Thời trang Trẻ em - Bé', 'update', 'web_menu', 1425091675, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values15%%%Thời trang Trẻ em - Bé%%%thoi-trang-tre-em-be%%%thoi-trang-tre-em-be/%%%%%%Thời trang dành cho Trẻ em - Bé%%%Thời trang dành cho Trẻ em - Bé%%%thời trang trẻ em bé,thoi trang tre em be%%%6%%%3%%%1%%%vi%%%0%%%3%%%,2,4,', 'vi', 0, NULL, NULL),
(59, 'Reasons to choose FOREXCAREER.com', 'update', 'web_menu', 1425091688, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values15%%%Reasons to choose FOREXCAREER.com%%%reasons-to-choose-forexcareer-com%%%reasons-to-choose-forexcareer-com/%%%%%%Reasons to choose FOREXCAREER.com%%%Reasons to choose FOREXCAREER.com%%%Reasons to choose FOREXCAREER.com%%%1%%%0%%%1%%%vi%%%1%%%2%%%,9,', 'vi', 0, NULL, NULL),
(60, 'Phân tích thị trường', 'update', 'web_menu', 1425091713, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Phân tích thị trường%%%phan-tich-thi-truong%%%phan-tich-thi-truong/%%%%%%Phân tích thị trường%%%Phân tích thị trường%%%phân tích thị trường,phan tich thi truong%%%0%%%4%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(61, 'Tin tức - Sự kiện', 'update', 'web_menu', 1425091721, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values8%%%Tin tức - Sự kiện%%%tin-tuc-su-kien%%%tin-tuc-su-kien/%%%%%%Tin tức - Sự kiện%%%Tin tức - Sự kiện%%%tin tức sự kiện,tin tuc su kien%%%0%%%5%%%0%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(62, 'Đặt hàng', 'status', 'web_menu', 1425091733, 'admin', '0', 'vi', 0, NULL, NULL),
(63, '-- Giỏ hàng', 'status', 'web_menu', 1425091734, 'admin', '0', 'vi', 0, NULL, NULL),
(64, '-- Thanh toán', 'status', 'web_menu', 1425091736, 'admin', '0', 'vi', 0, NULL, NULL),
(65, 'Facebook', 'status', 'web_menu', 1425091737, 'admin', '0', 'vi', 0, NULL, NULL),
(66, 'Youtube', 'status', 'web_menu', 1425091737, 'admin', '0', 'vi', 0, NULL, NULL),
(67, 'Thời trang Nam', 'update', 'web_menu', 1425091747, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values13%%%Thời trang Nam%%%thoi-trang-nam%%%thoi-trang-nam/%%%%%%Thời trang dành cho Nam%%%Thời trang dành cho Nam%%%thời trang nam,thoi trang nam%%%6%%%1%%%1%%%vi%%%0%%%3%%%,2,4,', 'vi', 0, NULL, NULL),
(68, 'Thời trang Nữ', 'update', 'web_menu', 1425091754, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values14%%%Thời trang Nữ%%%thoi-trang-nu%%%thoi-trang-nu/%%%%%%Thời trang dành cho Nữ%%%Thời trang dành cho Nữ%%%thời trang nữ,thoi trang nu%%%6%%%2%%%1%%%vi%%%0%%%3%%%,2,4,', 'vi', 0, NULL, NULL),
(69, 'Home - Mùng chống muỗi', 'update', 'web_article', 1425092191, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Home - Mùng chống muỗi%%%home-mung-chong-muoi%%%%%%img-1.jpg%%%Phòng ngủ của bạn sẽ sạch sẽ hơn, an toàn hơn, giấc ngủ sẽ sâu hơn, trọn vẹn hơn khi bạn có chiếc mùng (màn) ChamCham với chức năng đặc biệt: xua đuổi diệt muỗi, ruồi, gián, rận, rệp, kiến, rầy, bọ, v.v.%%%home mùng chống muỗi%%%<p><img alt="Home - Mùng chống muỗi" src="/all/source_temp_v4/public/images/articles/about-home-mung-chong-muoi.png" style="width: 300px; height: 180px; float: right; margin-left: 10px; margin-right: 10px;" /></p>\r\n\r\n<h2>Phòng ngủ của bạn sẽ sạch sẽ hơn, an toàn hơn, giấc ngủ sẽ sâu hơn, trọn vẹn hơn khi bạn có chiếc mùng (màn) ChamCham với chức năng đặc biệt: xua đuổi diệt muỗi, ruồi, gián, rận, rệp, kiến, rầy, bọ, v.v. Không còn chích đốt, không còn vo ve. Giấc ngủ an toàn, giấc ngủ ngon!</h2>\r\n\r\n<h2>Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.</h2>\r\n\r\n<h2>Sản phẩm có khả năng xua đuổi diệt muỗi và côn trùng, không cho chúng đến gần chích đốt, vo ve bực bội bên tai.</h2>\r\n%%%1%%%1423732140%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(70, 'Công dụng của mùng chuống muỗi', 'update', 'web_article', 1425092226, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Công dụng của mùng chuống muỗi%%%cong-dung-cua-mung-chuong-muoi%%%thong-tin-san-pham/cong-dung-cua-mung-chuong-muoi.html%%%img-1.jpg%%%Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.%%%công dụng của mùng chuống muỗi,cong dung cua mung chuong muoi%%%<p>Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.</p>\r\n%%%1%%%1424941740%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(71, 'Tác dụng của mùng chuống muỗi', 'update', 'web_article', 1425092262, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Tác dụng của mùng chuống muỗi%%%tac-dung-cua-mung-chuong-muoi%%%thong-tin-san-pham/tac-dung-cua-mung-chuong-muoi.html%%%img-1.jpg%%%Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.%%%tác dụng của mùng chuống muỗi,tac dung cua mung chuong muoi%%%<h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</h2>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci.</p>\r\n\r\n<p>Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p>Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis.</p>\r\n\r\n<p>Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n%%%1%%%1424323800%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(72, 'Lợi ích mùng chống muỗi', 'update', 'web_article', 1425092290, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%Lợi ích mùng chống muỗi%%%loi-ich-mung-chong-muoi%%%thong-tin-san-pham/loi-ich-mung-chong-muoi.html%%%img-1.jpg%%%Lợi ích mùng chống muỗi sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền%%%lợi ích mùng chống muỗi,loi ich mung chong muoi%%%<h2>Lợi ích mùng chống muỗi sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền</h2>\r\n%%%0%%%1408459800%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(73, 'MetaTrader & FOREX.com', 'update', 'web_article', 1425092303, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%MetaTrader & FOREX.com%%%metatrader-forex-com%%%%%%%%%Tight transparent spreads, quality executions, free EA hosting, integrated order management features and free research – get the FOREX.com advantage.%%%%%%%%%0%%%1408459800%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(74, 'Giới thiệu về công ty', 'update', 'web_article', 1425092329, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values5%%%Giới thiệu về công ty%%%gioi-thieu-ve-cong-ty%%%gioi-thieu/gioi-thieu-ve-cong-ty.html%%%img-1.jpg%%%Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.%%%giới thiệu về công ty,gioi thieu ve cong ty%%%<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla.</p>\r\n\r\n<p>Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus.</p>\r\n\r\n<p>Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros.</p>\r\n\r\n<p>Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis.</p>\r\n\r\n<p>Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n%%%0%%%1408439640%%%vi%%%1%%%,2,8,', 'vi', 0, NULL, NULL),
(75, 'Exclusive research', 'update', 'web_article', 1425092340, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values5%%%Exclusive research%%%exclusive-research%%%%%%%%%Benefit from the experience and insights of our global research team with real-time market analysis and actionable trade ideas.%%%%%%%%%0%%%1408439640%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(76, '100% segregated funds', 'create', 'web_article', 1425092366, 'admin', '', 'vi', 0, NULL, NULL),
(77, 'Strength and Security', 'update', 'web_article', 1425092843, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Strength and Security%%%strength-and-security%%%%%%%%%Trade with a market leader who has strong financial resources and over 15 years’ experience serving 200,000 clients globally.%%%strength and security,strength and security%%%%%%1%%%1423732140%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(78, 'Strength and Security', 'update', 'web_article', 1425092856, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Strength and Security%%%strength-and-security%%%%%%%%%Trade with a market leader who has strong financial resources and over 15 years’ experience serving 200,000 clients globally.%%%strength and security,strength and security%%%%%%1%%%1424941800%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(79, 'Strength and Security1', 'update', 'web_article', 1425092862, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Strength and Security1%%%strength-and-security%%%%%%%%%Trade with a market leader who has strong financial resources and over 15 years’ experience serving 200,000 clients globally.%%%strength and security,strength and security%%%%%%1%%%1424941800%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(80, 'Strength and Securit', 'update', 'web_article', 1425092871, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Strength and Securit%%%strength-and-security%%%%%%%%%Trade with a market leader who has strong financial resources and over 15 years’ experience serving 200,000 clients globally.%%%strength and security,strength and security%%%%%%1%%%1424941800%%%vi%%%1%%%,15,', 'vi', 0, NULL, NULL),
(81, 'Đồng Euro gặp khó với khả năng Hy Lạp rời EU?', 'create', 'web_article', 1425093199, 'admin', '', 'vi', 0, NULL, NULL),
(82, 'Bản tin thị trường tiền tệ thế giới ngày 6/2', 'create', 'web_article', 1425093282, 'admin', '', 'vi', 0, NULL, NULL),
(83, 'Giá dầu thấp sẽ không tốt cho đồng EUR, JPY?', 'create', 'web_article', 1425093329, 'admin', '', 'vi', 0, NULL, NULL),
(84, 'Forex Million: Vàng giao dịch trong kênh tăng', 'create', 'web_article', 1425093375, 'admin', '', 'vi', 0, NULL, NULL),
(85, 'Địa chỉ', 'update', 'web_config', 1425093563, 'admin', '`id`,`name`,`name_var`,`value`,`lang`,`status`fields%%%values15%%%Địa chỉ%%%address%%%123 cách mạng tháng 8, phường 10, quận 10, Tp.HCM%%%vi%%%1', 'vi', 0, NULL, NULL),
(86, 'Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 27/02/2015', 'create', 'web_article', 1425093903, 'admin', '', 'vi', 0, NULL, NULL),
(87, 'IronFX: Tin tức thị trường forex ngày 12/02/2015', 'create', 'web_article', 1425093984, 'admin', '', 'vi', 0, NULL, NULL),
(88, 'Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 12/02/2015', 'create', 'web_article', 1425094036, 'admin', '', 'vi', 0, NULL, NULL),
(89, 'Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 26/02/2015', 'create', 'web_article', 1425094072, 'admin', '', 'vi', 0, NULL, NULL),
(90, 'IronFX: Tin tức thị trường forex ngày 26/02/2015', 'create', 'web_article', 1425094118, 'admin', '', 'vi', 0, NULL, NULL),
(91, 'service', 'update', 'web_menu_type', 1425094473, 'admin', '`id`,`name`,`description`,`url_img`,`url_img_thumb`,`lang`,`order`,`status`fields%%%values4%%%service%%%Dịch vụ%%%public/images/articles/%%%public/_thumbs/Images/articles/%%%vi%%%4%%%0', 'vi', 0, NULL, NULL),
(92, 'Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 26/02/2015', 'update', 'web_article', 1425094870, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values15%%%Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 26/02/2015%%%ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-26-02-2015%%%tin-tuc-su-kien/ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-26-02-2015.html%%%%%%USD – Index, chỉ số đo lường sức mạnh của đồng bạc xanh so với rổ tiền tệ chủ chốt tiếp tục giảm điểm trong phiên giao dịch hôm qua sau khi chủ tịch Fed Janet Yellen%%%bản tin tư vấn tiền tệ vàng của eximbank ngày 26 02 2015,ban tin tu van tien te vang cua eximbank ngay 26 02 2015%%%<p>USD – Index, chỉ số đo lường sức mạnh của đồng bạc xanh so với rổ tiền tệ chủ chốt tiếp tục giảm điểm trong phiên giao dịch hôm qua sau khi chủ tịch Fed Janet Yellen, trong phiên điều trần thứ hai, lặp lại quan điểm rằng các nhà hoạch định chính sách của Fed sẽ không tự buộc mình vào một lịch trình nâng lãi suất cố định mà sẽ xem xét trong các cuộc họp chính sách tới đây dựa trên các số liệu kinh tế.</p>\r\n\r\n<p>Đồng bảng Anh tăng giá mạnh hôm qua sau dữ liệu tích cực từ thị trường nhà đất và phát biểu của các quan chức Ngân hàng Trung ương Anh (BOE) về khả năng lãi suất có thể tăng sớm hơn so với kỳ vọng của thị trường.</p>\r\n\r\n<p>CAD có phiên tăng mạnh thứ hai liên tiếp nhờ sự phục hồi của giá dầu thế giới sau khi Bộ trưởng Dầu mỏ Arab Saudi tuyên bố nhu cầu dầu thô đang tăng trở lại. Một yếu tố khác hỗ trợ giá dầu là chỉ số sản xuất của Trung Quốc, nước tiêu thụ dầu lớn thứ 2 thế giới, tăng trong tháng 2. Theo số liệu sơ bộ, chỉ số PMI sản xuất của Trung Quốc trong tháng 2 tăng lên 50.1 điểm so với 49.7 trong tháng 1.</p>\r\n%%%1%%%1425094020%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(93, 'Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 12/02/2015', 'update', 'web_article', 1425094875, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values14%%%Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 12/02/2015%%%ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-12-02-2015%%%tin-tuc-su-kien/ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-12-02-2015.html%%%%%%Tỷ giá EUR/USD dao động trong biên độ hẹp trong những ngày qua khi thị trường đang chờ đợi thông tin về cuộc họp giữa các Bộ trưởng Tài chính khu vực đồng Euro%%%bản tin tư vấn tiền tệ vàng của eximbank ngày 12 02 2015,ban tin tu van tien te vang cua eximbank ngay 12 02 2015%%%<p>Tỷ giá EUR/USD dao động trong biên độ hẹp trong những ngày qua khi thị trường đang chờ đợi thông tin về cuộc họp giữa các Bộ trưởng Tài chính khu vực đồng Euro với Bộ trưởng Tài chính Hy Lạp về vấn đề nợ của nước này. Ngày đàm phán hôm qua đã không đưa ra một tuyên bố chính thức cũng như thông tin về việc liệu có tiếp tục giải ngân gói cứu trợ dành cho Hy Lạp cho đến cuộc họp tiếp theo dự kiến diễn ra vào thứ Hai tuần sau.</p>\r\n\r\n<p>AUD giảm giá mạnh sáng nay khi dữ liệu công bố cho thấy số việc làm của nền kinh tế Úc trong tháng qua giảm 12,200, nhiều hơn so với dự báo giảm 4,700 của giới phân tích và mức tăng 42,300 của tháng 12/2014. Tỷ lệ thất nghiệp của Úc trong tháng 1 cũng tăng từ 6.2% lên 6.4%, mức cao nhất trong vòng 13 năm qua. Tuần trước, Ngân hàng Trung ương Úc đã giảm lãi suất cơ bản xuống mức thấp kỷ lục là 2.25% và cơ quan này được dự báo sẽ tiếp tục hạ lãi suất trong thời gian tới.</p>\r\n\r\n<p>Thông tin đáng chú ý hôm nay là báo cáo kinh tế của Ngân hàng Trung ương Anh (BOE). Báo cáo ra hàng quý này của BOE được giới đầu tư đặc biệt theo dõi để tìm manh mối về chính sách tiền tệ của cơ quan này. Nếu tại báo cáo lần này, BOE hạ dự báo lạm phát nhưng cho biết lạm phát thấp hiện không đáng ngại và đây chỉ là vấn đề tạm thời thì đồng bảng Anh sẽ hồi phục nhanh chóng sau khi giảm giá. Tuy nhiên, nếu BOE cho rằng chính sách tiền tệ sẽ được giữ ổn định trong một thời gian dài nữa bởi áp lực lạm phát xuống thấp thì GBP sẽ lao dốc mạnh và xóa nhòa mức tăng trong những ngày qua.</p>\r\n%%%1%%%1425093960%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(94, 'IronFX: Tin tức thị trường forex ngày 12/02/2015', 'update', 'web_article', 1425094879, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values13%%%IronFX: Tin tức thị trường forex ngày 12/02/2015%%%ironfx-tin-tuc-thi-truong-forex-ngay-12-02-2015%%%tin-tuc-su-kien/ironfx-tin-tuc-thi-truong-forex-ngay-12-02-2015.html%%%%%%Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi.%%%ironfx tin tức thị trường forex ngày 12 02 2015,ironfx tin tuc thi truong forex ngay 12 02 2015%%%<p>IronFX – Marshall Gittler: Bức tranh toàn cảnh thị trường Forex</p>\r\n\r\n<p>Liệu có phiên bản Hy Lạp của trò Cò quay Nga? Bộ trưởng Tài chính Hy Lạp Yanis Varoufakis là một giáo sư kinh tế, người là một chuyên gia về lý thuyết trò chơi. Tôi tự hỏi bây giờ ông đang chơi trò gì? Liệu Hy Lạp có phiên bản riêng của trò Cò quay Nga? Nỗ lực đầu tiên của các bộ trưởng tài chính Eurozone nhằm đối phó với các nhu cầu mới của Hy Lạp đã thất bại vào đêm qua. Sau 6 giờ đàm phán, hai bên đã không thể đi đến thống nhất thậm chí về cách đi tiếp để giải quyết thế bế tắc. Họ đã rời cuộc họp mà không có bất kỳ đàm phán bổ sung nào được lên lịch trước khi một cuộc họp khác của các bộ trưởng tài chính sẽ diễn ra vào thứ Hai tuần tới, mà cuộc họp này là thời hạn cho việc đạt được thỏa thuận nào đó nhằm gia hạn chương trình cứu trợ hiện tại trị giá 172 tỷ euro của Hy Lạp sau khi chương trình này hết hạn vào ngày 28/2.</p>\r\n\r\n<p>Theo tờ FT, các quan chức Eurozone tham gia vào cuộc đàm phán đã nói rằng hai bên đã nhất trí về một tuyên bố chung sẽ đưa ra khả năng đạt được một thỏa thuận. Tuy nhiên, sau khi cuộc họp kết thúc, Varoufakis đã thảo luận với các quan chức quay trở lại Athens và sau đó đã làm dấy lên các phản đối mới và tuyên bố bị hủy bỏ. Sự bất đồng có thể chấm dứt thắc mắc về việc liệu họ có “gia hạn” gói cứu trợ hiện tại hay không. Tổng thống Hy Lạp Tsipras cho rằng ông đã được bầu với nhiệm vụ không gia hạn gói cứu trợ hiện tại và đã kiên quyết không làm vậy trong mọi trường hợp, vì vậy, họ phải tìm cách nào đó để đi đến thỏa thuận không sử dụng cụm từ “gia hạn”.</p>\r\n\r\n<p>Tôi cảm thấy lạ thường khi thị trường có vẻ không quan tâm đến diễn biến này. Vào thời điểm viết bài viết này, tỷ giá EUR/USD gần như không đổi so với mức cách đây 24 giờ. Việc đó khiến EUR thực sự trở thành đồng tiền thể hiện tốt nhất trong số các đồng tiền của nhóm G10 so với đồng đô la, đồng tiền đã tăng điểm so với tất cả các đồng tiền khác khi có thêm các quan chức của Fed ủng hộ việc thắt chặt (đặc biệt là AUD, theo sau là NZD và NOK). Khoảng giao dịch của tỷ giá EUR/USD trong ngày hôm qua cũng thu hẹp một cách bất thường ở mức 0,45%, bằng khoảng một nửa mức trung bình 6 tháng (0,81%). Có lo lắng nhất định về đồng euro được phản ánh trên thị trường tùy chọn, nơi mà đảo ngược rủi ro ATM 25 delta đối với tỷ giá EUR/USD đã tiếp tục âm, ngụ ý nhu cầu gia tăng đối với việc bán ra euro so với việc mua vào. Có phải Ngân hàng Trung ương Thụy Sĩ đang can thiệp vào thị trường giao ngay để giữ cho đồng euro khỏi suy yếu hay không? Có vẻ như có thế lực siêu nhiên đang hành động trong cặp tỷ giá này.</p>\r\n\r\n<p>Hoặc việc đó hoặc các nhà đầu tư có nhiều niềm tin vào khả năng của các bộ trưởng tài chính Eurozone trong việc tìm ra giải pháp bất ngờ vào phút chót. Đó tất nhiên là cách mà tất cả các cuộc khủng hoảng của Eurozone đã được giải quyết cho tới nay: họ xoay sở để đạt được một thỏa thuận nào đó vào 11:57 đêm Chủ nhật, thường là qua việc Đức nhượng bộ. Chính phủ Hy Lạp được bầu cử với nhiệm vụ đàm phán lại nợ công của quốc gia này, không phải là nhiệm vụ rời khỏi khu vực đồng Euro, vì vậy, cũng có áp lực nhất định đối với chính phủ này trong việc thỏa hiệp. Trong mọi trường hợp, ngay cả nếu họ để lỡ thời hạn vào thứ Hai tới, rắc rối thực sự sẽ không diễn ra cho tới ngày 20/7 thời điểm khi mà 3,5 tỷ euro trái phiếu đến hạn.</p>\r\n%%%1%%%1425093900%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL),
(95, 'Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 27/02/2015', 'update', 'web_article', 1425094885, 'admin', '`id`,`name`,`name_alias`,`url`,`url_img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values12%%%Bản tin tư vấn tiền tệ, vàng của Eximbank ngày 27/02/2015%%%ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-27-02-2015%%%tin-tuc-su-kien/ban-tin-tu-van-tien-te-vang-cua-eximbank-ngay-27-02-2015.html%%%%%%USD bật tăng mạnh trở lại so với các đồng tiền chủ chốt hôm qua sau các dữ liệu tích cực đến từ kinh tế Mỹ.%%%bản tin tư vấn tiền tệ vàng của eximbank ngày 27 02 2015,ban tin tu van tien te vang cua eximbank ngay 27 02 2015%%%<p>USD TĂNG MẠNH SAU DỮ LIỆU KINH TẾ MỸ</p>\r\n\r\n<p>USD bật tăng mạnh trở lại so với các đồng tiền chủ chốt hôm qua sau các dữ liệu tích cực đến từ kinh tế Mỹ. Dollar – Index, chỉ số đo lường sức mạnh của đồng bạc xanh so với rổ tiền tệ chủ chốt tăng 1.1% lên 95.33 điểm, mức cao nhất trong vòng 1 tháng qua.</p>\r\n\r\n<p>Theo số liệu của Bộ Lao động Mỹ công bố hôm qua, chỉ số giá tiêu dùng (CPI) giảm 0.7% trong tháng 1 sau khi đã giảm 0.3% trong tháng 12/2014. Nguyên nhân chủ yếu do giá nhiên liệu, đặc biệt là xăng, giảm mạnh theo giá dầu. Tuy nhiên, nếu không tính giá thực phẩm và nhiên liệu, chỉ số CPI lõi của Mỹ lại tăng 0.2%, cao hơn so với kỳ vọng của giới chuyên gia. Giá nhiên liệu giảm thúc đẩy người dân Mỹ tăng cường chi tiêu vào những loại hàng hóa khác, phần nào hỗ trợ đà tăng trưởng của kinh tế Mỹ.</p>\r\n\r\n<p>Bên cạnh đó, số đơn đặt hàng lâu bền của Mỹ tăng 2.8% trong tháng 1, cao hơn nhiều so với dự báo 1.7% của các nhà phân tích và mức giảm 3.3% trong tháng 12/2014. Giới đầu tư dần lấy lại niềm tin vào tình hình kinh tế Mỹ và tăng kỳ vọng vào khả năng Fed sẽ sớm nâng lãi suất.</p>\r\n%%%1%%%1425093780%%%vi%%%1%%%,8,', 'vi', 0, NULL, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu`
--

INSERT INTO `web_menu` (`id`, `name`, `name_alias`, `url`, `url_img`, `title`, `description`, `tags`, `parent`, `order`, `other`, `lang`, `status`, `type_id`, `position_id`) VALUES
(2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', 'Title giới thiệu', 'Des giới thiệu', 'giới thiệu,gioi thieu', 0, 2, 0, 'vi', 1, 2, ',2,3,'),
(3, 'Áo Nam', 'ao-nam', 'ao-nam/', '', 'Áo Nam', 'Áo Nam', 'áo nam,ao nam', 13, 1, 0, 'vi', 0, 3, ',2,4,'),
(4, 'Quần Nam', 'quan-nam', 'quan-nam/', '', 'Quần Nam', 'Quần Nam', 'quần nam,quan nam', 13, 2, 0, 'vi', 0, 3, ',2,4,'),
(5, 'Giày Nam', 'giay-nam', 'giay-nam/', '', 'Giày Nam', 'Giày Nam', 'giày nam,giay nam', 13, 3, 0, 'vi', 0, 3, ',2,4,'),
(6, 'Phân tích thị trường', 'phan-tich-thi-truong', 'phan-tich-thi-truong/', '', 'Phân tích thị trường', 'Phân tích thị trường', 'phân tích thị trường,phan tich thi truong', 0, 4, 1, 'vi', 1, 2, ',2,3,'),
(7, 'Chương trình đào tạo', 'chuong-trinh-dao-tao', 'chuong-trinh-dao-tao/', '', 'Chương trình đào tạo', 'Chương trình đào tạo', 'chương trình đào tạo,chuong trinh dao tao', 0, 3, 0, 'vi', 1, 2, ',2,3,'),
(8, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', 'tin-tuc-su-kien/', '', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 'tin tức sự kiện,tin tuc su kien', 0, 5, 1, 'vi', 1, 2, ',2,3,'),
(9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'liên hệ,lien he', 0, 6, 0, 'vi', 1, 13, ',2,3,'),
(10, 'Home', 'home', '/?lang=en', '', 'Home', 'Home', 'Home', 0, 1, 0, 'en', 1, 0, ''),
(11, 'About US', 'about-us', 'about-us/', '', 'About US', 'About US', 'About US', 0, 2, 0, 'en', 1, 0, ''),
(12, 'Products', 'products', 'products/', '', 'Products', 'Products', 'Products', 0, 3, 0, 'en', 1, 0, ''),
(13, 'Thời trang Nam', 'thoi-trang-nam', 'thoi-trang-nam/', '', 'Thời trang dành cho Nam', 'Thời trang dành cho Nam', 'thời trang nam,thoi trang nam', 16, 1, 1, 'vi', 0, 3, ',2,4,'),
(14, 'Thời trang Nữ', 'thoi-trang-nu', 'thoi-trang-nu/', '', 'Thời trang dành cho Nữ', 'Thời trang dành cho Nữ', 'thời trang nữ,thoi trang nu', 16, 2, 1, 'vi', 0, 3, ',2,4,'),
(15, 'Reasons to choose FOREXCAREER.com', 'reasons-to-choose-forexcareer-com', 'reasons-to-choose-forexcareer-com/', '', 'Reasons to choose FOREXCAREER.com', 'Reasons to choose FOREXCAREER.com', 'Reasons to choose FOREXCAREER.com', 1, 0, 1, 'vi', 1, 2, ',9,'),
(16, 'Đặt hàng', 'dat-hang', 'dat-hang/', '', 'Đặt hàng', 'Đặt hàng', 'đặt hàng,dat hang', 0, 100, 0, 'vi', 0, 8, ',9,'),
(17, 'Giỏ hàng', 'gio-hang', 'gio-hang/', '', 'Giỏ hàng', 'Giỏ hàng', 'giỏ hàng,gio hang', 16, 1, 0, 'vi', 0, 8, ',9,'),
(18, 'Thanh toán', 'thanh-toan', 'thanh-toan/', '', 'Thanh toán', 'Thanh toán', 'thanh toán,thanh toan', 16, 2, 0, 'vi', 0, 7, ',9,'),
(19, 'Facebook', 'facebook', 'javascript:;', 'icon-facebook.gif', 'Facebook', 'Facebook', 'Facebook', 0, 101, 0, 'vi', 0, 14, ',6,'),
(1, 'Trang chủ', 'trang-chu', 'http://localhost/all/forexcareer/', '', 'Forexcareer', 'Des Forexcareer', 'forexcareer,forex', 0, 1, 0, 'vi', 1, 1, ',2,3,'),
(20, 'Youtube', 'youtube', 'javascript:;', 'icon-youtube.gif', 'Youtube', 'Youtube', 'Youtube', 0, 102, 0, 'vi', 0, 14, ',6,');

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
(5, 'Sản phẩm', 'web_product', 'icon-product.jpg', 5, 0, NULL, 0),
(6, 'Thư viện ảnh', 'web_photo', 'icon-thu-vien-anh.jpg', 6, 0, NULL, 1),
(7, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 7, 0, NULL, 1),
(8, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 8, 1, NULL, 1),
(9, 'DS Tỉnh - Thành', 'web_listcity', 'icon-city.jpg', 9, 0, NULL, 1),
(10, 'DS Quận - Huyện', 'web_listdistricts', 'icon-districts.jpg', 10, 0, NULL, 1),
(11, 'Đơn đặt hàng', 'web_product_order', 'icon-order.jpg', 11, 0, '<span id="web_product_order" class="ajax_thongtin"></span>', 1),
(12, 'Đơn đặt hàng chi tiết', 'web_product_order_detail', 'icon-order-detail.jpg', 12, 1, NULL, 1),
(13, 'Item 13', '', 'icon-tuyen-dung-thong-tin.jpg', 13, 0, NULL, 0),
(14, 'Item 14', '', 'icon-contact.jpg', 14, 0, NULL, 0),
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
  `url_img` varchar(100) NOT NULL,
  `url_img_thumb` varchar(100) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `order` int(2) NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu_type`
--

INSERT INTO `web_menu_type` (`id`, `name`, `description`, `url_img`, `url_img_thumb`, `lang`, `order`, `status`) VALUES
(1, 'site', 'Trang chủ', '', '', 'vi', 1, 1),
(2, 'article', 'Thông tin bài viết', 'public/images/articles/', 'public/_thumbs/Images/articles/', 'vi', 2, 1),
(3, 'product', 'Sản phẩm', 'public/images/products/', 'public/_thumbs/Images/products/', 'vi', 3, 0),
(4, 'service', 'Dịch vụ', 'public/images/services/', 'public/_thumbs/Images/services/', 'vi', 4, 0),
(5, 'photo', 'Hình ảnh', 'public/images/photos/', 'public/_thumbs/Images/photos/', 'vi', 5, 0),
(6, 'video', 'Video', 'public/images/videos/', 'public/_thumbs/Images/videos/', 'vi', 6, 0),
(7, 'item_1', 'Item 1', '', '', 'vi', 7, 0),
(8, 'item_2', 'Item 2', '', '', 'vi', 8, 0),
(9, 'item_3', 'Item 3', '', '', 'vi', 9, 0),
(10, 'item_4', 'Item 4', '', '', 'vi', 10, 0),
(11, 'payment', 'Payment', '', '', 'vi', 11, 0),
(12, 'register', 'Register', '', '', 'vi', 12, 0),
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_photo`
--

INSERT INTO `web_photo` (`id`, `name`, `url_img`, `order`, `lang`, `status`, `menu_id`) VALUES
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_product`
--

INSERT INTO `web_product` (`id`, `name`, `name_alias`, `code`, `url`, `url_img`, `description`, `tags`, `price`, `price_cost`, `content`, `more`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Mùng chống muỗi hình nón', 'mung-chong-muoi-hinh-non', 'MMHT-01', 'thoi-trang-nam/mung-chong-muoi-hinh-non.html', 'mung-chong-muoi.jpg', 'Mùng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.', 'mùng chống muỗi hình nón,mung chong muoi hinh non', 200000, 250000, '<p>M&ugrave;ng l&agrave; m&agrave;n ngủ ứng dụng kỹ thuật mới với sợi m&agrave;n bằng nguy&ecirc;n liệu Polyethylene t&iacute;ch hợp Permethrin tạo n&ecirc;n chiếc m&agrave;n bền chắc, th&ocirc;ng tho&aacute;ng kh&iacute; v&agrave; đặc biệt l&agrave; t&iacute;nh năng xua đuổi diệt muỗi, c&ocirc;n tr&ugrave;ng cho người sử dụng. M&ugrave;ng ChamCham rất hữu &iacute;ch cho ph&ograve;ng chống lan truyền bệnh sốt r&eacute;t, sốt xuất huyết, vi&ecirc;m n&atilde;o Nhật Bản B v&agrave; c&aacute;c bệnh kh&aacute;c g&acirc;y ra do c&ocirc;n tr&ugrave;ng ch&iacute;ch đốt gi&uacute;p bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>M&ugrave;ng V&otilde;ng R&egrave;m ChamCham đ&aacute;p ứng nhu cầu sử dụng đa dạng trong nh&agrave;, ngo&agrave;i trời, treo m&oacute;c...</p>\r\n', '', 1, 1408460940, 'vi', 1, ',6,13,'),
(2, 'Mùng chống muỗi tam giác ba dây trắng', 'mung-chong-muoi-tam-giac-ba-day-trang', 'MMTG-01', 'thoi-trang-nam/mung-chong-muoi-tam-giac-ba-day-trang.html', 'mung-chong-muoi-tam-giac-ba-day-trang.jpg', 'Mùng chống muỗi tam giác ba dây trắng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.', 'mùng chống muỗi tam giác ba dây trắng,mung chong muoi tam giac ba day trang', 250000, 0, '<h2>M&ugrave;ng chống muỗi tam gi&aacute;c ba d&acirc;y trắng&nbsp;l&agrave; m&agrave;n ngủ ứng dụng kỹ thuật mới với sợi m&agrave;n bằng nguy&ecirc;n liệu Polyethylene t&iacute;ch hợp Permethrin tạo n&ecirc;n chiếc m&agrave;n bền chắc, th&ocirc;ng tho&aacute;ng kh&iacute; v&agrave; đặc biệt l&agrave; t&iacute;nh năng xua đuổi diệt muỗi, c&ocirc;n tr&ugrave;ng cho người sử dụng.</h2>\r\n\r\n<p>M&ugrave;ng ChamCham rất hữu &iacute;ch cho ph&ograve;ng chống lan truyền bệnh sốt r&eacute;t, sốt xuất huyết, vi&ecirc;m n&atilde;o Nhật Bản B v&agrave; c&aacute;c bệnh kh&aacute;c g&acirc;y ra do c&ocirc;n tr&ugrave;ng ch&iacute;ch đốt gi&uacute;p bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>M&ugrave;ng V&otilde;ng R&egrave;m ChamCham đ&aacute;p ứng nhu cầu sử dụng đa dạng trong nh&agrave;, ngo&agrave;i trời, treo m&oacute;c...</p>\r\n', '<p>Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n', 1, 1408460940, 'vi', 1, ',6,13,');

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
  `url_img` varchar(150) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `position_id` int(1) NOT NULL,
  `menu_id` varchar(30) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_slider_banner`
--

INSERT INTO `web_slider_banner` (`id`, `name`, `url_img`, `url`, `order`, `lang`, `status`, `position_id`, `menu_id`) VALUES
(1, 'Trang chủ', 'slider-home.jpg', 'javascript:;', 1, 'vi', 1, 1, ',1,2,'),
(2, 'Giới thiệu', '', 'javascript:;', 2, 'vi', 0, 1, ',2,');

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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_video`
--

INSERT INTO `web_video` (`id`, `name`, `name_alias`, `type`, `url`, `url_img`, `url_code`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Video trang chủ', 'video-trang-chu', 1, 'quan-nam/video-trang-chu.html', 'Chrysanthemum.jpg', '432432432', 'Video trang chủ', 'video trang chủ,video trang chu', '<p>Video trang chủVideo trang chủVideo trang chủVideo trang chủVideo trang chủVideo trang chủ</p>\r\n', 1, 1408497780, 'vi', 1, ',4,');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `web_menu`
--
ALTER TABLE `web_menu`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
