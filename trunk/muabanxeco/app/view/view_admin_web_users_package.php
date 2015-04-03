<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="45">STT</th>
            <th align="left">Mô tả</th>
            <th width="90" align="left">Số ngày</th>
            <th width="90" align="left">Price</th>
            <th width="90" align="left">Discount</th>
            <th width="90" align="left">Thứ tự</th>
            <th width="100">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $this->select_from_users_package($lang);
		if($data){
		foreach($data as $row){
			$i++; ?>
        <tr class="row row_<?php echo $row['id'];?>">
            <td align="center"><?php echo $arr['startrow']+$i; ?></td>
            <td><p class="height_row_hidden"><?php echo $row['name'];?></p></td>
            <td><?php echo $row['songay'];?></td>
            <td><?php echo $row['price'];?></td>
            <td><?php echo $row['discount'];?></td>
            <td><?php echo $row['order'];?></td>
            <td align="center">
                <a href="javascript:;"><?php echo '<img src="'.CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif" class="status" id="status_'.$row['id'].'" status_id="'.$row['id'].'" status_name="'.$row['name'].'" url="'.$table.'" status="'.$row['status'].'" />';?></a> &nbsp;
                <a href="<?php echo CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table.'/?id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>edit.gif" alt=""></a> &nbsp;
                <a href="javascript:;" class="delete_one" id="delete_<?php echo $row['id'];?>" delete_id="<?php echo $row['id'];?>" delete_name="<?php echo $row['name'];?>" url="<?php echo $table;?>"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>delete.gif" alt="" /></a>
            </td>
		</tr>
        <?php }
		}?>
    </table>   
    <div style="clear:both; height:50px"></div>
</div>