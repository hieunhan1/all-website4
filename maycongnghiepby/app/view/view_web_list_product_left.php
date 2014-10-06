<div id="left">
    <div id="danhmuc_sp" class="bogoc_5px">
        <div id="danhmuc_sp_title"><a href="san-pham/">Danh mục sản phẩm</a></div>
        <div id="danhmuc_sp_box">
        <?php
		$parent = 6;
		$position = 4;
		$data1 = $this->_model->_web_menu($lang, $parent, $position);
		foreach($data1 as $row1){
			echo '<div class="danhmuc_sp_1"><a href="'.$row1['url'].'">'.$row1['name'].'</a></div>';
			$data2 = $this->_model->_web_menu($lang, $row1['id'], $position);
			foreach($data2 as $row2){
				if($idMenu!=$row2['id']) $style=''; else $style='style="color:#F00"';
				echo '<div class="danhmuc_sp_2"><a href="'.$row2['url'].'" '.$style.'>'.$row2['name'].'</a></div>';
			}
		}
		?>
        </div>
    </div>
</div>