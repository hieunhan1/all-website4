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
	<h1>Mùng chống muỗi tam giác ba dây trắng</h1>
    <div id="product_detail">
    	<div id="product_detail_img"><img src="public/images/products/mung-chong-muoi.jpg" alt="" /></div>
        <div id="product_detail_tt">
        	<div id="product_detail_giagoc">Giá gốc: 250.000 VNĐ</div>
        	<div id="product_detail_giaban">Giá bán: 200.000 VNĐ</div>
        	<div>Số lượng: <input type="text" name="soluong" maxlength="5" id="product_detail_soluong" /></div>
            <div id="product_detail_order">ĐẶT HÀNG</div>
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
    <?php
	//echo "<h1>{$row_detail['name']}</h1>";
	?>
    
    
    <div style="clear:both; height:1px"></div>
	
</div>
	
<?php

?>
