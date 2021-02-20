<?php

function calcularAreaTerreno($largura, $comprimento) {
	$area = $largura * $comprimento; 
	return $area;
}

echo calcularAreaTerreno(30, 50) . PHP_EOL;

?>
