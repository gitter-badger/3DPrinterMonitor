<?php
$dir=getcwd()."/models/".$_GET['dir'];
//echo "dir: ".$dir."<br/><br/>";
if ($handle = opendir($dir)) 
{
	$ret = "";
	while (false !== ($entry = readdir($handle))) 
	{
       if($entry != "." && $entry != ".." && $entry != ".DS_Store") $ret .= "../adminapp/php/models/" . $_GET['dir'] . "/$entry,";
    }
    echo substr($ret,0,-1);
    closedir($handle);
    //return $ret;
}
else
{
	return "dir not found: ".$dir;
}
?>
