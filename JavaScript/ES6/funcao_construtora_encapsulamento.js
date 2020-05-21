let Carro = function() {

    this.cor = 'Amarelo'
    this.modelo = 'Chevete'
    this.velocidadeAtual = 0
    this.velocidadeMaxima = 180
    this.acelerar = function() {
        let velocidade = this.getVelocidadeAtual() + 10;
        if(velocidade > this.velocidadeMaxima) {
            velocidade = this.velocidadeMaxima
        }
        this.setVelocidadeAtual(velocidade)
    }

    this.getVelocidadeAtual = () => {
        return this.velocidadeAtual
    }

    this.setVelocidadeAtual = (velocidadeAtual) => {
        this.velocidadeAtual = velocidadeAtual
    }
}

let carro = new Carro()
console.log(carro.velocidadeAtual)
carro.acelerar()
console.log(carro.velocidadeAtual)
carro.acelerar()
console.log(carro.velocidadeAtual)
carro.acelerar()
console.log(carro.velocidadeAtual)
carro.acelerar()
console.log(carro.velocidadeAtual)



let Carro2 = function() {

    var velocidadeMaxima = 180
    var quilometrosRodados = 0

    this.cor = 'Amarelo'
    this.modelo = 'Chevete'
    this.velocidadeAtual = 0
    this.acelerar = function() {
        let velocidade = this.getVelocidadeAtual() + 10;
        if(velocidade > velocidadeMaxima) {
            velocidade = velocidadeMaxima
        }
        this.setVelocidadeAtual(velocidade)
    }

    this.getVelocidadeAtual = () => {
        return this.velocidadeAtual
    }

    this.setVelocidadeAtual = (velocidadeAtual) => {
        this.velocidadeAtual = velocidadeAtual

        setQuilometrosRodados(0.07)
        console.log(quilometrosRodados)
    }

    var setQuilometrosRodados = function(q) {
        quilometrosRodados += q
    }

}

let carro2 = new Carro2()
console.log(carro2.velocidadeAtual)
carro2.acelerar()
console.log(carro2.velocidadeAtual)
carro2.acelerar()
console.log(carro2.velocidadeAtual)
carro.acelerar()
console.log(carro2.velocidadeAtual)
carro2.velocidadeMaxima = 280
carro2.acelerar()
console.log(carro2.velocidadeAtual)

console.log(carro)
console.log(carro2)