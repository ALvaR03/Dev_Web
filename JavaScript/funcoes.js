//Inicio 
/* -==-==--=-=-     exemplo de funcao   -=-=-=-=-=----= 

//A funcao pode ser de dois tipos 'void' e 'retorno'

function calcularAreaTerreno( largura, comprimento) {

   //logica
   var area = largura * comprimento;

    return area;
}

var largura = prompt('Digite a largura do terreno em metros');
var comprimento = prompt('Digite a comprimento do terreno em metros');

    largura = parseInt(largura);
    comprimento = parseInt(comprimento);

        var area = calcularAreaTerreno(largura, comprimento);

            document.write('O terreno possui ' + area + ' metros quadrados');
=-=-=-=-=-=-=-=-==-=--=-==-==-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-==-=-=-=*/


    function soma() {
        var resultado = 0
        for (var i in arguments) {
            resultado += arguments[i]
        }

        return resultado
    }

    console.log(soma(3, 5, 3.70, 21, 'NaoTemComo'))