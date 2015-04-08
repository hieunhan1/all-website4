<div id="support" class="bogoc_top_5px">
	<div class="title font-times">HỖ TRỢ TRỰC TUYẾN <span class="window minimize">&nbsp;</span><span class="window maximum">&nbsp;</span></div>
    <div class="s-content">
    	<p id="chat"><a href="javascript:;">Chat với chúng tôi</a></p>
    	<p class="p">Điện thoại: <span class="tel"><?php echo $this->_config['tel']?></span></p>
    	<p class="p">Hotline: <span class="hot"><?php echo $this->_config['hotline']?></span></p>
        <div id="ajax_chat"></div>
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