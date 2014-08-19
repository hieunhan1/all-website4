<div id="right">
	<?php
    include_once('view_web_slider.php');
	
	$data_dm_home = $this->_model->_home_danhmuc_product($lang);
	foreach($data_dm_home as $row_dm_home){
		echo '<div class="product_list">
		<div class="product_title">
        	<div class="product_title_name bogoc_right_15px">'.$row_dm_home['name'].'</div>
            <div class="product_title_more"><a href="'.$row_dm_home['url'].'">Xem tất cả</a></div>
        </div>';
		$i = 0;
		$data = $this->_model->_home_web_product($lang, $this->_config['max_limit_3'], $row_dm_home['id']);
		foreach($data as $row){
			$i++;
			if($i%4 != 1) $style='style="margin-left:10px"'; else $style='';
			if($row['giagoc']!=0) $giagoc = number_format($row['giagoc'],0,'.',','); else $giagoc='';
			echo '<div class="product_box" '.$style.'>
				<div class="product_img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['url_img'].'" alt="'.$row['name'].'" /></a></div>
				<div class="product_price"><span>'.$giagoc.'</span> '.number_format($row['giaban'],0,'.',',').'đ</div>
				<a href="'.$row['url'].'"><h3 class="product_name">'.$row['name'].'</h3></a>
				<div class="product_buy" idsp="'.$row['id'].'" alias="'.$row['name_alias'].'">mua hàng</div>
			</div>';
		}
		echo '</div><div style="clear:both; height:30px"></div>';
	}
	?>
</div>
<?php include_once('view_web_list_product_left.php');?>
<div style="clear:both; height:1px"></div>