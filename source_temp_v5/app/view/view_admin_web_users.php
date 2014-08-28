<div id="search">
	<form action="" method="get" name="search" onsubmit="if(search.value=='' && username.value=='' && group_id.value=='') return false;">
    	<input type="text" name="search" value="<?php if(isset($_GET['search'])) echo $_GET['search']; ?>" class="txt"  placeholder="Mô tả" />
        <input type="text" name="username" value="<?php if(isset($_GET['username'])) echo $_GET['username']; ?>" class="txt"  placeholder="Username" />
        <select name="group_id" class="select">
        	<option value=''>-- chọn group --</option>
            <?php
            $data = $this->_model->_web_users_group();
			foreach($data as $row){
				if($_GET['group_id']!=$row['id']) echo "<option value='{$row['id']}'>{$row['name']}</option>";
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
            <th align="left">Họ tên</th>
            <th width="120" align="left">Username</th>
            <th width="120" align="left">Phone</th>
            <th width="220" align="left">Email</th>
            <th width="120" align="left">Group</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $this->select_from_users($lang,$arr);
		if($data){
		foreach($data as $row){
			$i++; ?>
        <tr class="row row_<?php echo $row['id'];?>">
            <td align="center"><?php echo $arr['startrow']+$i; ?></td>
            <td><p class="height_25px_hidden"><?php echo $row['name'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['username'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['phone'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['email'];?></p></td>
            <td><p class="height_25px_hidden"><?php echo $row['group_name'];?></p></td>
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