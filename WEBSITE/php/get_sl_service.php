<?php 

header("Access-Control-Allow-Origin: *");
session_start();
include "SmartLife.php";

if(isset($_REQUEST["id"])){
	// echo "Device required: ".$_GET["id"];

	$id=$_REQUEST["id"];

	$db=new MySql();

	$db->connect();

	$result = mysqli_query($db->con,"select * from sl_service where id=$id") or die(mysql_error());

	if(mysqli_num_rows($result) > 0){
			
		$response["sl_service"] = array();
		$response["success"]  = 1;
		$response["message"]  = "SL_Service found!";

		while ($row = mysqli_fetch_array($result)) {

			$entry=new SmartLife($row);
			$entry->linkDevices();

			array_push($response["sl_service"], json_encode($entry));
		}
	}
	else{
			//not found
		$response["success"] = 0;
		$response["message"] = "SL_Service not found!";
	}
	
echo json_encode($response);
	}
?>