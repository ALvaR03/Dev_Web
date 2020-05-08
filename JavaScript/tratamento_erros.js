
var video = Array()

video[1] = Array()
video[1]['nome'] = 'Fulmetal Alquimist'
video[1]['categoria'] = 'Anime'

    function getVideo(video) {

        try {
        //logica
        //http
            console.log(video[0]['nome'])
        } catch(erro) {
            console.log(erro)
            console.log('Agora sim podemos tratar esse error')
            throw new Error('Houve um error mas nao se preocupe, estamos trabalhando nisso agora!!')
        } finally {
            console.log('Sempre passa por aqui (try / catch)')
        }

    }

    console.log('A aplicacao nao morreu')

    function tratarErro(e) {
        //logica 
        console.log(e)
    }

    getVideo(video)