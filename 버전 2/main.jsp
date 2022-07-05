<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String loginId 	= (String)session.getAttribute("id");
	int level = (Integer)session.getAttribute("level");
%>
<!DOCTYPE html>
<html>
<head>
<title>회원 관리 시스템 메인 페이지</title>
</head>
<body>
<%= loginId %> 님의 레벨은 
<%= level%> 입니다.

<% if(level >= 2) {%>
<a href="list.jsp">게시판으로 이동하기</a>
<%} 
else {%>
게시판을 이용할 수 없습니다.<%}
%>

</body>
</html>