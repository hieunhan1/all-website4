<footer class="content z-index-2">
	<div id="menu_footer">
    <?php
	$position = 3;
	$data = $this->_model->_web_menu($this->_lang, 0, $position);
	foreach($data as $row){
		echo '<a href="'.$row['url'].'" title="'.$row['name'].'">'.$row['name'].'</a>';
	}
	?>
    </div>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
    	<tr>
        	<td valign="top" id="social">
			<p> Kết nối với chúng tôi</p>
            <?php
            $data = $this->_model->_web_menu($this->_lang, 0, 6);
			foreach($data as $row){
				echo '<a href="'.$row['url'].'"><img src="'.CONS_IMAGES_CATALOG.$row['img_avatar'].'" alt="'.$row['name'].'" /></a>';
			}
			?>
            </td>
            
            <td>
            <?php
            echo '<h3 style="font-size:100%">'.$this->_config['sitename'].'</h3>
				<p>Địa chỉ: '.$this->_config['address'].'</p>
				<p>Điện thoại: '.$this->_config['tel'].' - Hotline: '.$this->_config['hotline'].'</p>
				<p>Email: '.$this->_config['email'].'</p>
			';
			?>
            </td>
            
            <td style="font-weight:bold" valign="top">
				<p style="margin-bottom:20px"><?php echo $this->_config['copyright'];?></p>
                <div id="run_top">TOP</div>
            </td>
        </tr>
    </table>
    <div class="clear_20px"></div>
</footer>