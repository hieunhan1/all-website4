<div id="average">
    <h3 class="title_user">Average of Pair Currencies:</h3>
    <table width="100%" border="1" cellpadding="5" cellspacing="0" class="table">
        <tr class="title_forex">
            <th align="left">Name</th>
            <th align="left">Average</th>
        </tr>
        <?php
        $data = $this->_model->_list_currency();
        foreach($data as $row){
            echo '<tr><td>'.$row['name'].'</td> <td>'.$row['average'].'</td></tr>';
        }
        ?>
    </table>
</div>
<div id="trend">
	<h3 class="title_user">Trend</h3>
    <table width="100%" border="1" cellpadding="5" cellspacing="0" class="table">
        <tr class="title_forex">
            <th>Pair Currencies</th>
            <th>Trend of Today</th>
            <th>Trend of Week</th>
            <th>Trend of Month</th>
        </tr>
        <?php
        $data = $this->_model->_web_trend($this->_config['limit_2']);
        foreach($data as $row){
			if($row['today']==1) $today='<span class="icon_up">UP</span>'; else $today='<span class="icon_down">DOWN</span>';
			if($row['week']==1) $week='<span class="icon_up">UP</span>'; else $week='<span class="icon_down">DOWN</span>';
			if($row['month']==1) $month='<span class="icon_up">UP</span>'; else $month='<span class="icon_down">DOWN</span>';
            echo '<tr>
				<td align="center">'.$row['currency'].'</td>
				<td align="center">'.$today.'</td>
				<td align="center">'.$week.'</td>
				<td align="center">'.$month.'</td>
			</tr>';
        }
        ?>
    </table>
</div>
<div class="clear_20px" style="margin-bottom:30px"></div>

<h3 class="title_user">Support and Resistance Points:</h3>
<table width="100%" border="1" cellpadding="5" cellspacing="0" class="table">
    <tr class="title_forex">
    	<th rowspan="2" width="140px">Pair Currencies</th>
    	<th rowspan="2" width="140px">PIVOT</th>
        <th colspan="3">Support</th>
        <th colspan="3">Resistance</th>
    </tr>
    <tr bgcolor="#d3ebf1">
    	<td align="center">S1</td>
    	<td align="center">S2</td>
    	<td align="center">R3</td>
    	<td align="center">R1</td>
    	<td align="center">R2</td>
    	<td align="center">R3</td>
    </tr>
    <?php
    $data = $this->_model->_web_support_resistance($this->_config['limit_4']);
	foreach($data as $row){
		echo '<tr>
			<td align="center">'.$row['currency'].'</td>
			<td align="center">'.$row['pivot'].'</td>
			<td align="center">'.$row['support_s1'].'</td>
			<td align="center">'.$row['support_s2'].'</td>
			<td align="center">'.$row['support_r3'].'</td>
			<td align="center">'.$row['resistance_r1'].'</td>
			<td align="center">'.$row['resistance_r2'].'</td>
			<td align="center">'.$row['resistance_r3'].'</td>
		</tr>';
	}
	?>
</table>
<div class="clear_20px" style="margin-bottom:30px"></div>

<h3 class="title_user">Real time Orders:</h3>
<table width="100%" border="1" cellpadding="5" cellspacing="0" class="table">
    <tr class="title_forex">
        <th align="left">Pair of Currencies</th>
        <th align="left">Oders</th>
        <th align="left">Entry Point</th>
        <th align="left">Take Profit</th>
        <th align="left">Stop Loss</th>
        <th align="left">Status</th>
    </tr>
    <?php
    $data = $this->_model->_list_real_time($this->_config['limit_3']);
    foreach($data as $row){
        if($row['oders']==1) $oders='BUY'; else $oders='SELL';
        if($row['status_real_time']==1) $status='In Progressing'; else $status='Out';
        echo '<tr>
            <td>'.$row['currency'].'</td>
            <td>'.$oders.'</td>
            <td>'.$row['entry_point'].'</td>
            <td>'.$row['take_profit'].'</td>
            <td>'.$row['stop_loss'].'</td>
            <td>'.$status.'</td>
        </tr>';
    }
    ?>
</table>
<div class="clear_20px" style="margin-bottom:30px"></div>
<script type="text/javascript">
	$(document).ready(function(e) {
		function forex(){
			$.ajax({ 	
				url:"<?php echo CONS_BASE_URL;?>/ajax/",
				type:"post",
				data:{forex:1},
				cache:false,
				success: function(data){
					$("#ajax_forex").html(data);
					return true;
				}
			});
		}
		setInterval(function(){ forex(); },10000);
	});
</script>