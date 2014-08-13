<div id="left">
    <div id="danhmuc_sp">
        <div id="danhmuc_sp_title" class="bogoc_top_5px"><a href="san-pham/">Danh mục sản phẩm</a></div>
        <div id="danhmuc_sp_box" class="bogoc_bottom_5px">
        <?php
		$parent = 6;
		$position = 4;
		$data1 = $this->_model->_web_menu($lang, $parent, $position);
		foreach($data1 as $row1){
			echo '<div class="danhmuc_sp_1"><a href="'.$row1['url'].'">'.$row1['name'].'</a></div>';
			$data2 = $this->_model->_web_menu($lang, $row1['id'], $position);
			foreach($data2 as $row2){
				echo '<div class="danhmuc_sp_2"><a href="'.$row2['url'].'">'.$row2['name'].'</a></div>';
			}
		}
		?>
        </div>
    </div>
</div>