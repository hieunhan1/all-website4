<div id="quick_booking" class="all_icon_bg bogoc_5px">
	<?php
    if($this->_action==CONS_WEB_VIEW_DETAIL) $view_quick_booking = array('<i>(click here)</i>','style="display:none"');
	?>
	<div class="titleQuickBooking">Quick booking <?php echo $view_quick_booking[0];?></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" id="frm_QuickBooking" <?php echo $view_quick_booking[1];?>>
      <tr>
        <td valign="top" width="60">Name</td>
        <td><input type="text" name="name" class="txtQuickBooking bogoc_5px" /></td>
      </tr>
      <tr>
        <td valign="top">Address</td>
        <td><input type="text" name="address" class="txtQuickBooking bogoc_5px" /></td>
      </tr>
      <tr>
        <td valign="top">Phone</td>
        <td><input type="text" name="phone" class="txtQuickBooking bogoc_5px" /></td>
      </tr>
      <tr>
        <td valign="top">Message</td>
        <td><textarea name="message" class="txtareaQuickBooking bogoc_5px"></textarea></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="button" name="btnQuickBooking" value="Send" class="btnQuickBooking bogoc_5px all_icon_bg" /></td>
      </tr>
    </table>
</div>

<div id="call" class="all_icon_bg bogoc_5px"></div>
<script type="text/javascript">
	$(document).ready(function(e) {
        $(".titleQuickBooking").click(function(){
			$("#frm_QuickBooking").toggle(200);
		});
    });
</script>