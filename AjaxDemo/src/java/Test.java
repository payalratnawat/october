
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;


public class Test {
    public static void main(String[] args) throws Exception{
        
   Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erp","root","root");
PreparedStatement ps=con.prepareStatement("select id from ajax_test where id=?");            
 ps.setInt(1, Integer.parseInt("1"));
ResultSet rs=ps.executeQuery();  
while(rs.next())
System.out.print(rs.next());

    }
}
