<div style="clear:both; height:20px"></div>
<div class="viewpost">
	
    <div style="font-size:120%; color:#888">
        <div style="width:400px; float:left; font-weight:bold; color:#EA8005">Nhập email</div>
        <div style="width:auto; float:left">Thông tin giao hàng</div>
        <div style="width:auto; float:right">Thông tin thanh toán</div>
    </div>

    <div style="clear:both; height:2px; margin-bottom:30px; background-color:#EA9E4A"></div>
    
    <div style="width:600px; float:left">
    	<table width="100%" border="0" cellspacing="10">
        	<tr>
            	<td width="150" align="right">Nhập vào địa chỉ email:</td>
                <td><input type="text" name="email" placeholder="email@mail.com" class="txt_order" /> <span class="error"></span></td>
            </tr>
            <tr>
            	<td align="right">&nbsp;</td>
                <td><div class="order_sp_btn" style="background-color:#EA9E4A; text-align:center"><a href="<?php echo $link_step2;?>" style="display:block; padding:0 50px">Tiếp tục</a></div></td>
            </tr>
        </table>
        <script>
		$(document).ready(function(e) {
            $(".order_sp_btn a").click(function(){
				var email = check_email("input[name=email]",".error","email chưa đúng");
				var link_step2 = $(this).attr("href");
				if(email==false) return false;
				$(this).attr("href",link_step2 + "&email=" + email);
			});
        });
		</script>
    </div>
    
    <div style="width:340px; float:right; background-color:#CCC">1</div>
    
    <div style="clear:both; height:1px"> </div>
</div>