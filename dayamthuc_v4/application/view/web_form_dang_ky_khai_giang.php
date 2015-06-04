<div class="clear1"></div><a name="formghidanh"></a>
<div id="tab_khoahoc">
	<span class="tabKH active" name="dangky">Ghi danh trực tuyến</span>
	<span class="tabKH" name="khaigiang">Lịch khai giảng</span>
</div>
<div id="tab_dangky" style="display:block; clear:both">
	<div id="contact">
    	<div class="loading" style="width:600px"><img src="themes/website/img/loader.gif" /></div>
        <div class="message messageContact"></div>
        <div class="error errorContact" style="padding:0; margin:0"></div>
        <table border="0" cellspacing="20" cellpadding="0" style="width:100%">
          <tr><td colspan="2" style="font-weight:bold; color:#00F; font-style:italic">Vui lòng điền thông tin bên dưới</td></tr>
          <tr>
            <td width="120" align="right" valign="top"><?php echo CONS_CONTACT_NAME;?>:<span class="error">**</span></td>
            <td><input type="text" name="nameContact" class="txt" maxlength="50" /><span class="error" id="nameContact"></span></td>
          </tr>
          <tr>
            <td align="right" valign="top"><?php echo CONS_CONTACT_PHONE;?>:<span class="error">**</span></td>
            <td><input type="text" name="phoneContact" class="txt" maxlength="20" /><span class="error" id="phoneContact"></span></td>
          </tr>
          <tr>
            <td align="right" valign="top">Email:</td>
            <td><input type="text" name="emailContact" class="txt" maxlength="60" /></td>
          </tr>
          <tr>
            <td align="right" valign="top"><?php echo CONS_CONTACT_ADDRESS;?>:</td>
            <td><input type="text" name="addressContact" class="txt" maxlength="250" /></td>
          </tr>
          <tr>
            <td align="right" valign="top">Chọn nơi học:<span class="error">**</span></td>
            <td><select name="noihoc" class="txt">
            	<option value="">-- chọn nơi học --</option>
            	<option value="Tp.HCM">Tp.HCM</option>
            	<option value="DaNang">Đà Nẵng</option>
            	<option value="HaNoi">Hà Nội</option>
            	<option value="DaLat">Đà Lạt</option>
            	<option value="CanTho">Cần Thơ</option>
            </select><span class="error" id="noihoc"></span></td>
          </tr>
          <tr>
            <td align="right" valign="top">Lời nhắn:</td>
            <td><textarea name="messageContact" class="textarea" maxlength="250" style="width:220px; height:60px"></textarea></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input type="button" name="btnSendContact" class="btn" value="GHI DANH" /></td>
          </tr>
        </table>
    </div>
</div>
<div id="tab_khaigiang" style="display:none">
	<?php
	$parent=4; //id lich khai giang
    $data = $c->_model->_listMenu($lang, $parent);
	foreach($data as $row){
		$data2 = $cD->_model->_listLichKhaiGiang($row['id'], $rowDetail['id']);
		if(count($data2)>0){
			echo '<p class="title">'.$row['name'].'</p>';
			foreach($data2 as $row2){
				echo '<li class="item">'.$row2['name'].' <span>('.$row2['khaigiang'].')</span></li>';
			}
		}
	}
	?>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
	$(".tabKH").click(function(){
		$(".tabKH").removeClass("active");
		$(this).addClass("active");
		var tab = $(this).attr("name");
		if(tab=="dangky"){
			$("#tab_dangky").show();
			$("#tab_khaigiang").hide();
		}else if(tab=="khaigiang"){
			$("#tab_khaigiang").show();
			$("#tab_dangky").hide();
		}
	});
	
	$("input[name=btnSendContact]").click(function(){
		var khoahoc = $("h1").html();
		var address = $("input[name=addressContact]").val();
		var email = $("input[name=emailContact]").val();
		var message = $("textarea[name=messageContact]").val();
		var noihoc = check_text_length("select[name=noihoc]","#noihoc","Vui lòng chọn nơi học",2);
		var phone = check_phone("input[name=phoneContact]","#phoneContact","<?php echo CONS_ERROR_PHONE;?>");
		var name = check_text_length("input[name=nameContact]","#nameContact","<?php echo CONS_ERROR_NAME;?>",2);
		if(name==false || phone==false || noihoc==false || khoahoc=='') return false;
		$(".loading").show();
		$(".errorContact").html('');
		$(".messageContact").html('');
		
		$.ajax({ 	
			url:"ajax/",
			type:'post',
			data:{webDangKy:name, email:email, phone:phone, address:address, khoahoc:khoahoc, noihoc:noihoc, message:message},
			cache:false,
			success: function(data){
				setTimeout(function(){
					if(data=='1'){
						$("#contact").html('<div class="messageContact viewpost" style="padding:10px 20px">' +
											'<h3>Đăng ký thành công</h3>' +
											'<p style="font-style:italic">Xin thông báo bạn đã đăng ký khóa học thành công. Chúng tôi sẽ liên hệ bạn sớm nhất.</p>' +
											'<p style="font-style:italic">Trân trọng,</p>' +
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