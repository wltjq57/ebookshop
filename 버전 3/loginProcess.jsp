<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
String driver = "org.mariadb.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/board";

request.setCharacterEncoding("UTF-8");

String id 		= request.getParameter("id");
String password = request.getParameter("password");
String sql		= "SELECT * FROM user";

Connection conn = null;
Statement stmt 	= null;
ResultSet rs 	= null;

   try {
      Class.forName(driver);
         
      conn = DriverManager.getConnection(url,"root", "1234");
      
      stmt = conn.createStatement();
      
      rs=stmt.executeQuery(sql);
     
        while(rs.next()) {
             if(id.equals(rs.getString(1))&&password.equals(rs.getString(2))){
               session.setAttribute("id", rs.getString(1));
               session.setAttribute("level", rs.getInt(4));
            response.sendRedirect("main.jsp");
            return;
             }
        }
   
             if(rs.next() == false) response.sendRedirect("login.jsp");
          
        }
   catch(Exception e){
      e.printStackTrace();
      response.sendRedirect("login.jsp");
      }
   
   finally{
      try{
         rs.close();
         stmt.close();
         conn.close();
      }
      catch(Exception e){
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