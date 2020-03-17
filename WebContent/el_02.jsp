<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- <h2>JSP 표현식으로 파라미터 값 출력</h2>
	<table border="1" width="200" cellspacing="0">
		<tr>
			<th>아이디</th>
			<td><%=request.getParameter("id")%></td>
		</tr>
		<tr>
			<th>이 름</th>
			<td><%=request.getParameter("name")%></td>
		</tr>
		<tr>
			<th>나 이</th>
			<td><%=request.getParameter("age")%></td>
		</tr>
	</table> --%>

	<h2>표현언어로 파라미터 값 출력</h2>
	<table border="1" width="200" cellspacing="0">
		<tr>
			<th>아이디</th>
			<td>${param.id}</td>
		</tr>
		<tr>
			<th>이 름</th>
			<td>${param.name}</td>
		</tr>
		<tr>
			<th>나 이</th>
			<td>${param.age}</td>
		</tr>
	</table>






</body>
</html>