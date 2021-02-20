<?php
/*
    strtolower(); -> Transforma todos os caracteres da string em minusculas
    strtoupper();
    ucfirst();
    strlen();
    str_replace(<procura por>, <substitui por>, $texto);

    strstr($texto, <posicao inicial>, <qtd caracteres>);

   */

   $texto = 'Curso COMPLETO de php';
   echo strtolower($texto);

   echo '<br/> <hr/>'; /* */

   $texto = 'Curso COMPLETO de php';
   echo strtoupper($texto);

   echo '<br/> <hr/>'; /* */
  
   $texto = 'curso completo de php';
   echo ucfirst($texto);

   echo '<br/> <hr/>'; /* */
  
   $texto = 'curso completo de php';
   echo 'Os numeros de caracteres sao: ' . strlen($texto) . '<br/>';
   $texto = 'cursocompletodephp';
   echo 'Os numeros de caracteres sao: ' . strlen($texto). '<br/>';

   echo '<br/> <hr/>'; /* */

   $texto = 'curso completo de php';
   echo str_replace('php', 'c++', $texto);

   echo '<br/> <hr/>'; /* */

   $texto = 'curso completo de php';
   $texto = 'curso completo de php';
   echo substr($texto, 0, 14) . ' ...';

?>
