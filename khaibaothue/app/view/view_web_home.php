<div id="about_home">
    <?php
    $data = $this->_model->_home_about($idMenu);
    echo "<h1 class='title_home_page'>{$data['name']}</h1>{$data['content']}";
    ?>
</div>
<div style="clear:both; height:30px"></div>
    
<div id="home_service">
	<?php
	$i=0;
    $data = $this->_model->_home_service();
	foreach($data as $row){
		$i++;
		if($i==1){
			$margin = '';
			$position = '';
		}else if($i==2){
			$margin = 'style="margin:0 42px"';
			$position = 'style="background-position:0 803px"';
		}else if($i==3){
			$margin = '';
			$position = 'style="background-position:0 408px"';
		}
		echo '<div class="item_home_service" '.$margin.'>
			<div class="item_home_service_img"><img src="'.CONS_IMAGES_ARTICLES_THUMBS.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
			<div class="item_home_service_info" '.$position.'>
				<h3>'.$row['name'].'</h3>
				<p>'.$row['metaDescription'].'</p>
				<a href="'.$row['url'].'"><span style="text-decoration:underline">Xem thêm</span> <span style="font-size:9px">&gt;&gt;</span></a>
			</div>
		</div>';
	}
	?>
</div>

<div style="clear:both; height:40px"></div>

<div id="home_info">
	<div class="title_home_page">Thông tin kế toán - Thuế</div>
    <?php
    $data = $this->_model->_home_thongtin_ketoan();
	foreach($data as $row){
		echo '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
	}
	?>
</div>

<div id="home_partner">
	<div class="title_home_page">Thông tin liên kết</div>
    <?php
    $data = $this->_model->_web_slider_banner(3,$lang);
	foreach($data as $row){
		echo '<li><a href="'.$row['url'].'" target="_blank" title="'.$row['name'].'"><img src="'.CONS_IMAGES_SLIDER_BANNER.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></li>';
	}
	?>
    
</div>

<div style="clear:both; height:30px"></div>