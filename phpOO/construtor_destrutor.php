<?php

    class Pessoa {

        public $nome = null;

        function __construct($nome) {
            echo 'Objeto iniciado';
            $this->nome = $nome;
        }

        function __destruct() {
            echo 'Objeto removido';
        }

        function __get($atributo) {
            return $this->$atributo;
        }

        function correr() {
            return $this->__get('nome') . ' esta correndo';
        }

    }

    $psa = new Pessoa('Jorge');
    echo '<br/> Nome: ' . $psa->__get('nome');
    echo '<br/>' . $psa->correr();
    
    echo '<br/>';
    //unset($psa); // proposital

?>