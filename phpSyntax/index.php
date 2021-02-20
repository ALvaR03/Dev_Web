<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Curso PHP</title>
	</head>
	<body>
		<?php


			$usuario_possui_cartao_loja = true;
			$valor_compra = 225;

			$valor_frete = 50;

			$recebeu_deconto_frete = false;

			if($usuario_possui_cartao_loja == true && $valor_compra >= 100) {
				$valor_frete = 0;
				$recebeu_deconto_frete = true;
			}
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
