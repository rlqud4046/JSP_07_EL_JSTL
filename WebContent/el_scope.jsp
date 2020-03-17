<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>표현식으로 scope 내용 출력</h2>
	<h3>
	<%-- pageContext는 페이지 이동을 했으므로 null값이 나온다 --%>
		page : <%=pageContext.getAttribute("p") %><br>
		request : <%=request.getAttribute("r") %><br>
		session : <%=session.getAttribute("s") %><br>
		application : <%=application.getAttribute("a") %><br>
		request : <%=request.getAttribute("p") %><br>
	</h3>
	
	<hr>
	<h2>표현언어로 scope 내용 출력</h2>
	<h3>
		${pageScope.p } == ${p }<br> 
		<%--pageScope.p는 페이지 이동 했으므로 공백이 나오지만 
		그냥p는 request의 p가 넘어왔으므로 값이 나옴  --%>
		${requestScope.r } == ${r }<br>
		${sessionScope.s } == ${s }<br> 
		${applicationScope.a } == ${a }<br>
		${requestScope.p } == ${p }<br>
	</h3>
	
	<% 
	RequestDispatcher rd = request.getRequestDispatcher("el_03.jsp");
	rd.forward(request, response);
	%>
	
	
</body>
</html>