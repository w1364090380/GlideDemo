package org.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class UserServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public static void p(String s){
		System.out.println(s);
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		p("收到客户端的登录请求："+username);
		if("test".equals(username)&&"123".equals(password)){
			req.getSession().setAttribute("loginUser", username);
			resp.sendRedirect(req.getContextPath()+"/index.jsp");
		}else{
			resp.sendRedirect(req.getContextPath()+"/login.html");
		}
	}
}
