<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%!
public String getTime(){
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	Date d = new Date();
	String now = sdf.format(d);
	return now;
}
%>
<%!
public static double VAT = 0.05;
%>
<%!
public String getNumbers(){
	return "10 20 30 40 41 42";
}
%>
</head>
<body>
<%
out.println("您的ip為："+request.getRemoteAddr()+"<br>");
out.println("您的明牌為："+getNumbers()+"<br>");
int x = (int)(Math.random()*10)+1; //產生1-10的亂數
out.println("x="+x+"<br>");
if(x%2==0){
	out.println("x為偶數<br>");
}else{
	out.println("x為奇數<br>");
}
%>

<%
out.println("<hr>");
%>
<hr>

您的ip為：<%=request.getRemoteAddr() %><br/>
您的明牌為：<%=getNumbers() %><br/>

<%
int y = (int)(Math.random()*10)+1;
%>
y=<%=y %><br/>
Server端的時間：getTime()<br/>
Server端的時間:<%=getTime() %><br/>


</body>
</html>