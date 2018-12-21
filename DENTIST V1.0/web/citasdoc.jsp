<%-- 
    Document   : citasdoc
    Created on : 17/12/2018, 04:47:16 PM
    Author     : Home
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Citas Doctor</title>
    </head>
    <body>
        <%
            
         //Conexion 
         Connection con; 
         String url = "jdbc:mysql://localhost:3306/loginjsp";
         String Driver = "com.mysql.jdbc.Driver";
         String user = "root";
         String clave = "";
         Class.forName(Driver);
         con=DriverManager.getConnection(url, user, clave);

        //Litado de Citas 
        
        PreparedStatement ps;
        ResultSet rs;
        ps=con.prepareStatement("select * from citas");
        rs= ps.executeQuery();      
        %>
        
        <div>
             <h1>Hello World!</h1>
             <table>
                 <tr>
                     <th>ID</th>
                     <th>DIA</th>
                     <th>MES</th>
                     <th>AÑO</th>
                     <th>TRATAMIENTO</th>
                     <th>NOMBRE</th>
                 </tr>
                 <%
                     while(rs.next()){
                         
                  %>
                  <tr>
                      <td><%= rs.getInt("id")%></td>
                      <td><%= rs.getString("dia")%></td>
                      <td><%= rs.getString("mes")%></td>
                      <td><%= rs.getString("año")%></td>
                      <td><%= rs.getString("tratamiento")%></td>
                      <td><%= rs.getString("nombre")%></td>
                      <td>
                          <a href="EditarCitas.jsp?<%= rs.getInt("id")%>" >Editar</a>
                          <a href="Eliminar.jsp?<%= rs.getInt("id")%>">Eliminar</a>
                          
                      </td>
                  </tr>
             <%}%>
             </table>
            
        </div>
        
       
    </body>
</html>
