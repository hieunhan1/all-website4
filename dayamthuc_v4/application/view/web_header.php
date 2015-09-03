<div id="top">
	<div class="content">
        <div id="menuTop">
			<?php
            $parent=0; $position=1;
            $data = $c->_model->_listMenu($lang, $parent, $position);
            foreach($data as $row){
				if($currentMenu['rootId']!=$row['id']) $style=''; else $style='style="color:#FFF"';
				$data2 = $c->_model->_listMenu($lang, $row['id'], $position); //print_r($data2);
				if(count($data2)>0){
					$str='<ul>';
					foreach($data2 as $row2) $str.='<li><a href="'.$row2['url'].'" title="'.$row2['title'].'">'.$row2['name'].'</a></li>';
					$str.='</ul>';
				}else $str='';
                echo '<li><a href="'.$row['url'].'" title="'.$row['title'].'" '.$style.'>'.$row['name'].'</a>'.$str.'</li>';
            }
            ?>
        </div>
        <div id="search" class="allIcon" style="background-position:0px -90px">
        	<input type="text" name="txtSearch" id="txtSearch" placeholder="search.." />
        </div>
        <!--<div id="lang">
        	<a href="javascript:;" class="allIcon" style="background-position:0px 0px">&nbsp;</a>
            <a href="javascript:;" class="allIcon" style="background-position:0px -30px">&nbsp;</a>
            <a href="javascript:;" class="allIcon" style="background-position:0px -60px">&nbsp;</a>
        </div>-->
        <div class="clear1"></div>
    </div>
</div>

<div id="header" >
    <div class="content">
        <?php
        if($lang==CONS_DEFAULT_LANG) $link=CONS_BASE_URL;
        else $link=CONS_BASE_URL.'/?lang='.$lang;
        ?>
        <a href="<?php echo $link;?>" title="<?php echo $config['sitename'];?>"><img src="themes/website/img/logo-2.png" id="logo" alt="<?php echo $config['sitename'];?>" /></a>
        <?php include_once('web_menu.php');?>
    </div>
    <div class="clear1"></div>
</div>