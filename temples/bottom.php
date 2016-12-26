</div>
<div class='col-md-2'>
<div class='reklama'>

<?php
if($_SESSION['id']){
?>
<a href='cabinet.php' class='btn btn-link my'>Кабинет 
<?=($aut_user['login'])?
$aut_user['login']:'Пользователь ';?>
</a>

<a href='logaut.php' class='btn btn-link my'>Выход</a>
<?php
}else{
?>
<a href='reg.php'>Регистрация на сайте</a>
<a href='login.php'>Вход</a>
<?php
}
?>
<img src='media/img/rec.gif'>
</div></div>
</div>
<br style='clear:both'>
<footer class='foot'>&copy Центр информационных ресурсов системы регионального образования, e-mail: <a href='mailto:iso@MINSK.EDU.BY'>iso@minsk.edu.by.</a>
</footer>
</body>
</html>