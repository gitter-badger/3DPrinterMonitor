<?php
$username = "root";
$password = "root";
$server = "localhost";
$port = "8889"; //enlever le port online!
$databasename = "STLWebViewer";
$tablename = "printedModels";
	
$con = mysql_connect($server, $username, $password) or die(mysql_error());
mysql_select_db($databasename, $con) or die(mysql_error());
$qry=mysql_query("SELECT * FROM printedModels where idmodels=92");
$row=mysql_fetch_array($qry);
echo "fuuuu" . $row;
?>