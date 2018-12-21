<%-- 
    Document   : index
    Created on : 12/12/2018, 12:13:58 PM
    Author     : Daniel Alejandro 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

            <meta charset="utf-8">
            <!-- El meta viewport permite que sea adaptable la pagina -->
            <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" >
            <!-- Esta es para la letra en este caso es el estilo de open sans, por lo cual se necesita una conexion a intenet para poder acceder a la fuente  -->
            <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,700" rel="stylesheet">
            <!-- Para conectar estilos css -->
            
            <link rel="stylesheet" type="text/css" href="css/estilos2.css">
    
            <script src="js/main.js"></script>
        <title>Iniciar Sesion</title>
    </head>
    <body>
                        <header>
                            <div class="contenedor">
                                <nav class="menu">
                                    <a href="index.jsp" id="btn-acerca-de">PAGINA PRINCIPAL</a>
                                    
                                </nav>

                                <div class="textos">
                                    <!-- Con el span se logra el efecto de diferente -->
                                    <h1 class="nombre">.</h1>
                                    
                                </div>
                                
                            </div>
                    </header>
        <h1>Iniciar Sesion</h1>
        

                    <section class="main">
                        <form action="iniciardoc" method="post" class="formulario" id="forminicio">
                        <h1 class="formulario__titulo">Accede a tu cuenta Doc</h1>

                        <input type="text" name="usuario" id="txtusuario" maxlength="10"  class="formulario__input" placeholder="Usuario">
                        <input type="password" name="pass" id="txtpass" maxlength="12"  class="formulario__input" placeholder="Contraseña">
                          
                        <input type="button" class="formulario__submit" id="btniniciar" value="Iniciar Sesion" onclick="#">
                    </form>

                    <footer>
                         <div class="contenedor">
                            <div class="copyright">
                                <p>Copyright DanoDaann @ 2018 </p>
                            </div>
                         </div>
                    </footer>
    </body>
</html>
