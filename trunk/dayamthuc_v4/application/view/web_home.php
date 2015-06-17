<?php
$dataHome = $c->_home->_listMenuHome($currentMenu['id']);

$arrMargin = array('', 'style="margin-left:335px"', 'style="margin-left:670px"');
$arrShadow = array('style="box-shadow:-5px -5px #CCC"', 'style="box-shadow:0 -5px #CCC"', 'style="box-shadow:5px -5px #CCC"', 'style="box-shadow:-5px 5px #CCC"', 'style="box-shadow:0px 5px #CCC"', 'style="box-shadow:5px 5px #CCC"');
$arrIcon = array('style="background-position:0px -350px"', 'style="background-position:0px -380px"', 'style="background-position:0px -410px"', 'style="background-position:0px -350px"', 'style="background-position:0px -380px"', 'style="background-position:0px -410px"');
?>

<?php if(isset($dataHome[0]['id'])){?>
<div id="homeType1" class="content">
	<?php
	for($i=0; $i<3; $i++){
		echo '<div class="box" '.$arrMargin[$i].'>
			<h3 class="title allIcon">'.$dataHome[$i]['name'].'</h3>
			<div class="info" '.$arrShadow[$i+3].'>
				<div class="img"><a href="'.$dataHome[$i]['url'].'"><img src="'.$urlImg[11]['url_img'].$dataHome[$i]['img'].'" alt="'.$dataHome[$i]['name'].'" /></a></div>
				<div class="icon allIcon" '.$arrIcon[$i].'>&nbsp;</div>
				<div class="des">'.$dataHome[$i]['description'].'</div>
			</div>
			<div class="viewmore allIcon"><a href="'.$dataHome[$i]['url'].'" title="'.$dataHome[$i]['title'].'">Đọc thêm</a></div>
		</div>';
	}
	?>
</div>
<?php }?>

<?php if(isset($dataHome[3]['id'])){?>
<div id="homeType2">
	<div class="content">
    	<?php
        for($i=3; $i<6; $i++){
			echo '<div class="box">
				<div class="img"><a href="'.$dataHome[$i]['url'].'"><img src="'.$urlImg[11]['url_img'].$dataHome[$i]['img'].'" alt="'.$dataHome[$i]['name'].'" /></a></div>
				<a href="'.$dataHome[$i]['url'].'" title="'.$dataHome[$i]['title'].'"><h3 class="title">'.$dataHome[$i]['name'].'</h3></a>
			</div>';
		}
		?>
	</div>
</div>
<?php }?>

<?php if(isset($dataHome[6]['id'])){?>
<div id="homeType3" class="content">
	<a href="<?php echo $dataHome[6]['url'];?>" title="<?php echo $dataHome[6]['title'];?>"><h3 class="title allIcon"><?php echo $dataHome[6]['name'];?></h3></a>
    <?php
	$i=0;
    $data = $c->_home->_listChuongTrinhHome2($dataHome[6]['id']);
	foreach($data as $row){
		if($i%3!=0) $style='style="margin-left:25px"'; else $style='';
		echo '<div class="box" '.$style.'>
			<div class="info" '.$arrShadow[$i].'>
				<div class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[11]['url_img'].$row['img'].'" alt="'.$row['name'].'" /></a></div>
				<div class="icon allIcon" '.$arrIcon[$i].'>&nbsp;</div>
				<a href="'.$row['url'].'" title="'.$row['name'].'"><h4>'.$row['name'].'</h4></a>
				<div class="des">'.$row['description'].'</div>
			</div>
			<div class="viewmore allIcon"><a href="'.$row['url'].'">Đọc thêm</a></div>
		</div>';
		$i++;
	}
	?>
</div>
<div class="clear20"></div>
<?php }?>

<?php
if(isset($dataHome[7]['id'])){
?>
	<div id="homeType4" class="content">
    	<a href="<?php echo $dataHome[7]['url'];?>" title="<?php echo $dataHome[7]['title'];?>"><h3 class="title allIcon"><?php echo $dataHome[7]['name'];?></h3></a>
        <div class="news">
        	<?php
            $data = $c->_model->_listDetailMenu($dataHome[7]['id'], 5);
			foreach($data as $row){
				echo '<div class="item">
					<div class="img"><a href="'.$row['url'].'" title="'.$row['name'].'"><img src="'.$urlImg[2]['url_img'].$row['img'].'" alt="'.$row['name'].'" /></a></div>
					<a href="'.$row['url'].'" title="'.$row['name'].'"><h5>'.$row['name'].'</h5></a>
					<p class="info">'.$row['description'].'</p>
				</div>';
			}
			?>
        </div>
        <div class="event">
        	<?php
            $position = 2;
			$data = $c->_model->_listSliderBanner($lang, $position, $dataHome[7]['id']);
			foreach($data as $row){
				echo '<div class="img"><a href="'.$row['url'].'" title="'.$row['name'].'"><img src="'.$urlImg[12]['url_img'].$row['img'].'" alt="'.$row['name'].'" /></a></div>';
			}
			?>
        </div>
        <div class="clear1"></div>
    </div>
<?php }?>

<?php if(isset($dataHome[8]['id'])){?>
<div id="homeType5" class="content">
	<a href="<?php echo $dataHome[8]['url'];?>" title="<?php echo $dataHome[8]['title'];?>"><h3 class="title allIcon"><?php echo $dataHome[8]['name'];?></h3></a>
    <div id="photos"><ul>
        <?php
        $data = $c->_home->_listPhotoHome($dataHome[8]['id']);
		foreach($data as $row){
			echo '<li><p class="img"><a class="fancybox" href="'.$urlImg[5]['url_img'].$row['img'].'" data-fancybox-group="gallery" title="'.$row['name'].'"><img src="'.$urlImg[5]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></p></li>';
		}
        ?>
    </ul></div>
    <div class="clear1"></div>
    <link rel="stylesheet" type="text/css" href="js/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />
    <script type="text/javascript" src="js/extension/source/jquery.fancybox.js?v=2.1.5"></script>
	<script type="text/javascript" charset="utf-8"> $(document).ready(function(){ $(".fancybox").fancybox(); }); </script>
</div>
<?php }?>
