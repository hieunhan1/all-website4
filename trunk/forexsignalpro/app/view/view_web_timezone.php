<table width="100%" border="1" cellpadding="5" cellspacing="0" class="table" style="line-height:25px; border:solid 1px #CCC">
	<tr bgcolor="#FFFF99"><th colspan="6" style="font-size:120%">Forex Market Time Converter</th></tr>
    <tr bgcolor="#EEE">
    	<th>Forex Market Center</th>
    	<th>Time Zone</th>
    	<th>Opens</th>
    	<th>Closes</th>
    	<th>Time and date</th>
    	<th>Status</th>
    </tr>
    <?php
    $data = $this->_model->_web_timezone();
	foreach($data as $row){
		date_default_timezone_set($row['timezone']);
		$time = date('H');
		if($row['other']==1){
			if($time>=$row['opens'] && $time<$row['closes']) $status='<span class="message">open</span>';
			else $status='<span class="error">close</span>';
		}else{
			if($time>=$row['opens'] && $time>$row['closes']) $status='<span class="message">open</span>';
			elseif($time<$row['opens'] && $time<$row['closes']) $status='<span class="message">open</span>';
			else $status='<span class="error">close</span>';
		}
		if($row['opens']<=12) $opens=$row['opens'].' AM'; else $opens=($row['opens']-12).' PM';
		if($row['closes']<=12) $closes=$row['closes'].' AM'; else $closes=($row['closes']-12).' PM';
		echo '<tr>
			<td align="center">'.$row['name'].'</td>
			<td align="center">'.$row['timezone'].'</td>
			<td align="center">'.$opens.'</td>
			<td align="center">'.$closes.'</td>
			<td align="center">'.date('ha:i F d Y').'</td>
			<td align="center">'.$status.'</td>
		</tr>';
	}
	date_default_timezone_set('Asia/Ho_Chi_Minh');
	?>
</table>