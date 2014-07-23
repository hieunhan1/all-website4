<?php
include_once('view/view_admin_language.php');
include_once('view/view_admin_search.php');
?>

<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Mô tả</th>
            <th width="110" class="create">Ngày tạo</th>
            <th width="90" class="create">Người tạo</th>
            <th width="110" class="update" style="display: none;">Date update</th>
            <th width="90" class="update" style="display: none;">User update</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$startrow = 0;
		$data = $this->select_from_all($currentpage,$startrow,$totalrows,$url_search,$lang,$str_search,'','`date_create` DESC,');
		if($data){
		foreach($data as $row){
			$i++; ?>
        <tr class="row row_<?php echo $row['id'];?>">
            <td align="center"><?php echo $startrow+$i; ?></td>
            <td><?php echo $row['name'];?></td>
            <td align="center" class="create"><?php echo date('d/m/Y H:i',strtotime($row['date_create']));?></td>
            <td align="center" class="create"><?php echo $row['user_create'];?></td>
            <td align="center" class="update" style="display: none;"><?php if($row['date_update']!='') echo date('d/m/Y H:i',strtotime($row['date_update']));?></td>
            <td align="center" class="update" style="display: none;"><?php echo $row['user_update'];?></td>
            <td align="center">
                <a href="javascript:;"><img src="<?php echo CONS_ADMIN_CSS_IMG."anhien_{$row['status']}.gif";?>" class="status status_<?php echo $row['id'];?>" status="<?php echo $row['status'];?>" url="<?php echo $table;?>" name="English"></a> &nbsp;
                <a href="<?php echo CONS_DEFAULT_LINK_LOGIN_ADMIN.$table.'/?id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>edit.gif" alt=""></a> &nbsp;
                <a href="javascript:;" class="delete_one delete_one_<?php echo $row['id'];?>" url="<?php echo $table;?>"" name="English"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>delete.gif" alt=""></a>
            </td>
		</tr>
        <?php }
		}?>
    </table>
    <div id="phantrang">
		<?php
		
        echo $this->_model->_pageslist(CONS_DEFAULT_LINK_LOGIN_ADMIN.$table.'/?'.$url_search, $totalrows, 5, CONS_ADMIN_PER_PAGE, $currentpage);
		?>
    </div>    
    <div style="clear:both; height:50px"></div>
</div>