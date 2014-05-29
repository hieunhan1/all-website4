// JavaScript Document
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
	
	
	
	
});