<?php

	include "connection.php";

	$queryresult = mysqli_query($connect, 'SELECT * FROM post JOIN users ON post.idpenulis = users.id JOIN kategori ON post.idkategori = kategori.id WHERE users.role = "penulis"');
		


	$result = array();

	while($fetchData = $queryresult->fetch_assoc()){

		$result[]=$fetchData;
	}

	echo json_encode($result);

	?>