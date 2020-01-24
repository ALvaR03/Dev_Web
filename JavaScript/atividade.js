//Inicio

var nao tem como;
var nome = prompt('Digite seu nome:');
var altura = prompt('Altura sem ponto e nem virgula:');
var peso = prompt('Peso em quilos: ');


altura = parseFloat(altura);
peso = parseFloat(peso);

altura = altura / 100;


var imc = peso /(altura * altura);

var classificacao = '';

    if(imc < 16) {
        classificacao = ' Baixo peso muito grave ';
    } else if(imc >= 16 && imc <= 16.99) {
        classificacao = ' Baixo peso grave ';
    } else if(imc >= 17 && imc <= 18.49) {
        classificacao = ' Baixo peso ';
    } else if(imc >= 18.50 && imc <= 24.99) {
        classificacao = ' Peso normal ';
    } else if (imc >= 25 && imc <= 29.99) {
        classificacao = ' Sobre Peso ';
    } else if(imc >= 30 && imc <= 34.99) {
        classificacao = ' Obsidade grau 1 ';
    } else if (imc >= 35 && imc <= 39.99) {
        classificacao = ' Obsidade grau 2 ';
    } else { //se nao tiver enquadrado acima, o imc so pode ser maior que 40
        classificacao = ' Obesidade grau 3 ';
    }

document.write(nome + ' possui o indice de massa corporal igual a ' + 
imc + ' sendo classificado como ' + classificacao);
