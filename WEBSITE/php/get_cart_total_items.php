<?php

session_start();
if(!isset($_SESSION['total_items']) or $_SESSION['total_items'] == 0)
	$_SESSION['total_items']=null;
echo json_encode($_SESSION['total_items']);

?>