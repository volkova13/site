<?php require_once ('temples/top.php'); require_once('lips/functions.php');
if ($_SESSION['id']){
	$query="SELECT * FROM accaunt WHERE user_id=".$_SESSION['id'];
	$row=selectone($query);
		if ($_POST){
	$class=$_POST['name'];
	$phone=$_POST['phone'];
	$adress=$_POST['address'];
		if ($_FILES){
		$tmp_name=$_FILES['foto']['tmp_name'];
		$name=$_FILES['foto']['name'];
		$dir=$_SERVER['DOCUMENT_ROOT']."/media/foto/";
	if(!is_dir($dir)){
		@mkdir($dir,0777);
	}	
	#echo $dir;
	if(is_uploaded_file($tmp_name)){
		
		move_uploaded_file($tmp_name,$dir.$name);
	}else{
		echo "Ошибка загрузки файла";
	}
		#echo "<pre>";
		#print_r($_FILES);
		#echo "</pre>";
		
	}
	else {$name=$row['foto'];}



	if ($row){
		if(file_exists($dir.$foto)){
			@unlink($dir.$foto);
			}
		$query = "UPDATE accaunt SET name='$class', phone='$phone', address='address',foto='$name' WHERE user_id=".$_SESSION['id'];
		insert($query,'cabinet.php');
	}else{
		$query="INSERT INTO `accaunt` VALUES (null,".$_SESSION['id'].",'$class','$phone','$address','$name',NOW(),NOW())";
		insert($query,'cabinet.php');
		echo "Пусто";
	}
}
?>
<form enctype='multipart/form-data' method='post' action='cabinet.php'>
  <div class="form-group">
    <label for="name">ФИО</label>
    <input type="text" class="form-control" id="name" placeholder="Введите данные" name="name" value="<?=($row['name'])?$row['name']:''?>">
  </div>
  <div class="form-group">
    <label for="phone">Телефон</label>
    <input type="text" class="form-control" id="phone" placeholder="Телефон" name="phone" value="<?=($row['phone'])?$row['phone']:''?>">
  </div>
   <div class="form-group">
    <label for="address">Адрес</label>
    <input type="text" class="form-control" id="address" placeholder="Адрес" name="adress" value="<?=($row['address'])?$row['address']:''?>">
  </div>
  <div class="form-group">
    <label for="foto">Фото</label>
	<?php
	if($row['foto']){
	?><img src="/media/foto/<?=$row['foto']?>" class="img-circle" width=150/>
	<?php
	}else{?>
		<img src="/media/img/def.png" class="img-circle" />
		<?php
	}
	?>
    <input type="file" id="foto" name="foto">
    <p class="help-block">Выбрать файл</p>
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox"> С условиями согласен
    </label>
  </div>
  <button type="submit" class="btn btn-default">Загрузить</button>
</form>
<?php

}else{
echo "Ошибка входа";	
}

require_once ('temples/bottom.php')
?>