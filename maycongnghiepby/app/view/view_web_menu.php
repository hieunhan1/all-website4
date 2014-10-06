<div id="menu" class="bogoc_5px">
    <ul id="nav">
    	<?php
		$i = 0;
		$position = 2;
		$data = $this->_model->_web_menu($lang, 0, $position);
		foreach($data as $row){
			$i++;
			if($menu_root['id'] != $row['id']) $style=''; else $style='style="color:#008612"';
			if($i!=1){
				$view_menu .= '<li><a href="'.$row['url'].'" '.$style.'>'.$row['name'].'</a>';
				$view_menu .= $this->getSubmenu($lang, $row['id'], $position);
				$view_menu .= '</li>';
			}else{
				$view_menu .= '<li><a href="'.$row['url'].'" id="icon_home">&nbsp;</a></li>';
			}
		}
		echo $view_menu;
		?>
    </ul>
    <div id="search" class="bogoc_10px">
    	<input type="button" name="btnSearch" id="btnSearch" value="&nbsp;" />
        <input type="text" name="txtSearch" id="txtSearch" placeholder="Nhập từ khóa" />
    </div>
</div>


