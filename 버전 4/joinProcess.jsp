<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%
	String driver = "org.mariadb.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/board";

	request.setCharacterEncoding("UTF-8");
	String id		= request.getParameter("id");
	String password	= request.getParameter("password");
	String name		= request.getParameter("name");
//	int level			= Integer.parseInt(request.getParameter("level"));
	
	try { 
		Class.forName(driver); // 드라이버 로드 부분
		
		Connection conn = DriverManager.getConnection(url, "root", "1234"); // 컨넥션 부분
		
		Statement stmt =  conn.createStatement();
		
		/* 데이터 추가 INSERT */
		 String insertSql = "INSERT INTO user(id, password, name, level) VALUES('"+id+"','"+password+"','"+name+"', '1')";
		 stmt.executeQuery(insertSql);
		 response.sendRedirect("login.jsp");
		 conn.close();
	}
	
	catch(Exception e) {
		//	e.printStackTrace();
		System.out.println("JDBC 드라이버를 로드할 수 없습니다.");
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