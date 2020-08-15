<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Casting de dados</title>
	</head>
	<body>
		
		<?php
			
			//gettype() => retorna o tipo davariavel
			$valor = 10;
			//$valor2 = (float) $valor; // float, double, real 
			//$valor2 = (string) $valor;
		
			//$valor2 = (int) $valor; 
			$valor2 = (string) $valor;
			
			echo $valor . '  ' . gettype($valor);
			echo '<br/>';
			echo gettype($valor2);

		?>
		
	</body>
</html>
