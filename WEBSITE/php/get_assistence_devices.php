<?php
 header("Access-Control-Allow-Origin: *");
 require('./dbconnection.php');
 $db = new MySql();
 $db->connect();

 $sql = "SELECT device.name, device.image_path, device.id FROM device join dev_assistance ON dev_assistance.id_dev = device.id WHERE dev_assistance.id_assistance=" . $_POST['id'] . "";
 
 $result = $db->con->query($sql);

 $resultArray = array();
 $i=0;

 if ($result->num_rows > 0) {
			
			
 while ($row = $result->fetch_assoc()) {
	$resultArray+=array($i => array('name' => $row['name'], 'img' => $row['image_path'], 'id' => $row['id']));
	$i+=1;
  }
}

   echo json_encode($resultArray);
?>