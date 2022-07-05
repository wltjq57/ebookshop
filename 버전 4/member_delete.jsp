<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*" %>
<%
	String driver = "org.mariadb.jdbc.Driver"; //드라이버 연결
	String url = "jdbc:mysql://localhost:3306/board"; //연결 설정
	Connection conn = null; //객체 conn 선언
	Statement stmt = null; //객체 stmt 선언
	ResultSet rs=null; // 객체 rs 선언
	
	String id = request.getParameter("id");
	String sql = "select * from user";
	String delete = "delete from user where id='" + id + "'";
	
	try {
		// 1. 데이터 베이스(mariaDB) 드라이버 로드
		Class.forName(driver);
		// 2. 드라이버 매니저 연결 + Connection  객체 생성
		conn = DriverManager.getConnection(url,"root","1234");
		// 3. Statement 객체 생성(SQL 구문 실행 메소드를 가진 객체)
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			
			if(id.equals((String)session.getAttribute("id"))){
				
				session.removeAttribute("id");
				response.sendRedirect("login.jsp");
				return;
			}
			if(id != null && id.equals(rs.getString("id"))){
				
				stmt.executeQuery(delete);
				response.sendRedirect("member_list.jsp");
				return;
			}
			
		}
	
		if(rs.next()==false) response.sendRedirect("login.jsp");
		
	}catch(Exception e)
	{
		e.printStackTrace();
		response.sendRedirect("member_list.jsp");
	}finally{
		try{
			rs.close();
			stmt.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>