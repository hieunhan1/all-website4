<div id="menu"><div class="content">
    <ul id="nav">
    	<?php
		$i = 0;
		$position = 2;
		$data = $this->_model->_web_menu($lang, 0, $position);
		foreach($data as $row){
			$i++;
			if($i != 1){
				if($menu_root_id != $row['id']) $style=''; else $style='style="color:#FF0"';
				$view_menu .= '<li><a href="'.$row['url'].'" '.$style.'>'.$row['name'].'</a>';
				$view_menu .= $this->getSubmenu($lang, $row['id'], $position);
				$view_menu .= '</li>';
			}else{
				$view_menu .= '<li id="icon_home"><a href="'.$row['url'].'"></a></li>';
			}
		}
		echo $view_menu;
		?>
    </ul>
    <div id="cart">
    	<div id="cart_icon"><?php echo count($_SESSION['list_order_sp_name']);?></div>
        <a href="gio-hang/">Giỏ hàng</a>
    </div>
</div></div>


