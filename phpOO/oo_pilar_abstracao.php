<?php

    // Modelo
    class Funcionario {
        
        // atributos
        public $nome = null;
        public $telefone = null;
        public $numFilhos = null;
        public $cargo = null;
        public $salario = null;

        //getters setters (overloading / sobrecargar)
        function __set($atributo, $valor) {
            $this->$atributo = $valor;
        }
        
        function __get($atributo) {
            return $this->$atributo;
        }

        /*    
         function setNome($nome) {
             $this->nome = $nome;
            }
            
            function setTelefone($telefone) {
                $this->telefone = $telefone;
        }
        
        function setNumFilhos($numFilhos) {
            $this->numFilhos = $numFilhos;
        }
        ##############
        function getNome() {
            return $this->nome;
        }
        
        function getTelefone() {
            return $this->telefone;
        }
        
        function getNumFilhos() {
            return $this->numFilhos;
        }
  
         */

        // metodos
        function resumirCadFunc() {
            return $this->__get('nome') . " possui " . $this->__get('numFilhos') . " Filho(s)";
        }

        function modificarNumFilhos($numFilhos) {
            // afetar um atributo do objeto
            $this->numFilhos = $numFilhos;
        }
    }

    $func01 = new Funcionario();
    $func01->__set('nome', 'Jose Farias');
    $func01->__set('numFilhos', 2);
    echo $func01->resumirCadFunc();
    //echo $func01->__get('nome') . ' possui ' . $func01->__get('numFilhos') . ' Filhos(s) ';
    
    echo '<br/>';
    echo '<br/>';
    $func02 = new Funcionario();
    $func02->__set('nome', 'Maria Eduarda');
    $func02->__set('numFilhos', 10);
    //echo $func02->__get('nome') . ' possui ' . $func02->__get('numFilhos') . ' Filhos(s) ';
     
    
?>