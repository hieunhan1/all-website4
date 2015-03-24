<div id="content">
<?php
include_once('view_web_navigator.php');
echo '<h2>'.$current_menu['description'].'</h2>';

$i = 0;
$per_page = $this->_config['limit_2'];
$startrow = 0;
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

<div id="popupContact">
    <div style="width:835px;height:30px; float:right; text-align:right; position:absolute; z-index:1300;">
        <a href="javascript:window.history.go(-1)"><img src="themes/website/img/close.png" alt="sản phẩm" /></a>
    </div>
    <div style="clear:both; height:15px"></div>
    <div style="clear:both; height:5px; background-color:#3A3A3A"></div>
    
    <div id="content_popup">
        <div class="img"><img src="<?php echo $current_menu['type_menu_img'].$row_detail['img_avatar'];?>" alt="<?php echo $row_detail['name'];?>" /></div>
        <div id="content_pp">
            <h1><?php echo $row_detail['name'];?></h1>
            <div style="clear:both; height:1px"></div>
            <div style="margin-bottom:20px"><?php echo $row_detail['danhsachmon'];?></div>
            <div id="price_pp">Trọn gói: <?php echo $row_detail['price'];?> / bàn tiệc</div>
        </div>
        <div style="clear:both; height:1px"></div>
        <div class="viewpost"><?php if($row_detail['content']!='') echo $row_detail['content'];?></div>
    </div>
</div>
<div id="backgroundPopup"></div>
<script type="text/javascript">
$(document).ready(function() {
    var height = $("#popupContact").height();
    $("#popupContact").height(height);
    centerPopup("absolute");
    loadPopup();
    $(window).bind("resize", function(){ centerPopup("absolute"); });
});</script>';