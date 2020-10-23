package bilibili;

import java.io.IOException;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;



/**
 * Servlet implementation class bbb
 */
@WebServlet("/reg")
public class reg extends HttpServlet {
	String name1=null;
	String password1=null;
	bilibiliDaoIm bi=new bilibiliDaoIm();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("bilibili");
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
				else{
					
				}
				
			}
			System.out.println(name1+"  +  "+password1);
			bi.addBilibili(name1,password1);
			name1=null;
			password1=null;
			response.sendRedirect("http://localhost:8080/bilibili/HtmlDemo/bilibili_regss.html");
			} catch (FileUploadException e) {
				
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 			
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
