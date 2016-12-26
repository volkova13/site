<?php require_once ('temples/top.php');
if($_POST){
	$name=$_POST['login'];
	$pass=$_POST['pass'];
$query="SELECT*FROM users WHERE login='$name' AND pass='$pass'";		
$cut=mysqli_query($dbcon,$query);
if (!$cut){
	exit('Ошибка запроса');
}
$user=mysqli_fetch_array($cut);
if($user['id']){
	#echo "Авторизация прошла";
	$_SESSION['id']=$user['id'];
?>
<script>
location.href='index.php';
</script>
<?php
} else{
	echo "Нет такого пользователя";
}

}
?>
<form method='post' action='login.php'>
   <div class="form-group">
    <label for="login">Login</label>
    <input type="text" class="form-control" id="login" placeholder="Логин" name='login'>
  </div>
  <div class="form-group">
    <label for="pass">Password</label>
    <input type="password" class="form-control" id="pass" placeholder="Пароль" name='pass'>
  </div>
  
  <button type="submit" class="btn btn-default">Вход</button>
</form>
<?php require_once ('temples/bottom.php');
?>