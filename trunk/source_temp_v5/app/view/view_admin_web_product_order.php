<?php include_once('view/view_admin_language.php');?>
<div id="search">
	<form action="" method="get" name="search" onsubmit="if(search.value=='' && datetime.value=='' && listcity_id.value=='') return false;">
    	<input type="text" name="search" value="<?php if(isset($_GET['search'])) echo $_GET['search']; ?>" class="txt"  placeholder="Họ tên" />
        <input type="text" name="datetime" value="<?php if(isset($_GET['datetime'])) echo $_GET['datetime']; ?>" class="txt"  placeholder="Mã đơn hàng" />
        <select name="listcity_id" class="select">
            <?php
			$i = 0;
            $data = $this->_model->_web_listcity();
			foreach($data as $row){
				$i++;
				if($i!=1) $value = $row['id']; else $value = '';
				if($_GET['listcity_id']!=$value) echo "<option value='{$value}'>{$row['name']}</option>";
				else echo "<option value='{$value}' selected='selected'>{$row['name']}</option>";
			}
			?>
        </select>
    	<input type="submit" name="btnSearch" value="Tìm kiếm" class="btn" />
	</form>
</div>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<th width="40">STT</th>
            <th width="120" align="left">Mã đơn hàng</th>
            <th align="left">Họ tên</th>
            <th width="120" align="left">Điện thoại</th>
            <th width="150" align="left">Tỉnh thành</th>
            <th width="120" align="left">Ngày đặt</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $this->select_from_product_order($lang,$arr,',`phone`,`datetime`,`city`');
		if($data){
		foreach($data as $row){
			$i++; ?>
        <tr class="row row_<?php echo $row['id'];?>">
            <td align="center"><?php echo $arr['startrow']+$i; ?></td>
            <td><p class="height_25px_hidden"><?php echo $row['datetime'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['name'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['phone'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['city'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $this->datetime_current_vn($row['datetime']);?></p></td>
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