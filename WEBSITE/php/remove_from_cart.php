<?php 
header('Access-Control-Allow-Origin: *');

session_start();

$id = isset($_GET['id']) ? $_GET['id'] : "";

if(isset($_SESSION['cart_items'][$id])){
	$_SESSION['total_price']-=$_SESSION['cart_items'][$id]['price'];
	$_SESSION['total_items']--;
	if($_SESSION['total_items']==0)
		$_SESSION['total_items']=null;
	unset($_SESSION['cart_items'][$id]);
}
 
echo json_encode($_SESSION);
?>