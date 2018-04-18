<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Boeing Evaluation Assignment - Form Screen</title>

<style>
.response{color: #32CD32;}
.label{width: 100%; background: #FF0000; padding: 5px 0; text-align: center;}
.enviro{color: #FFF;}
.version{width: 20%; background: #FFD7D7; padding: 5px 0;}
</style>
</head>

<body>
<div class="label">
<?php echo "You are currently working in the <strong><span class='enviro'>".basename(getcwd())."</span></strong> Environment"; 
?>
</div>
<div class="version">
Boeing micro-service version 
<?php
$vernum=explode("-",basename(__FILE__, ".php"));
if(isset($vernum))
{
    echo "<strong>".$vernum[1].".".$vernum[2].".".$vernum[3]."</strong>";
}
?>


</div>
<h1>Boeing Evaluation Assignment - Form Screen</h1>
<p>This form allows the creation of the POST element $Name</p>
<form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?> method="post">
  Name:<br>
  <input type="text" name="name"><br>
  <input type="submit" value="Submit">
</form>

<?php
//This page will be in charge of displaying the prePOST form with the field to add a name and a submit button

$var=htmlspecialchars($_POST["name"]);

if (isset($var) && !empty($var)) 
{
    echo "<hr>";
    echo "<h2>Server <strong>POST</strong> response:</h2>";
    echo "<div class='response'><h3>Hello <strong>".$var."</strong> World!</h3></div>";
}
?>
</body>

</html>
