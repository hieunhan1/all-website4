<div id="left">
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
            <div id="product_detail_img"><img src="<?php echo CONS_IMAGES_PRODUCTS.$row_detail['url_img'];?>" alt="<?php echo $row_detail['name'];?>" /></div>
            <div id="product_detail_tt">
                <div id="product_detail_code">Mã SP: <b><?php echo $row_detail['code'];?></b></div>
                <?php if($row_detail['price_cost']!='0') echo '<div id="product_detail_price_cost">'.number_format($row_detail['price_cost'],0,',','.').' VNĐ</div>';?>
                <div id="product_detail_price" price_sp="<?php echo $row_detail['price'];?>">Giá bán: <?php echo number_format($row_detail['price'],0,',','.');?> VNĐ</div>
                <div>Số lượng: <input type="text" name="soluong" maxlength="5" id="product_detail_soluong" value="1" /></div>
                <?php
                if(count($_SESSION['list_order_sp_name'])==0){
                    $btn_order = array('Đặt hàng','#EA9E4A');
                    $btn_thanhtoan = '';
                }else{
                    if($_SESSION['list_order_sp_name'][$row_detail['id']] == '') $btn_order = array('Đặt hàng','#EA9E4A');
                    else $btn_order = array('Đã đặt hàng','#4DBE01');
                    $btn_thanhtoan = $this->order_sp_thanhtoan_link();
                }
                echo '<div id="product_detail_order" class="product_detail_btn bogoc_10px" alias="'.$row_detail['name_alias'].'" style="background-color:'.$btn_order[1].'">'.$btn_order[0].'</div>';
                echo '<div id="btn_thanhtoan">'.$btn_thanhtoan.'</div>';
                ?>
                <div id="product_detail_info"><?php echo $row_detail['info_more'];?></div>
            </div>
        </div>
        <div style="clear:both; height:1px"></div>
        <?php echo $row_detail['content'];?>
        <div style="clear:both; height:1px"></div>
    </div>
    
    <?php
    $i=0;
    $data = $this->_model->_other_post_product($row_detail['id'],$idMenu,5);
    if(count($data)>0){
        echo '<div id="other_post"><hr /><div id="other_post_title" style="margin-bottom:20px; padding:0">Sách cùng thể loại</div></div>
        <div class="list_book">';
        foreach($data as $row){
            if($row['price_cost']!=0) $price_cost='<span>'.number_format($row['price_cost'],0,',','.').'đ</span> ';
			else $price_cost='';
			$i++;
			if($i%4 == 1) $style=''; else $style='style="margin-left:10px"';
			echo '<div class="box_book" '.$style.'>
				<div class="img_book"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['url_img'].'" alt="'.$row['name'].'" /></a></div>
				<div class="price_book">'.$price_cost.number_format($row['price'],0,',','.').'đ</div>
				<h3><a href="'.$row['url'].'" title="'.$row['name'].'">'.$row['name'].'</a></h3>
				<div class="buy_book all_icon" idsp="'.$row['id'].'" alias="'.$row['name_alias'].'" style="background-position:30px -45px">đặt mua</div>
			</div>';
        }
        echo '</div>';
    }
    ?>
</div>
<div style="clear:both; height:30px"></div>