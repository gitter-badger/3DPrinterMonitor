<?php
$fileName = $_FILES['Filedata']['name'];
if(substr($fileName, 0, 1) == ".")
{
	die("oui, voila oui.");
}
$tempFile = $_FILES['Filedata']['tmp_name'];
$idmodels = $_POST['idmodels'];
if($idmodels)
{
	$modelPath = "models/" . $idmodels; 
	mkdir($modelPath, 0755, true);
	$path = $modelPath . "/tmp";
	mkdir($path, 0755, true);		
	move_uploaded_file($tempFile, $path . "/" . $fileName);
}
else
{
	move_uploaded_file($tempFile, "models/" . $fileName);
	chmod("models/" . $fileName, 0755);
}
?>