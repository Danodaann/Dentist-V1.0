<%-- 
    Document   : EditarCitas
    Created on : 17/12/2018, 06:28:48 PM
    Author     : Home
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% 
         //Conexion 
         Connection con; 
         String url = "jdbc:mysql://localhost:3306/loginjsp";
         String Driver = "com.mysql.jdbc.Driver";
         String usuario = "root";
         String clave = "";
         Class.forName(Driver);
         con=DriverManager.getConnection(url, usuario, clave);

        //Litado de la tabla citas pero de la fila seleccionada
        
        PreparedStatement ps;
        ResultSet rs;
        int id = Integer.parseInt(request.getParameter("id"));
        ps=con.prepareStatement("select * from citas where id="+id);
        rs= ps.executeQuery();
        while(rs.next()){            
        }
        %>
        
        <div class="contenedor">
            <h1>Modificar</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                ID: 
                <input type="text" readonly="" class="form-control" value="<%= rs.getInt("id")%>"/>
                DIA:
                <input type="text" name="txtDia" class="form-control"/>
                MES:
                <input type="text" name="txtMes" class="form-control"/>
                AÑO:
                <input type="text" name="txtAño" class="form-control"/>
                TRATAMIENTO:
                <input type="text" name="txtTra" class="form-control"/>
                NOMBRE:
                <input type="text" readonly="" name="txtNom" class="form-control"/>
                
                
                
                
            </form>
            
            
            
            
        </div>
    </body>
</html>
