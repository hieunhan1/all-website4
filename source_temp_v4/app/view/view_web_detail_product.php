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
			<div style="font-weight:bold; color:#666">Mã SP: MV-01</div>
        	<?php if($row_detail['giagoc']!='0') echo '<div id="product_detail_giagoc">Giá gốc: '.number_format($row_detail['giagoc'],0,',','.').' VNĐ</div>';?>
        	<div id="product_detail_giaban" price_sp="<?php echo $row_detail['giaban'];?>">Giá bán: <?php echo number_format($row_detail['giaban'],0,',','.');?> VNĐ</div>
        	<div>Số lượng: <input type="text" name="soluong" maxlength="5" id="product_detail_soluong" value="1" /></div>
            <div id="product_detail_order" id_sp="<?php echo $row_detail['id'];?>" name_sp="<?php echo $row_detail['name'];?>" link_sp="<?php echo $row_menu_one['url'].$row_detail['name_alias'];?>.html">ĐẶT HÀNG</div>
            <div id="product_detail_info">
            	<p>Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng Bảo hành 12 tháng</p>
                <div>Giao hàng toàn quốc</div>
            </div>
        </div>
    </div>
    <div style="clear:both; height:1px"></div>
    <div id="product_detail_left"><?php echo $row_detail['content'];?></div>
    
    <div id="product_detail_right">
    	<div id="product_detail_right_title">Phí giao hàng</div>
        <div class="product_detail_right_item">
        
        </div>
    </div>
	
	
	
    
    
    
    <div style="clear:both; height:1px"></div>
	
</div>

<div class="product_list">
	<div class="product_item">
		<a href="mung-chong-muoi/mung-chong-muoi-tam-giac-ba-day-trang.html">
			<div class="product_item_img_bg"></div>
			<div class="product_item_img"><img src="public/_thumbs/Images/products/mung-chong-muoi-tam-giac-ba-day-trang.jpg" alt="Mùng chống muỗi tam giác ba dây trắng"></div>
			<h3 class="product_item_name">Mùng chống muỗi tam giác ba dây trắng</h3>
		</a>
		<div class="product_item_order id_2" style="border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;">Đặt hàng</div>
		<div class="product_item_giaban">Giá: 250,000 VNĐ</div>
	</div>
	<div class="product_item" style="margin-left:15px">
		<a href="mung-chong-muoi/mung-chong-muoi-hinh-non.html">
			<div class="product_item_img_bg"></div>
			<div class="product_item_img"><img src="public/_thumbs/Images/products/mung-chong-muoi.jpg" alt="Mùng chống muỗi hình nón"></div>
			<h3 class="product_item_name">Mùng chống muỗi hình nón</h3>
		</a>
		<div class="product_item_order id_1" style="border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;">Đặt hàng</div>
		<div class="product_item_giagoc">250,000 VNĐ</div><div class="product_item_giaban">Giá: 200,000 VNĐ</div>
	</div>
</div>
<div style="clear:both; height:1px"></div>
