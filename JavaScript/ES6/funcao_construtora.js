let Carro = function() {

    this.cor = 'Amarelo';
    this.modelo = 'Chevete';
    this.velocidadeAtual = 0;
    this.velocidadeMaxima = 180;
    this.acelerar = function() {
        //this.velocidadeAtual += 10
        let velocidade = this.getVelocidadeAtual() + 10;
        this.setVelocidadeAtual(velocidade);
    }

    this.getVelocidadeAtual = () => {
        return this.velocidadeAtual;
    }

    this.setVelocidadeAtual = (velocidadeAtual) => {
        this.velocidadeAtual = velocidadeAtual;
    }
}


let carro = new Carro();

console.log(`A velocidade atual e: ${carro.getVelocidadeAtual()}`); 
carro.acelerar();
carro.acelerar();
carro.acelerar();
console.log(`A velocidade atual e: ${carro.getVelocidadeAtual()}`); 