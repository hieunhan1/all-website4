<div class="viewpost"><h1 style="text-align:center">Reset password email: <?php echo $email;?></h1></div>
<div id="frmLogin">
    <div id="ajax_error" style="margin-bottom:10px"></div>
    
    <div id="newPass">
        <p class="label">New password:</p>
        <input type="password" name="newPass" class="txt" value="" />
        <p class="error"></p>
    </div>
    <div id="confirmNewPass">
        <p class="label">Confirm new password:</p>
        <input type="password" name="confirmNewPass" class="txt" value="" />
        <p class="error"></p>
    </div>
    
    <div id="loginBtn"><input type="button" name="btnReset" value="UPDATE" class="btn" /></div>
</div>
<div class="clear20"></div>
<script type="text/javascript">
$(document).ready(function(e) {
	function updatePassForex(){
		var confirmPass = check_email_nl("input[name=newPass]","#confirmNewPass .error","Your passwords don't match", "input[name=confirmNewPass]");
		var newPass = check_text_length("input[name=newPass]","#newPass .error","New password must be 6 characters", 6);
		if(newPass==false || confirmPass==false) return false;
        $("input[name=newPass], input[name=confirmNewPass]").attr("disabled", true);
        $("input[name=btnReset]").addClass("disable");
        $.ajax({ 	
            url:"<?php echo CONS_BASE_URL;?>/ajax/",
            type:'post',
            data:{updateResetPass:1, email:"<?php echo $email;?>", key:"<?php echo $key;?>", pass:newPass},
            cache:false,
            success: function(data){
                setTimeout(function(){
					$("#frmLogin").html(data);
                }, 2000);
                return true;
            }
        });
        return true;
	}
    $("input[name=btnReset]").click(function(){
        updatePassForex();
    });
	$(".txt").keydown(function(e){
		if(e.keyCode==13) updatePassForex();
	});
});
</script>