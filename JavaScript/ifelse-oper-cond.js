/*Inicio
 * 
 * Igual(==)
 * Identico(===)
 * Diferente (!=)
 * Nao identico(!==)
 * Menor(<)
 * Maior(>)
 * Menor igual(<=)
 * Maior igual(>=)

if(2 == 2){
	console.log('Entrou dentro do bloco if (verdadeiro)');

} else {
	console.log('Entrou dentro do bloco else (falso)');

}

//Informar se um aluno foi aprovado ou nao 

var nota = prompt('Digite a nota do aluno:');
var media = 7;

if(nota >= media){
	console.log('Aprovado');

} else {
	console.log('Reprovado');

}
*/

var nota = prompt('Digite a nota do aluno:');
var faltas = prompt('Digite a quantidade de faltas:');

var media = 7;
var faltas_maximas = 15;

/*

if(nota >= media && faltas <= faltas_maximas){
	console.log('Aprovado');
	//logica
} else {
	console.log('Reprovado');
	//logica
}

*/

//Operador ternario 
var resultado = (nota >= media && faltas <= faltas_maximas) ? 'Aprovado' : 'Reprovado';
document.write(resultado)