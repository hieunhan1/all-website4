<div id="support" class="bogoc_top_5px">
	<div class="title font-times">HÃY GỌI CHÚNG TÔI <span class="window minimize">&nbsp;</span><span class="window maximum">&nbsp;</span></div>
    <div class="s-content">
    	
		<?php
        /*$hotline = explode(',', $this->_config['hotline']);
		$count = count($hotline);
		for($i=0; $i<$count; $i++) echo '<p class="p font-times">'.$hotline[$i].'</p>';*/
		?>
        <p class="p font-times">Hotline: <span class="tel"><?php echo $this->_config['hotline'];?></span></p>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $(".minimize").click(function(){
		$(this).hide();
		$(".maximum").show();
		$("#support .s-content").hide(200);
	});
	$(".maximum").click(function(){
		$(this).hide();
		$(".minimize").show();
		$("#support .s-content").show(200);
	});
	
	$("#chat").click(function(){
		$.ajax({ 	
			url:"<?php echo CONS_BASE_URL;?>/ajax/",
			type:'post',
			data:{chat_online:1},
			cache:false,
			success: function(data){
				$("#ajax_chat").html(data);
			}
		});
	});
});
</script>