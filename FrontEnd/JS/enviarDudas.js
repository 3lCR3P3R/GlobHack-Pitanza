var formulario = document.getElementById('formContactenos')

formulario.addEventListener('submit', function(e){
    e.preventDefault();
    console.log('me diste click click')

    var datos = new FormData(formulario)
    console.log(datos)
    console.log(datos.get('nombre'))
    console.log(datos.get('correo'))
    console.log(datos.get('telefono'))
    console.log(datos.get('mensaje'))

    fetch('../HTML/enviarDudas.php',{
        method: 'POST',
        body: datos
    })
    .then(res => res.json())
    .then(data => {
        alert(data)
    })
})