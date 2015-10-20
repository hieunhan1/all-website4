<?php
$data = $this->_model->_home_menu($lang, $idMenu);
foreach($data as $row){
	echo '<div class="clear_10px"></div>
	<h2 class="home_title all_icon" style="background-position:0px 8px">'.$row['name'].'</h2>
	<div class="list_book">';
	$data2 = $this->_model->_home_list_book($row['id'], $this->_config['limit_home']);
	$i=0;
	foreach($data2 as $row2){
		if($row2['price_cost']!=0) $price_cost='<span>'.number_format($row2['price_cost'],0,',','.').'đ</span> ';
		else $price_cost='';
		$i++;
		if($i%5 == 1) $style=''; else $style='style="margin-left:10px"';
		echo '<div class="box_book" '.$style.'>
			<div class="img_book"><a href="'.$row2['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row2['url_img'].'" alt="'.$row2['name'].'" /></a></div>
			<div class="price_book">'.$price_cost.number_format($row2['price'],0,',','.').'đ</div>
			<h3><a href="'.$row2['url'].'" title="'.$row2['name'].'">'.$row2['name'].'</a></h3>
			<div class="buy_book all_icon" idsp="'.$row2['id'].'" alias="'.$row2['name_alias'].'" style="background-position:30px -45px">đặt mua</div>
		</div>';
	}
	echo '<div class="clear_30px"></div></div>';
}
?>