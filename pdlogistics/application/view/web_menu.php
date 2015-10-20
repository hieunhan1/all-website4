<div id="menu">
<div class="container">
    <ul id="nav">
    	<?php
		$i=0; $view=''; $parent=0; $position=2;
		$data = $c->_model->_listMenu($lang, $parent, $position);
		foreach($data as $row){
			$i++;
			if($row['id']!=$currentMenu['rootId']) $style=''; else $style=' id="menuActive"';
			if($i!=1){
				$view .= '<li'.$style.'><a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
				$view .= $c->getSubmenu($lang, $row['id'], $position);
				$view .= '</li>';
			}else{
				$view .= '<li'.$style.'><a href="'.$row['url'].'" title="'.$row['title'].'" id="menuHome">&nbsp;</a></li>';
			}
		}
		echo $view;
		?>
    </ul>
</div>
</div>