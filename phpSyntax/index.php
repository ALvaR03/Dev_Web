<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Curso PHP</title>
	</head>
	<body>
		<?php

			$idade = 14;
			$peso = 30;

			if ($idade > 16 && $idade < 69 && $peso >= 50) {
				echo "Atende aos requisitos";
			} else {
				echo "Nao atente aos requisitos";
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
