<div id="search">
	<form action="" method="get" name="search" onsubmit="if(search.value=='') return false;">
    	<input type="text" name="search" value="<?php if(isset($_GET['search'])) echo $_GET['search']; ?>" class="txt"  placeholder="Mã bill" />
    	<input type="submit" name="btnSearch" value="Tìm kiếm" class="btn" />
	</form>
</div>

<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th width="90" align="left">Mã Bill</th>
            <th width="100" align="left">Loại hàng</th>
            <th align="left">Nơi gửi</th>
            <th width="110" align="left">Bưu cục gửi</th>
            <th width="110" align="left">Người nhận</th>
            <th width="110" align="left">Bưu cục nhận</th>
            <th width="110" align="left">Ngày phát</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $this->select_from_all($lang,$arr,',`send_to`,`send_post_offices`,`receive_form`,`receive_post_offices`,`category`,`send_datetime`');
		if($data){
		foreach($data as $row){
			$i++; ?>
        <tr class="row row_<?php echo $row['id'];?>">
            <td align="center"><?php echo $arr['startrow']+$i; ?></td>
            <td><p class="height_25px_hidden"><?php echo $row['name'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['category'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['send_to'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['send_post_offices'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['receive_form'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['receive_post_offices'];?></p></td>
            <td><?php echo $this->view_datetime($row['send_datetime']);?></td>
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