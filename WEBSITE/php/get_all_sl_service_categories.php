<?php 

header("Access-Control-Allow-Origin: *");
include "SmartLifeCategory.php";
session_start();

$con= mysqli_connect("localhost","root","hyptelecom16","hyptelecom");
$result = mysqli_query($con,"select * from sl_service_categories ") or die(mysql_error());

if(mysqli_num_rows($result) > 0){
			
	$response["sl_service_categories"] = array();
	$response["success"]  = 1;
	$response["message"]  = "SL_Service Category found!";

	while ($row = mysqli_fetch_array($result)) {

		$entry=new SmartLifeCategory($row);
		array_push($response["sl_service_categories"], json_encode($entry));
	}
}
else{
	//not found
	$response["success"] = 0;
	$response["message"] = "SL_Service Category not found!";
}
	
echo json_encode($response);

?>


