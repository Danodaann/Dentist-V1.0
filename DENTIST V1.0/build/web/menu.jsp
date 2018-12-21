    <%-- 
    Document   : menu
    Created on : 12/12/2018, 04:04:32 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    HttpSession objsesion =request.getSession(false);
    String usuario = (String)objsesion.getAttribute("usuario");
    if(usuario.equals("")){
        response.sendRedirect("login.jsp");
    }

%>

<!DOCTYPE html>
<html>
    <head>
	<!-- El meta viewport permite que sea adaptable la pagina -->
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" >
	<!-- Esta es para la letra en este caso es el estilo de open sans, por lo cual se necesita una conexion a intenet para poder acceder a la fuente  -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,700" rel="stylesheet">
	<!-- Para conectar estilos css -->
	<link rel="stylesheet" type="text/css" href="css/estilos.css">
	
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
    </head>
    <body><header>
			<div class="contenedor">
				<nav class="menu">
					<a href="index.jsp" id="btn-acerca-de">PAGINA PRINCIPAL</a>
					<a href="#">MIS HISTORIAL</a>
					<a href="agendarcita.jsp">AGENDAR CITA</a>
					<a href="#">CERRAR SESION</a>
				</nav>

				<div class="textos">
					<!-- Con el span se logra el efecto de diferente -->
					<h1>Hola <% out.println(usuario); %> !</h1>
				
				</div>
				
			</div>
	</header>
                                        
         
                                        
                                        
         <section class="menu">

	</section>

				

	<footer>
		 <div class="contenedor">
		 	<div class="copyright">
		 		<p>Copyright DanoDaann @ 2018 </p>
		 	</div>
		 </div>
	</footer>
                                        
        
    </body>
</html>
