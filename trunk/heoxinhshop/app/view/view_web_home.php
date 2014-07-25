<div id="home_about">
	<?php
    $row = $this->_model->_home_about($idMenu);
	echo '<h2>'.$row['name'].'</h2>';
	echo '<div class="viewpost">'.$row['content'].'</div>';
	?>
</div>
<div id="home_img"><?php echo '<img src="'.CONS_IMAGES_ARTICLES.$row['url_hinh'].'" alt="'.$row['name'].'" />';?></div>
<div id="home_news">
	<h3>Thông tin thời trang mới</h3>
    <?php
    $data = $this->_model->_home_baiviet_moi($lang);
	foreach($data as $row){
		echo '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
	}
	?>
</div>
<div style="clear:both; height:10px"></div>

<div class="product_list">
	<div class="product_title">Sản phẩm mới</div>
    <?php
	$i = 0;
	$data = $this->_model->_home_web_product($lang, $this->_config['max_limit_3']);
	foreach($data as $row){
		$i++;
		if($i%5 != 1) $style='style="margin-left:9px"'; else $style='';
		if($row['giagoc']!=0) $giagoc = number_format($row['giagoc'],0,'.',','); else $giagoc='';
		echo '<div class="product_box" '.$style.'>
			<div class="product_img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
			<div class="product_price"><span>'.$giagoc.'</span> '.number_format($row['giaban'],0,'.',',').'đ</div>
			<a href="'.$row['url'].'"><h3 class="product_name">'.$row['name'].'</h3></a>
			<div class="product_buy" idsp="'.$row['id'].'" alias="'.$row['name_alias'].'">mua hàng</div>
		</div>';
	}
	?>
</div>
<div style="clear:both; height:30px"></div>

<?php
$data_dm_home = $this->_model->_home_danhmuc_product($lang);
foreach($data_dm_home as $row_dm_home){
	echo '<div class="product_list">
		<div class="product_title"><a href="'.$row_dm_home['url'].'">'.$row_dm_home['name'].'</a></div>';
	$i = 0;
	$data = $this->_model->_home_web_product($lang, $this->_config['max_limit_3'], $row_dm_home['id']);
	foreach($data as $row){
		$i++;
		if($i%5 != 1) $style='style="margin-left:9px"'; else $style='';
		if($row['giagoc']!=0) $giagoc = number_format($row['giagoc'],0,'.',','); else $giagoc='';
		echo '<div class="product_box" '.$style.'>
			<div class="product_img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
			<div class="product_price"><span>'.$giagoc.'</span> '.number_format($row['giaban'],0,'.',',').'đ</div>
			<a href="'.$row['url'].'"><h3 class="product_name">'.$row['name'].'</h3></a>
			<div class="product_buy" idsp="'.$row['id'].'" alias="'.$row['name_alias'].'">mua hàng</div>
		</div>';
	}
	echo '</div><div style="clear:both; height:30px"></div>';
}
?>

