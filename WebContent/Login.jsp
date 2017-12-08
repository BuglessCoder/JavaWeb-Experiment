<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<div align="center">
	<form action="Login.jsp" method="POST" >
		用户名: 
		<input type="text" name="Name" /><br/> 
	<p>
		密&nbsp&nbsp&nbsp&nbsp码:	
		<input type="password" name="Password"/><br/> 
	<p>	
		<input type="submit" value="提交"/><br/>
		
	</form>
  </div>
	<%
	request.setCharacterEncoding("UTF-8");
	String Name = request.getParameter("Name");
	session.setAttribute("Name", Name);
	String Password = request.getParameter("Password");
		if (Name != null && Password != null) {
			if (Name.equals("李大伟") && Password.equals("2015011367")) {
				session.setAttribute("Login", "OK");
				response.sendRedirect("Question.jsp");
			} else {
				out.println("登录失败，请重试！");
			}
		}
	%>

</body>
</html>