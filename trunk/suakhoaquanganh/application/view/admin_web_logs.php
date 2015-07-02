<?php
$backup = new modelBackupRestore;
$backup->_clearLogs();

echo '<div id="tableName" style="display:none">'.$table.'</div>';
echo $c->viewFormSearch();
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="50">STT</th>
            <th align="left">Mô tả</th>
            <th width="100" align="left">Action</th>
            <th width="140" align="left">Table</th>
            <th width="120" align="left">Date</th>
            <th width="80" align="left">User</th>
            <th width="80">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $c->selectFromAll('', $arr, $table, "`{$table}`.`action`, `{$table}`.`table`, `{$table}`.`datetime`, `{$table}`.`username`");
		foreach($data as $row){
			$i++; ?>
            <tr class="row">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td><?php echo $row['action'];?></td>
                <td><?php echo $row['table'];?></td>
                <td><?php echo $c->viewDatetime($row['datetime']);?></p></td>
                <td><?php echo $row['username'];?></td>
                <td align="center">
                    <a href="javascript:;"><img src="<?php echo CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif';?>" /></a> &nbsp;
                    <a href="<?php echo CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table.'/?id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'edit.gif';?>" /></a>
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