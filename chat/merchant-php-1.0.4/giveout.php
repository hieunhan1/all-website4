<html>
<?
// $Id: giveout.php,v 1.2 2006/07/31 14:11:41 asor Exp $

require_once('wm_config.php');
require_once('wm_include.php');

        # connect, select db
        $link = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)
        or die("Could not connect : " . mysql_error());
        mysql_select_db($DB_DBASE) or die("Could not select database");

if( isset($_GET['id']) && preg_match('/^\d+$/',$_GET['id']) == 1  # check internal payment num...
 && isset($_GET['wmid']) && preg_match('/^\d{12}$/',$_GET['wmid']) == 1 # buyer WMID ...
  && isset($_GET['rnd']) && preg_match('/^[A-Z0-9]{8}$/',$_GET['rnd']) == 1 ) { # payment ticket
        # select payment with these parameters
        $query = "SELECT id, item, state FROM payment ".
	"WHERE id ='".$_GET['id']."' AND LMI_PAYER_WM = '".$_GET['wmid']."' AND RND = '".$_GET['rnd']."'";
        $result = mysql_query($query) or die("Query failed : " . mysql_error());
        $rows = mysql_num_rows($result);
        if ( $rows == 1 ) { # if found and paid
            $pay = mysql_fetch_array($result);
            mysql_free_result($result);
	    # Select item
	    $query = "SELECT * FROM items WHERE id='".$pay['item']."' AND state='N';";
	    $result = mysql_query($query) or die("Query failed : " . mysql_error());
	    $rows = mysql_num_rows($result);
	    if ( $rows == 1 ) { # item found
		$item = mysql_fetch_array($result);
		mysql_free_result($result);
		# update item status to give out
		$query = "UPDATE payment SET state='G', timestamp=CURRENT_TIMESTAMP() WHERE id='".$pay['id']."' AND state='S';";
		$result = mysql_query($query) or die("Query failed : " . mysql_error());
	    };
	}
?>
<head>
<title>Success</title>
</head>
<body>
<p><strong>payment successful</strong></p>
<p>Your item:<br />
<b>Description:</b> <? echo $item['description'] ?><br />
<b>content:</b> <? echo $item['content'] ?></p>
<?
} else {
?>
<head>
<title>Failed!</title>
</head>
<body>
<p><strong>payment check error</strong></p>
<?
}
?>
<p><a href="index.php">Go to begin</a></p>
</body>
</html>
