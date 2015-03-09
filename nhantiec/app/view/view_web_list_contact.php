<div id="content">
    <?php include_once('view_web_navigator.php');?>
    
    <div id="contact">
        <div id="info"><?php echo $current_menu['description'];?></div>
        <div id="map_contact">
        	<h1><?php echo $current_menu['title'];?></h1>
            <p>Địa chỉ: <?php echo $this->_config['address'];?></p>
            <p>Hotline: <?php echo $this->_config['hotline'];?></p>
            <p>Email: <?php echo $this->_config['email'];?></p>
            <p>Website: www.nhantiec.vn</p>
			
            <div style="height:300px; margin-top:10px" id="map_google"></div>
            <?php include_once('view_web_google_map.php');?>
        </div>
        <div id="form">
        	<div id="loading_contact"><img src="themes/website/img/loader.gif" /></div>
            <div id="error_contact" class="error"></div>
            <table width="100%" border="0" cellspacing="20" cellpadding="0">
              <tr><td colspan="4"><p style="font-size:160%; color:#00A651">Form liên hệ</p></td></tr>
              <tr><td><input type="text" name="name_contact" class="contact_txt bogoc_5px" placeholder="Họ tên:" /></td></tr>
              <tr><td><input type="text" name="phone_contact" class="contact_txt bogoc_5px" placeholder="Điện thoại:" /></td></tr>
              <tr><td><input type="text" name="email_contact" class="contact_txt bogoc_5px" placeholder="Email:" /></td></tr>
              <tr><td><input type="text" name="address_contact" class="contact_txt bogoc_5px" placeholder="Địa chỉ:" /></td></tr>
              <tr><td colspan="3"><textarea name="message_contact" class="contact_textarea bogoc_5px" placeholder="Nội dung liên hệ:"></textarea></td></tr>
              <tr><td><input type="button" name="btnSendContact" class="contact_btn bogoc_5px" value="Gửi liên hệ" /></td></tr>
            </table>
        </div>
        <div style="clear:both; height:50px"></div>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	$("input[name=btnSendContact]").click(function(){
		var message = check_text_length("textarea[name=message_contact","#message_contact","<?php echo CONS_ERROR_MESSAGE;?>",10);
		var address = $("input[name=address_contact]").val();
		var email = check_email("input[name=email_contact]","#email_contact","<?php echo CONS_ERROR_EMAIL;?>");
		var phone = check_phone("input[name=phone_contact]","#phone_contact","<?php echo CONS_ERROR_PHONE;?>");
		var name = check_text_length("input[name=name_contact]","#name_contact","<?php echo CONS_ERROR_NAME;?>",2);
		if(name==false || email==false || phone==false || message==false) return false;
		$("#loading_contact").show(); $("#error_contact").html(""); $("#error_contact").hide();
		
		$.ajax({ 	
			url:"<?php echo CONS_BASE_URL;?>/ajax/",
			type:'post',
			data:{contact_name:name,email:email,phone:phone,address:address,message:message},
			cache:false,
			success: function(data){
				setTimeout(function(){
					if(data=='1'){
						$("#form").html('<div id="error_contact">' +
											'<h3>Liên hệ thành công</h3>' +
											'<p>Xin thông báo bạn đã liên hệ đến website <b><?php echo $this->_config['sitename'];?></b> thành công. Chúng tôi sẽ trả lời cho bạn sớm nhất.</p>' +
											'<p>Trân trọng,</p>' +
										'</div>');
						$("#error_contact").show();
						$("#loading_contact").hide();
						return true;
					}else{
						$("#error_contact").html("Lỗi: Vui lòng ấn F5 thử lại");
						$("#error_contact").show();
						$("#loading_contact").hide();
						return false;
					}
				},500);
			}
		});
	});
	
	/*
	//bat tinh nang google map
	$(".google_map").click(function(){
		var name = $(this).attr("name");
		var id_map = $(this).attr("info");
		var height = $("#popupContact").height();
		
		$("#popupContact").height(height);
		centerPopup("fix");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("fix"); });
		
		$.ajax({ 	
			url:"<?php echo CONS_BASE_URL;?>/ajax/",
			type:'post',
			data:{google_map:id_map,name:name},
			cache:false,
			success: function(data){
				$("#ajax_google_map").html(data);
			}
		});
	});
	
	$("#backgroundPopup, #popupContactClose").click(function(){
		disablePopup();
	});
	*/
});
</script>