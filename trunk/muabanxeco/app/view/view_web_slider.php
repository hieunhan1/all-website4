<?php
$position = 1;
$data = $this->_model->_web_slider_banner($position, $this->_lang, $current_menu['id']);
if($data){
?>
<link rel="stylesheet" href="js/nivo-slider/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="js/nivo-slider/nivo-slider.css" type="text/css" media="screen" />
<div id="bg_slider"></div>
<div id="slider">
	<div class="slider-wrapper theme-default"><div id="slider_run" class="nivoSlider">
		<?php
        foreach($data as $row){
            echo '<a href="'.$row['url'].'"><img src="'.CONS_IMAGES_SLIDER_BANNER.$row['img_avatar'].'" data-thumb="'.CONS_IMAGES_SLIDER_BANNER_THUMBS.$row['img_avatar'].'" alt="'.$row['name'].'" title="" data-transition="slideInLeft" /></a>';
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