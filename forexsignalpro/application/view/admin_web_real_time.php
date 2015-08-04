<?php
echo '<div id="tableName" style="display:none">'.$table.'</div>';
echo $c->viewFormSearch();
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="50">STT</th>
            <th align="left">Mô tả</th>
            <th width="90">Oders</th>
            <th width="90">Entry Point</th>
            <th width="90">Take Profit</th>
            <th width="90">Stop Loss</th>
            <th width="160" align="left">Status</th>
            <th width="110" align="left">Datetime</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $c->selectFromAll($lang, $arr, $table, "`{$table}`.`oders`, `{$table}`.`entry_point`, `{$table}`.`take_profit`, `{$table}`.`stop_loss`, `{$table}`.`status_real_time`, `{$table}`.`datetime`");
		$oders = array('SELL', 'BUY');
		$status = array('Failure', 'Success', 'Waiting for Opportunity', 'In Progressing');
		foreach($data as $row){
			$i++; ?>
            <tr class="row" id="<?php echo $row['id'];?>" name="<?php echo $row['name'];?>">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
                <td align="center"><?php echo $oders[$row['oders']];?></td>
                <td align="center"><?php echo $row['entry_point'];?></td>
                <td align="center"><?php echo $row['take_profit'];?></td>
                <td align="center"><?php echo $row['stop_loss'];?></td>
                <td><?php echo $status[$row['status_real_time']];?></td>
                <td><?php echo $c->viewDatetime($row['datetime']);?></p></td>
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