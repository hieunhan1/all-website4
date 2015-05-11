<div id="popupContact">
    <div id="content_popup" class="bogoc_5px">
    	<div style="text-align:right"><a href="javascript:;" id="popupContactClose"><img src="themes/website/img/close.png" alt="" /></a></div>
    	<div class="title">Xe Honda 67 trắng đen</div>
        <p style="margin-bottom:20px; font-style:italic">Hãy điền thông tin của bạn vào bên dưới, chúng tôi sẽ liên hệ tư vấn cho bạn.</p>
        <table width="100%" border="0" cellpadding="0" cellspacing="15">
        	<tr>
            	<td>Họ tên</td>
                <td><input type="text" name="name_pp" class="txt" /></td>
            </tr>
            <tr>
            	<td>Điện thoại</td>
                <td><input type="text" name="tel_pp" class="txt" /></td>
            </tr>
            <tr>
            	<td>Email</td>
                <td><input type="text" name="email_pp" class="txt" /></td>
            </tr>
            <tr>
            	<td>Địa chỉ</td>
                <td><input type="text" name="address_pp" class="txt" /></td>
            </tr>
            <tr>
            	<td valign="top">Lời nhắn</td>
                <td><textarea name="message_pp" class="txt" style="line-height:20px; height:60px; resize:none"></textarea></td>
            </tr>
            <tr>
            	<td>&nbsp;</td>
                <td><input type="button" name="btnPP" value="Gửi" class="btn" /></td>
            </tr>
        </table>
        <div style="clear:both; height:20px"></div>
    </div>
</div></div>
<div id="backgroundPopup"></div>

<script type="text/javascript">
	$(document).ready(function(e) {
		$(".buy").click(function(){
			var height = 490; //$("#popupContact").height();
			$("#popupContact").height(height);
			centerPopup("fix");
			loadPopup();
			$(window).bind("resize", function(){ centerPopup("fix"); });
		});
		$("#backgroundPopup, #popupContactClose, input[name=btn_huy_nop_hs]").click(function(){
			disablePopup();
		});
	});
</script>