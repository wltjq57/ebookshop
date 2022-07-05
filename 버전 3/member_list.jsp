<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	String id=null;
	String driver = "org.mariadb.jdbc.Driver"; //드라이버 연결
	String url = "jdbc:mysql://localhost:3306/board"; //연결 설정
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs=null;
	
	try {
		Class.forName(driver);
		
		// 2. 드라이버 매니저 연결 + Connection  객체 생성
		conn = DriverManager.getConnection(url,"root","1234");
		// 3. Statement 객체 생성(SQL 구문 실행 메소드를 가진 객체)
		stmt = conn.createStatement();
		
		//Sql로 signup 데이터를 지정하고 rs에 가져온다.
		String sql = "SELECT * FROM user";
		rs = stmt.executeQuery(sql);
			
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 시스템 관리자모드(회원 목록 보기)</title>
<style>
	table{
		margin : auto;
		width : 400px;
		border : 1px solid gray;
		text-align: center;
	}
	.td_title{
		font-weight: bold;
		fonr-size: x-large;
	}
	.atag {
	text-align:center;
	}
</style>
</head>
<body>
<table>
	<tr><td colspan=2 class="td_title">회원 목록</td></tr>

<%while(rs.next()) {%>
	<tr>
		<td>
			<a href="member_info.jsp?id=<%=rs.getString("id") %>"><%=rs.getString("id") %></a>
		</td>
		<td>
		    <a href="member_delete.jsp?id=<%=rs.getString("id") %>">삭제</a>	    
		</td>
	</tr>
<%} %>
</table>
<div class="atag">
	<a href="login.jsp">로그인으로 돌아가기</a>
</div>
</body>
</html>