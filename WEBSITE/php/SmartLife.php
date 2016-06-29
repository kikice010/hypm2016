<?php

	include "dbconnection.php";
	include "Device1.php";
	session_start();
	class SmartLife{

		var $id;
		var $name;
		var $image_path;
		var $description;
		var $rates_discount_price;
		var $category;
		var $activation_rules;

		var $devices;

		public function SmartLife($json){
			
			$this->id=$json["id"];
			$this->name=$json["name"];
			$this->image_path=$json["image_path"];
			$this->description=$json["description"];
			$this->rates_discount_price=$json["rates_discount_price"];
			$this->category=$json["category"];
			$this->activation_rules=$json["activation_rules"];
			$this->devices=array();
			
		}

		public function linkDevices(){

			//taking all linked devices from DB

			$db=new MySql();

			$db->connect();

			$result = mysqli_query($db->con,
				"select d.*
				 from dev_sl inner join device d on id_dev=d.id inner join sl_service s on id_sl=s.id
				 where s.id=$this->id;"
				 ) or die(mysql_error());

			if(mysqli_num_rows($result) > 0){

				while ($row = mysqli_fetch_array($result)) {

					$entry=new Device1($row);
					array_push($this->devices, json_encode($entry));
				}
			}


		}
	}

?>