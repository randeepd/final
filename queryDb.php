<?php
// Create DB credentials
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "coffee";
// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);

function getCustomers($search = null){
	
	$con = $GLOBALS['conn'];
	if($search){
		$sql = "SELECT * FROM customers WHERE `FIRSTNAME` LIKE '%$search%' OR `LASTNAME` LIKE '%$search%' OR `ADDRESS` LIKE '%$search%' OR `PHONE` LIKE'%$search%'";
	}else{
		$sql = "SELECT * FROM customers";
	}
	
	$result = mysqli_query($con, $sql);
	return $result;
	if ($result &&  mysqli_num_rows($result) > 0) {
		$data = array();
		while ($row = mysqli_fetch_assoc($result)) {
			array_push($data, $row);
		}
		return $data;
	} else {
		return false;
	}
}

function getProducts($search = null){

	$con = $GLOBALS['conn'];
	if($search){
		$sql = "SELECT * FROM products WHERE `PRODUCTNAME` LIKE '%$search%' OR `MANUFACTURER` LIKE'%$search%' OR `DESCRIPTION` LIKE '%$search%' OR `PRICE` LIKE'%$search%'";
	}else{
		$sql = "SELECT * FROM products";
	}
	
	$result = mysqli_query($con, $sql);
	if ($result && mysqli_num_rows($result) > 0) {
		$data = array();
		while ($row = mysqli_fetch_assoc($result)) {
			array_push($data, $row);
		}
		return $data;
	} else {
		return false;
	}
}

function getEvents($search = null){
	$con = $GLOBALS['conn'];
	if($search){
		$sql = "SELECT * FROM events WHERE `EVENTNAME` LIKE '%$search%' OR `LOCATION` LIKE' %$search%' OR `DESCRIPTION` LIKE '%$search%' OR `DATE` LIKE '%$search%'";
	}else{
		$sql = "SELECT * FROM events";
	}
	
	$result = mysqli_query($con, $sql);
	if ($result && mysqli_num_rows($result) > 0) {
		$data = array();
		while ($row = mysqli_fetch_assoc($result)) {
			array_push($data, $row);
		}
		return $data;
	} else {
		return false;
	}
}

?>