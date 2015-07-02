<div id="right">
	<div id="news">
		<?php
        $parent=0; $position=4;
        $dataLeft = $c->_model->_listMenu($lang, $parent, $position);
		echo '<h2 class="title">'.$dataLeft[0]['name'].'</h2>';
		$data = $c->_model->_listDetailMenu($dataLeft[0]['id'], 5);
		foreach($data as $row){
			echo '<div class="box">
				<div class="date">'.date('l, F d Y', $row['datetime']).'</div>
				<a href="'.$row['url'].'" class="link">'.$row['name'].'</a>
			</div>';
		}
        ?>
    </div>
    
</div>