<?php
$order_id = $_GET['order_id'];
$row = $this->_model->_view_product_order($order_id);
?>
<div style="clear:both; height:20px"></div>
<div class="viewpost">
	
    <div style="font-size:120%; color:#888">
        <div style="width:400px; float:left">Nhập email</div>
        <div style="width:auto; float:left">Thông tin giao hàng</div>
        <div style="width:auto; float:right; font-weight:bold; color:#EA8005">Thông tin thanh toán</div>
    </div>

    <div style="clear:both; height:2px; margin-bottom:30px; background-color:#EA9E4A"></div>
    
    <?php if(count($row) > 1){?>
    <div style="width:600px; float:left">
    	<p style="font-weight:bold; font-size:110%; color:#00F">Đặt hàng thành công. Chúng tôi đã gửi thông tin đặt hàng của bạn đến địa chỉ mail <?php echo $row['email'];?> mà bạn đã khai báo.</p>
        <p>Mã đơn hàng: <b><?php echo $row['id'];?></b></p>
        <p>Bạn sẽ thanh toán <b><?php echo number_format($row['thanhtien'],0,',','.');?>đ</b> bằng tiền mặt khi nhận hàng tại nhà.</p>
        <p style="font-weight:bold">Chúng tôi sẽ liên hệ với bạn trước khi giao hàng.</p>
    	<!--<p style="color:#F00">Phí giao hàng: <b><?php if($row['phigiaohang']!=0) echo number_format($row['phigiaohang'],0,',','.').'đ'; else echo 'Miễn phí';?></b></p>-->
        <div style="color:#666; margin:10px 0 30px 0">
        	<b>Giao hàng đến</b><br />
            <span style="margin-left:35px; display:block"><?php
				echo "Người nhận: {$row['name']}<br />
				Địa chỉ: {$row['diachi']}<br />
				Điện thoại: {$row['phone']}<br />
				Email: {$row['email']}<br />
				Ngày đặt: ".date('H:i d/m/Y',strtotime($row['date_create']))."<br />";
            ?></span>
        </div>
        
        <p>Trân trọng,</p>
    </div>
    
    <!--order_detail-->
    <div style="width:340px; float:right">
    	<div class="viewpost">
            <p>Chi tiết đơn hàng</p>
            <?php $ct_donhang = ob_start();?>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" id="order_sp_info">
                <tr>
                    <th width="145" align="left">Tên sản phẩm</th>
                    <th align="right">Giá</th>
                    <th>Số lượng</th>
                    <th align="right">Thành tiền</th>
                </tr>
                <?php
				$data = $this->_model->_view_product_order_detail($row['id']);
                foreach($data as $row_dt){
                    $view_str .= '<tr>
                        <td>'.$row_dt['name'].'</td>
                        <td align="right" valign="top">'.number_format($row_dt['dongia'],0,',','.').'</td>
                        <td align="center" valign="top">'.$row_dt['soluong'].'</td>
                        <td align="right" valign="top">'.number_format($row_dt['tien'],0,',','.').'</td>
                    </tr>';
                }
                $view_str .= '<tr>
                    <th colspan="2" align="right">Tổng số lượng</th>
                    <th colspan="2">'.$row['tongsoluong'].'</th>
                </tr>
                <tr>
                    <th colspan="2" align="right">Tổng cộng</th>
                    <th colspan="2" align="right">'.number_format($row['tongtien'],0,',','.').' VNĐ</th>
                </tr>
                <tr>
                    <th colspan="2" align="right">Phí giao hàng</th>
                    <th colspan="2" align="right" style="color:#F00"><span id="phigiaohang">'.number_format($row['phigiaohang'],0,',','.').'</span> VNĐ</th>
                </tr>
                <tr style="color:#00F">
                    <th colspan="2" align="right">Thành tiền</th>
                    <th colspan="2" align="right"><span id="thanhtien">'.number_format($row['thanhtien'],0,',','.').'</span> VNĐ</th>
                </tr>';
				echo $view_str;
                ?>
            </table>
            <?php
            $ct_donhang = ob_get_clean();
			echo $ct_donhang;

			if($row['status']==3){
				$title = 'Mùng chống muỗi ChamCham';
				$subject = 'No-reply | Mã số đơn hàng mùng chống muỗi: '.$row['id'];
				$body = '<div style="width:770px; line-height:140%; color:#333; font-size:13px; font-family:Arial, Helvetica, sans-serif; margin:20px auto">
					<p style="color:#F00; text-align:center">Neu khong doc duoc tieng Viet, vui long chon menu View / Encoding -&gt; Chon charset la UTF-8.</p>
					
					<div style="width:770px; padding:5px; border:solid 5px #3C9401">
						<h3>Kính chào Quý khách!</h3>
						<p>Cám ơn Quý khách đã đặt hàng tại Mungchongmuoi.com.vn</p>
						<p>Đơn hàng của Quý khách có mã số <b style="color:#00F">'.$row['id'].'</b>, các thông tin chi tiết về đơn hàng được liệt kê dưới đây:</p>
						
						<div style="color:#FFF; font-weight:bold; padding:3px 5px 3px 5px; background-color:#3C9401">Thông tin đơn hàng</div>
						<p style="padding-left:5px; font-weight:bold">Địa chỉ email: '.$row['email'].'</p>
						<table width="100%" border="0" cellpadding="5" cellspacing="0" style="line-height:140%; color:#333; font-size:13px; font-family:Arial, Helvetica, sans-serif">
							<tr>
							  <th colspan="2" align="left">Thông tin người thanh toán</th>
							  <th colspan="2" align="left">Thông tin người nhận hàng</th>
							</tr>
							<tr>
							  <td width="70">Họ tên:</td>
								<td>'.$row['name'].'</td>
							  <td width="70">Họ tên:</td>
								<td>'.$row['name'].'</td>
							</tr>
							<tr>
							  <td valign="top">Địa chỉ:</td>
							  <td>'.$row['diachi'].'</td>
							  <td valign="top">Địa chỉ:</td>
							  <td>'.$row['diachi'].'</td>
							</tr>
							<tr>
								<td>Điện thoại:</td>
								<td>'.$row['phone'].'</td>
								<td>Điện thoại:</td>
								<td>'.$row['phone'].'</td>
							</tr>
						</table>
						
						<div style="color:#FFF; font-weight:bold; padding:3px 5px 3px 5px; background-color:#3C9401">Chi tiết đơn hàng</div>
						<table width="100%" border="0" cellpadding="5" cellspacing="0" style="line-height:140%; color:#333; font-size:13px; font-family:Arial, Helvetica, sans-serif">
							<tr>
								<td><b>Mã số đơn hàng</b></td>
								<td><b style="color:#00F">'.$row['id'].'</b></td>
							</tr>
							<tr>
								<td>Ngày đặt hàng</td>
								<td>'.date('H:i d/m/Y',strtotime($row['date_create'])).'</td>
							</tr>
							<tr>
								<td>Phương thức thanh toán</td>
								<td>Thanh toán bằng tiền mặt</td>
							</tr>
							<tr>
								<td>Phương thức giao hàng</td>
								<td>Giao hàng tận nơi trong nội thành</td>
							</tr>
							<tr>
								<td>Ghi chú phương thức thanh toán</td>
								<td>Nhân viên giao hàng và thu tiền</td>
							</tr>	
						</table>
						<table width="100%" border="1" cellpadding="5" cellspacing="0" style="line-height:140%; color:#333; font-size:13px; font-family:Arial, Helvetica, sans-serif; border-collapse:collapse">
							<tr bgcolor="#CCCCCC">
								<th width="145" align="left">Tên sản phẩm</th>
								<th align="right">Giá</th>
								<th>Số lượng</th>
								<th align="right">Thành tiền</th>
							</tr>
							'.$view_str.'
						</table>
						
						<p style="font-weight:bold">Phương thức thanh toán "Bằng tiền mặt".</p>
						<p><b>Nhân viên giao nhận</b> sẽ liên hệ với quí khách để hẹn lịch giao hàng. Trong trường hợp quí khách đi vắng, vui lòng uỷ thác cho người khác nhận hàng và thanh toán tiền thay.</p>
						<p>Cảm ơn qúy khách và kính chúc mọi sự tốt lành!<br />
						<span style="font-weight:bold; color:#307601">Mungchongmuoi.com.vn - ChamCham mùng chống muỗi</span></p>
						<p style="font-style:italic; color:#666">Mọi thắc mắc vui lòng liên hệ số điện thoại: <b>'.$row_config['tel'].'</b> hoặc email: <b>'.$row_config['email'].'</b></p>
					</div>
				</div>';
				
				$add_address = array();
				$add_address[] = array('email'=>$row['email'],'name'=>$row['name']);
				$add_bcc = array();
				$add_bcc[] = array('email'=>$row_config['email'],'name'=>'Mùng chống muỗi');
				$add_bcc[] = array('email'=>'hieunhan112@gmail.com','name'=>'Trần Nhân');
				/*cap nhat trang thai*/
				$this->_model->_web_product_order_update_status($row['id']);
				
				/*gui mail*/
				ob_start();
				$this->_model->_sendmail($title,$subject,$body,$add_address,'',$add_bcc);
				ob_get_clean();
			}
			?>
            <div style="clear:both; height:1px"></div>
        </div>
    </div>
    <!--end order_detail-->
    <?php } else echo '<p style="padding:30px 50px" class="error">Mã đơn đặt hàng không đúng</p>';?>
    <div style="clear:both; height:1px"> </div>
</div>