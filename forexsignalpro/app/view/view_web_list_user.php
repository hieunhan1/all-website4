<div class="container">
    <div class="clear_20px" style="margin-bottom:20px"></div>
    <?php
    if(!isset($_SESSION['user_id']) && $this->_control!='user'){
        include_once('view_web_user_login.php');
    } elseif(!isset($_SESSION['user_id']) && $this->_control=='user') {
        header('location: '.CONS_BASE_URL.'/login/');
    }else{
        $id_u = $_SESSION['user_id'];
        $email_u = $_SESSION['user_email'];
        $data = $this->_model->_view_infomation_user($id_u, $email_u);
        if(count($data)!=1){
            session_destroy();
            return false;
        };
        
        echo '<div id="welcome">Welcome, '.$_SESSION['user_name'].'.</div>
        <div id="change_account">
            <a href="user/?action=account">Change your account information</a>
            <a href="user/?action=changepass">Change password</a>
        </div>
        <div class="clear_1px"></div>';
        
        $action = $this->_model->_change_dau_nhay($_GET['action']);
        switch($action){
            case '' : include_once('view_web_user_info.php'); break;
            case 'account' : include_once('view_web_user_account.php'); break;
            case 'changepass' : include_once('view_web_user_change_pass.php'); break;
            case 'logout' : $this->logout_user(); break;
            case 'realTime' : 
                echo '<div id="ajax_forex" style="height:auto">';
                include_once('view_web_user_forex_realtime.php');
                echo '</div>';
                break;
            case 'trend' :
                echo '<div id="ajax_forex" style="height:auto">';
                include_once('view_web_user_forex_trend.php');
                echo '</div>';
                break;
            case 'support' :
                echo '<div id="ajax_forex" style="height:auto">';
                include_once('view_web_user_forex_support.php');
                echo '</div>';
                break;
        }
    }
    ?>
</div>