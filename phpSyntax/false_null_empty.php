<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Empty e Null</title>
	</head>
	<body>

		<?php
			
			//false - (true / false) - tipo variavel boolean 
			//null e empty - valores especiais 


			$funcionario = null;
			$funcionario2 = ' ';

			//valores null 
			if(is_null($funcionario)) {
				echo 'Sim, a variavel e null';
			} else {
				echo 'Nao, a variavel e null';
			}
		?>
		
	</body>
</html>
