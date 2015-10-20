<?php
$position = 1;
$data = $c->_model->_listSliderBanner($lang, $position, $currentMenu['id']);
if(count($data)>0){
?>
<link rel="stylesheet" href="js/nivo-slider/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="js/nivo-slider/nivo-slider.css" type="text/css" media="screen" />
<div id="slider"><div class="container">
	<div class="slider-wrapper theme-default"><div id="slider_run" class="nivoSlider">
		<?php
        foreach($data as $row){
            echo '<a href="'.$row['url'].'"><img src="'.$urlImg[12]['url_img'].$row['img'].'" data-thumb="'.$urlImg[12]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" title="" data-transition="slideInLeft" /></a>';
        }
        ?>
    </div></div>
</div></div>
<script type="text/javascript" src="js/nivo-slider/jquery.nivo.slider.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$("#slider_run").nivoSlider();
	});
</script>
<?php
	flush();
}
?>