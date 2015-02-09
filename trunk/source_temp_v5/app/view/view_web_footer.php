<div id="footer">
    <div id="menu_footer" class="bogoc_10px">
        <?php
		$i=0;
        $data = $this->_model->_web_menu($lang, 0, 3);
        foreach($data as $row){
			$i++;
			if($i!=1) $lang_foo=$lang.'/'; else $lang_foo='';
            echo '<a href="'.$lang_foo.$row['url'].'">'.$row['name'].'</a>';
        }
        ?>
        <div id="run_top">TOP</div>
    </div>
	<div id="contact_foo">
    	<?php echo '<p>'.$this->_config['copyright'].'. <b>'.$this->_config['sitename'].'</b></p>
		<p>Địa chỉ: '.$this->_config['address'].'</p>
		<p>Điện thoại: '.$this->_config['tel'].' - Fax: '.$this->_config['fax'].' - Email: '.$this->_config['email'].'</p>';?>
    </div>
</div>