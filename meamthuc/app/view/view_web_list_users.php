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
    <h1><?php echo $current_menu['title'];?></h1>
    <h2 style="margin-bottom:20px"><?php echo $current_menu['description'];?></h2>
</div>

<table width="80%" border="0" cellpadding="0" cellspacing="10" style="margin:auto">
	<tr><td colspan="2" style="color:#00F; font-weight:bold; padding-bottom:10px">Vui lòng nhập các thông tin bên dưới.</td></tr>
    <tr>
    	<td width="20%">Email đăng nhập</td>
    	<td><input type="text" name="reg_email" class="txt_register" value="" /> <span class="error" id="reg_email"></span></td>
    </tr>
    <tr>
    	<td>Mật khẩu:</td>
    	<td><input type="password" name="reg_password" class="txt_register" value="" /> <span class="error" id="reg_password"></span></td>
    </tr>
    <tr>
    	<td>Mật khẩu nhập lại</td>
    	<td><input type="password" name="reg_password_2" class="txt_register" value="" /> <span class="error" id="reg_password_2"></span></td>
    </tr>
    <tr><td colspan="2"><br /><hr /></td></tr>
    <tr>
    	<td>Họ tên</td>
    	<td><input type="text" name="reg_name" class="txt_register" value="" /> <span class="error" id="reg_name"></span></td>
    </tr>
    <tr>
    	<td>Điện thoại</td>
    	<td><input type="text" name="reg_phone" class="txt_register" value="" /> <span class="error" id="reg_phone"></span></td>
    </tr>
    <tr>
    	<td>Địa chỉ</td>
    	<td><input type="text" name="reg_address" class="txt_register" value="" /> <span class="error" id="reg_address"></span></td>
    </tr>
    <tr>
    	<td>&nbsp;</td>
    	<td><input type="button" name="reg_submit" class="btn_register" value="Đăng ký" /></td>
    </tr>
</table>
<script type="text/javascript">
$(document).ready(function(e) {
	$("input[name=reg_submit]").click(function(){
		var address = check_text_length("input[name=reg_address]","#reg_address","Nhập địa chỉ",3);
		var phone = check_phone("input[name=reg_phone]","#reg_phone","<?php echo CONS_ERROR_PHONE;?>");
		var name = check_text_length("input[name=reg_name]","#reg_name","<?php echo CONS_ERROR_NAME;?>",2);
		var password_2 = check_email_nl("input[name=reg_password_2]","#reg_password_2","Mật khẩu nhập lại chưa đúng","input[name=reg_password]");
		var password = check_text_length("input[name=reg_password]","#reg_password","Mật khẩu phải hơn 6 ký tự",6);
		var email = check_email("input[name=reg_email]","#reg_email","<?php echo CONS_ERROR_EMAIL;?>");
		
		if(email==false || password==false || password_2==false || name==false || phone==false || address==false) return false;
		$("#reg_loading").show();
		$("#reg_error").html("");
		$("#reg_error").hide();
		
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


<div style="clear:both; height:30px"></div>