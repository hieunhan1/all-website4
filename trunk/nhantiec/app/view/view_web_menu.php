<div id="menu">
    <ul id="nav">
    	<?php
		$position = 2;
		$data = $this->_model->_web_menu($this->_lang, 0, $position);
		foreach($data as $row){
			if($row['id']==$current_menu['root_id']) $style='id="menu_active"'; else $style='';
			$view_menu .= '<li><a href="'.$row['url'].'" '.$style.'>'.$row['name'].'</a>';
			$view_menu .= $this->getSubmenu($this->_lang, $row['id'], $position);
			$view_menu .= '</li>';
		}
		echo $view_menu;
		?>
    </ul>
    
    <div id="social">
    <?php
    $position = 6;
	$data = $this->_model->_web_menu($this->_lang, 0, $position);
	foreach($data as $row){
		echo '<a href="'.$row['url'].'" title="'.$row['title'].'"><img src="public/images/catalog/'.$row['img_avatar'].'" alt="'.$row['name'].'" /></a>';
	}
	?>
    </div> 
</div>