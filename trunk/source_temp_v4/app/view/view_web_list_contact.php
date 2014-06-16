<hr />
<div id="contact">
    <table width="95%" border="0" cellspacing="20" cellpadding="0" style="margin-left:30px; font-size:110%">
      <tr>
        <td colspan="4"><p style="font-size:180%; color:#F00"><?php echo CONS_CONTACT_INFO;?></p></td>
      </tr>
      <tr>
        <td width="100"><?php echo CONS_CONTACT_NAME;?>:</td>
        <td><input type="text" name="name" class="txt" maxlength="50" /></td>
        <td width="100" align="right">Email:</td>
        <td><input type="text" name="email" class="txt" maxlength="60" /></td>
      </tr>
      <tr>
        <td><?php echo CONS_CONTACT_PHONE;?>:</td>
        <td><input type="text" name="phone" class="txt" maxlength="11" /></td>
        <td align="right"><?php echo CONS_CONTACT_ADDRESS;?>:</td>
        <td><input type="text" name="diachi" class="txt" maxlength="250" /></td>
      </tr>
      <tr>
        <td valign="top"><?php echo CONS_CONTACT_MESSAGE;?>:</td>
        <td colspan="3"><textarea name="message" class="textarea"></textarea></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="button" name="btnSend" class="btn" value="<?php echo CONS_CONTACT_SEND;?>" /></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
</div>