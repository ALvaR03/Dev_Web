

let a = 10 
let b = 7 

let operador = 'mult'

function calcular(a, b, operador) {
    if(operador === 'mult') {
        console.log(a * b)
    }
}

calcular(a, b, operador)

//-=-=-=-=-=-=-=-=-=-=-=

class Calculadora {
    constructor() {
        this.a = 10
        this.b = 7
        this.operador = 'mult'
    }

    calcular() {
        if(this.operador === 'mult') {
            console.log(this.a * this.b)
        }
    }
}

Calculadora = new Calculadora()
Calculadora.calcular()

