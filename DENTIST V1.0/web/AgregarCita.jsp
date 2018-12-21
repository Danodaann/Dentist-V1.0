<%-- 
    Document   : AgregarCita
    Created on : 17/12/2018, 07:07:18 PM
    Author     : Home
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Cita </title>
        
    </head>
    <body>
        <h1>Agregar Cita</h1>
        <div class="contenedor">
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                ID: 
                <input type="text" readonly=""/><br>
                DIA:
                <input type="text" name="txtDia"/><br>
                MES:
                <input type="text" name="txtMes"/><br>
                AÑO:
                <input type="text" name="txtAño"/><br>
                TRATAMIENTO:
                <input type="text" name="txtTra"/><br>
                NOMBRE:
                <input type="text" name="txtNom"/><br> 
                <input type="submit" value="Guardar"/>
                <a href="menudoc.jsp" >Regresar</a>
            </form>            
        </div>
    </body>
</html>

<% 
         //Conexion 
         Connection con; 
         String url = "jdbc:mysql://localhost:3306/loginjsp";
         String Driver = "com.mysql.jdbc.Driver";
         String usuario = "root";
         String clave = "";
         Class.forName(Driver);
         con=DriverManager.getConnection(url, usuario, clave);
         PreparedStatement ps;
         String dia, mes, año, tratamiento, nombre;
         dia=request.getParameter("txtDia");
         mes=request.getParameter("txtMes");
         año=request.getParameter("txtAño");
         tratamiento=request.getParameter("txtTra");
         nombre=request.getParameter("txtNom");
         if(dia!=null && mes!=null && año!=null && tratamiento!=null && nombre!= null){
             ps=con.prepareStatement("insert into citas(dia, mes, año, tratamiento, nombre) values('"+dia+"','"+mes+"','"+año+"','"+tratamiento+"','"+nombre+"')");
             ps.executeUpdate();
             response.sendRedirect("menudoc.jsp");
             
         }
         
        
         
         

 %>
