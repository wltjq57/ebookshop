<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %> 
<% 
	String loginId 	= (String)session.getAttribute("id");
	int level = (Integer)session.getAttribute("level");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 입력</title>
</head>
<body>
	<h3>게시글 입력 화면</h3>
	<form action="insert.jsp" method="post">
		<table border="2">
			<tr>
				<td>제목</td>
				<td><input type="text" name="subject" size="60"></td>
			</tr>
			
			<tr>
				<td>작성자</td>
				<td><%=(String)session.getAttribute("id") %></td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td><textarea name="memo" cols="60" rows="5"></textarea></td>
			</tr>
		</table>
		<br>
		<input type="submit" value="게시글 등록"> <input type="reset" value="다시 쓰기">
	</form>
	<br>
	<a href="list.jsp"> 게시글 리스트 보기</a>
	<br>
</body>
</html>