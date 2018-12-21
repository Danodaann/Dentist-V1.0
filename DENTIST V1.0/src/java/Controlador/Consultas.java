
package Controlador;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




public class Consultas extends Conexion {
    
  public boolean autenticacion(String usuario, String contraseña) {
    PreparedStatement pst = null;
    ResultSet rs = null;
    
      try {
          String consulta = "select * from  usuarios where usuario = ? and pass = ?";
          pst = getConexion().prepareStatement(consulta);
          pst.setString(1, usuario);
          pst.setString(2, contraseña);
          rs = pst.executeQuery();
          
          if(rs.absolute(1)){
              return true;
          }
      } catch (Exception e) {
          System.err.println("Error" + e);
      }finally{
          try {
              if(getConexion() != null ) getConexion().close();
              if(pst!= null ) pst.close();
              if ( rs != null) rs.close();
          } catch (Exception e) {
              System.err.println("Error" + e);
          }
      }
   
    return false;

    }
  
   /* public static void main(String[] args) {
        Consultas co = new Consultas();
        System.out.println(co.autenticacion("danielhernandez", "1234" ));
    }  */
  
  public boolean registrar( String nombre, String apellido, String usuario, String contraseña){
      
      PreparedStatement pst = null;
      
      try {
          String consulta = "insert into usuarios(nombre, apellido, usuario, pass) values (?, ?, ?, ?)";
          pst = getConexion().prepareStatement(consulta);
          pst.setString(1, nombre);
          pst.setString(2, apellido);
          pst.setString(3, usuario);
          pst.setString(4, contraseña);
          
          if(pst.executeUpdate() == 1){
              return true;
          }
          
         
      } catch (Exception e) {
          System.err.println("Error" + e);
      }finally{
          try {
               if(getConexion() != null)getConexion().close();
               if(pst != null) pst.close();
          } catch (Exception e) {
              System.err.println("Error" + e);
          }
      }
      
      
      return false;
  }
  
  public boolean agendar(String dia, String mes, String año, String tratamiento, String nombre){
      
      PreparedStatement pst = null;
      
      try {
          String consulta = "insert into citas (dia, mes , año, tratamiento, nombre) values (?,?,?,?,?)";
          pst = getConexion().prepareStatement(consulta);
          pst.setString(1, dia);
          pst.setString(2, mes);
          pst.setString(3, año);
          pst.setString(4, tratamiento);
          pst.setString(5, nombre);
          
          if(pst.executeUpdate() == 1){
              return true;
              
          }
          
          
      } catch (Exception e) {
          System.err.println("error" +e);
      }finally{
          try {
              if(getConexion() != null) getConexion().close();
              if(pst != null) pst.close();
          } catch (Exception e) {
              System.err.println("error" +e);
          }
      }
      
      return false;
  }
    
       /* public static void main(String[] args) {
            Consultas co = new Consultas();
            System.out.println(co.agendar("kk", "k", "ck", "Brk", "Dkka"));
        }

        */
    
   
    
  }
 