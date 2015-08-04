<?php
echo '<div id="tableName" style="display:none">'.$table.'</div>';
echo $c->viewFormSearch();
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="50">STT</th>
            <th align="left">Name</th>
            <th width="120" align="left">Email</th>
            <th width="100">Package ID</th>
            <th width="120">Payee Account</th>
            <th width="120">Payee Amount</th>
            <th width="110">Datetime</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $c->selectFromAll($lang, $arr, $table, "`{$table}`.`email`, `{$table}`.`package_id`, `{$table}`.`PAYEE_ACCOUNT`, `{$table}`.`PAYMENT_AMOUNT`, `{$table}`.`datetime`");
		foreach($data as $row){
			$i++; ?>
            <tr class="row" id="<?php echo $row['id'];?>" name="<?php echo $row['name'];?>">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td align="center"><?php echo $row['email'];?></td>
                <td align="center"><?php echo $row['package_id'];?></td>
                <td align="center"><?php echo $row['PAYEE_ACCOUNT'];?></td>
                <td align="center">$<?php echo $row['PAYMENT_AMOUNT'];?></td>
                <td><?php echo $c->viewDatetime($row['datetime']);?></p></td>
                <td align="center">
                    <a href="javascript:;" class="" status="<?php echo $row['status'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif';?>" /></a> &nbsp;
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