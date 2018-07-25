<?php
/* Database connection settings */
$host = 'localhost';
$user = 'mykel';
$pass = 'mykel123';
$db = 'accounts';
$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error);
?>
