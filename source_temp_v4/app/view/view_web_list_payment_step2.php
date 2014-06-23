<div style="clear:both; height:20px"></div>
<div class="viewpost">
	
    <div style="font-size:120%; color:#888">
        <div style="width:400px; float:left">Nhập email</div>
        <div style="width:auto; float:left; font-weight:bold; color:#EA8005">Thông tin giao hàng</div>
        <div style="width:auto; float:right">Thông tin thanh toán</div>
    </div>

    <div style="clear:both; height:2px; margin-bottom:30px; background-color:#EA9E4A"></div>
    <h2>Nhập địa chỉ giao hàng</h2>
    <div style="width:600px; float:left">
    	<table width="100%" border="0" cellspacing="10">
        	<tr>
            	<td width="150" align="right">Họ tên:</td>
                <td><input type="text" name="hoten" placeholder="Nhập họ tên" class="txt_order" /> <span class="error" id="hoten"></span></td>
            </tr>
            <tr>
            	<td align="right">Điện thoại:</td>
                <td><input type="text" name="dienthoai" placeholder="0988388399" class="txt_order" /> <span class="error" id="dienthoai"></span></td>
            </tr>
            <tr>
            	<td width="150" align="right">Tỉnh / thành phố:</td>
                <td><input type="text" name="tinh_thanh" placeholder="Nhập họ tên" class="txt_order" /> <span class="error" id="tinh_thanh"></span></td>
            </tr>
            <tr>
            	<td width="150" align="right">Quận / huyện:</td>
                <td><input type="text" name="quan_huyen" placeholder="Nhập họ tên" class="txt_order" /> <span class="error" id="quan_huyen"></span></td>
            </tr>
            <tr>
            	<td width="150" align="right">Địa chỉ:</td>
                <td><input type="text" name="diachi" placeholder="Nhập họ tên" class="txt_order" /> <span class="error" id="diachi"></span></td>
            </tr>
            <tr>
            	<td align="right">&nbsp;</td>
                <td><div class="order_sp_btn" style="background-color:#EA9E4A; text-align:center"><a href="<?php echo $link_step3;?>" style="display:block; padding:0 50px">Tiếp tục</a></div></td>
            </tr>
        </table>
        <script>
		$(document).ready(function(e) {
            $(".order_sp_btn a").click(function(){
				var hoten = check_text_length("input[name=hoten]","#hoten","Họ tên >= 2 ký tự",2);
				var dienthoai = check_phone("input[name=dienthoai]","#dienthoai","Số điện thoại chưa đúng");
				var tinh_thanh = check_number("input[name=tinh_thanh]","#tinh_thanh","Chọn tỉnh thành");
				var quan_huyen = check_number("input[name=quan_huyen]","#quan_huyen","Chọn quận huyện");
				var diachi = check_text_length("input[name=diachi]","#diachi","Địa chỉ >= 6 ký tự",6);
				//var link_step2 = $(this).attr("href");
				if(hoten==false || dienthoai==false || tinh_thanh==false || quan_huyen==false || diachi==false) return false;
				
				//$(this).attr("href",link_step2 + "&email=" + email);
			});
        });
		</script>
    </div>
    
    <div style="width:340px; float:right; background-color:#CCC">1</div>
    
    <div style="clear:both; height:1px"> </div>
</div>