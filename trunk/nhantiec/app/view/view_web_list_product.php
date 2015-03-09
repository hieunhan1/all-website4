<div id="content">
<?php
include_once('view_web_navigator.php');
echo '<div class="viewpost"><h1>'.$current_menu['title'].'</h1><h2>'.$current_menu['description'].'</h2></div>';

$i = 0;
$per_page = $this->_config['limit_2'];
$startrow = ($current_menu['page_number']-1)*$per_page;
$data = $this->_model->_list_web_product($current_menu['id'], $per_page, $startrow, $totalrows);
if($totalrows>1){
	$menu_tiec = '';
	foreach($data as $row){
		$i++;
		if($i%2 == 0) $float = 'style="float:right"'; else $float = 'style="float:left"';
		$menu_tiec .= '<div class="box_tiec" '.$float.'>
			<div class="box_tiec_img"><a href="'.$row['url'].'"><img src="'.$current_menu['type_menu_img'].$row['img_avatar'].'" alt="'.$row['name'].'" /></a></div>
			<div class="box_tiec_info">
				<div class="box_tiec_price">'.$row['price'].'<div style="clear:both; height:1px; margin:2px 0; background-color:#FFF"></div>bàn tiệc</div>
				<a href="'.$row['url'].'"><h3>'.$row['name'].'</h3></a>
				<p>'.$row['description'].'</p>
			</div>
		</div>';
	}
	echo $menu_tiec;
	echo '<div id="phantrang">'.$this->_model->_pageslist($current_menu['url'], $totalrows, 5, $per_page, $current_menu['page_number'], $totalpages).'</div>';
}
?>
<div style="clear:both; height:10px"></div>
</div>