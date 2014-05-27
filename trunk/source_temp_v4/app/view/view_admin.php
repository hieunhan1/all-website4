<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang quản trị</title>
<meta name="robots" content="nofollow" />
<link rel="stylesheet" type="text/css" href="<?php echo CONS_BASE_URL;?>/css/admin_style.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo CONS_BASE_URL;?>/library/js/js_admin.js"></script>

<script type="text/javascript" src="<?php echo CONS_BASE_URL;?>/library/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="<?php echo CONS_BASE_URL;?>/library/ckeditor/ckfinder/ckfinder.js"></script>

<link type="text/css" href="<?php echo CONS_BASE_URL;?>/library/datetimepick/jquery.simple-dtpicker.css" rel="stylesheet" />
<script type="text/javascript" src="<?php echo CONS_BASE_URL;?>/library/datetimepick/jquery.simple-dtpicker.js"></script>
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
            User: <strong><?php echo $name_admin; ?></strong> &nbsp; &nbsp; 
            <a href="<?php echo $link_account;?>">Thông tin tài khoản</a> | 
            <a href="<?php echo $link_logout;?>">Logout</a>
        </div>
    </div>
	
    <div id="left">
    	<div class="title" style="text-align:center">Chức năng quản trị</div>
        <div id="catalog"><?php echo $menu_admin_left; ?></div>
        <div style="clear:both; height:50px"></div>
    </div>

	<div id="right">
    	<div class="title" style="width:auto; float:left"><?php echo $navigator_name;?></div>
    	<div class="title" style="width:auto; float:right">
        	<a href="<?php echo $link_cearte;?>"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>add.gif"> Thêm mới</a>&nbsp; | &nbsp;
            <a href="javascript:;" id="update">See the change</a>
            <a href="javascript:;" id="create">See the not change</a>
        </div>
        <div style="clear:both; height:1px"></div>
        
    	<?php echo $include;?>
    </div>
</div>

</body>
</html>