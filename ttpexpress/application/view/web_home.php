<div id="homeType1">
	<?php
    $i=0;
    $data = $c->_home->_listMenuHome($currentMenu['id']);
    foreach($data as $row){
        $i++;
        if($i%4!=1) $style=' margin'; else $style='';
		$title = explode('-', $row['name']);
		$info = explode('-', $row['description']);
		$str='';
		for($j=0; $j<count($info); $j++) $str.='<p>'.$info[$j].'</p>';
        echo '<div class="box'.$style.'">
            <h2 class="title">'.$title[0].' <span>'.$title[1].'</span></h2>
            <div class="info">'.$str.'</div>
            <a href="'.$row['url'].'" title="'.$row['title'].'" class="link">'.CONS_READ_MORE.'</a>
        </div>';
    }
    ?>
    <p class="clear1"></p>
</div>

<div id="homeType2">
	<?php
    $data = $c->_model->_listDetailMenu($currentMenu['id']);
	foreach($data as $row){
		echo '<div class="box">
			<a href="'.$row['url'].'" title="'.$row['name'].'"><h3 class="title" style="border-bottom:dotted 5px #CCC">'.$row['name'].'</h3></a>
			<div class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[2]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></div>
			<div class="info">'.$row['description'].'</div>
			<a href="'.$row['url'].'" class="link">'.CONS_READ_MORE.'</a>
		</div>';
	}
	?>
    <div class="seeall"><a href="javascript:;" title="" class="allIcon">See all</a></div>
    <p class="clear1"></p>
</div>

<?php include_once('web_right.php');?>

<div style="clear:both; height:50px"></div>