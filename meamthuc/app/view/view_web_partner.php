<?php
$position = 3;
$data = $this->_model->_web_slider_banner($position, $lang);
if($data){
?>
<div id="partner" class="bogoc_5px">
	<div class="simply-scroll simply-scroll-container">
		<div class="simply-scroll-clip">
			<ul id="scroller" class="simply-scroll-list" style="width:2255px">
			<?php
			foreach($data as $row){
				echo '<li style="list-style:none"><a href="'.$row['url'].'" title="'.$row['name'].'" target="_blank"><img src="'.CONS_IMAGES_SLIDER_BANNER.$row['url_img'].'" alt="'.$row['name'].'"></a></li>';
			}
			?>
			</ul>
		</div>
	</div>
</div><!--end #partner-->
<?php
	$script_partner = '<script type="text/javascript" src="js/partner/common.js"></script>
<script type="text/javascript" src="js/partner/jquery.simplyscroll.min.js"></script>
<script type="text/javascript"> (function($){ $(function(){ $("#scroller").simplyScroll(); }); })(jQuery); </script>';
}
?>