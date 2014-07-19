<?php
include_once('view/view_admin_language.php');
include_once('view/view_admin_search.php');
?>

<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th align="left">Mô tả</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$startrow = 0;
		$data = $this->select_from_all($lang, $currentpage, $totalrows, $url_search);
		if($data){
		foreach($data as $row){
			$i++;
			$status = CONS_ADMIN_CSS_IMG.'anhien_'.$row[$table_field.'_status'].'.gif';?>
        <tr class="row row_<?php echo $row[$table_field.'_id'];?>">
            <td align="center"><?php echo $startrow+$i; ?></td>
            <td><?php echo $row[$table_field.'_name'];?></td>
            <td align="center">
                <a href="javascript:;"><img src="<?php echo $status;?>" class="status status_<?php echo $row[$table_field.'_id'];?>" status="<?php echo $row[$table_field.'_status'];?>" url="<?php echo $table;?>" name="English"></a> &nbsp;
                <a href="<?php echo CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table.'/?id='.$row[$table_field.'_id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>edit.gif" alt=""></a> &nbsp;
                <a href="javascript:;" class="delete_one delete_one_<?php echo $row[$table_field.'_id'];?>" url="<?php echo $table;?>"" name="English"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>delete.gif" alt=""></a>
            </td>
		</tr>
        <?php }
		}?>
    </table>
    <div id="phantrang">
		<?php
		
        echo $this->_model->_pageslist(CONS_DEFAULT_LINK_LOGIN_ADMIN.$table.'/?'.$url_search, $totalrows, 3, CONS_ADMIN_PER_PAGE, $currentpage);
		?>
    </div>    
    <div style="clear:both; height:50px"></div>
</div>