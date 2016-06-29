<?php 

header("Access-Control-Allow-Origin: *");
session_start();
	include "dbconnection.php";
	include "SmartLifeCategory.php";

	if(isset($_REQUEST["name"])){
		// echo "Device required: ".$_GET["id"];

		$name=$_REQUEST["name"];

		$db=new MySql();

		$db->connect();
		$result = mysqli_query($db->con,"select * from sl_service_categories where name='$name'") or die(mysql_error());

		if(mysqli_num_rows($result) > 0){
			
			$response["sl_service_category"] = array();
			$response["success"]  = 1;
			$response["message"]  = "SL_Service found!";

			while ($row = mysqli_fetch_array($result)) {

				$entry=new SmartLifeCategory($row);

				array_push($response["sl_service_category"], json_encode($entry));
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