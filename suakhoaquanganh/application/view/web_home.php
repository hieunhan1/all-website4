<div id="homeType1">
	<?php
    $i=0;
    $data = $c->_home->_listMenuHome($currentMenu['id']);
    foreach($data as $row){
        $i++;
        if($i%4!=1) $style=' margin'; else $style='';
		$title = explode('-', $row['name']);
		$str='';
        echo '<div class="box'.$style.'">
            <h2 class="title">'.$title[0].' <span>'.$title[1].'</span></h2>
            <div class="info">'.$row['description'].'</div>
            <a href="'.$row['url'].'" title="'.$row['title'].'" class="link">'.CONS_READ_MORE.'</a>
        </div>';
    }
    ?>
</div>
<div class="clear1"></div>
<div id="homeType2">
	<?php
    $data = $c->_model->_listDetailMenu($currentMenu['id']);
	foreach($data as $row){
		echo '<div class="box">
			<div class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[2]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></div>
			<a href="'.$row['url'].'" title="'.$row['name'].'"><h3 class="title">'.$row['name'].'</h3></a>
			<div class="info">'.$row['description'].'</div>
			<a href="'.$row['url'].'" class="link">'.CONS_READ_MORE.'</a>
			<div class="clear1"></div>
		</div>';
	}
	?>
</div>

<?php include_once('web_right.php');?>

<div style="clear:both; height:60px"></div>