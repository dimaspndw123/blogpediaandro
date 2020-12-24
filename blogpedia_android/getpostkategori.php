<?php

	include "connection.php";

	$get = $_GET['idkategori'];

	$queryresult = mysqli_query($connect, 'SELECT * FROM post WHERE post.idkategori = "idkategori"');
		


	$result = array();

	while($fetchData = $queryresult->fetch_assoc()){

		$result[]=$fetchData;
	}

	echo json_encode($result);

	?>