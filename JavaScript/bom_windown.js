

/*      -=-==-= Exemplo 1 =-=-=-=-=-

var janela

function abrirPopUp() {
    janela = window.open('http://www.duckduckgo.com', 'nova_janela', 'width=800, hight=300')
}

function fecharPopUp() {
    janela.close()
}
*/

/*      -=-=-=-=-=-= Exemplo 2 =-=-=-=-=-=-
var altura = window.screen.availHeight
var largura = window.screen.availWidth

document.write('Altura do navegador e:' + altura + '<br/>')
document.write('Largura do navegador e:' + largura + '<br/>')

    if (largura < 500) {
        document.write('Logica para impresao do menu versao mobile')
    } else {
        document.write('Logica para impresao do menu versao web')
    }
*/

//window.location.href="http://www.duckduckgo.com"

var i = 5
//setTimeout(function() { document.write('Testando ele' + '<br/>')}, 2000)

var x = setInterval(function() { document.write(i + '<br/>') 
    i--
    if (i === 0) {
        clearInterval(x)
    }

}, 1000)