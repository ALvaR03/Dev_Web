
//Aviao
//Atributos cor e metodo; metodo levaterVoo
let a1 = {
    cor: "Braco",
    modelo: "AirBus A380",
    levantarVoo: function() {  console.log("Levantar Voo")  }
}

//Funcao construtora
let AviaoF = function() {
    this.cor  = "Azul",
    this.modelo = "Boing 787",
    this.levantarVoo = function() { console.log("levetar Voo")  }
}

let a2 = new AviaoF()

//classe
class AviaoC {
    constructor() {
        this.cor = "Vermelho",
        this.modelo = "Embraer E-jets"
    }

    levantarVoo() {
        console.log("levantar Voo")
    }
}

let a3 = new AviaoC()

console.log(a1)
console.log(a2)
console.log(a3)