<?php

/**
 *  README for sample service
 *
 *  This generated sample service contains functions that illustrate typical service operations.
 *  Use these functions as a starting point for creating your own service implementation. Modify the 
 *  function signatures, references to the database, and implementation according to your needs. 
 *  Delete the functions that you do not use.
 *
 *  Save your changes and return to Flash Builder. In Flash Builder Data/Services View, refresh 
 *  the service. Then drag service operations onto user interface components in Design View. For 
 *  example, drag the getAllItems() operation onto a DataGrid.
 *  
 *  This code is for prototyping only.
 *  
 *  Authenticate the user prior to allowing them to call these methods. You can find more 
 *  information at http://www.adobe.com/go/flex_security
 *
 */
class PrintedModelsService {

	var $username = "root";
	var $password = "root";
	var $server = "localhost";
	var $port = "8889"; //enlever le port online!
	var $databasename = "STLWebViewer";
	var $tablename = "printedModels";

	var $connection;

	/**
	 * The constructor initializes the connection to database. Everytime a request is 
	 * received by Zend AMF, an instance of the service class is created and then the
	 * requested method is invoked.
	 */
	public function __construct() {
	  	$this->connection = mysqli_connect(
	  							$this->server,  
	  							$this->username,  
	  							$this->password, 
	  							$this->databasename,
	  							$this->port //enlever le port online!
	  						);

		$this->throwExceptionOnError($this->connection);
	}

	/**
	 * Returns all the rows from the table.
	 *
	 * Add authroization or any logical checks for secure access to your data 
	 *
	 * @return array
	 */
	public function getAll3DModels() {

		$stmt = mysqli_prepare($this->connection, "SELECT * FROM $this->tablename");		
		$this->throwExceptionOnError();
		
		mysqli_stmt_execute($stmt);
		$this->throwExceptionOnError();
		
		$rows = array();
		
		mysqli_stmt_bind_result($stmt, $row->idmodels, $row->STLfile, $row->name, $row->sizeX, $row->sizeY, $row->sizeZ, $row->weight, $row->cost, $row->RRP, $row->TVA);
		
	    while (mysqli_stmt_fetch($stmt)) {
	      $rows[] = $row;
	      $row = new stdClass();
	      mysqli_stmt_bind_result($stmt, $row->idmodels, $row->STLfile, $row->name, $row->sizeX, $row->sizeY, $row->sizeZ, $row->weight, $row->cost, $row->RRP, $row->TVA);
	    }
		
		mysqli_stmt_free_result($stmt);
	    mysqli_close($this->connection);
	
	    return $rows;
	}

	/**
	 * Returns the item corresponding to the value specified for the primary key.
	 *
	 * Add authorization or any logical checks for secure access to your data 
	 *
	 * 
	 * @return stdClass
	 */
	public function get3DModelsByID($itemID) {
		
		$stmt = mysqli_prepare($this->connection, "SELECT * FROM $this->tablename where idmodels=?");
		$this->throwExceptionOnError();
		
		mysqli_stmt_bind_param($stmt, 'i', $itemID);		
		$this->throwExceptionOnError();
		
		mysqli_stmt_execute($stmt);
		$this->throwExceptionOnError();
		
		mysqli_stmt_bind_result($stmt, $row->idmodels, $row->STLfile, $row->name, $row->sizeX, $row->sizeY, $row->sizeZ, $row->weight, $row->cost, $row->RRP, $row->TVA);
		
		if(mysqli_stmt_fetch($stmt)) {
	      return $row;
		} else {
	      return null;
		}
	}

	/**
	 * Returns the item corresponding to the value specified for the primary key.
	 *
	 * Add authorization or any logical checks for secure access to your data 
	 *
	 * 
	 * @return stdClass
	 */
	public function create3DModels($item) {

		$stmt = mysqli_prepare($this->connection, "INSERT INTO $this->tablename (STLfile, name, sizeX, sizeY, sizeZ, weight, cost, RRP, TVA) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
		$this->throwExceptionOnError();

		mysqli_stmt_bind_param($stmt, 'sssssssss', $item->STLfile, $item->name, $item->sizeX, $item->sizeY, $item->sizeZ, $item->weight, $item->cost, $item->RRP, $item->TVA);
		$this->throwExceptionOnError();

		mysqli_stmt_execute($stmt);		
		$this->throwExceptionOnError();

		$autoid = mysqli_stmt_insert_id($stmt);

		mysqli_stmt_free_result($stmt);		
		mysqli_close($this->connection);

		return $autoid;
	}

	/**
	 * Updates the passed item in the table.
	 *
	 * Add authorization or any logical checks for secure access to your data 
	 *
	 * @param stdClass $item
	 * @return void
	 */
	public function update3DModels($item) {
	
		$stmt = mysqli_prepare($this->connection, "UPDATE $this->tablename SET STLfile=?, name=?, sizeX=?, sizeY=?, sizeZ=?, weight=?, cost=?, RRP=?, TVA=? WHERE idmodels=?");		
		$this->throwExceptionOnError();
		
		mysqli_stmt_bind_param($stmt, 'sssssssssi', $item->STLfile, $item->name, $item->sizeX, $item->sizeY, $item->sizeZ, $item->weight, $item->cost, $item->RRP, $item->TVA, $item->idmodels);		
		$this->throwExceptionOnError();

		mysqli_stmt_execute($stmt);		
		$this->throwExceptionOnError();
		
		mysqli_stmt_free_result($stmt);		
		mysqli_close($this->connection);
	}

	/**
	 * Deletes the item corresponding to the passed primary key value from 
	 * the table.
	 *
	 * Add authorization or any logical checks for secure access to your data 
	 *
	 * 
	 * @return void
	 */
	public function delete3DModels($itemID) {
		
		ob_start();
		$con = mysql_connect($this->server,  
					$this->username, 
					$this->password) or die(mysql_error());					
		mysql_select_db($this->databasename, $con) or die(mysql_error());
		$qry=mysql_query("SELECT * FROM printedModels where idmodels=".$itemID) or die(mysql_error());
	    $row=mysql_fetch_array($qry);
	    if($row["STLfile"]!="") 
	    {
	    	$file=$row["STLfile"];
	    	chmod($file, 0666);
	        unlink("php/models/".$file);
	    }
	    mysql_close();

		$stmt = mysqli_prepare($this->connection, "DELETE FROM $this->tablename WHERE idmodels = ?");
		$this->throwExceptionOnError();
		
		mysqli_stmt_bind_param($stmt, 'i', $itemID);
		mysqli_stmt_execute($stmt);
		$this->throwExceptionOnError();
		mysqli_stmt_free_result($stmt);		
		mysqli_close($this->connection);
		ob_clean();
	}


	/**
	 * Returns the number of rows in the table.
	 *
	 * Add authorization or any logical checks for secure access to your data 
	 *
	 * 
	 */
	public function count() {
		$stmt = mysqli_prepare($this->connection, "SELECT COUNT(*) AS COUNT FROM $this->tablename");
		$this->throwExceptionOnError();

		mysqli_stmt_execute($stmt);
		$this->throwExceptionOnError();
		
		mysqli_stmt_bind_result($stmt, $rec_count);
		$this->throwExceptionOnError();
		
		mysqli_stmt_fetch($stmt);
		$this->throwExceptionOnError();
		
		mysqli_stmt_free_result($stmt);
		mysqli_close($this->connection);
		
		return $rec_count;
	}


	/**
	 * Returns $numItems rows starting from the $startIndex row from the 
	 * table.
	 *
	 * Add authorization or any logical checks for secure access to your data 
	 *
	 * 
	 * 
	 * @return array
	 */
	public function get3DModels_paged($startIndex, $numItems) {
		
		$stmt = mysqli_prepare($this->connection, "SELECT * FROM $this->tablename LIMIT ?, ?");
		$this->throwExceptionOnError();
		
		mysqli_stmt_bind_param($stmt, 'ii', $startIndex, $numItems);
		mysqli_stmt_execute($stmt);
		$this->throwExceptionOnError();
		
		$rows = array();
		
		mysqli_stmt_bind_result($stmt, $row->idmodels, $row->STLfile, $row->name, $row->sizeX, $row->sizeY, $row->sizeZ, $row->weight, $row->cost, $row->RRP, $row->TVA);
		
	    while (mysqli_stmt_fetch($stmt)) {
	      $rows[] = $row;
	      $row = new stdClass();
	      mysqli_stmt_bind_result($stmt, $row->idmodels, $row->STLfile, $row->name, $row->sizeX, $row->sizeY, $row->sizeZ, $row->weight, $row->cost, $row->RRP, $row->TVA);
	    }
		
		mysqli_stmt_free_result($stmt);		
		mysqli_close($this->connection);
		
		return $rows;
	}
	
	
	/**
	 * Utility function to throw an exception if an error occurs 
	 * while running a mysql command.
	 */
	private function throwExceptionOnError($link = null) {
		if($link == null) {
			$link = $this->connection;
		}
		if(mysqli_error($link)) {
			$msg = mysqli_errno($link) . ": " . mysqli_error($link);
			throw new Exception('MySQL Error - '. $msg);
		}		
	}
}

?>
