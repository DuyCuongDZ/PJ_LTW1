<?php 
require "db.php";
require "config.php";
$db = new Db;
$db->deleteManufatures($_GET['manu_ID']);
header("location: manufactures.php");