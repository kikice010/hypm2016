<?php 

	include "dbconnection.php";
	header("Access-Control-Allow-Origin: *");
	session_start();
	
	if(isset($_REQUEST["name"]) && isset($_REQUEST["email"]) && isset($_REQUEST["message"])){
		// echo "Device required: ".$_GET["id"];

		//SQL injection prevention :-)
		$name=$_REQUEST["name"];
		$email=$_REQUEST["email"];
		$message=$_REQUEST["message"];

		$db=new MySql();

		$db->connect();
		$result = mysqli_query($db->con,"insert into contact (name, email , message) values ('$name','$email','$message');")
							 or die(mysql_error());

		if($result){
			
			echo "Success";
		}
		else{
			echo "Failure";
		}
	}


?>