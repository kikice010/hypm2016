<?php 
	header("Access-Control-Allow-Origin: *");
	require('./dbconnection.php');

	if (isset($_GET['id'])) {
    
    $assistenceId = $_GET['id'];

    $db = new MySql();
    $db->connect();

    $sql = "SELECT name, description  FROM assistance WHERE id=$assistenceId";

    $result = $db->con->query($sql);

    $row = $result->fetch_assoc();

    
    echo json_encode($row);

	}

?>