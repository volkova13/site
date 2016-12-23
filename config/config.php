<?php
$dblocation='localhost';
$dbname='Videourok';
$dbuser='root';
$dbpass='';
$dbport=3306;
$dbcon=mysqli_connect ($dblocation,$dbuser,$dbpass,$dbname,$dbporte);
if (!$dbcon){
exit ('erorr connect');
}