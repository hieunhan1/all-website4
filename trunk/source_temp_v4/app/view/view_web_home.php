<div id="home_page">
	<h1>Công nghệ mùng chống muỗi</h1>
    <p><img src="css/web_img/cong-nghe-chong-muoi.png" alt="Công nghệ mùng chống muỗi" /></p>
    <div class="home_chongmuoi" style="margin-left:20px">
    	<p class="title_chongmuoi">Đến gần</p>
        <p>Muỗi bay đến gần mùng.</p>
    </div>
    <div class="home_chongmuoi" style="margin-left:30px">
    	<p class="title_chongmuoi">Hoảng sợ</p>
        <p>Chúng bị Perthmerine làm hoảng sợ.</p>
    </div>
    <div class="home_chongmuoi" style="margin-left:30px">
    	<p class="title_chongmuoi">Bỏ chạy</p>
        <p>Công nghệ đẩy lùi sự tấn công.</p>
    </div>
    <div class="home_chongmuoi" style="margin-left:25px">
    	<p class="title_chongmuoi">Bám lâu</p>
        <p>Nếu cứng đầu bám lâu vào mùng.</p>
    </div>
    <div class="home_chongmuoi" style="margin-left:30px">
    	<p class="title_chongmuoi">Hạ gục</p>
        <p>Kết quả là bị hạ gục hoặc tiêu diệt.</p>
    </div>
    <div style="clear:both; height:30px"></div>
    <!--end cong nghe chong muoi-->
    
    <div id="about_home">
    	<?php
        $data = $this->_model->_home_about($idMenu);
		echo $data['content'];
		?>
        <div style="clear:both; height:30px"></div>
    </div>
    
    <?php
	/*danh mục, sản phẩm --- HOME*/
    $data_dm = $this->_model->_home_danhmuc_product($lang);
	foreach($data_dm as $row_dm){
		$str_h_p .= '<div class="product_list"><h3 class="product_title" style="background:url(\''.CONS_IMAGES_CATALOG.$row_dm['url_hinh'].'\') no-repeat top left">'.$row_dm['name'].'</h3>';
		$data = $this->_model->_home_products($row_dm['id']);
		$i=0;
		foreach($data as $row){
			$i++;
			if($i%4 != 1) $style='style="margin-left:15px"'; else $style='';
			if($row['giagoc'] != 0) $giagoc='<div class="product_item_giagoc">'.number_format($row['giagoc']).' VNĐ</div>'; else $giagoc='';
			$str_h_p .= '<div class="product_item" '.$style.'>
				<a href="'.$row_dm['url'].$row['name_alias'].'.html">
					<div class="product_item_img_bg"></div>
					<div class="product_item_img"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
					<h3 class="product_item_name">'.$row['name'].'</h3>
				</a>
				<div class="product_item_order id_'.$row['id'].'">Đặt hàng</div>
				'.$giagoc.'<div class="product_item_giaban">Giá: '.number_format($row['giaban']).' VNĐ</div>
			</div>';
		}
    	$str_h_p .= '</div>';
	}
	echo $str_h_p;
	?>
    
    <div style="clear:both; height:1px"></div>
</div>