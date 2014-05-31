// JavaScript Document
/*bien doi alias*/
function change_alias(alias,dau_thaythe){
	var str = alias;
	str= str.toLowerCase();
	str= str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g,"a");
	str= str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g,"e");
	str= str.replace(/ì|í|ị|ỉ|ĩ/g,"i");
	str= str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g,"o");
	str= str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g,"u");
	str= str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g,"y");
	str= str.replace(/đ/g,"d");
	str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_|-/g, dau_thaythe);
	str= str.replace(/\\|\$|\||\{|\}|\`/g, dau_thaythe);
	/* tìm và thay thế các kí tự đặc biệt trong chuỗi sang kí tự - */
	str= str.replace(/-+-/g, dau_thaythe); //thay thế 2 - thành 1- 
	str= str.replace(/ + /g, dau_thaythe); //thay thế 2 - thành 1- 
	str= str.replace(/^\-+|\-+$/g,""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
	str= str.replace(/^\ +|\ +$/g,""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
	return str;
}
function remove_ky_tu_dac_biet(alias,dau_thaythe){
	var str = alias;
	str= str.toLowerCase();
	str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_|-/g, dau_thaythe);
	str= str.replace(/\\|\$|\||\{|\}|\`/g, dau_thaythe);
	/* tìm và thay thế các kí tự đặc biệt trong chuỗi sang kí tự - */
	str= str.replace(/-+-/g, dau_thaythe); //thay thế 2 - thành 1- 
	str= str.replace(/ + /g, dau_thaythe); //thay thế 2 - thành 1- 
	str= str.replace(/^\-+|\-+$/g,""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
	str= str.replace(/^\ +|\ +$/g,""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
	return str;
}

$(document).ready(function(e) {
	$("#create").hide();
	$(".update").hide();
	$("#update").click(function(){
		$(this).hide();
		$("#create").show();
		$(".create").hide();
		$(".update").show();
	});
	$("#create").click(function(){
		$(this).hide();
		$("#update").show();
		$(".update").hide();
		$(".create").show();
	});
	
    $(".row").click(function(){
		$(".row").css("background-color","#FFF");
		$(this).css("background-color","#FF9");
	});
	
	/*status delete*/
	var url_img_css = '/css/admin_img/';
	var url_link = 'http://localhost/all/source_temp_v4/cp_admin/';
	$(".status").click(function(){
		var id 		= ($(this).attr('class')).split("status status_");
		var status 	= $(this).attr('status');
		var url 	= $(this).attr('url');
		var name 	= $(this).attr('name');
		
		if(status=='1'){
			if(confirm('Bạn có muốn ẩn "' + name + '"?')){
				$.post(url_link + url + "/?status_one=" + status + "&id_ac=" + id[1],function(){
					$(".status_" + id[1]).attr('status','0');
					$(".status_" + id[1]).attr('src', url_img_css + 'anhien_0.gif');
				});
			}
		}else{
			if(confirm('Bạn có muốn hiện "' + name + '"?')){
				$.post(url_link + url + "/?status_one=" + status + "&id_ac=" + id[1],function(){
					$(".status_" + id[1]).attr('status','1');
					$(".status_" + id[1]).attr('src', url_img_css + 'anhien_1.gif');
				});
			}
		}
	});
	$(".delete_one").click(function(){
		var id 		= ($(this).attr('class')).split("delete_one delete_one_");
		var url 	= $(this).attr('url');
		var name 	= $(this).attr('name');
		
		if(confirm('Bạn có muốn xóa "' + name + '"?')){
			$.post(url_link + url + "/?delete_one=" + id[1],function(){
				$(".row_" + id[1]).hide();
			});
		}
	});
	$("#reset_pass").click(function(){
		var id = $("input[name=id]").val();
		var name = $("input[name=name]").val();

		if(confirm('Bạn có muốn đổi mật khẩu tài khoản "' + name + '" về mật khẩu mặc định?')){
			$.post(url_link + "/?user=reset&id_u=" + id,function(data){
				if(data != "0") alert("Thay đổi mật khẩu về mặc định thành công");
				else alert("Bạn không có quyền");
			});
		}
	});
	
	/*biến đổi alias*/
	function name_alias(dest,source){
		$(dest).dblclick(function(){
			var name = $.trim($(source).val());
			$(this).val(change_alias(name,'-'));
		});
	}
	name_alias('#name_alias','#name');
	
	/*link tự động trong menu*/
	function url_auto(dest,source){
		$(dest).dblclick(function(){
			var name_rewrite = $.trim($(source).val());
			$(this).val(name_rewrite + '/');
		});
	}
	url_auto('.url_auto','#name_alias')
	
	/*lấy keyword tự động*/
	function keyword_auto(dest,source){
		$(dest).dblclick(function(){
			var name = $.trim($(source).val());
			$(this).val(remove_ky_tu_dac_biet(name,' ') + ',' + change_alias(name,' '));
		});
	}
	keyword_auto('#metaKeyword','#name')
	
	/*checks box*/
	function checks_box_item(list_check, list_view){
		$(list_check).change(function(){
			var str=",";
			$(list_check + ':checked').each(function(i,val){
				str += $(this).val() + ',';
			});
			$(list_view).attr('value',str);
		});
	};
	checks_box_item('.checkbox_item', '.value_checks_box'); //class, id
	checks_box_item('.checkbox_xem', '.value_quyen_xem');
	checks_box_item('.checkbox_action', '.value_quyen_action');
	
	
	
});