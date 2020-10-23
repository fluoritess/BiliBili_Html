package bilibili;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class bilibiliDaoIm implements bilibiliDao{
	private static String dbUrl="jdbc:mysql://localhost:3306/123";
	private static String dbUsr="root";
	private static String dbpassword="13882521154";
	private static String jdbcName="com.mysql.jdbc.Driver";
	//获取连接
	@Override
	public Connection getCon()  {
		Connection con = null;
		// TODO Auto-generated method stub
		try {
			Class.forName(jdbcName);
			con=(Connection) DriverManager.getConnection(dbUrl, dbUsr, dbpassword);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;		
	}
	//注册用户
	@Override
	public  int addBilibili(String Name,String password)   {
		// TODO Auto-generated method stub
		int result = 0;
		try {
		Connection con=getCon();
		String sql="insert into bilibili values(?,?)";
		PreparedStatement pstmt;
		
			pstmt = (PreparedStatement) con.prepareStatement(sql);
			pstmt.setString(1, Name);		
			pstmt.setString(2, password);
			 result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	//遍历用户
	@Override
	public ResultSet listBilibili()  {
		// TODO Auto-generated method stub
		Connection con=getCon();
		ResultSet rs=null;
		String sql="select * from bilibili";
		PreparedStatement pstm;
		try {
			pstm = (PreparedStatement) con.prepareStatement(sql);
			rs=(ResultSet) pstm.executeQuery();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

}
