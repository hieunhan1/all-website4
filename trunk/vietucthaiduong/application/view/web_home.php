<div class="container">
	<?php
    $data = $c->_model->_listDetailMenu($currentMenu['id'], 1, ',`content`');
	if(count($data) > 0){
		echo '<div id="homeType1">
			<div class="info viewpost">
				<h1 class="h1">'.$data[0]['name'].'</h1>
				'.$data[0]['content'].'
			</div>
			<div class="img"><img src="'.$urlImg[2]['url_img'].$data[0]['img'].'" alt="'.$data[0]['name'].'" /></div>
		</div>
		<div class="clear1"></div>';
	}
    ?>
    <div id="homeType2">
    	<?php
        $data2 = $c->_home->_listMenuHome($lang);
		foreach($data2 as $row2){
			echo '<div class="title"><h2 class="h2">'.$row2['name'].'</h2>
				<a href="'.$row2['url'].'" title="'.$row2['name'].'" class="link">Xem tất cả -&gt;</a></div>';
			$i=0;
			$data = $c->_model->_listProductMenu($row2['id']);
			foreach($data as $row){
				$i++;
				if($i%4 != 1) $style='margin'; else $style='';
				echo '<div class="box '.$style.'">
					<div class="img"><img src="'.$urlImg[3]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></div>
					<a href="'.$row['url'].'" title="'.$row['name'].'"><h3 class="h3">'.$row['name'].'</h3></a>
					<a href="'.$row['url'].'" class="link">Xem chi tiết</a>
				</div>';
			}
			echo '<div class="clear30"></div>';
		}
		?>
    </div>
	<div class="clear30"></div>
</div>