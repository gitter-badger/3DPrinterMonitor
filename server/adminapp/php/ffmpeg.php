<?php

$modelid = $_GET["modelid"];
$printid = $_GET["printid"];
$con = mysql_connect("localhost","root","root") or die('Could not connect: ' . mysql_error());
//$con = mysql_connect("localhost","stef","eQRf9zy3") or die('Could not connect: ' . mysql_error());

mysql_select_db("STLWebViewer", $con);
mysql_query("UPDATE printLogs SET encoding=0 WHERE idprintLogs=$printid") or die("cant update that shit to 0");
$startTime = microtime(true);
exec('sh ffmpeg.sh '.$modelid.' '.$printid);
$duration = number_format((microtime(true) - $startTime), 0);
mysql_query("UPDATE printLogs SET encoding=$duration WHERE idprintLogs=$printid") or die("cant update that shit to time");
mysql_close($con);

return "DONE";
?>