package iii.servletjsp;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
@WebServlet({"/FirstSimpleProgram","/FirstSimpleProgramABC"})
public class SimpleServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		System.out.println("這是doGet()方法印出的訊息");
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<html><head><title>");
		out.println("用Servlet送回文字性回應");
		out.println("</title></head><body>");
		out.println("<h3>這是doGet()方法送出的訊息");
		out.println("Request URL=" + req.getRequestURL()+"<br>");
		out.println("Reuqest URI="+req.getRequestURI()+"<br>");
		out.println("Query String="+req.getQueryString()+"<br>");
		out.println("Context Path="+req.getContextPath()+"<br>");
		out.println("Servlet Path="+req.getServletPath()+"<br>");
		out.println("Path Info="+req.getPathInfo()+"<br>");
		out.println("您的IP為："+req.getRemoteAddr()+"<br>");
		out.println("<hr>");
		
		Enumeration<String> en = req.getHeaderNames();
		while(en.hasMoreElements()){
			String h = en.nextElement();
			String v = req.getHeader(h);
			out.println(h+"=>"+v+"<br>");
		}
		out.println("</body></html>");
		out.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("這是doPost()方法印出的訊息");
	}

}
