<?php
echo '<div id="tableName" style="display:none">'.$table.'</div>';
echo $c->viewFormSearch();
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="50">ID</th>
            <th width="160" align="left">Mô tả</th>
            <th width="120" align="left">Tên biến</th>
            <th width="150" align="left">Table data</th>
            <th align="left">URL image</th>
            <th width="100">Thứ tự</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$data = $c->selectFromAll('', $arr, $table, "`{$table}`.`description`, `{$table}`.`table_data`, `{$table}`.`url_img`, `{$table}`.`order`", "`{$table}`.`order`");
		foreach($data as $row){
		?>
            <tr class="row" id="<?php echo $row['id'];?>" name="<?php echo $row['name'];?>">
                <td align="center"><?php echo $row['id']; ?></td>
                <td><?php echo $row['description'];?></td>
                <td><?php echo $row['name'];?></td>
                <td><p class="height_row_hidden"><?php echo $row['table_data'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['url_img'];?></p></td>
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