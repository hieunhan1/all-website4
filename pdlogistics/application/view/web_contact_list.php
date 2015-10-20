<div class="container">
    <?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
    <div class="viewpost">
    	<h1 style="margin:0"><?php echo $config['sitename'];?></h1>
        <p><b>Head office:</b> <?php echo $config['address'];?></p>
        <p><b>Cargo office:</b> <?php echo $config['address_2'];?></p>
        <p><b>Điện thoại:</b> <?php echo $config['tel'];?> <b style="padding-left:50px">Fax:</b> <?php echo $config['fax'];?></p>
        <p><b>Email:</b> <a href="mailto:<?php echo $config['email'];?>"><?php echo $config['email'];?></a><b style="padding-left:50px">Website:</b> <a href="<?php echo CONS_BASE_URL;?>" target="_blank"><?php echo CONS_BASE_URL;?></a></p>
    </div>
    
    <div id="sale">
    <?php
    $data = $c->_model->_listParentMenu($currentMenu['id']);
	foreach($data as $row){
		echo '<div class="box"><div class="title">'.$row['name'].'</div>';
		$data2 = $c->_model->_listParentMenu($row['id']);
		foreach($data2 as $row2) echo '<div class="liSale" id="'.$row2['id'].'" name="'.$row2['name'].'">'.$row2['name'].' <em style="font-size:85%">(click view)</em></div>';
		echo '</div>';
	}
	?>
    <div class="clear1"></div>
    <div id="ajaxSale"></div>
    
    <div class="clear20"></div></div>
    
    <div id="contact">
        <div class="loading content"><img src="themes/website/img/loader.gif" /></div>
        <div class="info"><?php echo CONS_CONTACT_INFO;?></div>
        <div class="error errorContact"></div>
        <div class="message messageContact"></div>
        <div class="row">
        	<div class="label"><?php echo CONS_CONTACT_NAME;?>:<span class="error">**</span></div>
            <div class="field"><input type="text" name="nameContact" class="txt" maxlength="50" /><p class="error" id="nameContact"></p></div>
            <div class="label">Email:<span class="error">**</span></div>
            <div class="field"><input type="text" name="emailContact" class="txt" maxlength="60" /><p class="error" id="emailContact"></p></div>
            <div class="clear1"></div>
        </div>
        <div class="row">
        	<div class="label"><?php echo CONS_CONTACT_PHONE;?>:<span class="error">**</span></div>
            <div class="field"><input type="text" name="phoneContact" class="txt" maxlength="20" /><p class="error" id="phoneContact"></p></div>
            <div class="label"><?php echo CONS_CONTACT_ADDRESS;?>:</div>
            <div class="field"><input type="text" name="addressContact" class="txt" maxlength="250" /></div>
            <div class="clear1"></div>
        </div>
        <div class="row">
        	<div class="label"><?php echo CONS_CONTACT_MESSAGE;?>:<span class="error">**</span></div>
            <div class="field2"><textarea name="messageContact" class="textarea"></textarea><p class="error" id="messageContact"></p></div>
            <div class="clear1"></div>
        </div>
        <div class="row">
        	<div class="label">&nbsp;</div>
            <div class="field"><input type="button" name="btnSendContact" class="btn" value="<?php echo CONS_CONTACT_SEND;?>" /></div>
        </div>
    </div>
    <div style="clear:both; height:50px"></div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	$("input[name=btnSendContact]").click(function(){
		var message = check_text_length("textarea[name=messageContact","#messageContact","<?php echo CONS_ERROR_MESSAGE;?>",10);
		var address = $("input[name=addressContact]").val();
		var phone = check_phone("input[name=phoneContact]","#phoneContact","<?php echo CONS_ERROR_PHONE;?>");
		var email = check_email("input[name=emailContact]","#emailContact","<?php echo CONS_ERROR_EMAIL;?>");
		var name = check_text_length("input[name=nameContact]","#nameContact","<?php echo CONS_ERROR_NAME;?>",2);
		if(name==false || email==false || phone==false || message==false) return false;
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
	
	$(".liSale").click(function(){
		var id = $(this).attr('id');
		var name = $(this).attr('name');
		$(".liSale").removeClass("active");
		$(this).addClass("active");
		$("#ajaxSale").html('<p style="font-style:italic; padding:0 0 30px 20px">loading..</p>');
		$.ajax({
			url:"ajax/",
			type:'post',
			data:{listSale:id, name:name},
			cache:false,
			success: function(data){
				setTimeout(function(){ $("#ajaxSale").html(data); }, 500);
				return true;
			}
		});
	});
});
</script>