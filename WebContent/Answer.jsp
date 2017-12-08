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
		
		int sum = 0;
		String errorQues="";
		String s1 = request.getParameter("panduan");
		String s2 = request.getParameter("danxuan");
		String s31 = request.getParameter("a1");
		String s32 = request.getParameter("b1");
		String s33 = request.getParameter("c1");
		String s34 = request.getParameter("d1");
		
		if (s1 == null)
			s1 = "";
		if (s2==null)
			s2="";
		if (s31==null)
			s31="";
		if (s32==null)
			s32="";
		if (s33==null)
			s33="";
		if (s34==null)
			s34="";
		if (s1.equals("1")){
			sum++;
		}
		else{
			errorQues+="1";
		}
		if (s2.equals("c")){
			sum++;
		}
		else{
			errorQues+="2";
		}
		if(s31.equals("a")&&s33.equals("c")){
			sum++;
		}
		else{
			errorQues+="3";
		}
	%>
	<p>
		共有3道题，你一共答对了<%=sum %>道题
	<p>
	<%if(sum==3)
		out.print("恭喜你全答对了");
	else
		out.print("您答错了第"+errorQues+"题");
		%>
		</div>
</body>
</html>