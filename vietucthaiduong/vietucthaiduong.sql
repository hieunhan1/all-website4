-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2015 at 03:41 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vietucthaiduong`
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
  `img` varchar(150) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`id`, `name`, `name_alias`, `url`, `img`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(7, 'Donec tempor libero 2', 'donec-tempor-libero-2', 'news/donec-tempor-libero-2.html', 'gioi-thieu.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim.', 'donec tempor libero,donec tempor libero', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n', 0, 1433567460, 'en', 1, ',34,10,29,'),
(8, 'Donec tempor libero', 'donec-tempor-libero', 'news/donec-tempor-libero.html', 'cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim.', 'donec tempor libero,donec tempor libero', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n', 0, 1433308320, 'en', 1, ',29,'),
(9, 'Về chúng tôi - Việt Úc Thái Dương', 've-chung-toi-viet-uc-thai-duong', 'gioi-thieu/ve-chung-toi-viet-uc-thai-duong.html', 'gioi-thieu.jpg', 'Công ty CP Việt Úc Thái Dương là doanh nghiệp nhà nước hàng đầu chuyên về sản xuất, chế biến và kinh doanh xuất, nhập khẩu rau, quả, nông sản', 'về chúng tôi việt úc thái dương,ve chung toi viet uc thai duong', '<p><strong>Công ty CP Việt Úc Thái Dương</strong> là doanh nghiệp nhà nước hàng đầu chuyên về sản xuất, chế biến và kinh doanh xuất, nhập khẩu rau, quả, nông sản với kim ngạch xuất khẩu rau, quả hàng năm chiếm tỷ trọng lớn trong tổng kim ngạch xuất khẩu rau, quả của Việt Nam.</p>\r\n\r\n<p>Là một công ty kinh doanh đa ngành trong phạm vi toàn quốc và thế giới, ngay từ khi mới thành lập công ty đã đặc biệt quan tâm xây dựng chất lượng sản phẩm, nên đã đầu tư nhiều dây chuyền thiết bị hiện đại, công nghệ tiên tiến được nhập khẩu từ Châu Âu.</p>\r\n', 0, 1433931000, 'vi', 1, ',1,2,'),
(10, 'Dịch vụ làm thủ tục xuất nhập khẩu', 'dich-vu-lam-thu-tuc-xuat-nhap-khau', 'tin-tuc-su-kien/dich-vu-lam-thu-tuc-xuat-nhap-khau.html', 'gioi-thieu.jpg', 'Dịch vụ làm thủ tục xuất nhập khẩu TTP Express nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu, đội ngũ nhân viên dày dặn kinh nghiệm', 'dịch vụ làm thủ tục xuất nhập khẩu,dich vu lam thu tuc xuat nhap khau', '<h2>Dịch vụ xuất nhập khẩu là tổng hợp các nghiệp vụ liên quan đến hoạt động ngoại thương, ngân hàng, hải quan, vận tải, bảo hiểm… mà bên nhận làm dịch vụ đứng ra đảm nhận và thực hiện thay cho bên khoán dịch vụ.</h2>\r\n\r\n<p>Ngày nay, nếu như việc toàn cầu hóa kinh tế thế giới là một con thuyền tiến ra biển đông thì xuất nhập khẩu đóng vai trò là mũi thuyền, là bánh lái, là nhịp cầu nối để gắn kết các quốc gia lại giao thương với nhau.</p>\r\n\r\n<p>Và đã ra sân chơi với bạn bè trên thế giới, để không bị thua thiệt, không bị tổn thất vì thiếu kiến thức thì phải hiểu luật, nắm những qui tắc cơ bản, qui tắc chung mà các quốc gia trên thế giới đã đề ra.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu ra đời nhằm giải quyết và thảo gỡ các vướng mắc trên.</strong></em> Sứ mệnh của dịch vụ xuất nhập khẩu là tìm tòi, học hỏi , nghiên cứu và áp dụng vào thực tế để hoàn thiện các thủ tục, hủ tục phù hợp với quy định luật pháp của Nhà nước, từ đó đưa nguồn hàng từ Việt Nam đến các quốc gia trên thế giới, đồng thời cũng là nơi tiếp nhận các nguồn hàng từ các nơi trên thế giới đổ về Việt Nam&nbsp;đây là yếu tố rất quan trọng trong công cuộc phát triển kinh tế của nước nhà.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu luôn là người bạn đồng hành cùng doanh nghiệp</strong></em>, hỗ trợ doanh nghiệp vượt qua các khó khăn, rào cản để có thể tiếp cận với thị trường kinh tế thế giới một cách dễ dàng hơn, anh tâm hơn và nhanh chóng hơn.</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>1. Dịch vụ chứng từ XNK</strong></span></p>\r\n\r\n<p><em><strong>Nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu</strong></em>. Với đội ngũ nhân viên dày dặn kinh nghiệm, độ bao phủ rộng khắp các cơ quan hữu quan như: Hải Quan, Kiểm dịch thực vật, chứng nhận xuất xứ, Giám định chất lượng hàng hóa…. Chúng tôi cam kết sẽ hoàn thiện bộ chứng từ nhanh nhất trong thời gian sớm nhất .</p>\r\n\r\n<ul>\r\n	<li>Thủ tục mở tờ khai HQ</li>\r\n	<li>Xin giấy chứng nhận kiểm dịch thực vật</li>\r\n	<li>Xin giấy chứng nhận xuất xứ hàng hóa (C/O)</li>\r\n	<li>Xin giấy chứng nhận giám dịnh hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong><span style="line-height: 1.6em;">2. Dịch vụ khai thuê Hải Quan</span></strong></span></p>\r\n\r\n<p><strong>Dịch vụ khai báo Hải quan</strong> là một trong những khâu rất quan trọng trong quá trình xuất – Nhập khẩu hàng hóa, việc khai báo Hải quan đòi hỏi sự linh hoạt của nhân viên giàu kinh nghiệm để xữ lý những vấn đề phát sinh.</p>\r\n\r\n<p><em><strong>Chúng tôi nhận khai báo&nbsp;Hải quan hàng xuất nhập khẩu</strong></em> gồm hàng nguyên tàu, hàng nguyên container, hàng lẽ, hàng rời, với đa dạng các mặt hàng như: Nông sản, hàng đông lạnh, thủy hải sản, hàng gia dụng, trang trí nội thất, trang thiết bị, máy móc...</p>\r\n\r\n<p style="text-align: center;"><span style="color:#0000FF;"><strong>&nbsp;CAM KẾT HOÀN THÀNH THỦ TỤC HẢI QUAN TRONG VÒNG MỘT NGÀY KÍ&nbsp;ĐÃ TẬP KẾT ĐỦ HÀNG VÀ CHỨNG TỪ.</strong></span></p>\r\n', 0, 1433926020, 'vi', 1, ',8,'),
(11, 'Các loại hình dịch vụ chuyển phát nhanh trong nước', 'cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc', 'tin-tuc-su-kien/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.html', 'cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg', 'Các loại hình dịch vụ chuyển phát nhanh trong nước của TTP Express như: CPN thông thường, CPN hàng giá trị cao,...', 'các loại hình dịch vụ chuyển phát nhanh trong nước,cac loai hinh dich vu cpn', '<p><span style="color:#FF0000;"><strong>1. Chuyển phát nhanh hàng thông thường</strong></span></p>\r\n\r\n<p>Khách hàng gửi trong khoảng thời gian từ&nbsp;8giờ&nbsp;đến&nbsp;17giờ30&nbsp;ngày hôm nay thì Người nhận của Quý khách sẽ nhận được từ 9giờ&nbsp;đến&nbsp;17giờ&nbsp;ngày hôm sau&nbsp;trong nội thành, nội thị, với khu vực ngoại thành, ngoại thị, thời gian phát tối đa là&nbsp;48 giờ.</p>\r\n\r\n<p><em>Ghi chú:&nbsp;</em>Tùy theo tính chất địa lý của từng khu vực thì thời gian phát có thể nhanh hoặc chậm hơn thời gian đã nêu ở trên trong khỏang&nbsp;24giờ.</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2. Chuyển phát nhanh hàng giá trị cao</strong></span></p>\r\n\r\n<p>Chuyển phát nhanh hàng giá trị cao, hồ sơ thầu, vaccine, hàng lạnh</p>\r\n\r\n<p>Đây là những mặt hàng có mức bồi thường cao (lên đến 100% giá trị) khi xảy ra mất mát, hư hỏng,</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>3. Chuyển phát nhanh hỏa tốc</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh hỏa tốc là gói dịch vụ đặc biệt của&nbsp;TTP Express</strong></em> trong đó hàng hóa bưu gửi của khách hàng sẽ được phát đến tay người nhận trong thời gian sớm nhất được thỏa thuận trước giữa&nbsp;TTP Express&nbsp;và khách hàng.</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được áp dụng cho tất cả các khách hàng trên phạm vi thu phát của TTP Express</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được phân chia làm 2 loại: hỏa tốc nội thành và hỏa tốc đi tỉnh.</p>\r\n\r\n<ul>\r\n	<li><em>Hỏa tốc nội thành:</em> khi sử dụng dịch vụ chuyển hỏa tốc nội thành, bưu gửi của quý khách sẽ được&nbsp;TTP Express&nbsp;phát đến tay người nhận sau 2 đến 3h tại các quận nội thành của Hà Nội, Hồ Chí Minh, Đà Nẵng</li>\r\n	<li><em>Hỏa tốc đi tỉnh:&nbsp;</em>TTP Express&nbsp;luôn nỗ lực để đáp ứng một cách tốt nhất mọi yêu cầu về chuyển phát của khách hàng, nhất là đối với các nhu cầu chuyển phát cấp thiết. Do đó khi có nhu cầu gửi hỏa tốc đi bất kỳ nơi nào, khách hàng hãy gọi tới&nbsp;TTP Express&nbsp;để nhận được tư vấn về giải pháp chuyển pháp phù hợp nhất.Chúng tôi tôn trọng mọi yêu cầu của khách hàng và luôn nỗ lực đặt lợi ích của khách hàng lên hàng đầu.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>4. Chuyển phát nhanh trong ngày</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh trong ngày</strong></em> là gói dịch vụ đặc biệt trong đó TTP Express cam kết phát hàng hóa bưu gửi của khách hàng đến tay người nhận ngay trong ngày khách hàng gửi. TTP Express sẽ cung cấp dịch vụ chuyển phát nhanh trong ngày cho từng yêu cầu cụ thể khi có sự thỏa thuận giữa TTP Express và khách hàng.</p>\r\n', 0, 1433928060, 'vi', 1, ',8,'),
(12, 'Các dịch vụ gia tăng', 'cac-dich-vu-gia-tang', 'tin-tuc-su-kien/cac-dich-vu-gia-tang.html', 'cac-dich-vu-gia-tang.jpg', 'Các dịch vụ gia tăng của TTP Express CPN trong nước như: Dịch vụ bảo hiểm hàng hóa bưu gửi, dịch vụ phát hàng thu tiền (COD),...', 'các dịch vụ gia tăng,cac dich vu gia tang,CPN', '<p><span style="color:#FF0000;"><strong>1. Dịch vụ bảo hiểm hàng hóa bưu gửi</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ&nbsp;bảo hiểm hàng hóa, bưu gửi&nbsp;là dịch vụ gia tăng</strong></em> đi kèm với dịch vụ vận chuyển trong đó người gửi được mua bảo hiểm cho bưu gửi của mình.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>Khi sử dụng dịch vụ bảo hiểm, ngoài cước vận chuyển người gửi phải chịu thêm một khoản phí bảo hiểm tương đương tỷ lệ mua bảo hiểm.</li>\r\n	<li>Trong quá trình vận chuyển, nếu xảy ra mất mát hoặc hư hại hàng hóa bưu gửi, người gửi sẽ được TTP Express bồi thường theo giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Đối với các bưu gửi là chứng từ; giá trị khai giá tối đa là 15.000.000 vnđ</li>\r\n	<li>Đối với các bưu gửi là hàng hóa, giá trị khai giá tối đa là 150.000.000 vnđ</li>\r\n	<li>Giá trị khai giá của hàng hóa bưu gửi không được lớn hơn quá 10% giá trị thực hoặc giá trị trên hóa đơn chứng từ đi kèm hàng hóa bưu gửi.</li>\r\n	<li>Dịch vụ bảo hiểm hàng hóa không được áp dụng cho các loại hàng hóa là thực phẩm, hàng đông lạnh và các loại hàng hóa đặc biệt khác.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Mức phí bảo hiểm:&nbsp;3%&nbsp;giá trị khai giá hàng hóa bưu gửi.</li>\r\n	<li>Mức bồi thường:&nbsp;&nbsp;100%&nbsp;giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Thời gian bảo hiểm: bắt đầu từ thời điểm người gửi mua bảo hiểm đến khi kết thúc quá trình giao hàng hóa bưu gửi cho người nhận.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>2.&nbsp;Dịch vụ phát hàng -&nbsp;thu tiền (COD)</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ phát hàng -&nbsp;thu tiền (Cash on Delivery – COD) </strong></em>là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát trong đó nhà vận chuyển được ủy thác thu hộ một khoản tiền nhất định do người gửi yêu cầu khi thực hiện việc phát bưu phẩm cho người nhận và hoàn trả lại số tiền đó cho người gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li><em><strong>TTP Express&nbsp;chỉ cung cấp dịch vụ COD</strong></em> tại trung tâm các tỉnh, thành phố nằm trong tuyến chính&nbsp;TTP Express.</li>\r\n	<li>Khi sử dụng dịch vụ COD khách hàng phải thanh toán các khoản cước sau:\r\n	<ul>\r\n		<li>Cước dịch vụ chuyển phát bưu gửi COD.</li>\r\n		<li>Cước phí dịch vụ COD.</li>\r\n		<li>Các khoản cước phí dịch vụ đặc biệt khác mà khách hàng lựa chọn như dịch vụ bảo hiểm, dịch vụ đóng gói, dịch vụ phát hỏa tốc…</li>\r\n	</ul>\r\n	</li>\r\n	<li>Khi sử dụng dịch vụ COD, khách hàng cần thông báo cho người nhận về việc ủy thác cho nhà vận chuyển thu hộ tiền hàng. TTP Express chỉ phát bưu gửi khi người nhận đã thanh toán tiền thu hộ. Nếu không thanh toán bưu gửi COD sẽ được TTP Express trả lại cho người gửi. Trong trường hợp này người gửi vẫn phải thanh toán đầy đủ các khoản cước phí như đã thỏa thuận ban đầu cộng thêm cước phí chuyển hoàn bưu gửi COD đó.</li>\r\n	<li>Mức tiền thu hộ tối đa cho một bưu gửi COD là 50.000.000đ ( năm mươi triệu đồng.)</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Giá cước dịch vụ thu hộ COD được áp dụng theo bảng giá của TTP Express hoặc theo sự thỏa thuận giữa hai bên.</li>\r\n	<li>Người gửi cần cung cấp đầy đủ thông tin của người nhận ( tên, địa chỉ, số điện thoại.. ) trên vận đơn của bưu gửi COD; các loại hóa đơn chứng từ đi kèm để làm cơ sở thu hộ tiền hàng.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>3.&nbsp;Dịch vụ đóng gói.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ đóng gói là dịch vụ gia tăng đi kèm với dịch vụ chuyển phát</strong></em> trong đó nhà vận chuyển thực hiện việc đóng gói hàng hóa bưu gửi của khách hàng theo quy chuẩn của nhà vận chuyển nhằm hạn chế các hư hỏng cơ học cho hàng hóa bưu gửi của khách hàng trong quá trình vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ đóng gói cho các hàng hóa bưu gửi được gửi qua TTP Express.</li>\r\n	<li>Dịch vụ đóng gói được áp dụng theo yêu cầu của khách hàng hoặc bắt buộc đối với các loại hàng hóa đặc biệt do yêu cầu của hãng vận chuyển.TTP Express có quyền từ chối nhận vận chuyển hàng hóa bưu gửi ( thuộc loại bắt buộc phải đóng gói ) nếu khách hàng không chấp nhận sử dụng dịch vụ đóng gói.</li>\r\n	<li>Đối với các hàng hóa bưu gửi sử dụng dịch vụ đóng gói, trọng lượng tính cước sẽ là trọng lượng sau khi đã đóng gói.</li>\r\n	<li>Khi sử dụng dịch vụ đóng gói, ngoài cước phí chính tính theo trọng lượng bưu phẩm, khách hàng phải chịu phí đóng gói tương đương phí nguyên vật liệu sử dụng để đóng gói. Chi phí này được quy định cụ thể trên báo giá của TTP Express và được thông báo cho khách hàng trước khi đóng gói.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Dịch vụ đóng gói bao gồm nhiều hình thức như đóng carton, xốp, gỗ, ván ép, nylon chống nước...Khách hàng có thể yêu cầu đóng gói cùng lúc nhiều hình thức khác nhau.</li>\r\n	<li>Dịch vụ đóng gói giúp hạn chế các hư hỏng cơ học trong quá trình vận chuyển, do đó không phải là dịch vụ bảo hiểm hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>&nbsp;4.&nbsp;Dịch vụ báo phát</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ báo phát là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát</strong></em> trong đó người gửi yêu cầu nhà vận chuyển chuyển trả lại cho người gửi phiếu giao hàng ( vận đơn ) có chữ ký và họ tên của người nhận bưu gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ báo phát cho các vận đơn có địa chỉ người nhận thuộc các địa danh thu phát của TTP Express.</li>\r\n	<li>Thời gian trả báo phát lại cho người gửi phụ thuộc vào từng khu vực phát.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Phí dịch vụ báo phát là 5.000đ / vận đơn.</li>\r\n	<li>Dịch vụ báo phát áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>5.&nbsp;Dịch vụ kiểm đếm.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ kiểm đếm là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát </strong></em>trong đó nhà vận chuyển sẽ tiến hành kiểm đếm số lượng chi tiết của hàng hóa bưu gửi cùng với người gửi khi nhận và người nhận khi phát.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ kiểm đếm về số lượng, chủng loại, tình trạng bên ngoài của hàng hóa bưu gửi. TTP Express không kiểm đếm về chất lượng hoặc quy cách hoạt động của hàng hóa bưu gửi. Trong trường hợp hàng hóa bưu gửi có những dấu hiệu bất thường sẽ được kê khai chi tiết trên biên bản kiểm đếm.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho các khách hàng trên phạm vi thu phát của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm chỉ áp dụng cho các vận đơn có số lượng lớn hơn 100 đơn vị kiểm đếm.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Khi sử dụng dịch vụ kiểm đếm, ngoài cước phí vận chuyển tính theo khối lượng hàng hóa bưu gửi và các loại cước phí đặc biệt theo từng loại hình dịch vụ, người gửi phải chịu một khoản phí kiểm đếm tính theo từng đơn vị kiểm đếm.</li>\r\n	<li>Khi tiến hành kiểm đếm, TTP Express và khách hàng sẽ cùng nhau kiểm đếm và ký vào biên bản kê khai chi tiết số lượng kiểm đếm. Khi phát bưu gửi, TTP Êxpress sẽ cùng người nhận kiểm đếm và phát theo chi tiết số lượng và nội dung đã kê khai trên biên bản kiểm đếm.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>6. Dịch vụ thanh toán đầu nhận</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ thanh toán đầu nhận (TTĐN)</strong></em> là một hình thức thanh toán khác của dịch vụ vận chuyển trong đó người nhận hàng hóa bưu gửi sẽ là người thanh toán 1 phần hoặc toàn bộ cước phí vận chuyển cho nhà vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express cung cấp dịch vụ TTĐN tại các khu vực thu phát của TTP Express.</li>\r\n	<li>Người nhận hàng hóa bưu gửi sử dụng dịch vụ TTĐN sẽ phải thanh toán toàn bộ cước phí tương ứng với các dịch vụ mà người gửi đã lựa chọn.</li>\r\n	<li>TTP Express sẽ chỉ phát hàng hóa bưu gửi sử dụng dịch vụ TTĐN cho người nhận khi chấp nhận thanh toán cước phí. Nếu người nhận không thanh toán cước phí, DHL sẽ hoàn bưu gửi lại cho người gửi. Trong trường hợp này, người gửi sẽ phải thanh toán toàn bộ cước phí của bưu gửi bao gồm cước phí chuyển phát gửi đi và cước phí chuyển hoàn về.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:&nbsp;</strong><span style="line-height: 1.6em;">Cước phí các hàng hóa bưu gửi sử dụng dịch vụ TTĐN được tính theo bảng giá niêm yết tại thời điểm hiện tại của TTP Express hoặc theo sự thỏa thuận đối với từng khách hàng.</span></p>\r\n', 0, 1433928720, 'vi', 1, ',8,'),
(13, 'Dịch vụ chuyển phát nhanh Quốc tế', 'dich-vu-chuyen-phat-nhanh-quoc-te', 'tin-tuc-su-kien/dich-vu-chuyen-phat-nhanh-quoc-te.html', 'cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg', 'Dịch vụ chuyển phát nhanh Quốc tế nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ', 'dịch vụ chuyển phát nhanh quốc tế,dich vu chuyen phat nhanh quoc te', '<h2>TTP Express nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới. UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ,&nbsp;chuyên cung cấp các loại&nbsp;hình dịch vụ và đa dạng nhằm đáp ứng nhu cầu tốt nhất cho toàn thể quý khách hàng.</h2>\r\n\r\n<p><span style="color:#FF0000;"><strong>Dịch vụ chuyển phát nhanh quốc tế bao gồm:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Chuyển phát nhanh đi các nước trên thế giới</li>\r\n	<li>Chuyển phát nhanh chuyên tuyến :</li>\r\n</ol>\r\n\r\n<ul style="margin-left: 40px;">\r\n	<li>Korea</li>\r\n	<li>Hong Kong</li>\r\n	<li>Japan</li>\r\n	<li>Singapore</li>\r\n	<li>Malaysia&nbsp;</li>\r\n</ul>\r\n\r\n<ol start="3">\r\n	<li>Chuyển hàng quà biếu từ Mỹ về Việt Nam</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Gửi hàng từ Mỹ về Việt Nam</strong></span></p>\r\n\r\n<p><strong>Khách hàng tại USA muốn gửi hàng về Việt Nam</strong>, sẽ đến văn phòng nhận hàng của chúng tôi tại USA, tại đây khách hàng sẽ nhận được những hướng dẫn, điều khoản, điều kiện vận chuyển và giao hàng về Việt Nam cụ thể và tận tình.</p>\r\n\r\n<p><em><strong>Chúng tôi cung cấp dịch vụ chuyển hàng hóa từ Mỹ về Việt Nam</strong></em> trên toàn quốc, người thân của bạn dù ở bất kỳ địa phương, bất kỳ tỉnh thành nào đều có thể nhận hàng của bạn từ Mỹ.</p>\r\n\r\n<p>Với khách hàng gửi hàng từ Texas hoặc các khu vực khác của USA&nbsp; về Việt Nam&nbsp; hãy liên hệ với Văn phòng nhận hàng của chúng tôi tại Texas.</p>\r\n\r\n<p>Khách hàng chuyển hàng có thể chọn hình thức thanh toán tại USA hoặc tại Việt Nam.</p>\r\n\r\n<p>Với tiêu chí hoạt động: Nhanh chóng – chính xác và cạnh tranh. Nên quý khách có thể hoàn toàn yên tâm.</p>\r\n\r\n<p><span style="color:#0000FF;"><strong>Các mặt hàng nhận chuyển:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Các loại chứng từ, hợp đồng, hồ sơ du học...</li>\r\n	<li>Quà tặng, quần áo, giày dép, mũ, nón….</li>\r\n	<li>Hàng mẫu, hàng hóa, hàng nặng...</li>\r\n	<li>Các loại thuốc: thuốc tây, thuốc Bắc, thuốc nam, thuốc đông y...</li>\r\n	<li>Thực phẩm: Tôm khô, cá khô, mực khô, cà phê, trà, bánh kẹo...</li>\r\n	<li>Dụng cụ làm nails: Kềm bấm, dầu gội đầu, mỹ phẩm...</li>\r\n	<li>Mặt hàng điện tử: Điện thoại, máy tính, máy đọc sách, các loại máy móc khác...</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Bảng giá chuyển phát nhanh quốc tế (attached file kèm theo áp dụng từ 01/06/2015)</strong></span></p>\r\n\r\n<p><em><strong>Phụ phí xăng dầu:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức phụ phí xăng dầu là 15% tính trên bảng cước quy định nối trên</li>\r\n	<li>Mức thu phụ phí xăng dầu sẽ thay đổi theo từng thời điểm công bố</li>\r\n</ul>\r\n\r\n<p><em><strong>Phụ phí vùng xa:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức thu phụ phí vung xa là 35% bưu gửi Quốc tế.</li>\r\n	<li>Phạm vi áp dụng: mức thu phụ phí vùng xâu vùng xa này được áp dụng đối với các bưu gửi <em><strong>chuyển phát nhanh quốc tế </strong></em>đến một số nước theo danh sách các nước áp dụng thu phụ phí vùng xa .</li>\r\n</ul>\r\n', 0, 1433929500, 'vi', 1, ',8,');

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
  `order` int(3) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `name`, `name_var`, `value`, `order`, `lang`, `status`) VALUES
(5, 'Số tin / trang', 'limit_1', '5', 10, 'vi', 1),
(6, 'Số SP / trang', 'limit_2', '12', 11, 'vi', 1),
(7, 'Số photo / trang', 'limit_3', '18', 12, 'vi', 1),
(8, 'Số video / trang', 'limit_4', '10', 13, 'vi', 0),
(9, 'Copyright', 'copyright', 'Copyright © 2015 by VIETUCTHAIDUONG.COM', 6, 'vi', 1),
(10, 'Email', 'email', 'info@vietucthaiduong.com', 5, 'vi', 1),
(11, 'Điện thoại', 'tel', '+84 723 639012', 3, 'vi', 1),
(12, 'Hotline', 'hotline', '0988 388 003', 7, 'vi', 1),
(13, 'Slogan', 'slogan', 'CHUYÊN XUẤT NHẬP KHẨU NÔNG SẢN CHẤT LƯỢNG CAO', 8, 'vi', 1),
(14, 'Fax', 'fax', '+84 723 639012', 4, 'vi', 1),
(15, 'Địa chỉ', 'address', '154 Ấp 2 Thạnh Hòa, Bến Lức, Long An', 2, 'vi', 1),
(16, 'News number / page', 'limit_1', '5', 10, 'en', 1),
(17, 'Product number / page', 'limit_2', '12', 11, 'en', 1),
(18, 'Photos number / page', 'limit_3', '18', 12, 'en', 1),
(19, 'Videos number / page', 'limit_4', '10', 13, 'en', 0),
(20, 'Copyright', 'copyright', 'Copyright © 2015 by VIETUCTHAIDUONG.COM', 6, 'en', 1),
(21, 'Email', 'email', 'info@vietucthaiduong.com', 5, 'en', 1),
(22, 'Telephone', 'tel', '+84 723 639012', 3, 'en', 1),
(23, 'Hotline', 'hotline', '0988 388 003', 7, 'en', 1),
(24, 'Slogan', 'slogan', 'CHUYÊN XUẤT NHẬP KHẨU NÔNG SẢN CHẤT LƯỢNG CAO', 8, 'en', 1),
(25, 'Fax', 'fax', '+84 723 639012', 4, 'en', 1),
(26, 'Address', 'address', '154 Ap 2 Thanh Hoa, Ben Luc, Long An', 2, 'en', 1),
(27, 'Tên trang website', 'sitename', 'CÔNG TY CỔ PHẦN VIỆT ÚC THÁI DƯƠNG', 1, 'vi', 1),
(28, 'Site name', 'sitename', 'VIET UC THAI DUONG', 1, 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_contact`
--

CREATE TABLE IF NOT EXISTS `web_contact` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `datetime` bigint(10) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_logs`
--

INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(1, 'English', 'status', 'web_language', 1435653250, 'admin', '1', 'vi', 0, NULL, NULL),
(2, 'Trang chủ', 'update', 'web_menu', 1435653445, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/ttpexpress%%%%%%TTP express%%%TTP express%%%TTP express%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(3, 'tran nhan 2', 'delete', 'web_contact', 1435654940, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values8%%%tran nhan 2%%%hieunhan112@gmail.com%%%0988388003%%%123 cmt 8%%%hieunhan112@gmail.com hieunhan112@gmail.com%%%1433990412%%%::1%%%vi%%%0', 'vi', 0, NULL, NULL),
(4, 'tran nhan', 'delete', 'web_contact', 1435654942, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values7%%%tran nhan%%%hieunhan112@gmail.com%%%0988388003%%%123 cmt 8%%%hieunhan112@gmail.com hieunhan112@gmail.com%%%1433990362%%%::1%%%vi%%%0', 'vi', 0, NULL, NULL),
(5, 'Slider trang chủ', 'update', 'web_slider_banner', 1435656799, 'admin', '`id`,`name`,`img`,`url`,`info`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values1%%%Slider trang chủ%%%slide-1.jpg%%%javascript:;%%%Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. %%%1%%%vi%%%1%%%1%%%,1,', 'vi', 0, NULL, NULL),
(6, 'Slider trang chủ', 'update', 'web_slider_banner', 1435657231, 'admin', '`id`,`name`,`img`,`url`,`info`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values1%%%Slider trang chủ%%%slider.jpg%%%javascript:;%%%Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. %%%1%%%vi%%%1%%%1%%%,1,', 'vi', 0, NULL, NULL),
(7, 'Chuyển phát nhanh-trong nước', 'update', 'web_menu', 1435659793, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values17%%%Chuyển phát nhanh-trong nước%%%%%%http://www.ttpexpress.com/chuyen-phat-nhanh-trong-nuoc/dich-vu-chuyen-phat-nhanh-trong-nuoc.html%%%%%%Chuyển phát nhanh trong nước%%%Dịch vụ hỏa tốc-\r\nDịch vụ chuyển phát nhanh-\r\nDịch vhu chuyển phát tiết kiệm-\r\nDịch vụ đường bộ...%%%chuyển phát nhanh trong nước,chuyen phat nhanh trong nuoc%%%1%%%1%%%0%%%vi%%%1%%%8%%%,9,', 'vi', 0, NULL, NULL),
(8, 'Chuyển phát nhanh-ngoài nước', 'update', 'web_menu', 1435659801, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values18%%%Chuyển phát nhanh-ngoài nước%%%%%%http://www.ttpexpress.com/chuyen-phat-nhanh-quoc-te/dich-vu-chuyen-phat-nhanh-quoc-te.html%%%%%%Chuyển phát nhanh ngoài nước%%%UY TÍN-\r\nĐẢM BẢO-\r\nNHANH CHÓNG-\r\nGIÁ RẺ%%%chuyển phát nhanh ngoài nước,chuyen phat nhanh ngoai nuoc%%%1%%%2%%%0%%%vi%%%1%%%14%%%,9,', 'vi', 0, NULL, NULL),
(9, 'Làm thủ tục-xuất nhập khẩu', 'update', 'web_menu', 1435659807, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values21%%%Làm thủ tục-xuất nhập khẩu%%%%%%http://www.ttpexpress.com/lam-thu-tuc-xuat-nhap-khau/dich-vu-lam-thu-tuc-xuat-nhap-khau.html%%%%%%Làm thủ tục xuất nhập khẩu%%%Dịch vụ chứng từ XNK-\r\nDịch vụ khai thuê Hải Quan-\r\nCAM KẾT THỦ TỤC HẢI QUAN-\r\nTRONG VÒNG MỘT NGÀY KÍ%%%làm thủ tục xuất nhập khẩu,lam thu tuc xuat nhap khau%%%1%%%3%%%0%%%vi%%%1%%%14%%%,9,', 'vi', 0, NULL, NULL),
(10, 'Về chúng tôi-TTP Express', 'update', 'web_menu', 1435659815, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values22%%%Về chúng tôi-TTP Express%%%%%%javascript:;%%%%%%Về chúng tôi TTP Express%%%%%%về chúng tôi ttp express,ve chung toi ttp express%%%1%%%4%%%0%%%vi%%%1%%%14%%%,9,', 'vi', 0, NULL, NULL),
(11, 'Chuyển phát nhanh-ngoài nước', 'update', 'web_menu', 1435659842, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values18%%%Chuyển phát nhanh-ngoài nước%%%%%%%%%%%%Chuyển phát nhanh ngoài nước%%%Chuyên sửa các loại khóa tại nhà. Chu đáo nhiệt tình, giá cả phải chăng. Xử lý các hư hỏng về khóa cửa, khóa phòng, khóa cổng, khóa bàn, khóa két sắt.%%%chuyển phát nhanh ngoài nước,chuyen phat nhanh ngoai nuoc%%%1%%%2%%%0%%%vi%%%1%%%14%%%,9,', 'vi', 0, NULL, NULL),
(12, 'Làm thủ tục-xuất nhập khẩu', 'update', 'web_menu', 1435659860, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values21%%%Làm thủ tục-xuất nhập khẩu%%%%%%%%%%%%Làm thủ tục xuất nhập khẩu%%%Chuyên sửa các loại khóa tại nhà. Chu đáo nhiệt tình, giá cả phải chăng. Xử lý các hư hỏng về khóa cửa, khóa phòng, khóa cổng, khóa bàn, khóa két sắt.%%%làm thủ tục xuất nhập khẩu,lam thu tuc xuat nhap khau%%%1%%%3%%%0%%%vi%%%1%%%14%%%,9,', 'vi', 0, NULL, NULL),
(13, 'Về chúng tôi-TTP Express', 'update', 'web_menu', 1435659887, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values22%%%Về chúng tôi-TTP Express%%%%%%javascript:;%%%%%%Về chúng tôi TTP Express%%%Chuyên sửa các loại khóa tại nhà. Chu đáo nhiệt tình, giá cả phải chăng. Xử lý các hư hỏng về khóa cửa, khóa phòng, khóa cổng, khóa bàn, khóa két sắt.%%%%%%1%%%4%%%0%%%vi%%%1%%%14%%%,9,', 'vi', 0, NULL, NULL),
(14, 'Trang chủ', 'update', 'web_menu', 1435722476, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/suakhoaquanganh%%%%%%TTP express%%%TTP express%%%TTP express%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(15, 'Dịch vụ', 'update', 'web_menu', 1435722575, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Dịch vụ%%%dich-vu%%%dich-vu/%%%%%%Dịch vụ chuyển phát nhanh trong và ngoài nước TTP Express%%%Dịch vụ chuyển phát nhanh trong và ngoài nước TTP Express nhận gửi, vận chuyển và phát các loại tài liệu hàng hóa%%%chuyển phát nhanh, dịch vụ chuyển phát nhanh,chuyen phat nhanh%%%0%%%3%%%1%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(16, 'Chuyển phát nhanh trong nước', 'update', 'web_menu', 1435722613, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values40%%%Chuyển phát nhanh trong nước%%%chuyen-phat-nhanh-trong-nuoc%%%chuyen-phat-nhanh-trong-nuoc/%%%%%%Dịch vụ chuyển phát nhanh trong nước%%%Dịch vụ chuyển phát nhanh trong nước TTP Express nhận gửi, vận chuyển và phát các loại tài liệu hàng hóa%%%chuyển phát nhanh trong nước,chuyen phat nhanh trong nuoc%%%6%%%1%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(17, 'Chuyển phát nhanh Quốc tế ', 'update', 'web_menu', 1435722658, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values41%%%Chuyển phát nhanh Quốc tế %%%chuyen-phat-nhanh-quoc-te%%%chuyen-phat-nhanh-quoc-te/%%%%%%Dịch vụ chuyển phát nhanh Quốc tế %%%Dịch vụ chuyển phát nhanh Quốc tế TTP Express nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới.%%%chuyển phát nhanh quốc tế,chuyen phat nhanh quoc te%%%6%%%2%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(18, 'Làm thủ tục xuất nhập khẩu', 'update', 'web_menu', 1435722691, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values42%%%Làm thủ tục xuất nhập khẩu%%%lam-thu-tuc-xuat-nhap-khau%%%lam-thu-tuc-xuat-nhap-khau/%%%%%%Dịch vụ làm thủ tục xuất nhập khẩu%%%Dịch vụ làm thủ tục xuất nhập khẩu là tổng hợp các nghiệp vụ liên quan đến hoạt động ngoại thương, ngân hàng, hải quan, vận tải, bảo hiểm...%%%làm thủ tục xuất nhập khẩu,lam thu tuc xuat nhap khau%%%6%%%3%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(19, 'Phòng khai thác ', 'update', 'web_menu', 1435722734, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values39%%%Phòng khai thác %%%%%%%%%%%%Phòng khai thác %%%%%%%%%9%%%3%%%0%%%vi%%%1%%%14%%%,9,', 'vi', 0, NULL, NULL),
(20, 'Hình ảnh', 'update', 'web_menu', 1435722801, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values7%%%Hình ảnh%%%hinh-anh%%%hinh-anh/%%%%%%Hình ảnh%%%Hình ảnh%%%hình ảnh,hinh anh%%%0%%%4%%%1%%%vi%%%1%%%2%%%,2,3,', 'vi', 0, NULL, NULL),
(21, 'Tên trang website', 'update', 'web_config', 1435722933, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values27%%%Tên trang website%%%sitename%%%Công Ty TNHH dịch vụ chuyển phát nhanh TTP%%%1%%%vi%%%1', 'vi', 0, NULL, NULL),
(22, 'Copyright', 'update', 'web_config', 1435722953, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values9%%%Copyright%%%copyright%%%Copyright © 2015 by TTPEXPRESS.COM%%%6%%%vi%%%1', 'vi', 0, NULL, NULL),
(23, 'Email', 'update', 'web_config', 1435722986, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values10%%%Email%%%email%%%info@ttpexpress.com%%%5%%%vi%%%1', 'vi', 0, NULL, NULL),
(24, 'Dịch vụ chuyển phát nhanh Quốc tế', 'update', 'web_article', 1435723206, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values13%%%Dịch vụ chuyển phát nhanh Quốc tế%%%dich-vu-chuyen-phat-nhanh-quoc-te%%%chuyen-phat-nhanh-quoc-te/dich-vu-chuyen-phat-nhanh-quoc-te.html%%%dich-vu-chuyen-phat-nhanh-quoc-te.jpg%%%Dịch vụ chuyển phát nhanh Quốc tế nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ%%%dịch vụ chuyển phát nhanh quốc tế,dich vu chuyen phat nhanh quoc te%%%<h2>TTP Express nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới. UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ,&nbsp;chuyên cung cấp các loại&nbsp;hình dịch vụ và đa dạng nhằm đáp ứng nhu cầu tốt nhất cho toàn thể quý khách hàng.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ chuyển phát nhanh Quốc tế" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-quoc-te.jpg" style="width: 450px; height: 344px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>Dịch vụ chuyển phát nhanh quốc tế bao gồm:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Chuyển phát nhanh đi các nước trên thế giới</li>\r\n	<li>Chuyển phát nhanh chuyên tuyến :</li>\r\n</ol>\r\n\r\n<ul style="margin-left: 40px;">\r\n	<li>Korea</li>\r\n	<li>Hong Kong</li>\r\n	<li>Japan</li>\r\n	<li>Singapore</li>\r\n	<li>Malaysia&nbsp;</li>\r\n</ul>\r\n\r\n<ol start="3">\r\n	<li>Chuyển hàng quà biếu từ Mỹ về Việt Nam</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Gửi hàng từ Mỹ về Việt Nam</strong></span></p>\r\n\r\n<p><strong>Khách hàng tại USA muốn gửi hàng về Việt Nam</strong>, sẽ đến văn phòng nhận hàng của chúng tôi tại USA, tại đây khách hàng sẽ nhận được những hướng dẫn, điều khoản, điều kiện vận chuyển và giao hàng về Việt Nam cụ thể và tận tình.</p>\r\n\r\n<p><em><strong>Chúng tôi cung cấp dịch vụ chuyển hàng hóa từ Mỹ về Việt Nam</strong></em> trên toàn quốc, người thân của bạn dù ở bất kỳ địa phương, bất kỳ tỉnh thành nào đều có thể nhận hàng của bạn từ Mỹ.</p>\r\n\r\n<p>Với khách hàng gửi hàng từ Texas hoặc các khu vực khác của USA&nbsp; về Việt Nam&nbsp; hãy liên hệ với Văn phòng nhận hàng của chúng tôi tại Texas.</p>\r\n\r\n<p>Khách hàng chuyển hàng có thể chọn hình thức thanh toán tại USA hoặc tại Việt Nam.</p>\r\n\r\n<p>Với tiêu chí hoạt động: Nhanh chóng – chính xác và cạnh tranh. Nên quý khách có thể hoàn toàn yên tâm.</p>\r\n\r\n<p style="text-align: center;"><img alt="Gửi hàng từ Mỹ về Việt Nam - CPN Mỹ về Việt Nam" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-quoc-te-2.jpg" style="width: 600px; height: 220px;" /></p>\r\n\r\n<p><span style="color:#0000FF;"><strong>Các mặt hàng nhận chuyển:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Các loại chứng từ, hợp đồng, hồ sơ du học...</li>\r\n	<li>Quà tặng, quần áo, giày dép, mũ, nón….</li>\r\n	<li>Hàng mẫu, hàng hóa, hàng nặng...</li>\r\n	<li>Các loại thuốc: thuốc tây, thuốc Bắc, thuốc nam, thuốc đông y...</li>\r\n	<li>Thực phẩm: Tôm khô, cá khô, mực khô, cà phê, trà, bánh kẹo...</li>\r\n	<li>Dụng cụ làm nails: Kềm bấm, dầu gội đầu, mỹ phẩm...</li>\r\n	<li>Mặt hàng điện tử: Điện thoại, máy tính, máy đọc sách, các loại máy móc khác...</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Bảng giá chuyển phát nhanh quốc tế (attached file kèm theo áp dụng từ 01/06/2015)</strong></span></p>\r\n\r\n<p><em><strong>Phụ phí xăng dầu:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức phụ phí xăng dầu là 15% tính trên bảng cước quy định nối trên</li>\r\n	<li>Mức thu phụ phí xăng dầu sẽ thay đổi theo từng thời điểm công bố</li>\r\n</ul>\r\n\r\n<p><em><strong>Phụ phí vùng xa:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức thu phụ phí vung xa là 35% bưu gửi Quốc tế.</li>\r\n	<li>Phạm vi áp dụng: mức thu phụ phí vùng xâu vùng xa này được áp dụng đối với các bưu gửi <em><strong>chuyển phát nhanh quốc tế </strong></em>đến một số nước theo danh sách các nước áp dụng thu phụ phí vùng xa .</li>\r\n</ul>\r\n%%%0%%%1433929500%%%vi%%%1%%%,36,6,41,', 'vi', 0, NULL, NULL),
(25, 'Các dịch vụ gia tăng', 'update', 'web_article', 1435723214, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values12%%%Các dịch vụ gia tăng%%%cac-dich-vu-gia-tang%%%chuyen-phat-nhanh-trong-nuoc/cac-dich-vu-gia-tang.html%%%cac-dich-vu-gia-tang.jpg%%%Các dịch vụ gia tăng của TTP Express CPN trong nước như: Dịch vụ bảo hiểm hàng hóa bưu gửi, dịch vụ phát hàng thu tiền (COD),...%%%các dịch vụ gia tăng,cac dich vu gia tang,CPN%%%<p><span style="color:#FF0000;"><strong>1. Dịch vụ bảo hiểm hàng hóa bưu gửi</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ&nbsp;bảo hiểm hàng hóa, bưu gửi&nbsp;là dịch vụ gia tăng</strong></em> đi kèm với dịch vụ vận chuyển trong đó người gửi được mua bảo hiểm cho bưu gửi của mình.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>Khi sử dụng dịch vụ bảo hiểm, ngoài cước vận chuyển người gửi phải chịu thêm một khoản phí bảo hiểm tương đương tỷ lệ mua bảo hiểm.</li>\r\n	<li>Trong quá trình vận chuyển, nếu xảy ra mất mát hoặc hư hại hàng hóa bưu gửi, người gửi sẽ được TTP Express bồi thường theo giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Đối với các bưu gửi là chứng từ; giá trị khai giá tối đa là 15.000.000 vnđ</li>\r\n	<li>Đối với các bưu gửi là hàng hóa, giá trị khai giá tối đa là 150.000.000 vnđ</li>\r\n	<li>Giá trị khai giá của hàng hóa bưu gửi không được lớn hơn quá 10% giá trị thực hoặc giá trị trên hóa đơn chứng từ đi kèm hàng hóa bưu gửi.</li>\r\n	<li>Dịch vụ bảo hiểm hàng hóa không được áp dụng cho các loại hàng hóa là thực phẩm, hàng đông lạnh và các loại hàng hóa đặc biệt khác.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Mức phí bảo hiểm:&nbsp;3%&nbsp;giá trị khai giá hàng hóa bưu gửi.</li>\r\n	<li>Mức bồi thường:&nbsp;&nbsp;100%&nbsp;giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Thời gian bảo hiểm: bắt đầu từ thời điểm người gửi mua bảo hiểm đến khi kết thúc quá trình giao hàng hóa bưu gửi cho người nhận.</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Các dịch vụ gia tăng của TTP Express CPN trong nước " src="/public/images/articles/cac-dich-vu-gia-tang.jpg" style="width: 461px; height: 284px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2.&nbsp;Dịch vụ phát hàng -&nbsp;thu tiền (COD)</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ phát hàng -&nbsp;thu tiền (Cash on Delivery – COD) </strong></em>là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát trong đó nhà vận chuyển được ủy thác thu hộ một khoản tiền nhất định do người gửi yêu cầu khi thực hiện việc phát bưu phẩm cho người nhận và hoàn trả lại số tiền đó cho người gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li><em><strong>TTP Express&nbsp;chỉ cung cấp dịch vụ COD</strong></em> tại trung tâm các tỉnh, thành phố nằm trong tuyến chính&nbsp;TTP Express.</li>\r\n	<li>Khi sử dụng dịch vụ COD khách hàng phải thanh toán các khoản cước sau:\r\n	<ul>\r\n		<li>Cước dịch vụ chuyển phát bưu gửi COD.</li>\r\n		<li>Cước phí dịch vụ COD.</li>\r\n		<li>Các khoản cước phí dịch vụ đặc biệt khác mà khách hàng lựa chọn như dịch vụ bảo hiểm, dịch vụ đóng gói, dịch vụ phát hỏa tốc…</li>\r\n	</ul>\r\n	</li>\r\n	<li>Khi sử dụng dịch vụ COD, khách hàng cần thông báo cho người nhận về việc ủy thác cho nhà vận chuyển thu hộ tiền hàng. TTP Express chỉ phát bưu gửi khi người nhận đã thanh toán tiền thu hộ. Nếu không thanh toán bưu gửi COD sẽ được TTP Express trả lại cho người gửi. Trong trường hợp này người gửi vẫn phải thanh toán đầy đủ các khoản cước phí như đã thỏa thuận ban đầu cộng thêm cước phí chuyển hoàn bưu gửi COD đó.</li>\r\n	<li>Mức tiền thu hộ tối đa cho một bưu gửi COD là 50.000.000đ ( năm mươi triệu đồng.)</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Giá cước dịch vụ thu hộ COD được áp dụng theo bảng giá của TTP Express hoặc theo sự thỏa thuận giữa hai bên.</li>\r\n	<li>Người gửi cần cung cấp đầy đủ thông tin của người nhận ( tên, địa chỉ, số điện thoại.. ) trên vận đơn của bưu gửi COD; các loại hóa đơn chứng từ đi kèm để làm cơ sở thu hộ tiền hàng.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>3.&nbsp;Dịch vụ đóng gói.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ đóng gói là dịch vụ gia tăng đi kèm với dịch vụ chuyển phát</strong></em> trong đó nhà vận chuyển thực hiện việc đóng gói hàng hóa bưu gửi của khách hàng theo quy chuẩn của nhà vận chuyển nhằm hạn chế các hư hỏng cơ học cho hàng hóa bưu gửi của khách hàng trong quá trình vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ đóng gói cho các hàng hóa bưu gửi được gửi qua TTP Express.</li>\r\n	<li>Dịch vụ đóng gói được áp dụng theo yêu cầu của khách hàng hoặc bắt buộc đối với các loại hàng hóa đặc biệt do yêu cầu của hãng vận chuyển.TTP Express có quyền từ chối nhận vận chuyển hàng hóa bưu gửi ( thuộc loại bắt buộc phải đóng gói ) nếu khách hàng không chấp nhận sử dụng dịch vụ đóng gói.</li>\r\n	<li>Đối với các hàng hóa bưu gửi sử dụng dịch vụ đóng gói, trọng lượng tính cước sẽ là trọng lượng sau khi đã đóng gói.</li>\r\n	<li>Khi sử dụng dịch vụ đóng gói, ngoài cước phí chính tính theo trọng lượng bưu phẩm, khách hàng phải chịu phí đóng gói tương đương phí nguyên vật liệu sử dụng để đóng gói. Chi phí này được quy định cụ thể trên báo giá của TTP Express và được thông báo cho khách hàng trước khi đóng gói.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Dịch vụ đóng gói bao gồm nhiều hình thức như đóng carton, xốp, gỗ, ván ép, nylon chống nước...Khách hàng có thể yêu cầu đóng gói cùng lúc nhiều hình thức khác nhau.</li>\r\n	<li>Dịch vụ đóng gói giúp hạn chế các hư hỏng cơ học trong quá trình vận chuyển, do đó không phải là dịch vụ bảo hiểm hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>&nbsp;4.&nbsp;Dịch vụ báo phát</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ báo phát là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát</strong></em> trong đó người gửi yêu cầu nhà vận chuyển chuyển trả lại cho người gửi phiếu giao hàng ( vận đơn ) có chữ ký và họ tên của người nhận bưu gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ báo phát cho các vận đơn có địa chỉ người nhận thuộc các địa danh thu phát của TTP Express.</li>\r\n	<li>Thời gian trả báo phát lại cho người gửi phụ thuộc vào từng khu vực phát.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Phí dịch vụ báo phát là 5.000đ / vận đơn.</li>\r\n	<li>Dịch vụ báo phát áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>5.&nbsp;Dịch vụ kiểm đếm.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ kiểm đếm là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát </strong></em>trong đó nhà vận chuyển sẽ tiến hành kiểm đếm số lượng chi tiết của hàng hóa bưu gửi cùng với người gửi khi nhận và người nhận khi phát.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ kiểm đếm về số lượng, chủng loại, tình trạng bên ngoài của hàng hóa bưu gửi. TTP Express không kiểm đếm về chất lượng hoặc quy cách hoạt động của hàng hóa bưu gửi. Trong trường hợp hàng hóa bưu gửi có những dấu hiệu bất thường sẽ được kê khai chi tiết trên biên bản kiểm đếm.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho các khách hàng trên phạm vi thu phát của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm chỉ áp dụng cho các vận đơn có số lượng lớn hơn 100 đơn vị kiểm đếm.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Khi sử dụng dịch vụ kiểm đếm, ngoài cước phí vận chuyển tính theo khối lượng hàng hóa bưu gửi và các loại cước phí đặc biệt theo từng loại hình dịch vụ, người gửi phải chịu một khoản phí kiểm đếm tính theo từng đơn vị kiểm đếm.</li>\r\n	<li>Khi tiến hành kiểm đếm, TTP Express và khách hàng sẽ cùng nhau kiểm đếm và ký vào biên bản kê khai chi tiết số lượng kiểm đếm. Khi phát bưu gửi, TTP Êxpress sẽ cùng người nhận kiểm đếm và phát theo chi tiết số lượng và nội dung đã kê khai trên biên bản kiểm đếm.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>6. Dịch vụ thanh toán đầu nhận</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ thanh toán đầu nhận (TTĐN)</strong></em> là một hình thức thanh toán khác của dịch vụ vận chuyển trong đó người nhận hàng hóa bưu gửi sẽ là người thanh toán 1 phần hoặc toàn bộ cước phí vận chuyển cho nhà vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express cung cấp dịch vụ TTĐN tại các khu vực thu phát của TTP Express.</li>\r\n	<li>Người nhận hàng hóa bưu gửi sử dụng dịch vụ TTĐN sẽ phải thanh toán toàn bộ cước phí tương ứng với các dịch vụ mà người gửi đã lựa chọn.</li>\r\n	<li>TTP Express sẽ chỉ phát hàng hóa bưu gửi sử dụng dịch vụ TTĐN cho người nhận khi chấp nhận thanh toán cước phí. Nếu người nhận không thanh toán cước phí, DHL sẽ hoàn bưu gửi lại cho người gửi. Trong trường hợp này, người gửi sẽ phải thanh toán toàn bộ cước phí của bưu gửi bao gồm cước phí chuyển phát gửi đi và cước phí chuyển hoàn về.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:&nbsp;</strong><span style="line-height: 1.6em;">Cước phí các hàng hóa bưu gửi sử dụng dịch vụ TTĐN được tính theo bảng giá niêm yết tại thời điểm hiện tại của TTP Express hoặc theo sự thỏa thuận đối với từng khách hàng.</span></p>\r\n%%%0%%%1433928720%%%vi%%%1%%%,1,6,40,', 'vi', 0, NULL, NULL),
(26, 'Các loại hình dịch vụ chuyển phát nhanh trong nước', 'update', 'web_article', 1435723222, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values11%%%Các loại hình dịch vụ chuyển phát nhanh trong nước%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc%%%chuyen-phat-nhanh-trong-nuoc/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.html%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg%%%Các loại hình dịch vụ chuyển phát nhanh trong nước của TTP Express như: CPN thông thường, CPN hàng giá trị cao,...%%%các loại hình dịch vụ chuyển phát nhanh trong nước,cac loai hinh dich vu cpn%%%<p><span style="color:#FF0000;"><strong>1. Chuyển phát nhanh hàng thông thường</strong></span></p>\r\n\r\n<p>Khách hàng gửi trong khoảng thời gian từ&nbsp;8giờ&nbsp;đến&nbsp;17giờ30&nbsp;ngày hôm nay thì Người nhận của Quý khách sẽ nhận được từ 9giờ&nbsp;đến&nbsp;17giờ&nbsp;ngày hôm sau&nbsp;trong nội thành, nội thị, với khu vực ngoại thành, ngoại thị, thời gian phát tối đa là&nbsp;48 giờ.</p>\r\n\r\n<p><em>Ghi chú:&nbsp;</em>Tùy theo tính chất địa lý của từng khu vực thì thời gian phát có thể nhanh hoặc chậm hơn thời gian đã nêu ở trên trong khỏang&nbsp;24giờ.</p>\r\n\r\n<p style="text-align: center;"><img alt="Các loại hình dịch vụ chuyển phát nhanh trong nước" src="/public/images/articles/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg" style="width: 359px; height: 282px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2. Chuyển phát nhanh hàng giá trị cao</strong></span></p>\r\n\r\n<p>Chuyển phát nhanh hàng giá trị cao, hồ sơ thầu, vaccine, hàng lạnh</p>\r\n\r\n<p>Đây là những mặt hàng có mức bồi thường cao (lên đến 100% giá trị) khi xảy ra mất mát, hư hỏng,</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>3. Chuyển phát nhanh hỏa tốc</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh hỏa tốc là gói dịch vụ đặc biệt của&nbsp;TTP Express</strong></em> trong đó hàng hóa bưu gửi của khách hàng sẽ được phát đến tay người nhận trong thời gian sớm nhất được thỏa thuận trước giữa&nbsp;TTP Express&nbsp;và khách hàng.</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được áp dụng cho tất cả các khách hàng trên phạm vi thu phát của TTP Express</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được phân chia làm 2 loại: hỏa tốc nội thành và hỏa tốc đi tỉnh.</p>\r\n\r\n<ul>\r\n	<li><em>Hỏa tốc nội thành:</em> khi sử dụng dịch vụ chuyển hỏa tốc nội thành, bưu gửi của quý khách sẽ được&nbsp;TTP Express&nbsp;phát đến tay người nhận sau 2 đến 3h tại các quận nội thành của Hà Nội, Hồ Chí Minh, Đà Nẵng</li>\r\n	<li><em>Hỏa tốc đi tỉnh:&nbsp;</em>TTP Express&nbsp;luôn nỗ lực để đáp ứng một cách tốt nhất mọi yêu cầu về chuyển phát của khách hàng, nhất là đối với các nhu cầu chuyển phát cấp thiết. Do đó khi có nhu cầu gửi hỏa tốc đi bất kỳ nơi nào, khách hàng hãy gọi tới&nbsp;TTP Express&nbsp;để nhận được tư vấn về giải pháp chuyển pháp phù hợp nhất.Chúng tôi tôn trọng mọi yêu cầu của khách hàng và luôn nỗ lực đặt lợi ích của khách hàng lên hàng đầu.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>4. Chuyển phát nhanh trong ngày</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh trong ngày</strong></em> là gói dịch vụ đặc biệt trong đó TTP Express cam kết phát hàng hóa bưu gửi của khách hàng đến tay người nhận ngay trong ngày khách hàng gửi. TTP Express sẽ cung cấp dịch vụ chuyển phát nhanh trong ngày cho từng yêu cầu cụ thể khi có sự thỏa thuận giữa TTP Express và khách hàng.</p>\r\n%%%0%%%1433928060%%%vi%%%1%%%,36,1,6,40,', 'vi', 0, NULL, NULL),
(27, 'Dịch vụ làm thủ tục xuất nhập khẩu', 'update', 'web_article', 1435723228, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values10%%%Dịch vụ làm thủ tục xuất nhập khẩu%%%dich-vu-lam-thu-tuc-xuat-nhap-khau%%%lam-thu-tuc-xuat-nhap-khau/dich-vu-lam-thu-tuc-xuat-nhap-khau.html%%%dich-vu-lam-thu-tuc-xuat-nhap-khau.jpg%%%Dịch vụ làm thủ tục xuất nhập khẩu TTP Express nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu, đội ngũ nhân viên dày dặn kinh nghiệm%%%dịch vụ làm thủ tục xuất nhập khẩu,dich vu lam thu tuc xuat nhap khau%%%<h2>Dịch vụ xuất nhập khẩu là tổng hợp các nghiệp vụ liên quan đến hoạt động ngoại thương, ngân hàng, hải quan, vận tải, bảo hiểm… mà bên nhận làm dịch vụ đứng ra đảm nhận và thực hiện thay cho bên khoán dịch vụ.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ làm thủ tục xuất nhập khẩu" src="/public/images/articles/dich-vu-lam-thu-tuc-xuat-nhap-khau.jpg" style="width: 500px; height: 312px;" /></p>\r\n\r\n<p>Ngày nay, nếu như việc toàn cầu hóa kinh tế thế giới là một con thuyền tiến ra biển đông thì xuất nhập khẩu đóng vai trò là mũi thuyền, là bánh lái, là nhịp cầu nối để gắn kết các quốc gia lại giao thương với nhau.</p>\r\n\r\n<p>Và đã ra sân chơi với bạn bè trên thế giới, để không bị thua thiệt, không bị tổn thất vì thiếu kiến thức thì phải hiểu luật, nắm những qui tắc cơ bản, qui tắc chung mà các quốc gia trên thế giới đã đề ra.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu ra đời nhằm giải quyết và thảo gỡ các vướng mắc trên.</strong></em> Sứ mệnh của dịch vụ xuất nhập khẩu là tìm tòi, học hỏi , nghiên cứu và áp dụng vào thực tế để hoàn thiện các thủ tục, hủ tục phù hợp với quy định luật pháp của Nhà nước, từ đó đưa nguồn hàng từ Việt Nam đến các quốc gia trên thế giới, đồng thời cũng là nơi tiếp nhận các nguồn hàng từ các nơi trên thế giới đổ về Việt Nam&nbsp;đây là yếu tố rất quan trọng trong công cuộc phát triển kinh tế của nước nhà.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu luôn là người bạn đồng hành cùng doanh nghiệp</strong></em>, hỗ trợ doanh nghiệp vượt qua các khó khăn, rào cản để có thể tiếp cận với thị trường kinh tế thế giới một cách dễ dàng hơn, anh tâm hơn và nhanh chóng hơn.</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>1. Dịch vụ chứng từ XNK</strong></span></p>\r\n\r\n<p><em><strong>Nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu</strong></em>. Với đội ngũ nhân viên dày dặn kinh nghiệm, độ bao phủ rộng khắp các cơ quan hữu quan như: Hải Quan, Kiểm dịch thực vật, chứng nhận xuất xứ, Giám định chất lượng hàng hóa…. Chúng tôi cam kết sẽ hoàn thiện bộ chứng từ nhanh nhất trong thời gian sớm nhất .</p>\r\n\r\n<ul>\r\n	<li>Thủ tục mở tờ khai HQ</li>\r\n	<li>Xin giấy chứng nhận kiểm dịch thực vật</li>\r\n	<li>Xin giấy chứng nhận xuất xứ hàng hóa (C/O)</li>\r\n	<li>Xin giấy chứng nhận giám dịnh hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong><span style="line-height: 1.6em;">2. Dịch vụ khai thuê Hải Quan</span></strong></span></p>\r\n\r\n<p><strong>Dịch vụ khai báo Hải quan</strong> là một trong những khâu rất quan trọng trong quá trình xuất – Nhập khẩu hàng hóa, việc khai báo Hải quan đòi hỏi sự linh hoạt của nhân viên giàu kinh nghiệm để xữ lý những vấn đề phát sinh.</p>\r\n\r\n<p><em><strong>Chúng tôi nhận khai báo&nbsp;Hải quan hàng xuất nhập khẩu</strong></em> gồm hàng nguyên tàu, hàng nguyên container, hàng lẽ, hàng rời, với đa dạng các mặt hàng như: Nông sản, hàng đông lạnh, thủy hải sản, hàng gia dụng, trang trí nội thất, trang thiết bị, máy móc...</p>\r\n\r\n<p style="text-align: center;"><span style="color:#0000FF;"><strong>&nbsp;CAM KẾT HOÀN THÀNH THỦ TỤC HẢI QUAN TRONG VÒNG MỘT NGÀY KÍ&nbsp;ĐÃ TẬP KẾT ĐỦ HÀNG VÀ CHỨNG TỪ.</strong></span></p>\r\n%%%0%%%1433926020%%%vi%%%1%%%,36,6,42,', 'vi', 0, NULL, NULL),
(28, 'Dịch vụ chuyển phát nhanh trong nước', 'update', 'web_article', 1435723234, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values9%%%Dịch vụ chuyển phát nhanh trong nước%%%dich-vu-chuyen-phat-nhanh-trong-nuoc%%%chuyen-phat-nhanh-trong-nuoc/dich-vu-chuyen-phat-nhanh-trong-nuoc.html%%%dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg%%%Dịch vụ chuyển phát nhanh trong nước của TTP Express nhận gửi, vận chuyển và phát các loại tài liệu hàng hóa theo chỉ tiêu thời gian được công bố trước.%%%dịch vụ chuyển phát nhanh trong nước,dich vu chuyen phat nhanh trong nuoc%%%<h2>TTP Express nhận gửi, vận chuyển và phát các loại tài liệu hàng hóa theo chỉ tiêu thời gian được công bố trước.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ chuyển phát nhanh trong nước" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg" style="width: 450px; height: 336px;" /></p>\r\n\r\n<p><strong>Phạm vi cung cấp dịch vụ:</strong> hiện nay dịch vụ chuyển phát nhanh trong nước của chúng tôi đã mở rông mạng lưới phục vụ đến 63 tỉnh thành trong cả nước được phân chia theo khu vực như sau:</p>\r\n\r\n<p><strong><em>Khu vực 1:</em></strong> Gồm 28 tỉnh, thành phố khu vực phía Bắc là: Bắc Cạn, Bắc Giang, Bắc Ninh, Cao Bằng, Điện Biên, Hà Nội, Hà Giang, Hà Nam, Hà Tĩnh, Hải Dương, Hải Phòng, Hưng Yên, Hòa Bình, Lào Cai, Lai Châu, Lạng Sơn, Nam Định, Nghệ An, Ninh Bình, Phú Thọ, Quảng Ninh, Sơn La, Thái Bình, Thái Nguyên, Thanh Hóa, Tuyên Quang, Vĩnh Phúc, Yên Bái.</p>\r\n\r\n<p><em><strong>Khu vực 2:</strong></em> Gồm 22 tỉnh, thành phố khu vực phía Nam và 02 tỉnh khu vực Miền Trung là: An Giang, Bình Dương, Bình Phước, Bà Rịa - Vũng Tàu, Bạc Liêu, Bến Tre, Bình Thuận, Cà Mau, Cần Thơ, Đồng Nai, Đồng Tháp, Tp.Hồ Chí Minh, Hậu Giang, Kiên Giang, Long An, Lâm Đồng, Ninh Thuận, Sóc Trăng, Tây Ninh, Tiền Giang, Trà Vinh, Vĩnh Long và 02 tỉnh Miền Trung là Đắk Lak, Đắk Nông.</p>\r\n\r\n<p><em><strong>Khu vực 3:</strong></em> Gồm 11 tỉnh khu vực Miền Trung là: Bình Định, Đà Nẵng, Gia Lai, Thừa Thiên - Huế, Kon Tum, Khánh Hòa, Phú Yên, Quảng Ninh, Quảng Trị, Quang Nam, Quảng Ngãi.</p>\r\n\r\n<p><span style="color:#0000FF;"><strong>Dịch vụ chuyển phát nhanh trong nước bao gồm:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Dịch vụ hỏa tốc</li>\r\n	<li>Dịch vụ chuyển phát nhanh</li>\r\n	<li>Dịch vhu chuyển phát tiết kiệm</li>\r\n	<li>Dịch vụ đường bộ</li>\r\n	<li>Dịch vụ nguyên chuyến</li>\r\n	<li>Dịch vụ chành</li>\r\n</ol>\r\n\r\n<p><strong>Quý khách hàng có thể sử dụng dịch vụ chuyển phát nhanh trong nước với các dịch vụ công thêm như:</strong></p>\r\n\r\n<ol>\r\n	<li>Dịch vụ phát tận tay</li>\r\n	<li>Dịch vụ khai giá</li>\r\n	<li>Dịch vụ báo phát</li>\r\n	<li>Rút bưu gửi</li>\r\n	<li>Thay đổi họ tên người nhận</li>\r\n	<li>Dịch vụ phát hàng thu tiền COD trong nước</li>\r\n	<li>Nhận tại địa chỉ</li>\r\n	<li>Dịch vụ thu cước ở nơi người nhận</li>\r\n	<li>Dịch vụ người nhận trả cước</li>\r\n	<li>Dịch vụ kiểm đếm</li>\r\n</ol>\r\n\r\n<p><strong>Khối lượng:</strong></p>\r\n\r\n<ul>\r\n	<li>Bưu gửi thông thường đến 31.5kg.</li>\r\n	<li>Đối với bưu gửi là hàng nguyên khối không thể tách rời, vận chuyển bằng bộ được nhận gửi tối đa đến 50kg, nhưng phải đảm bảo giới hạn về kích thước theo quy định.</li>\r\n</ul>\r\n\r\n<p><strong>Kích thước:</strong></p>\r\n\r\n<ul>\r\n	<li>Kích thước thông thường: Đối với Bưu gửi EBS là bất kỳ chiều nào của bưu gửi không vượt quá 1.5m và tổng chiều dài với chu vi lớn nhất (không đo theo chiều dài đã đo) không vượt quá 3m.</li>\r\n	<li>Hàng cồng kềnh: Bưu gửi có kích thước lớn hơn so với kích thước thông thường được gọi là Bưu gửi cồng kềnh và có quy định riêng phụ thuộc và từng nơi nhận, nơi phát và điều kiện phương tiện vận chuyển.</li>\r\n	<li>Hàng nhẹ: Là hàng gửi có khối lượng dưới 167 kg/m3&nbsp;(tương đương với trên 6000 cm3/kg), khối lượng tính cước không căn cứ vào khối lượng thực mà căn cứ vào khối lượng quy đổi từ thể tích kiện hàng</li>\r\n</ul>\r\n\r\n<p><strong>Cam kết dịch vụ:</strong></p>\r\n\r\n<p>Với đội ngũ nhân viên chuyên nghiệp, phục vụ tận tình chu đáo, chúng tôi đảm bảo việc chuyển hàng đến tận tay khách hàng trong thời gian sơm nhất, theo dõi quá trinh chuyển hàng và thông báo cho khách hàng khi hàng đến nới.</p>\r\n\r\n<ol>\r\n	<li>Giao nhạn hàng đúng thời gian thỏa thuận</li>\r\n	<li>Làm thủ tục thông quan nhanh chóng</li>\r\n	<li>Chuyển phát nhanh hỏa tốc đúng thời gian</li>\r\n	<li>Lộ trinh giao nhận minh bạch</li>\r\n</ol>\r\n%%%0%%%1433931000%%%vi%%%1%%%,36,6,40,', 'vi', 0, NULL, NULL),
(29, 'Dịch vụ chuyển phát nhanh Quốc tế', 'update', 'web_article', 1435723279, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values13%%%Dịch vụ chuyển phát nhanh Quốc tế%%%dich-vu-chuyen-phat-nhanh-quoc-te%%%chuyen-phat-nhanh-quoc-te/dich-vu-chuyen-phat-nhanh-quoc-te.html%%%dich-vu-chuyen-phat-nhanh-quoc-te.jpg%%%Dịch vụ chuyển phát nhanh Quốc tế nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ%%%dịch vụ chuyển phát nhanh quốc tế,dich vu chuyen phat nhanh quoc te%%%<h2>TTP Express nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới. UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ,&nbsp;chuyên cung cấp các loại&nbsp;hình dịch vụ và đa dạng nhằm đáp ứng nhu cầu tốt nhất cho toàn thể quý khách hàng.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ chuyển phát nhanh Quốc tế" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-quoc-te.jpg" style="width: 450px; height: 344px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>Dịch vụ chuyển phát nhanh quốc tế bao gồm:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Chuyển phát nhanh đi các nước trên thế giới</li>\r\n	<li>Chuyển phát nhanh chuyên tuyến :</li>\r\n</ol>\r\n\r\n<ul style="margin-left: 40px;">\r\n	<li>Korea</li>\r\n	<li>Hong Kong</li>\r\n	<li>Japan</li>\r\n	<li>Singapore</li>\r\n	<li>Malaysia&nbsp;</li>\r\n</ul>\r\n\r\n<ol start="3">\r\n	<li>Chuyển hàng quà biếu từ Mỹ về Việt Nam</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Gửi hàng từ Mỹ về Việt Nam</strong></span></p>\r\n\r\n<p><strong>Khách hàng tại USA muốn gửi hàng về Việt Nam</strong>, sẽ đến văn phòng nhận hàng của chúng tôi tại USA, tại đây khách hàng sẽ nhận được những hướng dẫn, điều khoản, điều kiện vận chuyển và giao hàng về Việt Nam cụ thể và tận tình.</p>\r\n\r\n<p><em><strong>Chúng tôi cung cấp dịch vụ chuyển hàng hóa từ Mỹ về Việt Nam</strong></em> trên toàn quốc, người thân của bạn dù ở bất kỳ địa phương, bất kỳ tỉnh thành nào đều có thể nhận hàng của bạn từ Mỹ.</p>\r\n\r\n<p>Với khách hàng gửi hàng từ Texas hoặc các khu vực khác của USA&nbsp; về Việt Nam&nbsp; hãy liên hệ với Văn phòng nhận hàng của chúng tôi tại Texas.</p>\r\n\r\n<p>Khách hàng chuyển hàng có thể chọn hình thức thanh toán tại USA hoặc tại Việt Nam.</p>\r\n\r\n<p>Với tiêu chí hoạt động: Nhanh chóng – chính xác và cạnh tranh. Nên quý khách có thể hoàn toàn yên tâm.</p>\r\n\r\n<p style="text-align: center;"><img alt="Gửi hàng từ Mỹ về Việt Nam - CPN Mỹ về Việt Nam" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-quoc-te-2.jpg" style="width: 600px; height: 220px;" /></p>\r\n\r\n<p><span style="color:#0000FF;"><strong>Các mặt hàng nhận chuyển:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Các loại chứng từ, hợp đồng, hồ sơ du học...</li>\r\n	<li>Quà tặng, quần áo, giày dép, mũ, nón….</li>\r\n	<li>Hàng mẫu, hàng hóa, hàng nặng...</li>\r\n	<li>Các loại thuốc: thuốc tây, thuốc Bắc, thuốc nam, thuốc đông y...</li>\r\n	<li>Thực phẩm: Tôm khô, cá khô, mực khô, cà phê, trà, bánh kẹo...</li>\r\n	<li>Dụng cụ làm nails: Kềm bấm, dầu gội đầu, mỹ phẩm...</li>\r\n	<li>Mặt hàng điện tử: Điện thoại, máy tính, máy đọc sách, các loại máy móc khác...</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Bảng giá chuyển phát nhanh quốc tế (attached file kèm theo áp dụng từ 01/06/2015)</strong></span></p>\r\n\r\n<p><em><strong>Phụ phí xăng dầu:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức phụ phí xăng dầu là 15% tính trên bảng cước quy định nối trên</li>\r\n	<li>Mức thu phụ phí xăng dầu sẽ thay đổi theo từng thời điểm công bố</li>\r\n</ul>\r\n\r\n<p><em><strong>Phụ phí vùng xa:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức thu phụ phí vung xa là 35% bưu gửi Quốc tế.</li>\r\n	<li>Phạm vi áp dụng: mức thu phụ phí vùng xâu vùng xa này được áp dụng đối với các bưu gửi <em><strong>chuyển phát nhanh quốc tế </strong></em>đến một số nước theo danh sách các nước áp dụng thu phụ phí vùng xa .</li>\r\n</ul>\r\n%%%0%%%1433929500%%%vi%%%1%%%,36,8,', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(30, 'Các dịch vụ gia tăng', 'update', 'web_article', 1435723284, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values12%%%Các dịch vụ gia tăng%%%cac-dich-vu-gia-tang%%%chuyen-phat-nhanh-trong-nuoc/cac-dich-vu-gia-tang.html%%%cac-dich-vu-gia-tang.jpg%%%Các dịch vụ gia tăng của TTP Express CPN trong nước như: Dịch vụ bảo hiểm hàng hóa bưu gửi, dịch vụ phát hàng thu tiền (COD),...%%%các dịch vụ gia tăng,cac dich vu gia tang,CPN%%%<p><span style="color:#FF0000;"><strong>1. Dịch vụ bảo hiểm hàng hóa bưu gửi</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ&nbsp;bảo hiểm hàng hóa, bưu gửi&nbsp;là dịch vụ gia tăng</strong></em> đi kèm với dịch vụ vận chuyển trong đó người gửi được mua bảo hiểm cho bưu gửi của mình.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>Khi sử dụng dịch vụ bảo hiểm, ngoài cước vận chuyển người gửi phải chịu thêm một khoản phí bảo hiểm tương đương tỷ lệ mua bảo hiểm.</li>\r\n	<li>Trong quá trình vận chuyển, nếu xảy ra mất mát hoặc hư hại hàng hóa bưu gửi, người gửi sẽ được TTP Express bồi thường theo giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Đối với các bưu gửi là chứng từ; giá trị khai giá tối đa là 15.000.000 vnđ</li>\r\n	<li>Đối với các bưu gửi là hàng hóa, giá trị khai giá tối đa là 150.000.000 vnđ</li>\r\n	<li>Giá trị khai giá của hàng hóa bưu gửi không được lớn hơn quá 10% giá trị thực hoặc giá trị trên hóa đơn chứng từ đi kèm hàng hóa bưu gửi.</li>\r\n	<li>Dịch vụ bảo hiểm hàng hóa không được áp dụng cho các loại hàng hóa là thực phẩm, hàng đông lạnh và các loại hàng hóa đặc biệt khác.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Mức phí bảo hiểm:&nbsp;3%&nbsp;giá trị khai giá hàng hóa bưu gửi.</li>\r\n	<li>Mức bồi thường:&nbsp;&nbsp;100%&nbsp;giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Thời gian bảo hiểm: bắt đầu từ thời điểm người gửi mua bảo hiểm đến khi kết thúc quá trình giao hàng hóa bưu gửi cho người nhận.</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Các dịch vụ gia tăng của TTP Express CPN trong nước " src="/public/images/articles/cac-dich-vu-gia-tang.jpg" style="width: 461px; height: 284px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2.&nbsp;Dịch vụ phát hàng -&nbsp;thu tiền (COD)</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ phát hàng -&nbsp;thu tiền (Cash on Delivery – COD) </strong></em>là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát trong đó nhà vận chuyển được ủy thác thu hộ một khoản tiền nhất định do người gửi yêu cầu khi thực hiện việc phát bưu phẩm cho người nhận và hoàn trả lại số tiền đó cho người gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li><em><strong>TTP Express&nbsp;chỉ cung cấp dịch vụ COD</strong></em> tại trung tâm các tỉnh, thành phố nằm trong tuyến chính&nbsp;TTP Express.</li>\r\n	<li>Khi sử dụng dịch vụ COD khách hàng phải thanh toán các khoản cước sau:\r\n	<ul>\r\n		<li>Cước dịch vụ chuyển phát bưu gửi COD.</li>\r\n		<li>Cước phí dịch vụ COD.</li>\r\n		<li>Các khoản cước phí dịch vụ đặc biệt khác mà khách hàng lựa chọn như dịch vụ bảo hiểm, dịch vụ đóng gói, dịch vụ phát hỏa tốc…</li>\r\n	</ul>\r\n	</li>\r\n	<li>Khi sử dụng dịch vụ COD, khách hàng cần thông báo cho người nhận về việc ủy thác cho nhà vận chuyển thu hộ tiền hàng. TTP Express chỉ phát bưu gửi khi người nhận đã thanh toán tiền thu hộ. Nếu không thanh toán bưu gửi COD sẽ được TTP Express trả lại cho người gửi. Trong trường hợp này người gửi vẫn phải thanh toán đầy đủ các khoản cước phí như đã thỏa thuận ban đầu cộng thêm cước phí chuyển hoàn bưu gửi COD đó.</li>\r\n	<li>Mức tiền thu hộ tối đa cho một bưu gửi COD là 50.000.000đ ( năm mươi triệu đồng.)</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Giá cước dịch vụ thu hộ COD được áp dụng theo bảng giá của TTP Express hoặc theo sự thỏa thuận giữa hai bên.</li>\r\n	<li>Người gửi cần cung cấp đầy đủ thông tin của người nhận ( tên, địa chỉ, số điện thoại.. ) trên vận đơn của bưu gửi COD; các loại hóa đơn chứng từ đi kèm để làm cơ sở thu hộ tiền hàng.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>3.&nbsp;Dịch vụ đóng gói.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ đóng gói là dịch vụ gia tăng đi kèm với dịch vụ chuyển phát</strong></em> trong đó nhà vận chuyển thực hiện việc đóng gói hàng hóa bưu gửi của khách hàng theo quy chuẩn của nhà vận chuyển nhằm hạn chế các hư hỏng cơ học cho hàng hóa bưu gửi của khách hàng trong quá trình vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ đóng gói cho các hàng hóa bưu gửi được gửi qua TTP Express.</li>\r\n	<li>Dịch vụ đóng gói được áp dụng theo yêu cầu của khách hàng hoặc bắt buộc đối với các loại hàng hóa đặc biệt do yêu cầu của hãng vận chuyển.TTP Express có quyền từ chối nhận vận chuyển hàng hóa bưu gửi ( thuộc loại bắt buộc phải đóng gói ) nếu khách hàng không chấp nhận sử dụng dịch vụ đóng gói.</li>\r\n	<li>Đối với các hàng hóa bưu gửi sử dụng dịch vụ đóng gói, trọng lượng tính cước sẽ là trọng lượng sau khi đã đóng gói.</li>\r\n	<li>Khi sử dụng dịch vụ đóng gói, ngoài cước phí chính tính theo trọng lượng bưu phẩm, khách hàng phải chịu phí đóng gói tương đương phí nguyên vật liệu sử dụng để đóng gói. Chi phí này được quy định cụ thể trên báo giá của TTP Express và được thông báo cho khách hàng trước khi đóng gói.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Dịch vụ đóng gói bao gồm nhiều hình thức như đóng carton, xốp, gỗ, ván ép, nylon chống nước...Khách hàng có thể yêu cầu đóng gói cùng lúc nhiều hình thức khác nhau.</li>\r\n	<li>Dịch vụ đóng gói giúp hạn chế các hư hỏng cơ học trong quá trình vận chuyển, do đó không phải là dịch vụ bảo hiểm hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>&nbsp;4.&nbsp;Dịch vụ báo phát</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ báo phát là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát</strong></em> trong đó người gửi yêu cầu nhà vận chuyển chuyển trả lại cho người gửi phiếu giao hàng ( vận đơn ) có chữ ký và họ tên của người nhận bưu gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ báo phát cho các vận đơn có địa chỉ người nhận thuộc các địa danh thu phát của TTP Express.</li>\r\n	<li>Thời gian trả báo phát lại cho người gửi phụ thuộc vào từng khu vực phát.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Phí dịch vụ báo phát là 5.000đ / vận đơn.</li>\r\n	<li>Dịch vụ báo phát áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>5.&nbsp;Dịch vụ kiểm đếm.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ kiểm đếm là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát </strong></em>trong đó nhà vận chuyển sẽ tiến hành kiểm đếm số lượng chi tiết của hàng hóa bưu gửi cùng với người gửi khi nhận và người nhận khi phát.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ kiểm đếm về số lượng, chủng loại, tình trạng bên ngoài của hàng hóa bưu gửi. TTP Express không kiểm đếm về chất lượng hoặc quy cách hoạt động của hàng hóa bưu gửi. Trong trường hợp hàng hóa bưu gửi có những dấu hiệu bất thường sẽ được kê khai chi tiết trên biên bản kiểm đếm.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho các khách hàng trên phạm vi thu phát của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm chỉ áp dụng cho các vận đơn có số lượng lớn hơn 100 đơn vị kiểm đếm.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Khi sử dụng dịch vụ kiểm đếm, ngoài cước phí vận chuyển tính theo khối lượng hàng hóa bưu gửi và các loại cước phí đặc biệt theo từng loại hình dịch vụ, người gửi phải chịu một khoản phí kiểm đếm tính theo từng đơn vị kiểm đếm.</li>\r\n	<li>Khi tiến hành kiểm đếm, TTP Express và khách hàng sẽ cùng nhau kiểm đếm và ký vào biên bản kê khai chi tiết số lượng kiểm đếm. Khi phát bưu gửi, TTP Êxpress sẽ cùng người nhận kiểm đếm và phát theo chi tiết số lượng và nội dung đã kê khai trên biên bản kiểm đếm.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>6. Dịch vụ thanh toán đầu nhận</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ thanh toán đầu nhận (TTĐN)</strong></em> là một hình thức thanh toán khác của dịch vụ vận chuyển trong đó người nhận hàng hóa bưu gửi sẽ là người thanh toán 1 phần hoặc toàn bộ cước phí vận chuyển cho nhà vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express cung cấp dịch vụ TTĐN tại các khu vực thu phát của TTP Express.</li>\r\n	<li>Người nhận hàng hóa bưu gửi sử dụng dịch vụ TTĐN sẽ phải thanh toán toàn bộ cước phí tương ứng với các dịch vụ mà người gửi đã lựa chọn.</li>\r\n	<li>TTP Express sẽ chỉ phát hàng hóa bưu gửi sử dụng dịch vụ TTĐN cho người nhận khi chấp nhận thanh toán cước phí. Nếu người nhận không thanh toán cước phí, DHL sẽ hoàn bưu gửi lại cho người gửi. Trong trường hợp này, người gửi sẽ phải thanh toán toàn bộ cước phí của bưu gửi bao gồm cước phí chuyển phát gửi đi và cước phí chuyển hoàn về.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:&nbsp;</strong><span style="line-height: 1.6em;">Cước phí các hàng hóa bưu gửi sử dụng dịch vụ TTĐN được tính theo bảng giá niêm yết tại thời điểm hiện tại của TTP Express hoặc theo sự thỏa thuận đối với từng khách hàng.</span></p>\r\n%%%0%%%1433928720%%%vi%%%1%%%,36,8,', 'vi', 0, NULL, NULL),
(31, 'Các loại hình dịch vụ chuyển phát nhanh trong nước', 'update', 'web_article', 1435723289, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values11%%%Các loại hình dịch vụ chuyển phát nhanh trong nước%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc%%%chuyen-phat-nhanh-trong-nuoc/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.html%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg%%%Các loại hình dịch vụ chuyển phát nhanh trong nước của TTP Express như: CPN thông thường, CPN hàng giá trị cao,...%%%các loại hình dịch vụ chuyển phát nhanh trong nước,cac loai hinh dich vu cpn%%%<p><span style="color:#FF0000;"><strong>1. Chuyển phát nhanh hàng thông thường</strong></span></p>\r\n\r\n<p>Khách hàng gửi trong khoảng thời gian từ&nbsp;8giờ&nbsp;đến&nbsp;17giờ30&nbsp;ngày hôm nay thì Người nhận của Quý khách sẽ nhận được từ 9giờ&nbsp;đến&nbsp;17giờ&nbsp;ngày hôm sau&nbsp;trong nội thành, nội thị, với khu vực ngoại thành, ngoại thị, thời gian phát tối đa là&nbsp;48 giờ.</p>\r\n\r\n<p><em>Ghi chú:&nbsp;</em>Tùy theo tính chất địa lý của từng khu vực thì thời gian phát có thể nhanh hoặc chậm hơn thời gian đã nêu ở trên trong khỏang&nbsp;24giờ.</p>\r\n\r\n<p style="text-align: center;"><img alt="Các loại hình dịch vụ chuyển phát nhanh trong nước" src="/public/images/articles/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg" style="width: 359px; height: 282px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2. Chuyển phát nhanh hàng giá trị cao</strong></span></p>\r\n\r\n<p>Chuyển phát nhanh hàng giá trị cao, hồ sơ thầu, vaccine, hàng lạnh</p>\r\n\r\n<p>Đây là những mặt hàng có mức bồi thường cao (lên đến 100% giá trị) khi xảy ra mất mát, hư hỏng,</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>3. Chuyển phát nhanh hỏa tốc</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh hỏa tốc là gói dịch vụ đặc biệt của&nbsp;TTP Express</strong></em> trong đó hàng hóa bưu gửi của khách hàng sẽ được phát đến tay người nhận trong thời gian sớm nhất được thỏa thuận trước giữa&nbsp;TTP Express&nbsp;và khách hàng.</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được áp dụng cho tất cả các khách hàng trên phạm vi thu phát của TTP Express</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được phân chia làm 2 loại: hỏa tốc nội thành và hỏa tốc đi tỉnh.</p>\r\n\r\n<ul>\r\n	<li><em>Hỏa tốc nội thành:</em> khi sử dụng dịch vụ chuyển hỏa tốc nội thành, bưu gửi của quý khách sẽ được&nbsp;TTP Express&nbsp;phát đến tay người nhận sau 2 đến 3h tại các quận nội thành của Hà Nội, Hồ Chí Minh, Đà Nẵng</li>\r\n	<li><em>Hỏa tốc đi tỉnh:&nbsp;</em>TTP Express&nbsp;luôn nỗ lực để đáp ứng một cách tốt nhất mọi yêu cầu về chuyển phát của khách hàng, nhất là đối với các nhu cầu chuyển phát cấp thiết. Do đó khi có nhu cầu gửi hỏa tốc đi bất kỳ nơi nào, khách hàng hãy gọi tới&nbsp;TTP Express&nbsp;để nhận được tư vấn về giải pháp chuyển pháp phù hợp nhất.Chúng tôi tôn trọng mọi yêu cầu của khách hàng và luôn nỗ lực đặt lợi ích của khách hàng lên hàng đầu.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>4. Chuyển phát nhanh trong ngày</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh trong ngày</strong></em> là gói dịch vụ đặc biệt trong đó TTP Express cam kết phát hàng hóa bưu gửi của khách hàng đến tay người nhận ngay trong ngày khách hàng gửi. TTP Express sẽ cung cấp dịch vụ chuyển phát nhanh trong ngày cho từng yêu cầu cụ thể khi có sự thỏa thuận giữa TTP Express và khách hàng.</p>\r\n%%%0%%%1433928060%%%vi%%%1%%%,36,8,', 'vi', 0, NULL, NULL),
(32, 'Dịch vụ làm thủ tục xuất nhập khẩu', 'update', 'web_article', 1435723294, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values10%%%Dịch vụ làm thủ tục xuất nhập khẩu%%%dich-vu-lam-thu-tuc-xuat-nhap-khau%%%lam-thu-tuc-xuat-nhap-khau/dich-vu-lam-thu-tuc-xuat-nhap-khau.html%%%dich-vu-lam-thu-tuc-xuat-nhap-khau.jpg%%%Dịch vụ làm thủ tục xuất nhập khẩu TTP Express nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu, đội ngũ nhân viên dày dặn kinh nghiệm%%%dịch vụ làm thủ tục xuất nhập khẩu,dich vu lam thu tuc xuat nhap khau%%%<h2>Dịch vụ xuất nhập khẩu là tổng hợp các nghiệp vụ liên quan đến hoạt động ngoại thương, ngân hàng, hải quan, vận tải, bảo hiểm… mà bên nhận làm dịch vụ đứng ra đảm nhận và thực hiện thay cho bên khoán dịch vụ.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ làm thủ tục xuất nhập khẩu" src="/public/images/articles/dich-vu-lam-thu-tuc-xuat-nhap-khau.jpg" style="width: 500px; height: 312px;" /></p>\r\n\r\n<p>Ngày nay, nếu như việc toàn cầu hóa kinh tế thế giới là một con thuyền tiến ra biển đông thì xuất nhập khẩu đóng vai trò là mũi thuyền, là bánh lái, là nhịp cầu nối để gắn kết các quốc gia lại giao thương với nhau.</p>\r\n\r\n<p>Và đã ra sân chơi với bạn bè trên thế giới, để không bị thua thiệt, không bị tổn thất vì thiếu kiến thức thì phải hiểu luật, nắm những qui tắc cơ bản, qui tắc chung mà các quốc gia trên thế giới đã đề ra.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu ra đời nhằm giải quyết và thảo gỡ các vướng mắc trên.</strong></em> Sứ mệnh của dịch vụ xuất nhập khẩu là tìm tòi, học hỏi , nghiên cứu và áp dụng vào thực tế để hoàn thiện các thủ tục, hủ tục phù hợp với quy định luật pháp của Nhà nước, từ đó đưa nguồn hàng từ Việt Nam đến các quốc gia trên thế giới, đồng thời cũng là nơi tiếp nhận các nguồn hàng từ các nơi trên thế giới đổ về Việt Nam&nbsp;đây là yếu tố rất quan trọng trong công cuộc phát triển kinh tế của nước nhà.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu luôn là người bạn đồng hành cùng doanh nghiệp</strong></em>, hỗ trợ doanh nghiệp vượt qua các khó khăn, rào cản để có thể tiếp cận với thị trường kinh tế thế giới một cách dễ dàng hơn, anh tâm hơn và nhanh chóng hơn.</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>1. Dịch vụ chứng từ XNK</strong></span></p>\r\n\r\n<p><em><strong>Nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu</strong></em>. Với đội ngũ nhân viên dày dặn kinh nghiệm, độ bao phủ rộng khắp các cơ quan hữu quan như: Hải Quan, Kiểm dịch thực vật, chứng nhận xuất xứ, Giám định chất lượng hàng hóa…. Chúng tôi cam kết sẽ hoàn thiện bộ chứng từ nhanh nhất trong thời gian sớm nhất .</p>\r\n\r\n<ul>\r\n	<li>Thủ tục mở tờ khai HQ</li>\r\n	<li>Xin giấy chứng nhận kiểm dịch thực vật</li>\r\n	<li>Xin giấy chứng nhận xuất xứ hàng hóa (C/O)</li>\r\n	<li>Xin giấy chứng nhận giám dịnh hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong><span style="line-height: 1.6em;">2. Dịch vụ khai thuê Hải Quan</span></strong></span></p>\r\n\r\n<p><strong>Dịch vụ khai báo Hải quan</strong> là một trong những khâu rất quan trọng trong quá trình xuất – Nhập khẩu hàng hóa, việc khai báo Hải quan đòi hỏi sự linh hoạt của nhân viên giàu kinh nghiệm để xữ lý những vấn đề phát sinh.</p>\r\n\r\n<p><em><strong>Chúng tôi nhận khai báo&nbsp;Hải quan hàng xuất nhập khẩu</strong></em> gồm hàng nguyên tàu, hàng nguyên container, hàng lẽ, hàng rời, với đa dạng các mặt hàng như: Nông sản, hàng đông lạnh, thủy hải sản, hàng gia dụng, trang trí nội thất, trang thiết bị, máy móc...</p>\r\n\r\n<p style="text-align: center;"><span style="color:#0000FF;"><strong>&nbsp;CAM KẾT HOÀN THÀNH THỦ TỤC HẢI QUAN TRONG VÒNG MỘT NGÀY KÍ&nbsp;ĐÃ TẬP KẾT ĐỦ HÀNG VÀ CHỨNG TỪ.</strong></span></p>\r\n%%%0%%%1433926020%%%vi%%%1%%%,36,8,', 'vi', 0, NULL, NULL),
(33, 'Dịch vụ chuyển phát nhanh trong nước', 'update', 'web_article', 1435723299, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values9%%%Dịch vụ chuyển phát nhanh trong nước%%%dich-vu-chuyen-phat-nhanh-trong-nuoc%%%chuyen-phat-nhanh-trong-nuoc/dich-vu-chuyen-phat-nhanh-trong-nuoc.html%%%dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg%%%Dịch vụ chuyển phát nhanh trong nước của TTP Express nhận gửi, vận chuyển và phát các loại tài liệu hàng hóa theo chỉ tiêu thời gian được công bố trước.%%%dịch vụ chuyển phát nhanh trong nước,dich vu chuyen phat nhanh trong nuoc%%%<h2>TTP Express nhận gửi, vận chuyển và phát các loại tài liệu hàng hóa theo chỉ tiêu thời gian được công bố trước.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ chuyển phát nhanh trong nước" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg" style="width: 450px; height: 336px;" /></p>\r\n\r\n<p><strong>Phạm vi cung cấp dịch vụ:</strong> hiện nay dịch vụ chuyển phát nhanh trong nước của chúng tôi đã mở rông mạng lưới phục vụ đến 63 tỉnh thành trong cả nước được phân chia theo khu vực như sau:</p>\r\n\r\n<p><strong><em>Khu vực 1:</em></strong> Gồm 28 tỉnh, thành phố khu vực phía Bắc là: Bắc Cạn, Bắc Giang, Bắc Ninh, Cao Bằng, Điện Biên, Hà Nội, Hà Giang, Hà Nam, Hà Tĩnh, Hải Dương, Hải Phòng, Hưng Yên, Hòa Bình, Lào Cai, Lai Châu, Lạng Sơn, Nam Định, Nghệ An, Ninh Bình, Phú Thọ, Quảng Ninh, Sơn La, Thái Bình, Thái Nguyên, Thanh Hóa, Tuyên Quang, Vĩnh Phúc, Yên Bái.</p>\r\n\r\n<p><em><strong>Khu vực 2:</strong></em> Gồm 22 tỉnh, thành phố khu vực phía Nam và 02 tỉnh khu vực Miền Trung là: An Giang, Bình Dương, Bình Phước, Bà Rịa - Vũng Tàu, Bạc Liêu, Bến Tre, Bình Thuận, Cà Mau, Cần Thơ, Đồng Nai, Đồng Tháp, Tp.Hồ Chí Minh, Hậu Giang, Kiên Giang, Long An, Lâm Đồng, Ninh Thuận, Sóc Trăng, Tây Ninh, Tiền Giang, Trà Vinh, Vĩnh Long và 02 tỉnh Miền Trung là Đắk Lak, Đắk Nông.</p>\r\n\r\n<p><em><strong>Khu vực 3:</strong></em> Gồm 11 tỉnh khu vực Miền Trung là: Bình Định, Đà Nẵng, Gia Lai, Thừa Thiên - Huế, Kon Tum, Khánh Hòa, Phú Yên, Quảng Ninh, Quảng Trị, Quang Nam, Quảng Ngãi.</p>\r\n\r\n<p><span style="color:#0000FF;"><strong>Dịch vụ chuyển phát nhanh trong nước bao gồm:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Dịch vụ hỏa tốc</li>\r\n	<li>Dịch vụ chuyển phát nhanh</li>\r\n	<li>Dịch vhu chuyển phát tiết kiệm</li>\r\n	<li>Dịch vụ đường bộ</li>\r\n	<li>Dịch vụ nguyên chuyến</li>\r\n	<li>Dịch vụ chành</li>\r\n</ol>\r\n\r\n<p><strong>Quý khách hàng có thể sử dụng dịch vụ chuyển phát nhanh trong nước với các dịch vụ công thêm như:</strong></p>\r\n\r\n<ol>\r\n	<li>Dịch vụ phát tận tay</li>\r\n	<li>Dịch vụ khai giá</li>\r\n	<li>Dịch vụ báo phát</li>\r\n	<li>Rút bưu gửi</li>\r\n	<li>Thay đổi họ tên người nhận</li>\r\n	<li>Dịch vụ phát hàng thu tiền COD trong nước</li>\r\n	<li>Nhận tại địa chỉ</li>\r\n	<li>Dịch vụ thu cước ở nơi người nhận</li>\r\n	<li>Dịch vụ người nhận trả cước</li>\r\n	<li>Dịch vụ kiểm đếm</li>\r\n</ol>\r\n\r\n<p><strong>Khối lượng:</strong></p>\r\n\r\n<ul>\r\n	<li>Bưu gửi thông thường đến 31.5kg.</li>\r\n	<li>Đối với bưu gửi là hàng nguyên khối không thể tách rời, vận chuyển bằng bộ được nhận gửi tối đa đến 50kg, nhưng phải đảm bảo giới hạn về kích thước theo quy định.</li>\r\n</ul>\r\n\r\n<p><strong>Kích thước:</strong></p>\r\n\r\n<ul>\r\n	<li>Kích thước thông thường: Đối với Bưu gửi EBS là bất kỳ chiều nào của bưu gửi không vượt quá 1.5m và tổng chiều dài với chu vi lớn nhất (không đo theo chiều dài đã đo) không vượt quá 3m.</li>\r\n	<li>Hàng cồng kềnh: Bưu gửi có kích thước lớn hơn so với kích thước thông thường được gọi là Bưu gửi cồng kềnh và có quy định riêng phụ thuộc và từng nơi nhận, nơi phát và điều kiện phương tiện vận chuyển.</li>\r\n	<li>Hàng nhẹ: Là hàng gửi có khối lượng dưới 167 kg/m3&nbsp;(tương đương với trên 6000 cm3/kg), khối lượng tính cước không căn cứ vào khối lượng thực mà căn cứ vào khối lượng quy đổi từ thể tích kiện hàng</li>\r\n</ul>\r\n\r\n<p><strong>Cam kết dịch vụ:</strong></p>\r\n\r\n<p>Với đội ngũ nhân viên chuyên nghiệp, phục vụ tận tình chu đáo, chúng tôi đảm bảo việc chuyển hàng đến tận tay khách hàng trong thời gian sơm nhất, theo dõi quá trinh chuyển hàng và thông báo cho khách hàng khi hàng đến nới.</p>\r\n\r\n<ol>\r\n	<li>Giao nhạn hàng đúng thời gian thỏa thuận</li>\r\n	<li>Làm thủ tục thông quan nhanh chóng</li>\r\n	<li>Chuyển phát nhanh hỏa tốc đúng thời gian</li>\r\n	<li>Lộ trinh giao nhận minh bạch</li>\r\n</ol>\r\n%%%0%%%1433931000%%%vi%%%1%%%,36,8,', 'vi', 0, NULL, NULL),
(34, 'Dịch vụ chuyển phát nhanh Quốc tế', 'update', 'web_article', 1435723350, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values13%%%Dịch vụ chuyển phát nhanh Quốc tế%%%dich-vu-chuyen-phat-nhanh-quoc-te%%%tin-tuc-su-kien/dich-vu-chuyen-phat-nhanh-quoc-te.html%%%dich-vu-chuyen-phat-nhanh-quoc-te.jpg%%%Dịch vụ chuyển phát nhanh Quốc tế nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ%%%dịch vụ chuyển phát nhanh quốc tế,dich vu chuyen phat nhanh quoc te%%%<h2>TTP Express nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới. UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ,&nbsp;chuyên cung cấp các loại&nbsp;hình dịch vụ và đa dạng nhằm đáp ứng nhu cầu tốt nhất cho toàn thể quý khách hàng.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ chuyển phát nhanh Quốc tế" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-quoc-te.jpg" style="width: 450px; height: 344px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>Dịch vụ chuyển phát nhanh quốc tế bao gồm:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Chuyển phát nhanh đi các nước trên thế giới</li>\r\n	<li>Chuyển phát nhanh chuyên tuyến :</li>\r\n</ol>\r\n\r\n<ul style="margin-left: 40px;">\r\n	<li>Korea</li>\r\n	<li>Hong Kong</li>\r\n	<li>Japan</li>\r\n	<li>Singapore</li>\r\n	<li>Malaysia&nbsp;</li>\r\n</ul>\r\n\r\n<ol start="3">\r\n	<li>Chuyển hàng quà biếu từ Mỹ về Việt Nam</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Gửi hàng từ Mỹ về Việt Nam</strong></span></p>\r\n\r\n<p><strong>Khách hàng tại USA muốn gửi hàng về Việt Nam</strong>, sẽ đến văn phòng nhận hàng của chúng tôi tại USA, tại đây khách hàng sẽ nhận được những hướng dẫn, điều khoản, điều kiện vận chuyển và giao hàng về Việt Nam cụ thể và tận tình.</p>\r\n\r\n<p><em><strong>Chúng tôi cung cấp dịch vụ chuyển hàng hóa từ Mỹ về Việt Nam</strong></em> trên toàn quốc, người thân của bạn dù ở bất kỳ địa phương, bất kỳ tỉnh thành nào đều có thể nhận hàng của bạn từ Mỹ.</p>\r\n\r\n<p>Với khách hàng gửi hàng từ Texas hoặc các khu vực khác của USA&nbsp; về Việt Nam&nbsp; hãy liên hệ với Văn phòng nhận hàng của chúng tôi tại Texas.</p>\r\n\r\n<p>Khách hàng chuyển hàng có thể chọn hình thức thanh toán tại USA hoặc tại Việt Nam.</p>\r\n\r\n<p>Với tiêu chí hoạt động: Nhanh chóng – chính xác và cạnh tranh. Nên quý khách có thể hoàn toàn yên tâm.</p>\r\n\r\n<p style="text-align: center;"><img alt="Gửi hàng từ Mỹ về Việt Nam - CPN Mỹ về Việt Nam" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-quoc-te-2.jpg" style="width: 600px; height: 220px;" /></p>\r\n\r\n<p><span style="color:#0000FF;"><strong>Các mặt hàng nhận chuyển:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Các loại chứng từ, hợp đồng, hồ sơ du học...</li>\r\n	<li>Quà tặng, quần áo, giày dép, mũ, nón….</li>\r\n	<li>Hàng mẫu, hàng hóa, hàng nặng...</li>\r\n	<li>Các loại thuốc: thuốc tây, thuốc Bắc, thuốc nam, thuốc đông y...</li>\r\n	<li>Thực phẩm: Tôm khô, cá khô, mực khô, cà phê, trà, bánh kẹo...</li>\r\n	<li>Dụng cụ làm nails: Kềm bấm, dầu gội đầu, mỹ phẩm...</li>\r\n	<li>Mặt hàng điện tử: Điện thoại, máy tính, máy đọc sách, các loại máy móc khác...</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Bảng giá chuyển phát nhanh quốc tế (attached file kèm theo áp dụng từ 01/06/2015)</strong></span></p>\r\n\r\n<p><em><strong>Phụ phí xăng dầu:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức phụ phí xăng dầu là 15% tính trên bảng cước quy định nối trên</li>\r\n	<li>Mức thu phụ phí xăng dầu sẽ thay đổi theo từng thời điểm công bố</li>\r\n</ul>\r\n\r\n<p><em><strong>Phụ phí vùng xa:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức thu phụ phí vung xa là 35% bưu gửi Quốc tế.</li>\r\n	<li>Phạm vi áp dụng: mức thu phụ phí vùng xâu vùng xa này được áp dụng đối với các bưu gửi <em><strong>chuyển phát nhanh quốc tế </strong></em>đến một số nước theo danh sách các nước áp dụng thu phụ phí vùng xa .</li>\r\n</ul>\r\n%%%0%%%1433929500%%%vi%%%1%%%,36,8,', 'vi', 0, NULL, NULL),
(35, 'Các dịch vụ gia tăng', 'update', 'web_article', 1435723356, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values12%%%Các dịch vụ gia tăng%%%cac-dich-vu-gia-tang%%%tin-tuc-su-kien/cac-dich-vu-gia-tang.html%%%cac-dich-vu-gia-tang.jpg%%%Các dịch vụ gia tăng của TTP Express CPN trong nước như: Dịch vụ bảo hiểm hàng hóa bưu gửi, dịch vụ phát hàng thu tiền (COD),...%%%các dịch vụ gia tăng,cac dich vu gia tang,CPN%%%<p><span style="color:#FF0000;"><strong>1. Dịch vụ bảo hiểm hàng hóa bưu gửi</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ&nbsp;bảo hiểm hàng hóa, bưu gửi&nbsp;là dịch vụ gia tăng</strong></em> đi kèm với dịch vụ vận chuyển trong đó người gửi được mua bảo hiểm cho bưu gửi của mình.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>Khi sử dụng dịch vụ bảo hiểm, ngoài cước vận chuyển người gửi phải chịu thêm một khoản phí bảo hiểm tương đương tỷ lệ mua bảo hiểm.</li>\r\n	<li>Trong quá trình vận chuyển, nếu xảy ra mất mát hoặc hư hại hàng hóa bưu gửi, người gửi sẽ được TTP Express bồi thường theo giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Đối với các bưu gửi là chứng từ; giá trị khai giá tối đa là 15.000.000 vnđ</li>\r\n	<li>Đối với các bưu gửi là hàng hóa, giá trị khai giá tối đa là 150.000.000 vnđ</li>\r\n	<li>Giá trị khai giá của hàng hóa bưu gửi không được lớn hơn quá 10% giá trị thực hoặc giá trị trên hóa đơn chứng từ đi kèm hàng hóa bưu gửi.</li>\r\n	<li>Dịch vụ bảo hiểm hàng hóa không được áp dụng cho các loại hàng hóa là thực phẩm, hàng đông lạnh và các loại hàng hóa đặc biệt khác.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Mức phí bảo hiểm:&nbsp;3%&nbsp;giá trị khai giá hàng hóa bưu gửi.</li>\r\n	<li>Mức bồi thường:&nbsp;&nbsp;100%&nbsp;giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Thời gian bảo hiểm: bắt đầu từ thời điểm người gửi mua bảo hiểm đến khi kết thúc quá trình giao hàng hóa bưu gửi cho người nhận.</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Các dịch vụ gia tăng của TTP Express CPN trong nước " src="/public/images/articles/cac-dich-vu-gia-tang.jpg" style="width: 461px; height: 284px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2.&nbsp;Dịch vụ phát hàng -&nbsp;thu tiền (COD)</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ phát hàng -&nbsp;thu tiền (Cash on Delivery – COD) </strong></em>là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát trong đó nhà vận chuyển được ủy thác thu hộ một khoản tiền nhất định do người gửi yêu cầu khi thực hiện việc phát bưu phẩm cho người nhận và hoàn trả lại số tiền đó cho người gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li><em><strong>TTP Express&nbsp;chỉ cung cấp dịch vụ COD</strong></em> tại trung tâm các tỉnh, thành phố nằm trong tuyến chính&nbsp;TTP Express.</li>\r\n	<li>Khi sử dụng dịch vụ COD khách hàng phải thanh toán các khoản cước sau:\r\n	<ul>\r\n		<li>Cước dịch vụ chuyển phát bưu gửi COD.</li>\r\n		<li>Cước phí dịch vụ COD.</li>\r\n		<li>Các khoản cước phí dịch vụ đặc biệt khác mà khách hàng lựa chọn như dịch vụ bảo hiểm, dịch vụ đóng gói, dịch vụ phát hỏa tốc…</li>\r\n	</ul>\r\n	</li>\r\n	<li>Khi sử dụng dịch vụ COD, khách hàng cần thông báo cho người nhận về việc ủy thác cho nhà vận chuyển thu hộ tiền hàng. TTP Express chỉ phát bưu gửi khi người nhận đã thanh toán tiền thu hộ. Nếu không thanh toán bưu gửi COD sẽ được TTP Express trả lại cho người gửi. Trong trường hợp này người gửi vẫn phải thanh toán đầy đủ các khoản cước phí như đã thỏa thuận ban đầu cộng thêm cước phí chuyển hoàn bưu gửi COD đó.</li>\r\n	<li>Mức tiền thu hộ tối đa cho một bưu gửi COD là 50.000.000đ ( năm mươi triệu đồng.)</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Giá cước dịch vụ thu hộ COD được áp dụng theo bảng giá của TTP Express hoặc theo sự thỏa thuận giữa hai bên.</li>\r\n	<li>Người gửi cần cung cấp đầy đủ thông tin của người nhận ( tên, địa chỉ, số điện thoại.. ) trên vận đơn của bưu gửi COD; các loại hóa đơn chứng từ đi kèm để làm cơ sở thu hộ tiền hàng.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>3.&nbsp;Dịch vụ đóng gói.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ đóng gói là dịch vụ gia tăng đi kèm với dịch vụ chuyển phát</strong></em> trong đó nhà vận chuyển thực hiện việc đóng gói hàng hóa bưu gửi của khách hàng theo quy chuẩn của nhà vận chuyển nhằm hạn chế các hư hỏng cơ học cho hàng hóa bưu gửi của khách hàng trong quá trình vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ đóng gói cho các hàng hóa bưu gửi được gửi qua TTP Express.</li>\r\n	<li>Dịch vụ đóng gói được áp dụng theo yêu cầu của khách hàng hoặc bắt buộc đối với các loại hàng hóa đặc biệt do yêu cầu của hãng vận chuyển.TTP Express có quyền từ chối nhận vận chuyển hàng hóa bưu gửi ( thuộc loại bắt buộc phải đóng gói ) nếu khách hàng không chấp nhận sử dụng dịch vụ đóng gói.</li>\r\n	<li>Đối với các hàng hóa bưu gửi sử dụng dịch vụ đóng gói, trọng lượng tính cước sẽ là trọng lượng sau khi đã đóng gói.</li>\r\n	<li>Khi sử dụng dịch vụ đóng gói, ngoài cước phí chính tính theo trọng lượng bưu phẩm, khách hàng phải chịu phí đóng gói tương đương phí nguyên vật liệu sử dụng để đóng gói. Chi phí này được quy định cụ thể trên báo giá của TTP Express và được thông báo cho khách hàng trước khi đóng gói.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Dịch vụ đóng gói bao gồm nhiều hình thức như đóng carton, xốp, gỗ, ván ép, nylon chống nước...Khách hàng có thể yêu cầu đóng gói cùng lúc nhiều hình thức khác nhau.</li>\r\n	<li>Dịch vụ đóng gói giúp hạn chế các hư hỏng cơ học trong quá trình vận chuyển, do đó không phải là dịch vụ bảo hiểm hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>&nbsp;4.&nbsp;Dịch vụ báo phát</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ báo phát là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát</strong></em> trong đó người gửi yêu cầu nhà vận chuyển chuyển trả lại cho người gửi phiếu giao hàng ( vận đơn ) có chữ ký và họ tên của người nhận bưu gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ báo phát cho các vận đơn có địa chỉ người nhận thuộc các địa danh thu phát của TTP Express.</li>\r\n	<li>Thời gian trả báo phát lại cho người gửi phụ thuộc vào từng khu vực phát.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Phí dịch vụ báo phát là 5.000đ / vận đơn.</li>\r\n	<li>Dịch vụ báo phát áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>5.&nbsp;Dịch vụ kiểm đếm.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ kiểm đếm là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát </strong></em>trong đó nhà vận chuyển sẽ tiến hành kiểm đếm số lượng chi tiết của hàng hóa bưu gửi cùng với người gửi khi nhận và người nhận khi phát.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ kiểm đếm về số lượng, chủng loại, tình trạng bên ngoài của hàng hóa bưu gửi. TTP Express không kiểm đếm về chất lượng hoặc quy cách hoạt động của hàng hóa bưu gửi. Trong trường hợp hàng hóa bưu gửi có những dấu hiệu bất thường sẽ được kê khai chi tiết trên biên bản kiểm đếm.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho các khách hàng trên phạm vi thu phát của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm chỉ áp dụng cho các vận đơn có số lượng lớn hơn 100 đơn vị kiểm đếm.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Khi sử dụng dịch vụ kiểm đếm, ngoài cước phí vận chuyển tính theo khối lượng hàng hóa bưu gửi và các loại cước phí đặc biệt theo từng loại hình dịch vụ, người gửi phải chịu một khoản phí kiểm đếm tính theo từng đơn vị kiểm đếm.</li>\r\n	<li>Khi tiến hành kiểm đếm, TTP Express và khách hàng sẽ cùng nhau kiểm đếm và ký vào biên bản kê khai chi tiết số lượng kiểm đếm. Khi phát bưu gửi, TTP Êxpress sẽ cùng người nhận kiểm đếm và phát theo chi tiết số lượng và nội dung đã kê khai trên biên bản kiểm đếm.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>6. Dịch vụ thanh toán đầu nhận</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ thanh toán đầu nhận (TTĐN)</strong></em> là một hình thức thanh toán khác của dịch vụ vận chuyển trong đó người nhận hàng hóa bưu gửi sẽ là người thanh toán 1 phần hoặc toàn bộ cước phí vận chuyển cho nhà vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express cung cấp dịch vụ TTĐN tại các khu vực thu phát của TTP Express.</li>\r\n	<li>Người nhận hàng hóa bưu gửi sử dụng dịch vụ TTĐN sẽ phải thanh toán toàn bộ cước phí tương ứng với các dịch vụ mà người gửi đã lựa chọn.</li>\r\n	<li>TTP Express sẽ chỉ phát hàng hóa bưu gửi sử dụng dịch vụ TTĐN cho người nhận khi chấp nhận thanh toán cước phí. Nếu người nhận không thanh toán cước phí, DHL sẽ hoàn bưu gửi lại cho người gửi. Trong trường hợp này, người gửi sẽ phải thanh toán toàn bộ cước phí của bưu gửi bao gồm cước phí chuyển phát gửi đi và cước phí chuyển hoàn về.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:&nbsp;</strong><span style="line-height: 1.6em;">Cước phí các hàng hóa bưu gửi sử dụng dịch vụ TTĐN được tính theo bảng giá niêm yết tại thời điểm hiện tại của TTP Express hoặc theo sự thỏa thuận đối với từng khách hàng.</span></p>\r\n%%%0%%%1433928720%%%vi%%%1%%%,36,8,', 'vi', 0, NULL, NULL),
(36, 'Tran Nhan', 'delete', 'web_contact', 1435726417, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values9%%%Tran Nhan%%%hieunhan112@gmail.com%%%0988388003%%%123 cmt 8%%%Test noi dung lien he%%%1435654983%%%::1%%%vi%%%0', 'vi', 0, NULL, NULL),
(37, 'Tran Nhan', 'delete', 'web_contact', 1435726418, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values10%%%Tran Nhan%%%hieunhan@yahoo.com%%%0988388003%%%123 cmt 8%%%Công Ty TNHH dịch vụ chuyển phát nhanh TTP%%%1435655095%%%::1%%%vi%%%0', 'vi', 0, NULL, NULL),
(38, 'tran nhan', 'delete', 'web_contact', 1435726419, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values11%%%tran nhan%%%hieu@yahoo.com%%%0988388003%%%hieu@yahoo.com%%%hieu@yahoo.com hieu@yahoo.com hieu@yahoo.com%%%1435655136%%%::1%%%vi%%%0', 'vi', 0, NULL, NULL),
(39, 'hieu@yahoo.com', 'delete', 'web_contact', 1435726419, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values12%%%hieu@yahoo.com%%%hieu@yahoo.com%%%0988388003%%%hieu@yahoo.com%%%hieu@yahoo.comhieu@yahoo.comhieu@yahoo.comhieu@yahoo.com%%%1435655166%%%::1%%%vi%%%0', 'vi', 0, NULL, NULL),
(40, 'hieunhan@gamil.com', 'delete', 'web_contact', 1435726420, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values13%%%hieunhan@gamil.com%%%hieunhan@gamil.com%%%0988388003%%%hieunhan@gamil.com%%%hieunhan@gamil.comhieunhan@gamil.comhieunhan@gamil.comhieunhan@gamil.com%%%1435655326%%%::1%%%vi%%%0', 'vi', 0, NULL, NULL),
(41, 'container@gmail.ocm', 'delete', 'web_contact', 1435726420, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values14%%%container@gmail.ocm%%%container@gmail.ocm%%%0988388003%%%container@gmail.ocm%%%container@gmail.ocmcontainer@gmail.ocmcontainer@gmail.ocmcontainer@gmail.ocm%%%1435655412%%%::1%%%vi%%%0', 'vi', 0, NULL, NULL),
(42, 'Tran Nhan', 'delete', 'web_contact', 1435726421, 'admin', '`id`,`name`,`email`,`phone`,`address`,`message`,`datetime`,`ip_address`,`lang`,`status`fields%%%values15%%%Tran Nhan%%%hieunhan@yahoo.com%%%0988388003%%%%%%12121212 12 121 21 21 21 21%%%1435655953%%%::1%%%vi%%%0', 'vi', 0, NULL, NULL),
(43, 'Tin mới nhất', 'update', 'web_menu', 1435726469, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values36%%%Tin mới nhất%%%tin-moi-nhat%%%tin-moi-nhat/%%%%%%Tin mới nhất%%%Tin mới nhất%%%tin mới nhất,tin moi nhat%%%0%%%0%%%0%%%vi%%%1%%%2%%%,4,', 'vi', 0, NULL, NULL),
(44, 'Nhân viên sale', 'update', 'web_menu_admin', 1435726810, 'admin', '`id`,`name`,`url`,`img`,`order`,`other`,`ajax`,`status`fields%%%values18%%%Nhân viên sale%%%web_sale%%%icon-item.jpg%%%9%%%0%%%0%%%1', 'vi', 0, NULL, NULL),
(45, 'Email', 'update', 'web_config', 1436432778, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values10%%%Email%%%email%%%info@suakhoaquanganh.com%%%5%%%vi%%%1', 'vi', 0, NULL, NULL),
(46, 'Trang chủ', 'update', 'web_menu', 1436433905, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/suakhoaquanganh%%%%%%Quang Anh - Sửa khóa tại nhà, làm chìa khóa, sửa khóa xe máy xe hơi, sửa khóa két sắt%%%Sửa khóa Quang Anh chuyên sửa khóa tại nhà, làm chìa khóa, sửa khóa xe máy xe hơi, sửa khóa két sắt%%%sửa khóa tại nhà,sửa khóa xe hơi,xe máy,sửa khóa két sắt,làm chìa khóa,sua khoa%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(47, 'Yahoo', 'update', 'web_config', 1436435696, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values13%%%Yahoo%%%yahoo%%%hieu_nhan1%%%8%%%vi%%%1', 'vi', 0, NULL, NULL),
(48, 'Tên trang website', 'update', 'web_config', 1436435710, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values27%%%Tên trang website%%%sitename%%%Dịch vụ sửa khóa tại nhà Quang Anh%%%1%%%vi%%%1', 'vi', 0, NULL, NULL),
(49, 'Slider trang chủ', 'update', 'web_slider_banner', 1436435914, 'admin', '`id`,`name`,`img`,`url`,`info`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values1%%%Slider trang chủ%%%slider.jpg%%%javascript:;%%%Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. %%%1%%%vi%%%1%%%1%%%,1,', 'vi', 0, NULL, NULL),
(50, 'Địa chỉ', 'update', 'web_config', 1436436310, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values15%%%Địa chỉ%%%address%%%114/2 Yên Thế, phường 2, Q.Tân Bình, Tp.HCM, Việt Nam%%%2%%%vi%%%1', 'vi', 0, NULL, NULL),
(51, 'Điện thoại', 'update', 'web_config', 1436436326, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values11%%%Điện thoại%%%tel%%%+84 8 3666 8899%%%3%%%vi%%%1', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(52, 'Copyright', 'update', 'web_config', 1436436364, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values9%%%Copyright%%%copyright%%%Copyright © 2015 by SUAKHOAQUANGANH.COM%%%6%%%vi%%%1', 'vi', 0, NULL, NULL),
(53, 'Trang chủ', 'update', 'web_menu', 1436519924, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values1%%%Trang chủ%%%trang-chu%%%http://localhost/all/vietucthaiduong%%%%%%Quang Anh - Sửa khóa tại nhà, làm chìa khóa, sửa khóa xe máy xe hơi, sửa khóa két sắt%%%Sửa khóa Quang Anh chuyên sửa khóa tại nhà, làm chìa khóa, sửa khóa xe máy xe hơi, sửa khóa két sắt%%%sửa khóa tại nhà,sửa khóa xe hơi,xe máy,sửa khóa két sắt,làm chìa khóa,sua khoa%%%0%%%1%%%0%%%vi%%%1%%%1%%%,2,3,', 'vi', 0, NULL, NULL),
(54, 'Dịch vụ sửa khóa-Tại nhà', 'delete', 'web_menu', 1436519936, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values17%%%Dịch vụ sửa khóa-Tại nhà%%%%%%%%%%%%Dịch vụ sửa khóa tại nhà%%%Chuyên sửa các loại khóa tại nhà. Chu đáo nhiệt tình, giá cả phải chăng. Xử lý các hư hỏng về khóa cửa, khóa phòng, khóa cổng, khóa bàn, khóa két sắt.%%%dịch vụ sửa khóa tại nhà,dich vu sua khoa tai nha%%%1%%%1%%%0%%%vi%%%1%%%8%%%,9,', 'vi', 0, NULL, NULL),
(55, 'Dịch vụ sửa khóa-Két sắt', 'delete', 'web_menu', 1436519937, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values18%%%Dịch vụ sửa khóa-Két sắt%%%%%%%%%%%%Dịch vụ sửa khóa két sắt%%%Chuyên sửa các loại khóa tại nhà. Chu đáo nhiệt tình, giá cả phải chăng. Xử lý các hư hỏng về khóa cửa, khóa phòng, khóa cổng, khóa bàn, khóa két sắt.%%%dịch vụ sửa khóa két sắt,dich vu sua khoa ket sat%%%1%%%2%%%0%%%vi%%%1%%%14%%%,9,', 'vi', 0, NULL, NULL),
(56, 'Dịch vụ sửa khóa-Khóa xe', 'delete', 'web_menu', 1436519938, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values21%%%Dịch vụ sửa khóa-Khóa xe%%%%%%%%%%%%Dịch vụ sửa khóa xe%%%Chuyên sửa các loại khóa tại nhà. Chu đáo nhiệt tình, giá cả phải chăng. Xử lý các hư hỏng về khóa cửa, khóa phòng, khóa cổng, khóa bàn, khóa két sắt.%%%dịch vụ sửa khóa khóa xe,dich vu sua khoa khoa xe%%%1%%%3%%%0%%%vi%%%1%%%14%%%,9,', 'vi', 0, NULL, NULL),
(57, 'Làm chìa khóa-Bằng máy', 'delete', 'web_menu', 1436519938, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values22%%%Làm chìa khóa-Bằng máy%%%%%%javascript:;%%%%%%Làm chìa khóa bằng máy%%%Chuyên sửa các loại khóa tại nhà. Chu đáo nhiệt tình, giá cả phải chăng. Xử lý các hư hỏng về khóa cửa, khóa phòng, khóa cổng, khóa bàn, khóa két sắt.%%%làm chìa khóa bằng máy,lam chia khoa bang may%%%1%%%4%%%0%%%vi%%%1%%%14%%%,9,', 'vi', 0, NULL, NULL),
(58, 'Dịch vụ sửa khóa', 'update', 'web_menu', 1436519987, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Dịch vụ sửa khóa%%%dich-vu-sua-khoa%%%dich-vu-sua-khoa/%%%%%%Dịch vụ sửa khóa tại nhà Quang Anh%%%Dịch vụ sửa khóa tại nhà Quang Anh trong TpHCM%%%dịch vụ sửa khóa,dich vu sua khoa,sửa khóa tại nhà,sua khoa tai nha%%%0%%%3%%%1%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(59, 'Thông tin dịch vụ', 'update', 'web_menu', 1436520021, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values7%%%Thông tin dịch vụ%%%thong-tin-dich-vu%%%thong-tin-dich-vu/%%%%%%Thông tin dịch vụ%%%Thông tin dịch vụ%%%thông tin dịch vụ,thong tin dich vu%%%0%%%4%%%1%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(60, 'Sửa khóa tại nhà', 'update', 'web_menu', 1436520112, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values40%%%Sửa khóa tại nhà%%%sua-khoa-tai-nha%%%sua-khoa-tai-nha/%%%%%%Dịch vụ sửa khóa tại nhà%%%Dịch vụ sửa khóa tại nhà%%%sửa khóa tại nhà,sua khoa tai nha%%%6%%%1%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(61, 'Sửa khóa két sắt', 'update', 'web_menu', 1436520131, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values41%%%Sửa khóa két sắt%%%sua-khoa-ket-sat%%%sua-khoa-ket-sat/%%%%%%Dịch vụ sửa khóa két sắt%%%Dịch vụ sửa khóa két sắt%%%sửa khóa két sắt,sua khoa ket sat%%%6%%%2%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(62, 'Sửa khóa xe máy, xe hơi', 'update', 'web_menu', 1436520159, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values42%%%Sửa khóa xe máy, xe hơi%%%sua-khoa-xe-may-xe-hoi%%%sua-khoa-xe-may-xe-hoi/%%%%%%Dịch vụ sửa khóa xe máy, xe hơi%%%Dịch vụ sửa khóa xe máy, xe hơi%%%sửa khóa xe máy xe hơi,sua khoa xe may xe hoi%%%6%%%3%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(63, 'Làm chìa khóa bằng máy', 'update', 'web_menu', 1436520204, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values39%%%Làm chìa khóa bằng máy%%%lam-chia-khoa-bang-may%%%lam-chia-khoa-bang-may/%%%%%%Làm chìa khóa bằng máy%%%Làm chìa khóa bằng máy%%%làm chìa khóa bằng máy,lam chia khoa bang may%%%6%%%4%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(64, 'Các loại công sản khác', 'create', 'web_menu', 1436520232, 'admin', '', 'vi', 0, NULL, NULL),
(65, 'Rua - Củ - Quả', 'update', 'web_menu', 1436520337, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values40%%%Rua - Củ - Quả%%%rua-cu-qua%%%rua-cu-qua/%%%%%%Rua - Củ - Quả%%%Rua - Củ - Quả%%%rua củ quả,rua cu qua%%%6%%%1%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(66, 'Trái Cây', 'update', 'web_menu', 1436520339, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values41%%%Trái Cây%%%trai-cay%%%trai-cay/%%%%%%Trái Cây%%%Trái Cây%%%trái cây,trai cay%%%6%%%2%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(67, 'Gạo - Lương thực', 'update', 'web_menu', 1436520342, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values39%%%Gạo - Lương thực%%%gao-luong-thuc%%%gao-luong-thuc/%%%%%%Gạo - Lương thực%%%Gạo - Lương thực%%%gạo lương thực,gao luong thuc%%%6%%%4%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(68, 'Gạo - Lương thực', 'update', 'web_menu', 1436520345, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values39%%%Gạo - Lương thực%%%gao-luong-thuc%%%gao-luong-thuc/%%%%%%Gạo - Lương thực%%%Gạo - Lương thực%%%gạo lương thực,gao luong thuc%%%6%%%4%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(69, 'Dịch vụ chuyển phát nhanh trong nước', 'update', 'web_article', 1436520463, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values9%%%Dịch vụ chuyển phát nhanh trong nước%%%dich-vu-chuyen-phat-nhanh-trong-nuoc%%%tin-tuc-su-kien/dich-vu-chuyen-phat-nhanh-trong-nuoc.html%%%dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg%%%Dịch vụ chuyển phát nhanh trong nước của TTP Express nhận gửi, vận chuyển và phát các loại tài liệu hàng hóa theo chỉ tiêu thời gian được công bố trước.%%%dịch vụ chuyển phát nhanh trong nước,dich vu chuyen phat nhanh trong nuoc%%%<h2>TTP Express nhận gửi, vận chuyển và phát các loại tài liệu hàng hóa theo chỉ tiêu thời gian được công bố trước.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ chuyển phát nhanh trong nước" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg" style="width: 450px; height: 336px;" /></p>\r\n\r\n<p><strong>Phạm vi cung cấp dịch vụ:</strong> hiện nay dịch vụ chuyển phát nhanh trong nước của chúng tôi đã mở rông mạng lưới phục vụ đến 63 tỉnh thành trong cả nước được phân chia theo khu vực như sau:</p>\r\n\r\n<p><strong><em>Khu vực 1:</em></strong> Gồm 28 tỉnh, thành phố khu vực phía Bắc là: Bắc Cạn, Bắc Giang, Bắc Ninh, Cao Bằng, Điện Biên, Hà Nội, Hà Giang, Hà Nam, Hà Tĩnh, Hải Dương, Hải Phòng, Hưng Yên, Hòa Bình, Lào Cai, Lai Châu, Lạng Sơn, Nam Định, Nghệ An, Ninh Bình, Phú Thọ, Quảng Ninh, Sơn La, Thái Bình, Thái Nguyên, Thanh Hóa, Tuyên Quang, Vĩnh Phúc, Yên Bái.</p>\r\n\r\n<p><em><strong>Khu vực 2:</strong></em> Gồm 22 tỉnh, thành phố khu vực phía Nam và 02 tỉnh khu vực Miền Trung là: An Giang, Bình Dương, Bình Phước, Bà Rịa - Vũng Tàu, Bạc Liêu, Bến Tre, Bình Thuận, Cà Mau, Cần Thơ, Đồng Nai, Đồng Tháp, Tp.Hồ Chí Minh, Hậu Giang, Kiên Giang, Long An, Lâm Đồng, Ninh Thuận, Sóc Trăng, Tây Ninh, Tiền Giang, Trà Vinh, Vĩnh Long và 02 tỉnh Miền Trung là Đắk Lak, Đắk Nông.</p>\r\n\r\n<p><em><strong>Khu vực 3:</strong></em> Gồm 11 tỉnh khu vực Miền Trung là: Bình Định, Đà Nẵng, Gia Lai, Thừa Thiên - Huế, Kon Tum, Khánh Hòa, Phú Yên, Quảng Ninh, Quảng Trị, Quang Nam, Quảng Ngãi.</p>\r\n\r\n<p><span style="color:#0000FF;"><strong>Dịch vụ chuyển phát nhanh trong nước bao gồm:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Dịch vụ hỏa tốc</li>\r\n	<li>Dịch vụ chuyển phát nhanh</li>\r\n	<li>Dịch vhu chuyển phát tiết kiệm</li>\r\n	<li>Dịch vụ đường bộ</li>\r\n	<li>Dịch vụ nguyên chuyến</li>\r\n	<li>Dịch vụ chành</li>\r\n</ol>\r\n\r\n<p><strong>Quý khách hàng có thể sử dụng dịch vụ chuyển phát nhanh trong nước với các dịch vụ công thêm như:</strong></p>\r\n\r\n<ol>\r\n	<li>Dịch vụ phát tận tay</li>\r\n	<li>Dịch vụ khai giá</li>\r\n	<li>Dịch vụ báo phát</li>\r\n	<li>Rút bưu gửi</li>\r\n	<li>Thay đổi họ tên người nhận</li>\r\n	<li>Dịch vụ phát hàng thu tiền COD trong nước</li>\r\n	<li>Nhận tại địa chỉ</li>\r\n	<li>Dịch vụ thu cước ở nơi người nhận</li>\r\n	<li>Dịch vụ người nhận trả cước</li>\r\n	<li>Dịch vụ kiểm đếm</li>\r\n</ol>\r\n\r\n<p><strong>Khối lượng:</strong></p>\r\n\r\n<ul>\r\n	<li>Bưu gửi thông thường đến 31.5kg.</li>\r\n	<li>Đối với bưu gửi là hàng nguyên khối không thể tách rời, vận chuyển bằng bộ được nhận gửi tối đa đến 50kg, nhưng phải đảm bảo giới hạn về kích thước theo quy định.</li>\r\n</ul>\r\n\r\n<p><strong>Kích thước:</strong></p>\r\n\r\n<ul>\r\n	<li>Kích thước thông thường: Đối với Bưu gửi EBS là bất kỳ chiều nào của bưu gửi không vượt quá 1.5m và tổng chiều dài với chu vi lớn nhất (không đo theo chiều dài đã đo) không vượt quá 3m.</li>\r\n	<li>Hàng cồng kềnh: Bưu gửi có kích thước lớn hơn so với kích thước thông thường được gọi là Bưu gửi cồng kềnh và có quy định riêng phụ thuộc và từng nơi nhận, nơi phát và điều kiện phương tiện vận chuyển.</li>\r\n	<li>Hàng nhẹ: Là hàng gửi có khối lượng dưới 167 kg/m3&nbsp;(tương đương với trên 6000 cm3/kg), khối lượng tính cước không căn cứ vào khối lượng thực mà căn cứ vào khối lượng quy đổi từ thể tích kiện hàng</li>\r\n</ul>\r\n\r\n<p><strong>Cam kết dịch vụ:</strong></p>\r\n\r\n<p>Với đội ngũ nhân viên chuyên nghiệp, phục vụ tận tình chu đáo, chúng tôi đảm bảo việc chuyển hàng đến tận tay khách hàng trong thời gian sơm nhất, theo dõi quá trinh chuyển hàng và thông báo cho khách hàng khi hàng đến nới.</p>\r\n\r\n<ol>\r\n	<li>Giao nhạn hàng đúng thời gian thỏa thuận</li>\r\n	<li>Làm thủ tục thông quan nhanh chóng</li>\r\n	<li>Chuyển phát nhanh hỏa tốc đúng thời gian</li>\r\n	<li>Lộ trinh giao nhận minh bạch</li>\r\n</ol>\r\n%%%0%%%1433931000%%%vi%%%1%%%,36,8,', 'vi', 0, NULL, NULL),
(70, 'Về chúng tôi - Việt Úc Thái Dương', 'status', 'web_article', 1436520985, 'admin', '1', 'vi', 0, NULL, NULL),
(71, 'Dịch vụ chuyển phát nhanh Quốc tế', 'update', 'web_article', 1436521001, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values13%%%Dịch vụ chuyển phát nhanh Quốc tế%%%dich-vu-chuyen-phat-nhanh-quoc-te%%%tin-tuc-su-kien/dich-vu-chuyen-phat-nhanh-quoc-te.html%%%dich-vu-chuyen-phat-nhanh-quoc-te.jpg%%%Dịch vụ chuyển phát nhanh Quốc tế nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ%%%dịch vụ chuyển phát nhanh quốc tế,dich vu chuyen phat nhanh quoc te%%%<h2>TTP Express nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới. UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ,&nbsp;chuyên cung cấp các loại&nbsp;hình dịch vụ và đa dạng nhằm đáp ứng nhu cầu tốt nhất cho toàn thể quý khách hàng.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ chuyển phát nhanh Quốc tế" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-quoc-te.jpg" style="width: 450px; height: 344px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>Dịch vụ chuyển phát nhanh quốc tế bao gồm:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Chuyển phát nhanh đi các nước trên thế giới</li>\r\n	<li>Chuyển phát nhanh chuyên tuyến :</li>\r\n</ol>\r\n\r\n<ul style="margin-left: 40px;">\r\n	<li>Korea</li>\r\n	<li>Hong Kong</li>\r\n	<li>Japan</li>\r\n	<li>Singapore</li>\r\n	<li>Malaysia&nbsp;</li>\r\n</ul>\r\n\r\n<ol start="3">\r\n	<li>Chuyển hàng quà biếu từ Mỹ về Việt Nam</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Gửi hàng từ Mỹ về Việt Nam</strong></span></p>\r\n\r\n<p><strong>Khách hàng tại USA muốn gửi hàng về Việt Nam</strong>, sẽ đến văn phòng nhận hàng của chúng tôi tại USA, tại đây khách hàng sẽ nhận được những hướng dẫn, điều khoản, điều kiện vận chuyển và giao hàng về Việt Nam cụ thể và tận tình.</p>\r\n\r\n<p><em><strong>Chúng tôi cung cấp dịch vụ chuyển hàng hóa từ Mỹ về Việt Nam</strong></em> trên toàn quốc, người thân của bạn dù ở bất kỳ địa phương, bất kỳ tỉnh thành nào đều có thể nhận hàng của bạn từ Mỹ.</p>\r\n\r\n<p>Với khách hàng gửi hàng từ Texas hoặc các khu vực khác của USA&nbsp; về Việt Nam&nbsp; hãy liên hệ với Văn phòng nhận hàng của chúng tôi tại Texas.</p>\r\n\r\n<p>Khách hàng chuyển hàng có thể chọn hình thức thanh toán tại USA hoặc tại Việt Nam.</p>\r\n\r\n<p>Với tiêu chí hoạt động: Nhanh chóng – chính xác và cạnh tranh. Nên quý khách có thể hoàn toàn yên tâm.</p>\r\n\r\n<p style="text-align: center;"><img alt="Gửi hàng từ Mỹ về Việt Nam - CPN Mỹ về Việt Nam" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-quoc-te-2.jpg" style="width: 600px; height: 220px;" /></p>\r\n\r\n<p><span style="color:#0000FF;"><strong>Các mặt hàng nhận chuyển:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Các loại chứng từ, hợp đồng, hồ sơ du học...</li>\r\n	<li>Quà tặng, quần áo, giày dép, mũ, nón….</li>\r\n	<li>Hàng mẫu, hàng hóa, hàng nặng...</li>\r\n	<li>Các loại thuốc: thuốc tây, thuốc Bắc, thuốc nam, thuốc đông y...</li>\r\n	<li>Thực phẩm: Tôm khô, cá khô, mực khô, cà phê, trà, bánh kẹo...</li>\r\n	<li>Dụng cụ làm nails: Kềm bấm, dầu gội đầu, mỹ phẩm...</li>\r\n	<li>Mặt hàng điện tử: Điện thoại, máy tính, máy đọc sách, các loại máy móc khác...</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Bảng giá chuyển phát nhanh quốc tế (attached file kèm theo áp dụng từ 01/06/2015)</strong></span></p>\r\n\r\n<p><em><strong>Phụ phí xăng dầu:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức phụ phí xăng dầu là 15% tính trên bảng cước quy định nối trên</li>\r\n	<li>Mức thu phụ phí xăng dầu sẽ thay đổi theo từng thời điểm công bố</li>\r\n</ul>\r\n\r\n<p><em><strong>Phụ phí vùng xa:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức thu phụ phí vung xa là 35% bưu gửi Quốc tế.</li>\r\n	<li>Phạm vi áp dụng: mức thu phụ phí vùng xâu vùng xa này được áp dụng đối với các bưu gửi <em><strong>chuyển phát nhanh quốc tế </strong></em>đến một số nước theo danh sách các nước áp dụng thu phụ phí vùng xa .</li>\r\n</ul>\r\n%%%0%%%1433929500%%%vi%%%1%%%,36,1,8,', 'vi', 0, NULL, NULL),
(72, 'Các dịch vụ gia tăng', 'update', 'web_article', 1436521006, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values12%%%Các dịch vụ gia tăng%%%cac-dich-vu-gia-tang%%%tin-tuc-su-kien/cac-dich-vu-gia-tang.html%%%cac-dich-vu-gia-tang.jpg%%%Các dịch vụ gia tăng của TTP Express CPN trong nước như: Dịch vụ bảo hiểm hàng hóa bưu gửi, dịch vụ phát hàng thu tiền (COD),...%%%các dịch vụ gia tăng,cac dich vu gia tang,CPN%%%<p><span style="color:#FF0000;"><strong>1. Dịch vụ bảo hiểm hàng hóa bưu gửi</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ&nbsp;bảo hiểm hàng hóa, bưu gửi&nbsp;là dịch vụ gia tăng</strong></em> đi kèm với dịch vụ vận chuyển trong đó người gửi được mua bảo hiểm cho bưu gửi của mình.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>Khi sử dụng dịch vụ bảo hiểm, ngoài cước vận chuyển người gửi phải chịu thêm một khoản phí bảo hiểm tương đương tỷ lệ mua bảo hiểm.</li>\r\n	<li>Trong quá trình vận chuyển, nếu xảy ra mất mát hoặc hư hại hàng hóa bưu gửi, người gửi sẽ được TTP Express bồi thường theo giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Đối với các bưu gửi là chứng từ; giá trị khai giá tối đa là 15.000.000 vnđ</li>\r\n	<li>Đối với các bưu gửi là hàng hóa, giá trị khai giá tối đa là 150.000.000 vnđ</li>\r\n	<li>Giá trị khai giá của hàng hóa bưu gửi không được lớn hơn quá 10% giá trị thực hoặc giá trị trên hóa đơn chứng từ đi kèm hàng hóa bưu gửi.</li>\r\n	<li>Dịch vụ bảo hiểm hàng hóa không được áp dụng cho các loại hàng hóa là thực phẩm, hàng đông lạnh và các loại hàng hóa đặc biệt khác.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Mức phí bảo hiểm:&nbsp;3%&nbsp;giá trị khai giá hàng hóa bưu gửi.</li>\r\n	<li>Mức bồi thường:&nbsp;&nbsp;100%&nbsp;giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Thời gian bảo hiểm: bắt đầu từ thời điểm người gửi mua bảo hiểm đến khi kết thúc quá trình giao hàng hóa bưu gửi cho người nhận.</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Các dịch vụ gia tăng của TTP Express CPN trong nước " src="/public/images/articles/cac-dich-vu-gia-tang.jpg" style="width: 461px; height: 284px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2.&nbsp;Dịch vụ phát hàng -&nbsp;thu tiền (COD)</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ phát hàng -&nbsp;thu tiền (Cash on Delivery – COD) </strong></em>là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát trong đó nhà vận chuyển được ủy thác thu hộ một khoản tiền nhất định do người gửi yêu cầu khi thực hiện việc phát bưu phẩm cho người nhận và hoàn trả lại số tiền đó cho người gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li><em><strong>TTP Express&nbsp;chỉ cung cấp dịch vụ COD</strong></em> tại trung tâm các tỉnh, thành phố nằm trong tuyến chính&nbsp;TTP Express.</li>\r\n	<li>Khi sử dụng dịch vụ COD khách hàng phải thanh toán các khoản cước sau:\r\n	<ul>\r\n		<li>Cước dịch vụ chuyển phát bưu gửi COD.</li>\r\n		<li>Cước phí dịch vụ COD.</li>\r\n		<li>Các khoản cước phí dịch vụ đặc biệt khác mà khách hàng lựa chọn như dịch vụ bảo hiểm, dịch vụ đóng gói, dịch vụ phát hỏa tốc…</li>\r\n	</ul>\r\n	</li>\r\n	<li>Khi sử dụng dịch vụ COD, khách hàng cần thông báo cho người nhận về việc ủy thác cho nhà vận chuyển thu hộ tiền hàng. TTP Express chỉ phát bưu gửi khi người nhận đã thanh toán tiền thu hộ. Nếu không thanh toán bưu gửi COD sẽ được TTP Express trả lại cho người gửi. Trong trường hợp này người gửi vẫn phải thanh toán đầy đủ các khoản cước phí như đã thỏa thuận ban đầu cộng thêm cước phí chuyển hoàn bưu gửi COD đó.</li>\r\n	<li>Mức tiền thu hộ tối đa cho một bưu gửi COD là 50.000.000đ ( năm mươi triệu đồng.)</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Giá cước dịch vụ thu hộ COD được áp dụng theo bảng giá của TTP Express hoặc theo sự thỏa thuận giữa hai bên.</li>\r\n	<li>Người gửi cần cung cấp đầy đủ thông tin của người nhận ( tên, địa chỉ, số điện thoại.. ) trên vận đơn của bưu gửi COD; các loại hóa đơn chứng từ đi kèm để làm cơ sở thu hộ tiền hàng.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>3.&nbsp;Dịch vụ đóng gói.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ đóng gói là dịch vụ gia tăng đi kèm với dịch vụ chuyển phát</strong></em> trong đó nhà vận chuyển thực hiện việc đóng gói hàng hóa bưu gửi của khách hàng theo quy chuẩn của nhà vận chuyển nhằm hạn chế các hư hỏng cơ học cho hàng hóa bưu gửi của khách hàng trong quá trình vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ đóng gói cho các hàng hóa bưu gửi được gửi qua TTP Express.</li>\r\n	<li>Dịch vụ đóng gói được áp dụng theo yêu cầu của khách hàng hoặc bắt buộc đối với các loại hàng hóa đặc biệt do yêu cầu của hãng vận chuyển.TTP Express có quyền từ chối nhận vận chuyển hàng hóa bưu gửi ( thuộc loại bắt buộc phải đóng gói ) nếu khách hàng không chấp nhận sử dụng dịch vụ đóng gói.</li>\r\n	<li>Đối với các hàng hóa bưu gửi sử dụng dịch vụ đóng gói, trọng lượng tính cước sẽ là trọng lượng sau khi đã đóng gói.</li>\r\n	<li>Khi sử dụng dịch vụ đóng gói, ngoài cước phí chính tính theo trọng lượng bưu phẩm, khách hàng phải chịu phí đóng gói tương đương phí nguyên vật liệu sử dụng để đóng gói. Chi phí này được quy định cụ thể trên báo giá của TTP Express và được thông báo cho khách hàng trước khi đóng gói.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Dịch vụ đóng gói bao gồm nhiều hình thức như đóng carton, xốp, gỗ, ván ép, nylon chống nước...Khách hàng có thể yêu cầu đóng gói cùng lúc nhiều hình thức khác nhau.</li>\r\n	<li>Dịch vụ đóng gói giúp hạn chế các hư hỏng cơ học trong quá trình vận chuyển, do đó không phải là dịch vụ bảo hiểm hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>&nbsp;4.&nbsp;Dịch vụ báo phát</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ báo phát là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát</strong></em> trong đó người gửi yêu cầu nhà vận chuyển chuyển trả lại cho người gửi phiếu giao hàng ( vận đơn ) có chữ ký và họ tên của người nhận bưu gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ báo phát cho các vận đơn có địa chỉ người nhận thuộc các địa danh thu phát của TTP Express.</li>\r\n	<li>Thời gian trả báo phát lại cho người gửi phụ thuộc vào từng khu vực phát.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Phí dịch vụ báo phát là 5.000đ / vận đơn.</li>\r\n	<li>Dịch vụ báo phát áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>5.&nbsp;Dịch vụ kiểm đếm.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ kiểm đếm là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát </strong></em>trong đó nhà vận chuyển sẽ tiến hành kiểm đếm số lượng chi tiết của hàng hóa bưu gửi cùng với người gửi khi nhận và người nhận khi phát.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ kiểm đếm về số lượng, chủng loại, tình trạng bên ngoài của hàng hóa bưu gửi. TTP Express không kiểm đếm về chất lượng hoặc quy cách hoạt động của hàng hóa bưu gửi. Trong trường hợp hàng hóa bưu gửi có những dấu hiệu bất thường sẽ được kê khai chi tiết trên biên bản kiểm đếm.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho các khách hàng trên phạm vi thu phát của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm chỉ áp dụng cho các vận đơn có số lượng lớn hơn 100 đơn vị kiểm đếm.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Khi sử dụng dịch vụ kiểm đếm, ngoài cước phí vận chuyển tính theo khối lượng hàng hóa bưu gửi và các loại cước phí đặc biệt theo từng loại hình dịch vụ, người gửi phải chịu một khoản phí kiểm đếm tính theo từng đơn vị kiểm đếm.</li>\r\n	<li>Khi tiến hành kiểm đếm, TTP Express và khách hàng sẽ cùng nhau kiểm đếm và ký vào biên bản kê khai chi tiết số lượng kiểm đếm. Khi phát bưu gửi, TTP Êxpress sẽ cùng người nhận kiểm đếm và phát theo chi tiết số lượng và nội dung đã kê khai trên biên bản kiểm đếm.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>6. Dịch vụ thanh toán đầu nhận</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ thanh toán đầu nhận (TTĐN)</strong></em> là một hình thức thanh toán khác của dịch vụ vận chuyển trong đó người nhận hàng hóa bưu gửi sẽ là người thanh toán 1 phần hoặc toàn bộ cước phí vận chuyển cho nhà vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express cung cấp dịch vụ TTĐN tại các khu vực thu phát của TTP Express.</li>\r\n	<li>Người nhận hàng hóa bưu gửi sử dụng dịch vụ TTĐN sẽ phải thanh toán toàn bộ cước phí tương ứng với các dịch vụ mà người gửi đã lựa chọn.</li>\r\n	<li>TTP Express sẽ chỉ phát hàng hóa bưu gửi sử dụng dịch vụ TTĐN cho người nhận khi chấp nhận thanh toán cước phí. Nếu người nhận không thanh toán cước phí, DHL sẽ hoàn bưu gửi lại cho người gửi. Trong trường hợp này, người gửi sẽ phải thanh toán toàn bộ cước phí của bưu gửi bao gồm cước phí chuyển phát gửi đi và cước phí chuyển hoàn về.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:&nbsp;</strong><span style="line-height: 1.6em;">Cước phí các hàng hóa bưu gửi sử dụng dịch vụ TTĐN được tính theo bảng giá niêm yết tại thời điểm hiện tại của TTP Express hoặc theo sự thỏa thuận đối với từng khách hàng.</span></p>\r\n%%%0%%%1433928720%%%vi%%%1%%%,36,1,8,', 'vi', 0, NULL, NULL),
(73, 'Các loại hình dịch vụ chuyển phát nhanh trong nước', 'update', 'web_article', 1436521011, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values11%%%Các loại hình dịch vụ chuyển phát nhanh trong nước%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc%%%tin-tuc-su-kien/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.html%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg%%%Các loại hình dịch vụ chuyển phát nhanh trong nước của TTP Express như: CPN thông thường, CPN hàng giá trị cao,...%%%các loại hình dịch vụ chuyển phát nhanh trong nước,cac loai hinh dich vu cpn%%%<p><span style="color:#FF0000;"><strong>1. Chuyển phát nhanh hàng thông thường</strong></span></p>\r\n\r\n<p>Khách hàng gửi trong khoảng thời gian từ&nbsp;8giờ&nbsp;đến&nbsp;17giờ30&nbsp;ngày hôm nay thì Người nhận của Quý khách sẽ nhận được từ 9giờ&nbsp;đến&nbsp;17giờ&nbsp;ngày hôm sau&nbsp;trong nội thành, nội thị, với khu vực ngoại thành, ngoại thị, thời gian phát tối đa là&nbsp;48 giờ.</p>\r\n\r\n<p><em>Ghi chú:&nbsp;</em>Tùy theo tính chất địa lý của từng khu vực thì thời gian phát có thể nhanh hoặc chậm hơn thời gian đã nêu ở trên trong khỏang&nbsp;24giờ.</p>\r\n\r\n<p style="text-align: center;"><img alt="Các loại hình dịch vụ chuyển phát nhanh trong nước" src="/public/images/articles/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg" style="width: 359px; height: 282px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2. Chuyển phát nhanh hàng giá trị cao</strong></span></p>\r\n\r\n<p>Chuyển phát nhanh hàng giá trị cao, hồ sơ thầu, vaccine, hàng lạnh</p>\r\n\r\n<p>Đây là những mặt hàng có mức bồi thường cao (lên đến 100% giá trị) khi xảy ra mất mát, hư hỏng,</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>3. Chuyển phát nhanh hỏa tốc</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh hỏa tốc là gói dịch vụ đặc biệt của&nbsp;TTP Express</strong></em> trong đó hàng hóa bưu gửi của khách hàng sẽ được phát đến tay người nhận trong thời gian sớm nhất được thỏa thuận trước giữa&nbsp;TTP Express&nbsp;và khách hàng.</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được áp dụng cho tất cả các khách hàng trên phạm vi thu phát của TTP Express</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được phân chia làm 2 loại: hỏa tốc nội thành và hỏa tốc đi tỉnh.</p>\r\n\r\n<ul>\r\n	<li><em>Hỏa tốc nội thành:</em> khi sử dụng dịch vụ chuyển hỏa tốc nội thành, bưu gửi của quý khách sẽ được&nbsp;TTP Express&nbsp;phát đến tay người nhận sau 2 đến 3h tại các quận nội thành của Hà Nội, Hồ Chí Minh, Đà Nẵng</li>\r\n	<li><em>Hỏa tốc đi tỉnh:&nbsp;</em>TTP Express&nbsp;luôn nỗ lực để đáp ứng một cách tốt nhất mọi yêu cầu về chuyển phát của khách hàng, nhất là đối với các nhu cầu chuyển phát cấp thiết. Do đó khi có nhu cầu gửi hỏa tốc đi bất kỳ nơi nào, khách hàng hãy gọi tới&nbsp;TTP Express&nbsp;để nhận được tư vấn về giải pháp chuyển pháp phù hợp nhất.Chúng tôi tôn trọng mọi yêu cầu của khách hàng và luôn nỗ lực đặt lợi ích của khách hàng lên hàng đầu.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>4. Chuyển phát nhanh trong ngày</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh trong ngày</strong></em> là gói dịch vụ đặc biệt trong đó TTP Express cam kết phát hàng hóa bưu gửi của khách hàng đến tay người nhận ngay trong ngày khách hàng gửi. TTP Express sẽ cung cấp dịch vụ chuyển phát nhanh trong ngày cho từng yêu cầu cụ thể khi có sự thỏa thuận giữa TTP Express và khách hàng.</p>\r\n%%%0%%%1433928060%%%vi%%%1%%%,36,8,', 'vi', 0, NULL, NULL),
(74, 'Dịch vụ làm thủ tục xuất nhập khẩu', 'update', 'web_article', 1436521017, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values10%%%Dịch vụ làm thủ tục xuất nhập khẩu%%%dich-vu-lam-thu-tuc-xuat-nhap-khau%%%tin-tuc-su-kien/dich-vu-lam-thu-tuc-xuat-nhap-khau.html%%%dich-vu-lam-thu-tuc-xuat-nhap-khau.jpg%%%Dịch vụ làm thủ tục xuất nhập khẩu TTP Express nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu, đội ngũ nhân viên dày dặn kinh nghiệm%%%dịch vụ làm thủ tục xuất nhập khẩu,dich vu lam thu tuc xuat nhap khau%%%<h2>Dịch vụ xuất nhập khẩu là tổng hợp các nghiệp vụ liên quan đến hoạt động ngoại thương, ngân hàng, hải quan, vận tải, bảo hiểm… mà bên nhận làm dịch vụ đứng ra đảm nhận và thực hiện thay cho bên khoán dịch vụ.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ làm thủ tục xuất nhập khẩu" src="/public/images/articles/dich-vu-lam-thu-tuc-xuat-nhap-khau.jpg" style="width: 500px; height: 312px;" /></p>\r\n\r\n<p>Ngày nay, nếu như việc toàn cầu hóa kinh tế thế giới là một con thuyền tiến ra biển đông thì xuất nhập khẩu đóng vai trò là mũi thuyền, là bánh lái, là nhịp cầu nối để gắn kết các quốc gia lại giao thương với nhau.</p>\r\n\r\n<p>Và đã ra sân chơi với bạn bè trên thế giới, để không bị thua thiệt, không bị tổn thất vì thiếu kiến thức thì phải hiểu luật, nắm những qui tắc cơ bản, qui tắc chung mà các quốc gia trên thế giới đã đề ra.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu ra đời nhằm giải quyết và thảo gỡ các vướng mắc trên.</strong></em> Sứ mệnh của dịch vụ xuất nhập khẩu là tìm tòi, học hỏi , nghiên cứu và áp dụng vào thực tế để hoàn thiện các thủ tục, hủ tục phù hợp với quy định luật pháp của Nhà nước, từ đó đưa nguồn hàng từ Việt Nam đến các quốc gia trên thế giới, đồng thời cũng là nơi tiếp nhận các nguồn hàng từ các nơi trên thế giới đổ về Việt Nam&nbsp;đây là yếu tố rất quan trọng trong công cuộc phát triển kinh tế của nước nhà.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu luôn là người bạn đồng hành cùng doanh nghiệp</strong></em>, hỗ trợ doanh nghiệp vượt qua các khó khăn, rào cản để có thể tiếp cận với thị trường kinh tế thế giới một cách dễ dàng hơn, anh tâm hơn và nhanh chóng hơn.</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>1. Dịch vụ chứng từ XNK</strong></span></p>\r\n\r\n<p><em><strong>Nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu</strong></em>. Với đội ngũ nhân viên dày dặn kinh nghiệm, độ bao phủ rộng khắp các cơ quan hữu quan như: Hải Quan, Kiểm dịch thực vật, chứng nhận xuất xứ, Giám định chất lượng hàng hóa…. Chúng tôi cam kết sẽ hoàn thiện bộ chứng từ nhanh nhất trong thời gian sớm nhất .</p>\r\n\r\n<ul>\r\n	<li>Thủ tục mở tờ khai HQ</li>\r\n	<li>Xin giấy chứng nhận kiểm dịch thực vật</li>\r\n	<li>Xin giấy chứng nhận xuất xứ hàng hóa (C/O)</li>\r\n	<li>Xin giấy chứng nhận giám dịnh hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong><span style="line-height: 1.6em;">2. Dịch vụ khai thuê Hải Quan</span></strong></span></p>\r\n\r\n<p><strong>Dịch vụ khai báo Hải quan</strong> là một trong những khâu rất quan trọng trong quá trình xuất – Nhập khẩu hàng hóa, việc khai báo Hải quan đòi hỏi sự linh hoạt của nhân viên giàu kinh nghiệm để xữ lý những vấn đề phát sinh.</p>\r\n\r\n<p><em><strong>Chúng tôi nhận khai báo&nbsp;Hải quan hàng xuất nhập khẩu</strong></em> gồm hàng nguyên tàu, hàng nguyên container, hàng lẽ, hàng rời, với đa dạng các mặt hàng như: Nông sản, hàng đông lạnh, thủy hải sản, hàng gia dụng, trang trí nội thất, trang thiết bị, máy móc...</p>\r\n\r\n<p style="text-align: center;"><span style="color:#0000FF;"><strong>&nbsp;CAM KẾT HOÀN THÀNH THỦ TỤC HẢI QUAN TRONG VÒNG MỘT NGÀY KÍ&nbsp;ĐÃ TẬP KẾT ĐỦ HÀNG VÀ CHỨNG TỪ.</strong></span></p>\r\n%%%0%%%1433926020%%%vi%%%1%%%,36,8,', 'vi', 0, NULL, NULL),
(75, 'English', 'status', 'web_language', 1436521373, 'admin', '0', 'vi', 0, NULL, NULL),
(76, 'Phòng kinh doanh', 'status', 'web_menu', 1436521383, 'admin', '1', 'vi', 0, NULL, NULL),
(77, 'Phòng nghiệp vụ chăm sóc khách hàng', 'status', 'web_menu', 1436521384, 'admin', '1', 'vi', 0, NULL, NULL),
(78, 'Tin tức - Sự kiện', 'update', 'web_menu', 1436521470, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values8%%%Tin tức - Sự kiện%%%tin-tuc-su-kien%%%tin-tuc-su-kien/%%%%%%Tin tức - Sự kiện%%%Tin tức - Sự kiện%%%tin tức sự kiện,tin tuc su kien%%%0%%%5%%%1%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(79, 'Thư viện', 'update', 'web_menu', 1436521483, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values7%%%Thư viện%%%thu-vien%%%thu-vien/%%%%%%Thư viện%%%Thư viện%%%thư viện,thu vien%%%0%%%4%%%1%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(80, 'Nông sản', 'update', 'web_menu', 1436521491, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Nông sản%%%nong-san%%%nong-san/%%%%%%Nông sản - Việt Úc Thái Dương%%%Nông sản - Việt Úc Thái Dương%%%nông sản,nong san%%%0%%%3%%%1%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(81, 'Product', 'update', 'web_menu_type', 1436521645, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values3%%%Product%%%Sản phẩm%%%web_product%%%public/images/products/%%%public/_thumbs/Images/products/%%%vi%%%3%%%1%%%1', 'vi', 0, NULL, NULL),
(82, 'Video', 'status', 'web_menu_type', 1436521671, 'admin', '1', 'vi', 0, NULL, NULL),
(83, 'Nông sản', 'update', 'web_menu', 1436521689, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Nông sản%%%nong-san%%%nong-san/%%%%%%Nông sản - Việt Úc Thái Dương%%%Nông sản - Việt Úc Thái Dương%%%nông sản,nong san%%%0%%%3%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(84, 'Rua - Củ - Quả', 'update', 'web_menu', 1436521702, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values40%%%Rua - Củ - Quả%%%rua-cu-qua%%%rua-cu-qua/%%%%%%Rua - Củ - Quả%%%Rua - Củ - Quả%%%rua củ quả,rua cu qua%%%6%%%1%%%1%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(85, 'Trái Cây', 'update', 'web_menu', 1436521704, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values41%%%Trái Cây%%%trai-cay%%%trai-cay/%%%%%%Trái Cây%%%Trái Cây%%%trái cây,trai cay%%%6%%%2%%%1%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(86, 'Thủy Hải Sản', 'update', 'web_menu', 1436521707, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values42%%%Thủy Hải Sản%%%thuy-hai-san%%%thuy-hai-san/%%%%%%Thủy Hải Sản%%%Thủy Hải Sản%%%thủy hải sản,thuy hai san%%%6%%%3%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(87, 'Gạo - Lương thực', 'update', 'web_menu', 1436521710, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values39%%%Gạo - Lương thực%%%gao-luong-thuc%%%gao-luong-thuc/%%%%%%Gạo - Lương thực%%%Gạo - Lương thực%%%gạo lương thực,gao luong thuc%%%6%%%4%%%1%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(88, 'Các loại công sản khác', 'update', 'web_menu', 1436521713, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values43%%%Các loại công sản khác%%%cac-loai-cong-san-khac%%%cac-loai-cong-san-khac/%%%%%%Các loại công sản khác%%%Các loại công sản khác%%%các loại công sản khác,cac loai cong san khac%%%6%%%5%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(89, 'Home', 'update', 'web_menu_type', 1436521796, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values1%%%Home%%%Trang chủ%%%%%%public/images/catalog/%%%public/_thumbs/Images/catalog/%%%vi%%%1%%%1%%%1', 'vi', 0, NULL, NULL),
(90, 'Article', 'update', 'web_menu_type', 1436521801, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values2%%%Article%%%Thông tin bài viết%%%web_article%%%public/images/articles/%%%public/_thumbs/Images/articles/%%%vi%%%2%%%1%%%1', 'vi', 0, NULL, NULL),
(91, 'Product', 'update', 'web_menu_type', 1436521808, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values3%%%Product%%%Sản phẩm%%%web_article%%%public/images/products/%%%public/_thumbs/Images/products/%%%vi%%%3%%%1%%%1', 'vi', 0, NULL, NULL),
(92, 'Service', 'update', 'web_menu_type', 1436521813, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values4%%%Service%%%Dịch vụ%%%%%%public/images/services/%%%public/_thumbs/Images/services/%%%vi%%%4%%%1%%%0', 'vi', 0, NULL, NULL),
(93, 'Photo', 'update', 'web_menu_type', 1436521819, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values5%%%Photo%%%Hình ảnh%%%web_photo%%%public/images/photos/%%%public/_thumbs/Images/photos/%%%vi%%%5%%%1%%%1', 'vi', 0, NULL, NULL),
(94, 'Video', 'update', 'web_menu_type', 1436521831, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values6%%%Video%%%Video%%%web_video%%%public/images/videos/%%%public/_thumbs/Images/videos/%%%vi%%%6%%%1%%%0', 'vi', 0, NULL, NULL),
(95, 'product', 'update', 'web_menu_type', 1436522367, 'admin', '`id`,`name`,`description`,`table_data`,`url_img`,`url_img_thumb`,`lang`,`order`,`other`,`status`fields%%%values3%%%product%%%Sản phẩm%%%web_article%%%public/images/products/%%%public/_thumbs/Images/products/%%%vi%%%3%%%1%%%1', 'vi', 0, NULL, NULL),
(96, 'Sản phẩm', 'status', 'web_menu_admin', 1436522379, 'admin', '0', 'vi', 0, NULL, NULL),
(97, 'Admin', 'update', 'web_users', 1436522397, 'admin', '`id`,`name`,`address`,`phone`,`email`,`birthday`,`gender`,`img`,`salt`,`username`,`password`,`rule_view`,`rule_action`,`random_key`,`expiration`,`lang`,`datetime`,`status`,`group_id`fields%%%values25%%%Admin%%%123 CMT 8%%%0988 388 003%%%hieunhan1121@gmail.com%%%0%%%1%%%%%%%%%admin%%%fc7fc678608590b123692867f176fe63%%%,1,2,3,4,6,7,8,18,13,14,20,15,16,17,21,22,23,%%%,1,2,3,4,6,7,8,18,13,14,20,15,16,17,21,22,23,%%%%%%0%%%vi%%%0%%%1%%%3', 'vi', 0, NULL, NULL),
(98, 'Mùng chống muỗi hình nón', 'update', 'web_product', 1436522543, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Mùng chống muỗi hình nón%%%mung-chong-muoi-hinh-non%%%MMHT-01%%%thoi-trang-nam/mung-chong-muoi-hinh-non.html%%%mung-chong-muoi.jpg%%%Mùng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.%%%mùng chống muỗi hình nón,mung chong muoi hinh non%%%200000%%%250000%%%<p>M&ugrave;ng l&agrave; m&agrave;n ngủ ứng dụng kỹ thuật mới với sợi m&agrave;n bằng nguy&ecirc;n liệu Polyethylene t&iacute;ch hợp Permethrin tạo n&ecirc;n chiếc m&agrave;n bền chắc, th&ocirc;ng tho&aacute;ng kh&iacute; v&agrave; đặc biệt l&agrave; t&iacute;nh năng xua đuổi diệt muỗi, c&ocirc;n tr&ugrave;ng cho người sử dụng. M&ugrave;ng ChamCham rất hữu &iacute;ch cho ph&ograve;ng chống lan truyền bệnh sốt r&eacute;t, sốt xuất huyết, vi&ecirc;m n&atilde;o Nhật Bản B v&agrave; c&aacute;c bệnh kh&aacute;c g&acirc;y ra do c&ocirc;n tr&ugrave;ng ch&iacute;ch đốt gi&uacute;p bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>M&ugrave;ng V&otilde;ng R&egrave;m ChamCham đ&aacute;p ứng nhu cầu sử dụng đa dạng trong nh&agrave;, ngo&agrave;i trời, treo m&oacute;c...</p>\r\n%%%%%%1%%%1408460940%%%vi%%%1%%%,6,13,', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(99, 'Mùng chống muỗi tam giác ba dây trắng', 'update', 'web_product', 1436522686, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Mùng chống muỗi tam giác ba dây trắng%%%mung-chong-muoi-tam-giac-ba-day-trang%%%MMTG-01%%%thoi-trang-nam/mung-chong-muoi-tam-giac-ba-day-trang.html%%%%%%Mùng chống muỗi tam giác ba dây trắng là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.%%%mùng chống muỗi tam giác ba dây trắng,mung chong muoi tam giac ba day trang%%%250000%%%0%%%<h2>Mùng chống muỗi tam giác ba dây trắng&nbsp;là màn ngủ ứng dụng kỹ thuật mới với sợi màn bằng nguyên liệu Polyethylene tích hợp Permethrin tạo nên chiếc màn bền chắc, thông thoáng khí và đặc biệt là tính năng xua đuổi diệt muỗi, côn trùng cho người sử dụng.</h2>\r\n\r\n<p>Mùng ChamCham rất hữu ích cho phòng chống lan truyền bệnh sốt rét, sốt xuất huyết, viêm não Nhật Bản B và các bệnh khác gây ra do côn trùng chích đốt giúp bảo vệ sức khỏe người sử dụng.</p>\r\n\r\n<p>Mùng Võng Rèm ChamCham đáp ứng nhu cầu sử dụng đa dạng trong nhà, ngoài trời, treo móc...</p>\r\n%%%<p>Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n%%%1%%%1432180140%%%vi%%%1%%%,6,13,', 'vi', 0, NULL, NULL),
(100, 'Sầu Riêng Tiềng Giang', 'update', 'web_product', 1436522837, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Sầu Riêng Tiềng Giang%%%sau-rieng-tieng-giang%%%MMTG-01%%%trai-cay/sau-rieng-tieng-giang.html%%%sau-rieng-tieng-giang.jpg%%%Sầu Riêng một loại trái cây phổ biến của phía Nam, là một trong những đặc sản của Tiền Giang%%%sầu riêng tiềng giang,sau rieng tieng giang%%%250000%%%0%%%<p>- Sầu Riêng một loại trái cây phổ biến của phía Nam, là một trong những đặc sản của Tiền Giang</p>\r\n\r\n<p>- Sầu Riêng có vị ngọt, hương thơm đặc trưng mà có lẽ khó ăn với nhiều người khi thưởng thức lần đầu. Tuy nhiên, khi đã ăn quen thì nó lại là loại quả tuyệt vời với nhiều người không chỉ bởi vị thơm ngon mà còn bởi tác dụng của loại quả này tới sức khỏe và làn da.</p>\r\n\r\n<p>- Trọng lượng tối thiểu 1 quả: 2kg</p>\r\n\r\n<p>- Trọng lượng hàng hóa nhận được thực tế có thể chênh lệch đôi chút và được ghi rõ trong hóa đơn.</p>\r\n%%%<p>Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng Bảo h&agrave;nh 12 th&aacute;ng</p>\r\n\r\n<p>Giao h&agrave;ng to&agrave;n quốc</p>\r\n%%%1%%%1432180140%%%vi%%%1%%%,6,41,', 'vi', 0, NULL, NULL),
(101, 'Nho Úc đỏ không hạt', 'update', 'web_product', 1436522852, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Nho Úc đỏ không hạt%%%nho-uc-do-khong-hat%%%MMHT-01%%%trai-cay/nho-uc-do-khong-hat.html%%%nho-khong-hat.jpg%%%Nho Úc đỏ không hạt cung cấp một hương vị rất ngon tinh tế, có nhiều giá trị dinh dưỡng. Khi ăn có vị ngọt đậm, tươi ngon, không chất bảo quản.%%%nho úc đỏ không hạt,nho uc do khong hat%%%200000%%%250000%%%<p>Nho Úc đỏ không hạt cung cấp một hương vị rất ngon tinh tế, có nhiều giá trị dinh dưỡng. Khi ăn có vị ngọt đậm, tươi ngon, không chất bảo quản.</p>\r\n\r\n<p>Trọng lượng: 1kg</p>\r\n\r\n<p>Hạn sử dụng: 1 tuần</p>\r\n\r\n<p>Cách sử dụng: ăn ngay hoặc bảo quản nơi khô ráo</p>\r\n\r\n<p>Xuất xứ: Úc</p>\r\n\r\n<p>Nhà sản xuất: Espace Bourbon An Lạc</p>\r\n%%%%%%1%%%1408460940%%%vi%%%1%%%,6,40,41,39,', 'vi', 0, NULL, NULL),
(102, 'Về chúng tôi - Việt Úc Thái Dương', 'update', 'web_article', 1436522880, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values9%%%Về chúng tôi - Việt Úc Thái Dương%%%%%%%%%gioi-thieu.jpg%%%Công ty CP Việt Úc Thái Dương là doanh nghiệp nhà nước hàng đầu chuyên về sản xuất, chế biến và kinh doanh xuất, nhập khẩu rau, quả, nông sản%%%về chúng tôi việt úc thái dương,ve chung toi viet uc thai duong%%%<p><strong>Công ty CP Việt Úc Thái Dương</strong> là doanh nghiệp nhà nước hàng đầu chuyên về sản xuất, chế biến và kinh doanh xuất, nhập khẩu rau, quả, nông sản với kim ngạch xuất khẩu rau, quả hàng năm chiếm tỷ trọng lớn trong tổng kim ngạch xuất khẩu rau, quả của Việt Nam.</p>\r\n\r\n<p>Là một công ty kinh doanh đa ngành trong phạm vi toàn quốc và thế giới, ngay từ khi mới thành lập công ty đã đặc biệt quan tâm xây dựng chất lượng sản phẩm, nên đã đầu tư nhiều dây chuyền thiết bị hiện đại, công nghệ tiên tiến được nhập khẩu từ Châu Âu.</p>\r\n%%%0%%%1433931000%%%vi%%%0%%%,1,', 'vi', 0, NULL, NULL),
(103, 'Các loại công sản khác', 'update', 'web_menu', 1436523705, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values43%%%Các loại công sản khác%%%cac-loai-cong-san-khac%%%cac-loai-cong-san-khac/%%%%%%Các loại công sản khác%%%Các loại công sản khác%%%các loại công sản khác,cac loai cong san khac%%%6%%%5%%%0%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(104, 'Ổi Lê', 'create', 'web_product', 1436524131, 'admin', '', 'vi', 0, NULL, NULL),
(105, 'Cherry Mỹ', 'create', 'web_product', 1436524219, 'admin', '', 'vi', 0, NULL, NULL),
(106, 'Các loại công sản khác', 'update', 'web_menu', 1436524242, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values43%%%Các loại công sản khác%%%cac-loai-cong-san-khac%%%cac-loai-cong-san-khac/%%%%%%Các loại công sản khác%%%Các loại công sản khác%%%các loại công sản khác,cac loai cong san khac%%%6%%%5%%%1%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(107, 'Bài viết mới', 'update', 'web_menu', 1436954154, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values36%%%Bài viết mới%%%bai-viet-moi%%%bai-viet-moi/%%%%%%Bài viết mới%%%Bài viết mới%%%bài viết mới,bai viet moi%%%0%%%0%%%0%%%vi%%%1%%%2%%%,4,', 'vi', 0, NULL, NULL),
(108, 'Cherry Mỹ', 'update', 'web_product', 1436954166, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%Cherry Mỹ%%%cherry-my%%%%%%gao-luong-thuc/cherry-my.html%%%cherry-my.jpg%%%Cherry có màu đỏ thẫm, mềm, nhiều xơ và mọng nước. Hương vị của cherry quả thật có một không hai, với vị ngọt thanh dịu pha chút chua tự nhiên khiến ai đã một lần thử qua chắc hẳn sẽ khó quên được. %%%cherry mỹ,cherry my%%%0%%%%%%<p>Cherry (quả Anh Đào) là một loại quả có thành phần dinh dưỡng cao và công dụng giải độc rất tốt. Quả Cherry tròn, vị ngọt rất ngon, màu đỏ xậm (màu càng xậm vị càng ngọt). Một số công dụng của Cherry: - Chống sưng và ngăn ngừa Gout. - Giảm cholesterol trong máu. - Chứa một số họat tính bảo vệ cơ thể chống ung thư. Cụ thể "2 chất trong cherry là isoquerxitrin và quercetin đã được xác định là có khả năng chống sự tăng trưởng của các tế bào ung thư ruột già". -... Về thành phần dinh dưỡng, cherry - loại quả quý này có chứa một hàm lượng vitamin A rất cao, gấp 19 lần lượng vitamin A có trong trái dâu tây hoặc các trái thuộc họ berry khác. Nếu như cherry chín được thu hoạch vào mùa hè ở Mỹ từ tháng 5 tới tháng 9, thì tại Australia mùa thu hoạch cherry sẽ bắt đầu từ cuối tháng 11 đến giữa tháng 2 vì đất nước này nằm ở nam bán cầu. Nhiều nhà khoa học đã không tiếc lời ngợi khen cherry và gọi nó là “Siêu trái cây” – Super fruit. Một số các nghiên cứu khoa học đã kết luận loại quả này có tác dụng như: giảm rủi ro về tim mạch, ngăn ngừa ung thư, tiểu đường và ngăn ngừa khả năng giảm trí nhớ… Chất nước màu đỏ sậm chứa trong cherry chứa tới 17 loại chất. Trong đó, có một thành phần chống oxy hóa rất mạnh có tên khoa học là anthocyanins. Các thành phần này xây dựng một hệ thống bảo vệ mạnh mẽ giúp cơ thể làm chậm tốc độ lão hóa và chống lại các rủi ro của bệnh ung thư. Bên cạnh đó, cherry đã được chứng minh có tác dụng giảm axit uric trong máu, giúp cho các bệnh nhân bị gout giảm các cơn đau. Về thành phần dinh dưỡng, loại quả quý này có chứa một hàm lượng rất cao vitamin A, gấp 19 lần lượng vitamin A có trong trái dâu tây hoặc các trái thuộc họ berry khác. Ngoài ra, loại quả này còn chứa vitamin C, E và các khoáng chất như magne, sắt, kali. Cherry có nhiều chủng loại, tuy nhiên chỉ có khoảng 15 loại là được trồng và thương mại phổ biến. Cuối tháng 11 là bắt đầu vào mùa cherry của Australia với các loại chín sớm như: Chelan, Rod, Brook. Các loại chín đầu mùa thường cho quả nhỏ cỡ 26-28 mm, màu đỏ tươi, chưa ngọt đậm và có giá tương đối cao, thường dành cho các khách hàng thích các sản phẩm đầu mùa và ăn cho đỡ nhớ. Các loại đặc biệt thường bắt đầu chín rộ và cho thu hoạch vào giữa tháng 12 bao gồm: Bing, Stella, Lapin, Sweetheart, Van, Lambert, riêng loại Rainier có màu vàng, tía đỏ thường được gọi là cherry vàng. Cherry được đóng trong các thùng carton chuyên dụng có trọng lượng net khoảng 2 hoặc 5 kg. Chúng được vận chuyển bằng đường hàng không, trong các khoang chứa hàng đặc biệt có điều khiển nhiệt độ lạnh 1-3 độ C trong suốt chuyến bay. Theo Vnexpress&nbsp;Cách bảo quản:&nbsp;Bảo quản trong tủ lạnh, ở nhiệt độ 9 độ C. Cherry tươi mới có thể để được trong thời gian dài.&nbsp;Cách sử dụng:&nbsp;Rửa sạch với nước trước khi ăn hoặc chế biến.</p>\r\n%%%<p>Lưu ý:&nbsp;Đơn vị niêm yết là 1kg</p>\r\n%%%1%%%1436524140%%%vi%%%1%%%,6,40,41,39,', 'vi', 0, NULL, NULL),
(109, 'Sầu Riêng Tiềng Giang', 'update', 'web_product', 1436954172, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values2%%%Sầu Riêng Tiềng Giang%%%sau-rieng-tieng-giang%%%MMTG-01%%%trai-cay/sau-rieng-tieng-giang.html%%%sau-rieng-tieng-giang.jpg%%%Sầu Riêng một loại trái cây phổ biến của phía Nam, là một trong những đặc sản của Tiền Giang%%%sầu riêng tiềng giang,sau rieng tieng giang%%%250000%%%0%%%<p>- Sầu Riêng một loại trái cây phổ biến của phía Nam, là một trong những đặc sản của Tiền Giang</p>\r\n\r\n<p>- Sầu Riêng có vị ngọt, hương thơm đặc trưng mà có lẽ khó ăn với nhiều người khi thưởng thức lần đầu. Tuy nhiên, khi đã ăn quen thì nó lại là loại quả tuyệt vời với nhiều người không chỉ bởi vị thơm ngon mà còn bởi tác dụng của loại quả này tới sức khỏe và làn da.</p>\r\n\r\n<p>- Trọng lượng hàng hóa nhận được thực tế có thể chênh lệch đôi chút và được ghi rõ trong hóa đơn.</p>\r\n%%%<p>Trọng lượng tối thiểu 1 quả: 2kg</p>\r\n\r\n<p>Cách bảo quản:&nbsp;Nơi khô ráo, thoáng mát.</p>\r\n%%%1%%%1432180140%%%vi%%%1%%%,6,40,41,39,', 'vi', 0, NULL, NULL),
(110, 'Nho Úc đỏ không hạt', 'update', 'web_product', 1436954176, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Nho Úc đỏ không hạt%%%nho-uc-do-khong-hat%%%MMHT-01%%%trai-cay/nho-uc-do-khong-hat.html%%%nho-khong-hat.jpg%%%Nho Úc đỏ không hạt cung cấp một hương vị rất ngon tinh tế, có nhiều giá trị dinh dưỡng. Khi ăn có vị ngọt đậm, tươi ngon, không chất bảo quản.%%%nho úc đỏ không hạt,nho uc do khong hat%%%200000%%%250000%%%<p>Nho Úc đỏ không hạt cung cấp một hương vị rất ngon tinh tế, có nhiều giá trị dinh dưỡng. Khi ăn có vị ngọt đậm, tươi ngon, không chất bảo quản.</p>\r\n%%%<p>Trọng lượng: 1kg</p>\r\n\r\n<p>Hạn sử dụng: 1 tuần</p>\r\n\r\n<p>Cách sử dụng: ăn ngay hoặc bảo quản nơi khô ráo</p>\r\n\r\n<p>Xuất xứ: Úc</p>\r\n\r\n<p>Nhà sản xuất: Espace Bourbon An Lạc</p>\r\n%%%1%%%1408460940%%%vi%%%1%%%,6,40,41,39,', 'vi', 0, NULL, NULL),
(111, 'Ổi Lê', 'update', 'web_product', 1436954183, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Ổi Lê%%%oi-le%%%%%%trai-cay/oi-le.html%%%oi-le.jpg%%%Ổi được trồng tại Tiền Giang. Giống ổi này trái tròn, có hình dạng gần giống như quả lê nhưng to gấp 2 đến 3 lần Ăn rất giòn và ngọt,vị thanh mát nhưng chứa rất nhiều nước,mùi thơm nồng nàn khiến ổi này càng ăn càng ngon.%%%ổi lê,oi le%%%0%%%%%%<p>Ổi được trồng tại Tiền Giang. Giống ổi này trái tròn, có hình dạng gần giống như quả lê nhưng to gấp 2 đến 3 lần Ăn rất giòn và ngọt,vị thanh mát nhưng chứa rất nhiều nước,mùi thơm nồng nàn khiến ổi này càng ăn càng ngon. Vì thế được mệnh danh là ỔI LÊ. Quả ổi của trang trại được bọc từ lúc còn bé bằng “ngón chân cái” cho đến khi thu hoạch. Vỏ quả sáng bong, khi chin có màu vàng nhạt trông bắt mắt. Khi ăn, cắn vào quả ổi sẽ cảm nhận là cùi dầy mọng nước, có mùi thơm nông. Ăn sâu vào trong cùi thịt có vị ngọt nhạt. Đặc điểm sản phẩm của trang trại hơn các sản phẩm Ổi Lê khác là hạt ổi mềm, ăn nhiều không có cảm giác chường bụng và bị táo</p>\r\n%%%<p>Giống ổi này trái tròn, có hình dạng gần giống như quả lê nhưng to gấp 2 đến 3 lần&nbsp;</p>\r\n\r\n<p>Ăn rất giòn và ngọt,vị thanh mát nhưng chứa rất nhiều nước,mùi thơm nồng nàn khiến ổi này càng ăn càng ngon.Vì thế được mệnh danh là ỔI LÊ.&nbsp;</p>\r\n\r\n<p>Trọng lượng đặt hàng tối thiểu 1kg</p>\r\n\r\n<p>Giá niêm yết là giá bán 1kg</p>\r\n%%%1%%%1436523900%%%vi%%%1%%%,6,40,41,39,', 'vi', 0, NULL, NULL),
(112, 'Dịch vụ chuyển phát nhanh Quốc tế', 'update', 'web_article', 1436954217, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values13%%%Dịch vụ chuyển phát nhanh Quốc tế%%%dich-vu-chuyen-phat-nhanh-quoc-te%%%tin-tuc-su-kien/dich-vu-chuyen-phat-nhanh-quoc-te.html%%%dich-vu-chuyen-phat-nhanh-quoc-te.jpg%%%Dịch vụ chuyển phát nhanh Quốc tế nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ%%%dịch vụ chuyển phát nhanh quốc tế,dich vu chuyen phat nhanh quoc te%%%<h2>TTP Express nhân tất cả các tài liệu hàng hóa đi các nơi trên thế giới. UY TÍN - ĐẢM BẢO - NHANH CHÓNG - GIÁ RẺ,&nbsp;chuyên cung cấp các loại&nbsp;hình dịch vụ và đa dạng nhằm đáp ứng nhu cầu tốt nhất cho toàn thể quý khách hàng.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ chuyển phát nhanh Quốc tế" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-quoc-te.jpg" style="width: 450px; height: 344px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>Dịch vụ chuyển phát nhanh quốc tế bao gồm:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Chuyển phát nhanh đi các nước trên thế giới</li>\r\n	<li>Chuyển phát nhanh chuyên tuyến :</li>\r\n</ol>\r\n\r\n<ul style="margin-left: 40px;">\r\n	<li>Korea</li>\r\n	<li>Hong Kong</li>\r\n	<li>Japan</li>\r\n	<li>Singapore</li>\r\n	<li>Malaysia&nbsp;</li>\r\n</ul>\r\n\r\n<ol start="3">\r\n	<li>Chuyển hàng quà biếu từ Mỹ về Việt Nam</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Gửi hàng từ Mỹ về Việt Nam</strong></span></p>\r\n\r\n<p><strong>Khách hàng tại USA muốn gửi hàng về Việt Nam</strong>, sẽ đến văn phòng nhận hàng của chúng tôi tại USA, tại đây khách hàng sẽ nhận được những hướng dẫn, điều khoản, điều kiện vận chuyển và giao hàng về Việt Nam cụ thể và tận tình.</p>\r\n\r\n<p><em><strong>Chúng tôi cung cấp dịch vụ chuyển hàng hóa từ Mỹ về Việt Nam</strong></em> trên toàn quốc, người thân của bạn dù ở bất kỳ địa phương, bất kỳ tỉnh thành nào đều có thể nhận hàng của bạn từ Mỹ.</p>\r\n\r\n<p>Với khách hàng gửi hàng từ Texas hoặc các khu vực khác của USA&nbsp; về Việt Nam&nbsp; hãy liên hệ với Văn phòng nhận hàng của chúng tôi tại Texas.</p>\r\n\r\n<p>Khách hàng chuyển hàng có thể chọn hình thức thanh toán tại USA hoặc tại Việt Nam.</p>\r\n\r\n<p>Với tiêu chí hoạt động: Nhanh chóng – chính xác và cạnh tranh. Nên quý khách có thể hoàn toàn yên tâm.</p>\r\n\r\n<p style="text-align: center;"><img alt="Gửi hàng từ Mỹ về Việt Nam - CPN Mỹ về Việt Nam" src="/public/images/articles/dich-vu-chuyen-phat-nhanh-quoc-te-2.jpg" style="width: 600px; height: 220px;" /></p>\r\n\r\n<p><span style="color:#0000FF;"><strong>Các mặt hàng nhận chuyển:</strong></span></p>\r\n\r\n<ol>\r\n	<li>Các loại chứng từ, hợp đồng, hồ sơ du học...</li>\r\n	<li>Quà tặng, quần áo, giày dép, mũ, nón….</li>\r\n	<li>Hàng mẫu, hàng hóa, hàng nặng...</li>\r\n	<li>Các loại thuốc: thuốc tây, thuốc Bắc, thuốc nam, thuốc đông y...</li>\r\n	<li>Thực phẩm: Tôm khô, cá khô, mực khô, cà phê, trà, bánh kẹo...</li>\r\n	<li>Dụng cụ làm nails: Kềm bấm, dầu gội đầu, mỹ phẩm...</li>\r\n	<li>Mặt hàng điện tử: Điện thoại, máy tính, máy đọc sách, các loại máy móc khác...</li>\r\n</ol>\r\n\r\n<p><span style="color:#0000FF;"><strong>Bảng giá chuyển phát nhanh quốc tế (attached file kèm theo áp dụng từ 01/06/2015)</strong></span></p>\r\n\r\n<p><em><strong>Phụ phí xăng dầu:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức phụ phí xăng dầu là 15% tính trên bảng cước quy định nối trên</li>\r\n	<li>Mức thu phụ phí xăng dầu sẽ thay đổi theo từng thời điểm công bố</li>\r\n</ul>\r\n\r\n<p><em><strong>Phụ phí vùng xa:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Mức thu phụ phí vung xa là 35% bưu gửi Quốc tế.</li>\r\n	<li>Phạm vi áp dụng: mức thu phụ phí vùng xâu vùng xa này được áp dụng đối với các bưu gửi <em><strong>chuyển phát nhanh quốc tế </strong></em>đến một số nước theo danh sách các nước áp dụng thu phụ phí vùng xa .</li>\r\n</ul>\r\n%%%0%%%1433929500%%%vi%%%1%%%,', 'vi', 0, NULL, NULL),
(113, 'Các dịch vụ gia tăng', 'update', 'web_article', 1436954227, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values12%%%Các dịch vụ gia tăng%%%cac-dich-vu-gia-tang%%%tin-tuc-su-kien/cac-dich-vu-gia-tang.html%%%cac-dich-vu-gia-tang.jpg%%%Các dịch vụ gia tăng của TTP Express CPN trong nước như: Dịch vụ bảo hiểm hàng hóa bưu gửi, dịch vụ phát hàng thu tiền (COD),...%%%các dịch vụ gia tăng,cac dich vu gia tang,CPN%%%<p><span style="color:#FF0000;"><strong>1. Dịch vụ bảo hiểm hàng hóa bưu gửi</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ&nbsp;bảo hiểm hàng hóa, bưu gửi&nbsp;là dịch vụ gia tăng</strong></em> đi kèm với dịch vụ vận chuyển trong đó người gửi được mua bảo hiểm cho bưu gửi của mình.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>Khi sử dụng dịch vụ bảo hiểm, ngoài cước vận chuyển người gửi phải chịu thêm một khoản phí bảo hiểm tương đương tỷ lệ mua bảo hiểm.</li>\r\n	<li>Trong quá trình vận chuyển, nếu xảy ra mất mát hoặc hư hại hàng hóa bưu gửi, người gửi sẽ được TTP Express bồi thường theo giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Đối với các bưu gửi là chứng từ; giá trị khai giá tối đa là 15.000.000 vnđ</li>\r\n	<li>Đối với các bưu gửi là hàng hóa, giá trị khai giá tối đa là 150.000.000 vnđ</li>\r\n	<li>Giá trị khai giá của hàng hóa bưu gửi không được lớn hơn quá 10% giá trị thực hoặc giá trị trên hóa đơn chứng từ đi kèm hàng hóa bưu gửi.</li>\r\n	<li>Dịch vụ bảo hiểm hàng hóa không được áp dụng cho các loại hàng hóa là thực phẩm, hàng đông lạnh và các loại hàng hóa đặc biệt khác.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Mức phí bảo hiểm:&nbsp;3%&nbsp;giá trị khai giá hàng hóa bưu gửi.</li>\r\n	<li>Mức bồi thường:&nbsp;&nbsp;100%&nbsp;giá trị khai giá của hàng hóa bưu gửi.</li>\r\n	<li>Thời gian bảo hiểm: bắt đầu từ thời điểm người gửi mua bảo hiểm đến khi kết thúc quá trình giao hàng hóa bưu gửi cho người nhận.</li>\r\n</ul>\r\n\r\n<p style="text-align: center;"><img alt="Các dịch vụ gia tăng của TTP Express CPN trong nước " src="/public/images/articles/cac-dich-vu-gia-tang.jpg" style="width: 461px; height: 284px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2.&nbsp;Dịch vụ phát hàng -&nbsp;thu tiền (COD)</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ phát hàng -&nbsp;thu tiền (Cash on Delivery – COD) </strong></em>là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát trong đó nhà vận chuyển được ủy thác thu hộ một khoản tiền nhất định do người gửi yêu cầu khi thực hiện việc phát bưu phẩm cho người nhận và hoàn trả lại số tiền đó cho người gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li><em><strong>TTP Express&nbsp;chỉ cung cấp dịch vụ COD</strong></em> tại trung tâm các tỉnh, thành phố nằm trong tuyến chính&nbsp;TTP Express.</li>\r\n	<li>Khi sử dụng dịch vụ COD khách hàng phải thanh toán các khoản cước sau:\r\n	<ul>\r\n		<li>Cước dịch vụ chuyển phát bưu gửi COD.</li>\r\n		<li>Cước phí dịch vụ COD.</li>\r\n		<li>Các khoản cước phí dịch vụ đặc biệt khác mà khách hàng lựa chọn như dịch vụ bảo hiểm, dịch vụ đóng gói, dịch vụ phát hỏa tốc…</li>\r\n	</ul>\r\n	</li>\r\n	<li>Khi sử dụng dịch vụ COD, khách hàng cần thông báo cho người nhận về việc ủy thác cho nhà vận chuyển thu hộ tiền hàng. TTP Express chỉ phát bưu gửi khi người nhận đã thanh toán tiền thu hộ. Nếu không thanh toán bưu gửi COD sẽ được TTP Express trả lại cho người gửi. Trong trường hợp này người gửi vẫn phải thanh toán đầy đủ các khoản cước phí như đã thỏa thuận ban đầu cộng thêm cước phí chuyển hoàn bưu gửi COD đó.</li>\r\n	<li>Mức tiền thu hộ tối đa cho một bưu gửi COD là 50.000.000đ ( năm mươi triệu đồng.)</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Giá cước dịch vụ thu hộ COD được áp dụng theo bảng giá của TTP Express hoặc theo sự thỏa thuận giữa hai bên.</li>\r\n	<li>Người gửi cần cung cấp đầy đủ thông tin của người nhận ( tên, địa chỉ, số điện thoại.. ) trên vận đơn của bưu gửi COD; các loại hóa đơn chứng từ đi kèm để làm cơ sở thu hộ tiền hàng.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>3.&nbsp;Dịch vụ đóng gói.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ đóng gói là dịch vụ gia tăng đi kèm với dịch vụ chuyển phát</strong></em> trong đó nhà vận chuyển thực hiện việc đóng gói hàng hóa bưu gửi của khách hàng theo quy chuẩn của nhà vận chuyển nhằm hạn chế các hư hỏng cơ học cho hàng hóa bưu gửi của khách hàng trong quá trình vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ đóng gói cho các hàng hóa bưu gửi được gửi qua TTP Express.</li>\r\n	<li>Dịch vụ đóng gói được áp dụng theo yêu cầu của khách hàng hoặc bắt buộc đối với các loại hàng hóa đặc biệt do yêu cầu của hãng vận chuyển.TTP Express có quyền từ chối nhận vận chuyển hàng hóa bưu gửi ( thuộc loại bắt buộc phải đóng gói ) nếu khách hàng không chấp nhận sử dụng dịch vụ đóng gói.</li>\r\n	<li>Đối với các hàng hóa bưu gửi sử dụng dịch vụ đóng gói, trọng lượng tính cước sẽ là trọng lượng sau khi đã đóng gói.</li>\r\n	<li>Khi sử dụng dịch vụ đóng gói, ngoài cước phí chính tính theo trọng lượng bưu phẩm, khách hàng phải chịu phí đóng gói tương đương phí nguyên vật liệu sử dụng để đóng gói. Chi phí này được quy định cụ thể trên báo giá của TTP Express và được thông báo cho khách hàng trước khi đóng gói.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Dịch vụ đóng gói bao gồm nhiều hình thức như đóng carton, xốp, gỗ, ván ép, nylon chống nước...Khách hàng có thể yêu cầu đóng gói cùng lúc nhiều hình thức khác nhau.</li>\r\n	<li>Dịch vụ đóng gói giúp hạn chế các hư hỏng cơ học trong quá trình vận chuyển, do đó không phải là dịch vụ bảo hiểm hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>&nbsp;4.&nbsp;Dịch vụ báo phát</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ báo phát là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát</strong></em> trong đó người gửi yêu cầu nhà vận chuyển chuyển trả lại cho người gửi phiếu giao hàng ( vận đơn ) có chữ ký và họ tên của người nhận bưu gửi.</span></p>\r\n\r\n<p><strong>- Quy định:</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ báo phát cho các vận đơn có địa chỉ người nhận thuộc các địa danh thu phát của TTP Express.</li>\r\n	<li>Thời gian trả báo phát lại cho người gửi phụ thuộc vào từng khu vực phát.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Phí dịch vụ báo phát là 5.000đ / vận đơn.</li>\r\n	<li>Dịch vụ báo phát áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>5.&nbsp;Dịch vụ kiểm đếm.</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:&nbsp;</strong><span style="line-height: 1.6em;"><em><strong>Dịch vụ kiểm đếm là dịch vụ gia tăng đi kèm với dịch vụ bưu chính chuyển phát </strong></em>trong đó nhà vận chuyển sẽ tiến hành kiểm đếm số lượng chi tiết của hàng hóa bưu gửi cùng với người gửi khi nhận và người nhận khi phát.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express chỉ cung cấp dịch vụ kiểm đếm về số lượng, chủng loại, tình trạng bên ngoài của hàng hóa bưu gửi. TTP Express không kiểm đếm về chất lượng hoặc quy cách hoạt động của hàng hóa bưu gửi. Trong trường hợp hàng hóa bưu gửi có những dấu hiệu bất thường sẽ được kê khai chi tiết trên biên bản kiểm đếm.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho các khách hàng trên phạm vi thu phát của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm được áp dụng cho tất cả các khách hàng sử dụng dịch vụ của TTP Express.</li>\r\n	<li>Dịch vụ kiểm đếm chỉ áp dụng cho các vận đơn có số lượng lớn hơn 100 đơn vị kiểm đếm.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng.</strong></p>\r\n\r\n<ul>\r\n	<li>Khi sử dụng dịch vụ kiểm đếm, ngoài cước phí vận chuyển tính theo khối lượng hàng hóa bưu gửi và các loại cước phí đặc biệt theo từng loại hình dịch vụ, người gửi phải chịu một khoản phí kiểm đếm tính theo từng đơn vị kiểm đếm.</li>\r\n	<li>Khi tiến hành kiểm đếm, TTP Express và khách hàng sẽ cùng nhau kiểm đếm và ký vào biên bản kê khai chi tiết số lượng kiểm đếm. Khi phát bưu gửi, TTP Êxpress sẽ cùng người nhận kiểm đếm và phát theo chi tiết số lượng và nội dung đã kê khai trên biên bản kiểm đếm.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>6. Dịch vụ thanh toán đầu nhận</strong></span></p>\r\n\r\n<p><strong>- Khái niệm:</strong>&nbsp;<span style="line-height: 1.6em;"><em><strong>Dịch vụ thanh toán đầu nhận (TTĐN)</strong></em> là một hình thức thanh toán khác của dịch vụ vận chuyển trong đó người nhận hàng hóa bưu gửi sẽ là người thanh toán 1 phần hoặc toàn bộ cước phí vận chuyển cho nhà vận chuyển.</span></p>\r\n\r\n<p><strong>- Quy định.</strong></p>\r\n\r\n<ol>\r\n	<li>TTP Express cung cấp dịch vụ TTĐN tại các khu vực thu phát của TTP Express.</li>\r\n	<li>Người nhận hàng hóa bưu gửi sử dụng dịch vụ TTĐN sẽ phải thanh toán toàn bộ cước phí tương ứng với các dịch vụ mà người gửi đã lựa chọn.</li>\r\n	<li>TTP Express sẽ chỉ phát hàng hóa bưu gửi sử dụng dịch vụ TTĐN cho người nhận khi chấp nhận thanh toán cước phí. Nếu người nhận không thanh toán cước phí, DHL sẽ hoàn bưu gửi lại cho người gửi. Trong trường hợp này, người gửi sẽ phải thanh toán toàn bộ cước phí của bưu gửi bao gồm cước phí chuyển phát gửi đi và cước phí chuyển hoàn về.</li>\r\n</ol>\r\n\r\n<p><strong>- Nội dung áp dụng:&nbsp;</strong><span style="line-height: 1.6em;">Cước phí các hàng hóa bưu gửi sử dụng dịch vụ TTĐN được tính theo bảng giá niêm yết tại thời điểm hiện tại của TTP Express hoặc theo sự thỏa thuận đối với từng khách hàng.</span></p>\r\n%%%0%%%1433928720%%%vi%%%1%%%,', 'vi', 0, NULL, NULL),
(114, 'Các loại hình dịch vụ chuyển phát nhanh trong nước', 'update', 'web_article', 1436954235, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values11%%%Các loại hình dịch vụ chuyển phát nhanh trong nước%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc%%%tin-tuc-su-kien/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.html%%%cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg%%%Các loại hình dịch vụ chuyển phát nhanh trong nước của TTP Express như: CPN thông thường, CPN hàng giá trị cao,...%%%các loại hình dịch vụ chuyển phát nhanh trong nước,cac loai hinh dich vu cpn%%%<p><span style="color:#FF0000;"><strong>1. Chuyển phát nhanh hàng thông thường</strong></span></p>\r\n\r\n<p>Khách hàng gửi trong khoảng thời gian từ&nbsp;8giờ&nbsp;đến&nbsp;17giờ30&nbsp;ngày hôm nay thì Người nhận của Quý khách sẽ nhận được từ 9giờ&nbsp;đến&nbsp;17giờ&nbsp;ngày hôm sau&nbsp;trong nội thành, nội thị, với khu vực ngoại thành, ngoại thị, thời gian phát tối đa là&nbsp;48 giờ.</p>\r\n\r\n<p><em>Ghi chú:&nbsp;</em>Tùy theo tính chất địa lý của từng khu vực thì thời gian phát có thể nhanh hoặc chậm hơn thời gian đã nêu ở trên trong khỏang&nbsp;24giờ.</p>\r\n\r\n<p style="text-align: center;"><img alt="Các loại hình dịch vụ chuyển phát nhanh trong nước" src="/public/images/articles/cac-loai-hinh-dich-vu-chuyen-phat-nhanh-trong-nuoc.jpg" style="width: 359px; height: 282px;" /></p>\r\n\r\n<p><span style="color:#FF0000;"><strong>2. Chuyển phát nhanh hàng giá trị cao</strong></span></p>\r\n\r\n<p>Chuyển phát nhanh hàng giá trị cao, hồ sơ thầu, vaccine, hàng lạnh</p>\r\n\r\n<p>Đây là những mặt hàng có mức bồi thường cao (lên đến 100% giá trị) khi xảy ra mất mát, hư hỏng,</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>3. Chuyển phát nhanh hỏa tốc</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh hỏa tốc là gói dịch vụ đặc biệt của&nbsp;TTP Express</strong></em> trong đó hàng hóa bưu gửi của khách hàng sẽ được phát đến tay người nhận trong thời gian sớm nhất được thỏa thuận trước giữa&nbsp;TTP Express&nbsp;và khách hàng.</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được áp dụng cho tất cả các khách hàng trên phạm vi thu phát của TTP Express</p>\r\n\r\n<p>- <strong>Dịch vụ chuyển phát nhanh hỏa tốc</strong> được phân chia làm 2 loại: hỏa tốc nội thành và hỏa tốc đi tỉnh.</p>\r\n\r\n<ul>\r\n	<li><em>Hỏa tốc nội thành:</em> khi sử dụng dịch vụ chuyển hỏa tốc nội thành, bưu gửi của quý khách sẽ được&nbsp;TTP Express&nbsp;phát đến tay người nhận sau 2 đến 3h tại các quận nội thành của Hà Nội, Hồ Chí Minh, Đà Nẵng</li>\r\n	<li><em>Hỏa tốc đi tỉnh:&nbsp;</em>TTP Express&nbsp;luôn nỗ lực để đáp ứng một cách tốt nhất mọi yêu cầu về chuyển phát của khách hàng, nhất là đối với các nhu cầu chuyển phát cấp thiết. Do đó khi có nhu cầu gửi hỏa tốc đi bất kỳ nơi nào, khách hàng hãy gọi tới&nbsp;TTP Express&nbsp;để nhận được tư vấn về giải pháp chuyển pháp phù hợp nhất.Chúng tôi tôn trọng mọi yêu cầu của khách hàng và luôn nỗ lực đặt lợi ích của khách hàng lên hàng đầu.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong>4. Chuyển phát nhanh trong ngày</strong></span></p>\r\n\r\n<p><em><strong>Dịch vụ chuyển phát nhanh trong ngày</strong></em> là gói dịch vụ đặc biệt trong đó TTP Express cam kết phát hàng hóa bưu gửi của khách hàng đến tay người nhận ngay trong ngày khách hàng gửi. TTP Express sẽ cung cấp dịch vụ chuyển phát nhanh trong ngày cho từng yêu cầu cụ thể khi có sự thỏa thuận giữa TTP Express và khách hàng.</p>\r\n%%%0%%%1433928060%%%vi%%%1%%%,', 'vi', 0, NULL, NULL),
(115, 'Dịch vụ làm thủ tục xuất nhập khẩu', 'update', 'web_article', 1436954248, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values10%%%Dịch vụ làm thủ tục xuất nhập khẩu%%%dich-vu-lam-thu-tuc-xuat-nhap-khau%%%tin-tuc-su-kien/dich-vu-lam-thu-tuc-xuat-nhap-khau.html%%%dich-vu-lam-thu-tuc-xuat-nhap-khau.jpg%%%Dịch vụ làm thủ tục xuất nhập khẩu TTP Express nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu, đội ngũ nhân viên dày dặn kinh nghiệm%%%dịch vụ làm thủ tục xuất nhập khẩu,dich vu lam thu tuc xuat nhap khau%%%<h2>Dịch vụ xuất nhập khẩu là tổng hợp các nghiệp vụ liên quan đến hoạt động ngoại thương, ngân hàng, hải quan, vận tải, bảo hiểm… mà bên nhận làm dịch vụ đứng ra đảm nhận và thực hiện thay cho bên khoán dịch vụ.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Dịch vụ làm thủ tục xuất nhập khẩu" src="/public/images/articles/dich-vu-lam-thu-tuc-xuat-nhap-khau.jpg" style="width: 500px; height: 312px;" /></p>\r\n\r\n<p>Ngày nay, nếu như việc toàn cầu hóa kinh tế thế giới là một con thuyền tiến ra biển đông thì xuất nhập khẩu đóng vai trò là mũi thuyền, là bánh lái, là nhịp cầu nối để gắn kết các quốc gia lại giao thương với nhau.</p>\r\n\r\n<p>Và đã ra sân chơi với bạn bè trên thế giới, để không bị thua thiệt, không bị tổn thất vì thiếu kiến thức thì phải hiểu luật, nắm những qui tắc cơ bản, qui tắc chung mà các quốc gia trên thế giới đã đề ra.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu ra đời nhằm giải quyết và thảo gỡ các vướng mắc trên.</strong></em> Sứ mệnh của dịch vụ xuất nhập khẩu là tìm tòi, học hỏi , nghiên cứu và áp dụng vào thực tế để hoàn thiện các thủ tục, hủ tục phù hợp với quy định luật pháp của Nhà nước, từ đó đưa nguồn hàng từ Việt Nam đến các quốc gia trên thế giới, đồng thời cũng là nơi tiếp nhận các nguồn hàng từ các nơi trên thế giới đổ về Việt Nam&nbsp;đây là yếu tố rất quan trọng trong công cuộc phát triển kinh tế của nước nhà.</p>\r\n\r\n<p><em><strong>Dịch vụ xuất nhập khẩu luôn là người bạn đồng hành cùng doanh nghiệp</strong></em>, hỗ trợ doanh nghiệp vượt qua các khó khăn, rào cản để có thể tiếp cận với thị trường kinh tế thế giới một cách dễ dàng hơn, anh tâm hơn và nhanh chóng hơn.</p>\r\n\r\n<p><span style="color:#FF0000;"><strong>1. Dịch vụ chứng từ XNK</strong></span></p>\r\n\r\n<p><em><strong>Nhận làm hồ sơ chứng từ trọn gói cho các dịch vụ xuất nhập khẩu</strong></em>. Với đội ngũ nhân viên dày dặn kinh nghiệm, độ bao phủ rộng khắp các cơ quan hữu quan như: Hải Quan, Kiểm dịch thực vật, chứng nhận xuất xứ, Giám định chất lượng hàng hóa…. Chúng tôi cam kết sẽ hoàn thiện bộ chứng từ nhanh nhất trong thời gian sớm nhất .</p>\r\n\r\n<ul>\r\n	<li>Thủ tục mở tờ khai HQ</li>\r\n	<li>Xin giấy chứng nhận kiểm dịch thực vật</li>\r\n	<li>Xin giấy chứng nhận xuất xứ hàng hóa (C/O)</li>\r\n	<li>Xin giấy chứng nhận giám dịnh hàng hóa.</li>\r\n</ul>\r\n\r\n<p><span style="color:#FF0000;"><strong><span style="line-height: 1.6em;">2. Dịch vụ khai thuê Hải Quan</span></strong></span></p>\r\n\r\n<p><strong>Dịch vụ khai báo Hải quan</strong> là một trong những khâu rất quan trọng trong quá trình xuất – Nhập khẩu hàng hóa, việc khai báo Hải quan đòi hỏi sự linh hoạt của nhân viên giàu kinh nghiệm để xữ lý những vấn đề phát sinh.</p>\r\n\r\n<p><em><strong>Chúng tôi nhận khai báo&nbsp;Hải quan hàng xuất nhập khẩu</strong></em> gồm hàng nguyên tàu, hàng nguyên container, hàng lẽ, hàng rời, với đa dạng các mặt hàng như: Nông sản, hàng đông lạnh, thủy hải sản, hàng gia dụng, trang trí nội thất, trang thiết bị, máy móc...</p>\r\n\r\n<p style="text-align: center;"><span style="color:#0000FF;"><strong>&nbsp;CAM KẾT HOÀN THÀNH THỦ TỤC HẢI QUAN TRONG VÒNG MỘT NGÀY KÍ&nbsp;ĐÃ TẬP KẾT ĐỦ HÀNG VÀ CHỨNG TỪ.</strong></span></p>\r\n%%%0%%%1433926020%%%vi%%%1%%%,', 'vi', 0, NULL, NULL),
(116, 'Cherry Mỹ', 'update', 'web_product', 1437117544, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values4%%%Cherry Mỹ%%%cherry-my%%%%%%gao-luong-thuc/cherry-my.html%%%cherry-my.jpg%%%Cherry có màu đỏ thẫm, mềm, nhiều xơ và mọng nước. Hương vị của cherry quả thật có một không hai, với vị ngọt thanh dịu pha chút chua tự nhiên khiến ai đã một lần thử qua chắc hẳn sẽ khó quên được. %%%cherry mỹ,cherry my%%%0%%%%%%<p>Cherry (quả Anh Đào) là một loại quả có thành phần dinh dưỡng cao và công dụng giải độc rất tốt. Quả Cherry tròn, vị ngọt rất ngon, màu đỏ xậm (màu càng xậm vị càng ngọt). Một số công dụng của Cherry: - Chống sưng và ngăn ngừa Gout. - Giảm cholesterol trong máu. - Chứa một số họat tính bảo vệ cơ thể chống ung thư. Cụ thể "2 chất trong cherry là isoquerxitrin và quercetin đã được xác định là có khả năng chống sự tăng trưởng của các tế bào ung thư ruột già". -... Về thành phần dinh dưỡng, cherry - loại quả quý này có chứa một hàm lượng vitamin A rất cao, gấp 19 lần lượng vitamin A có trong trái dâu tây hoặc các trái thuộc họ berry khác. Nếu như cherry chín được thu hoạch vào mùa hè ở Mỹ từ tháng 5 tới tháng 9, thì tại Australia mùa thu hoạch cherry sẽ bắt đầu từ cuối tháng 11 đến giữa tháng 2 vì đất nước này nằm ở nam bán cầu. Nhiều nhà khoa học đã không tiếc lời ngợi khen cherry và gọi nó là “Siêu trái cây” – Super fruit. Một số các nghiên cứu khoa học đã kết luận loại quả này có tác dụng như: giảm rủi ro về tim mạch, ngăn ngừa ung thư, tiểu đường và ngăn ngừa khả năng giảm trí nhớ… Chất nước màu đỏ sậm chứa trong cherry chứa tới 17 loại chất. Trong đó, có một thành phần chống oxy hóa rất mạnh có tên khoa học là anthocyanins. Các thành phần này xây dựng một hệ thống bảo vệ mạnh mẽ giúp cơ thể làm chậm tốc độ lão hóa và chống lại các rủi ro của bệnh ung thư. Bên cạnh đó, cherry đã được chứng minh có tác dụng giảm axit uric trong máu, giúp cho các bệnh nhân bị gout giảm các cơn đau. Về thành phần dinh dưỡng, loại quả quý này có chứa một hàm lượng rất cao vitamin A, gấp 19 lần lượng vitamin A có trong trái dâu tây hoặc các trái thuộc họ berry khác. Ngoài ra, loại quả này còn chứa vitamin C, E và các khoáng chất như magne, sắt, kali. Cherry có nhiều chủng loại, tuy nhiên chỉ có khoảng 15 loại là được trồng và thương mại phổ biến. Cuối tháng 11 là bắt đầu vào mùa cherry của Australia với các loại chín sớm như: Chelan, Rod, Brook. Các loại chín đầu mùa thường cho quả nhỏ cỡ 26-28 mm, màu đỏ tươi, chưa ngọt đậm và có giá tương đối cao, thường dành cho các khách hàng thích các sản phẩm đầu mùa và ăn cho đỡ nhớ. Các loại đặc biệt thường bắt đầu chín rộ và cho thu hoạch vào giữa tháng 12 bao gồm: Bing, Stella, Lapin, Sweetheart, Van, Lambert, riêng loại Rainier có màu vàng, tía đỏ thường được gọi là cherry vàng. Cherry được đóng trong các thùng carton chuyên dụng có trọng lượng net khoảng 2 hoặc 5 kg. Chúng được vận chuyển bằng đường hàng không, trong các khoang chứa hàng đặc biệt có điều khiển nhiệt độ lạnh 1-3 độ C trong suốt chuyến bay. Theo Vnexpress&nbsp;Cách bảo quản:&nbsp;Bảo quản trong tủ lạnh, ở nhiệt độ 9 độ C. Cherry tươi mới có thể để được trong thời gian dài.&nbsp;Cách sử dụng:&nbsp;Rửa sạch với nước trước khi ăn hoặc chế biến.</p>\r\n%%%<p>Lưu ý:&nbsp;Đơn vị niêm yết là 1kg</p>\r\n%%%1%%%1436524140%%%vi%%%1%%%,36,6,40,41,39,', 'vi', 0, NULL, NULL),
(117, 'Right', 'status', 'web_menu_position', 1437117792, 'admin', '0', 'vi', 0, NULL, NULL),
(118, 'Sản phẩm nổi bật', 'update', 'web_menu', 1437117808, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values36%%%Sản phẩm nổi bật%%%san-pham-noi-bat%%%san-pham-noi-bat/%%%%%%Sản phẩm nổi bật%%%Sản phẩm nổi bật%%%sản phẩm nổi bật,san pham noi bat%%%0%%%0%%%0%%%vi%%%1%%%3%%%,4,', 'vi', 0, NULL, NULL),
(119, 'Nông sản', 'update', 'web_menu', 1437117952, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values6%%%Nông sản%%%nong-san%%%nong-san/%%%%%%Nông sản - Việt Úc Thái Dương%%%Nông sản - Việt Úc Thái Dương%%%nông sản,nong san%%%0%%%3%%%0%%%vi%%%1%%%3%%%,2,', 'vi', 0, NULL, NULL),
(120, 'Thư viện', 'update', 'web_menu', 1437118362, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values7%%%Thư viện%%%thu-vien%%%thu-vien/%%%%%%Thư viện%%%Thư viện%%%thư viện,thu vien%%%0%%%4%%%0%%%vi%%%1%%%2%%%,2,', 'vi', 0, NULL, NULL),
(121, 'Sản phẩm nổi bật', 'update', 'web_menu', 1437118368, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values36%%%Sản phẩm nổi bật%%%san-pham-noi-bat%%%san-pham-noi-bat/%%%%%%Sản phẩm nổi bật%%%Sản phẩm nổi bật%%%sản phẩm nổi bật,san pham noi bat%%%0%%%0%%%0%%%vi%%%1%%%3%%%,5,', 'vi', 0, NULL, NULL),
(122, 'Sản phẩm nổi bật', 'update', 'web_menu', 1437118379, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values36%%%Sản phẩm nổi bật%%%san-pham-noi-bat%%%san-pham-noi-bat/%%%%%%Sản phẩm nổi bật%%%Sản phẩm nổi bật%%%sản phẩm nổi bật,san pham noi bat%%%0%%%0%%%0%%%vi%%%1%%%3%%%,5,6,', 'vi', 0, NULL, NULL),
(123, 'Hoạt động 1', 'update', 'web_photo', 1437118667, 'admin', '`id`,`name`,`img`,`order`,`lang`,`status`,`menu_id`fields%%%values1%%%Hoạt động 1%%%1.jpg%%%1%%%vi%%%1%%%,27,', 'vi', 0, NULL, NULL),
(124, 'Hoạt động 1', 'update', 'web_photo', 1437118675, 'admin', '`id`,`name`,`img`,`order`,`lang`,`status`,`menu_id`fields%%%values1%%%Hoạt động 1%%%1.jpg%%%1%%%vi%%%1%%%,7,', 'vi', 0, NULL, NULL);
INSERT INTO `web_logs` (`id`, `name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`, `date_restore`, `user_restore`) VALUES
(125, 'Hoạt động 2', 'update', 'web_photo', 1437118690, 'admin', '`id`,`name`,`img`,`order`,`lang`,`status`,`menu_id`fields%%%values3%%%Hoạt động 2%%%2.jpg%%%2%%%vi%%%1%%%,27,', 'vi', 0, NULL, NULL),
(126, 'Hoạt động 3', 'update', 'web_photo', 1437118697, 'admin', '`id`,`name`,`img`,`order`,`lang`,`status`,`menu_id`fields%%%values4%%%Hoạt động 3%%%3.jpg%%%3%%%vi%%%1%%%,27,', 'vi', 0, NULL, NULL),
(127, 'Hoạt động 3', 'update', 'web_photo', 1437118716, 'admin', '`id`,`name`,`img`,`order`,`lang`,`status`,`menu_id`fields%%%values4%%%Hoạt động 3%%%3.gif%%%3%%%vi%%%1%%%,27,', 'vi', 0, NULL, NULL),
(128, '4', 'create', 'web_photo', 1437118731, 'admin', '', 'vi', 0, NULL, NULL),
(129, '4', 'update', 'web_photo', 1437118742, 'admin', '`id`,`name`,`img`,`order`,`lang`,`status`,`menu_id`fields%%%values7%%%4%%%4.jpg%%%0%%%vi%%%1%%%,7,', 'vi', 0, NULL, NULL),
(130, 'Nho Mỹ', 'create', 'web_photo', 1437118758, 'admin', '', 'vi', 0, NULL, NULL),
(131, 'Nho Mỹ', 'update', 'web_photo', 1437118769, 'admin', '`id`,`name`,`img`,`order`,`lang`,`status`,`menu_id`fields%%%values8%%%Nho Mỹ%%%5.jpg%%%5%%%vi%%%1%%%,7,', 'vi', 0, NULL, NULL),
(132, 'Nho Mỹ', 'create', 'web_photo', 1437118778, 'admin', '', 'vi', 0, NULL, NULL),
(133, 'Rau bó xôi', 'update', 'web_photo', 1437118819, 'admin', '`id`,`name`,`img`,`order`,`lang`,`status`,`menu_id`fields%%%values3%%%Rau bó xôi%%%2.jpg%%%2%%%vi%%%1%%%,27,', 'vi', 0, NULL, NULL),
(134, 'Số video / trang', 'status', 'web_config', 1437118833, 'admin', '1', 'vi', 0, NULL, NULL),
(135, 'Số photo / trang', 'update', 'web_config', 1437118838, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values7%%%Số photo / trang%%%limit_3%%%10%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(136, 'Số photo / trang', 'update', 'web_config', 1437118851, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values7%%%Số photo / trang%%%limit_3%%%3%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(137, 'Số SP / trang', 'update', 'web_config', 1437118866, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values6%%%Số SP / trang%%%limit_2%%%10%%%12%%%vi%%%1', 'vi', 0, NULL, NULL),
(138, 'Số tin / trang', 'update', 'web_config', 1437118924, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values5%%%Số tin / trang%%%limit_1%%%10%%%13%%%vi%%%1', 'vi', 0, NULL, NULL),
(139, 'Số photo / trang', 'update', 'web_config', 1437119257, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values7%%%Số photo / trang%%%limit_3%%%12%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(140, 'Videos number / page', 'status', 'web_config', 1437119312, 'admin', '1', 'en', 0, NULL, NULL),
(141, 'Product number / page', 'status', 'web_config', 1437119317, 'admin', '0', 'en', 0, NULL, NULL),
(142, 'Số tin / trang', 'update', 'web_config', 1437119327, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values5%%%Số tin / trang%%%limit_1%%%5%%%13%%%vi%%%1', 'vi', 0, NULL, NULL),
(143, 'Số video / trang', 'update', 'web_config', 1437119336, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values8%%%Số video / trang%%%limit_4%%%10%%%10%%%vi%%%0', 'vi', 0, NULL, NULL),
(144, 'Số SP / trang', 'update', 'web_config', 1437119342, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values6%%%Số SP / trang%%%limit_2%%%12%%%12%%%vi%%%1', 'vi', 0, NULL, NULL),
(145, 'Số photo / trang', 'update', 'web_config', 1437119349, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values7%%%Số photo / trang%%%limit_3%%%18%%%11%%%vi%%%1', 'vi', 0, NULL, NULL),
(146, 'News number / page', 'update', 'web_config', 1437119362, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values16%%%News number / page%%%limit_1%%%6%%%10%%%en%%%1', 'en', 0, NULL, NULL),
(147, 'Product number / page', 'update', 'web_config', 1437119368, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values17%%%Product number / page%%%limit_2%%%10%%%11%%%en%%%1', 'en', 0, NULL, NULL),
(148, 'Photos number / page', 'update', 'web_config', 1437119374, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values18%%%Photos number / page%%%limit_3%%%12%%%12%%%en%%%1', 'en', 0, NULL, NULL),
(149, 'Facebook', 'delete', 'web_config', 1437119387, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values33%%%Facebook%%%facebook%%%https://www.facebook.com/HocNauAnTot%%%9%%%en%%%1', 'en', 0, NULL, NULL),
(150, 'Facebook', 'delete', 'web_config', 1437119391, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values34%%%Facebook%%%facebook%%%https://www.facebook.com/HocNauAnTot%%%9%%%vi%%%1', 'vi', 0, NULL, NULL),
(151, 'Yahoo', 'update', 'web_config', 1437119417, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values24%%%Yahoo%%%yahoo%%%hieu_nhan1%%%8%%%en%%%1', 'en', 0, NULL, NULL),
(152, 'Copyright', 'update', 'web_config', 1437119429, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values20%%%Copyright%%%copyright%%%Copyright © 2015 by TTPEXPRESS.COM%%%6%%%en%%%1', 'en', 0, NULL, NULL),
(153, 'Email', 'update', 'web_config', 1437119441, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values21%%%Email%%%email%%%info@ttpexpress.com%%%5%%%en%%%1', 'en', 0, NULL, NULL),
(154, 'Telephone', 'update', 'web_config', 1437119458, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values22%%%Telephone%%%tel%%%+84 8 3666 8899%%%3%%%en%%%1', 'en', 0, NULL, NULL),
(155, 'Fax', 'status', 'web_config', 1437119463, 'admin', '1', 'en', 0, NULL, NULL),
(156, 'Fax', 'update', 'web_config', 1437119468, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values25%%%Fax%%%fax%%%+84 8 3666 8800%%%4%%%en%%%0', 'en', 0, NULL, NULL),
(157, 'Fax', 'update', 'web_config', 1437119474, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values14%%%Fax%%%fax%%%+84 8 3666 8800%%%4%%%vi%%%1', 'vi', 0, NULL, NULL),
(158, 'Address', 'update', 'web_config', 1437119497, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values26%%%Address%%%address%%%114/2 Yen The, Ward 2, District Tan Binh, HCM City, Vietnam%%%2%%%en%%%1', 'en', 0, NULL, NULL),
(159, 'Site name', 'update', 'web_config', 1437119562, 'admin', '`id`,`name`,`name_var`,`value`,`order`,`lang`,`status`fields%%%values28%%%Site name%%%sitename%%%Công Ty TNHH dịch vụ chuyển phát nhanh TTP%%%1%%%en%%%1', 'en', 0, NULL, NULL),
(160, 'Latest news', 'update', 'web_menu', 1437119614, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values34%%%Latest news%%%%%%%%%%%%Latest news%%%%%%latest news,latest news%%%0%%%0%%%0%%%en%%%1%%%2%%%,4,', 'en', 0, NULL, NULL),
(161, 'Home', 'update', 'web_menu', 1437119645, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values10%%%Home%%%home%%%http://localhost/all/ttpexpress/?lang=en%%%%%%TTP express%%%Home%%%Home%%%0%%%1%%%0%%%en%%%1%%%1%%%,2,', 'en', 0, NULL, NULL),
(162, 'Our-commitment', 'delete', 'web_menu', 1437119659, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values30%%%Our-commitment%%%%%%javascript:;%%%%%%Our commitment%%%Adipisicing elit sed do-\r\nEiusmod tempor-\r\nLorem ipsum dolor sit amet-\r\nConse ctetur-%%%our commitment,our commitment%%%10%%%1%%%0%%%en%%%1%%%2%%%,9,', 'en', 0, NULL, NULL),
(163, 'Comprehensive-services', 'delete', 'web_menu', 1437119660, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values31%%%Comprehensive-services%%%%%%javascript:;%%%%%%Comprehensive services%%%Lorem ipsum dolor sit amet-\r\nConse ctetur-\r\nAdipisicing elit sed do-\r\nEiusmod tempor-%%%comprehensive services,comprehensive services%%%10%%%2%%%0%%%en%%%1%%%2%%%,9,', 'en', 0, NULL, NULL),
(164, 'Keys-To success', 'delete', 'web_menu', 1437119661, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values32%%%Keys-To success%%%%%%javascript:;%%%%%%Keys To success%%%Lorem ipsum dolor sit amet-\r\nConse ctetur-\r\nAdipisicing elit sed do-\r\nEiusmod tempor-%%%keys to success,keys to success%%%10%%%3%%%0%%%en%%%1%%%2%%%,9,', 'en', 0, NULL, NULL),
(165, 'Benefits of full-Truckload shipping', 'delete', 'web_menu', 1437119662, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values33%%%Benefits of full-Truckload shipping%%%%%%javascript:;%%%%%%Benefits of full truckload shipping%%%Lorem ipsum dolor sit amet-\r\nConse ctetur-\r\nAdipisicing elit sed do-\r\nEiusmod tempor-%%%benefits of full truckload shipping,benefits of full truckload shipping%%%10%%%4%%%0%%%en%%%1%%%2%%%,9,', 'en', 0, NULL, NULL),
(166, 'Slider home', 'update', 'web_slider_banner', 1437119709, 'admin', '`id`,`name`,`img`,`url`,`info`,`order`,`lang`,`status`,`position_id`,`menu_id`fields%%%values9%%%Slider home%%%slider-home.jpg%%%javascript:;%%%%%%1%%%en%%%1%%%1%%%,10,', 'en', 0, NULL, NULL),
(167, 'Donec tempor libero 2', 'update', 'web_article', 1437119737, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values7%%%Donec tempor libero 2%%%donec-tempor-libero-2%%%news/donec-tempor-libero-2.html%%%img-1.jpg%%%Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim.%%%donec tempor libero,donec tempor libero%%%<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n%%%0%%%1433567460%%%en%%%1%%%,34,10,29,', 'en', 0, NULL, NULL),
(168, 'Donec tempor libero', 'update', 'web_article', 1437119750, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`description`,`tags`,`content`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values8%%%Donec tempor libero%%%donec-tempor-libero%%%news/donec-tempor-libero.html%%%img-2.jpg%%%Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim.%%%donec tempor libero,donec tempor libero%%%<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n%%%0%%%1433308320%%%en%%%1%%%,34,10,29,', 'en', 0, NULL, NULL),
(169, 'Fax', 'status', 'web_config', 1437119768, 'admin', '0', 'en', 0, NULL, NULL),
(170, 'Fax', 'status', 'web_config', 1437119772, 'admin', '0', 'vi', 0, NULL, NULL),
(171, 'Hình ảnh 1', 'update', 'web_photo', 1437119807, 'admin', '`id`,`name`,`img`,`order`,`lang`,`status`,`menu_id`fields%%%values5%%%Hình ảnh 1%%%img-1.jpg%%%1%%%en%%%1%%%,28,', 'en', 0, NULL, NULL),
(172, 'Hình ảnh 2', 'update', 'web_photo', 1437119815, 'admin', '`id`,`name`,`img`,`order`,`lang`,`status`,`menu_id`fields%%%values6%%%Hình ảnh 2%%%img-2.jpg%%%2%%%en%%%1%%%,28,', 'en', 0, NULL, NULL),
(173, 'Services', 'update', 'web_menu', 1437120134, 'admin', '`id`,`name`,`name_alias`,`url`,`img`,`title`,`description`,`tags`,`parent`,`order`,`other`,`lang`,`status`,`type_id`,`position_id`fields%%%values12%%%Services%%%services%%%services/%%%%%%Services%%%Services%%%Services%%%0%%%3%%%0%%%en%%%1%%%2%%%,2,', 'en', 0, NULL, NULL),
(174, 'Nho Úc đỏ không hạt', 'update', 'web_product', 1437120781, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Nho Úc đỏ không hạt%%%nho-uc-do-khong-hat%%%MMHT-01%%%trai-cay/nho-uc-do-khong-hat.html%%%nho-khong-hat.jpg%%%Nho Úc đỏ không hạt cung cấp một hương vị rất ngon tinh tế, có nhiều giá trị dinh dưỡng. Khi ăn có vị ngọt đậm, tươi ngon, không chất bảo quản.%%%nho úc đỏ không hạt,nho uc do khong hat%%%200000%%%250000%%%<p>Nho Úc đỏ không hạt cung cấp một hương vị rất ngon tinh tế, có nhiều giá trị dinh dưỡng. Khi ăn có vị ngọt đậm, tươi ngon, không chất bảo quản.</p>\r\n%%%<p>Trọng lượng: 1kg</p>\r\n\r\n<p>Hạn sử dụng: 1 tuần</p>\r\n\r\n<p>Cách sử dụng: ăn ngay hoặc bảo quản nơi khô ráo</p>\r\n\r\n<p>Xuất xứ: Úc</p>\r\n\r\n<p>Nhà sản xuất: Espace Bourbon An Lạc</p>\r\n%%%1%%%1408460940%%%vi%%%1%%%,36,6,40,41,39,', 'vi', 0, NULL, NULL),
(175, 'Nho Úc đỏ không hạt', 'update', 'web_product', 1437120869, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values1%%%Nho Úc đỏ không hạt%%%nho-uc-do-khong-hat%%%MMHT-01%%%trai-cay/nho-uc-do-khong-hat.html%%%nho-khong-hat.jpg%%%Nho Úc đỏ không hạt cung cấp một hương vị rất ngon tinh tế, có nhiều giá trị dinh dưỡng. Khi ăn có vị ngọt đậm, tươi ngon, không chất bảo quản.%%%nho úc đỏ không hạt,nho uc do khong hat%%%200000%%%250000%%%<p>Nho Úc đỏ không hạt cung cấp một hương vị rất ngon tinh tế, có nhiều giá trị dinh dưỡng. Khi ăn có vị ngọt đậm, tươi ngon, không chất bảo quản.</p>\r\n%%%<p>Trọng lượng: 1kg</p>\r\n\r\n<p>Hạn sử dụng: 1 tuần</p>\r\n\r\n<p>Cách sử dụng: ăn ngay hoặc bảo quản nơi khô ráo</p>\r\n\r\n<p>Xuất xứ: Úc</p>\r\n\r\n<p>Nhà sản xuất: Espace Bourbon An Lạc</p>\r\n%%%1%%%1408547340%%%vi%%%1%%%,36,6,40,41,39,', 'vi', 0, NULL, NULL),
(176, 'Ổi Lê', 'update', 'web_product', 1437120901, 'admin', '`id`,`name`,`name_alias`,`code`,`url`,`img`,`description`,`tags`,`price`,`price_cost`,`content`,`more`,`other`,`datetime`,`lang`,`status`,`menu_id`fields%%%values3%%%Ổi Lê%%%oi-le%%%%%%trai-cay/oi-le.html%%%oi-le.jpg%%%Ổi được trồng tại Tiền Giang. Giống ổi này trái tròn, có hình dạng gần giống như quả lê nhưng to gấp 2 đến 3 lần Ăn rất giòn và ngọt,vị thanh mát nhưng chứa rất nhiều nước,mùi thơm nồng nàn khiến ổi này càng ăn càng ngon.%%%ổi lê,oi le%%%0%%%%%%<p>Ổi được trồng tại Tiền Giang. Giống ổi này trái tròn, có hình dạng gần giống như quả lê nhưng to gấp 2 đến 3 lần Ăn rất giòn và ngọt,vị thanh mát nhưng chứa rất nhiều nước,mùi thơm nồng nàn khiến ổi này càng ăn càng ngon. Vì thế được mệnh danh là ỔI LÊ. Quả ổi của trang trại được bọc từ lúc còn bé bằng “ngón chân cái” cho đến khi thu hoạch. Vỏ quả sáng bong, khi chin có màu vàng nhạt trông bắt mắt. Khi ăn, cắn vào quả ổi sẽ cảm nhận là cùi dầy mọng nước, có mùi thơm nông. Ăn sâu vào trong cùi thịt có vị ngọt nhạt. Đặc điểm sản phẩm của trang trại hơn các sản phẩm Ổi Lê khác là hạt ổi mềm, ăn nhiều không có cảm giác chường bụng và bị táo</p>\r\n%%%<p>Giống ổi này trái tròn, có hình dạng gần giống như quả lê nhưng to gấp 2 đến 3 lần&nbsp;</p>\r\n\r\n<p>Ăn rất giòn và ngọt,vị thanh mát nhưng chứa rất nhiều nước,mùi thơm nồng nàn khiến ổi này càng ăn càng ngon.Vì thế được mệnh danh là ỔI LÊ.&nbsp;</p>\r\n\r\n<p>Trọng lượng đặt hàng tối thiểu 1kg</p>\r\n\r\n<p>Giá niêm yết là giá bán 1kg</p>\r\n%%%1%%%1436523900%%%vi%%%1%%%,36,6,40,41,39,', 'vi', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu`
--

CREATE TABLE IF NOT EXISTS `web_menu` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_alias` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu`
--

INSERT INTO `web_menu` (`id`, `name`, `name_alias`, `url`, `img`, `title`, `description`, `tags`, `parent`, `order`, `other`, `lang`, `status`, `type_id`, `position_id`) VALUES
(2, 'Giới thiệu', 'gioi-thieu', 'gioi-thieu/', '', 'Title giới thiệu', 'Des giới thiệu', 'giới thiệu,gioi thieu', 0, 2, 0, 'vi', 1, 2, ',2,3,'),
(6, 'Nông sản', 'nong-san', 'nong-san/', '', 'Nông sản - Việt Úc Thái Dương', 'Nông sản - Việt Úc Thái Dương', 'nông sản,nong san', 0, 3, 0, 'vi', 1, 3, ',2,4,'),
(7, 'Thư viện', 'thu-vien', 'thu-vien/', '', 'Thư viện', 'Thư viện', 'thư viện,thu vien', 0, 4, 0, 'vi', 1, 5, ',2,'),
(8, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', 'tin-tuc-su-kien/', '', 'Tin tức - Sự kiện', 'Tin tức - Sự kiện', 'tin tức sự kiện,tin tuc su kien', 0, 5, 0, 'vi', 1, 2, ',2,'),
(9, 'Liên hệ', 'lien-he', 'lien-he/', '', 'Liên hệ', 'Liên hệ', 'liên hệ,lien he', 0, 6, 0, 'vi', 1, 13, ',2,'),
(10, 'Home', 'home', 'http://localhost/all/vietucthaiduong/?lang=en', '', 'TTP express', 'Home', 'Home', 0, 1, 0, 'en', 1, 1, ',2,'),
(11, 'About US', 'about-us', 'about-us/', '', 'About US', 'About US', 'About US', 0, 2, 0, 'en', 1, 2, ',2,'),
(12, 'Products', 'products', 'products/', '', 'Products', 'Products', 'products', 0, 3, 0, 'en', 1, 3, ',2,4,'),
(41, 'Trái Cây', 'trai-cay', 'trai-cay/', '', 'Trái Cây', 'Trái Cây', 'trái cây,trai cay', 6, 2, 1, 'vi', 1, 3, ',2,'),
(42, 'Thủy Hải Sản', 'thuy-hai-san', 'thuy-hai-san/', '', 'Thủy Hải Sản', 'Thủy Hải Sản', 'thủy hải sản,thuy hai san', 6, 3, 0, 'vi', 1, 3, ',2,'),
(1, 'Trang chủ', 'trang-chu', 'http://localhost/all/vietucthaiduong', '', 'Nông sản Việt Úc Thái Dương', 'CÔNG TY CỔ PHẦN VIỆT ÚC THÁI DƯƠNG CHUYÊN XUẤT NHẬP KHẨU NÔNG SẢN CHẤT LƯỢNG CAO', 'nông sản,nong san,việt úc thái dương,viet uc thai duong', 0, 1, 0, 'vi', 1, 1, ',2,3,'),
(40, 'Rua - Củ - Quả', 'rua-cu-qua', 'rua-cu-qua/', '', 'Rua - Củ - Quả', 'Rua - Củ - Quả', 'rua củ quả,rua cu qua', 6, 1, 1, 'vi', 1, 3, ',2,'),
(39, 'Gạo - Lương thực', 'gao-luong-thuc', 'gao-luong-thuc/', '', 'Gạo - Lương thực', 'Gạo - Lương thực', 'gạo lương thực,gao luong thuc', 6, 4, 1, 'vi', 1, 3, ',2,'),
(43, 'Các loại công sản khác', 'cac-loai-cong-san-khac', 'cac-loai-cong-san-khac/', '', 'Các loại công sản khác', 'Các loại công sản khác', 'các loại công sản khác,cac loai cong san khac', 6, 5, 0, 'vi', 1, 3, ',2,'),
(37, 'Phòng kinh doanh', '', '', '', 'Phòng kinh doanh', '', '', 9, 1, 0, 'vi', 0, 14, ',9,'),
(38, 'Phòng nghiệp vụ chăm sóc khách hàng', '', '', '', 'Phòng nghiệp vụ chăm sóc khách hàng', '', '', 9, 2, 0, 'vi', 0, 14, ',9,'),
(36, 'Sản phẩm nổi bật', 'san-pham-noi-bat', 'san-pham-noi-bat/', '', 'Sản phẩm nổi bật', 'Sản phẩm nổi bật', 'sản phẩm nổi bật,san pham noi bat', 0, 0, 0, 'vi', 1, 3, ',5,'),
(28, 'Gallery', 'gallery', 'gallery/', '', 'Gallery', 'Gallery', 'Gallery', 0, 4, 0, 'en', 1, 5, ',2,'),
(29, 'News', 'news', 'news/', '', 'News', 'News', 'News', 0, 5, 0, 'en', 1, 2, ',2,'),
(35, 'Contacts', 'contacts', 'contacts/', '', 'Contacts', 'Contacts', 'Contacts', 0, 6, 0, 'en', 1, 13, ',2,'),
(34, 'Hot Products', 'hot-products', 'hot-products/', '', 'Hot Products', '', 'hot products,hot products', 0, 0, 0, 'en', 1, 3, ',5,');

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_admin`
--

CREATE TABLE IF NOT EXISTS `web_menu_admin` (
`id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
  `order` int(3) DEFAULT '0',
  `other` tinyint(1) DEFAULT '0',
  `ajax` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu_admin`
--

INSERT INTO `web_menu_admin` (`id`, `name`, `url`, `img`, `order`, `other`, `ajax`, `status`) VALUES
(1, 'Trang chủ', 'home', 'icon-home.jpg', 1, 0, NULL, 1),
(2, 'Cấu hình website', 'web_config', 'icon-cau-hinh.jpg', 2, 1, NULL, 1),
(3, 'Danh mục menu', 'web_menu', 'icon-menu.jpg', 3, 0, NULL, 1),
(4, 'Thông tin, bài viết', 'web_article', 'icon-info.jpg', 4, 0, NULL, 1),
(5, 'Sản phẩm', 'web_product', 'icon-product.jpg', 5, 0, NULL, 1),
(6, 'Thư viện ảnh', 'web_photo', 'icon-thu-vien-anh.jpg', 6, 0, NULL, 1),
(7, 'Thư viện video', 'web_video', 'icon-thu-vien-video.jpg', 7, 0, NULL, 1),
(8, 'Slider & banner', 'web_slider_banner', 'icon-slider-banner.jpg', 8, 1, NULL, 1),
(9, 'DS Tỉnh - Thành', 'web_listcity', 'icon-city.jpg', 20, 0, NULL, 0),
(10, 'DS Quận - Huyện', 'web_listdistricts', 'icon-districts.jpg', 21, 0, NULL, 0),
(11, 'Đơn đặt hàng', 'web_product_order', 'icon-order.jpg', 22, 0, '<span id="web_product_order" class="ajax_thongtin"></span>', 0),
(12, 'Đơn đặt hàng chi tiết', 'web_product_order_detail', 'icon-order-detail.jpg', 23, 1, NULL, 0),
(13, 'Menu admin', 'web_menu_admin', 'icon-item.jpg', 50, 0, NULL, 1),
(14, 'Danh sách ngôn ngữ', 'web_language', 'icon-item.jpg', 51, 0, NULL, 1),
(15, 'Vị trí menu', 'web_menu_position', 'icon-item.jpg', 53, 0, NULL, 1),
(16, 'Vị trí slider banner', 'web_slider_banner_position', 'icon-item.jpg', 54, 0, NULL, 1),
(17, 'Group user', 'web_users_group', 'icon-item.jpg', 55, 1, NULL, 1),
(18, 'Add tags keyword', 'web_tags', 'icon-item.jpg', 89, 0, '0', 1),
(19, 'Item 19', '', '', 19, 0, NULL, 0),
(20, 'Loại danh mục', 'web_menu_type', 'icon-item.jpg', 52, 0, NULL, 1),
(21, 'Liên hệ trực tuyến', 'web_contact', 'icon-lien-he.jpg', 90, 0, '1', 1),
(22, 'Event logs', 'web_logs', 'icon-logs.jpg', 91, 0, '', 1),
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
(5, 'Right', 5, 1),
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
  `other` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_menu_type`
--

INSERT INTO `web_menu_type` (`id`, `name`, `description`, `table_data`, `url_img`, `url_img_thumb`, `lang`, `order`, `other`, `status`) VALUES
(1, 'home', 'Trang chủ', '', 'public/images/catalog/', 'public/_thumbs/Images/catalog/', 'vi', 1, 1, 1),
(2, 'article', 'Thông tin bài viết', 'web_article', 'public/images/articles/', 'public/_thumbs/Images/articles/', 'vi', 2, 1, 1),
(3, 'product', 'Sản phẩm', 'web_product', 'public/images/products/', 'public/_thumbs/Images/products/', 'vi', 3, 1, 1),
(4, 'service', 'Dịch vụ', '', 'public/images/services/', 'public/_thumbs/Images/services/', 'vi', 4, 1, 0),
(5, 'photo', 'Hình ảnh', 'web_photo', 'public/images/photos/', 'public/_thumbs/Images/photos/', 'vi', 5, 1, 1),
(6, 'video', 'Video', 'web_video', 'public/images/videos/', 'public/_thumbs/Images/videos/', 'vi', 6, 1, 0),
(7, 'item_1', 'Item 1', NULL, '', '', 'vi', 7, 1, 0),
(8, 'item_2', 'Item 2', NULL, '', '', 'vi', 8, 1, 0),
(9, 'item_3', 'Item 3', NULL, '', '', 'vi', 9, 1, 0),
(10, 'item_4', 'Item 4', NULL, '', '', 'vi', 10, 1, 0),
(11, 'menu', 'Danh mục menu', 'web_menu', 'public/images/catalog/', 'public/_thumbs/Images/catalog/', 'vi', 11, 0, 1),
(12, 'slider_banner', 'Slider - Banner', 'web_slider_banner', 'public/images/slider-banner/', 'public/_thumbs/Images/slider-banner/', 'vi', 12, 0, 1),
(13, 'Contact', 'Liên hệ', 'web_contact', 'upload/images/catalog', 'upload/_thumbs/Images/catalog/', 'en', 13, 1, 1),
(14, 'no', 'Không', '', '', '', 'vi', 14, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_photo`
--

CREATE TABLE IF NOT EXISTS `web_photo` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_photo`
--

INSERT INTO `web_photo` (`id`, `name`, `img`, `order`, `lang`, `status`, `menu_id`) VALUES
(1, 'Bắp cải', '1.jpg', 1, 'vi', 1, ',7,'),
(3, 'Rau bó xôi', '2.jpg', 2, 'vi', 1, ',7,'),
(4, 'Bạc hà', '3.gif', 3, 'vi', 1, ',7,'),
(5, 'Img 1', '1.jpg', 1, 'en', 1, ',28,'),
(6, 'Img 2', '2.jpg', 2, 'en', 1, ',28,'),
(7, 'Dưa leo', '4.jpg', 4, 'vi', 1, ',7,'),
(8, 'Sầu riêng', '5.jpg', 5, 'vi', 1, ',7,'),
(9, 'Nho Mỹ', '6.jpg', 6, 'vi', 1, ',7,');

-- --------------------------------------------------------

--
-- Table structure for table `web_product`
--

CREATE TABLE IF NOT EXISTS `web_product` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_alias` varchar(250) NOT NULL,
  `code` varchar(20) NOT NULL,
  `url` varchar(250) NOT NULL,
  `img` varchar(150) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_product`
--

INSERT INTO `web_product` (`id`, `name`, `name_alias`, `code`, `url`, `img`, `description`, `tags`, `price`, `price_cost`, `content`, `more`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Nho Úc đỏ không hạt', 'nho-uc-do-khong-hat', 'MMHT-01', 'trai-cay/nho-uc-do-khong-hat.html', 'nho-khong-hat.jpg', 'Nho Úc đỏ không hạt cung cấp một hương vị rất ngon tinh tế, có nhiều giá trị dinh dưỡng. Khi ăn có vị ngọt đậm, tươi ngon, không chất bảo quản.', 'nho úc đỏ không hạt,nho uc do khong hat', 200000, 250000, '<p>Nho Úc đỏ không hạt cung cấp một hương vị rất ngon tinh tế, có nhiều giá trị dinh dưỡng. Khi ăn có vị ngọt đậm, tươi ngon, không chất bảo quản.</p>\r\n', '<p>Trọng lượng: 1kg</p>\r\n\r\n<p>Hạn sử dụng: 1 tuần</p>\r\n\r\n<p>Cách sử dụng: ăn ngay hoặc bảo quản nơi khô ráo</p>\r\n\r\n<p>Xuất xứ: Úc</p>\r\n\r\n<p>Nhà sản xuất: Espace Bourbon An Lạc</p>\r\n', 1, 1437059340, 'vi', 1, ',36,6,40,41,39,'),
(2, 'Sầu Riêng Tiềng Giang', 'sau-rieng-tieng-giang', 'MMTG-01', 'trai-cay/sau-rieng-tieng-giang.html', 'sau-rieng-tieng-giang.jpg', 'Sầu Riêng một loại trái cây phổ biến của phía Nam, là một trong những đặc sản của Tiền Giang', 'sầu riêng tiềng giang,sau rieng tieng giang', 250000, 0, '<p>- Sầu Riêng một loại trái cây phổ biến của phía Nam, là một trong những đặc sản của Tiền Giang</p>\r\n\r\n<p>- Sầu Riêng có vị ngọt, hương thơm đặc trưng mà có lẽ khó ăn với nhiều người khi thưởng thức lần đầu. Tuy nhiên, khi đã ăn quen thì nó lại là loại quả tuyệt vời với nhiều người không chỉ bởi vị thơm ngon mà còn bởi tác dụng của loại quả này tới sức khỏe và làn da.</p>\r\n\r\n<p>- Trọng lượng hàng hóa nhận được thực tế có thể chênh lệch đôi chút và được ghi rõ trong hóa đơn.</p>\r\n', '<p>Trọng lượng tối thiểu 1 quả: 2kg</p>\r\n\r\n<p>Cách bảo quản:&nbsp;Nơi khô ráo, thoáng mát.</p>\r\n', 1, 1432180140, 'vi', 1, ',36,6,40,41,39,'),
(3, 'Ổi Lê', 'oi-le', '', 'trai-cay/oi-le.html', 'oi-le.jpg', 'Ổi được trồng tại Tiền Giang. Giống ổi này trái tròn, có hình dạng gần giống như quả lê nhưng to gấp 2 đến 3 lần Ăn rất giòn và ngọt,vị thanh mát nhưng chứa rất nhiều nước,mùi thơm nồng nàn khiến ổi này càng ăn càng ngon.', 'ổi lê,oi le', 0, NULL, '<p>Ổi được trồng tại Tiền Giang. Giống ổi này trái tròn, có hình dạng gần giống như quả lê nhưng to gấp 2 đến 3 lần Ăn rất giòn và ngọt,vị thanh mát nhưng chứa rất nhiều nước,mùi thơm nồng nàn khiến ổi này càng ăn càng ngon. Vì thế được mệnh danh là ỔI LÊ. Quả ổi của trang trại được bọc từ lúc còn bé bằng “ngón chân cái” cho đến khi thu hoạch. Vỏ quả sáng bong, khi chin có màu vàng nhạt trông bắt mắt. Khi ăn, cắn vào quả ổi sẽ cảm nhận là cùi dầy mọng nước, có mùi thơm nông. Ăn sâu vào trong cùi thịt có vị ngọt nhạt. Đặc điểm sản phẩm của trang trại hơn các sản phẩm Ổi Lê khác là hạt ổi mềm, ăn nhiều không có cảm giác chường bụng và bị táo</p>\r\n', '<p>Giống ổi này trái tròn, có hình dạng gần giống như quả lê nhưng to gấp 2 đến 3 lần&nbsp;</p>\r\n\r\n<p>Ăn rất giòn và ngọt,vị thanh mát nhưng chứa rất nhiều nước,mùi thơm nồng nàn khiến ổi này càng ăn càng ngon.Vì thế được mệnh danh là ỔI LÊ.&nbsp;</p>\r\n\r\n<p>Trọng lượng đặt hàng tối thiểu 1kg</p>\r\n\r\n<p>Giá niêm yết là giá bán 1kg</p>\r\n', 1, 1436955900, 'vi', 1, ',36,6,40,41,39,'),
(4, 'Cherry Mỹ', 'cherry-my', '', 'gao-luong-thuc/cherry-my.html', 'cherry-my.jpg', 'Cherry có màu đỏ thẫm, mềm, nhiều xơ và mọng nước. Hương vị của cherry quả thật có một không hai, với vị ngọt thanh dịu pha chút chua tự nhiên khiến ai đã một lần thử qua chắc hẳn sẽ khó quên được. ', 'cherry mỹ,cherry my', 0, NULL, '<p>Cherry (quả Anh Đào) là một loại quả có thành phần dinh dưỡng cao và công dụng giải độc rất tốt. Quả Cherry tròn, vị ngọt rất ngon, màu đỏ xậm (màu càng xậm vị càng ngọt). Một số công dụng của Cherry: - Chống sưng và ngăn ngừa Gout. - Giảm cholesterol trong máu. - Chứa một số họat tính bảo vệ cơ thể chống ung thư. Cụ thể "2 chất trong cherry là isoquerxitrin và quercetin đã được xác định là có khả năng chống sự tăng trưởng của các tế bào ung thư ruột già". -... Về thành phần dinh dưỡng, cherry - loại quả quý này có chứa một hàm lượng vitamin A rất cao, gấp 19 lần lượng vitamin A có trong trái dâu tây hoặc các trái thuộc họ berry khác. Nếu như cherry chín được thu hoạch vào mùa hè ở Mỹ từ tháng 5 tới tháng 9, thì tại Australia mùa thu hoạch cherry sẽ bắt đầu từ cuối tháng 11 đến giữa tháng 2 vì đất nước này nằm ở nam bán cầu. Nhiều nhà khoa học đã không tiếc lời ngợi khen cherry và gọi nó là “Siêu trái cây” – Super fruit.</p>\r\n', '<p>Lưu ý:&nbsp;Đơn vị niêm yết là 1kg</p>\r\n', 1, 1436524140, 'vi', 1, ',36,6,40,41,39,');

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
-- Table structure for table `web_sale`
--

CREATE TABLE IF NOT EXISTS `web_sale` (
`id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `order` int(3) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_sale`
--

INSERT INTO `web_sale` (`id`, `name`, `phone`, `email`, `order`, `lang`, `status`, `menu_id`) VALUES
(1, 'Bùi Thanh Sơn', '0938 989 422', 'thanhson@ttpexpress.com', 1, 'vi', 1, ',9,37,'),
(2, 'Nguyễn Thu Trang', '0974 885 885', 'thutrang@ttpexpress.com', 2, 'vi', 1, ',9,37,'),
(3, 'Lê Phúc Hiếu', '0909 768 800', 'phuchieu@ttpexpress.com', 3, 'vi', 1, ',9,37,'),
(4, 'Nguyễn Thi Thùy Linh', '0909 299 003', 'thuylinh@ttpexpress.com', 4, 'vi', 1, ',9,38,'),
(5, 'Nguyễn Hữu Lợi', '0902 443 116', 'huuloi@ttpexpress.com', 5, 'vi', 1, ',9,39,');

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img` varchar(150) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `info` varchar(300) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `position_id` int(1) NOT NULL,
  `menu_id` varchar(30) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_slider_banner`
--

INSERT INTO `web_slider_banner` (`id`, `name`, `img`, `url`, `info`, `order`, `lang`, `status`, `position_id`, `menu_id`) VALUES
(1, 'Slider trang chủ', 'slider.jpg', 'javascript:;', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. ', 1, 'vi', 1, 1, ',1,'),
(9, 'Slider home', 'slider.jpg', 'javascript:;', NULL, 1, 'en', 1, 1, ',10,');

-- --------------------------------------------------------

--
-- Table structure for table `web_slider_banner_position`
--

CREATE TABLE IF NOT EXISTS `web_slider_banner_position` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `order` int(2) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_slider_banner_position`
--

INSERT INTO `web_slider_banner_position` (`id`, `name`, `order`, `status`) VALUES
(1, 'Slider width 1000px', 1, 1),
(2, 'Event width:980x250 px', 2, 1),
(3, 'Đối tác 200x120 px', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_tags`
--

CREATE TABLE IF NOT EXISTS `web_tags` (
`id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(60) NOT NULL,
  `url` varchar(200) NOT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `gender` tinyint(1) DEFAULT NULL,
  `img` varchar(150) NOT NULL,
  `salt` varchar(3) NOT NULL,
  `username` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `rule_view` varchar(100) NOT NULL,
  `rule_action` varchar(100) NOT NULL,
  `random_key` varchar(255) DEFAULT NULL,
  `expiration` bigint(10) NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT 'vi',
  `datetime` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `group_id` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`id`, `name`, `address`, `phone`, `email`, `birthday`, `gender`, `img`, `salt`, `username`, `password`, `rule_view`, `rule_action`, `random_key`, `expiration`, `lang`, `datetime`, `status`, `group_id`) VALUES
(25, 'Admin', '123 CMT 8', '0988 388 003', 'hieunhan1121@gmail.com', 0, 1, '', '', 'admin', 'fc7fc678608590b123692867f176fe63', ',1,2,3,4,5,6,7,8,13,14,20,15,16,17,18,21,22,23,', ',1,2,3,4,5,6,7,8,13,14,20,15,16,17,18,21,22,23,', NULL, 0, 'vi', 0, 1, 3),
(34, 'Hiếu Nhân', '123 CMT 8', '0988 388 003', 'hieunhan112@gmail.com', 609872400, 1, '', '', 'trannhan', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,6,7,8,18,21,23,', ',1,2,3,4,6,7,8,18,21,23,', NULL, 1430293180, 'vi', 1425093180, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_group`
--

CREATE TABLE IF NOT EXISTS `web_users_group` (
`id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_users_group`
--

INSERT INTO `web_users_group` (`id`, `name`, `order`, `status`) VALUES
(1, 'Khách hàng', 1, 1),
(2, 'Thành viên', 2, 1),
(3, 'Quản trị website', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_users_lock_ip`
--

CREATE TABLE IF NOT EXISTS `web_users_lock_ip` (
`id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `login_number` int(2) NOT NULL,
  `disable_date` bigint(10) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_users_login`
--

CREATE TABLE IF NOT EXISTS `web_users_login` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `datetime` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `img` varchar(25) NOT NULL,
  `url_code` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `other` tinyint(1) DEFAULT '0',
  `datetime` bigint(10) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'vi',
  `status` tinyint(1) DEFAULT '1',
  `menu_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_video`
--

INSERT INTO `web_video` (`id`, `name`, `name_alias`, `type`, `url`, `img`, `url_code`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES
(1, 'Video trang chủ', 'video-trang-chu', 0, 'quan-nam/video-trang-chu.html', '', '432432432', 'Video trang chủ', 'video trang chủ,video trang chu', '', 0, 1432108200, 'vi', 1, ',');

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
-- Indexes for table `web_sale`
--
ALTER TABLE `web_sale`
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
-- Indexes for table `web_tags`
--
ALTER TABLE `web_tags`
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
-- Indexes for table `web_users_lock_ip`
--
ALTER TABLE `web_users_lock_ip`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_users_login`
--
ALTER TABLE `web_users_login`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT for table `web_menu`
--
ALTER TABLE `web_menu`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
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
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `web_photo`
--
ALTER TABLE `web_photo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
-- AUTO_INCREMENT for table `web_sale`
--
ALTER TABLE `web_sale`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
-- AUTO_INCREMENT for table `web_tags`
--
ALTER TABLE `web_tags`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_users`
--
ALTER TABLE `web_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `web_users_group`
--
ALTER TABLE `web_users_group`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_users_lock_ip`
--
ALTER TABLE `web_users_lock_ip`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_users_login`
--
ALTER TABLE `web_users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_video`
--
ALTER TABLE `web_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
