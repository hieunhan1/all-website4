function browserName(){
   var Browser = navigator.userAgent;
   if (Browser.indexOf('MSIE') >= 0){
    Browser = 'MSIE';
   }
   else if (Browser.indexOf('Firefox') >= 0){
    Browser = 'Firefox';
   }
   else if (Browser.indexOf('Chrome') >= 0){
    Browser = 'Chrome';
   }
   else if (Browser.indexOf('Safari') >= 0){
    Browser = 'Safari';
   }
   else if (Browser.indexOf('Opera') >= 0){
      Browser = 'Opera';
   }
   else{
    Browser = 'UNKNOWN';
   }
   return Browser;
}

function browserVersion(){
   var index;
   var version = 0;
   var name = browserName();
   var info = navigator.userAgent;
   index = info.indexOf(name) + name.length + 1;
   version = parseFloat(info.substring(index,index + 3));
   return version;
}

function facebook_share(link_share){
	if(link_share=='') link_share = location.href;
	myWindow=window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(link_share),'','width=600,height=450');
	myWindow.focus();
	return false;
}

function SearchGoogle(id_txt_search){
	var key = document.getElementById(id_txt_search).value;
	var site = document.domain;
	var qs = key + "+site:" + site;
	var url = "http://www.google.com.vn/#sclient=psy-ab&hl=vi&site=&source=hp&q=" + qs + "&pbx=1&oq=" + qs + "&aq=f&aqi=&aql=1&gs_sm=e";
	window.open(url, "_blank");
	return false;
}

function sroll_top(){
	$("html, body").animate({ scrollTop: 0 }, 500);
	return false;
}

function isInt(num){
	if(parseInt(num)==num) return true;
	else return false;
}/*ham kiem tra so int*/

$(document).ready(function($){
	$("#txtSearch").keydown(function(e){
		if(e.keyCode==13) SearchGoogle("txtSearch");
	});
	$("input[name=btnSearch]").click(function(){
		SearchGoogle("txtSearch");
	});
	
	$("#nav li").hover(function(){
		$(this).find('ul:first').css({visibility: 'visible', display: 'none'}).show(200);
	}, function(){
		$(this).find('ul:first').css({visibility: 'hidden'});
	});
	
	if(browserVersion()!=7 && browserVersion()!=8){
		$(".bogoc_5px").corner("5px");
		$(".bogoc_top_5px").corner("top 5px");
		$(".bogoc_right_5px").corner("right 5px");
	}
	
	$("#run_top").click(function(){
		sroll_top();
	});
	
	function product_order(class_product_order, alias, soluong, id){
		if(!isInt(soluong) || soluong<1){
			alert("Số lượng phải là số và lớn hơn hoặc bằng 1");
			return false;
		}
		$.ajax({
			url:"ajax/",
			type:'post',
			data:{order_sp:alias,id:id,soluong:soluong},
			cache:false,
			success: function(data) {
				if(data!='0'){
					window.location = "gio-hang/";
				}else{
					alert("Đặt hàng không thành công. Vui lòng ấn F5 thử lại");
					return false;
				}
			}
		});
		$(class_product_order).html("Đã đặt hàng");
		$(class_product_order).css("background-color","#4DBE01");
	}
	
	$("#product_detail_order").click(function(){
		var alias = $(this).attr("alias");
		var soluong = parseInt($("#product_detail_soluong").val());
		product_order(this, alias, soluong, null);
	});
	
	$(".buy_book").click(function(){
		var id = $(this).attr("idsp");
		var alias = $(this).attr("alias");
		var soluong = 1;
		product_order(this, alias, soluong, id);
	});
});