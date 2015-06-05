<?php
echo '<div id="tableName" style="display:none">'.$table.'</div>';

$where = '(type_id=1 OR type_id=4)';
if(!isset($_GET['menu_id'])) $idMenu='0'; else $idMenu=$_GET['menu_id'];
$otherSearch = $c->viewFieldIdMenu($lang, $idMenu, $where);

echo $c->viewFormSearch($otherSearch);
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="50">STT</th>
            <th align="left">Mô tả</th>
            <th width="260" align="left">Khai giảng</th>
            <th width="100">Khóa học ID</th>
            <th width="100">Thứ tự</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $c->selectFromAll($lang, $arr, $table, "`{$table}`.`khaigiang`, `{$table}`.`order`, `{$table}`.`article_id`", "`{$table}`.`order`");
		foreach($data as $row){
			$i++; ?>
            <tr class="row" id="<?php echo $row['id'];?>" name="<?php echo $row['name'];?>">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['khaigiang'];?></p></td>
                <td align="center"><?php echo $row['article_id'];?></td>
                <td align="center"><?php echo $row['order'];?></td>
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