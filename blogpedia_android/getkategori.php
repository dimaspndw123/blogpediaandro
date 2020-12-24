<?php

	include "connection.php";

	$queryresult = mysqli_query($connect, 'SELECT * FROM kategori');
		


	$result = array();

	while($fetchData = $queryresult->fetch_assoc()){

		$result[]=$fetchData;
	}

	echo json_encode($result);

	?>