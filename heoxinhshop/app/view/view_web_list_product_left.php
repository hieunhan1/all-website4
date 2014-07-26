<div id="left" class="bogoc_5px">
	<div id="danhmuc_sp">Danh mục sản phẩm</div>
    <?php
	$parent = 6;
    $position = 4;
	$data_1 = $this->_model->_web_menu($lang, $parent, $position);
	foreach($data_1 as $row_1){
		if($row_1['id']!=$idMenu) echo '<div class="danhmuc_sp_1"><a href="'.$row_1['url'].'">'.$row_1['name'].'</a></div>';
		else echo '<div class="danhmuc_sp_1"><a href="'.$row_1['url'].'" style="color:#F00">'.$row_1['name'].'</a></div>';
		$data = $this->_model->_web_menu($lang, $row_1['id'], $position);
		foreach($data as $row)
			if($row['id']!=$idMenu) echo '<div class="danhmuc_sp_2"><a href="'.$row['url'].'">'.$row['name'].'</a></div>';
			else echo '<div class="danhmuc_sp_2"><a href="'.$row['url'].'" style="color:#F00">'.$row['name'].'</a></div>';
	}
	?>
</div>