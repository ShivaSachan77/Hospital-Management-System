package Conn;
import java.sql.*;

public class Conn
{
   public static final String DRIVER="com.mysql.jdbc.Driver";
   public static Connection con;
   public static final String URL="jdbc:mysql://localhost:3306/hms";
   public static final String USERNAME="root";
   public static final String PASSWORD="root";
   public static Connection getCon()
{ 
	
	try
	{
		Class.forName(DRIVER);
		con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
		System.out.println("connection created");
	}
	catch (Exception e){
		//TODO: handle exception
		e.printStackTrace();
		return null;
	}
	return con;
}
}


