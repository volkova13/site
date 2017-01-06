<?php require_once ('temples/top.php');
$query="SELECT*FROM videos WHERE showhide='show' ORDER BY id DESC";
$result=mysqli_query($dbcon,$query);
if(!$result){
	exit('Ошибка');
}
while($row=mysqli_fetch_array($result)){
	#echo "<pre>";
	# print_r($row);
	#echo "</pre>";
?>
<div class='col-md-4 cd-sm-4'></div>
<?php
if($row['picture'] != '')
{
	$pic='/media/foto/'.$row['picture'];
}else
{
	$pic='/media/img/def.png';
}
?>
<img src="<?=$pic;?>" class='pica'/>
<div class='name'>
<a href='#' data-id="<?=$row['id'];?>" class='link'>
<?=$row['name'];?><br/>
</a>
<?php	
} 

 require_once ('temples/bottom.php');
?>