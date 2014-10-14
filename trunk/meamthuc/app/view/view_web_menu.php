<div id="menu" class="bogoc_5px">
    <ul id="nav">
    	<?php
		$position = 2;
		$data = $this->_model->_web_menu($lang, 0, $position);
		foreach($data as $row){
			if($row['id']==$current_menu['root_id']) $style='style="color:#FFFF66"'; else $style='';
			$view_menu .= '<li><a href="'.$row['url'].'" '.$style.'>'.$row['name'].'</a>';
			$view_menu .= $this->getSubmenu($lang, $row['id'], $position);
			$view_menu .= '</li>';
		}
		echo $view_menu;
		?>
    </ul>
</div>


