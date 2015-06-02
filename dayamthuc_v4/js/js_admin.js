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
	str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|–|_|-/g, dau_thaythe);
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
	var url_link_ajax = 'ajax/';
	var table = $("#tableName").html();
	
	/*ajax_number_item*/
	function ajax_number_item(table){
		$.ajax({ 	
			url: url_link_ajax,
			type:'POST',
			data:{ajaxNumberItem:1, table:table},
			cache:false,
			success: function(data) {
				$("#" + table).html(" (" + data + ")");
			}
		});
		return true;
	}
	ajax_number_item("web_dangky_tructuyen");
	ajax_number_item("web_contact");
	/*end ajax_number_item*/
	
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
	
	/*status*/
	$(".status_one").click(function(){
		var id = $(this).parent().parent().attr('id');
		var name = $(this).parent().parent().attr('name');
		var status = $(this).attr('status');
		var urlImg = '';
		var message = '';
		if(status=='1'){
			message = 'Bạn có muốn ẩn `' + name + '`?';
			status = 0;
			urlImg = url_img_css + 'anhien_0.gif';
		}else{
			message = 'Bạn có muốn hiện `' + name + '`?';
			status = 1;
			urlImg = url_img_css + 'anhien_1.gif';
		}
		if(confirm(message)){
			$.ajax({
				url: url_link_ajax,
				type:'POST',
				data:{status_one:status, table:table, id:id},
				cache:false,
				success: function() {
					$('#' + id + ' .status_one').attr('status', status);
					$('#' + id + ' .status_one img').attr('src', urlImg);
				}
			});
		}
	});
	
	/*delete*/
	$(".delete_one").click(function(){
		var id = $(this).parent().parent().attr('id');
		var name = $(this).parent().parent().attr('name');
		var message	= 'Bạn có muốn xóa `' + name + '`?';
		if(confirm(message)){
			$.ajax({
				url: url_link_ajax,
				type:'POST',
				data:{delete_one:id, table:table},
				cache:false,
				success: function() {
					$('#' + id).hide();
				}
			});
		}
	});
	
	/*changeAlias*/
	$("#changeAlias").click(function(){
		$("#name_alias").attr("disabled", false);
	});
	/*changeUrl*/
	$("#changeUrl").click(function(){
		$("#url").attr("disabled", false);
	});
	/*changeUser*/
	$("#changeUser").click(function(){
		$("#username").attr("disabled", false);
	});
	
	/*biến đổi alias*/
	function name_alias(dest, source){
		$(dest).dblclick(function(){
			var name = $.trim($(source).val());
			$(this).val(change_alias(name,'-'));
		});
		return true;
	}
	name_alias('#name_alias','#name');
	
	/*link tự động trong menu*/
	function url_auto(dest,source){
		$(dest).dblclick(function(){
			var name_rewrite = $.trim($(source).val());
			$(this).val(name_rewrite + '/');
		});
		return true;
	}
	url_auto('.url_auto','#name_alias');
	
	/*lấy keyword tự động*/
	function keyword_auto(dest,source){
		$(dest).dblclick(function(){
			var name = $.trim($(source).val());
			$(this).val(remove_ky_tu_dac_biet(name,' ') + ',' + change_alias(name,' '));
		});
		return true;
	}
	keyword_auto('#tags','#name');
	
	/*lấy link tu dong detail*/
	function check_link_detail(url){
		var id = $.trim($("input[name=id]").val());
		$.ajax({
			url: url_link_ajax,
			type:'POST',
			data:{checkLinkDeatil:id, table:table, url:url},
			cache:false,
			success: function(data) {
				if(data=='0') $(".messageUrl").html("");
				else $(".messageUrl").html("Link này đã tồn tại, vui lòng nhập Alias khác.");;
			}
		});
		return true;
	}
	function auto_link_detail(class_name, alias){
		var menu_id = $.trim($("#menu_id").val());
		$.ajax({
			url: url_link_ajax,
			type:'POST',
			data:{linkDeatil:1, menu_id:menu_id},
			cache:false,
			success: function(data) {
				var url = data + alias + ".html";
				$(class_name).val(url);
				check_link_detail(url);
			}
		});
		return true;
	}
	$(".auto_link_detail").dblclick(function(){
		var alias = $.trim($("#name_alias").val());
		if(alias==''){
			var name = $.trim($("#name").val());
			$("#name_alias").val(change_alias(name,'-'));
			alias = $.trim($("#name_alias").val());
		}
		auto_link_detail(this, alias);
	});
	
	/*checks box*/
	function checks_box_item(list_check, list_view){
		$(list_check).change(function(){
			var str=",";
			$(list_check + ':checked').each(function(i,val){
				str += $(this).val() + ',';
			});
			$(list_view).attr('value',str);
		});
		return true;
	};
	checks_box_item('.checkboxItem', '.valueChecksBox'); //class, id
	checks_box_item('.checkboxView', '.valueRuleView');
	checks_box_item('.checkboxAction', '.valueRuleAction');
	
	/*other*/
	function khoahoc_name(id){
		$.ajax({
			url: url_link_ajax,
			type:'POST',
			data:{khoahoc_name:id},
			cache:false,
			success: function(data) {
				if(data!='') $(".value_name").val(data);
				else alert("Không tìm thấy dữ liệu");
				return true;
			}
		});
	}
	function khoahoc_search(name){
		$.ajax({
			url: url_link_ajax,
			type:'POST',
			data:{khoahoc_search:name},
			cache:false,
			success: function(data) {
				if(data!='') $("#value_view").html(data);
				else alert("Không tìm thấy dữ liệu");
				return true;
			}
		});
	}
	$(".value_id").blur(function(){
		var id = $(this).val();
		if(Number(id)) khoahoc_name(id);
		else alert("Vui lòng nhập số");
		return true;
	});
	
	$(".value_search").click(function(){
		var name = $.trim($(".value_name").val());
		if(name!='') khoahoc_search(name);
		return true;
	});
	$(".value_data").live("click", function(){
		var id = $(this).attr("id");
		var name = $(this).html();
		$(".value_id").val(id);
		$(".value_name").val(name);
		$(".value_data").hide(100);
		return true;
	});
});