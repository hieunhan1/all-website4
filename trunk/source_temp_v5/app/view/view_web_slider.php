<?php
$position = 1;
$data = $this->_model->_web_slider_banner($position, $lang, $idMenu);
if($data){
?>
<link rel="stylesheet" href="js/nivo-slider/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="js/nivo-slider/nivo-slider.css" type="text/css" media="screen" />
<div id="slider" class="bogoc_5px">
	<div class="slider-wrapper theme-default"><div id="slider_run" class="nivoSlider">
		<?php
        foreach($data as $row){
            echo '<a href="'.$row['url'].'"><img src="'.CONS_IMAGES_SLIDER_BANNER.$row['url_img'].'" data-thumb="'.CONS_IMAGES_SLIDER_BANNER_THUMBS.$row['url_img'].'" alt="'.$row['name'].'" title="" data-transition="slideInLeft" /></a>';
        }
        ?>
    </div></div>
</div>
<script type="text/javascript" src="js/nivo-slider/jquery.nivo.slider.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$("#slider_run").nivoSlider();
	});
</script>
<?php } ?>