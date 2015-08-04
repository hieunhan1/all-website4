<div class="container">
	<?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
    <?php
	if(!isset($_GET['id'])){
	?>
    <div class="viewpost">
        <h1><?php echo $currentMenu['title'];?></h1>
    </div>
    <table width="100%" border="1" cellpadding="8" cellspacing="0" class="signup">
        <tr>
            <th align="left">&nbsp;</th>
            <th><span class="bogoc_5px">1 month</span></th>
            <th><span class="bogoc_5px">3 months</span></th>
            <th><span class="bogoc_5px">12 months</span></th>
        </tr>
        <?php
        $data = $c->_model->_listMenu($lang, $currentMenu['id']);
        foreach($data as $row){
            echo '<tr class="line"><td colspan="4">'.$row['name'].'</td></tr>';
            $data2 = $c->_model->_listMenu($lang, $row['id']);
            foreach($data2 as $row2){
                echo '<tr class="line-2"><td>'.$row2['name'].'</td>
                    <td align="center"><img src="themes/website/img/select.png" width="20px" alt="select" /></td>
                    <td align="center"><img src="themes/website/img/select.png" width="20px" alt="select" /></td>
                    <td align="center"><img src="themes/website/img/select.png" width="20px" alt="select" /></td>
                </tr>';
            }
        }
        ?>
        <tr class="line">
            <td colspan="4">Pricing</td>
        </tr>
        <?php
        $data = $c->_model->_listUsersPackage($lang);
		$i=0;
		$price='';
		$priceTrial='';
		foreach($data as $row){
			$i++;
			if($i!=1){
				$price.='<td align="center">
					<span class="price">$'.$row['price'].'</span>
					<a href="signup/?id='.$row['id'].'" class="signup-now bogoc_5px">SIGNUP NOW!</a>
				</td>';
			}else{
				$priceTrial.='<td align="center" colspan="3">
					<span class="price">$'.$row['price'].'</span>
                    <a href="signup/?id='.$row['id'].'" class="signup-now bogoc_5px">Signup Trial</a>
                </td>';
			}
		}
		?>
        <tr class="line-2">
            <td style="color:#00F; font-weight:bold">&nbsp;</td>
            <?php echo $price;?>
        </tr>
        <tr class="line-2">
            <td style="color:#F00; font-weight:bold">SPECIAL OFFER: 10 Day Trial Membership – Try Us Today!</td>
            <?php echo $priceTrial;?>
        </tr>
    </table>
    <div class="clear20"></div>
    <div class="clear20"></div>
    <div class="viewpost">
        <img src="themes/website/img/guaranteed-img.png" alt="SATISFACTION" style="float:left; margin-right:35px" />
        <p>&nbsp;</p>
        <p style="color:#C00; font-weight:bold; font-size:150%">ForexSignalPro.Net 100% SATISFACTION!</p>
        <p>As forex traders ourselves, we understand that you want to be 100% satisfied. That’s why our subscribers are not obligated to sign any long term commitments</p>
        <p style="font-weight:bold">Monthly subscriptions can be cancelled at anytime if you are not satisfied.</p>
    </div>
    <div class="clear20"></div>
	<div class="clear20"></div>
    <?php
	}else{
		include_once('web_signup_detail.php');
	}
	?>
</div>