<?php
$navigator = $c->navigator($table);
$lang = $c->language();
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php if($navigator['name']!='') echo $navigator['name']; else echo 'Trang quản trị';?></title>
<meta name="robots" content="nofollow" />
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="<?php echo CONS_ADMIN_CSS_STYLE; ?>">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.wallform.js"></script>
<script type="text/javascript" src="js/js_admin.js"></script>

<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="js/ckeditor/ckfinder/ckfinder.js"></script>

<link type="text/css" href="js/datetimepick/jquery.simple-dtpicker.css" rel="stylesheet" />
<script type="text/javascript" src="js/datetimepick/jquery.simple-dtpicker.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".datetimepick").appendDtpicker({
			//"dateFormat": "DD/MM/YYYY h:m",
		});
	});
</script>

<script type="text/javascript">
function BrowseServer( startupPath, functionData ){
	var finder = new CKFinder();
	finder.basePath = 'ckfinder/';
	finder.startupPath = startupPath;
	finder.selectActionFunction = SetFileField;
	finder.selectActionData = functionData;
	finder.popup(1000, 530);
}
function SetFileField(fileUrl, data){
	var sFileName = this.getSelectedFile().name;
	document.getElementById(data["selectActionData"]).value = sFileName;
}
</script>

</head>

<body style="background:url(<?php echo CONS_ADMIN_CSS_IMG; ?>bg_header.gif) repeat-x top #B5D8EF">

<div id="wrapper">
    <div id="header">
        <div id="logo">Trang quản trị website</div>
        <div id="thongtin">
            Chào: <strong><?php echo $_SESSION['adminName']; ?></strong> &nbsp; &nbsp; 
            <a href="<?php echo CONS_DEFAULT_ADMIN_CONTROLLER;?>/user/?infomation=1">Thông tin tài khoản</a> | 
            <a href="<?php echo CONS_DEFAULT_ADMIN_CONTROLLER;?>/user/?logout=1">Logout</a>
        </div>
    </div>
	
    <div id="left">
    	<div class="title" style="text-align:center">Chức năng quản trị</div>
        <div id="catalog">
			<?php
            $controlAdmin = $c->listUserRule($_SESSION['adminRuleView']);
			foreach($controlAdmin as $row){
				$link = CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$row['url'].'/';
				if($table!=$row['url']) $style=''; else $style='style="color:#00F"';
				if($row['other']==1) $hr='<div style="clear:both; height:4px"><hr /></div>'; else $hr='';
				if($row['ajax']!=1) $ajax=''; else $ajax='<span id="'.$row['url'].'" class="ajax_thongtin"></span>';
				echo '<a href="'.$link.'" '.$style.'>'.$row['name'].$ajax.'</a>'.$hr;
			}
			?>
        </div>
        <div style="clear:both; height:30px"></div>
    </div>

	<div id="right">
    	<div class="title" style="width:auto; float:left"><?php echo $navigator['name'];?>&nbsp;</div>
        
    	<?php if( $table!='home' && $table!='user' && !isset($_GET['id'])){ ?>
    	<div class="title" style="width:auto; float:right">
        	<a href="<?php echo CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table.'/?id=0';?>"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>add.gif"> Thêm mới</a> &nbsp; &nbsp; 
        </div>
        <?php }?>
        <div style="clear:both; height:1px"></div>
        
        <div id="ajax_test"></div>
    	<?php
		$data = $c->listLanguages();
		if(count($data)>1 && !isset($_GET['id']) && $table!='user'){
			echo '<div id="listLang">';
			foreach($data as $row){
				if($lang!=$row['code']) $style=''; else $style='class="activeLang"';
				echo '<a href="'.CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table.'/?lang='.$row['code'].'" '.$style.'>'.$row['name'].'</a>|';
			}
			echo '</div>';
		}
		
		$checkView = $c->checkRule($navigator['id'], $_SESSION['adminRuleView']);
		$checkAction = $c->checkRule($navigator['id'], $_SESSION['adminRuleAction']);
		if(!isset($_GET['id']) && $checkView==true){
			$fileName = "admin_{$table}.php";
			if(file_exists('view/'.$fileName)) include_once($fileName);
			else echo '<p class="error">'.ERROR_NOT_FOUND_FILE.'</p>';
		}elseif($checkAction==true){
			$fileName = "admin_{$table}_ac.php";
			if(file_exists('view/'.$fileName)) include_once($fileName);
			else echo '<p class="error">'.ERROR_NOT_FOUND_FILE.'</p>';
		}elseif($table==''){
			include_once('admin_home.php');
		}elseif($table=='user'){
			include_once('admin_account.php');
		}else echo '<p class="error">Vui lòng liên hệ người quản trị để cấp quyền.</p>';
		?>
        <div style="clear:both; height:30px"></div>
    </div>
</div>

</body>
</html>