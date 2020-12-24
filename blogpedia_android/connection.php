<?php

	$host = 'localhost';
	$db = 'miniblog';
	$username = 'root';
	$password = '';

	$connect = mysqli_connect($host, $username, $password, $db) or die('Koneksi database gagal');

	if ($connect) {
		
	}else{
		echo 'Connection failed';
	}