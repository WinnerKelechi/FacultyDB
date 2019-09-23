<?php
	$host="localhost";
	$user="root";
	$db="db-physical";
	$pass="";
	$dns="mysql:host=$host;dbname=$db";
	$conn= new PDO ($dns, $user, $pass);
	try{
		$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	}
	catch
		(PDOEXCEPTION $e){
			echo $e;
	}
?>