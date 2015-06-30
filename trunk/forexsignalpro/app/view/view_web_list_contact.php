<div class="container">
	<?php include_once('view_web_navigator.php');?>
    
    <div class="viewpost">
        <?php
        echo "<h1>{$this->_config['sitename']}</h1>";
        echo '<p>Support email: '.$this->_config['email'].'</p>
        <hr />';
        //echo '<h2 style="color:#00F">'.$current_menu['description'].'</h2>';
        ?>
    </div>
    
    <div id="loading_contact"><img src="themes/website/img/loader.gif" /></div>
    <div id="contact">
        <div id="error_contact" class="error"></div>
        <table width="900px" border="0" cellspacing="20" cellpadding="0" style="margin:0 auto 30px auto">
          <tr>
            <td colspan="4"><p style="font-size:160%"><?php echo CONS_CONTACT_INFO;?></p></td>
          </tr>
          <tr>
            <td width="100" valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_NAME;?>:</td>
            <td valign="top"><input type="text" name="name_contact" class="contact_txt" maxlength="50" /><p class="error" id="name_contact"></p></td>
            <td width="100" align="right" valign="top" style="padding-top:3px">Email:</td>
            <td valign="top"><input type="text" name="email_contact" class="contact_txt" maxlength="60" /><p class="error" id="email_contact"></p></td>
          </tr>
          <tr>
            <td valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_PHONE;?>:</td>
            <td valign="top"><input type="text" name="phone_contact" class="contact_txt" maxlength="20" /><p class="error" id="phone_contact"></p></td>
            <td align="right" valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_ADDRESS;?>:</td>
            <td valign="top"><input type="text" name="address_contact" class="contact_txt" maxlength="250" /></td>
          </tr>
          <tr>
            <td valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_MESSAGE;?>:</td>
            <td colspan="3"><textarea name="message_contact" class="contact_textarea"></textarea><p class="error" id="message_contact"></p></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="button" name="btnSendContact" class="contact_btn" value="<?php echo CONS_CONTACT_SEND;?>" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
    </div>
</div>
<!--
<div id="popupContact">
    <div id="content_popup">
    	<div style="text-align:right; padding:5px 5px 0 0; background-color:#FFF"><a href="javascript:;" id="popupContactClose"><img src="themes/website/img/close.png" alt="" /></a></div>
        <div id="ajax_google_map" style="height:450px"></div>
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&language=vi"></script>
	</div>
</div>
<div id="backgroundPopup"></div>
-->
<script type="text/javascript">
$(document).ready(function(e) {
	$("input[name=btnSendContact]").click(function(){
		var message = check_text_length("textarea[name=message_contact","#message_contact","<?php echo CONS_ERROR_MESSAGE;?>",10);
		var address = $("input[name=address_contact]").val();
		var phone = check_phone("input[name=phone_contact]","#phone_contact","<?php echo CONS_ERROR_PHONE;?>");
		var email = check_email("input[name=email_contact]","#email_contact","<?php echo CONS_ERROR_EMAIL;?>");
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
						$("#contact").html('<div id="error_contact">' +
											'<h3>Contact success</h3>' +
											'<p>Please inform your contacts to <b><?php echo $this->_config['sitename'];?></b> successful website. We will reply to you soon.</p>' +
											'<p>Sincerely,</p>' +
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