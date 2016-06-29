<?php

	class SmartLifeCategory{

		var $id;
		var $name;
		var $description;
		var $image_path;

		public function SmartLifeCategory($json){
			
			$this->id=$json["id"];
			$this->name=$json["name"];
			$this->description=$json["description"];
			$this->image_path=$json["image_path"];
		}
	}

?>