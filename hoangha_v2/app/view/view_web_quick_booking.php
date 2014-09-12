<div id="loading_booking"><img src="themes/website/img/loader.gif" /></div>
<div id="quick_booking" class="all_icon_bg bogoc_5px">
	<div class="titleQuickBooking">Quick booking <span></span></div>
    <div id="error_booking"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" id="frm_QuickBooking">
      <tr>
        <td valign="top" width="60">Name</td>
        <td><input type="text" name="name_booking" class="txtQuickBooking bogoc_5px" /><p class="error" id="name_booking" style="font-size:90%"></p></td>
      </tr>
      <tr>
        <td valign="top">Address</td>
        <td><input type="text" name="address_booking" class="txtQuickBooking bogoc_5px" /><p class="error" id="address_booking" style="font-size:90%"></p></td>
      </tr>
      <tr>
        <td valign="top">Phone</td>
        <td><input type="text" name="phone_booking" class="txtQuickBooking bogoc_5px" /><p class="error" id="phone_booking" style="font-size:90%"></p></td>
      </tr>
      <tr>
        <td valign="top">Message</td>
        <td><textarea name="message_booking" class="txtareaQuickBooking bogoc_5px"></textarea><p class="error" id="message_booking" style="font-size:90%"></p></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="button" name="btnQuickBooking" value="Send" class="btnQuickBooking bogoc_5px all_icon_bg" /></td>
      </tr>
    </table>
</div>

<div id="call" class="all_icon_bg bogoc_5px">
	<p><?php echo CONS_HOME_CALL_NOW;?></p>
    <div class="all_icon">(84.8) 3948 4696</div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
	$("input[name=btnQuickBooking]").click(function(){
		var message = check_text_length("textarea[name=message_booking","#message_booking","<?php echo CONS_ERROR_MESSAGE;?>",10);
		var phone = check_phone("input[name=phone_booking]","#phone_booking","<?php echo CONS_ERROR_PHONE;?>");
		var address = check_text_length("input[name=address_booking]","#address_booking","<?php echo CONS_ERROR_ADDRESS;?>",3);
		var name = check_text_length("input[name=name_booking]","#name_booking","<?php echo CONS_ERROR_NAME;?>",2);
		
		if(name==false || address==false || phone==false || message==false) return false;
		$("#loading_booking").show(); $("#error_booking").html(""); $("#error_booking").hide();
		
		$.ajax({ 	
			url:"<?php echo $lang;?>/ajax/",
			type:'post',
			data:{QuickBooking:name,address:address,phone:phone,message:message},
			cache:false,
			success: function(data){
				setTimeout(function(){
					$("#loading_booking").hide();
					$("#error_booking").show();
					$("#frm_QuickBooking").html('');
					if(data=='1'){
						$("#error_booking").html('<p class="message">Booking success.</p><br />');
						return true;
					}else{
						$("#error_booking").html('<p class="error">Lỗi: Vui lòng ấn F5 thử lại</p><br />');
						return false;
					}
				},500);
			}
		});
	});
});
</script>