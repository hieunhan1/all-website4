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
					
                    echo '<tr>
                        <td>'.$row_dt['name'].'</td>
                        <td align="right" valign="top">'.number_format($row_dt['dongia'],0,',','.').'</td>
                        <td align="center" valign="top">'.$row_dt['soluong'].'</td>
                        <td align="right" valign="top">'.number_format($row_dt['tien'],0,',','.').'</td>
                    </tr>';
                }
                
			
                echo '<tr>
                    <th colspan="2" align="right">Tổng số lượng</th>
                    <th>'.$row['tongsoluong'].'</th><th>&nbsp;</th>
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
                ?>
            </table>
            <?php
            $ct_donhang = ob_get_clean();
			echo $ct_donhang;

			if($row['status']==3){
				$title = 'Mùng chống muỗi ChamCham';
				$subject = 'No-reply | Thông tin đặt hàng mùng chống muỗi ID: '.$row['id'];
				$body = '<div style="line-height:150%; font-size:13px; color:#5C5C5C">
					<h2 style="font-size:150%; color:#666; margin-bottom:30px">Thông tin đặt hàng ID: '.$row['id'].'</h2>
					<p><b>GIAO HÀNG ĐẾN</b></p>
					<p style="margin-left:35px; margin-bottom:30px">
						Người nhận: '.$row['name'].'<br />
						Địa chỉ: '.$row['diachi'].'<br />
						Điện thoại: '.$row['phone'].'<br />
						Email: '.$row['email'].'<br />
						Ngày đặt: '.date('H:i d/m/Y',strtotime($row['date_create'])).'
					</p>
					<p><b>CHI TIẾT ĐẶT HÀNG</b></p>
					<div style="width:340px; line-height:200%; font-size:10px">'.$ct_donhang.'</div>
					<p><em>Mọi thắc mắc vui lòng liên hệ số điện thoại: <b>'.$row_config['tel'].'</b> hoặc email: <b>'.$row_config['email'].'</b></em> </p>
					<p>Trân trọng,</p>
				</div>';
				
				$add_address = array();
				$add_address[] = array('email'=>$row['email'],'name'=>$row['name']);
				
				/*cap nhat trang thai*/
				$this->_model->_web_product_order_update_status($row['id']);
				
				/*gui mail*/
				ob_start();
				$this->_model->_sendmail($title,$subject,$body,$add_address);
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