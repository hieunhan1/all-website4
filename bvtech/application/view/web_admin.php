<?php
$adMenu=''; $adAddRoot=''; $adAddDetail=''; $adInfo='';
if(isset($_SESSION['adminId']) && isset($_SESSION['adminName'])){
	include_once('controllers/adminAjax.php');
	if(!isset($_POST['datetime'])) $table = 'web_menu'; else $table = 'web_article';
	$adA->createEditData($table, $arrAction, $rowDetail, 0);
	
	$adAddRoot = '<li id="0" table="web_menu" class="liAddNew"><span class="adAdd">Thêm mới</span></li>';
	$adMenu = '<div class="admin">
		<img src="themes/admin/img/add.gif" class="adAdd" />
		<img src="themes/admin/img/edit.gif" class="adEdit" />
		<img src="themes/admin/img/delete.gif" class="adDel" />
	</div>';
	
	$adAddDetail = '<li id="'.$currentMenu['id'].'" table="web_article" class="liAddNew" style="color:#F00"><span class="adAdd">Thêm thông tin</span></li>';
	$adInfo = '<span class="admin" style="clear:both; float:left">
		<a href="javascript:;" class="adEdit">Sửa thông tin <img src="themes/admin/img/edit.gif" /></a>
	</span><div class="clear1"></div>';
?>

<div id="popup">
    <a href="javascript:;" id="popupClose"><img src="themes/website/img/close.png" alt="" /></a>
    <div id="popupContent"></div>
</div>
<div id="backgroundPopup"></div>

<script type="text/javascript" src="js/js_admin.js"></script>

<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="js/ckeditor/ckfinder/ckfinder.js"></script>
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

<script type="text/javascript">
$(document).ready(function(e) {
	function showPopup(){
		centerPopup("absolute");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("absolute"); });
	}
	
	$("#popupClose, #btnCancel").live("click", function(){
		disablePopup();
		return false;
	});
	
    $(".adAdd").click(function(){
		var id = $(this).parents("li").attr("id");
		var parent = 0;
		var table = $(this).parents("li").attr("table");
		if(id!=0) parent=id;
		$.ajax({ 	
			url:"ajax/",
			type:'post',
			data:{adAdd:1, id:id, parent:parent, table:table},
			cache:false,
			success: function(data){
				$("#popupContent").html(data);
				showPopup();
			}
		});
		return false;
	});
	
	$(".adEdit").click(function(){
		var id = $(this).parents("li").attr("id");
		var table = $(this).parents("li").attr("table");
		$.ajax({ 	
			url:"ajax/",
			type:'post',
			data:{adEdit:1, id:id, table:table},
			cache:false,
			success: function(data){
				$("#popupContent").html(data);
				showPopup();
			}
		});
		return false;
	});
	
	$(".adDel").click(function(){
		var id = $(this).parents("li").attr("id");
		var name = $(this).parents("li").attr("name");
		var table = $(this).parents("li").attr("table");
		var message	= 'Bạn có muốn xóa `' + name + '`?';
		if(confirm(message)){
			$.ajax({ 	
				url:"ajax/",
				type:'post',
				data:{delete_one:id, table:table},
				cache:false,
				success: function(data){
					$("#" + id).hide(100);
					//window.location = '<?php echo CONS_BASE_URL;?>';
				}
			});
		}
		return false;
	});
});
</script>

<?php }?>