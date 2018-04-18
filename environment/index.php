<?php

//script to select the version to display based on current deployment

//First thing to do is verify if there is any current new deployment otherwise the base main is used
$directory = "ver/";
$filecount = 0;
$files = glob($directory . "*");
if ($files){
 $filecount = count($files);
}
//Debug show how many files
//echo $filecount;

$files = scandir($directory);

//if var filecount is <=1 then display the page with the base main
if($filecount<=1)
{
    include "ver/".$files[2];
}
//if there are multiple files, include the latest one based on upload time

if($filecount>1 && !isset($_GET['version']))
{
    $neofiles = scandir($directory, SCANDIR_SORT_DESCENDING);
    $newest_file = $neofiles[0];
    include "ver/".$neofiles[0];
}
else
{
if(isset($_GET['version']))
{
    include "ver/main-".$_GET['version'].".php";
}
}
//if the version is passed as an argument, select the version to include

//Debug shows latest line
//echo "There were $filecount files";

?>
