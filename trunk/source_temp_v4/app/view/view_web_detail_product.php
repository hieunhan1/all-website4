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
	<?php
	echo "<h1>{$row_detail['name']}</h1>";
	?>
    <div id="product_detail">
    	<div id="product_detail_img"><img src="<?php echo CONS_IMAGES_PRODUCTS.$row_detail['url_hinh'];?>" alt="<?php echo $row_detail['name'];?>" /></div>
        <div id="product_detail_tt">
			<div style="color:#666">Mã SP: <b><?php echo $row_detail['masp'];?></b></div>
        	<?php if($row_detail['giagoc']!='0') echo '<div id="product_detail_giagoc">Giá gốc: '.number_format($row_detail['giagoc'],0,',','.').' VNĐ</div>';?>
        	<div id="product_detail_giaban" price_sp="<?php echo $row_detail['giaban'];?>">Giá bán: <?php echo number_format($row_detail['giaban'],0,',','.');?> VNĐ</div>
        	<div>Số lượng: <input type="text" name="soluong" maxlength="5" id="product_detail_soluong" value="1" /></div>
            <?php
            if(!isset($_SESSION['list_order_sp_name'])){
				$btn_order = array('Đặt hàng','#EA9E4A');
				$btn_thanhtoan = '';
			}else{
				if($_SESSION['list_order_sp_name'][$row_detail['id']] == '') $btn_order = array('Đặt hàng','#EA9E4A');
				else $btn_order = array('Đã đặt hàng','#4DBE01');
				$btn_thanhtoan = $this->order_sp_thanhtoan_link();
			}
			echo '<div id="product_detail_order" class="product_detail_btn" alias="'.$row_detail['name_alias'].'" style="background-color:'.$btn_order[1].'">'.$btn_order[0].'</div>';
			echo '<div id="btn_thanhtoan">'.$btn_thanhtoan.'</div>';
			?>
            <div id="product_detail_info"><?php echo $row_detail['info_more'];?></div>
        </div>
    </div>
    <div style="clear:both; height:1px"></div>
    <!--<div id="product_detail_left"></div>
    
    <div id="product_detail_right">
    	<div id="product_detail_right_title">Phí giao hàng</div>
        <div class="product_detail_right_item"></div>
    </div>-->
	<?php echo $row_detail['content'];?>
    <div style="clear:both; height:1px"></div>
	
</div>


<div id="other_post">
	<hr />
    <div id="other_post_title" style="padding:0">Sản phẩm cùng loại</div>
</div>

<div class="product_list">
	<?php
	$i=0;
    $data = $this->_model->_other_post_product($row_detail['id'],$idMenu,4);
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
            <div class="product_item_order id_'.$row['id'].'">Đặt hàng</div>
            '.$giagoc.'<div class="product_item_giaban">Giá: '.number_format($row['giaban']).' VNĐ</div>
        </div>';
	}
	?>
</div>
<div style="clear:both; height:1px"></div>
