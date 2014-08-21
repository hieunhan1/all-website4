<div id="search">
	<form action="" method="get" name="search" onsubmit="if(search.value=='' && action.value=='' && table.value=='' && username.value=='') return false;">
    	<input type="text" name="search" value="<?php if(isset($_GET['search'])) echo $_GET['search']; ?>" class="txt"  placeholder="Mô tả" />
        <select name="action" class="select">
        	<option value=""> -- select action --</option>
            <?php
            $arr = array('create','update','status','delete');
			for($i=0; $i<count($arr); $i++){
				if($_GET['action']!=$arr[$i]) echo "<option value='{$arr[$i]}'>{$arr[$i]}</option>";
				else echo "<option value='{$arr[$i]}' selected='selected'>{$arr[$i]}</option>";
			}
			?>
        </select>
        <select name="table" class="select">
        	<option value=""> -- select table --</option>
        	<?php
            $data = $this->_model->_web_menu_admin();
			foreach($data as $row){
				if($_GET['table']!=$row['url']) echo "<option value='{$row['url']}'>{$row['name']}</option>";
				else echo "<option value='{$row['url']}' selected='selected'>{$row['name']}</option>";
			}
			?>
        </select>
        <select name="username" class="select">
        	<option value=""> -- select user --</option>
        	<?php
            $data = $this->_model->_list_username();
			foreach($data as $row){
				if($_GET['username']!=$row['username']) echo "<option value='{$row['username']}'>{$row['username']}</option>";
				else echo "<option value='{$row['username']}' selected='selected'>{$row['username']}</option>";
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
            <th width="80" align="left">Action</th>
            <th width="150" align="left">Table</th>
            <th width="120" align="left">Date</th>
            <th width="100" align="left">User</th>
            <th width="90">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$data = $this->select_from_all($lang,$arr,',`action`,`table`,`datetime`,`username`');
		if($data){
		foreach($data as $row){
			$i++; ?>
        <tr class="row row_<?php echo $row['id'];?>">
            <td align="center"><?php echo $arr['startrow']+$i; ?></td>
            <td><p class="height_25px_hidden"><?php echo $row['name'];?></p></td>
            <td><?php echo $row['action'];?></td>
            <td><?php echo $row['table'];?></td>
            <td><?php echo $this->datetime_current_vn($row['datetime']);?></td>
            <td><?php echo $row['username'];?></td>
            <td align="center">
                <?php echo '<img src="'.CONS_ADMIN_CSS_IMG.'anhien_'.$row['status'].'.gif" />';?> &nbsp;
                <a href="<?php echo CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table.'/?id='.$row['id'];?>"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>edit.gif" alt=""></a>
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