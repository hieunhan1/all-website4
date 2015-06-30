<?php
if(isset($_POST['submitChangeAccount'])){
	$checkSubmit = $this->user_change_infomation();
	if($checkSubmit==true) header('location: user/?action=account');
}

if(!isset($_GET['status'])){
	if($data[0]['phone']=='') $phone='<em>Update</em>'; else $phone=$data[0]['phone'];
	if($data[0]['birthday']=='0') $birthday='<em>Update</em>'; else $birthday=$this->_model->_view_date($data[0]['birthday']);
	if($data[0]['gender']=='1') $gender='Male'; elseif($data[0]['gender']=='0') $gender='Female'; else $gender='<em>Update</em>';
	if($data[0]['address']=='') $address='<em>Update</em>'; else $address=$data[0]['address'];
	$btnSubmit='<a href="user/?action=account&status=updateInfomation" title="Update" id="btnChangeAccount">Update</a>';
	$btnCancel='<a href="user/" style="font-weight:bold; padding:0 20px">&lt;&lt; Back</a>';
}elseif($_GET['status']=='updateInfomation'){
	$phone='<input type="text" name="phone" class="txtChangeAccount" value="'.$data[0]['phone'].'" />';
	
	if($data[0]['birthday']!=0){
		$date = $this->_model->_view_date($data[0]['birthday']);
		$date = explode('-',$date);
	}else $date='';
	$birthday='<input type="text" name="month" class="txtChangeAccount2" value="'.$date[0].'" placeholder="month" />
	<input type="text" name="day" class="txtChangeAccount2" value="'.$date[1].'" placeholder="day" />
	<input type="text" name="year" class="txtChangeAccount2" value="'.$date[2].'" placeholder="year" />';
	
	if($data[0]['gender']=='1') $check_male='checked="checked"'; else $check_male='';
	if($data[0]['gender']=='0') $check_female='checked="checked"'; else $check_female='';
	$gender='<input type="radio" name="gender" value="1" '.$check_male.' /> Male &nbsp; &nbsp; 
	<input type="radio" name="gender" value="0" '.$check_female.' /> Female';
	
	$address='<input type="text" name="address" class="txtChangeAccount" value="'.$data[0]['address'].'" />';
	$btnSubmit='<input type="submit" name="submitChangeAccount" value="Change Infomation" id="btnChangeAccount" />';
	$btnCancel='<a href="user/?action=account" style="font-weight:bold; padding:0 20px">Cancel</a>';
}else{
	session_destroy();
	return false;
}
?>
<div id="account">
    <form action="" method="post" name="frm">
    <table cellpadding="15" cellspacing="0" style="margin-left:5%">
    	<tr><td colspan="2"><h3 class="title_user">Account Information</h3></td></tr>
        <tr>
        	<th align="right">Name</th>
            <td><?php echo $data[0]['name'];?></td>
        </tr>
    	<tr>
        	<th align="right">Login email</th>
            <td><?php echo $data[0]['email'];?></td>
        </tr>
    	<tr>
        	<th align="right">Phone</th>
            <td><?php echo $phone;?></td>
        </tr>
    	<tr>
        	<th align="right">Birthday</th>
            <td><?php echo $birthday;?></td>
        </tr>
    	<tr>
        	<th align="right">Gender</th>
            <td><?php echo $gender;?></td>
        </tr>
    	<tr>
        	<th align="right">Address</th>
            <td><?php echo $address;?></td>
        </tr>
        <tr>
        	<td>&nbsp;</td>
            <td><?php echo $btnSubmit.$btnCancel;?></td>
        </tr>
    </table>
    </form>
    <div class="clear_20px" style="margin-bottom:30px"></div>
</div>