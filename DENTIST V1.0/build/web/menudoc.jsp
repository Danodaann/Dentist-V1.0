    <%-- 
    Document   : menu
    Created on : 12/12/2018, 04:04:32 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%
    HttpSession objsesion =request.getSession(false);
    String user = (String)objsesion.getAttribute("user");
    if(user.equals("")){
        response.sendRedirect("logindoctor.jsp");
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
	
        <link rel="stylesheet" type="text/css" href="css/estilos2.css">
	
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DOCTOR</title>
    </head>
    <body>
        <header>
			<div class="contenedor">
				<nav class="menu">
					<a href="index.jsp" id="btn-acerca-de">PAGINA PRINCIPAL</a>
					<a href="citasdoc.jsp">CITAS</a>
					<a href="#">CERRAR SESION</a>
				</nav>

				
				
			</div>
	</header>
                                        
         
                                        
                                        
         <section class="menu">
             <div class="textos">
					<!-- Con el span se logra el efecto de diferente -->
					<h1>Hola <%out.println(user);%> ! <br>PROXMAS CITAS</h1>
                                        
        <% 
         //Conexion 
         Connection con; 
         String url = "jdbc:mysql://localhost:3306/loginjsp";
         String Driver = "com.mysql.jdbc.Driver";
         String usuario = "root";
         String clave = "";
         Class.forName(Driver);
         con=DriverManager.getConnection(url, usuario, clave);

        //Litado de Citas 
        
        PreparedStatement ps;
        ResultSet rs;
        ps=con.prepareStatement("select * from citas");
        rs= ps.executeQuery();      
        %>
        
        <section class="citas">
        <div class="contenedor">
            <form class="formulario" id="forminicio">
                <table class="table">
                 <tr>
                     <th class="">ID</th>
                     <th class="">DIA</th>
                     <th class="">MES</th>
                     <th class="">AÑO</th>
                     <th class="">TRATAMIENTO</th>
                     <th class="">NOMBRE</th>
                 </tr>
                 <%
                     while(rs.next()){
                         
                  %>
                  <tr>
                      <td class="text-center"><%= rs.getInt("id")%></td>
                      <td class="text-center"><%= rs.getString("dia")%></td>
                      <td class="text-center"><%= rs.getString("mes")%></td>
                      <td class="text-center"><%= rs.getString("año")%></td>
                      <td class="text-center"><%= rs.getString("tratamiento")%></td>
                      <td class="text-center"><%= rs.getString("nombre")%></td>
                      <td>
                          <input type="button" value="Editar" onclick="#">
                          
                       </td>
                        <td>
                          <input type="button" value="Eliminar" onclick="#">
                         </td>
                         
                  
                   
                          
                          <%--<a id="btniniciar" >Editar</a>
                          <a id="btniniciar">Eliminar</a> --%> 
                          
                      
                  </tr>
             <%}%>
             
             </table>
             <br> <br> <br> 
             
             <a href="AgregarCita.jsp" >
                      Nueva Cita
                  </a>
            </form>
        </div> 
      </section>

             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>

	<footer>
		 <div class="contenedor">
		 	<div class="copyright">
		 		<p>Copyright DanoDaann @ 2018 </p>
		 	</div>
		 </div>
	</footer>
                                        
        
    </body>
</html>

