<?php
header('Access-Control-Allow-Origin: *');
session_start();

if(!isset($_SESSION['cart_items'])){
	
	$_SESSION['total_items']=null;
	$_SESSION['total_price']=0;
	$_SESSION['counter'] = 0;
    $_SESSION['cart_items'] = array(); 

}
echo json_encode($_SESSION);
?>