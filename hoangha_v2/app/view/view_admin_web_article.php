<div id="search">
	<form action="" method="get" name="search" onsubmit="if(search.value=='' && menu_id.value=='') return false;">
    	<input type="text" name="search" value="<?php if(isset($_GET['search'])) echo $_GET['search']; ?>" class="txt"  placeholder="Mô tả" />
        <select name="menu_id" class="select">
            <?php
			$arr = array();
			$arr[] = array('id'=>0, 'name'=>'-- Danh mục gốc --');
			$where = " AND (type_id=1 OR type_id=2 OR type_id=3 OR type_id=4) AND lang='{$lang}' ";
			$arr = $this->_model->_web_menu(0, '', $arr, $where);
			foreach($arr as $row){
				if($_GET['menu_id']!=$row['id']) echo "<option value='{$row['id']}'>{$row['name']}</option>";
				else echo "<option value='{$row['id']}' selected='selected'>{$row['name']}</option>";
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
            <th align="left">Mô tả</th>
            <th width="250" align="left">Tên hình</th>
            <th width="110" align="left">Ngày</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $this->select_from_all($lang,$arr,',`url_img`,`datetime`');
		if($data){
		foreach($data as $row){
			$i++; ?>
        <tr class="row row_<?php echo $row['id'];?>">
            <td align="center"><?php echo $arr['startrow']+$i; ?></td>
            <td><p class="height_25px_hidden"><?php echo $row['name'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['url_img'];?></p></td>
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