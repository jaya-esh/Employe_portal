package Com.utilconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnection {

	static Connection con=null;
	public static Connection getConnection() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/myprograms", "root", "root");
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		}
		return con ;
	}
}
