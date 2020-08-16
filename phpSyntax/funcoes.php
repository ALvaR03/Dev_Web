<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Funcoes</title>
	</head>
	<body>

		<?php

			//void (sem retorno)
			function exibirBoasVindas() {
				echo 'Bem vindo ao curso de PHP <br/>';	
			}
			
			exibirBoasVindas();

			//return (com torno)
			function calcularAreaTerreno($largura, $comprimento) {
				$area = $largura * $comprimento;
				return $area;
			}

			echo calcularAreaTerreno(30, 50);
			echo '<br/>';
			echo calcularAreaTerreno(21, 25);

			$resultado = calcularAreaTerreno(54, 60);
			echo '<br/>';
			echo $resultado;

		?>
		
	</body>
</html>
