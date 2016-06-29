<?php

	class Device{

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

		public function Device($id,$name,$image_path,$price,$description,$cpu,$os,$resolution,$display_size,$display_type,$sim,$weight,$dimensions,$device_type){
		
			$this->id=$id;
			$this->name=$name;
			$this->image_path=$image_path;
			$this->price=$price;
			$this->description=$description;
			$this->cpu=$cpu;
			$this->os=$os;
			$this->resolution=$resolution;
			$this->display_size=$display_size;
			$this->display_type=$display_type;
			$this->sim=$sim;
			$this->weight=$weight;
			$this->dimensions=$dimensions;
			$this->device_type=$device_type;
		}
	}

?>