<?php $data = $this->order_sp_view();?>
<div class="viewpost">
    <p>Bạn có <b><?php echo $all_sp;?></b> sản phẩm trong giỏ hàng</p>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" id="order_sp_info">
    	<tr>
            <th width="145" align="left">Tên sản phẩm</th>
            <th align="right">Giá</th>
            <th>Số lượng</th>
            <th align="right">Thành tiền</th>
        </tr>
        <?php
		$tongtien = 0;
		foreach($data as $row){
			$tongtien += $row['thanhtien'];
			$price_sp=number_format($row['giaban'],0,',','.');
			echo '<tr>
				<td>'.$row['name'].'</td>
				<td align="right" valign="top">'.$price_sp.'</td>
				<td align="center" valign="top">'.$row['soluong'].'</td>
				<td align="right" valign="top">'.number_format($row['thanhtien'],0,',','.').'</td>
			</tr>';
		}
		echo '<tr>
			<th colspan="2">Tổng cộng</th>
			<th colspan="2" align="right">'.number_format($tongtien,0,',','.').' VNĐ</th>
		</tr>
		<tr style="color:#F00">
			<th colspan="2">Phí giao hàng</th>
			<th colspan="2" align="right">100.000 VNĐ</th>
		</tr>
		<tr style="color:#00F">
			<th colspan="2">Tiền phải trả</th>
			<th colspan="2" align="right">1.000.000 VNĐ</th>
		</tr>';
		?>
    </table>
    <div style="clear:both; height:1px"></div>
</div>