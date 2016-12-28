<?php require_once ('temples/top.php');
if($_POST){
	$error=[];
	$email=$_POST['email'];
	$name=$_POST['login'];
	$pass=$_POST['pass'];
	$pass2=$_POST['pass2'];
	if($pass!=$pass2){
		$error[]='Пароль не совпадает';
	}
	$query="SELECT * FROM users
	WHERE login='$name'";
	insert($query,'cabinet.php');
	$already=mysqli_fetch_array($us);
	if($already['id']){
		$error[]='Пользователь с таким именем уже есть';
	}
	
	$query="SELECT * FROM users
	WHERE email='$email'";
	$us=mysqli_query($dbcon,$query);
	if(!$us){
		exit('Ошибка запросы');
	};
	
	$already2=mysqli_fetch_array($us);
	if($already2['email']){
		$error[]='Пользователь с такой почтой уже есть';
	}
if($error){
	
	echo "<div class='bg-danger'>";
	foreach($error as $one){
		echo "<div class='error'>";
		echo $one;
		echo "</div>";
	}
	echo "</div>";
}
else{
$query="INSERT INTO users VALUES(null,'$email','$name','$pass',NOW(),NOW(),'unblock')";
$in=mysqli_query($dbcon,$query);
if (!$in){exit('Ошибка запроса');}
?>
<script>
location.href='index.php';
</script>
<?php
}
	}
?>
<form method='post' action='reg.php'>
  <div class="form-group">
    <label for="email">Email address</label>
    <input type="email" class="form-control" id="email" placeholder="Email" name='email'>
  </div>
  <div class="form-group">
    <label for="login">Login</label>
    <input type="text" class="form-control" id="login" placeholder="Логин" name='login'>
  </div>
  <div class="form-group">
    <label for="pass">Password</label>
    <input type="password" class="form-control" id="pass" placeholder="Пароль" name='pass'>
  </div>
  <div class="form-group">
    <label for="pass2">Copy Password</label>
    <input type="password" class="form-control" id="pass2" placeholder="Повторите пароль" name='pass2'>
  </div>
  <button type="submit" class="btn btn-default">Regestr</button>
</form>
<?php require_once ('temples/bottom.php')
?>