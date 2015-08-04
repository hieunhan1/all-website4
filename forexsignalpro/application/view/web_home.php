<?php
$type=7;
$data_home = $c->_model->_selectMenuType($type, $lang);
?>
<div id="homepage" class="container">
	<div class="clear20"></div>
	<table width="100%" border="1" cellpadding="8" cellspacing="0" class="signup">
        <tr>
            <th align="left">&nbsp;</th>
            <th><span class="bogoc_5px">1 month</span></th>
            <th><span class="bogoc_5px">3 months</span></th>
            <th><span class="bogoc_5px">12 months</span></th>
        </tr>
        <?php
        $data = $c->_model->_listMenu($lang, $data_home['id']);
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
	<div class="clear30" style="margin-bottom:20px"></div>
    
    <div id="timezone"><?php include_once('view/web_timezone.php');?></div>
    
    <div class="clear30" style="margin-bottom:20px"></div>
</div>