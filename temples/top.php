<?php session_start();
require_once ('config/config.php');
require_once('lips/functions.php');
if($_SESSION['id']){
$query="SELECT*FROM users WHERE id=".$_SESSION['id'];
$aut_user=selectone($query);
}
?>
<!Doctype html>
<html>
<head><meta charset='utf-8'>
<title>Вурок.by</title>
<meta name='description' content='Интернет уроки по учебным предметам. Школьные предметы.Обучение.'>
<meta name='keywords' content='технологии ит волкова светлана уроки видеоуроки предметы школа'>
<link type='text/css' rel='stylesheet' href='media/bootstrap/css/bootstrap.css'><link type='text/css' rel='stylesheet' href='media/css/style.css'>
<script src='media/js/jq.js'></script>
<script src='media/js/main.js'></script>
</head>
<body>
<header class='shapka'>
<h1>Интернет уроки по учебным предметам</h1><p>Математика, физика, химия, информатика, ...</p>
<img src='media/img/logo.png'>
<div class="empty"></div>
</header>
<div class='topmenu'>
<a href='/' data-title='Главная' data-body='Описание' data-color='#red'>Главная</a>
<a href='index.php?url=about' data-title='О нас' data-body='О нас' data-color='blue'>О нас</a>
<a href='index.php?url=video' data-title='Видеоуроки' data-body='Видеоуроки' data-color='yellow'>Видеоуроки</a>
<a href='index.php?url=konkurs' data-title='Конкурсы' data-body='Конкурсы' data-color='red'>Конкурсы</a>
<a href='index.php?url=proekt' data-title='Проекты' data-body='Проекты' data-color='red'>Проекты</a>
<a href='index.php?url=Servis' data-title='Сервисы' data-body='Сервисы' data-color='red'>Сервисы</a>
<a href='index.php?url=contakts' data-title='Контакты' data-body='Контакты' data-color='red'>Контакты</a>
</div>

<div class='block'>

<div class='col-md-2'>
<h3>Актуально:</h3>
<?php
$abj_menu=mysqli_query($dbcon,"SELECT*FROM maintexts WHERE leftmenu='1'");
while($menu=mysqli_fetch_array($abj_menu)){
echo "<a href='index.php?url=".$menu['url']."' class='btn-block btn-warning'>";
echo $menu['name'];
echo '</a>';
}
?>
<h3>Учебные предметы:</h3>
<a href='index.php?url=fizika' class='btn-block btn-warning'>Физика</a>
<a href='index.php?url=himia' class='btn-block btn-warning'>Химия</a>
<a href='index.php?url=bio' class='btn-block btn-warning'>Биология</a>
<a href='index.php?url=history' class='btn-block btn-warning'>История</a>
<a href='index.php?url=geo' class='btn-block btn-warning'>География</a>
<a href='index.php?url=matem' class='btn-block btn-warning'>Математика</a>
<a href='index.php?url=informatika' class='btn-block btn-warning'>Информатика</a>
<a href='index.php?url=russ' class='btn-block btn-warning'>Русский язык</a>
<a href='index.php?url=bel' class='btn-block btn-warning'>Белорусский язык</a>

</div>
<div class='col-md-8'>