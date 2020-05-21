class Animal {
    constructor(cor, tamanho, peso) {
        this.cor = cor;
        this.tamanho = tamanho;
        this.peso = peso;
    }

    dormir() {
        console.log('Dormir');
    }

}


class Passaro extends Animal {
    constructor(bico, cor, tamanho, peso) {
        super(cor, tamanho, peso);
        this.bico = 'Curto';
    }

    voar() {
        console.log('voar');
    }

}


class Papagaio extends Passaro {
    constructor(sabefalar, cor, tamanho, peso) {
        super('Medio', cor, tamanho, peso);
        this.sabefalar = sabefalar;
    }

    falar() {
        console.log("falar");
    }
}

class Avestruz extends Passaro {
    constructor() {
        super('Grande', 'Branco e Preto', 250, 15000);
    }

    enterrarCabeca() {
        console.log('Enterrar a cabeca');
    }

    voar() {
        console.log('Nao sabe voar');
    }

}

let papagaio = new Papagaio(true, 'verde', '25', '350');
console.log(papagaio);

papagaio.voar();

let avestruz = new Avestruz();
avestruz.voar();