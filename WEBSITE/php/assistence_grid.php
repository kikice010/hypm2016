<?php

require_once('dbconnection.php');
session_start();


class AssistenceGrid {

	private $db;

	function __construct() {
		$this->db = new MySql();
	}

	function __destruct(){
		
	}

	public function getAssistenceByCategory($cat, $hilight = 0) {
		$this->db->connect();

		if ($hilight) $sql = "SELECT name, id FROM assistance WHERE category='$cat' AND highlight_flag = 'Y';";
		else $sql = "SELECT name, id FROM assistance WHERE category='$cat'";

		
		$result = $this->db->con->query($sql);

		$resultArray = array();
		$i=0;

		if ($result->num_rows > 0) {
			
			
			while ($row = $result->fetch_assoc()) {
				$resultArray+=array($i => array('name' => $row['name'], 'id' => $row['id']));
				
				$i+=1;
			}
		}

		return $resultArray;	

	}

	public function getAllAssistence($hilight = 0) {
		$this->db->connect();

		if ($hilight) $sql = "SELECT name, id  FROM assistance WHERE highlight_flag = 'Y'";
		else $sql = "SELECT name, id FROM assistance";
		$result = $this->db->con->query($sql);

		$resultArray = array();
		$i=0;

		if ($result->num_rows > 0) {
			
			
			while ($row = $result->fetch_assoc()) {
				
				$resultArray+=array($i => array('name' => $row['name'], 'id' => $row['id']));
				
				$i+=1;
			}
		}

		return $resultArray;	

	}
}



$grid = new AssistenceGrid();

$result = array();

$hilight = $_POST['hilight'];


if ($_POST['service'] == 1 && $_POST['payment'] == 1 && $_POST['monitor'] == 1 && $_POST['smart'] == 1) {
	$result =  $grid->getAllAssistence($hilight);
}

else {
	if ($_POST['service'] == 1) $result = array_merge($result, $grid->getAssistenceByCategory("Service", $hilight));
	if ($_POST['payment'] == 1) $result = array_merge($result, $grid->getAssistenceByCategory("Payment", $hilight));
	if ($_POST['monitor'] == 1) $result = array_merge($result, $grid->getAssistenceByCategory("Monitor", $hilight));
	if ($_POST['smart'] == 1) $result = array_merge($result, $grid->getAssistenceByCategory("Smart", $hilight));
}

$result = array_unique($result, SORT_REGULAR);


 echo json_encode($result);




?>
