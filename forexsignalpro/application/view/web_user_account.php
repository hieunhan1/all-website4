<?php
if(isset($_POST['submitChangeAccount'])){
	$c = new controlUsers;
	$checkSubmit = $c->userChangeInfomation();
	if($checkSubmit==true) header('location: user/?ac=account');
}

if(!isset($_GET['status'])){
	if($user['name']=='') $name='<em>Update</em>'; else $name=$user['name'];
	if($user['phone']=='') $phone='<em>Update</em>'; else $phone=$user['phone'];
	if($user['birthday']=='0') $birthday='<em>Update</em>'; else $birthday=$c->_model->_viewDate($user['birthday']);
	if($user['gender']=='1') $gender='Male'; elseif($user['gender']=='0') $gender='Female'; else $gender='<em>Update</em>';
	if($user['address']=='') $address='<em>Update</em>'; else $address=$user['address'];
	$btnSubmit='<a href="user/?ac=account&status=update" title="Update" id="btnChangeAccount">Update</a>';
	$btnCancel='<a href="user/" style="font-weight:bold; padding:0 20px">&lt;&lt; Back</a>';
}else if($_GET['status']=='update'){
	$name='<input type="text" name="name" class="txtChangeAccount" value="'.$user['name'].'" />';
	$phone='<input type="text" name="phone" class="txtChangeAccount" value="'.$user['phone'].'" />';
	
	if($user['birthday']!=0){
		$date = $c->_model->_viewDate($user['birthday']);
		$date = explode('-',$date);
	}else $date='';
	$birthday='<input type="text" name="month" class="txtChangeAccount2" value="'.$date[0].'" placeholder="month" />
	<input type="text" name="day" class="txtChangeAccount2" value="'.$date[1].'" placeholder="day" />
	<input type="text" name="year" class="txtChangeAccount2" value="'.$date[2].'" placeholder="year" />';
	
	if($user['gender']=='1') $check_male='checked="checked"'; else $check_male='';
	if($user['gender']=='0') $check_female='checked="checked"'; else $check_female='';
	$gender='<input type="radio" name="gender" value="1" '.$check_male.' /> Male &nbsp; &nbsp; 
	<input type="radio" name="gender" value="0" '.$check_female.' /> Female';
	
	$address='<input type="text" name="address" class="txtChangeAccount" value="'.$user['address'].'" />';
	$btnSubmit='<input type="submit" name="submitChangeAccount" value="Change Infomation" id="btnChangeAccount" />';
	$btnCancel='<a href="user/?ac=account" style="font-weight:bold; padding:0 20px">Cancel</a>';
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
        	<th align="right">Login email</th>
            <td><?php echo $user['email'];?></td>
        </tr>
        <tr>
        	<th align="right">Name</th>
            <td><?php echo $name;?></td>
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
</div>