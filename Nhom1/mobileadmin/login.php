<?php
session_start();
require_once "user.php";
?>
<!DOCTYPE html>
<html>
<head>
	<title>login</title>
</head>
<body>
	<center>
		<form action="xulylogin.php" method="get">
	USERNAME: <input type="text" name="user" value="<?php echo isset($_COOKIE['user'])?$_COOKIE['user']:"" ?>"><br><br>
	PASSWORD: <input type="Password" name="pass"><br><br>
	<input type="checkbox" name="remember">Remember
	<input type="submit" name="" value="submit"> 
	</center>


</form>
</body>
</html>