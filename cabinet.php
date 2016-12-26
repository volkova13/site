<?php require_once ('temples/top.php');
if ($_SESSION['id']){
?>
<form>
  <div class="form-group">
    <label for="class">Класс</label>
    <input type="text" class="form-control" id="class" placeholder="Класс">
  </div>
  <div class="form-group">
    <label for="class_id">Предмет</label>
    <input type="text" class="form-control" id="class_id" placeholder="Учебный предмет">
  </div>
  <div class="form-group">
    <label for="picture">Картинка</label>
    <input type="file" id="picture">
    <p class="help-block">Выбрать файл</p>
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox"> С условиями согласен
    </label>
  </div>
  <button type="submit" class="btn btn-default">Выбрать</button>
</form>
<?php
}else{
echo "Ошибка входа";	
}

require_once ('temples/bottom.php')
?>