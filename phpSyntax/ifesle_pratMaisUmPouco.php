<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Curso Php</title>
	</head>
	<body>
		<?php
			//O valor padra de uma variavel boleana e treu
			$usuario_possui_cartao_loja = true;
			$valor_compra = 50;

			$valor_frete = 50;
			$recebeu_deconto_frete = false;
 
			if($usuario_possui_cartao_loja == true && $valor_compra >= 400) {
				$valor_frete = 0;
				$recebeu_deconto_frete = true;

			} else if($usuario_possui_cartao_loja == true && $valor_compra >= 300) {
				$valor_frete = 10;
				$recebeu_deconto_frete = true;

			} else {
				$recebeu_deconto_frete = false;
			}

		?>

		<h1>Detalhes do pedido</h1>
		<p>Possui caratao da loja? <?= $usuario_possui_cartao_loja ? 'SIM' : 'NAO'; ?>
			<?php
				// <condicao> ? true : false <= operador ternario
			
				

			/*
				if($usuario_possui_cartao_loja == true) {
					echo 'SIM';
				} else {
					echo 'NAO';
				}
			 */

			?>
		</p>

		<p>Valor da compra: <?= $valor_compra ?></p>

		<p>Recebeu desconto no frete?
			<?php

				$teste = $recebeu_deconto_frete ? 'SIM' : 'NAO';

				echo $teste;

			/*
				if($recebeu_deconto_frete == true) {
					echo 'SIM';
				} else {
					echo 'NAO';
				}
			*/
			?>
		</p>

		<p>Valor do frete: <?= $valor_frete ?></p>

	</body>
</html>
