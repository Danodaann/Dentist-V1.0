package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

public final class citasdoc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Citas Doctor</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            
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
        
      out.write("\n");
      out.write("        \n");
      out.write("        <div>\n");
      out.write("             <h1>Hello World!</h1>\n");
      out.write("             <table>\n");
      out.write("                 <tr>\n");
      out.write("                     <th>ID</th>\n");
      out.write("                     <th>DIA</th>\n");
      out.write("                     <th>MES</th>\n");
      out.write("                     <th>AÑO</th>\n");
      out.write("                     <th>TRATAMIENTO</th>\n");
      out.write("                     <th>NOMBRE</th>\n");
      out.write("                 </tr>\n");
      out.write("                 ");

                     while(rs.next()){
                         
                  
      out.write("\n");
      out.write("                  <tr>\n");
      out.write("                      <td>");
      out.print( rs.getInt("id"));
      out.write("</td>\n");
      out.write("                      <td>");
      out.print( rs.getString("dia"));
      out.write("</td>\n");
      out.write("                      <td>");
      out.print( rs.getString("mes"));
      out.write("</td>\n");
      out.write("                      <td>");
      out.print( rs.getString("año"));
      out.write("</td>\n");
      out.write("                      <td>");
      out.print( rs.getString("tratamiento"));
      out.write("</td>\n");
      out.write("                      <td>");
      out.print( rs.getString("nombre"));
      out.write("</td>\n");
      out.write("                      <td>\n");
      out.write("                          <a>Editar</a>\n");
      out.write("                          <a>Eliminar</a>\n");
      out.write("                          \n");
      out.write("                      </td>\n");
      out.write("                  </tr>\n");
      out.write("             ");
}
      out.write("\n");
      out.write("             </table>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
