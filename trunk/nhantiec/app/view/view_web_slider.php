<?php
$position = 1;
$data = $this->_model->_web_slider_banner($position, $this->_lang, $current_menu['id']);
if($data && $current_menu['id']==1){
?>
<link rel="stylesheet" href="js/nivo-slider/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="js/nivo-slider/nivo-slider.css" type="text/css" media="screen" />
<div id="box_slider">
	<div id="line_slider"></div>
    <div id="slider">
        <div class="slider-wrapper theme-default"><div id="slider_run" class="nivoSlider">
            <?php
            foreach($data as $row){
                echo '<a href="'.$row['url'].'"><img src="public/images/slider-banner/'.$row['img_avatar'].'" data-thumb="public/_thumbs/Images/slider-banner/'.$row['img_avatar'].'" alt="'.$row['name'].'" title="" data-transition="slideInLeft" /></a>';
            }
            ?>
        </div></div>
    </div>
</div>
<script type="text/javascript" src="js/nivo-slider/jquery.nivo.slider.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$("#slider_run").nivoSlider();
	});
</script>
<?php }elseif($data){
	echo '<div id="box_slider" style="height:160px">
		<div id="line_slider"></div>
		<div id="slider">
			<img src="public/images/slider-banner/'.$data[0]['img_avatar'].'" alt="'.$data[0]['name'].'" style="position:absolute; z-index:2; width:940px;" />
			<h3>'.$data[0]['name'].'</h3>
		</div>
	</div>';
}?>