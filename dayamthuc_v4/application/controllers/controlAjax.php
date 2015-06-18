<?php
class controlAjax{
	public $_lang;
	public $_model;
	public function __construct(){
		$this->_model = new modelAjax;
		$this->_lang = $this->language();
	}
	public function language(){
		if(!isset($_POST['lang']))
			return CONS_DEFAULT_LANG;
		else
			return $_POST['lang'];
	}
	public function config($lang){
		$file_lang = "languages/lang_{$lang}.php";
		if (file_exists($file_lang)) include_once($file_lang);
		return $this->_model->_config($lang);
	}
	public function menuId($menu_id){
		$m = explode(',', $menu_id);
		$total = count($m);
		$id = $m[$total-2];
		$row = $this->_model->_urlMenu($id);
		return $row['url'];
	}
	
	public function sendmail($title, $subject, $body, $add_address, $add_cc='', $add_bcc=''){
		include_once('libraries/sendmail/class.phpmailer.php');
		$mail = new PHPMailer();
		$mail->IsSMTP(); // Gọi đến class xử lý SMTP
		$mail->Host = CONS_HOST_SMTP_SERVER; // tên SMTP server
		$mail->SMTPDebug = 2; // enables SMTP debug information (for testing): 1 = errors and messages, 2 = messages only
		$mail->SMTPAuth = true; // Sử dụng đăng nhập vào account
		$mail->Port = 25; // Thiết lập cổng gửi email của máy
		$mail->Username = CONS_SEND_MAIL_ACCOUNT; // SMTP account username
		$mail->Password = CONS_SEND_MAIL_PASSWORD; // SMTP account password
		$mail->IsHTML(true);
		$mail->SetFrom(CONS_SEND_MAIL_ACCOUNT, $title); //Thiet lap thong tin nguoi gui va email nguoi gui
		foreach($add_address as $row) $mail->AddAddress($row['email'],$row['name']); //Thiết lập thông tin người nhận
		if($add_cc!='') foreach($add_cc as $row) $mail->AddCC($row['email'],$row['name']);
		if($add_bcc!='') foreach($add_bcc as $row) $mail->AddBCC($row['email'],$row['name']);
		$mail->CharSet = "utf-8";
		$mail->Subject = $subject; //Thiết lập tiêu đề
		$mail->Body = $body; //Thiết lập nội dung chính của email
		if($mail->Send()) return true;
	}
}

$c = new controlAjax;
$lang = $c->_lang;
$config = $c->config($lang);

/*admin*/
if(isset($_POST['status_one'])){
	$status = $c->_model->_changeDauNhay($_POST['status_one']); settype($status, "int");
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$id = $c->_model->_changeDauNhay($_POST['id']); settype($id, "int");
	if($table!='' && $id!=''){
		$c->_model->_statusOne($table, $id, $status);
	}else return false;
}

if(isset($_POST['delete_one'])){
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$id = $c->_model->_changeDauNhay($_POST['delete_one']); settype($id, "int");
	if($table=='' || $id=='') return false;
	$c->_model->_deleteOne($table, $id);
	return true;
}

if(isset($_POST['ajaxRestore'])){
	$id=$_POST['ajaxRestore']; settype($id, "int");
	$backup = new modelBackupRestore;
	echo $backup->_restoreData($id);
	return true;
}

if(isset($_POST['linkDeatil'])){
	$menu_id = $c->_model->_changeDauNhay($_POST['menu_id']);
	if($menu_id=='') return false;
	echo $c->menuId($menu_id);
	return true;
}
if(isset($_POST['checkLinkDeatil'])){
	$id = $c->_model->_changeDauNhay($_POST['checkLinkDeatil']); settype($id, 'int');
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$url = $c->_model->_changeDauNhay($_POST['url']);
	echo $c->_model->_checkUrl($table, $url, $id);
	return true;
}

if(isset($_POST['ajaxNumberItem'])){
	$table = $c->_model->_changeDauNhay($_POST['table']);
	if($table=='') return false;
	echo $c->_model->_ajaxNumberItem($table);
	return true;
}

if(isset($_POST['searchID'])){
	$id = $c->_model->_changeDauNhay($_POST['searchID']);
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$sql = "SELECT `name` FROM `{$table}` WHERE `status`=1 AND `id`='{$id}' LIMIT 1";
	if(!$result = $c->_model->db->query($sql)) die($c->_model->db->error);
	$row = $result->fetch_assoc();
	echo $row['name'];
	return true;
}
if(isset($_POST['searchName'])){
	$name = $c->_model->_changeDauNhay($_POST['searchName']);
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$sql = "SELECT `id`,`name` FROM `{$table}` WHERE `status`=1 AND `name` LIKE '%{$name}%' LIMIT 10";
	if(!$result = $c->_model->db->query($sql)) die($c->_model->db->error);
	while($row = $result->fetch_assoc()){
		echo '<p class="value_data" id="'.$row['id'].'">'.$row['name'].'</p>';
	}
	return true;
}

if(isset($_POST['sendmail'])){
	$id = $c->_model->_changeDauNhay($_POST['id']);
	$idNV = $c->_model->_changeDauNhay($_POST['sendmail']);
	$table = $c->_model->_changeDauNhay($_POST['table']);
	if($id=='' || $idNV==''){ echo 'Error'; return false; }
	
	$sql = "SELECT `id`,`name`,`email` FROM `web_dangky_nhanvien` WHERE `status`=1 AND `id`='{$idNV}' LIMIT 1";
	if(!$result = $c->_model->db->query($sql)) die($c->_model->db->error);
	$row = $result->fetch_assoc();
	if(!isset($row['id'])){ echo 'Không tìm thấy người gửi'; return false; }
	
	$sql = "SELECT * FROM `{$table}` WHERE `id`='{$id}' LIMIT 1";
	if(!$result = $c->_model->db->query($sql)) die($c->_model->db->error);
	$row2 = $result->fetch_assoc();
	if(!isset($row2['id'])){ echo 'Không tìm thấy thông tin người liên hệ'; return false; }
	
	$date = time();
	$sql = "UPDATE `web_dangky_nhanvien` SET `datetime`='{$date}' WHERE `id`='{$row['id']}' LIMIT 1";
	if(!$c->_model->db->query($sql)) die($c->_model->db->error);
	$sql = "UPDATE `{$table}` SET `status`='2', `nhanvien_lienhe`='{$row['id']}' WHERE `id`='{$row2['id']}' LIMIT 1";
	if(!$c->_model->db->query($sql)) die($c->_model->db->error);
	
	if($table=='web_dangky_tructuyen'){
		$title = $row2['name'];
		$subject = 'No-reply | Đăng ký học: '.$row2['khoahoc'];
		$body = '<div style="line-height:20px; color:#333; font-size:12pt">
			<h3 style="font-size:150%; margin-bottom:20px">Chào ban quản trị website.</h3>
			<p>Bạn  <span style="text-transform:uppercase; font-weight:bold">'.$row2['name'].'</span> đăng ký học.</p>
			<p style="margin-bottom:20px">Tên khóa học: '.$row2['khoahoc'].'</p>
			<p style="margin-bottom:20px">Tại cơ sở: '.$row2['noihoc'].'</p>
			<p style="font-weight:bold; font-style:italic">Thông tin học viên: <a href="'.CONS_BASE_URL.'/ajax/?idDangKy='.$row2['id'].'&idNV='.$row['id'].'">Click vào đây để xem thông tin</a></p>
		</div>';
	}else{
		$title = $row2['name'];
		$subject = 'No-reply | Contact';
		$body = '<div style="line-height:20px; color:#333; font-size:12pt">
			<h3 style="font-size:150%; margin-bottom:20px">Chào ban quản trị website.</h3>
			<p>Bạn  <span style="text-transform:uppercase; font-weight:bold">'.$row2['name'].'</span> để lại lời nhắn sau:</p>
			<p style="color:#666; margin-bottom:20px">'.$row2['message'].'</p>
			<p style="font-weight:bold; font-style:italic">Thông tin người liên hệ: <a href="'.CONS_BASE_URL.'/ajax/?idContact='.$row2['id'].'&idNV='.$row['id'].'">Click vào đây để xem thông tin</a></p>
		</div>';
	}
	$add_address = array();
	$add_address[] = array('email'=>$row['email'], 'name'=>$row['name']);
	$add_cc = array();
	$add_cc[] = array('email'=>'ceo@netspace.edu.vn', 'name'=>'Nguyễn Quốc Y');
	$add_cc[] = array('email'=>'tuyensinh@netspace.edu.vn', 'name'=>'Tuyển sinh');
	$add_bcc = array();
	$add_bcc[] = array('email'=>'temp@dayamthuc.vn', 'name'=>'Temp');
	$c->sendmail($title, $subject, $body, $add_address, $add_cc, $add_bcc);
	return true;
}
if(isset($_GET['idDangKy'])){ //view detail contact
	if(!isset($_GET['idNV'])) return false;
	$id = $c->_model->_changeDauNhay($_GET['idDangKy']);
	$table = 'web_dangky_tructuyen';
	$row = $c->_model->_viewDetail($table, $id);
	
	if($_GET['idNV']!=$row['nhanvien_lienhe']) return false;
	
	include_once('view/web_dangky_detail.php');
	if($row['status']==2) $c->_model->_updateStatus($table, $id);
	return true;
}
/*end admin*/

/*web*/
if(isset($_POST['webContact'])){
	$name = $c->_model->_changeDauNhay(trim($_POST['webContact']));
	$email = $c->_model->_changeDauNhay(trim($_POST['email']));
	$phone = $c->_model->_changeDauNhay(trim($_POST['phone']));
	$address = $c->_model->_changeDauNhay(trim($_POST['address']));
	$message = $c->_model->_changeDauNhay($_POST['message']);
	$ipAddress = $_SERVER['REMOTE_ADDR'];
	$table = 'web_contact';
	$check = $c->_model->_checksIpAddress($table, $ipAddress);
	$check = time() - $check['datetime'];
	if($check<30){
		echo 2;
		return false;
	}
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		$idContact = $c->_model->_webContactInsert($name, $email, $phone, $address, $message, $ipAddress);
	}else echo 0;
	return true;
}
if(isset($_GET['idContact'])){ //view detail contact
	if(!isset($_GET['idNV'])) return false;
	$id = $c->_model->_changeDauNhay($_GET['idContact']);
	$table = 'web_contact';
	$row = $c->_model->_viewDetail($table, $id);
	
	if($_GET['idNV']!=$row['nhanvien_lienhe']) return false;
	
	include_once('view/web_contact_detail.php');
	if($row['status']==2) $c->_model->_updateStatus($table, $id);
	return true;
}
if(isset($_POST['google_map'])){
	$id_map = trim($_POST['google_map']);
	$id_map = $c->_model->_change_dau_nhay($id_map);
	$name = trim($_POST['name']);
	$name = $c->_model->_change_dau_nhay($name);
	if($id_map!='' && $name!=''){
		include_once('view_web_google_map.php');
	}
}

if(isset($_POST['webDangKy'])){
	$name = $c->_model->_changeDauNhay(trim($_POST['webDangKy']));
	$email = $c->_model->_changeDauNhay(trim($_POST['email']));
	$phone = $c->_model->_changeDauNhay(trim($_POST['phone']));
	$address = $c->_model->_changeDauNhay(trim($_POST['address']));
	$khoahoc = $c->_model->_changeDauNhay($_POST['khoahoc']);
	$noihoc = $c->_model->_changeDauNhay($_POST['noihoc']);
	$message = $c->_model->_changeDauNhay($_POST['message']);
	$ipAddress = $_SERVER['REMOTE_ADDR'];
	$table = 'web_dangky_tructuyen';
	$check = $c->_model->_checksIpAddress($table, $ipAddress);
	$check = time() - $check['datetime'];
	if($check<30){
		echo 2;
		return false;
	}
	if($name!='' && $phone!='' && $noihoc!='' && $khoahoc!=''){
		$c->_model->_webDangKyInsert($name, $email, $phone, $address, $khoahoc, $noihoc, $message, $ipAddress);
		echo 1;
	}else echo 0;
	return true;
}

if(isset($_POST['chat'])){
	echo '<script type="text/javascript">window._sbzq||function(e){e._sbzq=[];var t=e._sbzq;t.push(["_setAccount",17241]);var n=e.location.protocol=="https:"?"https:":"http:";var r=document.createElement("script");r.type="text/javascript";r.async=true;r.src=n+"//static.subiz.com/public/js/loader.js";var i=document.getElementsByTagName("script")[0];i.parentNode.insertBefore(r,i)}(window);</script>';
	return true;
}
/*end web*/

if(isset($_GET['translale'])){
	include_once('view/web_translale.php');
	return true;
}


//other  LINK: ajax/?updateData=1&table1=web_article2&table2=web_article
function tachIdMenu($menu_id){
	$m = explode(',', $menu_id);
	$total = count($m);
	return $m[$total-2];
}
function urlMenu($c, $id){
	$sql = "SELECT `url` FROM `web_menu` WHERE `id`='{$id}' LIMIT 1";
	if(!$result = $c->_model->db->query($sql)) die($this->db->error);
	$row = $result->fetch_assoc();
	return $row['url'];
}

function _menuIdOrAlias($c, $id){
	$sql = "SELECT `id`, `name`, `parent` FROM `web_menu` WHERE `id`='{$id}' LIMIT 1";
	$result = $c->_model->db->query($sql);
	return $result->fetch_assoc();
}
function navigator($c, $parent, $arr=NULL){
	if(!$arr) $arr=array();
	if($parent==0){
		return array_reverse($arr);
	}
	$row = _menuIdOrAlias($c, $parent);
	$arr[] = array('id'=>$row['id'], 'name'=>$row['name'], 'parent'=>$row['parent']);
	$arr = navigator($c, $row['parent'], $arr);
	return $arr;
}

if($_GET['updateData']==2){
	$table = 'web_article';
	
	$sql = "SELECT * FROM `{$table}` ORDER BY `id`";
	if(!$result = $c->_model->db->query($sql)) die($c->db->error);
	$data = array();
	while($row = $result->fetch_assoc()){
		$id = $row['id'];
		
		/*$menu_id = str_replace('65,', '', $row['menu_id']);
		$menu_id = str_replace('56,', '', $menu_id);
		$menu_id = str_replace('63,', '', $menu_id);
		$idMenu = tachIdMenu($row['menu_id']);
		
		$arrMenu = navigator($c, $idMenu);
		$strMenu = ',';
		foreach($arrMenu as $row2){
			if($row2['id']!=1) $strMenu .= $row2['id'].',';
		}
		$sql = "UPDATE `{$table}` SET `menu_id`='{$strMenu}' WHERE `id`='{$id}' LIMIT 1";
		$c->_model->db->query($sql);*/
		
		/*$idMenu = tachIdMenu($row['menu_id']);
		$urlMenu = urlMenu($c, $idMenu);
		$url = $urlMenu.$row['name_alias'].'.html';
		$sql = "UPDATE `{$table}` SET `url`='{$url}' WHERE `id`='{$id}' LIMIT 1";
		$c->_model->db->query($sql);*/
		
		/*$dateUpdate = $row['date_update'];
		$strtotime = strtotime($dateUpdate);
		$datetime = date('Y-m-d H:i:s', $strtotime);
		$sql = "UPDATE `{$table}` SET `datetime`='{$strtotime}' WHERE `id`='{$id}' LIMIT 1";
		$c->_model->db->query($sql);*/
		
		echo $row['name'].' | '.$row['url'].'<br />';
	}
}

if($_GET['updateData']==3){
	$table = 'web_video2';
	
	$sql = "SELECT * FROM `{$table}` ORDER BY `id`";
	if(!$result = $c->_model->db->query($sql)) die($c->db->error);
	$data = array();
	while($row = $result->fetch_assoc()){
		$id = $row['id'];
		
		$idMenu = tachIdMenu($row['menu_id']);
		
		/*$arrMenu = navigator($c, $idMenu);
		$strMenu = ',';
		foreach($arrMenu as $row2){
			if($row2['id']!=1) $strMenu .= $row2['id'].',';
		}
		$sql = "UPDATE `{$table}` SET `menu_id`='{$strMenu}' WHERE `id`='{$id}' LIMIT 1";
		$c->_model->db->query($sql);*/
		
		/*$urlMenu = urlMenu($c, $idMenu);
		$regex='/^http*(.*)$/';
		if(!preg_match($regex, $urlMenu)) $url = $urlMenu.$row['name_alias'].'.html';
		else $url=$urlMenu;
		$sql = "UPDATE `{$table}` SET `url`='{$url}' WHERE `id`='{$id}' LIMIT 1";
		$c->_model->db->query($sql);*/
		
		/*$dateUpdate = $row['date_update'];
		$strtotime = strtotime($dateUpdate);
		$datetime = date('Y-m-d H:i:s', $strtotime);
		$sql = "UPDATE `{$table}` SET `datetime`='{$strtotime}' WHERE `id`='{$id}' LIMIT 1";
		$c->_model->db->query($sql);*/
		
		echo $row['name'].' | '.$idMenu.' | '.$url.'<br />';
	}
}

if($_GET['updateData']==4){
	$table = 'web_tuyendung';
	
	$sql = "SELECT * FROM `{$table}` ORDER BY `id`";
	if(!$result = $c->_model->db->query($sql)) die($c->db->error);
	$data = array();
	while($row = $result->fetch_assoc()){
		$id = $row['id'];
		
		/*$idMenu = tachIdMenu($row['menu_id']);
		$url = "cung-ung-va-tuyen-dung-nhan-su/{$row['name_alias']}.html";
		$sql = "UPDATE `{$table}` SET `url`='{$url}' WHERE `id`='{$id}' LIMIT 1";
		$c->_model->db->query($sql);*/
		
		$dateUpdate = $row['hannop'];
		$strtotime = strtotime($dateUpdate);
		$datetime = date('Y-m-d H:i:s', $strtotime);
		/*$sql = "UPDATE `{$table}` SET `datetime_hannop`='{$strtotime}' WHERE `id`='{$id}' LIMIT 1";
		$c->_model->db->query($sql);*/
		
		echo $row['name'].' | '.$dateUpdate.' | '.$strtotime.' | '.$datetime.' | '.'<br />';
	}
}

if($_GET['updateData']==5){
	$table = 'web_contact';
	
	$sql = "SELECT * FROM `{$table}` ORDER BY `id`";
	if(!$result = $c->_model->db->query($sql)) die($c->db->error);
	$data = array();
	while($row = $result->fetch_assoc()){
		$id = $row['id'];
		
		$dateUpdate = $row['date_create'];
		$strtotime = strtotime($dateUpdate);
		$datetime = date('Y-m-d H:i:s', $strtotime);
		/*$sql = "UPDATE `{$table}` SET `datetime`='{$strtotime}' WHERE `id`='{$id}' LIMIT 1";
		$c->_model->db->query($sql);*/
		
		echo $row['name'].$dateUpdate.' | '.$strtotime.' | '.$datetime.' | '.'<br />';
	}
}