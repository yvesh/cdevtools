<?php
/* Creates the 4 databases */

$dbs = array("j33d", "j33_test", "j25d", "j25_test");
$con = new mysqli("localhost", "root", "");

if ($con->connect_error)
{
	die("Connection failed: " . $con->connect_error);
}

foreach ($dbs as $db)
{
	$sql = "CREATE DATABASE IF NOT EXISTS " . $db;

	if ($con->query($sql) !== TRUE) 
	{
		echo "Error creating db " . $con->error;
	}
}

echo "Successfully created the databases: " . implode(", ", $dbs);

$con->close();
