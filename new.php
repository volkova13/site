<?php require_once ('temples/top.php');
if ($_GET['url']){
$file=$_GET['url'];
}else
{
$file='index';}
$query="SELECT*FROM maintexts WHERE url='$file'";

$row=selectone($query);
/*echo "<pre>";
print_r($row);
echo "</pre>";*/
?>

<h2>
<?php echo $row['name'];
?></h2>
<?php echo $row['body'];
?>
 
<?php require_once ('temples/bottom.php')
?>