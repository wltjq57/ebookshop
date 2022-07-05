<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 시스템 로그인 페이지</title>
<style>
	table {
		margin : auto;
		width : 400px;
		border : 1px solid gray;
		text-align:center;
	}
	.td_title {
		font-weight: bold;
		font-size: x-large;
	}
	</style>
</head>
<body>
<form name="loginform" action="loginProcess.jsp" method="post" onsubmit="return formCheck1()">
	
<table>
	<tr>
		<td colspan="2" class="td_title"> 로그인 페이지</td>
	</tr>
	
	
	<tr>
		<td><label for = "id">아이디 </label></td>
		<td><input type="text" name="id" id="id"></td>
	</tr>
	<tr>
		<td><label for = "password">비밀번호 </label></td>
		<td><input type = "password" name="password" id="password"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="javascript:loginform.submit( )">로그인</a>&nbsp;&nbsp;
			<a href="join.jsp">회원가입</a>
		</td>
	</tr>
</table>
</form>
</body>
</html>