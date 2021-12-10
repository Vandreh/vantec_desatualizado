<?php  
	
	# Erros
	ini_set("display_errors", 1);

	# Váriaveis de controle
	$host = "localhost";
	$user = "vandreh";
	$password = "";
	$database = "db_vantec";

	# Função de conexão
	$conn = mysqli_connect($host,$user,$password,$database) or die(mysqli_connect_error());
	
	
?>