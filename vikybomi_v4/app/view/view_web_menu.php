<div id="menu">
    <ul id="nav">
    	<?php
		$i = 0;
		$position = 2;
		$data = $this->_model->_web_menu($lang, 0, $position);
		foreach($data as $row){
			$i++;
				if($menu_root_id != $row['id']) $style=''; else $style='style="color:#FF0"';
				$view_menu .= '<li><a href="'.$row['url'].'" '.$style.'>'.$row['name'].'</a>';
				$view_menu .= $this->getSubmenu($lang, $row['id'], $position);
				$view_menu .= '</li>';
		}
		echo $view_menu;
		?>
    </ul>
</div>


