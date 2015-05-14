<?php include_once('view_web_navigator.php');?>
<div id="article" class="z-index-2">
    <div class="viewpost">
        <?php
		$data = $this->_model->_web_product_img($row_detail['id']);
		$strProductImg='';
		if($data!=1){
			$strProductImg = '<div id="photos"><ul>';
			foreach($data as $row){
				$strProductImg .= '<li class="li2">
				<a class="fancybox" href="'.CONS_IMAGES_PRODUCTS_IMG.$row['img_avatar'].'" data-fancybox-group="gallery" title="'.$row['name'].'">
					<div class="img2"><img src="'.CONS_IMAGES_PRODUCTS_IMG_THUMBS.$row['img_avatar'].'" alt="'.$row['name'].'" /></div>
				</a>
			</li>';
			}
			$strProductImg .= '</ul></div> <div class="clear_1px"></div>';
		}
		
        echo '<h1>'.$row_detail['name'].'</h1>';
		echo '<div id="dactinh">
			<div class="image">
				<img src="'.$current_menu['type_menu_img'].$row_detail['img_avatar'].'" alt="'.$row_detail['name'].'" />
			</div>
			<div class="dactinh">'.$row_detail['dactinh'].'</div>
			<div class="buy bogoc_8px" id="'.$row_detail['id'].'" name="'.$row_detail['name'].'">Liên hệ để biết giá</div>
			<div class="clear_1px"></div>
			'.$strProductImg.'
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
				<div class="buy bogoc_5px" id="'.$row['id'].'" name="'.$row['name'].'">Liên hệ</div>
			</div>';
		}
        echo '</div></div>';
    }
    ?>
</div>
<?php include_once('view_web_right.php');?>
<div class="clear_20px"></div>

<link rel="stylesheet" type="text/css" href="js/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />
<script type="text/javascript" src="js/extension/source/jquery.fancybox.js?v=2.1.5"></script>
<script type="text/javascript" charset="utf-8">
    $(document).ready(function(){
        $(".fancybox").fancybox();
    });
</script>