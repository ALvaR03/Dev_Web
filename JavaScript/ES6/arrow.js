

class Tabuada {
    constructor(numero, valores) {
        this.numero = numero;
        this.valores = valores;
    }

    get tabela() {
        return this.valores.map(valor => {
            return {
                nuemro: this.numero, 
                valor: valor, 
                resultado: this.resultado * valor
            } 
        });
    }

}

let x = new Tabuada(4, [2, 3, 4])
console.table(x.tabela)
