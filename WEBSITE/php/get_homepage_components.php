<?php


	

header('Access-Control-Allow-Origin: *');
session_start();
// array for JSON response


	$response = array();

	$con= mysqli_connect("localhost","root","hyptelecom16","hyptelecom");
	mysqli_query($con, "SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");

	// get all homepage columns
	$result = mysqli_query($con, "SELECT * FROM homepage") or die(mysql_error());

	// check for empty result
	if (mysqli_num_rows($result) > 0) {
		// looping through all results
		// equipment node

		$response["success"]  = 1;
		$response["message"]  = "Homepage found!";
		$response["homepage"] = array();

		while ($row = mysqli_fetch_array($result)) {
			$entry                        = array();
			$entry["group_desc"]   		  = $row["group_desc"];
			$entry["group_path"]  		  = $row["group_path"];
			$entry["gover_desc"] 		  = $row["gover_desc"];
			$entry["gover_path"] 		  = $row["gover_path"];
			$entry["bm_desc"] 			  = $row["bm_desc"];
			$entry["bm_path"] 			  = $row["bm_path"];
			$entry["fi_desc"] 			  = $row["fi_desc"];
			$entry["fi_path"] 			  = $row["fi_path"];
			$entry["inovation"] 	  	  = $row["inovation"];
			$entry["testimonials"]	 	  = $row["testimonials"];
			$entry["projects"]	 	  	  = $row["projects"];

			$result1 = mysqli_query($con, "SELECT * FROM news") or die(mysql_error());

			if (mysqli_num_rows($result1) > 0) {

				$entry["news"] = array();
				while ($row1 = mysqli_fetch_array($result1)) {
				
					$entry1                        = array();
					$entry1["description"]   	   = $row1["description"];
					$entry1["image_path"]   	   = $row1["image_path"];
					$entry1["text_position"]   	   = $row1["text_position"];

					// push single entry into final response array
					array_push($entry["news"], $entry1);
				}
				array_push($response["homepage"], $entry);
			}
			else {
				$response["success"] = 0;
				$response["message"] = "News not found!";
			}

		}

	} else {
		$response["success"] = 0;
		$response["message"] = "Hompage not found!";
	}
	echo json_encode($response);

?>