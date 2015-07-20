<div id="right">
	<div id="news">
		<?php
        $parent=0; $position=5;
        $dataLeft = $c->_model->_listMenu($lang, $parent, $position);
		echo '<h2 class="title">'.$dataLeft[0]['name'].'</h2>';
		echo '<div id="homeType2">';
		$data = $c->_model->_listProductMenu($dataLeft[0]['id']);
		foreach($data as $row){
			echo '<div class="box">
				<div class="img"><img src="'.$urlImg[3]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></div>
				<a href="'.$row['url'].'" title="'.$row['name'].'"><h3 class="h3">'.$row['name'].'</h3></a>
				<a href="'.$row['url'].'" class="link">Xem chi tiết</a>
			</div>';
		}
		echo '<div class="clear1"></div></div>';
        ?>
    </div>
    
</div>