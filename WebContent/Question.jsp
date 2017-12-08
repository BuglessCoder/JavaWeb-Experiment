<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<%	
	String Login = (String)session.getAttribute("Login");
	
	if (Login!=("OK")) {		
		response.sendRedirect("Member.jsp");
	}	%>
	
	<form action="Answer.jsp" method="post" name=form>
	<% 
	String name = (String)session.getAttribute("Name");
	%>
	欢迎<%=name %>进入答题页面!
	<%session.invalidate();	 %>	
		<p>
			1.判断：Python是世界上最好的语言<br/>
			<input type="radio" name="panduan" value="1">对
			<input type="radio" name="panduan" value="0">错
			 <br>
		<p>
			2.单选：下列哪个是编程语言？<br/>
			<input type="radio" name="danxuan" value="a">Hadoop
			<input type="radio" name="danxuan" value="b">Linux
			<input type="radio" name="danxuan" value="c">Java
			<input type="radio" name="danxuan" value="d">Macbook
			<br/>
		<p>
			3.多选：下列哪些设备是笔记本电脑？<br/> 
			<input type="checkbox" name="a1" value="a">Macbook pro
			<input type="checkbox" name="b1" value="b">iphone X
			<input type="checkbox" name="c1" value="c">Surface book
			<input type="checkbox" name="d1" value="d">Mi Note3 
			<input type="submit" name="submit" value="提交答案">
	</form>
	</div>
</body>
</html>