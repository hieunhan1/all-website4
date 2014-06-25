<div id="navigator">
<?php
$i=0;
$data = $this->navigator($idMenu,$lang);
foreach($data as $row){
	$i++;
	if($i!=1) $icon='<span>&gt;&gt;</span>'; else $icon='';
	echo $icon.'<a href="'.$row['url'].'">'.$row['name'].'</a>';
}
?>
</div>

<div class="viewpost">
	<h1><?php echo $row_menu_one['title'];?></h1>
    <h2><?php echo $row_menu_one['metaDescription'];?></h2>
</div>

<div class="product_list">
	<?php
    $per_page=$row_config['max_limit_2'];
    $startrow=($currentpage-1)*$per_page;
    $data = $this->_model->_list_web_product($idMenu, $per_page, $startrow, $totalrows);
	$i=0;
    foreach($data as $row){
		$i++;
		if($i%4 != 1) $style='style="margin-left:15px"'; else $style='';
        if($row['giagoc'] != 0) $giagoc='<div class="product_item_giagoc">'.number_format($row['giagoc']).' VNĐ</div>'; else $giagoc='';
        echo '<div class="product_item" '.$style.'>
            <a href="'.$row['url'].'">
                <div class="product_item_img_bg"></div>
                <div class="product_item_img"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
                <h3 class="product_item_name">'.$row['name'].'</h3>
            </a>
            <div class="product_item_order" alias="'.$row['name_alias'].'">Đặt hàng</div>
            '.$giagoc.'<div class="product_item_giaban">Giá: '.number_format($row['giaban']).' VNĐ</div>
        </div>';
    }
    ?>
</div>

<div id="phantrang"><?php echo $this->_model->_pageslist($row_menu_one['url'], $totalrows, 5, $per_page, $currentpage);?></div>