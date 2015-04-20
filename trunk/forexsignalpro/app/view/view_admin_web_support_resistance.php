<?php include_once('view/view_admin_search.php');?>

<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Mô tả</th>
            <th width="70">Pivot</th>
            <th width="70">Sup-S1</th>
            <th width="70">Sup-S2</th>
            <th width="70">Sup-S3</th>
            <th width="70">Res-R1</th>
            <th width="70">Res-R2</th>
            <th width="70">Res-R3</th>
            <th width="110">Ngày</th>
            <th width="110">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $this->select_from_all($lang,$arr,',`pivot`,`support_s1`,`support_s2`,`support_s3`,`resistance_r1`,`resistance_r2`,`resistance_r3`,`datetime`');
		if($data){
		foreach($data as $row){
			$i++; ?>
        <tr class="row row_<?php echo $row['id'];?>">
            <td align="center"><?php echo $arr['startrow']+$i; ?></td>
            <td><?php echo $row['name'];?></td>
            <td align="center"><?php echo $row['pivot'];?></td>
            <td align="center"><?php echo $row['support_s1'];?></td>
            <td align="center"><?php echo $row['support_s2'];?></td>
            <td align="center"><?php echo $row['support_s3'];?></td>
            <td align="center"><?php echo $row['resistance_r1'];?></td>
            <td align="center"><?php echo $row['resistance_r2'];?></td>
            <td align="center"><?php echo $row['resistance_r3'];?></td>
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