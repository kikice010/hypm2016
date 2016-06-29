<?php

	class Device1{

		var $id;
		var $name;
		var $image_path;
		var $price;
		var $description;
		var $cpu;
		var $os;
		var $resolution;
		var $display_size;
		var $display_type;
		var $sim;
		var $weight;
		var $dimensions;
		var $device_type;

		public function Device1($row){
		
			$this->id=$row["id"];
			$this->name=$row["name"];
			$this->image_path=$row["image_path"];
			$this->price=$row["price"];
			$this->description=$row["description"];
			$this->cpu=$row["cpu"];
			$this->os=$row["os"];
			$this->resolution=$row["resolution"];
			$this->display_size=$row["display_size"];
			$this->display_type=$row["display_type"];
			$this->sim=$row["sim"];
			$this->weight=$row["weight"];
			$this->dimensions=$row["dimensions"];
			$this->device_type=$row["device_type"];
		}
	}

?>