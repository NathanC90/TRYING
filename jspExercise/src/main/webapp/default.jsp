<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的第一個Servlet程式</title>
</head>
<body>
<a href="http://localhost:8080/jspExercise/FirstSimpleProgram?q=1&addr=Taipei&name=chao">我的第一個Servlet程式-1</a><br/>
<a href="/jspExercise/FirstSimpleProgram?q=1&addr=Taipei&name=chao">我的第一個Servlet程式-2</a><br/>
<a href="FirstSimpleProgramABC?q=1&addr=Taipei&name=chao">我的第一個Servlet程式-3</a><br/>
<a href="FirstSimpleProgramABC?q=1&addr=Taipei&name=chao">我的第一個Servlet程式-4</a><br/>  <!-- 前置路徑 -->
<a href="FirstSimpleProgramABC?q=1&addr=Taipei&name=chao">我的第一個Servlet程式-5</a><br/>  <!-- 延伸檔名對應關係-->
<a href='xyz/ShowPicture'>美美的圖片-1</a><br/>
<a href='ShowPicture.jsp'>美美的圖片-2</a><br/>
</body>
</html>