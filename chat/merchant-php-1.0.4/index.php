<?
// $Id: index.php,v 1.5 2006/07/31 14:11:41 asor Exp $

require_once('wm_config.php');
require_once('wm_include.php');
?>
<html>
<head>
<title>Select item for payment</title>
</head>
<body>
<p><b>Payment example for WM Merchant Service.</b></p>
<?
# connect, select db
$link = mysql_connect($DB_HOST, $DB_USER, $DB_PASS)
        or die("Could not connect : " . mysql_error());
mysql_select_db($DB_DBASE) or die("Could not select database");
# select items, their prices and availability
# items will be reserved actually at PREREQUEST stage
$query = "SELECT id, description, price, unit FROM items WHERE state='Y' ".
	 "AND ((reserved IS NULL) OR (reserved + INTERVAL 2 MINUTE < NOW())) ORDER BY description;"; 
$result = mysql_query($query) or die("Query failed : " . mysql_error());    
$rows = mysql_num_rows($result);
if ( $rows > 0 ) { # If items found, prepare form
    echo '<form method="POST" action="payment.php">'."\n";
    echo '<p><select name="item">'."\n";
    echo '<option>Select item'."\n";
    while( $item = mysql_fetch_array($result)){ # all items available
        echo '<option value="'.$item['id'].'">'.$item['description'].' - '.$item['price'].' '.$item['unit']."\n";
    };
    echo '</select></p>'."\n";
    echo '<p><label for="email">E-mail: </label>';
    echo '<input type="text" name="email" id="email" value="" size="30"></p>';
    echo '<input type="submit" value="Submit" />'."\n";    
    echo '</form>'."\n";
} else {
    echo '<p3>Sorry! All items are sold!</p3>'."\n";
};
?>
</body>
</html>
