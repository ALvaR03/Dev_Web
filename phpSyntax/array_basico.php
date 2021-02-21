<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Array Basico</title>
	</head>
	<body>
		
		<?php
			$listaCarros = array('Fiat', 'Renout', 'Hynday');
			echo '<pre>';
				var_dump($listaCarros);
			echo '</pre>';
			echo $listaCarros[1];
			//sequencias (numericos)
			//$lista_frutas = array("Banana", "Maca", "Morarango", "Uva");
			/*
			$lista_frutas = [ "Banana", "Maca", "Morarango", "Uva" ];
			$lista_frutas[] = 'Abacaxi';

				echo '<pre>';
					var_dump($lista_frutas);
				echo '</pre>';
				echo '<hr/>';
				echo '<pre>';
					print_r($lista_frutas);
				echo '</pre>';

			echo $lista_frutas[4];
			 */

			//assosiativos
			$lista_frutas = array(
				'a' => "Banana", 
				'b' => "Maca", 
				'x' => "Morarango", 
				'z' => "Uva",
				'2' => "Abacate"
			);
			echo '<pre>';
			var_dump($lista_frutas);
			echo '</pre>';
			echo $lista_frutas['2'];
		?>
		
	</body>
</html>
