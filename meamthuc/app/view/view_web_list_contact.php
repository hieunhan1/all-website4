<div id="navigator">
<?php
$i=0;
$data = $this->navigator($idMenu,$lang);
foreach($data as $row){
    $i++;
    if($i!=1){
        $icon='<span>&gt;&gt;</span>';
    }else{
        $icon='';
    }
    echo $icon.'<a href="'.$row['url'].'">'.$row['name'].'</a>';
}
?>
</div>

<div class="viewpost">
	<?php
    echo "<h1>{$this->_config['sitename']}</h1>";
	echo '<p>Địa chỉ: '.$this->_config['address'].'</p>
	<p>Điện thoại: '.$this->_config['tel'].'</p>
	<p>Email: '.$this->_config['email'].'</p>
	<div style="clear:both; height:15px"></div><hr /><div style="clear:both; height:1px"></div>';
	//echo '<h2 style="color:#00F">'.$current_menu['description'].'</h2>';
    ?>
</div>

<div id="loading_contact"><img src="themes/website/img/loader.gif" /></div>
<div id="contact">
	<div id="error_contact" class="error"></div>
    <table width="100%" cellpadding="0" cellspacing="10">
      <tr>
        <td width="80" valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_NAME;?>:</td>
        <td valign="top"><input type="text" name="name_contact" class="contact_txt" maxlength="50" /><p class="error" id="name_contact"></p></td>
      </tr>
      <tr>
        <td valign="top" style="padding-top:3px">Email:</td>
        <td valign="top"><input type="text" name="email_contact" class="contact_txt" maxlength="60" /><p class="error" id="email_contact"></p></td>
      </tr>
      <tr>
        <td valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_PHONE;?>:</td>
        <td valign="top"><input type="text" name="phone_contact" class="contact_txt" maxlength="20" /><p class="error" id="phone_contact"></p></td>
      </tr>
      <tr>
        <td valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_ADDRESS;?>:</td>
        <td valign="top"><input type="text" name="address_contact" class="contact_txt" maxlength="250" /></td>
      </tr>
      <tr>
        <td valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_MESSAGE;?>:</td>
        <td><textarea name="message_contact" class="contact_textarea"></textarea><p class="error" id="message_contact"></p></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="button" name="btnSend" class="contact_btn" value="<?php echo CONS_CONTACT_SEND;?>" /></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	$("input[name=btnSend]").click(function(){
		var message = check_text_length("textarea[name=message_contact","#message_contact","<?php echo CONS_ERROR_MESSAGE;?>",10);
		var address = $("input[name=address_contact]").val();
		var phone = check_phone("input[name=phone_contact]","#phone_contact","<?php echo CONS_ERROR_PHONE;?>");
		var email = check_email("input[name=email_contact]","#email_contact","<?php echo CONS_ERROR_EMAIL;?>");
		var name = check_text_length("input[name=name_contact]","#name_contact","<?php echo CONS_ERROR_NAME;?>",2);
		
		if(name==false || email==false || phone==false || message==false) return false;
		$("#loading_contact").show(); $("#error_contact").html(""); $("#error_contact").hide();
		
		$.ajax({ 	
			url:"<?php echo $lang;?>/ajax/",
			type:'post',
			data:{contact_name:name,email:email,phone:phone,address:address,message:message},
			cache:false,
			success: function(data){
				setTimeout(function(){
					if(data=='1'){
						$("#contact").html('<div id="error_contact">' +
											'<h3>Liên hệ thành công</h3>' +
											'<p>Xin thông báo bạn đã liên hệ đến website <b><?php echo $this->_config['site_name'];?></b> thành công. Chúng tôi sẽ trả lời cho bạn sớm nhất.</p>' +
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
});
</script>