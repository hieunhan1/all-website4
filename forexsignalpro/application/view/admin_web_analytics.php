<?php
$analytic = new modelAnalytic;

$data = $analytic->_viewNewAnalytic();

$currentY = date('Y');
$currentM = (int)date('m');

$dateY = date('Y', $data['datetime']);
$dateM = (int)date('m', $data['datetime']);

function autoCreate($lang){
	global $analytic;
	$datetime = strtotime(date('Y-m-01'));
	$name = 'Tháng '.(int)date('m').' năm '.date('Y').'';
	$table = 'web_users';
	$value = '';
	$status = 1;
	$analytic->_autoCreateAnalytic($name, $table, $value, $datetime, $lang, $status);
	
	for($i=0; $i<=3; $i++){
		$table = 'web_payment';
		$value = $i;
		$analytic->_autoCreateAnalytic($name, $table, $value, $datetime, $lang, $status);
	}
}

if($currentY==$dateY && $currentM>$dateM){
	autoCreate($lang);
}else if($currentY>$dateY){
	autoCreate($lang);
}

?>
<style>
#total{font-weight:bold; color:#F30; font-size:110%; margin-bottom:10px}
#analytic{line-height:22px}
#analytic .item{list-style-type:decimal; width:260px; float:left; margin:0 20px 20px 0}
</style>
<div style="font-weight:bold; color:#00F; padding:10px">Hôm nay: <?php echo date('m/d/Y H:i');?></div>
<div id="ajaxAnalytic" style="margin:10px"></div>
<div style="clear:both; height:10px"></div>

<?php
echo '<div id="tableName" style="display:none">'.$table.'</div>';
echo $c->viewFormSearch();
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="50">STT</th>
            <th align="left">Mô tả</th>
            <th width="180" align="left">Loại thống kê</th>
            <th width="120">Giá trị</th>
            <th width="110">Datetime</th>
            <th width="120">Thống kê</th>
            <!--<th width="100">Thao tác</th>-->
        </tr>
        <?php
		$i = 0;
		$statusPayment = array('cancel', '<span style="color:#0000FF">success</span>', '<span style="color:#009900">check</span>', '<span style="color:#F00">error</span>');
		$data = $c->selectFromAll($lang, $arr, $table, "`{$table}`.`table`, `{$table}`.`value`, `{$table}`.`datetime` ", "`{$table}`.`other` DESC");
		foreach($data as $row){
			$i++; ?>
            <tr class="row" id="<?php echo $row['id'];?>" name="<?php echo $row['name'];?>">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td class="typeAnalytic"><?php if($row['table']=='web_payment') echo 'Bảng thống kê thanh toán';
				else echo 'Bảng thống kê user';?></td>
                <td align="center"><?php if($row['table']=='web_payment') echo $statusPayment[$row['value']];?></p></td>
                <td align="center"><?php echo $c->viewDatetime($row['datetime']);?></td>
                <td align="center" class="viewAnalytic"><a href="javascript:;">View analytic</a></td>
                <!--<td align="center">
                	<a href="javascript:;" class="status_one" status="<?php echo $row['status'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif';?>" /></a> &nbsp;
                    <a href="<?php echo CONS_PAGE_ADMIN.'/'.$table.'/?id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'edit.gif';?>" /></a> &nbsp;
                    <a href="javascript:;" class="delete_one"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>delete.gif" /></a>
                </td>-->
            </tr>
        <?php }?>
    </table>
    <div id="phantrang">
		<?php
		$urlSearch = CONS_PAGE_ADMIN.'/'.$table.'/?'.$arr['urlSearch'];
		$offSet = 5;
		$totalRows = $arr['totalRows'];
		$currentPage = $arr['currentPage'];
		$totalPages = ceil($totalRows/CONS_ADMIN_PER_PAGE);
		$data = $c->pagesList($urlSearch, $totalRows, $offSet, CONS_ADMIN_PER_PAGE, $currentPage);
		echo $data;
		?>
    </div>    
    <div style="clear:both; height:50px"></div>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $(".viewAnalytic").click(function(){
		var id = $(this).parent().attr('id');
		$.ajax({ 	
			url: 'ajax/',
			type:'POST',
			data:{viewAnalytic:id},
			cache:false,
			success: function(data) {
				$("#ajaxAnalytic").html(data);
			}
		});
	});
});
</script>