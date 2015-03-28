<footer>
	<div id="content_footer">
    	<div id="contact_footer">
			<?php echo '<p>'.$this->_config['copyright'].'. <b>'.$this->_config['sitename'].'</b></p>
            <p>Support email: '.$this->_config['email'].'</p>';?>
        </div>
        
        <div id="menu_footer">
			<?php
            $i=0;
            $data = $this->_model->_web_menu($this->_lang, 0, 3);
            foreach($data as $row){
                echo '<a href="'.$row['url'].'">'.$row['name'].'</a>';
            }
            ?>
        </div>
        
        <div id="run_top">TOP</div>
        
        <div class="clear_1px"></div>
    </div>
</footer>