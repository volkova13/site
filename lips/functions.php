<?php
function insert($query,$redirect){
	global $dbcon;
	if(!$query){
		$query="";
	}
	$cat=mysqli_query($dbcon,$query);
	if(!$cat){
		exit("Ошибка");
	}
?>
<script>
document.location.href='<?=$redirect;?>'
</script>
<?php
}
function selectone($query){
global $dbcon;
$result=mysqli_query($dbcon,$query);
if(!$result){
	exit('Ошибка');
}
$row=mysqli_fetch_array($result);
return $row;
}