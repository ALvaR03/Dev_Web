let Bicicleta1 = {
    cor: "Braca",
    marcha: "Unica",
    aro: 12,
    pedala() { console.log("Metodo pedalar executado") }
}

let Bicicleta2 = {
    cor: "Braca",
    marcha: "18",
    aro: 26,
    pedala() { console.log("Metodo pedalar executado") }
}

console.log(Bicicleta1)
console.log(Bicicleta2)

let BicicletaFactory = function(cor, marcha, aro) {
    return {
        cor,
        marcha,
        aro,
        pedalar() { console.log("Metodo pedadar Executado") }
    }
}

let Bicicleta3 = BicicletaFactory("Vermelha", "18", 26)
console.log(Bicicleta3)

let Bicicleta4 = BicicletaFactory("Vermelha", "21", 29)
console.log(Bicicleta4)

console.log(`Cor: ${Bicicleta3.cor}`)
Bicicleta3.pedalar()