<h3 class="title_user">Trend</h3>
<table width="100%" border="1" cellpadding="5" cellspacing="0" class="table" style="line-height:20px">
    <tr class="title_forex">
        <th>Pair Currencies</th>
        <th>Trend of Today</th>
        <th>Trend of Week</th>
        <th>Trend of Month</th>
    </tr>
    <?php
    $strTrend = array('<span class="icon_down">DOWN</span>','<span class="icon_up">UP</span>','NO');
    $data = $this->_model->_web_trend($this->_config['limit_2']);
    foreach($data as $row){
        echo '<tr>
            <td align="center">'.$row['currency'].'</td>
            <td align="center">'.$strTrend[$row['today']].'</td>
            <td align="center">'.$strTrend[$row['week']].'</td>
            <td align="center">'.$strTrend[$row['month']].'</td>
        </tr>';
    }
    ?>
</table>

<script type="text/javascript">
	$(document).ready(function(e) {
		function forex(){
			$.ajax({ 	
				url:"<?php echo CONS_BASE_URL;?>/ajax/",
				type:"post",
				data:{forexTrend:1},
				cache:false,
				success: function(data){
					$("#ajax_forex").html(data);
					return true;
				}
			});
		}
		setTimeout(function(){ forex(); },10000);
	});
</script>