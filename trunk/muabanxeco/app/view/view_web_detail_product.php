<?php include_once('view_web_navigator.php');?>
<div id="article" class="z-index-2">
    <div class="viewpost">
        <?php
        echo '<h1>'.$row_detail['name'].'</h1>';
		echo '<div id="dactinh">
			<div class="img"><img src="'.$current_menu['type_menu_img'].$row_detail['img_avatar'].'" alt="'.$row_detail['name'].'" /></div>
			<div class="dactinh">'.$row_detail['dactinh'].'</div>
			<div class="buy bogoc_8px">Liên hệ để biết giá</div>
			<div class="clear_1px"></div>
		</div>';
        echo '<div style="font-size:110%">'.$row_detail['content'].'</div>';
        ?>
    </div>
        
    <?php
    $data = $this->_model->_other_post_product($row_detail['id'],$current_menu['id']);
    if(count($data) > 0){
		$i=0;
        echo '<div id="other_post"><hr class="hr" /><div style="font-weight:bold; font-size:150%; margin: 10px 0 20px 0">'.CONS_OTHER_PRODUCT.'</div><div id="list_product">';
        foreach($data as $row){
			$i++;
			if($i%3 != 1) $style=' margin'; else $style='';
			echo '<div class="box-item bogoc_5px'.$style.'">
				<div class="img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['img_avatar'].'" alt="'.$row['name'].'" /></a></div>
				<a href="'.$row['url'].'" title="'.$row['name'].'"><h3>'.$row['name'].'</h3></a>
				<div class="buy bogoc_5px">Liên hệ</div>
			</div>';
		}
        echo '</div></div>';
    }
    ?>
</div>
<?php include_once('view_web_right.php');?>
<div class="clear_20px"></div>