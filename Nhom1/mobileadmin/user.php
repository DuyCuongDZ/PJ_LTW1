<?php 	
include "db.php";
include "config.php";
class User extends db{
	public $username;
	public $password;
	public function __construct($username, $password){
		parent::__construct();
		$this->username = $username;
		$this->password = md5($password);
	}
	public function login(){
		$username = $this->username;
		$password = $this->password;
		$us = $this->getUserByUSName($username);
		//var_dump($us);
		if ($us != NULL)
		{
			if ($username == $us[0]['username'] && $password == $us[0]['password'])	
			{
				return true;
			}		
		}
	}
}