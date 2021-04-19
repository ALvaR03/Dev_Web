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

        function trocarMarcha() {
            echo 'Desengatar embreagem com o pe e engatar marcha com mao';
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

        function trocarMarcha() {
            echo 'Desengatar embreagem com o mao e engatar marcha com pe';
        }

    }

    class Caminhao extends Veiculo {

    }

    $car1 = new Carro('ABC1234', 'Branco');
    $moto1 = new Moto('DCS4321', 'Preto');
    $camilhao1 = new Caminhao();

    $car1->trocarMarcha();
    echo '<br />';
    $moto1->trocarMarcha();
    echo '<br />';
    $camilhao1->trocarMarcha();

?>