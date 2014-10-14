<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Thông tin liên hệ</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="icon/x-icon" href="images/logo_icon.ico" rel="shortcut icon" />
<style>
	table{line-height:22px; margin-top:30px}
	td, th{border-bottom:solid 1px #CCC}
	.thongtin{background-color:#FFC}
</style>
</head>
<body>
<table width="500" border="0" cellpadding="10" cellspacing="0" align="center">
	<tr><td colspan="2" align="center">
    	<p style="color:#333; font-size:30px; font-weight:bold; margin-bottom:20px">Liên hệ trực tuyến WEBSITE</p>
        <p><em>Ngày liên hệ: <b><?php echo date('d/m/Y H:i', strtotime($row['date_create']));?></b></em></p>
    	<!--Nhân viên tiếp nhận: <span style="color:#00F; font-weight:bold"></span>-->
    </td></tr>
    <tr class="thongtin">
    	<th width="140" align="left">Họ tên</th>
        <td><?php echo $row['name'];?></td>
    </tr>
    <tr class="thongtin">
    	<th width="100" align="left">Điện thoại</th>
        <td><?php echo $row['phone'];?></td>
    </tr>
    <tr class="thongtin">
    	<th width="100" align="left">Địa chỉ</th>
        <td><?php echo $row['address'];?></td>
    </tr>
    <tr class="thongtin">
    	<th width="100" align="left">Email</th>
        <td><?php echo $row['email'];?></td>
    </tr>
    <tr>
    	<th width="100" valign="top" align="left">Thông tin liên hệ</th>
        <td><?php echo $row['message'];?></td>
    </tr>
</table>

</body>
</html>