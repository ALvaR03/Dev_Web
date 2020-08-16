<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Switch</title>
	</head>
	<body>
		
		<?php

			$paranmetro = 2;

			switch ($paranmetro) {
				case 1:
					echo 'Entro no case 1';
					break;

				case 2:
					echo 'Entro no case 2';
					break;

				case 3:
					echo 'Entrou no case 3';
					break;
				
				default:
					echo 'Entrou no default';
					break;
			}

		?>
		
	</body>
</html>
