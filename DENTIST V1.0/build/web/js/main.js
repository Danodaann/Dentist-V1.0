//Validacion de login
window.addEventListener('load', function (){
    document.getElementById('btniniciar').addEventListener('click', function(){
        var nombre = document.getElementById('txtusuario').value;
        var contraseña = document.getElementById('txtpass').value;
        
        var bandera = false;
        
        if(nombre.length > 0 && contraseña.length > 0){
            bandera = true;
        }
        
        if (bandera){
            document.getElementById('forminicio').submit();
        }else{
            alert('Por Favor Llenar todos los campos');
        }
    });
});

// Validacion Registro
window.addEventListener('load', function (){
    document.getElementById('btniniciar').addEventListener('click', function(){
        var usuario = document.getElementById('usuario').value;
        var nombre = document.getElementById('nombre').value;
        var apellido = document.getElementById('apellidos').value;
        var contraseña = document.getElementById('password').value;
        
        var bandera = false;
        
        if(usuario.length > 0 && nombre.length > 0 && apellido.length > 0 && contraseña.length > 0){
            bandera = true;
        }
        
        if (bandera){
            document.getElementById('forminicio').submit();
        }else{
            alert('Por Favor Llenar todos los campos');
        }
    });
});




