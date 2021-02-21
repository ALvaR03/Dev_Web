<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Funcoes nativar para arrays</title>
    </head>
    <body>

        <?php

            /*
            $array = array('notebook', 'teclado');
            $retorno = is_array($array);
            
            if ($retorno) {
                echo 'Sim, e um array';
            } else {
                echo 'Nao, nao e um array';
            } */

            /*
            $array = [1 => 'a', 7 => 'b', 18 => 'c'];
            echo '<pre>';
                print_r($array);
            echo '</pre>';

            $chaves_array = array_keys($array);
            echo '<pre>';
                print_r($chaves_array);
            echo '</pre>';
            */

            /*
            $array = array('mouse', 'cabo hdmi', 'gabinete', 'fonte atx', 'notebook');
            echo '<pre>';
                print_r($array);
            echo '</pre>';

            sort($array);
            echo '<pre>';
                print_r($array);
            echo '</pre>';
            echo '<hr/>';
            $array = array('mouse', 'cabo hdmi', 'gabinete', 'fonte atx', 'notebook');
            echo '<pre>';
                print_r($array);
            echo '</pre>';

            asort($array);
            echo '<pre>';
                print_r($array);
            echo '</pre>';
            */

            /*
            $array = array('mouse', 'cabo hdmi', 'gabinete', 'fonte atx', 'notebook');
            echo '<pre>';
                print_r($array);
                echo 'Numeros de indices do array: ' . count($array);
            echo '</pre>';
            */

            /*
            $array = ['osx', 'windows'];
            $array2 = array('linux');
            $array3 = ['solaris'];

            $novo_array = array_merge($array, $array2, $array3);
            echo '<pre>';
                print_r($novo_array);
            echo '</pre>';
            */
            
            /*
            $string = '26/01/2011';
            $array_retorno = explode('/', $string);
            echo '<pre>';
                echo $string . '<br/>';
                print_r($array_retorno);
            echo '</pre>';
            */

            $array = ['a', 'b', 'x', 'y'];
            $string_retorno = implode(',', $array);
            echo $string_retorno;


        ?>
        
    </body>
</html>