<?php

/*
 * Following code will return single entry of location table
 */

header('Access-Control-Allow-Origin: *');
session_start();
// array for JSON response
$response = array();

// include db connect class
$con = mysqli_connect("localhost", "root", "hyptelecom16", "hyptelecom");

$result = mysqli_query($con, "SELECT * FROM locations") or die(mysql_error());

if (mysqli_num_rows($result) > 0) {


	$response["location"] = array();
	$locAPIJSON=array();
	//APIkey to initialize the map, and other are just locations
	$locAPIJSON["APIkey"]="AIzaSyDuAe7OyFaRZGaUA5SbfKfOpigNHQAgBkE";
	$locAPIJSON["locations"]=array();
	
	$response["success"]  = 1;
	$response["message"]  = "Location found!";

	$locations=array();
	while ($row = mysqli_fetch_array($result)) {

		$entry                    = array();
		$entry["lat"]             = $row["lat"];
		$entry["lon"]             = $row["lon"];
		
		array_push($locations, $entry);
	}
	array_push($locAPIJSON["locations"], $locations);
	array_push($response["location"], $locAPIJSON);

} else {
	$response["success"] = 0;
	$response["message"] = "Location not found!";
}
echo json_encode($response);

?>