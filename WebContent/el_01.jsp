<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 
	EL(Expression Language)
	- 표현 언어
	- JSP 2.0 이후 버전부터 사용 가능
	- 라이브러리 없이 사용이 가능함
	- 자바코드를 사용해야 했던 모든 곳에서 표현언언을 사용할 수 있음
	- 예) <%=변수%> ====> ${변수(수식도 가능)}
	- 연산자
		* 산술 연산자 : +, -, *, /, %
		* 관계 연산자 : ==, !, >, ...
		* 논리 연산자 : &&, ||, !
	- 표현언어에서 제공하는 내장 객체
		* pageScope : 모든 page 영역 객체들에 대한 컬렉션 
		* requestScope : 모든 request 영역 객체들에 대한 컬렉션
		* sessionScope : 모든 session 영역 객체들에 대한 컬렉션
		* applicationScope : 모든 application 영역 객체들에 대한 컬렉션
		* param : 모든 request 파라미터들을 문자열로 가진 컬렉션 
		* paramValues : 모든 request 파라미터들을 파라미터당 문자열 배열로 가진 컬렉션
		* pageContext : 현재 page를 위한 컬렉션 
	 --%>

	<h2>JSP 표현식 산술연산 사용 예제</h2>
	<h3>
		15+7 =
		<%=15 + 7%><br> 15-7 =
		<%=15 - 7%><br> 15*7 =
		<%=15 * 7%><br> 15/7 =
		<%=15 / 7%><br> 15%7 =
		<%=15 % 7%><br>
	</h3>
	<hr>

	<h2>표현언어(EL)에서 제공하는 산술 연산 사용 예제</h2>
	<h3>
		<%-- 앞에 역슬래시를 넣어주면 문자 그대로 출력이 됨 --%>
		\${15+7 } = ${15+7 }<Br> \${15-7 } = ${15-7 }<Br> \${15*7 }
		= ${15*7 }<Br> \${15/7 } = ${15/7 }<Br>
		<%-- 나누기는 우선 피연산자를 double 형으로 변환한 뒤 연산을 수행한다.\ --%>
		<%-- \${15%7 } = ${15%7 }<Br> \${15 div 5} = ${15 div 7 }<Br> --%>
		\${15 mod 7 } = ${15 mod 7 }<Br>

	</h3>
	<hr>

	<h2>표현언어(EL)에서 제공하는 관계 연산 사용 예제</h2>
	<h3>
		\${15 == 7 } = ${15 == 7 }<Br> \${15 != 7 } = ${15 != 7 }<Br>
		\${15 >= 7 } = ${15 >= 7 }<Br> \${15 > 7 } = ${15 > 7 }<Br>
		\${15 <= 7 } = ${15 <= 7 }<Br> \${15 < 7 } = ${15 < 7 }<Br>


		\${15 ge 7 } = ${15 ge 7 }<Br> \${15 gt 7 } = ${15 gt 7 }<Br>
		\${15 le 7 } = ${15 le 7 }<Br> \${15 lt 7 } = ${15 lt 7 }<Br>


	</h3>
	<hr>

	<h2>표현언어에서 제공하는 논리 연산 사용 예제</h2>
	<h3>
		${15 >= 7  && 15 >= 7 }<Br>

	</h3>
	<h2>표현언어에서 제공하는 empty 사용 예제</h2>


	<%
		int k = 15 + 7;
		pageContext.setAttribute("K", k);
		pageContext.setAttribute("p", 100);
		request.setAttribute("r", 1000);
		session.setAttribute("s", 10000);
		application.setAttribute("a", 100000);
		request.setAttribute("p", 500);

		RequestDispatcher rd = request.getRequestDispatcher("el_scope.jsp");
		rd.forward(request, response);
	%>
	<h3>
		결과 ==>
		<%=k%><br>
		<%-- scope(현재 페이지)에 k라는 이름의 속성이 없으므로 결과 표시를 안함 
	setAttribute 해주고 사용해야 함--%>
		결과(EL) ==> ${K}<br>


	</h3>



























</body>
</html>