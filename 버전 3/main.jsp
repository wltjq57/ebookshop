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
<h3> <%=(String)session.getAttribute("id") %>님 반갑습니다.</h3>
<%= loginId %> 님의 레벨은 
<%= level%> 입니다.
<br>
<br>
<% if(level >= 2) {%>
<a href="list.jsp">게시판으로 이동하기</a>
<%} 
else {%>
게시판을 이용할 수 없습니다.<%}
%>
<br>
<br>
<%if(level >= 3) {%>
<a href="member_list.jsp">관리자모드접속(회원목록보기)</a>
<%} %>
<br>
<br>
<a href="logout.jsp">로그아웃</a>
</body>
</html>