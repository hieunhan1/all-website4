<?php
$row = $this->_model->_home_about($idMenu);
$str_home = '<div id="home_about">
	<div id="home_about_info"><h1>'.$row['name'].'</h1>'.$row['metaDescription'].'<div style="clear:both; font-weight:bold; text-align:right"><a href="'.$row['url'].'">Xem thêm..</a></div></div>';
	
$row = $this->_model->_home_video($idMenu);
$str_home .= '<div id="home_video"><iframe src="'.$row['url_video'].'?origin=www.vikybomi.com.vn&amp;rel=0&amp;wmode=transparent" frameborder="0"></iframe><a href="'.$row['url'].'.html"><h3>'.$row['name'].'</h3></a></div>
	<div style="clear:both; height:1px"></div>
</div>';
echo $str_home;

$data_list = $this->_model->_home_danhmuc($lang); 
foreach($data_list as $row_list){
	if($row_list['type_id']==3){
		$data = $this->_model->_home_list_product($row_list['id']);
		if(count($data) > 0){
			$i = 0;
			$item_product = '';
			foreach($data as $row){
				$i++;
				$link = $row['url'];
				if($i!=1) $margin = 'style="margin-left:5px"'; else $margin = '';
				
				if($row['giaban']!=0 && $row['giagoc']!=0) $price = '<div class="home_sp_buy" name="'.$this->_model->_properties_product_buy($row['id'],$row['name'],$row['giaban'],$row['giangoc']).'">Mua</div><div class="home_sp_price"><div class="home_sp_price_goc">'.number_format($row['price'],'0',',','.').' VNĐ</div> <div class="home_sp_price_ban"><b>'.number_format($row['price_km'],'0',',','.').' VNĐ</b></div></div>';
				elseif($row['giaban']!=0) $price = '<div class="home_sp_buy" name="'.$this->_model->_properties_product_buy($row['id'],$row['name'],$row['giaban']).'">Mua</div><div class="home_sp_price"><div class="home_sp_price_ban"><b>'.number_format($row['giaban'],'0',',','.').' VNĐ</b></div></div>';
				else $price = '<p style="font-weight:bold; text-align:right; padding-top:5px">'.CONS_CONTACT_PRODUCT.'</p>';
				$item_product .= '<div class="home_sp_item" '.$margin.'>
					<div class="home_sp_img"><a href="'.$link.'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
					<a href="'.$link.'"><h3>'.$row['name'].'</h3></a>
					'.$price.'
				</div>';
			}
			echo '<div class="home_list_sp">
				<div class="home_sp_title"><a href="'.$row_list['url'].'"><img src="'.CONS_IMAGES_CATALOG.$row_list['url_hinh'].'" alt="'.$row_list['title'].'" /></a></div>
				'.$item_product.'<div style="clear:both; height:1px"></div>
			</div>';
		}
	}else{
		/*$item_info = '';
		if($row_list['type_id']==2) $data = $this->_model->_home_list_info($row_list['id']);
		else $data = $this->_model->_home_list_video($row_list['id']);
		foreach($data as $row){
			$item_info .= '<div class="home_info_item"><a href="'.$row['url'].'"><h3>'.$row['name'].'</h3></a></div>';
		}
		echo '<div class="home_list_info">
			<div class="home_sp_title"><a href="'.$row_list['url'].'"><img src="'.CONS_IMAGES_CATALOG.$row_list['url_hinh'].'" alt="'.$row_list['title'].'" /></a></div>
			'.$item_info.'
		</div>';*/
	}
}
?>

<div class="home_list_sp">
	<div class="home_sp_title"><a href=""><img src="upload/images/danhmuc/<?php echo const_daily_cuahang; ?>" alt="" /></a></div>
	<div class="viewpost"><?php echo $row_config['contact_form'];?></div>
</div>