<?php
/*action create, edit*/
$this->create_edit_data($table, $arr_action, $row_detail);

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:20px">';	
	//status
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Đã phục hồi');
	$arr[] = array('id'=>'0', 'name'=>'Chưa phục hồi');
	if($row_detail['status']=='') $properties = 1; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	if($row_detail['action']=='update' || $row_detail['action']=='delete'){
		if($row_detail['status']==0){
			if($this->_user=='admin') $btn_restore = '<tr><td class="label">&nbsp;</td><td style="font-size:110%"><a href="javascript:;" id="restore">Ấn vào đây! Phục hồi lại dữ liệu <b>`'.$row_detail['name'].'`</b> trong bảng <b>`'.$row_detail['table'].'`</b>?</a></td></tr>';
			$info_restore = '';
		}else{
			$btn_restore = '';
			$info_restore = '<tr>
				<td class="label">Date restore</td>
				<td style="line-height:22px; color:#666">'.$this->view_datetime($row_detail['date_restore']).'</td>
			</tr>
			<tr>
				<td class="label">User restore</td>
				<td style="line-height:22px; color:#666">'.$row_detail['user_restore'].'</td>
			</tr>';
		}
		$btn_view_log = '<input type="button" name="btn_view_log" value="View log" class="submit" />';
	}
	
	echo '<tr>
		<td class="label">Date</td>
		<td style="line-height:22px; color:#666">'.$this->view_datetime($row_detail['datetime']).'</td>
	</tr>
	<tr>
		<td class="label">Mô tả</td>
		<td style="line-height:22px; color:#666">'.$row_detail['name'].'</td>
	</tr>
	<tr>
		<td class="label">Action</td>
		<td style="line-height:22px; color:#666">'.$row_detail['action'].'</td>
	</tr>
	<tr>
		<td class="label">Table</td>
		<td style="line-height:22px; color:#666">'.$row_detail['table'].'</td>
	</tr>
	<tr>
		<td class="label">User action</td>
		<td style="line-height:22px; color:#666">'.$row_detail['username'].'</td>
	</tr>
	'.$info_restore.'
	<tr>
		<td class="label">&nbsp;</td>
		<td style="line-height:22px; color:#666">
			'.$btn_view_log.'
			<input type="button" name="btn_cancel" id="btn_cancel" value="Hủy" class="submit" onClick="window.location.href=\''.$_SESSION['link_back'].'\'" />
		</td>
	</tr>';
	
	//id
	$values = $row_detail['id'];
	$views = array('id'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
echo '</table></form>';
?>
<div id="view_log" style="display:none">
	<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">
    <?php
    $data = explode('fields%%%values', $row_detail['content']);
	$data_keys = explode(',', $data[0]);
	$data_values = explode('%%%', $data[1]);
	for($i=0; $i<count($data_keys); $i++){
		$str_view_log .= '<tr>
            <td class="label">'.ucfirst(trim($data_keys[$i],'`')).'</td>
            <td style="line-height:22px; color:#666">'.$data_values[$i].'</td>
        </tr>';
	}
	echo $str_view_log;
	echo $btn_restore;
	?>
    </table>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $('input[name=btn_view_log]').click(function(){
		$('#view_log').toggle(100);
	});
	
	$("#restore").click(function(){
		if(confirm('Bạn có chắc? Phục hồi lại dữ liệu `<?php echo $row_detail['name']?>` trong bảng `<?php echo $row_detail['table']?>`?')){
			$.ajax({
				url: '<?php echo "cp_admin/{$table}/";?>',
				type:'GET',
				data:{ajax:'ajax_restore', id_ac:<?php echo $row_detail['id']?>},
				cache:false,
				success: function() {
					$("#status_1").attr("checked", true);
					$('#view_log').html('<p style="font-weight:bold; color:#00F; padding: 20px 0 30px 50px">Phục hồi thành công dữ liệu `<?php echo $row_detail['name']?>` trong bảng `<?php echo $row_detail['table']?>`.</p>');
				}
			});
		}
	});
});
</script>