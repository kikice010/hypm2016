<?php

require_once('dbconnection.php');

header("Access-Control-Allow-Origin: *");
session_start();

class DeviceGrid {

	private $db;

	function __construct() {
		$this->db = new MySql();
	}

	function __destruct(){
		
	}

	public function getDeviceByCategory($cat, $prom = 0) {
		$this->db->connect();

		if ($prom) $sql = "SELECT name, id, price, image_path  FROM device WHERE device_type='$cat' AND promotion = 1";
		else $sql = "SELECT name, id, price, image_path  FROM device WHERE device_type='$cat'";

		
		$result = $this->db->con->query($sql);

		$resultArray = array();
		$i=0;

		if ($result->num_rows > 0) {
			
			
			while ($row = $result->fetch_assoc()) {
				$resultArray+=array($i => array('name' => $row['name'], 'price' => $row['price'], 'img' => $row['image_path'], 'id' => $row['id']));
				
				$i+=1;
			}
		}

		return $resultArray;	

	}

	public function getAllDevices($prom = 0) {
		$this->db->connect();

		if ($prom) $sql = "SELECT name, id, price, image_path  FROM device WHERE promotion = 1";
		else $sql = "SELECT name, id, price, image_path  FROM device";
		$result = $this->db->con->query($sql);

		$resultArray = array();
		$i=0;

		if ($result->num_rows > 0) {
			
			
			while ($row = $result->fetch_assoc()) {
				$resultArray+=array($i => array('name' => $row['name'], 'price' => $row['price'], 'img' => $row['image_path'], 'id' => $row['id']));
				
				$i+=1;
			}
		}

		return $resultArray;	

	}
}



$grid = new DeviceGrid();

$result = array();
$prom = $_POST['prom'];


if ($_POST['phone'] == 1 && $_POST['tablet'] == 1 && $_POST['smart'] == 1) {
	$result =  $grid->getAllDevices($prom);
}

else {
	if ($_POST['phone'] == 1) $result = array_merge($result, $grid->getDeviceByCategory("Phone", $prom));
	if ($_POST['tablet'] == 1) $result = array_merge($result, $grid->getDeviceByCategory("Tablet", $prom));
	if ($_POST['smart'] == 1) $result = array_merge($result, $grid->getDeviceByCategory("Smart", $prom));
}



echo json_encode($result);



?>