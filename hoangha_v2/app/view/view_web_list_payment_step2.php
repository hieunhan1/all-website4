<?php
$row_email = $this->_model->_web_product_order_email($_GET['email']);
?>
<div style="clear:both; height:20px"></div>
<div class="viewpost">
    <div style="font-size:120%; color:#888">
        <div style="width:400px; float:left">Nhập email</div>
        <div style="width:auto; float:left; font-weight:bold; color:#EA8005">Thông tin giao hàng</div>
        <div style="width:auto; float:right">Thông tin thanh toán</div>
    </div>

    <div style="clear:both; height:2px; margin-bottom:20px; background-color:#EA9E4A"></div>
    
    <div style="width:600px; float:left">
    	<h2>Nhập địa chỉ giao hàng</h2><div id="ajax" class="error"></div>
    	<table width="100%" border="0" cellspacing="10">
        	<tr>
            	<td width="150" align="right">Họ tên:</td>
                <td><input type="text" name="hoten" placeholder="Nhập họ tên" class="txt_order" value="<?php echo $row_email['name'];?>" maxlength="32" /> <span class="error" id="hoten"></span></td>
            </tr>
            <tr>
            	<td align="right">Điện thoại:</td>
                <td><input type="text" name="dienthoai" placeholder="0988388388" class="txt_order" value="<?php echo $row_email['phone'];?>" /> <span class="error" id="dienthoai"></span></td>
            </tr>
            <tr><td colspan="2"><div style="height:1px; margin:10px 60px 10px 30px; background-color:#CCC"></div></td></tr>
            <tr>
            	<td width="150" align="right">Tỉnh / thành phố:</td>
                <td><select name="city_id" class="sel_order">
                	<option value="">Chọn Tỉnh - Thành</option>
                    <?php
                    $data = $this->_model->_web_listcity();
					foreach($data as $row){
						if($row['id']!=$row_email['city_id']) echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
						else echo '<option value="'.$row['id'].'" selected="selected">'.$row['name'].'</option>';
					}
					?>
                </select> <span class="error" id="city_id"></span></td>
            </tr>
            <tr>
            	<td width="150" align="right">Quận / huyện:</td>
                <td><select name="districts_id" class="sel_order">
                	<option value="">Chọn Quận - Huyện</option>
                </select> <span class="error" id="districts_id" ma="<?php echo $row_email['districts_id'];?>"></span></td>
            </tr>
            <tr>
            	<td width="150" align="right">Địa chỉ:</td>
                <td><input type="text" name="address" placeholder="Nhập địa chỉ" class="txt_order" value="<?php echo $row_email['address'];?>" maxlength="100" /> <span class="error" id="address"></span></td>
            </tr>
            <tr>
           	  <td width="150" align="right" valign="top">Yêu cầu:</td>
                <td><textarea name="other" rows="3" class="txt_order" style="overflow:auto; resize:none; float:left; margin-right:5px"></textarea></td>
            </tr>
            <tr>
            	<td align="right" id="ajax">&nbsp;</td>
                <td><div class="order_sp_btn"><a href="javascript:;" style="display:block; padding:0 45px">ĐẶT HÀNG</a></div></td>
            </tr>
        </table>
    </div>
    
    <div style="width:340px; float:right" id="ajax_order_sp_info"><?php include_once('view_web_list_payment_info.php');?></div>
    
    <div style="clear:both; height:1px"> </div>
</div>
<script>
$(document).ready(function(e) {
	/*kiem tra phi gh*/
	var code = $("select[name=city_id]").val();
	var districts_id = $("#districts_id").attr("ma");
	$.post("ajax/",{data_districts:code,districts_id:districts_id},function(data){
		$("select[name=districts_id]").html(data);
	});
	$("select[name=city_id]").change(function(){
		var code = $(this).val();
		$("select[name=districts_id]").html('<option value="">Đang tải danh sách...</option>');
		$.post("ajax/",{data_districts:code},function(data){
			$("select[name=districts_id]").html(data);
		});
	});
	$("select[name=districts_id]").change(function(){
		var code = $(this).val();
		$("#order_sp_info_loading").show();
		$.ajax({
			url:"ajax/",
			type:"POST", /* dataType:"json", //xml, html, json, text */
			data:{costs_districts:code},
			cache:false,
			success:function(data){
				data = data.split("-|-");
				var obj = { "deliverycosts": data[0],"total": data[1] };
				var deliverycosts = obj.deliverycosts;
				var total = obj.total;
				setTimeout(function(){
					$("#order_sp_info_loading").hide();
					$("#districts_id").html("<span style='color:#00F'>Phí giao hàng: " + deliverycosts + " VNĐ</span>");
					$("#deliverycosts").html(deliverycosts);
					$("#total").html(total);
				},500);
			}
		});
	});
	/*end kiem tra phi gh*/
	
	$(".order_sp_btn a").click(function(){
		var hoten = check_text_length("input[name=hoten]","#hoten","Họ tên >= 2 ký tự",2);
		var dienthoai = check_phone("input[name=dienthoai]","#dienthoai","Số điện thoại chưa đúng");
		var city_id = check_number("select[name=city_id]","#city_id","Chọn tỉnh thành");
		var districts_id = check_number("select[name=districts_id]","#districts_id","Chọn quận huyện");
		var address = check_text_length("input[name=address]","#address","Địa chỉ >= 6 ký tự",6);
		var other = $.trim($("textarea[name=other]").val());
				
		if(hoten==false || dienthoai==false || city_id==false || districts_id==false || address==false) return false;
		
		$("#ajax").html("");
		$.ajax({
			url:"ajax/",
			type:"POST",
			data:{insert_order_sp:"<?php echo $_GET['email'];?>",name:hoten,phone:dienthoai,city_id:city_id,districts_id:districts_id,address:address,other:other},
			cache:false,
			success:function(data){
				if(data!='') window.location = "<?php echo $link_step3;?>&order_id=" + data;
				else $("#ajax").html("Vui lòng kiểm tra lại thông tin đặt hàng. Hoặc ấn F5 để thử lại");
			}
		});
	});
});
</script>
