<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Curso PHP</title>
	</head>
	<body>
		<?php

			$var;
			switch($var) {
				case 1:
					echo 'Entrou no case 1';
					break;
				case 2:
					echo 'Entrou no case 2';
					break;
				default:
					echo 'Valor default <br/>';
					break;
			}
			var_dump($var);

		?>

		<h1>Detalhes do pedido</h1>
		<p> Possui cartao da loja?
			<?php
				if($usuario_possui_cartao_loja == true) {
					echo 'Sim';
				} else {
					echo 'Nao';
				}
			?>
		</p>
		<p>Valor da compra: <?= $valor_compra?> </p>


		<p> Recebeu descomto no frete?
			<?php
				if($usuario_possui_cartao_loja == true) {
					echo 'Sim';
				} else {
					echo 'Nao';
				}
			?>
		</p>

		<p>Valor da compra: <?= $valor_frete?> </p>
	</body>
</html>
