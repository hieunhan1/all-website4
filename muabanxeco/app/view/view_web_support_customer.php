<?php if(!isset($_SESSION['keychat'])){?>
<div id="error" class="error"></div>
<div id="info_customer" style="display:block">
	<p class="p-chat">Vui lòng điền thông tin bên dưới để chúng tôi tư vấn cho bạn!<p>
	<div id="name_chat">
		<input type="text" name="name_chat" class="txt" placeholder="Nhập họ tên" />
        <div class="error"></div>
	</div>
	<div id="phone_chat">
		<input type="text" name="phone_chat" class="txt" placeholder="Nhập số điện thoại" />
        <div class="error"></div>
	</div>
	<input type="button" name="btnCustomer" value="Gửi" class="btn" /><br />
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	$("input[name=btnCustomer]").click(function(){
		var phone = check_phone("input[name=phone_chat]", "#phone_chat .error", "Vui lòng nhập điện thoại");
		var name = check_text_length("input[name=name_chat]", "#name_chat .error", "Vui lòng nhập họ tên", 2);
		if(name==false || phone==false) return false;
		
		$.ajax({
			url:"<?php echo CONS_BASE_URL;?>/ajax/",
			type:"post",
			data:{getCustomer:1,name:name,phone:phone},
			cache:false,
			success: function(data){
				if(data=='1' || data=='2'){
					$("#info_customer").hide();
					$("#frm_chat").show();
					window.location = "";
				}else{
					$("#error").html(data);
				}
				return true;
			}
		});
	});
});
</script>
<?php } else { ?>
<div id="frmChat">
	<div id="state" style="display:none"></div>
	<p class="p-chat">Bạn có thắc mắc? Hãy chat với chúng tôi!<p>
	<div id="chat-wrap"><div id="chat-area"></div></div>
	<form id="send-message-area">
		<textarea id="sendie" maxlength="300" class="textarea font" placeholder="nhập nội dung và nhấn ENTER để gửi..."></textarea>
	</form>
</div>
<script type="text/javascript" src="js/js_chat.js"></script>
<script type="text/javascript">
setInterval(function(){ chat.update(); }, 3000);
//var name = prompt("Enter your chat name:", "Guest");
var name = "<?php if(isset($_SESSION['nickname'])) echo $_SESSION['nickname']; ?>"
if (!name || name === ' ') { name = "Guest"; }
// strip tags
name = name.replace(/(<([^>]+)>)/ig,"");
// display name on page
//$("#name-area").html("You are: <span>" + name + "</span>");

// kick off chat
var chat =  new Chat();
$(function() {
	chat.getState(); 
	// watch textarea for key presses
	$("#sendie").keydown(function(event) {  
		var key = event.which;  
   
		//all keys including return.  
		if (key >= 33) {
			var maxLength = $(this).attr("maxlength");  
			var length = this.value.length;  
		
			// don't allow new content if length is maxed out
			if (length >= maxLength) {  
				event.preventDefault();  
			}  
		}
	});
	// watch textarea for release of key press
	$('#sendie').keyup(function(e) {	
		if (e.keyCode == 13) {
			var text = $.trim($(this).val());
			var maxLength = $(this).attr("maxlength");  
			var length = text.length; 
	
			// send 
			if (length<=maxLength + 1 && text!='') {
				chat.send(text, name);	
				$(this).val("");
			} else {
				$(this).val(text.substring(0, maxLength));
			}
		}
	});
});
</script>
<?php } ?>