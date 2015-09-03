<?
// $Id: payment.php,v 1.6 2006/07/31 14:11:41 asor Exp $

require_once('wm_config.php');
require_once('wm_include.php');
?>
<html>
<head>
<title>Payment</title>
</head>
<body>
<?
$email_is_wrong = FALSE;

if(isset($_POST['item']) && preg_match('/^\d+$/',$_POST['item']) == 1){

    if( isset($_POST['email']) &&  $_POST['email'] != ''){  # Check if the e-mail was stated ?
        $regexp = '/^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/';
        if ( preg_match($regexp, $_POST['email']) == 1 ) { # Check if the e-mail is correct
    	    $email = ', email="'.$_POST['email'].'"';
	} else { # Invalid e-mail
	    $email_is_wrong = TRUE;
	};
    } else { # invalid e-mail
	$email = '';    
    };
    
if( $email_is_wrong ){
    echo '<p><b>Error:</b> Invalid E-mail: <b>'. htmlentities($_POST['email']).'</b><br />'.
         'Return to the previous page and enter correct e-mail address or leave the field empty!</p>';
} else { # e-mail is correct
    /* Connect and choose database */
    $link = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)
            or die("Could not connect : " . mysql_error());
    mysql_select_db($DB_DBASE) or die("Could not select database");
    $query = "SELECT id, description, price, unit FROM items WHERE id='".$_POST['item']."' AND state='Y' ".
	     "AND ((reserved IS NULL) OR (reserved + INTERVAL 2 MINUTE < NOW()));";
    $result = mysql_query($query) or die("Query failed : " . mysql_error());
    $rows = mysql_num_rows($result);
    if ( $rows == 1 ) {
	$item = mysql_fetch_array($result);
	mysql_free_result($result);
	# Generate random ticket
	$rnd = strtoupper(substr(md5(uniqid(microtime(), 1)).getmypid(),1,8));
	# Create payment initiation record in the database
	$query = 'INSERT INTO payment SET item="'.$item['id'].'", state="I", RND="'.$rnd.'", timestamp=CURRENT_TIMESTAMP()'.$email.';';
	$result = mysql_query($query) or die("Query failed : " . mysql_error());
        echo '<form id=pay name=pay method="POST" action="https://merchant.webmoney.ru/lmi/payment.asp">'."\n";
	echo '<p><b>Example pay by WM Merchant Service.</b></p>'."\n";
        echo '<p>Now you pay '.$item['price'].' '.$item['unit'].' for "'.$item['description'].'" on WebMoney site.</p>'."\n";
	if($email){
    	    echo '<p>Access URL for this item will be sent to e-mail: "'.$_POST['email'].'".</p>'."\n";
	};
	echo '<input type="hidden" name="LMI_PAYMENT_AMOUNT" value="'.$item['price'].'">'."\n";
	echo '<input type="hidden" name="LMI_PAYMENT_DESC" value="'.$item['description'].'">'."\n";
	echo '<input type="hidden" name="LMI_PAYMENT_NO" value="'.mysql_insert_id().'">'."\n";
	if($item['unit']=='WMR' || $item['unit']=='WMZ'){
	    echo '<input type="hidden" name="LMI_PAYEE_PURSE" value="'.${'WM_SHOP_PURSE_'.$item['unit']}.'">'."\n";;
	}
	echo '<input type="hidden" name="LMI_SIM_MODE" value="'.$LMI_SIM_MODE.'">'."\n";
	echo '<input type="hidden" name="RND" value="'.$rnd.'">'."\n";	
        echo '<p><input type="submit" value="Submit" /></p>'."\n";
        echo '</form>'."\n";
    } else {
        echo '<p3>Sorry! This item is out of stock!</p3>'."\n";
    }
} # end e-mail correct
} else {
    echo '<p><b>Sorry! You didn\'t select any items!</b></p>'."\n";
};
?>
</body>
</html>
