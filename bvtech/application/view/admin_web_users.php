<?php
echo '<div id="tableName" style="display:none">'.$table.'</div>';
echo $c->viewFormSearch();
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Họ tên</th>
            <th width="120" align="left">Username</th>
            <th width="120" align="left">Phone</th>
            <th width="220" align="left">Email</th>
            <th width="120" align="left">Group</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$group = $c->_model->_listUsersGroup();
		$data = $c->selectFromAll('', $arr, $table, "`{$table}`.`username`, `{$table}`.`phone`, `{$table}`.`email`, `{$table}`.`group_id`", "`{$table}`.`group_id`");
		foreach($data as $row){
			$i++; ?>
            <tr class="row" id="<?php echo $row['id'];?>" name="<?php echo $row['name'];?>">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['username'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['phone'];?></p></td>
                <td><p class="height_row_hidden"><?php echo $row['email'];?></p></td>
                <td><p class="height_row_hidden"><?php if($row['group_id']!=0) echo $group[$row['group_id']]['name']; else echo '&nbsp;';?></p></td>
                <td align="center">
                     <a href="javascript:;" class="status_one" status="<?php echo $row['status'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif';?>" /></a> &nbsp;
                    <a href="<?php echo CONS_PAGE_ADMIN.'/'.$table.'/?id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'edit.gif';?>" /></a> &nbsp;
                    <a href="javascript:;" class="delete_one"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>delete.gif" /></a>
                </td>
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