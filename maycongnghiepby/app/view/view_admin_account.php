<form action="" method="post" name="thongtin">
<table width="400" border="0" cellpadding="5" cellspacing="0" style="margin:30px 0 330px 50px">
	<tr>
    	<td colspan="2" align="left"><?php echo $message_error; ?>&nbsp;</td>
    </tr>
    <tr>
    	<th width="126" align="right">Mật khẩu cũ:</th>
    	<td><input type="password" name="password" value="" class="input_large" /></td>
    </tr>
	<tr>
    	<th align="right">Mật khẩu mới:</th>
    	<td><input type="password" name="password_new" value="" class="input_large" /></td>
    </tr>
	<tr>
    	<th align="right">Mật khẩu nhắc lại:</th>
    	<td><input type="password" name="password_repeat" value="" class="input_large" /></td>
    </tr>
	<tr>
    	<th>&nbsp;</th>
    	<td><input type="submit" name="btnSubmit" value="Đổi mật khẩu" class="submit" /></td>
    </tr>
</table>
</form>