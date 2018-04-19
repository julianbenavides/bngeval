<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Boeing Evaluation Assignment - AdminScreen</title>

<style>
.response{color: #32CD32;}
.label{width: 100%; background:  #008ae6; padding: 2px 0; color: #FFF;}
.enviro{color: #FFF;}
.version{width: 20%; background: #FFD7D7; padding: 5px 0;}
</style>
</head>

<body>
<h1>Hi Boeing DevOps leader!</h1>
<p>From this screen you will be able to launch a specific version of the software deployed as a micro-service on this server. You will need to select which environment first to show all the version installed</p>
<p>Select the environment:</p>

<form action="index.php" method="POST">
<select name="environment" id="environment" onchange="this.form.submit()">>

<option value=" "></option>
<?php
$dirs = array_filter(glob('*'), 'is_dir');
foreach ($dirs as $item)
{
    echo "<option value='$item'>$item</option>";
}
?>  
</select>
</form>
<?php

if(isset($_POST['environment'])) 
{
  echo "<br /><br />";
  echo "<div class='label'><h2> You have selected the <strong>".$_POST['environment']."</strong> environment</h2></div>";

$directory = $_POST['environment']."/ver/";


 
//get all image files with a .jpg extension.
$ver = glob($directory . "*.php");
if(count($ver)>0)
{
  echo "<br />The following versions are deployed in the environment you selected. Click on any of them to launch the instance.";
//print each file name
foreach($ver as $ver)
{
  echo "<br />";
  echo $ver;
  //lets try to add a link
  //1.find lenght to exctract the version from the filename
  $numval=strlen($_POST['environment'])+10;
  $neostring=substr($ver, $numval);
  $neostring=substr($neostring, 0, -4);
  echo "&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; Direct Link: <a href='".$_POST['environment']."/index.php?version=".$neostring."' target='_blank'>".$_POST['environment']."/index.php?version=".$neostring."</a>";
}
}
else
{
    echo "<br />There are currently no instances deployed on your environment.";
}
}

?>

</body>

</html>
