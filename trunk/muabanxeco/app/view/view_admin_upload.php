<?php
$data = $this->_model->_url_image_menu_type($table);
$url_img = $data['url_img'];
$url_img_thumb = $data['url_img_thumb'];
?>
<script type="text/javascript" src="js/copy_clip/jquery.zclip.js"></script>
<script type="text/javascript">
$(document).ready(function() { 
	$('#photoimg').die('click').live('change', function(){ 
		//$("#upload_img").html('');
		$("#imageform").ajaxForm({target: '#upload_img', 
			beforeSubmit:function(){
				console.log('ttest');
				$("#imageloadstatus").show();
				$("#imageloadbutton").hide();
			},
			success:function(){ 
				console.log('test');
				$("#imageloadstatus").hide();
				$("#imageloadbutton").show();
			},
			error:function(){ 
				console.log('xtest');
				$("#imageloadstatus").hide();
				$("#imageloadbutton").show();
			}
		}).submit();
	});
	
	/*chon anh dai dien*/
	$(".select_avatar").live("click", function(){
		var name = $(this).parent().attr("value");
		$("#img_avatar").val(name);
		
		$(".img_item").removeClass("active_avatar");
		$(".select_avatar").show();
		
		$(this).parent().addClass("active_avatar");
		$(this).hide();
	});
	
	/*delete_img xoa hinh anh*/
	$(".delete_img").live("click", function(){
		var name 	= $(this).parent().attr("value");
		var message = "Bạn có muốn xóa hình này?";
		var img_arr = $("input[name=img_arr]").val();
		var img_avatar = $("input[name=img_avatar]").val();
		
		if(confirm(message)){
			$(this).parent().hide();
			$.ajax({
				url: '<?php echo CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table ?>' + '/?ajax=delete_img',
				type:'GET',
				data:{image:name},
				cache:false,
				success: function(data) {
					img_arr = img_arr.replace(name + ',','');
					$("input[name=img_arr]").val(img_arr);
					if(name==img_avatar) $("input[name=img_avatar]").val('');
				}
			});
		}
	});
	
	/*copy link*/
	$(".copylink").live("click", function(){
		$(this).zclip({
			path:'js/copy_clip/ZeroClipboard.swf',
			copy: function(){
				var str = "/<?php echo $url_img;?>" + $(this).parent().attr("value");
				return str;
			},
			/*afterCopy: function() {
				alert('Copy đường dẫn hình thành công');
				return true;
			}*/
		});
	});
}); 
</script>

<div style="width:160px; float:left; margin:3px 10px 0 0; font-weight:bold; text-align:right">Upload ảnh</div>
<div style="width:700px; float:left">
    <form id="imageform" method="post" enctype="multipart/form-data" action="cp_admin/<?php echo $table;?>/?ajax=upload_images" style="clear:both; margin-bottom:10px">
        <div id="imageloadstatus" style="display:none"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>loader.gif" alt="Uploading...." /></div>
        <div id="imageloadbutton">
            <input type="file" name="photos[]" id="photoimg" multiple="true" />
        </div>
    </form>
    
    <div id="upload_img">
		<?php
        $img_arr = explode(',',$row_detail['img_arr']);
        $total = count($img_arr);
        if($total > 1){
            for($i=$total-2; $i>=0; $i--){
                if($img_arr[$i] != $row_detail['img_avatar']) $active = ''; else $active = array('active_avatar','style="display:none"');
                echo '<div class="img_item '.$active[0].'" value="'.$img_arr[$i].'">
                    <div class="select_avatar" '.$active[1].'>Chọn làm đại diện</div>
                    <img class="img" src="'.$url_img_thumb.$img_arr[$i].'" />
                    <div class="copylink">Copy link</div>
                    <div class="delete_img"><img src="'.CONS_ADMIN_CSS_IMG.'delete.gif" /></div>
                </div>';
            }
        }
        ?>
    </div>
    <div id="img_arr"></div>
</div>
<div style="clear:both; height:1px"></div>