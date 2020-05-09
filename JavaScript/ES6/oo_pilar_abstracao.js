

class ContaBancaria {
    constructor() {
        this.agencia = 1075
        this.conta = 18237
        this.saldo = 50
        this.limite = 450
    }


    depositar(valorDeposito) {
        this.saldo += valorDeposito
    }

    sacar(valorSaque) {
        this.saldo -= valorSaque
    }

    consultarSaldo() {
        return this.saldo
    }

}

let minhaConta = new ContaBancaria()
minhaConta.depositar(1000)
console.log(minhaConta.consultarSaldo())

minhaConta.sacar(800)
console.log(minhaConta.consultarSaldo())