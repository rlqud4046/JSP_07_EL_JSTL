<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>표현언어로 scope 내용 출력</h2>
	<h3>
		${pageScope.p } == ${p }<br> 
		<%--pageScope.p는 페이지 이동 했으므로 공백이 나오지만 
		그냥p는 request의 p가 넘어왔으므로 값이 나옴  --%>
		${requestScope.r } == ${r }<br>
		<%--리퀘스트는 forward를 이용해서 보냈을떄만 데이터가 살아남을 수 있다 --%>
		${sessionScope.s } == ${s }<br> 
		${applicationScope.a } == ${a }<br>
		${requestScope.p } == ${p }<br>
	</h3>
</body>
</html>