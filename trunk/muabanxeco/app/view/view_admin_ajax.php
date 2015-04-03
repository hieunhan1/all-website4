<?php
if($_GET['ajax']=='ajax_number_item'){
	$table = $_GET['table'];
	echo $this->_model->_ajax_number_item($table);
	return true;
}

if($_GET['ajax']=='ajax_restore' && $this->_user=='admin'){
	$id = $_GET['id_ac'];
	settype($id, 'int');
	$this->_model->_restore_data($id);
	return true;
}

if($_GET['ajax']=='menu_id'){
	$menu_id = $_GET['menu_id'];
	echo $this->_model->_menu_id($menu_id);
	return true;
}

/*upload images*/
if($_GET['ajax']=='upload_images'){
	define("MAX_SIZE","9000");
	$valid_formats = array("jpg", "png", "gif", "bmp","jpeg");
	if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST"){
		$uploaddir = "../public/temp_upload/"; //link ảnh tạm thời chờ xử lý
		$data = $this->_model->_url_image_menu_type($table);
		$url_img = $data['url_img'];
		$url_img_thumb = $data['url_img_thumb'];
		
		foreach ($_FILES['photos']['name'] as $name => $value){
			$filename = stripslashes($_FILES['photos']['name'][$name]);
			$size=filesize($_FILES['photos']['tmp_name'][$name]);
			//get the extension of the file in a lower case format
			$ext = getExtension($filename);
			$ext = strtolower($ext);
			
			if(in_array($ext,$valid_formats)){
				if ($size < (MAX_SIZE*1024)){
					$image_name = 'forexcareer'.time().'.'.$ext;
					$newname = $uploaddir.$image_name;
					
					if (move_uploaded_file($_FILES['photos']['tmp_name'][$name], $newname)){
						$result = xuly_image($image_name, $uploaddir, $url_img, $url_img_thumb);
						if($result) echo view_image($image_name, $url_img_thumb);
						//mysql_query("INSERT INTO user_uploads(image_name,user_id_fk,created) VALUES('$image_name','$session_id','$time')");
					}else{
						echo '<span class="imgList">You have exceeded the size limit! so moving unsuccessful! </span>';
					}
				}else{
					echo '<span class="imgList">You have exceeded the size limit!</span>';
				}
			}else{
				echo '<span class="imgList">Unknown extension!</span>';
			}
		}//end foreach
	}
	
	return true;
}
if($_GET['ajax']=='delete_img'){
	$image = $_GET['image'];
	$data = $this->_model->_url_image_menu_type($table);
	$url_img = '../'.$data['url_img'].$image;
	$url_img_thumb = '../'.$data['url_img_thumb'].$image;
	
	if(file_exists($url_img_thumb)) unlink($url_img_thumb);
	if(file_exists($url_img)) unlink($url_img);
	return true;
}
function getExtension($str){
	$i = strrpos($str,".");
	if (!$i) { return ""; }
	$l = strlen($str) - $i;
	$ext = substr($str,$i+1,$l);
	return $ext;
}
function xuly_image($img, $uploaddir, $url_img, $url_img_thumb){
	$file = $uploaddir.$img;
	$size_info = getimagesize($file);
	if(is_array($size_info)){
		include_once('../php/SimpleImage.php');
		$image = new SimpleImage();
		
		$url_img_thumb = '../'.$url_img_thumb;
		$url_img = '../'.$url_img;
		
		$image->load($file);
		$image->resizeToWidth(250);
		$image->save($url_img_thumb.$img);
		
		$image->load($file);
		$width = $size_info[0];
		$height = $size_info[1];
		if($width>=$height && $width>800) $image->resizeToWidth(800);
		elseif($width>=$height && $width<=800) $image->resizeToWidth($width);
		elseif($width<=$height && $height>500) $image->resizeToHeight(500);
		elseif($width<=$height && $height<=500) $image->resizeToHeight($height);
		else return false;
		$image->save($url_img.$img);
		
		unlink($file);
		
		return true;
	}else return false;
}
function view_image($image, $url_img_thumb){
	return '<div class="img_item" value="'.$image.'">
		<div class="select_avatar">Chọn làm đại diện</div>
		<img class="img" src="'.$url_img_thumb.$image.'" />
		<p class="copylink">Copy link</p>
		<p class="delete_img"><img src="'.CONS_ADMIN_CSS_IMG.'delete.gif" /></p>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			var img_arr = "";
			img_arr += $("input[name=img_arr]").val();
			img_arr = "'.$image.'," + img_arr;
			$("input[name=img_arr]").val(img_arr);
		});
	</script>';
}
/*end upload images*/