<div id="left" class="bogoc_5px">
	<div id="danhmuc_sp">Danh mục sản phẩm</div>
    <?php
	$parent = 6;
    $position = 4;
	$data_1 = $this->_model->_web_menu($lang, $parent, $position);
	foreach($data_1 as $row_1){
		echo '<div class="danhmuc_sp_1"><a href="'.$row_1['url'].'">'.$row_1['name'].'</a></div>';
		$data = $this->_model->_web_menu($lang, $row_1['id'], $position);
		foreach($data as $row) echo '<div class="danhmuc_sp_2"><a href="'.$row['url'].'">'.$row['name'].'</a></div>';
	}
	?>
</div>