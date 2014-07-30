<?php
/*action create, edit*/
$this->create_edit_data($table, $lable_submit, $row_detail, $disabled, $change_alias);

/*view_order_detail*/
echo '<table width="65%" border="0" cellpadding="10" cellspacing="0" style="margin-bottom:20px; border-collapse:collapse">
	<tr bgcolor="#FFFF99">
		<th width="280" align="left">Tên sản phẩm</th>
		<th align="right">Đơn giá</th>
		<th>Số lượng</th>
		<th align="right">Thành tiền</th>
	</tr>';
$data = $this->_model->_web_product_order_detail($row_detail['id']);
foreach($data as $row){
	echo '<tr bgcolor="#FFFFDD">
		<td align="left" style="border-bottom:solid 1px #CCC">'.$row['name'].'</td>
		<td align="right" style="border-bottom:solid 1px #CCC">'.number_format($row['dongia'],0,',','.').' VNĐ</td>
		<td align="center" style="border-bottom:solid 1px #CCC">'.$row['soluong'].'</td>
		<td align="right" style="border-bottom:solid 1px #CCC">'.number_format($row['tien'],0,',','.').' VNĐ</td>
	</tr>';
}
echo '<tr bgcolor="#FFFF99">
		<th align="right" style="border-bottom:solid 1px #CCC" colspan="2"><span style="padding-right:50px">Tổng cộng:</span><em>(phí giao hàng: '.number_format($row_detail['phigiaohang'],0,',','.').' VNĐ)</em></th>
		<th align="center" style="border-bottom:solid 1px #CCC">'.$row_detail['tongsoluong'].'</th>
		<th align="right" style="border-bottom:solid 1px #CCC">'.number_format($row_detail['thanhtien'],0,',','.').' VNĐ</th>
	</tr>
</table>';
/*end view_order_detail*/

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	
	//status
	$arr = array();
	$arr[] = array('id'=>'3', 'name'=>'Chưa gửi mail');
	$arr[] = array('id'=>'0', 'name'=>'Chưa giao');
	$arr[] = array('id'=>'2', 'name'=>'Đã xem');
	$arr[] = array('id'=>'1', 'name'=>'Đã giao');
	if($row_detail['status']=='') $properties = 1; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//date_create
	$values = $row_detail['date_create'];
	$properties = array('30', $disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Ngày đặt hàng','date_create','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Họ tên','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//phone
	$values = $row_detail['phone'];
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Điện thoại','phone','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//email
	$values = $row_detail['email'];
	$properties = array('60'); //maxlength OTHER (disabled, readonly) 
	$views = array('Email','email','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	echo '<tr><td colspan=2><div style="height:2px; background-color:#CCC; margin:5px 300px 5px 30px"></div></td></tr>';
	
	//tinh_thanh
	$arr = $this->_model->_web_ds_tinhthanh();
	$properties = $row_detail['tinh_thanh']; //default check
	$views = array('Tỉnh / Thành','tinh_thanh','input_medium'); //label id&name class
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//quan_huyen
	$arr = $this->_model->_web_ds_quanhuyen($row_detail['tinh_thanh']);
	$properties = $row_detail['quan_huyen']; //default check
	$views = array('Quận / Huyện','quan_huyen','input_medium'); //label id&name class
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//diachi
	$values = $row_detail['diachi'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Địa chỉ','diachi','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	echo '<tr><td colspan=2><div style="height:2px; background-color:#CCC; margin:5px 300px 5px 30px"></div></td></tr>';
	
	//tongsoluong
	$values = $row_detail['tongsoluong'];
	$properties = array('4'); //maxlength OTHER (disabled, readonly) 
	$views = array('Tổng số lượng','tongsoluong','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//tongtien
	$values = $row_detail['tongtien'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Tổng tiền','tongtien','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//phigiaohang
	$values = $row_detail['phigiaohang'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Phí giao hàng','phigiaohang','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//giamgia
	$values = $row_detail['giamgia'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Giảm giá','giamgia','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//thanhtien
	$values = $row_detail['thanhtien'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Thành tiền','thanhtien','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//id
	$values = $row_detail['id'];
	$views = array('id'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//lang
	$values = $lang;
	$views = array('lang'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//btn_cancel
	$other = '<input type="button" name="btn_cancel" id="btn_cancel" value="Hủy" class="submit" onClick="window.location.href=\''.$_SESSION['link_back'].'\'" />';
	
	//btn_submit
	$properties = ''; //disabled, readonly
	$views = array($lable_submit,'btn_action','submit btn_action'); //label id&name class style
    $this->getProperties('9','',$properties,$views,$other);
	echo $this->DisplayProperties();

echo '</table></form>';