<?php include_once('view/view_admin_search.php');?>

<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Mô tả</th>
            <th width="90">Oders</th>
            <th width="90">Entry Point</th>
            <th width="90">Take Profit</th>
            <th width="95">Stop Loss</th>
            <th width="150" align="left">Status</th>
            <th width="110" align="left">Ngày</th>
            <th width="110">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $this->select_from_all($lang,$arr,',`oders`,`entry_point`,`take_profit`,`stop_loss`,`status_real_time`,`datetime`');
		if($data){
			$status = array(
				'0'=>'Failure',
				'1'=>'Success',
				'2'=>'Waiting for Opportunity',
				'3'=>'In Progressing',
			);
		foreach($data as $row){
			$i++; ?>
        <tr class="row row_<?php echo $row['id'];?>">
            <td align="center"><?php echo $arr['startrow']+$i; ?></td>
            <td><?php echo $row['name'];?></td>
            <td align="center"><?php if($row['oders']==1) echo 'BUY'; else echo 'SELL';?></td>
            <td align="center"><?php echo $row['entry_point'];?></td>
            <td align="center"><?php echo $row['take_profit'];?></td>
            <td align="center"><?php echo $row['stop_loss'];?></td>
            <td><?php echo $status[$row['status_real_time']];?></td>
            <td><?php echo $this->view_datetime($row['datetime']);?></td>
            <td align="center">
                <a href="javascript:;"><?php echo '<img src="'.CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif" class="status" id="status_'.$row['id'].'" status_id="'.$row['id'].'" status_name="'.$row['name'].'" url="'.$table.'" status="'.$row['status'].'" />';?></a> &nbsp;
                <a href="<?php echo CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table.'/?id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>edit.gif" alt=""></a> &nbsp;
                <a href="javascript:;" class="delete_one" id="delete_<?php echo $row['id'];?>" delete_id="<?php echo $row['id'];?>" delete_name="<?php echo $row['name'];?>" url="<?php echo $table;?>"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>delete.gif" alt="" /></a>
            </td>
		</tr>
        <?php }
		}?>
    </table>
    <div id="phantrang">
		<?php
		echo $this->_model->_pageslist(CONS_DEFAULT_LINK_LOGIN_ADMIN.$table.'/?'.$arr['url_search'], $arr['totalrows'], 3, CONS_ADMIN_PER_PAGE, $arr['currentpage']);
		?>
    </div>    
    <div style="clear:both; height:50px"></div>
</div>