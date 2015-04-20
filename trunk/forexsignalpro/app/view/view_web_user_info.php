<table cellpadding="15" cellspacing="0" style="margin-left:100px">
	<tr>
        <th align="right">Date of registration</th>
        <td><?php echo $this->_model->_view_date_time($data[0]['datetime']);?></td>
    </tr>
    <tr>
        <th align="right">Account expires</th>
        <td><?php echo $this->_model->_view_date_time($data[0]['expiration']);?></td>
    </tr>
</table>

<div style="clear:both; margin-bottom:80px"></div>