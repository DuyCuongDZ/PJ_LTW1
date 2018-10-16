<?php
session_start();
require_once "user.php";
if(isset($_GET['user'])){
	$user1 = new User($_GET['user'], $_GET['pass']);
	if ($user1->login()){
		if(isset($_GET['remember'])){
			setcookie("user",$_GET['user'],time()+3600);
			setcookie("pass",$_GET['pass'],time()+3600);
		}
		$_SESSION['user']=$_GET['user'];
		header('location:index.php');
	}
	else{
		echo "login false!!!";
	}
}