<html>
<?
// $Id: success.php,v 1.6 2006/07/31 14:11:41 asor Exp $

require_once('wm_config.php');
require_once('wm_include.php');

        # Connect, choose database
        $link = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)
        or die("Could not connect : " . mysql_error());
        mysql_select_db($DB_DBASE) or die("Could not select database");

if(isset($_POST['LMI_PAYMENT_NO']) && preg_match('/^\d+$/',$_POST['LMI_PAYMENT_NO']) == 1){ # Payment ref. number
        # select payment with ref. number
        $query = "SELECT id, item, state, LMI_SYS_INVS_NO, LMI_SYS_TRANS_NO, LMI_SYS_TRANS_DATE, RND ".
	"FROM payment WHERE id ='".$_POST['LMI_PAYMENT_NO']."' AND state='S' ";
        $result = mysql_query($query) or die("Query failed : " . mysql_error());
        $rows = mysql_num_rows($result);
        if ( $rows == 1 ) { # If payment is found, and actually paid
            $pay = mysql_fetch_array($result);
            mysql_free_result($result);
    	    if(    $_POST['LMI_SYS_INVS_NO'] == $pay['LMI_SYS_INVS_NO']
		&& $_POST['LMI_SYS_TRANS_NO'] == $pay['LMI_SYS_TRANS_NO']
		&& $_POST['LMI_SYS_TRANS_DATE'] == $pay['LMI_SYS_TRANS_DATE']
		&& $_POST['RND'] == $pay['RND'] ) {
		    # select item 
		    $query = "SELECT * FROM items WHERE id='".$pay['item']."' AND state='N';";
		    $result = mysql_query($query) or die("Query failed : " . mysql_error());
		    $rows = mysql_num_rows($result);
		    if ( $rows == 1 ) { # item found
			$item = mysql_fetch_array($result);
			mysql_free_result($result);
			# update state to "delivered" to customer
			$query = "UPDATE payment SET state='G', timestamp=CURRENT_TIMESTAMP() WHERE id='".$pay['id']."';";
			$result = mysql_query($query) or die("Query failed : " . mysql_error());
			if(mysql_affected_rows() != 1){ die("Payment table UPDATE failed!");};
		    };
		}
	}
?>
<head>
<title>Success</title>
</head>
<body>
<p><strong>Success pay!</strong></p>
<p>Your good:<br />
<b>Description:</b> <? echo $item['description'] ?><br />
<b>Good:</b> <? echo $item['content'] ?></p>
<?
} else {
?>
<head>
<title>Failed!</title>
</head>
<body>
<p><strong>Error payment check!</strong></p>
<?
}
?>
<p><a href="index.php">Go to begin</a></p>
</body>
</html>
