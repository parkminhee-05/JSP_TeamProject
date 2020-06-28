package dbCon;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class db {
	private static DataSource ds;
	
	static {
		try {
			Context initContext = new InitialContext();
			DataSource ds = (DataSource)initContext.lookup("java:comp/env/jdbc/jsphh");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConn() throws Exception{
		return ds.getConnection();
	}
}
