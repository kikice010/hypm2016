<?php


class MySql {
	private $hostname;
	private $database;
	private $username;
	private $password;
	
	private $port;

	public $con;

	private $error;

	function __construct(){
		$this->database = "hyptelecom";
		$this->username = "root";
		$this->password = "hyptelecom16";
		
		$this->hostname = "localhost";
		//$this->port = 3306;
		
	}

	function __destruct(){
		$this->closeConnection();
	}

	// Connects class to database
	
	public function connect(){
		$this->CloseConnection();
		
		
		$this->con = mysqli_connect($this->hostname, $this->username, $this->password, $this->database);
		
		
		if(!$this->con){
   			//$this->error = 'Could not connect to server: ' . mysqli_error($this->con);
   			echo "Not Connected";
				return false;
		}
		else {
			//echo "Connected!";
		}
		
		
		
		return true;
	}

	// Closes the connections
    public function closeConnection(){
        if($this->con){
            mysqli_close($this->con);
        }
    }


}

?>