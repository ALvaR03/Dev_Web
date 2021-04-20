<?php 

    class MinhaExeptionCustomizada extends Exception {

        private $erro = '';

        public function __construct($erro) {
            $this->erro = $erro;
        }

        public function exibirMensagemErroCustomizada() {
            echo '<div style="border: solid 1px #000; padding: 15px; background-color: red; color: white;">';
                echo $this->erro;
            echo '</div>';
        }

    }

    try {
        throw new MinhaExeptionCustomizada('Esse e um erro de teste');
    } catch (MinhaExeptionCustomizada $e) {
        echo $e->exibirMensagemErroCustomizada();
    }

?>