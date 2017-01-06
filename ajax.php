<?php
#print_r($_POST);
$_POST['id'];
require_once('config/config.php');
require_once('lips/functions.php');
$id=(int)$_POST['id'];
$query="SELECT*FROM videos WHERE id=".$id;
$row=selectone($query);
echo "<h2>".$row['picture'].$row['body']."</h2>";
?>