<div style="clear:both; height:20px"></div>
<div class="viewpost">
	
    <div style="font-size:120%; color:#888">
        <div style="width:400px; float:left">Nhập email</div>
        <div style="width:auto; float:left">Thông tin giao hàng</div>
        <div style="width:auto; float:right; font-weight:bold; color:#EA8005">Thông tin thanh toán</div>
    </div>

    <div style="clear:both; height:2px; margin-bottom:30px; background-color:#EA9E4A"></div>
    
    <div style="width:600px; float:left">
    	<p style="font-weight:bold; font-size:110%; color:#00F">Đặt hàng thành công.</p>
        <p style="font-weight:bold">Bạn sẽ thanh toán <?php echo number_format($_SESSION['order_sp_tongtien'],0,',','.');?>VNĐ bằng tiền mặt khi nhận hàng tại nhà.</p>
        <p style="font-weight:bold">Chúng tôi sẽ liên hệ với bạn trước khi giao hàng.</p>
    	<p style="color:#F00">Phí giao hàng: <b><?php if($_SESSION['order_sp_phigiao']!=0) echo number_format($_SESSION['order_sp_phigiao'],0,',','.').'VNĐ'; else echo 'Miễn phí';?></b></p>
        <div style="color:#666; margin:20px 0 30px 35px">
        	<p style="font-weight:bold">Giao hàng đến</p>
            <p>Tên: Nhan<br />
            Địa chỉ: 123 CMT 8, Quan 1, Ho Chi Minh<br />
            Điện thoại: 0988 388 003<br />
            Email: hieunhan@yahoo.com</p>
        </div>
        
        <p>Trân trọng,</p>
    </div>
    
    <div style="width:340px; float:right"><?php include_once('view_web_list_payment_info.php');?></div>
    
    <div style="clear:both; height:1px"> </div>
</div>