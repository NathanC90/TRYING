<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<c:forEach var="x" begin="1" end="9" varStatus="vs">


			<tr>
				<c:forEach var="y" begin="1" end="9">

					<td>${x}x ${y}=${x*y}</td>
					</c:forEach>
			</tr>
		</c:forEach>

	</table>

	<c:set var="sum" value="0" />
	<c:forEach var="x" begin="1" end="100">
		<c:set var="sum" value="${sum+x}" />
	</c:forEach>
	1+2+...+99+100的總和:${sum}
	<br>

</body>
</html>