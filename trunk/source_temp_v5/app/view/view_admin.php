<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang quản trị</title>
<meta name="robots" content="nofollow" />
<link rel="stylesheet" type="text/css" href="<?php echo CONS_ADMIN_CSS_STYLE; ?>">
<script type="text/javascript" src="js/jquery.min.js"></script>
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
        
    	<?php if( $this->_action!='home' && !isset($_GET['id']) && !isset($_GET['user']) ){ ?>
    	<div class="title" style="width:auto; float:right">
        	<a href="<?php echo CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$this->_action.'/?id=0';?>"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>add.gif"> Thêm mới</a>&nbsp; | &nbsp;
            <a href="javascript:;" id="update">See the change</a>
            <a href="javascript:;" id="create">See the not change</a>
        </div>
        <?php }?>
        
        <div style="clear:both; height:1px"></div>
        <div id="ajax_test"></div>
        
    	<?php echo $include;?>
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
    $.ajax({ 	
		url:"cp_admin/",
		type:'get',
		data:{ajax:"ajax_number_khachhang",t:"web_product_order"},
		cache:false,
		success: function(data) {
			$("#web_product_order").html(" (" + data + ")");
		}
	});
	$.ajax({ 	
		url:"cp_admin/",
		type:'get',
		data:{ajax:"ajax_number_khachhang",t:"web_contact"},
		cache:false,
		success: function(data) {
			$("#web_contact").html(" (" + data + ")");
		}
	});
});
</script>

</body>
</html>