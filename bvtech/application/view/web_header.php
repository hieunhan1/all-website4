<div id="header"><div class="container">
	<div id="logo">
    	<?php
		$position=2;
		$data = $c->_model->_listSliderBanner($lang, $position);
		echo '<a href="'.CONS_BASE_URL.'" title="'.$config['sitename'].'"><img src="'.$urlImg[12]['url_img'].$data[0]['img'].'" alt="'.$config['sitename'].'" /></a>';
		?>
    </div>
    
    <div id="langCopy">
        <div id="lang">
            <?php
            if($lang=='vi') echo '<a href="/?lang=en" class="allIcon" style="background-position:0 -30px">English</a>';
            else echo '<a href="/" class="allIcon">Tiếng Việt</a>';
            ?>
        </div>
        <div class="copyCompany copyCompanyHeader js-copybtn"><a href="javascript:;">Copy information</a></div>
    </div>
    
    <?php include_once('web_partner.php');?>
    
	<div class="clear1"></div>
</div></div>
<script type="text/javascript">
$(document).ready(function(e) {
	function resize(){
		var widthH = parseInt($("#header").width());
		if(widthH > 800){
			var widthL = parseInt($("#logo").width());
			var widthC = parseInt($("#langCopy").width());
			
			var widthP = widthH - widthL - widthC - 180;
			$("#partner").width(widthP);
		}
	}
	
	resize();
	$(window).bind("resize", function(){
		resize()
	});
});
</script>