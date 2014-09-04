<div id="header">
    <div id="logo">
        <a href="/"><img src="themes/website/img/logo.gif" alt="<?php echo $this->_config['sitename']?>" /></a>
    </div>
    <div id="track_code">
        <div class="tab_code bogoc_top_5px tab_code_active">Express</div>
        <div class="tab_code bogoc_top_5px">Track &amp; trace</div>
        <div id="form_code" class="all_icon_bg bogoc_right_5px">
        	<input type="text" name="txtCode" id="txtCode" class="bogoc_5px" maxlength="20" placeholder="Nhập mã" />
        	<input type="button" name="btnCode" id="btnCode" class="bogoc_5px" value="GO" />
        </div>
    </div>
    <div id="lang">
        <a href="/"><div class="all_icon lang_item">&nbsp;</div></a>
        <a href="en/"><div class="all_icon lang_item" style="background-position:-50px 0px">&nbsp;</div></a>
    </div>
    <div id="menu_top">
    	<?php
        $data = $this->_model->_web_menu($lang, 0, 1);
		$total = count($data);
		$i = 0;
		foreach($data as $row){
			$i++;
			if($i!=$total) $style = '|'; else $style = '';
			if($i!=1) $lang_top = $lang.'/'; else $lang_top='';
			echo '<a href="'.$lang_top.$row['url'].'">'.$row['name'].'</a>'.$style;
		}
		?>|<a href="forum/">Forum</a>
    </div>
    <?php include_once('view_web_menu.php');?>
</div>