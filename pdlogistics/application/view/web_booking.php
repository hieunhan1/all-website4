<div id="frmBooking">
    <h4>Quick Booking</h4>
    <table width="100%" border="0" cellpadding="0" cellspacing="10">
    	<tr>
        	<td align="right">Name</td>
        	<td><input type="text" name="name" class="txtBooking" /></td>
        </tr>
    	<tr>
        	<td align="right">Phone</td>
        	<td><input type="text" name="phone" class="txtBooking" /></td>
        </tr>
    	<tr>
        	<td align="right">Address</td>
        	<td><input type="text" name="address" class="txtBooking" /></td>
        </tr>
    	<tr>
        	<td align="right" valign="top">Message</td>
        	<td><textarea name="message" class="txtaBooking"></textarea></td>
        </tr>
    	<tr>
        	<td align="right">&nbsp;</td>
        	<td><input type="button" name="btnBooking" value="Booking" class="btnBooking" /></td>
        </tr>
    </table>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("input[name=btnBooking]").click(function(){
		var message = check_text_length("textarea[name=message","#message","<?php echo CONS_ERROR_MESSAGE;?>",10);
		var address = $("input[name=address]").val();
		var phone = check_phone("input[name=phone]","#phoneContact","<?php echo CONS_ERROR_PHONE;?>");
		var name = check_text_length("input[name=name]","#nameContact","<?php echo CONS_ERROR_NAME;?>",2);
		if(name==false || phone==false || message==false) return false;
		$(".loading").show();
		$(".errorContact").html('');
		$(".messageContact").html('');
		
		$.ajax({ 	
			url:"ajax/",
			type:'post',
			data:{webContact:name, email:email, phone:phone, address:address, message:message},
			cache:false,
			success: function(data){
				setTimeout(function(){
					if(data!='0' && data!='2'){
						$("#contact").html('<div class="messageContact viewpost">' +
											'<h3>Liên hệ thành công</h3>' +
											'<p>Xin thông báo bạn đã liên hệ đến website <b><?php echo $config['sitename'];?></b> thành công. Chúng tôi sẽ trả lời cho bạn sớm nhất.</p>' +
											'<p>Trân trọng,</p>' +
										'</div>');
						$(".loading").hide();
						return true;
					}else if(data=='2'){
						$(".errorContact").html("Bạn thao tác quá nhanh, vui lòng thử lại sau 30 giây.");
						$(".loading").hide();
						return false;
					}else{
						$(".errorContact").html("Lỗi: Vui lòng ấn F5 thử lại");
						$(".loading").hide();
						return false;
					}
				},500);
			}
		});
	});
});
</script>