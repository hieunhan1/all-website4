<div class="viewpost"><h1 style="text-align:center">Reset password</h1></div>
<div id="frmLogin">
    <div id="ajax_error" style="margin-bottom:10px"></div>
    <div id="loginEmail">
        <p class="label">Email login:</p>
        <input type="text" name="loginEmail" class="txt" value="" />
        <p class="error"></p>
    </div>
    <div id="loginBtn"><input type="button" name="btnReset" value="RESET" class="btn" /></div>
</div>
<div class="clear20"></div>
<script type="text/javascript">
$(document).ready(function(e) {
	function resetPassForex(){
        var email = check_email("input[name=loginEmail]","#loginEmail .error","<?php echo CONS_ERROR_EMAIL;?>");
        if(email==false) return false;
        $("input[name=btnReset], input[name=loginEmail]").attr("disabled", true);
        $("input[name=btnReset]").addClass("disable");
        $.ajax({ 	
            url:"<?php echo CONS_BASE_URL;?>/ajax/",
            type:'post',
            data:{resetPass:1, email:email},
            cache:false,
            success: function(data){
                setTimeout(function(){
					$("#ajax_error").html(data);
					$("input[name=btnReset], input[name=loginEmail]").attr("disabled", false);
					$("input[name=btnReset]").removeClass("disable");
                }, 2000);
                return true;
            }
        });
        return true;
	}
    $("input[name=btnReset]").click(function(){
        resetPassForex();
    });
	$(".txt").keydown(function(e){
		if(e.keyCode==13) resetPassForex();
	});
});
</script>