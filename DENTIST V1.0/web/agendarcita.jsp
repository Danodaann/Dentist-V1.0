<%-- 
    Document   : index
    Created on : 12/12/2018, 12:13:58 PM
    Author     : Daniel Alejandro 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <!-- El meta viewport permite que sea adaptable la pagina -->
                <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" >
                <!-- Esta es para la letra en este caso es el estilo de open sans, por lo cual se necesita una conexion a intenet para poder acceder a la fuente  -->
                <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,700" rel="stylesheet">
                <!-- Para conectar estilos css -->
                
                <link rel="stylesheet" type="text/css" href="css/estilos2.css">
                <script src="js/main.js"></script>
                <title>Agendar Cita</title>
    </head>
    <body>


        <header>
            <div class="contenedor">
                <nav class="menu">
                    <a href="menu.jsp" id="btn-acerca-de">CUENTA</a>
                   
                </nav>

                <div class="textos">
                    <!-- Con el span se logra el efecto de diferente -->
                    <h1 class="nombre">CITAS</h1>
                    
                </div>
                
            </div>
    </header>


    <!-- En el section main va air todo-->
    
    <section class="main">
        <form action="citas" method="post" class="formulario">
          <h1 class="formulario__titulo">Agenda una cita</h1>

          <input type="text" name="dia" id="dia"   class="formulario__input" placeholder="Dia">
          <input type="text" name="mes" id="mes"   class="formulario__input" placeholder="Mes">
          <input type="text" name="ano" id="año"  class="formulario__input" placeholder="Año">
          <input type="text" name="tratamiento" id="tratamiento" maxlength="25" class="formulario__input" placeholder="Tratamiento">
          <input type="text" name="nombre" id="nombre" maxlength="25" class="formulario__input" placeholder="Nombre(s)">
 

          <input type="submit" class="formulario__submit" id="btniniciar" value="Agendar Cita" onclick="#">

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

