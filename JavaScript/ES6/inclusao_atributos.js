let pessoa = {
    nome: 'Maria', 
    idade: 25,
}

console.log(pessoa.nome);

//----------------

pessoa.sexo = 'Feminino';

console.log(pessoa);

pessoa.dizerOi = () => console.log('Ola, tudo bem?');

pessoa.dizerOi();