<div id="search">
	<form action="" method="get" name="search" onsubmit="if(search.value=='' && order_id.value=='') return false;">
        <input type="text" name="order_id" value="<?php if(isset($_GET['order_id'])) echo $_GET['order_id']; ?>" class="txt"  placeholder="Nhập mã đơn hàng" />
        <input type="text" name="search" value="<?php if(isset($_GET['search'])) echo $_GET['search']; ?>" class="txt"  placeholder="Mô tả" />
    	<input type="submit" name="btnSearch" value="Tìm kiếm" class="btn" />
	</form>
</div>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th width="120" align="left">Mã đơn hàng</th>
            <th align="left">Mô tả</th>
            <th width="100" align="left">Đơn giá</th>
            <th width="80" align="left">Số lượng</th>
            <th width="80" align="left">Thành tiền</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $this->select_from_all($lang,$arr,',`number`,`price`,`total`,`order_id`');
		if($data){
		foreach($data as $row){
			$i++; ?>
        <tr class="row row_<?php echo $row['id'];?>">
            <td align="center"><?php echo $arr['startrow']+$i; ?></td>
            <td><p class="height_25px_hidden"><?php echo $row['order_id'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['name'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo number_format($row['price']);?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['number'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo number_format($row['total']);?></p></td>
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