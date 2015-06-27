<div class="content">
    <?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
    <div class="viewpost">
    	<h1 style="margin:0"><?php echo $config['sitename'];?></h1>
        <p><b>Website:</b> <a href="http://www.dayamthuc.vn" target="_blank">www.dayamthuc.vn</a> - <a href="http://www.netspace.edu.vn" target="_blank">www.netspace.edu.vn</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
        <b>Email:</b> <a href="mailto:<?php echo $config['email'];?>"><?php echo $config['email'];?></a></p>
    </div>
    
    <div id="contact">
        <div class="loading"><img src="themes/website/img/loader.gif" /></div>
        <div class="error errorContact"></div>
        <div class="message messageContact"></div>
        <table border="0" cellspacing="20" cellpadding="0">
          <tr>
            <td colspan="4"><p style="font-size:160%"><?php echo CONS_CONTACT_INFO;?></p></td>
          </tr>
          <tr>
            <td width="90" valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_NAME;?>:<span class="error">**</span></td>
            <td valign="top"><input type="text" name="nameContact" class="txt" maxlength="50" /><p class="error" id="nameContact"></p></td>
            <td width="90" align="right" valign="top" style="padding-top:3px">Email:<span class="error">**</span></td>
            <td valign="top"><input type="text" name="emailContact" class="txt" maxlength="60" /><p class="error" id="emailContact"></p></td>
          </tr>
          <tr>
            <td valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_PHONE;?>:<span class="error">**</span></td>
            <td valign="top"><input type="text" name="phoneContact" class="txt" maxlength="20" /><p class="error" id="phoneContact"></p></td>
            <td align="right" valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_ADDRESS;?>:</td>
            <td valign="top"><input type="text" name="addressContact" class="txt" maxlength="250" /></td>
          </tr>
          <tr>
            <td valign="top" style="padding-top:3px"><?php echo CONS_CONTACT_MESSAGE;?>:<span class="error">**</span></td>
            <td colspan="3"><textarea name="messageContact" class="textarea"></textarea><p class="error" id="messageContact"></p></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="button" name="btnSendContact" class="btn" value="<?php echo CONS_CONTACT_SEND;?>" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
    </div>
    <div class="viewpost">
    	<hr /><div class="clear1"></div>
        <table width="100%" border="0" cellpadding="0" cellspacing="10" style="line-height:25px">
            <?php
			$i=0;
			$str='';
            $data = $c->_model->_listChiNhanh($lang);
			foreach($data as $row){
				$i++;
				if($i%2 == 1)
					$str .= '<tr>
            			<th align="right" align="right" valign="top" style="color:#F00">'.$row['name'].'</th>
            			<td>'.$row['address'].'<br />Tel: '.$row['phone'].'<br />Hotline: '.$row['hotline'].'</td>';
				else
					$str .= '<th align="right" valign="top" style="color:#F00">'.$row['name'].'</th>
            			<td>'.$row['address'].'<br />Tel: '.$row['phone'].'<br />Hotline: '.$row['hotline'].'</td></tr>';
			}
			echo $str;
			?>
        </table>
        <div class="clear1"></div>
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