<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Funcoes Strings</title>
	</head>
	<body>

		<?php
			$texto = 'Curso completo de PHP';

			//string to lower 
			echo $texto . '<br/>';
			echo strtolower($texto);

			echo '<hr/>';
			//string to upper
			echo $texto . '<br/>';
			echo strtoupper($texto);

			echo '<hr/>';
			//upper case first
			echo $texto . '<br/>';
			echo ucfirst($texto);

			echo '<hr/>';
			//string lenght
			echo $texto . '<br/>';
			echo strlen($texto);
			
			echo '<hr/>';
			//string replace
			echo $texto . '<br/>';
			echo str_replace('PHP', 'JavaScript', $texto);

			echo '<hr/>';
			//string replace
			echo $texto . '<br/>';
			echo substr($texto, 6, 8);

		?>
		
	</body>
</html>
