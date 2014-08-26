<?php
/*action create, edit*/
$this->create_edit_data($table, $arr_action, $row_detail);

if($this->_user!='admin') $disabled = ' disabled="disabled" ';
else $disabled = '';

/*view_order_detail*/
echo '<table width="65%" border="0" cellpadding="10" cellspacing="0" style="margin-bottom:20px; border-collapse:collapse">
	<tr bgcolor="#FFFF99">
		<th align="left">Tên sản phẩm</th>
		<th align="right" width="80">Đơn giá</th>
		<th width="70">Số lượng</th>
		<th align="right" width="90">Thành tiền</th>
	</tr>';
$data = $this->_model->_web_product_order_detail($row_detail['datetime']);
foreach($data as $row){
	echo '<tr bgcolor="#FFFFDD">
		<td align="left" style="border-bottom:solid 1px #CCC">'.$row['name'].'</td>
		<td align="right" style="border-bottom:solid 1px #CCC">'.number_format($row['price'],0,',','.').' VNĐ</td>
		<td align="center" style="border-bottom:solid 1px #CCC">'.$row['number'].'</td>
		<td align="right" style="border-bottom:solid 1px #CCC">'.number_format($row['total'],0,',','.').' VNĐ</td>
	</tr>';
}
echo '<tr bgcolor="#FFFF99">
		<th align="right" style="border-bottom:solid 1px #CCC" colspan="2"><span style="padding-right:50px">Tổng cộng:</span><em>(phí giao hàng: '.number_format($row_detail['deliverycosts'],0,',','.').' VNĐ)</em></th>
		<th align="center" style="border-bottom:solid 1px #CCC">'.$row_detail['total_number'].'</th>
		<th align="right" style="border-bottom:solid 1px #CCC">'.number_format($row_detail['total'],0,',','.').' VNĐ</th>
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
	
	//datetime
	if($row_detail['datetime']==0) $values = $this->view_datetime(time());
	else $values = $this->view_datetime($row_detail['datetime']);
	$properties = array('20', $disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Ngày đăng','datetime','input_large'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$views = array('name'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('200',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Họ tên','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//phone
	$values = $row_detail['phone'];
	$properties = array('20',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Điện thoại','phone','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//email
	$values = $row_detail['email'];
	$properties = array('60',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Email','email','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	echo '<tr><td colspan=2><div style="height:2px; background-color:#CCC; margin:5px 300px 5px 30px"></div></td></tr>';
	
	//city_id
	$arr = $this->_model->_web_listcity();
	$properties = $row_detail['city_id']; //default check
	$views = array('Tỉnh / Thành','city_id','input_medium',$disabled); //label id&name class
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//districts_id
	$arr = $this->_model->_web_listdistricts($row_detail['city_id']);
	$properties = $row_detail['districts_id']; //default check
	$views = array('Quận / Huyện','districts_id','input_medium',$disabled); //label id&name class properties
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//address
	$values = $row_detail['address'];
	$properties = array('200',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Địa chỉ','address','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	echo '<tr><td colspan=2><div style="height:2px; background-color:#CCC; margin:5px 300px 5px 30px"></div></td></tr>';
	
	//other
	$values = $row_detail['other'];
	$properties = array('200',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Yêu cầu','other','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//total_number
	$values = $row_detail['total_number'];
	$properties = array('4',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Tổng số lượng','total_number','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//total_current
	$values = $row_detail['total_current'];
	$properties = array('8',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Tổng tiền','total_current','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//deliverycosts
	$values = $row_detail['deliverycosts'];
	$properties = array('8',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Phí giao hàng','deliverycosts','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//discounts
	$values = $row_detail['discounts'];
	$properties = array('8',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Giảm giá','discounts','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//total
	$values = $row_detail['total'];
	$properties = array('8',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('Thành tiền','total','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//lang
	$values = $lang;
	$views = array('lang'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//id
	$values = $row_detail['id'];
	$views = array('id'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//btn_cancel
	$other = '<input type="button" name="btn_cancel" id="btn_cancel" value="Hủy" class="submit" onClick="window.location.href=\''.$_SESSION['link_back'].'\'" />';
	
	//btn_submit
	$properties = ''; //disabled, readonly
	$views = array($arr_action['lable_submit'],'btn_action','submit btn_action'); //label id&name class style
    $this->getProperties('9','',$properties,$views,$other);
	echo $this->DisplayProperties();

echo '</table></form>';