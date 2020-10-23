package bilibili;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;

public interface bilibiliDao {
	public Connection getCon() ;
	public  int addBilibili(String Name,String password) ;	
	public ResultSet listBilibili() ;
}
