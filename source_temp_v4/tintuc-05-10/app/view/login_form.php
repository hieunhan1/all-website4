<form name="form1" method="post" action="<?=BASE_DIR?>user/login/">
  <h4>{DangNhap}</h4>
  <p>{UserName} <br> <input type="text" name="u" id="u"> </p>
  <p>{Password} <br> <input type="password" name="p" id="p"> </p>
  <p> <input type="checkbox" name="nho" id="nho"> {Remember}</p>
  <p> <input type="submit" name="btndn" id="btndn" value="Đăng nhập"> </p>
</form>
<p> <a href="user/dangky/">{Register}</a> &nbsp; 
    <a href="user/quenpass/">{ForgotPassword}</a> 
</p>
