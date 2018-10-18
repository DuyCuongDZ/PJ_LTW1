<?php 
require "db.php";
require "config.php";
$db = new Db;
$db->deleteProducts($_GET['ID']);
//header("location: index.php");