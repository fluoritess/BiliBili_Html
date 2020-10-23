package bilibili;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

/**
 * Servlet implementation class logon
 */
@WebServlet("/logon")
public class logon extends HttpServlet {
	String name1=null;
	String password1=null;
	bilibiliDaoIm bi=new bilibiliDaoIm();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		try {
			//1.创建一个磁盘文件项工厂
			DiskFileItemFactory diskfileitemfactory=new DiskFileItemFactory();
			//2.创建一个核心解析类
			ServletFileUpload servletfileupload=new ServletFileUpload(diskfileitemfactory);
			//3.解析request		
			List<FileItem> list=servletfileupload.parseRequest(request);
			//4.遍历List
			for(FileItem fileitem:list)
			{
				if(fileitem.isFormField())//普通表单
				{
					String name=fileitem.getFieldName();
					String value=fileitem.getString("UTF-8");
					System.out.println(name+"   "+value);
					if(name1==null)
					{
						name1=value;
					}
					else if(name1!=null&&password1==null){
						password1=value;
					}			
				}					
				else{//文件					
				}				
			}
			System.out.println("name:"+name1+"  +  "+"password:"+password1);
			boolean flag=false;
			ResultSet rs=bi.listBilibili();
			while(rs.next())
			{
				String Name2=rs.getString(1);
				String password2=rs.getString(2);
				if(Name2!=null) {
					if((Name2.equals(name1))&&(password2.equals(password1))) 
					{
						System.out.println("登录成功");
						HttpSession session=request.getSession();
						session.setAttribute("name_logon", name1);
						name1=null;
						password1=null;
						session.setAttribute("user_1", "xxxxxxxx");
						response.sendRedirect("http://localhost:8080/bilibili/HtmlDemo/bilibili_logonss.html");
						flag=true;					
						break;
					}					
				}
			}
			if(flag==false) {
				System.out.println("登录失败");
				name1=null;
				password1=null;
				response.sendRedirect("http://localhost:8080/bilibili/HtmlDemo/bilibili_logonfl.html");		
				
				}
			} 		
		catch (FileUploadException e) {
				
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 			
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
