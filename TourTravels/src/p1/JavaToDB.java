package p1;
import java.sql.*;

public class JavaToDB {
	public static void main(String[] args) {		
		JavaToDB.getCon();
	}
	
	public static Connection getCon(){
		Connection conn=null;
		try{
				
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "tour", "tourpass");
			System.out.println("Connected Successfully");
			
		}catch(Exception e){
			System.out.println(e);
		}
		return conn;
	}

}
