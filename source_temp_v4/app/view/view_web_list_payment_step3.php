<div style="clear:both; height:20px"></div>
<div class="viewpost">
	
    <div style="font-size:120%; color:#888">
        <div style="width:400px; float:left">Nhập email</div>
        <div style="width:auto; float:left">Thông tin giao hàng</div>
        <div style="width:auto; float:right; font-weight:bold; color:#EA8005">Thông tin thanh toán</div>
    </div>

    <div style="clear:both; height:2px; margin-bottom:30px; background-color:#EA9E4A"></div>
    <h2>Bạn sẽ thanh toán bằng tiền mặt khi nhận hàng tại nhà</h2>
    <p>Lưu ý: Miễn phí giao hàng cho đơn hàng trên 150.000đ. Phụ phí hàng cồng kềnh có thể phát sinh, bạn vui lòng xem chi tiết bên cạnh.</p>
    <div style="width:600px; float:left">
    	<table width="100%" border="0" cellspacing="10">
        	
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