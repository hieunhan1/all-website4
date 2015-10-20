<link rel="stylesheet" href="js/collapsible_tree_menu/lib/jquery.ntm/themes/default/css/theme.css" />
<div id="left">
	<div class="title"><?php echo CONS_PRODUCT_CATEGORY.' '.$adAddRoot;?><div class="clear1"></div></div>
    <div class="tree-menu demo" id="tree-menu">
        <ul>
            <?php
            $view=''; $parent=0; $position=4;
            $data = $c->_model->_listMenu($lang, $parent, $position);
            foreach($data as $row){
				if($currentMenu['id']!=$row['id']) $style=''; else $style='class="selected"';
                $view .= '<li '.$style.' id="'.$row['id'].'" name="'.$row['name'].'" table="web_menu"><a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].$adMenu.'</a>
				';
                $view .= $c->getSubmenu($lang, $row['id'], $position, $currentMenu['id'], $adMenu);
                $view .= '</li>';
            }
            echo $view;
            ?>
        </ul>
    </div>
</div>
<script type="text/javascript" src="js/collapsible_tree_menu/lib/jquery.ntm/js/jquery.ntm.js"></script>
<script type="text/javascript"> $(document).ready(function() { $('.demo').ntm(); }); </script>