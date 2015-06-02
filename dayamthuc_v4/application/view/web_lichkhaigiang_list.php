<div class="content">
    <?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
    
    <div id="article" class="viewpost">
    	<?php
        echo "<h1>{$currentMenu['title']}</h1>";
        echo "<h2>{$currentMenu['description']}</h2>";
		?>
        <table width="100%" border="1" cellpadding="8" cellspacing="0" class="table">
        	<tr bgcolor="#F90" style="line-height:40px; color:#FFF; font-size:120%">
            	<th style="border-right:solid 1px #333">TÊN KHÓA HỌC</th>
            	<th style="border:none">KHAI GIẢNG</th>
            </tr>
            <?php
            $data = $c->_model->_listParentMenu($currentMenu['id']);
			foreach($data as $row){
				if($currentPage!=$row['id']) $style='style="display:none"'; else $style='';
				echo '<tr bgcolor="#EEE" style="line-height:40px"><th colspan="2" class="viewlich" id="'.$row['id'].'"><span style="color:#F00; text-transform:uppercase">'.$row['name'].'</span> <i style="cursor:pointer">(xem lịch)</i></th></tr>
				<tbody class="contentLich contentLich'.$row['id'].'" '.$style.'>';
				$i=0;
				$data2 = $c->_model->_listKhaiGiang($row['id']);
				foreach($data2 as $row2){
					$i++;
					echo'<tr>
						<td>'.$i.'. <a href="'.$row2['url'].'">'.$row2['name'].'</a></td>
						<td>'.$row2['khaigiang'].'</td>
					</tr>';
				}
				echo '</tbody>';
			}
			?>
        </table>
        <script type="text/javascript">
			$(document).ready(function(e) {
                $(".viewlich").click(function(){
					var id = $(this).attr("id");
					$(".viewlich").css("background-color", "#EEE");
					$(this).css("background-color", "#FF9");
					
					$(".contentLich").hide(100);
					$(".contentLich" + id).show(100);
					sroll_top();
				});
            });
		</script>
    </div>
    
    <?php include_once('web_right.php');?>
    <div class="clear20"></div><div class="clear20"></div><div class="clear20"></div>
</div>