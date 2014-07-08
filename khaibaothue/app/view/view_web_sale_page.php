<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<?php echo $tab_head;?>
<link rel="stylesheet" type="text/css" href="css/web_style_sale_page.css"/>
<script type="text/javascript" src="library/js/jquery.min.js"></script>
</head>

<body>

<div id="wrapper">
	<!--<div id="header">
    	<a href="/" title="Dịch vụ kế toán - Khai báo thuế An Phát"><img id="logo" src="css/web_img/logo.gif" alt="Dịch vụ kế toán - Khai báo thuế An Phát" /></a>
        <div id="support">
            <p style="font-weight:bold; background-position:0px 2px"><?php echo $row_config['tel']; ?></p>
            <p style="font-weight:bold; background-position:0px -28px"><?php echo $row_config['email']; ?></p>
        </div>
    </div>-->
  <div class="viewpost">
  		<div id="detail">
			<?php
            echo "<h1>{$row_detail['name']}</h1>";
            echo $row_detail['content'];
            ?>
        </div>
        
        <div id="register" style="display:none">
        	<div id="back">[ Trở về thông tin: <?php echo $row_detail['name'];?> ]</div>
        	<h3 style="color:#00F; font-size:150%; text-align:center; text-transform:uppercase">Đăng ký: <?php echo $row_detail['name'];?></h3>
            <div id="ajax_page"></div>
            <p style="margin-top:50px; font-style:italic">Mọi chi tiết vui lòng liên hệ đến số <b><?php echo $row_config['tel'];?></b> hoặc email <b><?php echo $row_config['email'];?></b></p>
        </div>
        
        <div id="info_service" name="<?php echo $row_detail['name'];?>" id_service="<?php echo $row_detail['id'];?>"></div>
        
        <!--<p><a class="form_register" href="javascript:;">Đăng ký</a></p>
        <p class="form_register">Đăng ký</p>-->
  </div>
  
  <div style="clear:both; height:30px"></div>
</div>

<script type="text/javascript" src="library/js/jquery.corner.js"></script>
<script type="text/javascript" src="library/js/js_checks_field.js"></script>
<script type="text/javascript" src="library/js/js_web.js"></script>

<script type="text/javascript">
$(document).ready(function(e) {
	$("#detail").show();
	$("#register").hide();
	
	$("#back").click(function(){
		$("#detail").show();
		$("#register").hide();
	});
	
	$(".form_register").click(function(){
		$("#detail").hide();
		$("#register").show();
		
		$.ajax({ 	
			url:"ajax/",
			type:'get',
			data:{form_register:1},
			cache:false,
			success: function(data){
				if(data!=''){
					$("#ajax_page").html(data);
					return true;
				}else{
					$("#ajax_page").html('<br /><p class="error">Lỗi: Vui lòng ấn F5 thử lại</p>');
					return false;
				}
			}
		});
	});
	
	$("input[name=btnSend]").live("click", function(){
		var address = check_text_length("input[name=address]","#address","Địa chỉ phải hơn 6 ký tự",2);
		var phone = check_phone("input[name=phone]","#phone","Điện thoại chưa đúng");
		var email = check_email("input[name=email]","#email","Email chưa đúng");
		var name = check_text_length("input[name=name]","#name","Nhập họ tên",2);
		
		if(name==false || email==false || phone==false || address==false) return false;
		var name_service = $("#info_service").attr("name");
		var id_service = $("#info_service").attr("id_service");
		
		$("#loading_contact").show(); $("#error_contact").html(""); $("#error_contact").hide();
		
		$.ajax({ 	
			url:"ajax/",
			type:'get',
			data:{register:name,email:email,phone:phone,address:address,service_id:id_service,service_name:name_service},
			cache:false,
			success: function(data){
				setTimeout(function(){
					if(data=='1'){
						$("#ajax_page").html('<p style="padding-top:30px">Xin thông báo bạn đã đăng ký thành công <span style="text-transform:uppercase">' + name_service + '</span> của <b>AN PHÁT</b></p> <p><b>AN PHÁT</b> đã gửi một email đến địa chỉ mail ' + email +'</p>' +
											'<p>Trân trọng,</p>');
						$("#loading_contact").hide();
						return true;
					}else{
						$("#ajax_page").html('<br /><p class="error">Lỗi: Vui lòng ấn F5 thử lại</p>');
						$("#loading_contact").hide();
						return false;
					}
				},500);
			}
		});
	});
	
});
</script>

</body>
</html>