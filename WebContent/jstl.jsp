<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		JSTL(JSP Standard Tag Library)
			- JSP 페이지에서 스크립트릿과  HTML 코드가 뒤섞이게 되는 현상이 발생
			    이렇게 뒤섞인 코드는 알아보기가 쉽지 않게 되는 단점이 발생함. 따라서 가독성이 낮아짐
			- JSP 페이지에서 스크립트릿에 들어가는 내용 중에 논리적인 판단, 반복 처리, 
			포맷 처리 등을 HTML 태그처럼 사용할 수 있도록 표준으로 만들어서 정의한 것이 JSTL 라이브러리 
			- JSTL을 사용하기 위해서는 라이브러리 파일이 필요함.
				* jstl.jar, standard.jar
	 --%>

	<%-- 
	 	기본적인 JSTL 태그(출력은 EL을 사용)
	 	1. 변수 태그(set)
	 		<c:set var="변수명" value="값">
	 			예) <c:set var="su" value="10">  == int su = 10;
	 				<c:set var="test" value="Hello"> == String test = "Hello";
	 	2. 출력 태그(out)
	 		<c:out value="변수명">
	 			예) <c:out value="test">
	 	3. 삭제 태그 (remove)
	 		<c:remove var="변수명">
	 			예) <c:remove var="test">
	 	4. 조건 처리(if문) : else문이 없다(참인 경우만 처리)
	 		<c:if test="조건식" var="변수명">
	 	5. 조건 처리(choose문) : switch~case문과 유사
	 		<c:choose>
	 			<c:when test="조건식1">조건식 1이 참인 경우 실행 문장</c:when>
	 			<c:when test="조건식2">조건식 2이 참인 경우 실행 문장</c:when>
	 			<c:when test="조건식3">조건식 3이 참인 경우 실행 문장</c:when>
	 			<c:otherwise>조상기 조건식 이외의 경우 실행 문장</c:otherwise>
	 		</c:choose>
	 	6. 반복문(forEach문) : for문
	 		<c:forEach begin="시작값" end="끝값" step="증감값" var="변수명">
	 		<c:forEach items="객체명" var="변수명"> == 단축for문
	 
	 
	  --%>
	<div align="center">
		<h2>JSTL의 기본적인 태그들</h2>
		<h3>
			<%-- 주석 내용 중 1~3번 --%>

			<%-- <c:set var="test" value="Hello"></c:set>  Hello" 뒤에 /를 붙여주면 뒤에 닫는 부분이 생략된다--%>
			<c:set var="test" value="Hello" />
			JSTL 값 출력 :
			<c:out value="${test}" />
			<br> 값 삭제 :
			<c:remove var="test" />
			<br> 삭제 후 값 출력 :
			<c:out value="${test }" />

		</h3>
		<hr>
		<c:if test="${10>5 }" var="k" />
		조건식 결과 :
		<c:out value="${k }" />
		<hr>
		<%-- test2의 값이 1이면 합격, 2이면 불합격, 나머지는 미발표 --%>
		<c:set var="test2" value="1" />

		<c:choose>
			<c:when test="${test2 == 1 }">결과 : 합격</c:when>
			<c:when test="${test2 == 2 }">결과 : 불합격</c:when>
			<c:otherwise>결과 : 미발표</c:otherwise>
		</c:choose>
		<hr>

		<%-- 반복문을 이용하여 1~10까지 --%>
		<c:forEach begin="1" end="10" step="1" var="num">
	${11-num}&emsp;
	</c:forEach>

		<hr>
		<%-- 배열의 값들을 출력해 보자.  --%>
		<%
			String[] str = { "홍길동", "이순신", "유관순", "김유신", "김연아" };
			pageContext.setAttribute("list", str);
		%>
		결과:
		<c:forEach items="${list }" var="array">
			${array }&emsp;
		</c:forEach>
		<br>


		<c:set var="arr" value="<%=new int[] { 1, 2, 3, 4, 5 }%>" />


		<c:forEach var="i" items="${arr}">

		${i}&nbsp;

	</c:forEach>


	</div>

</body>
</html>