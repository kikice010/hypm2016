<?php

	class ASSISTANCE{

		var $id;
		var $name;
		var $description;
		var $highlight_flag;

		public function ASSISTANCE($id,$name,$description,$highlight_flag){
		
			$this->id=$id;
			$this->name=$name;
			$this->description=$description;
			$this->highlight_flag=$highlight_flag;
		}
	}

?>