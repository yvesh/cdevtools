<?php
/**
 * Imports the extension SQL to the 4 joomla installations
 */

$sql = file_get_contents("extension_sql_2015-01-08.sql");
// $dbs = array("j33d", "j33_test", "j25d", "j25_test");

// Only none-testing sites?
$dbs = array("j33d", "j25d");

foreach ($dbs as $db)
{
	$link = mysqli_connect("localhost", "root", "", $db);

	/* check connection */
	if (mysqli_connect_errno($link))
	{
   		printf("Connect failed: %s\n", mysqli_connect_error());
    		exit();
	}

	if (mysqli_multi_query($link, $sql))
	{
		echo "Import successfull <br />";
	}
	else
	{
		echo "Error importing " . $db . " " . mysqli_error($link);
	}

	mysqli_close($link);
}
