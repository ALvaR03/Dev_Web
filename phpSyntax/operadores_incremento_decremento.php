<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Operadores</title>
	</head>
	<body>
		
		<h3>Pos-incremento</h3>
		<?php 
			
			$a = 7;
			echo "O valor contido em a e $a <br/>";
			echo 'O valor contido em a apos o incremento e ' . $a++ . ' <br/>';
			echo 'O valor atualizado e ' . $a++ . ' <br/>';

		?>

		<h3>Pre-incremento</h3>
		<?php 
			
			$a = 7;
			echo "O valor contido em a e $a <br/>";
			echo 'O valor contido em a apos o incremento e ' . ++$a . ' <br/>';
			echo 'O valor atualizado e ' . $a++ . ' <br/>';

		?>

		<h2>Vale tambem para o decremento</h2>
		
	</body>
</html>
