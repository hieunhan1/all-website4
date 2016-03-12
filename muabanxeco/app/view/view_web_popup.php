<div id="popupContact">
    <div id="content_popup" class="bogoc_5px">
    	<div style="text-align:right"><a href="javascript:;" id="popupContactClose"><img src="themes/website/img/close.png" alt="" /></a></div>
    	<div class="title_pp">Name</div>
        <div id="id_pp" style="display:none"></div>
        <p style="margin-bottom:10px; font-style:italic">Hãy điền thông tin của bạn vào bên dưới, chúng tôi sẽ liên hệ tư vấn cho bạn.</p>
        <div id="loading_contact" style="width:450px"><img src="themes/website/img/loader.gif" style="width:80px" /></div>
        <div id="error_contact" class="error" style="color:#F00"></div>
        <div class="message"></div>
        <table width="100%" border="0" cellpadding="0" cellspacing="10" id="contact">
        	<tr>
            	<td valign="top">Họ tên</td>
                <td><input type="text" name="name_pp" class="txt" /><p id="name_pp" class="error"></p></td>
            </tr>
            <tr>
            	<td valign="top">Điện thoại</td>
                <td><input type="text" name="phone_pp" class="txt" /><p id="phone_pp" class="error"></p></td>
            </tr>
            <tr>
            	<td valign="top">Email</td>
                <td><input type="text" name="email_pp" class="txt" /><p id="email_pp" class="error"></p></td>
            </tr>
            <tr>
            	<td valign="top">Địa chỉ</td>
                <td><input type="text" name="address_pp" class="txt" /></td>
            </tr>
            <tr>
            	<td valign="top">Lời nhắn</td>
                <td><textarea name="message_pp" class="txt" style="line-height:20px; height:60px; resize:none"></textarea><p id="message_pp" class="error"></p></td>
            </tr>
            <tr>
            	<td>&nbsp;</td>
                <td><input type="button" name="btnPP" value="Gửi" class="btn" /></td>
            </tr>
        </table>
        <div style="clear:both; height:50px"></div>
    </div>
</div></div>
<div id="backgroundPopup"></div>

<script type="text/javascript">
	$(document).ready(function(e) {
		function popup(){
			var height = 490; //$("#popupContact").height();
			$("#popupContact").height(height);
			centerPopup("fix");
			loadPopup();
			$(window).bind("resize", function(){ centerPopup("fix"); });
		}
		
		$(".buy").click(function(){
			var id = $(this).attr("id");
			var name = $(this).attr("name");
			$("#contact").show();
			$(".message").html('');
			$("textarea[name=message_pp").val('');
			$("#content_popup .title_pp").html(name);
			$("#id_pp").html(id);
			popup();
		});
		
		$("input[name=btnPP]").click(function(){
			var id = $("#id_pp").html();
			var message = check_text_length("textarea[name=message_pp","#message_pp","<?php echo CONS_ERROR_MESSAGE;?>",10);
			var address = $("input[name=address_pp]").val();
			var email = check_email("input[name=email_pp]","#email_pp","<?php echo CONS_ERROR_EMAIL;?>");
			var phone = check_phone("input[name=phone_pp]","#phone_pp","<?php echo CONS_ERROR_PHONE;?>");
			var name = check_text_length("input[name=name_pp]","#name_pp","<?php echo CONS_ERROR_NAME;?>",2);
			if(name==false || email==false || phone==false || message==false) return false;
			$("#loading_contact").show();
			
			$.ajax({ 	
				url:"<?php echo CONS_BASE_URL;?>/ajax/",
				type:'post',
				data:{contact_name:name,email:email,phone:phone,address:address,message:message,id:id},
				cache:false,
				success: function(data){
					setTimeout(function(){
						if(data=='1'){
							$(".message").html('<h3 style="margin-bottom:10px">Liên hệ thành công</h3>' +
										'<p style="line-height:22px">Xin thông báo bạn đã liên hệ đến website <b><?php echo $this->_config['sitename'];?></b> thành công. Chúng tôi sẽ trả lời cho bạn sớm nhất.</p>' +
										'<p style="line-height:22px">Trân trọng,</p>' +
										'<p style="line-height:22px; margin-top:30px">Thông báo này sẽ tự động đóng lại sau <b>5 giây</b></p>');
							$("#contact").hide();
							$("#error_contact").hide();
							$("#loading_contact").hide();
							setTimeout(function(){ disablePopup(); }, 5000);
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
		
		$("#backgroundPopup, #popupContactClose, input[name=btn_huy_nop_hs]").click(function(){
			disablePopup();
		});
	});
</script>