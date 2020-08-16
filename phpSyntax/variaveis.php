<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Variaveis</title>
	</head>
	<body>
		<?php

			//string
			$nome = "Alvaro Lima <br/>";
			//int
			$idade = 21;
			//float
			$peso = 82.5;

			//boolean
			$diabetico = false;


		?>

			<h1>Ficha cadastral</h1>
			<br/>
			<p>Nome: <?= $nome ?> </p>
			<p>Idade: <?= $idade?></p>
			<p>Peso: <?= $peso?></p>
			<p>Tem diabets: <?= $diabetico?></p>
		
			

	</body>
</html>
