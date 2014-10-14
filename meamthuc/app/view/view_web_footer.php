<div class="clear_1px"></div>
<div id="footer">
    <div class="footer_box">
        <div class="footer_box_title">Thông tin</div>
        <div class="footer_box_item">
            <li><a href="">Giới thiệu</a></li>
            <li><a href="">Dịch vụ cung cấp</a></li>
            <li><a href="">Câu hỏi thường gặp</a></li>
            <li><a href="">Chính sách sử dụng</a></li>
            <li><a href="">Thông tin liên hệ</a></li>
        </div>
    </div>
    <div class="footer_box">
        <div class="footer_box_title">Hướng dẫn</div>
        <div class="footer_box_item">
            <li><a href="">Hướng dẫn đặt tiệc</a></li>
            <li><a href="">Chính sách sử dụng</a></li>
            <li><a href="">Cách thanh toán</a></li>
            <li><a href="">Hỗ trợ khoá học</a></li>
            <li><a href="">Tài liệu mẫu</a></li>
        </div>
    </div>
    <div class="footer_box">
        <div class="footer_box_title">Tài khoản</div>
        <div class="footer_box_item">
            <li><a href="">Tình trạng đơn hàng</a></li>
            <li><a href="">Món ăn ưa thích</a></li>
            <li><a href="">Đầu bếp ưu thích</a></li>
            <li><a href="">Đăng ký</a></li>
            <li><a href="">Đăng nhập</a></li>
        </div>
    </div>
    <div id="footer_copyright">
        <h4><?php echo $this->_config['copyright'];?></h4>
        <div class="viewpost">
            <?php echo '<p>'.$this->_config['address'].'</p><p>Điện thoại: '.$this->_config['tel'].'<br />Email: '.$this->_config['email'].'</p>';?>
        </div>
        <div id="social">
        	<?php
			$position = 6;
			$data = $this->_model->_web_menu($lang, 0, $position);
			foreach($data as $row){
				echo '<a href="'.$row['url'].'" target="_blank"><img src="'.CONS_IMAGES_CATALOG.$row['url_img'].'" alt="'.$row['name'].'" /></a>';
			}
			?>
        </div>
    </div>
    <div class="clear_1px"></div>
</div>