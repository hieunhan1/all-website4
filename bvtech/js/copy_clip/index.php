<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script type="text/javascript" src="../jquery.min.js"></script>
<script type="text/javascript" src="jquery.zclip.js"></script>
</head>

<body>

<h4>Clipboard test - JavaScript</h4>
 
  <a href="javascript:;" id="copy-link-wrap">
    <input name="toclip" id="toclip" type="text"
      value="Test data to copy ..." style="width: 320px">
    <br />
    <p id="copy-link" style="cursor: hand">Copy to clipboard</p>
  </a>
  
<script>
$(document).ready(function() {
  $("#copy-link-wrap").zclip({
    path: 'ZeroClipboard.swf',
    copy: $('#toclip').val(),
    afterCopy: function() {
      // console.log('copied');
      alert('Data in clipboard! Now you can paste it somewhere');
    }
  });
});
</script>

</body>
</html>