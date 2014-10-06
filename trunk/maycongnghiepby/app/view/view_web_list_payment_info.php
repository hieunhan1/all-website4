<?php $data = $this->order_sp_view();?>
<div class="viewpost">
    <p>Bạn có <b><?php echo count($data);?></b> sản phẩm trong giỏ hàng</p>
    <div id="order_sp_info_loading"><img src="css/web_img/loader.gif" alt="loading" /></div>
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
			$tongsoluong += $row['soluong'];
			$price_sp=number_format($row['giaban'],0,',','.');
			echo '<tr>
				<td>'.$row['name'].'</td>
				<td align="right" valign="top">'.$price_sp.'</td>
				<td align="center" valign="top">'.$row['soluong'].'</td>
				<td align="right" valign="top">'.number_format($row['thanhtien'],0,',','.').'</td>
			</tr>';
		}
		$_SESSION['order_sp_tongtien'] = $tongtien;
		$_SESSION['order_sp_tongsoluong'] = $tongsoluong;
		$_SESSION['order_sp_thanhtien'] = $_SESSION['order_sp_tongtien'] + $_SESSION['order_sp_phigiao'];
		if(!isset($_SESSION['order_sp_phigiao'])) $_SESSION['order_sp_phigiao'] = 0;
		echo '<tr>
			<th colspan="2" align="right">Tổng số lượng</th>
			<th>'.$_SESSION['order_sp_tongsoluong'].'</th><th>&nbsp;</th>
		</tr>
		<tr>
			<th colspan="2" align="right">Tổng cộng</th>
			<th colspan="2" align="right">'.number_format($_SESSION['order_sp_tongtien'],0,',','.').' VNĐ</th>
		</tr>
		<tr>
			<th colspan="2" align="right">Phí giao hàng</th>
			<th colspan="2" align="right" style="color:#F00"><span id="phigiaohang">'.number_format($_SESSION['order_sp_phigiao'],0,',','.').'</span> VNĐ</th>
		</tr>
		<tr style="color:#00F">
			<th colspan="2" align="right">Thành tiền</th>
			<th colspan="2" align="right"><span id="thanhtien">'.number_format($_SESSION['order_sp_thanhtien'],0,',','.').'</span> VNĐ</th>
		</tr>';
		?>
    </table>
    <div style="clear:both; height:1px"></div>
</div>