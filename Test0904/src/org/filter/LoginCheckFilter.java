package org.filter;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class LoginCheckFilter implements Filter{
	public static void p(String s){
		System.out.println(s);
	}
	@Override
	public void init(FilterConfig filterconfig) throws ServletException {}
	@Override
	public void doFilter(ServletRequest servletrequest,
			ServletResponse servletresponse, FilterChain filterchain)
			throws IOException, ServletException {
		p("进入LoginCheckFilter的doFilter()方法");
		HttpServletRequest request=(HttpServletRequest)servletrequest;
		HttpServletResponse response=(HttpServletResponse)servletresponse;
		HttpSession session=request.getSession(false);
		if(session!=null&&(session.getAttribute("loginUser"))!=null)
			filterchain.doFilter(request,response);
		else
			response.sendRedirect(request.getContextPath()+"/401.html");
		p("退出LoginCheckFilter的doFilter()方法");
	}
	@Override
	public void destroy() {	}
}
