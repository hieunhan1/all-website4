<?php
$position = 1;
$data = $this->_model->_web_slider_banner($position, $lang, $menu_root_id);
if($data){
?>
<div id="slider">
	<div class="slider-wrapper theme-default"><div id="slider_run" class="nivoSlider">
		<?php
        foreach($data as $row){
            echo '<a href="'.$row['url'].'"><img src="'.CONS_IMAGES_SLIDER_BANNER.$row['url_hinh'].'" data-thumb="'.CONS_IMAGES_SLIDER_BANNER_THUMBS.$row['url_hinh'].'" alt="'.$row['name'].'" title="" data-transition="slideInLeft" /></a>';
        }
        ?>
    </div></div>
</div>
<link rel="stylesheet" href="library/js/nivo-slider/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="library/js/nivo-slider/nivo-slider.css" type="text/css" media="screen" />
<script type="text/javascript" src="library/js/nivo-slider/jquery.nivo.slider.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$("#slider_run").nivoSlider();
	});
</script>
<?php } ?>