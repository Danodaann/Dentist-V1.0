
package Controlador;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Consulta2 extends Conexion {
    
  public boolean autenticacion(String user, String password) {
    PreparedStatement pst = null;
    ResultSet rs = null;
    
      try {
          String consulta = "select * from doctores where user = ? and password = ?";
          pst = getConexion().prepareStatement(consulta);
          pst.setString(1, user);
          pst.setString(2, password);
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

  
  /* PARA PROBAR AUTENTIFICACION 
   public static void main(String[] args) {
        Consulta2 co = new Consulta2();
        System.out.println(co.autenticacion("dios", "1234" ));
    } 
    */

}