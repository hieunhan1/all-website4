<div id="home_dv">
	<?php
	$i = 0;
    $position = 2;
	$data = $this->_model->_web_slider_banner($position, $this->_lang, $current_menu['id']);
	foreach($data as $row){
		$i++;
		if($i!=2 && $i!=5 && $i!=8) $style = ''; else $style = 'style="margin:0 15px 15px"';
		echo '<div class="home_dv_box" '.$style.'>
			<div class="home_dv_img"><a href="'.$row['url'].'"><img src="public/images/slider-banner/'.$row['img_avatar'].'" alt="'.$row['name'].'" /></a></div>
			<div class="home_dv_info" style="background-color:#49A21E">
				<a href="'.$row['url'].'"><h2>'.$row['name'].'</h2></a>
				<p>'.strip_tags($row['description']).'</p>
			</div>
		</div>';
	}
	?>
</div>

<div class="home_item">
    <h3>NHẬN XÉT CỦA THỰC KHÁCH</h3>
    <div class="home_item_line"></div>
    <div class="home_item_info viewpost">
    	<?php
        $i = 0;
		$position = 3;
		$data = $this->_model->_web_slider_banner($position, $this->_lang, $current_menu['id']);
		foreach($data as $row){
			echo '<div>'.$row['description'].'</div><div class="img_botron"><img src="public/images/slider-banner/'.$row['img_avatar'].'" alt="'.$row['name'].'" /></div><div style="clear:both; height:1px"></div>';
		}
		?>
    </div>
    <div class="home_item_line"></div>
</div>
<div style="clear:both; height:20px"></div>
<div class="home_item">
    <h3>LIÊN HỆ VỚI CHÚNG TÔI</h3>
    <div style="height:365px" id="map_google"></div>
    <?php include_once('view_web_google_map.php');?>
</div>