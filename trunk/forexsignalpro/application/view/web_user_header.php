<header class="container">
    <div id="logo"><a href="/"><img src="themes/website/img/logo.jpg" alt="Logo ForexSignalPro" /><h2>ForexSignalPro.Net</h2></a></div>
    <div id="login"><a href="user/?ac=logout" title="Logout" class="bogoc_bottom_5px">Logout</a></div>
    <div id="email_support">Email support: <?php echo '<a href="mailto:'.$config['email'].'">'.$config['email'].'</a>';?></div>
</header>

<div id="menu" class="container">
    <ul id="nav">
    	<li><a href="user/" class="borderR">Private (<?php echo $_SESSION['userName'];?>)</a></li>
    	<li><a href="user/?ac=realtime" class="borderLR">Real time Orders</a></li>
    	<li><a href="user/?ac=trend" class="borderLR">Trend</a></li>
    	<li><a href="user/?ac=support" class="borderLR">Support and Resistance Points</a></li>
    </ul>
</div>