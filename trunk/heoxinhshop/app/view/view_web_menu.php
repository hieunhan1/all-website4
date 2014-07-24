<div id="menu">
    <ul id="nav">
    	<?php
		$position = 2;
		$data = $this->_model->_web_menu($lang, 0, $position);
		foreach($data as $row){
			if($menu_root_id != $row['id']) $style=''; else $style='style="color:#FFF; background-color:#F17C85"';
			$view_menu .= '<li><a href="'.$row['url'].'" class="bogoc_10px" '.$style.'>'.$row['name'].'</a>';
			$view_menu .= $this->getSubmenu($lang, $row['id'], $position);
			$view_menu .= '</li>';
		}
		echo $view_menu;
		?>
    </ul>
</div>


