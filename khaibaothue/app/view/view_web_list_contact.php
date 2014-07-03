<div id="navigator">
<?php
$i=0;
$data = $this->navigator($idMenu,$lang);
foreach($data as $row){
	$i++;
	if($i!=1) $icon='<span>&gt;&gt;</span>'; else $icon='';
	echo $icon.'<a href="'.$row['url'].'">'.$row['name'].'</a>';
}
?>
</div>

<div class="viewpost">
	<?php
    echo "<h1>{$row_config['name']}</h1>";
	echo $row_config['contact_foo'].'<div style="clear:both; height:1px"></div><hr /><div style="clear:both; height:1px"></div>';
	
	//echo '<h2 style="color:#00F">'.$row_menu_one['metaDescription'].'</h2>';
    ?>
</div>

<div id="contact">
    <table width="88%" border="0" cellspacing="20" cellpadding="0" style="margin:auto">
      <tr>
        <td colspan="4"><p style="font-size:160%"><?php echo CONS_CONTACT_INFO;?></p></td>
      </tr>
      <tr>
        <td width="100"><?php echo CONS_CONTACT_NAME;?>:</td>
        <td><input type="text" name="name" class="contact_txt" maxlength="50" /></td>
        <td width="100" align="right">Email:</td>
        <td><input type="text" name="email" class="contact_txt" maxlength="60" /></td>
      </tr>
      <tr>
        <td><?php echo CONS_CONTACT_PHONE;?>:</td>
        <td><input type="text" name="phone" class="contact_txt" maxlength="11" /></td>
        <td align="right"><?php echo CONS_CONTACT_ADDRESS;?>:</td>
        <td><input type="text" name="diachi" class="contact_txt" maxlength="250" /></td>
      </tr>
      <tr>
        <td valign="top"><?php echo CONS_CONTACT_MESSAGE;?>:</td>
        <td colspan="3"><textarea name="message" class="contact_textarea"></textarea></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="button" name="btnSend" class="contact_btn" value="<?php echo CONS_CONTACT_SEND;?>" /></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
</div>