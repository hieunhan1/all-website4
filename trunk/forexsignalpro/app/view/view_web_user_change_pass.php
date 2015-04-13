<div class="viewpost"><h1>Change Password</h1></div>
<table cellpadding="15" cellspacing="0" style="margin-left:100px">
    <tr><td colspan="2"><span id="ajaxError"></span></td></tr>
    <tr>
        <th align="right" width="150">Old password</th>
        <td><input type="password" name="oldPass" class="txtChangeAccount" /> <span id="oldPass" class="error"></span></td>
    </tr>
    <tr>
        <th align="right" width="100">New password</th>
        <td><input type="password" name="newPass" class="txtChangeAccount" /> <span id="newPass" class="error"></span></td>
    </tr>
    <tr>
        <th align="right" width="100">Confirm new password</th>
        <td><input type="password" name="confirmNewPass" class="txtChangeAccount" /> <span id="confirmNewPass" class="error"></span></td>
    </tr>
    <tr>
        <th align="right" width="100">&nbsp;</th>
        <td><input type="submit" name="submitChangePass" value="Continue" id="btnChangeAccount" />
        <a href="user/" style="font-weight:bold; padding:0 20px">&lt;&lt; Back</a></td>
    </tr>
</table>
<div class="clear_20px" style="margin-bottom:30px"></div>
<script type="text/javascript">
$(document).ready(function(e) {
	$("#btnChangeAccount").click(function(){
		var confirmPass = check_email_nl("input[name=newPass]","#confirmNewPass","Your passwords don't match", "input[name=confirmNewPass]");
		var newPass = check_text_length("input[name=newPass]","#newPass","New password must be 6 characters", 6);
		var oldPass = check_text_length("input[name=oldPass]","#oldPass","Old password must be 6 characters", 6);
		if(oldPass==false || newPass==false || confirmPass==false) return false;
		$.ajax({ 	
			url:"<?php echo CONS_BASE_URL;?>/ajax/",
			type:'post',
			data:{changePassword:1,oldPass:oldPass,newPass:newPass},
			cache:false,
			success: function(data){
				$("input[name=oldPass], input[name=newPass], input[name=confirmNewPass]").val("");
				$("#ajaxError").html(data);
				return true;
			}
		});
		
	});
});
</script>