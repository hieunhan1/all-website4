<div id="menu" class="bogoc_5px all_icon_bg">
    <ul id="nav">
    	<?php
		$position = 2;
		$data = $this->_model->_web_menu($lang, 0, $position);
		foreach($data as $row){
			$view_menu .= '<li><a href="'.$row['url'].'">'.$row['name'].'</a>';
			$view_menu .= $this->getSubmenu($lang, $row['id'], $position);
			$view_menu .= '</li>';
		}
		echo $view_menu;
		?>
    </ul>
</div>


