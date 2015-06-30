<div id="menu" class="container">
    <ul id="nav">
    	<?php
		$i=0;
		$position = 2;
		$data = $this->_model->_web_menu($this->_lang, 0, $position);
		foreach($data as $row){
			$i++;
			if($i!=1) $line='style="border-left:solid 1px #FFF; border-right:solid 1px #e8e8e8"';
			else $line='style="border-right:solid 1px #e8e8e8"';
			if($row['id']==$current_menu['root_id']) $style='id="menu_active"'; else $style='';
			$view_menu .= '<li '.$line.'><a href="'.$row['url'].'" '.$style.'>'.$row['name'].'</a>';
			$view_menu .= $this->getSubmenu($this->_lang, $row['id'], $position);
			$view_menu .= '</li>';
		}
		echo $view_menu;
		?>
    </ul>
</div>


