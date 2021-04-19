<?php

    class Veiculo {
        public $placa = null;
        public $cor = null;

        function acelerar() {
            echo 'Acelerar';
        }

        function freiar() {
            echo 'Freiar';
        }
    }

    class Carro extends Veiculo {
        public $teto_solar = true;

        function __construct($placa, $cor) {
            $this->placa = $placa;
            $this->cor = $cor;
        }

        function abrirTetoSolar() {
            echo 'Abrir teto solar';
        }

        function alterarPosicaoVolante() {
            echo 'Alterar posicao volante';
        }
    }

    class Moto extends Veiculo {
        public $contraPesoGuidao = true;

        function __construct($placa, $cor) {
            $this->placa = $placa;
            $this->cor = $cor;
        }

        function mandarUmGrau() {
            echo 'Mandando aquele grau';
        }
    }

    $car1 = new Carro('ABC1234', 'Branco');
    $moto1 = new Moto('DCS4321', 'Preto');

    echo '<pre>'; 
    print_r($car1);
    echo '<br />'; echo '<br />'; 
    print_r($moto1);
    echo '</pre>';
    
    echo '<hr />';

    $car1->abrirTetoSolar();
    echo '<br />';
    $car1->acelerar();
    echo '<br />';
    $car1->freiar();

    echo '<hr />';

    $moto1->mandarUmGrau();
    echo '<br />';
    $moto1->acelerar();
    echo '<br />';
    $moto1->freiar();

?>