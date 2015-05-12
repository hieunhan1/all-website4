<?php
$type = 2;
$data_menu = $this->_model->_list_menu_home_page($this->_lang, $type);
?>
<div style="clear:both; height:70px"></div>
<div id="homepage" class="content z-index-2">
	<!--<div id="news">
    	<div class="title_home font-times"><?php echo $data_menu[0]['name'];?></div>
        <?php
        $data = $this->_model->_list_article_home_page($data_menu[0]['id'], 3);
		foreach($data as $row){
			echo '<div class="item">
        	<a href="'.$row['url'].'" title="'.$row['name'].'"><h3>'.$row['name'].'</h3></a>
            <p>'.$row['description'].'</p></div>';
		}
		?>
        <a href="<?php echo $data_menu[0]['url'];?>" title="<?php echo $data_menu[0]['title'];?>" class="link">Xem tất cả</a>
    </div>
    
    <div id="about" class="viewpost">
		<?php
        $data = $this->_model->_list_article_home_page($current_menu['id']);
		echo '<h1 class="font-times">'.$data[0]['name'].'</h1>
		<img src="'.CONS_IMAGES_ARTICLES.$data[0]['img_avatar'].'" alt="'.$data[0]['name'].'" class="img" />'.$data[0]['content'];
        ?>
    </div>
    <div style="clear:both; height:30px"></div>-->
    
    <?php
	$type = 3;
	$data = $this->_model->_list_menu_home_page($this->_lang, $type, 5);
	foreach($data as $row){
		$str = '';
		$i=0;
		$data_xe = $this->_model->_list_product_home_page($row['id'], $this->_config['limit_3']);
		foreach($data_xe as $row_xe){
			$i++;
			if($i%4 != 1) $style=' margin'; else $style='';
			$str .= '<div class="box-item'.$style.'">
				<div class="img"><a href="'.$row_xe['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row_xe['img_avatar'].'" alt="'.$row_xe['name'].'" /></a></div>
				<a href="'.$row_xe['url'].'" title="'.$row_xe['name'].'"><h3>'.$row_xe['name'].'</h3></a>
				<div class="buy bogoc_5px" id="'.$row_xe['id'].'" name="'.$row_xe['name'].'">Liên hệ</div>
			</div>';
		}
		echo '<div id="list_product">
			<div class="title_home font-times">'.$row['name'].'</div>
			'.$str.'
			<div class="clear_20px"></div>
		</div>';
	}
	?>
    <div class="clear_20px"></div>
</div>