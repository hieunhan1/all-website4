<?php include_once('view_web_navigator.php');?>
<div class="viewpost content z-index-2">
	<h1><?php echo $current_menu['title'];?></h1>
    <h2 style="color:#222"><?php echo $current_menu['description'];?></h2>
</div>

<div id="list_product" class="content z-index-2">
<?php
$i=0;
$per_page = $this->_config['limit_2'];
$startrow = ($current_menu['page_number']-1)*$per_page;
$data = $this->_model->_list_web_product($current_menu['id'], $per_page, $startrow, $totalrows);
if($totalrows>1){
	foreach($data as $row){
		$i++;
		if($row['price']!=0) $price='Giá: '.number_format($row['price'],0,',','.').'<sup>đ</sup>'; else $price='Liên hệ để biết giá';
		if($row['price_cost']==0) $price_cost='<br />'; else $price_cost='<span>'.number_format($row['price_cost'],0,',','.').'<sup>đ</sup></span>';
		if($i%4 != 1) $style=' margin'; else $style='';
		echo '<div class="box-item'.$style.'">
			<div class="img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['img_avatar'].'" alt="'.$row['name'].'" /></a></div>
			<a href="'.$row['url'].'" title="'.$row['name'].'"><h3>'.$row['name'].'</h3></a>
			<div class="price">'.$price_cost.$price.'</div>
			<div class="buy bogoc_5px">Mua</div>
		</div>';
	}
	$phantrang = '<div id="phantrang">'.$this->_model->_pageslist($current_menu['url'], $totalrows, 5, $per_page, $current_menu['page_number'], $totalpages).'</div>';
	if($totalpages>=$current_menu['page_number']) echo $phantrang; else echo '<p style="padding:10px 0px 100px 50px">This page does not exist.</p>';
}else if($totalrows==1) header('location: '.CONS_BASE_URL.'/'.$data[0]['url']);
else echo '<p style="padding:10px 0px 100px 50px">Update...</p>';
?>
</div>
<div class="clear_1px"></div>