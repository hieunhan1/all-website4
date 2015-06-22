<?php include_once('view_web_navigator.php');?>
<div class="viewpost">
	<h1><?php echo $current_menu['title'];?></h1>
    <h2 style="color:#666"><?php echo $current_menu['description'];?></h2>
</div>
<table width="100%" border="1" cellpadding="8" cellspacing="0" class="signup">
    <tr>
        <th align="left" style="font-size:230%">&nbsp;</th>
        <th width="150px"><span class="bogoc_5px">1 month</span></th>
        <th width="150px"><span class="bogoc_5px">3 month</span></th>
        <th width="150px"><span class="bogoc_5px">12 month</span></th>
    </tr>
    <?php
	$i=0;
    $price='';
    $price_trial='';
    $package=array();
    $data = $this->_model->_users_package();
    foreach($data as $row){
		$i++;
		$package[$row['id']] = $row['menu_id'];
		if($i!=1){
			$price .= '<td align="center">
				<span class="price">$'.$row['price'].'</span>
				<a href="signup/'.$row['id'].'.html" class="signup-now bogoc_5px">SIGNUP NOW!</a>
			</td>';
		}else{
			$price_trial = '<td align="center" colspan="3">
				<span class="price">$'.$row['price'].' </span>
				<a href="signup/'.$row['id'].'.html">Signup Trial</a>
			</td>';
		}
    }
    
    $data = $this->_model->_list_menu_parent($current_menu['id']);
    foreach($data as $row){
        echo '<tr class="line"><td colspan="4">'.$row['name'].'</td></tr>';
        $data2 = $this->_model->_list_menu_parent($row['id']);
        foreach($data2 as $row2){
            $str = ','.$row2['id'].',';
            if(preg_match($str, $package[1])) $standard='<img src="themes/website/img/select.png" width="20px" alt="select" />'; else $standard='&nbsp;';
            if(preg_match($str, $package[2])) $pro='<img src="themes/website/img/select.png" width="20px" alt="select" />'; else $pro='&nbsp;';
            if(preg_match($str, $package[3])) $ultimate='<img src="themes/website/img/select.png" width="20px" alt="select" />'; else $ultimate='&nbsp;';
            echo '<tr class="line-2">
                <td>'.$row2['name'].'</td>
                <td align="center">'.$standard.'</td>
                <td align="center">'.$pro.'</td>
                <td align="center">'.$ultimate.'</td>
            </tr>';
        }
    }
    ?>
    <tr class="line">
        <td colspan="4">Pricing</td>
    </tr>
    <tr class="line-2">
        <td style="color:#00F; font-weight:bold">&nbsp;</td>
        <?php echo $price;?>
    </tr>
    <tr class="line-2">
        <td style="color:#F00; font-weight:bold">SPECIAL OFFER: 10 Day Trial Membership – Try Us Today!</td>
        <?php echo $price_trial;?>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <?php echo $link;?>
    </tr>
</table>
<div class="clear_20px"></div>
<div class="clear_20px"></div>
<div class="viewpost">
    <img src="themes/website/img/guaranteed-img.png" alt="SATISFACTION" style="float:left; margin-right:35px" />
    <p>&nbsp;</p>
    <p style="color:#C00; font-weight:bold; font-size:150%">ForexSignalPro.Net 100% SATISFACTION!</p>
    <p>As forex traders ourselves, we understand that you want to be 100% satisfied. That’s why our subscribers are not obligated to sign any long term commitments</p>
    <p style="font-weight:bold">Monthly subscriptions can be cancelled at anytime if you are not satisfied.</p>
</div>
<div class="clear_20px"></div>
<div class="clear_20px"></div>