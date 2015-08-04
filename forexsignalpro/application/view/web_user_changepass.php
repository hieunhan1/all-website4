<table cellpadding="15" cellspacing="0" style="margin-left:5%">
	<tr><td colspan="2"><h3 class="title_user">Change Password</h3></td></tr>
    <tr><td colspan="2"><span id="ajaxError"></span></td></tr>
    <tr>
        <th align="right">Old password</th>
        <td><input type="password" name="oldPass" class="txtChangeAccount" /> <span id="oldPass" class="error"></span></td>
    </tr>
    <tr>
        <th align="right">New password</th>
        <td><input type="password" name="newPass" class="txtChangeAccount" /> <span id="newPass" class="error"></span></td>
    </tr>
    <tr>
        <th align="right">Confirm new password</th>
        <td><input type="password" name="confirmNewPass" class="txtChangeAccount" /> <span id="confirmNewPass" class="error"></span></td>
    </tr>
    <tr>
        <th align="right">&nbsp;</th>
        <td><input type="submit" name="submitChangePass" value="Continue" id="btnChangeAccount" />
        <a href="user/" style="font-weight:bold; padding:0 20px">&lt;&lt; Back</a></td>
    </tr>
</table>
<script type="text/javascript">
$(document).ready(function(e) {
	$("#btnChangeAccount").click(function(){
		var confirmPass = check_email_nl("input[name=newPass]","#confirmNewPass","Your passwords don't match", "input[name=confirmNewPass]");
		var newPass = check_text_length("input[name=newPass]","#newPass","New password must be 6 characters", 6);
		var oldPass = check_text_length("input[name=oldPass]","#oldPass","Old password must be 6 characters", 6);
		if(oldPass==false || newPass==false || confirmPass==false) return false;
		$("input[name=oldPass]").attr("disabled", true);
		$("input[name=newPass]").attr("disabled", true);
		$("input[name=confirmNewPass]").attr("disabled", true);
		$.ajax({ 	
			url:"<?php echo CONS_BASE_URL;?>/ajax/",
			type:'post',
			data:{changePassword:1,oldPass:oldPass,newPass:newPass},
			cache:false,
			success: function(data){
				setTimeout(function(){
					$("input[name=oldPass], input[name=newPass], input[name=confirmNewPass]").val("");
					$("#ajaxError").html(data);
					$("input[name=oldPass]").attr("disabled", false);
					$("input[name=newPass]").attr("disabled", false);
					$("input[name=confirmNewPass]").attr("disabled", false);
					return true;
				}, 1000);
			}
		});
		
	});
});
</script>