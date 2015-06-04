<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Học viên đăng ký</title>
<meta name="title" content="Học viên đăng ký" />
<meta name="robots" content="NOFOLLOW" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
<style>
body{color:#333; font-family:Arial, Helvetica, sans-serif}
table{font-size:14px}
td{border-bottom:solid 1px #FFF}
.thongtin{background-color:#FF8}
.label{width:140px; font-weight:bold}
</style>
</head>
<body>
<table width="550" border="0" cellpadding="10" cellspacing="0" align="center">
	<tr><td colspan="2" align="center">
    	<p style="color:#333; font-size:30px; font-weight:bold; margin-bottom:10px">Học viên đăng ký</p>
        <em>Ngày đăng ký: <b><?php echo date('H:i d/m/Y', $row['datetime']); ?></b></em>
    </td></tr>
    <tr class="thongtin">
    	<td class="label">Họ tên</td>
        <td><?php echo $row['name']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td class="label">Điện thoại</td>
        <td><?php echo $row['phone']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td class="label">Địa chỉ</td>
        <td><?php echo $row['address']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td class="label">Email</td>
        <td><?php echo $row['email']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td class="label">Khóa học</td>
        <td><?php echo $row['khoahoc']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td class="label">Nơi học</td>
        <td><?php echo $row['noihoc']; ?></td>
    </tr>
    <tr class="thongtin">
    	<td class="label">Lời nhắn</td>
        <td><?php echo $row['message']; ?></td>
    </tr>
</table>

</body>
</html>