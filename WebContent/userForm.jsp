<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body marginheight="100px">
	<div align="center">
		<form action="el_02.jsp" method="post">
			<table border="1" cellspacing="0" width="300">
				<tr>
					<th>아이디</th>
					<td><input name="id"></td>
				</tr>
				<tr>
					<th>이 름</th>
					<td><input name="name"></td>
				</tr>
				<tr>
					<th>나 이</th>
					<td><input name="age"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="전송">&emsp;
						<input type="reset" value="취소"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>