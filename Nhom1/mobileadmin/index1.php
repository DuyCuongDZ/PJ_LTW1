<?php
	require "config.php";
	require "db.php";
	$db = new Db;
	$product1 = $db->product1();
	foreach ($product1 as $value) {
		echo $value['name']."<br>";
	}
?>
