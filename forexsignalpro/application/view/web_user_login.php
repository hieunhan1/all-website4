<div class="viewpost"><h1 style="text-align:center"><?php echo $currentMenu['title'];?></h1></div>
<div id="frmLogin">
    <span id="ajax_error" class="error"></span>
    <div id="loginEmail">
        <p class="label">Email:</p>
        <input type="text" name="loginEmail" class="txt" value="" />
        <p class="error"></p>
    </div>
    <div id="loginPass">
        <p class="label">Password:</p>
        <input type="password" name="loginPass" class="txt" value="" />
        <p class="error"></p>
    </div>
    <div id="loginBtn"><input type="button" name="loginBtn" value="LOGIN" class="btn" /></div>
    <div style="text-align:right; margin-top:10px"><a href="user/reset/">I can't access my account</a></div>
</div>
<div class="clear20"></div>
<script type="text/javascript">
$(document).ready(function(e) {
	function loginForex(){
		var password = check_text_length("input[name=loginPass]","#loginPass .error","The password must be 6 characters",6);
        var email = check_email("input[name=loginEmail]","#loginEmail .error","<?php echo CONS_ERROR_EMAIL;?>");
        if(email==false || password==false) return false;
        $("input[name=loginBtn], input[name=loginEmail], input[name=loginPass]").attr("disabled", true);
        $("input[name=loginBtn]").addClass("disable");
        $.ajax({ 	
            url:"<?php echo CONS_BASE_URL;?>/ajax/",
            type:'post',
            data:{login:1, email:email, password:password},
            cache:false,
            success: function(data){
                setTimeout(function(){
                    if(data=="1") window.location = '<?php echo CONS_BASE_URL;?>/user/';
                    else{
						$("#ajax_error").html(data);
                    	$("input[name=loginBtn], input[name=loginEmail], input[name=loginPass]").attr("disabled", false);
                    	$("input[name=loginBtn]").removeClass("disable");
					}
                }, 1000);
                return true;
            }
        });
        return true;
	}
    $("input[name=loginBtn]").click(function(){
        loginForex();
    });
	$(".txt").keydown(function(e){
		if(e.keyCode==13) loginForex();
	});
});
</script>