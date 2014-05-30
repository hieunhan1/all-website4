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

//print_r($_SERVER);

$aryToUnshift = array("array unshift");
$ary_unshift = array_unshift($array1, $aryToUnshift);
var_dump($array1);//output:array(4) { [0]=> array(1) { [0]=> string(13) "array unshift" } ["Frist_name"]=> string(7) "a Thang" ["Last_name"]=> string(9) "b Han Van" [1]=> string(16) "c This is number"}


?>

</body>
</html>