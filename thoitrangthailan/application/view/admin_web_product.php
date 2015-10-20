<?php
echo '<div id="tableName" style="display:none">'.$table.'</div>';

if(!isset($_GET['menu_id'])) $idMenu='0'; else $idMenu=$_GET['menu_id'];
$where = "(type_id=1 OR type_id=2 OR type_id=3)";
$otherSearch = $c->viewFieldIdMenu($lang, $idMenu, $where);

echo $c->viewFormSearch($otherSearch);
?>
<div style="color:#C00; font-weight:bold; line-height:30px; margin-bottom:5px">Sửa giá hàng loạt &nbsp; <input type="text" name="txtDiscounts" placeholder="Nhập giá chính thức" style="color:#666; margin-right:5px; padding:2px 3px" /><input type="button" name="btnDiscounts" value="Cập nhật" style="color:#666; padding:2px 5px; cursor:pointer" /></div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("input[name=btnDiscounts]").click(function(){
		var price = $("input[name=txtDiscounts]").val();
		var menu_id = $("select[name=menu_id]").val();
		if(isNaN(price) || price==''){
			alert('Vui lòng nhập số');
			$("input[name=txtDiscounts]").focus();
			return false;
		}
		if(menu_id=='0'){
			alert('Vui lòng chọn danh mục cập nhật');
			$("select[name=menu_id]").focus();
			return false;
		}
		var message	= 'Bạn có thay đổi tất cả giá thành "' + price + '"?';
		if(confirm(message)){
			$.ajax({
				url: 'ajax/',
				type:'POST',
				data:{updatePrice:price, menu_id:menu_id},
				cache:false,
				success: function(data) {
					if(data=='1'){
						$("input[name=txtDiscounts]").val('');
						$("select[name=menu_id]").val(0);
						alert('Cập nhật giá thành công.');
					}else{
						alert('Lỗi. Vui lòng liểm tra lại.');
					}
					return true;
				}
			});
		}
	});
});
</script>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="50">STT</th>
            <th align="left">Mô tả</th>
            <th width="100" align="left">Mã SP</th>
            <th width="150" align="left">Tên hình</th>
            <th width="110">Ngày</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $c->selectFromAll($lang, $arr, $table, "`{$table}`.`img`, `{$table}`.`code`, `{$table}`.`datetime`");
		foreach($data as $row){
			$i++; ?>
            <tr class="row" id="<?php echo $row['id'];?>" name="<?php echo $row['name'];?>">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td><?php echo $row['code'];?></td>
                <td><p class="height_row_hidden"><?php echo $row['img'];?></p></td>
                <td><?php echo $c->viewDatetime($row['datetime']);?></p></td>
                <td align="center">
                    <a href="javascript:;" class="status_one" status="<?php echo $row['status'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif';?>" /></a> &nbsp;
                    <a href="<?php echo CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table.'/?id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'edit.gif';?>" /></a> &nbsp;
                    <a href="javascript:;" class="delete_one"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>delete.gif" /></a>
                </td>
            </tr>
        <?php }?>
    </table>
    <div id="phantrang">
		<?php
		$urlSearch = CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table.'/?'.$arr['urlSearch'];
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