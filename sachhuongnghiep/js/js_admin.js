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
	$(".row").click(function(){
		$(".row").css("background-color","#FFF");
		$(this).css("background-color","#FF9");
	});
	
	var url_img_css = 'themes/admin/img/';
	var url_link_ad = 'cp_admin/';
	
	/*ajax_number_item*/
	function ajax_number_item(table){
		$.ajax({ 	
			url:"cp_admin/",
			type:'get',
			data:{ajax:"ajax_number_item",table:table},
			cache:false,
			success: function(data) {
				$("#" + table).html(" (" + data + ")");
			}
		});
	}
	ajax_number_item("web_product_order");
	ajax_number_item("web_contact");
	/*end ajax_number_item*/
	
	/*status*/
	$(".status").click(function(){
		var id 		= $(this).attr('status_id');
		var name 	= $(this).attr('status_name');
		var url 	= $(this).attr('url');
		var status 	= $(this).attr('status');
		var message	= '';
		var status_current = '';
		var url_current = '';
		if(status=='1'){
			message = 'Bạn có muốn ẩn `' + name + '`?';
			status_current = 0;
			url_current = url_img_css + 'anhien_0.gif';
		}else{
			message = 'Bạn có muốn hiện `' + name + '`?';
			status_current = 1;
			url_current = url_img_css + 'anhien_1.gif';
		}
		if(confirm(message)){
			$.ajax({
				url: url_link_ad + url + '/',
				type:'GET',
				data:{status_one:status, id_ac:id, name:name},
				cache:false,
				success: function() {
					$('#status_' + id).attr('status', status_current);
					$('#status_' + id).attr('src', url_current);
				}
			});
		}
	});
	
	/*delete*/
	$(".delete_one").click(function(){
		var id 		= $(this).attr('delete_id');
		var name 	= $(this).attr('delete_name');
		var url 	= $(this).attr('url');
		var message	= 'Bạn có muốn xóa `' + name + '`?';
		if(confirm(message)){
			$.ajax({
				url: url_link_ad + url + '/',
				type:'GET',
				data:{delete_one:id},
				cache:false,
				success: function() {
					$('.row_' + id).hide();
				}
			});
		}
	});
	
	/*reset_pass*/
	$("#reset_pass").click(function(){
		var id = $("input[name=id]").val();
		var name = $("input[name=name]").val();

		if(confirm('Bạn có muốn đổi mật khẩu tài khoản "' + name + '" về mật khẩu mặc định?')){
			$.post(url_link_ad + "/?user=reset&id_u=" + id,function(data){
				if(data != "0") alert("Thay đổi mật khẩu về mặc định thành công");
				else alert("Bạn không có quyền");
			});
		}
	});
	
	/*change_alias*/
	$("#change_alias").click(function(){
		$("#name_alias").attr("disabled",false);
	});
	
	/*change_url*/
	$("#change_url").click(function(){
		$("#url").attr("disabled",false);
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
	url_auto('.url_auto','#name_alias');
	
	/*lấy link tu dong detail*/
	function auto_link_detail(class_name, ajax){
		var name_alias = $.trim($("#name_alias").val());
		var menu_id = $.trim($("#menu_id").val());
		var url = $(location).attr('href') + "&ajax=" + ajax + "&menu_id=" + menu_id;
		$.post(url,function(data){
			$(class_name).val(data + name_alias + ".html");
		});
	}
	$(".auto_link_detail").dblclick(function(){
		auto_link_detail(this, "menu_id");
	});
	$(".auto_link_detail_forum").dblclick(function(){
		auto_link_detail(this, "forum_menu_id");
	});
	/*end lấy link tu dong detail*/
	
	/*lấy keyword tự động*/
	function keyword_auto(dest,source){
		$(dest).dblclick(function(){
			var name = $.trim($(source).val());
			$(this).val(remove_ky_tu_dac_biet(name,' ') + ',' + change_alias(name,' '));
		});
	}
	keyword_auto('#tags','#name');
	
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
	checks_box_item('.checkbox_xem', '.value_rule_view');
	checks_box_item('.checkbox_action', '.value_rule_action');
	
});