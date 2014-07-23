<div id="navigator">
<?php
$i=0;
$data = $this->navigator($idMenu,$lang);
foreach($data as $row){
	$i++;
	if($i!=1) $icon='<span>&gt;&gt;</span>'; else $icon='';
	echo $icon.'<a href="'.$row['url'].'">'.$row['name'].'</a>';
}
?>
</div>

<div class="viewpost">
	<?php
    echo "<h1>{$row_config['name']}</h1>";
	echo $row_config['contact_foo'].'<div style="clear:both; height:1px"></div><hr /><div style="clear:both; height:1px"></div>';
	
	echo '<h2 style="color:#00F">'.$row_menu_one['metaDescription'].'</h2>';
    ?>
</div>

<div id="loading_contact"><img src="css/web_img/loader.gif" /></div>
<div id="contact">
	<div id="error_contact" class="error"></div>
    <table width="88%" border="0" cellspacing="20" cellpadding="0" style="margin:auto">
      <tr>
        <td colspan="4"><p style="font-size:160%"><?php echo CONS_CONTACT_INFO;?></p></td>
      </tr>
      <tr>
        <td width="100" valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_NAME;?>:</td>
        <td><input type="text" name="name_contact" class="contact_txt" maxlength="50" /><span class="error" id="name_contact"></span></td>
        <td width="100" align="right" valign="top" style="padding-top:3px">Email:</td>
        <td><input type="text" name="email_contact" class="contact_txt" maxlength="60" /><span class="error" id="email_contact"></span></td>
      </tr>
      <tr>
        <td valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_PHONE;?>:</td>
        <td><input type="text" name="phone_contact" class="contact_txt" maxlength="20" /><span class="error" id="phone_contact"></span></td>
        <td align="right" valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_ADDRESS;?>:</td>
        <td><input type="text" name="diachi_contact" class="contact_txt" maxlength="250" /></td>
      </tr>
      <tr>
        <td valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_MESSAGE;?>:</td>
        <td colspan="3"><textarea name="message_contact" class="contact_textarea"></textarea><span class="error" id="message_contact"></span></td>
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
		var message = check_text_length("textarea[name=message_contact","#message_contact","Nội dung phải hơn 30 ký tự",30);
		var diachi = $("input[name=diachi_contact]").val();
		var phone = check_phone("input[name=phone_contact]","#phone_contact","Điện thoại chưa đúng");
		var email = check_email("input[name=email_contact]","#email_contact","Email chưa đúng");
		var name = check_text_length("input[name=name_contact]","#name_contact","Nhập họ tên",2);
		
		if(name==false || email==false || phone==false || message==false) return false;
		$("#loading_contact").show(); $("#error_contact").html(""); $("#error_contact").hide();
		
		$.ajax({ 	
			url:"ajax/",
			type:'post',
			data:{contact_name:name,email:email,phone:phone,diachi:diachi,message:message},
			cache:false,
			success: function(data){
				setTimeout(function(){
					if(data=='1'){
						$("#contact").html('<div id="error_contact">' +
											'<h3>Liên hệ thành công</h3>' +
											'<p>Xin thông báo bạn đã liên hệ đến website <b>Mùng Chống Muỗi</b> thành công. Chúng tôi sẽ trả lời cho bạn sớm nhất.</p>' +
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