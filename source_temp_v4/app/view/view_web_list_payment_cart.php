<?php
$data = $this->order_sp_view();
$all_sp = count($data);/*view gio hang*/
?>
<div id="loading" style="display:none; width:960px; height:435px; text-align:center; position:absolute; z-index:2; background-color:#FFF; opacity: 0.4; filter:alpha(opacity=40);"><img src="css/web_img/loader.gif" width="100" style="margin-top:150px" /></div>
<div class="ajax_data" style="position:relative; z-index:1">
<div style="clear:both; height:20px"></div>
<div class="viewpost">
	<h1><?php echo $row_menu_one['title'];?></h1>
    <h2 style="color:#666">Bạn có <?php echo $all_sp;?> sản phẩm trong giỏ hàng</h2>
    <div id="ajax" class="error"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="order_sp">
    	<tr bgcolor="#FFFFCC">
        	<th width="50px">&nbsp;</th>
            <th align="left">Tên sản phẩm</th>
            <th width="200px" align="right">Giá tiền</th>
            <th width="120px">Số lượng</th>
            <th width="120px" align="right">Thành tiền</th>
        </tr>
        <?php
		$tongtien = 0;
		if($all_sp > 0){
			foreach($data as $row){
				$tongtien += $row['thanhtien'];
				if($row['giagoc']==0) $price_sp=number_format($row['giaban'],0,',','.').' VNĐ';
				else $price_sp='<span style="color:#888; font-size:85%; text-decoration:line-through; padding-right:15px">'.number_format($row['giagoc'],0,',','.').' VNĐ</span>'.number_format($row['giaban'],0,',','.').' VNĐ';
				echo '<tr>
					<td align="center"><span class="order_sp_trash" idsp="'.$row['id'].'">x</span></td>
					<td><a href="'.$row['link'].'" title="Xem lại sản phẩm">'.$row['name'].'</a></td>
					<td align="right">'.$price_sp.'</td>
					<td align="center" class="soluong"><input type="text" name="soluong" value="'.$row['soluong'].'" style="width:30px; padding:2px" /><input type="hidden" name="idSP" value="'.$row['id'].'" /></td>
					<td align="right">'.number_format($row['thanhtien'],0,',','.').' VNĐ</td>
				</tr>';
			}
		}else echo '<td colspan="5" class="error" style="font-size:120%" align="center">'.$data[0]['name'].'</td>';
		?>
    </table>
    <div style="clear:both; height:1px"></div>
    
    <table width="60%" border="0" cellpadding="0" cellspacing="0" class="order_sp" style="float:left">
        <tr><td><b>Giảm 5%</b> nếu tổng số lượng đặt hàng &gt;=10</td></tr>
        <tr><td><b>Giảm 8.5%</b> nếu tổng số lượng đặt hàng &gt;=20</td></tr>
        <tr><td><b>Giảm 11%</b> nếu tổng số lượng đặt hàng &gt;=50</td></tr>
        <tr><td><b>Giảm 13%</b> nếu tổng số lượng đặt hàng &gt;=100 <em>(tặng áo thun, băng rôn, tờ rơi)</em></td></tr>
        <tr><td><b>Giảm 16%</b> nếu tổng số lượng đặt hàng &gt;=200 <em>(tặng áo thun, băng rôn, tờ rơi)</em></td></tr>
        <tr><td style="color:#0470E6">Giao hàng toàn quốc. Gọi <b><?php echo $row_config['tel'];?></b> để được hỗ trợ thêm.</td></tr>
    </table>
    <?php if($tongtien!=0){?>
    <table width="38%" border="0" cellpadding="0" cellspacing="0" class="order_sp" style="float:right">
    	<tr><td><span class="order_sp_btn"><a href="javascript:;" id="order_sp_update">Cập nhật</a></span> <a href="gio-hang/?step=clear" id="order_sp_cancel">Xóa giỏ hàng</a></td></tr>
        <tr><td style="font-weight:bold; font-size:150%; color:#F60">Tổng cộng: <?php echo number_format($tongtien,0,',','.').' VNĐ';?></td></tr>
        <tr>
          <td>
        	<a href="san-pham/" style="display:block; width:auto; float:left; margin-top:20px">&lt;&lt; Trở lại mua hàng</a>
            <div class="order_sp_btn" style="background-color:#4DBE01; float:right"><a href="gio-hang/?step=step1">Bước kế tiếp &gt;&gt;</a></div>
        </td></tr>
    </table>
    <?php }?>
    <div style="clear:both; height:1px"></div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("#order_sp_update").click(function(){
		var dayid = $("input[name=idSP]").serialize();
		var daysoluong = $("input[name=soluong]").serialize();
		$("#loading").show();
		$.ajax({ 	
			url:"ajax/",
			type:'post',
			data:{dayid:dayid,daysoluong:daysoluong},
			cache:false,
			success: function(data) {
				if(data!=''){
					setTimeout(function(){
						$(".ajax_data").html(data);
						$("#loading").hide();
					},500);
				}else{
					setTimeout(function(){
						$("#ajax").html('Không cập nhật giỏ hàng được. Vui lòng kiểm tra lại.');
						$("#loading").hide();
					},500);
				}
			}
		});	
	});
	
	$(".order_sp_trash").click(function(){
		var id = $(this).attr("idsp");
		$("#loading").show();
		$.ajax({ 	
			url:"ajax/",
			type:'post',
			data:{order_sp_trash:id},
			cache:false,
			success: function(data) {
				if(data!=''){
					setTimeout(function(){
						$(".ajax_data").html(data);
						$("#loading").hide();
					},500);
				}else{
					setTimeout(function(){
						$("#ajax").html('Không cập nhật giỏ hàng được. Vui lòng kiểm tra lại.');
						$("#loading").hide();
					},500);
				}
			}
		});	
	});
});
</script>
</div>