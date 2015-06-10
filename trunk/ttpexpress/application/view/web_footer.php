<div id="footer">
	<div class="content">
    	<div id="run_top">TOP</div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        	<tr>
            	<td>
                	<div class="info">
                        <h2><?php echo $config['sitename'];?></h2>
                        <p><?php echo CONS_CONTACT_ADDRESS.': '.$config['address'];?></p>
                        <p><?php echo CONS_CONTACT_PHONE.': '.$config['tel'].' &nbsp;-&nbsp; Fax: '.$config['fax'];?></p>
                        <p>Email: <a href="mailto:<?php echo $config['email'];?>"><?php echo $config['email'];?></a></p>
                    </div>
                </td>
                <td>
                	<div id="social">
                    <?php
					$parent=0; $position=6;
					$data = $c->_model->_listMenu($lang, $parent, $position);
					foreach($data as $row){
						echo '<a href="'.$row['url'].'" title="'.$row['title'].'" target="_blank"><img src="'.$urlImg[11]['url_img'].$row['img'].'" alt="'.$row['name'].'" /></a>';
					}
					?>
                    </div>&nbsp;
                    <p><?php echo $config['copyright'];?></p>
                </td>
            </tr>
        </table>
        
        <div id="tagsALl">
			<?php
            $data = $c->_model->_listTagsKeyword($lang);
			foreach($data as $row) echo '<a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
            ?>
        </div>
    </div>
</div>