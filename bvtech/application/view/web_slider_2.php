<?php
$position=1;
$data = $c->_model->_listSliderBanner($lang, $position);
if(count($data)>0){
?>
<link rel="stylesheet" type="text/css" href="js/slider-custom/sliderengine/amazingslider-1.css">

<div id="partner">
	<div id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:100%">
        <div id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
        	<?php
			foreach($data as $row){
				echo '<ul class="amazingslider-slides" style="display:none;">
					<li><img src="'.$urlImg[12]['url_img'].$row['img'].'" alt=""  title="" style="max-width:100%; max-height:100%" /></li>
					<!--<li><img src="'.$urlImg[12]['url_img_thumb'].$row['img'].'"  title="" style="max-width:100%; max-height:100%" /></li>-->
				</ul>';
			}
			?>
        </div>
    </div>
</div>
<script src="js/slider-custom/sliderengine/amazingslider.js"></script>
<script src="js/slider-custom/sliderengine/initslider-1.js"></script>
<?php } ?>