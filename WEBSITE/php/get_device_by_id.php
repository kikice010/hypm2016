<?php

header("Access-Control-Allow-Origin: *");
session_start();

$response=array();
if(isset($_GET["id"])){
	$id = $_GET["id"];
	$con= mysqli_connect("localhost","root","hyptelecom16","hyptelecom");

	$result = mysqli_query($con,"select * from device where id='".$id."'") or die(mysql_error());
	if(mysqli_num_rows($result) > 0){
		
		$response["device"] = array();
		$response["message"] = "Device found!";
		$response["success"] = 1;
		

		while($row = mysqli_fetch_array($result)){

			$entry = array();
			$entry["id"] = $row["id"];
			$entry["name"] = $row["name"];
			$entry["image_path"] = $row["image_path"];
			$entry["price"] = $row["price"];
			$entry["description"] = $row["description"];
			$entry["cpu"] = $row["cpu"];
			$entry["os"] = $row["os"];
			$entry["resolution"] = $row["resolution"];
			$entry["display_type"] = $row["display_type"];
			$entry["display_size"] = $row["display_size"];
			$entry["sim"] = $row["sim"];
			$entry["weight"] = $row["weight"];
			$entry["dimensions"] = $row["dimensions"];
			$entry["device_type"] = $row["device_type"];

			$entry["sl_services"] = array();
			$entry["assistances"] = array();

			$sl_services_result = mysqli_query($con,"select sl.id,name,image_path from sl_service sl inner join dev_sl devsl on sl.id=devsl.id_sl where devsl.id_dev='".$id."'") or die(mysql_error());

			if(mysqli_num_rows($sl_services_result) > 0){

				$response["success"] = 1;
				$response["message"] = "SL services and Device found!";

				while ($sl_service_row = mysqli_fetch_array($sl_services_result)) {
					
					$sl_entry = array();
					$sl_entry["id"] = $sl_service_row["id"];
					$sl_entry["name"] = $sl_service_row["name"];
				    $sl_entry["image_path"] = $sl_service_row["image_path"];
					
					array_push($entry["sl_services"], $sl_entry);
					

				}
			}
			else{
				$response["success"] = 0;
				$response["message"] = "SL services not found!";
			}

			$assistances_result = mysqli_query($con,"select ass.id,name from assistance ass inner join dev_assistance devas on ass.id=devas.id_assistance where devas.id_dev='".$id."'") or die(mysql_error());

				if(mysqli_num_rows($assistances_result) > 0){

					$response["success"] = 1;
					$response["message"] = "Assistances and Device found!";

					while ($assistances_row = mysqli_fetch_array($assistances_result)) {
						
						$assistance_entry = array();
						$assistance_entry["id"] = $assistances_row["id"];
						$assistance_entry["name"] = $assistances_row["name"];
						
						array_push($entry["assistances"], $assistance_entry);
						

					}
					
				}
				else{
					$response["success"] = 0;
					$response["message"] = "Assistance services not found!";
				}

			array_push($response["device"],$entry);
			// echo json_encode($response["device"]).'<br/>';
		}

	}
	else{
		$response["success"] = 0;
		$response["message"] = "Device not found!";
	}
}
else{
	$response["success"] = 0;
	$response["message"] = "Device id not set in GET request!";
}

echo json_encode($response);
?>