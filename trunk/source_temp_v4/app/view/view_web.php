<html>
<head>
<title>JS and RegEx</title>
<script type="text/javascript">
function ValidateInput(evt){
	var valRegExp = new RegExp("^[a-zA-Z0-9]");
	if (valRegExp.test(String.fromCharCode(evt.which))){
		alert(1);
		return true;
	}else{
		alert(0);
		return false;
	}
}
</script>
</head>
<body>
<form method="post" name="form">
<label for="txtUsername"> Username </label>
<input type="text" id="txtUsername" placeholder="Enter Username" onKeyPress="return ValidateInput(event)"/>

</form>

<?php
$id = 'aaaa';
if(is_numeric($id)) echo 'số'; else echo 'chữ';

print_r($_SERVER);

?>

</body>
</html>