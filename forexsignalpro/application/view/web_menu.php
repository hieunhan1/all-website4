<div class="container">
<div id="menu">
    <ul id="nav">
    	<?php
		$i=0; $view=''; $parent=0; $position=2;
		$data = $c->_model->_listMenu($lang, $parent, $position);
		foreach($data as $row){
			$i++;
			if($row['id']!=$currentMenu['rootId']) $style=''; else $style=' id="menuActive"';
			if($i!=1) $border='borderLR'; else $border='borderR';
			$view .= '<li'.$style.'><a href="'.$row['url'].'" title="'.$row['title'].'" class="'.$border.'">'.$row['name'].'</a>';
			$view .= $c->getSubmenu($lang, $row['id'], $position);
			$view .= '</li>';
		}
		echo $view;
		?>
    </ul>
</div>
</div>