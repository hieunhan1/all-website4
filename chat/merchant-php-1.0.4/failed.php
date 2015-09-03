<html>
<?
// $Id: failed.php,v 1.2 2006/07/31 14:11:41 asor Exp $

require_once('wm_config.php');
require_once('wm_include.php');

if(isset($_POST['LMI_PAYMENT_NO']) && preg_match('/^\d+$/',$_POST['LMI_PAYMENT_NO']) == 1){ # payment internal number
        # Connect , select database
        $link = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)
        or die("Could not connect : " . mysql_error());
        mysql_select_db($DB_DBASE) or die("Could not select database");
        # select payment
        $query = "SELECT id, RND ".
	"FROM payment WHERE id ='".$_POST['LMI_PAYMENT_NO']."'";
        $result = mysql_query($query) or die("Query failed : " . mysql_error());
        $rows = mysql_num_rows($result);
        if ( $rows == 1 ) { # if payment exists
            $pay = mysql_fetch_array($result);
            mysql_free_result($result);
    	    if( $_POST['RND'] == $pay['RND'] ) {
	    # update with status "failed"
	    $query = "UPDATE payment SET state='F', timestamp=CURRENT_TIMESTAMP() WHERE id='".$pay['id']."';";
	    $result = mysql_query($query) or die("Query failed : " . mysql_error());
		if(mysql_affected_rows() != 1){ die("Payments table UPDATE failed!");};
	    }
	}
}
?>
<head>
<title>Failed!</title>
</head>
<body>
<p><strong>Payment failed!</strong></p>
<p><a href="index.php">Go to begin</a></p>
</body>
</html>
