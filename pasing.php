<?php
//sleep(2);
//echo('Загружено успешно');
require_once('config/config.php');
require_once('lips/functions.php');
require_once('lips/phpQuery/phpQuery/phpQuery.php');
$query="SELECT * FROM videos WHERE picture=''";
$cat=mysqli_query($dbcon,$query);
if(!$cat){
	exit('Ошибка');	
}
while ($all=mysqli_fetch_array($cat)){
		$str=str_replace(array(" "),"+",$all['name']);
	$link="http://www.google.by/search?q=$str&rlz=1C1CHMO_ruBY727&espv=2&biw=1594&bih=673&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjpu-fwzrrRAhWIIJoKHRelAgIQ_AUIBigB";
	//echo $link."<br/>";
$hap=file_get_contents($link);
$document=PhpQuery::newDocument($hap);
$hents=$document->find('.images_table img:eg(0)');
echo $hents; 

	echo $all['name'];
	echo "<hr/>";
sleep(1);
}
?>