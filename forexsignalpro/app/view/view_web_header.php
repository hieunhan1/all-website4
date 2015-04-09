<header>
    <div id="logo"><a href="/"><img src="themes/website/img/logo.jpg" alt="Logo ForexSignalPro" /><h2>ForexSignalPro.Net</h2></a></div>
    <?php
    if(!isset($_SESSION['user_id'])){
		echo '<div id="login"><a href="login/" title="Forex Login" class="bogoc_bottom_5px">Login</a></div>
    	<div id="signup"><a href="signup/" title="Forex Sign Up">Signup</a></div>';
	}else{
		echo '<div id="login"><a href="user/?action=logout" title="Logout" class="bogoc_bottom_5px">Logout</a></div>
    	<div id="signup"><a href="user/" title="Change your account information">'.$_SESSION['user_name'].'</a></div>';
	}
	?>
    
    <div id="email_support">Email support: <?php echo '<a href="mailto:'.$this->_config['email'].'">'.$this->_config['email'].'</a>';?></div>
</header>