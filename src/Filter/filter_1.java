package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class filter_1 implements Filter {
	private FilterConfig config;
	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest se, ServletResponse sr, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
	
		HttpServletRequest hrequest=(HttpServletRequest)se;
		HttpServletResponse hresopnse=(HttpServletResponse)sr;
		String user_1=(String) hrequest.getSession().getAttribute("user_1");
		if(user_1==null) {
			hresopnse.sendRedirect("http://localhost:8080/bilibili/HtmlDemo/bilibili_logon.jsp?flag=1");
		return;
	}
	else {
		chain.doFilter(se, sr);
		return;
		}
	}

	@Override
	public void init(FilterConfig fc) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init>>>>>>>>>>>>>>>>>");
			this.config=config;
	}

}
