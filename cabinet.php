<?php require_once ('temples/top.php'); require_once('lips/functions.php');
if ($_SESSION['id']){
	if ($_POST){
	$class=$_POST['class'];
	$predmet_id=$_POST['predmet_id'];
	$body=$_POST['body'];
	if ($_FILES){
		$tmp_name=$_FILES['picture']['tmp_name'];
		$name=$_FILES['picture']['name'];
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
	else {$name='';}
	$query="INSERT INTO `predmets`
	VALUES (null,$class,".$_SESSION['id'].",'$predmet_id','$body','$dir.$name','show',NOW(),NOW())";
insert($query,'cabinet.php');
	}
?>
<form enctype='multipart/form-data' method='post' action='cabinet.php'>
  <div class="form-group">
    <label for="class">Класс</label>
    <input type="text" class="form-control" id="class" placeholder="Класс" name="class">
  </div>
  <div class="form-group">
    <label for="predmet_id">Предмет</label>
    <input type="text" class="form-control" id="predmet_id" placeholder="Учебный предмет" name="predmet_id">
  </div>
   <div class="form-group">
    <label for="body">Текст</label>
    <input type="text" class="form-control" id="body" placeholder="Учебный предмет" name="body">
  </div>
  <div class="form-group">
    <label for="picture">Картинка</label>
    <input type="file" id="picture" name="picture">
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