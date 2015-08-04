<table cellpadding="15" cellspacing="0" style="margin-left:5%">
	<tr>
        <th align="right">Date of registration</th>
        <td><?php echo $c->_model->_viewDate($user['datetime']);?></td>
    </tr>
    <tr>
        <th align="right">Account expires</th>
        <td><?php if($user['date_expiration'] > time()) echo $c->_model->_viewDate($user['date_expiration']);
		else echo '<b class="error">'.$c->_model->_viewDate($user['date_expiration']).'</b> vui lòng gia hạn <a href="signup/">tại đây</a>';?></td>
    </tr>
</table>
<div class="clear30"></div>