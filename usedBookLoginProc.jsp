<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		session.setAttribute("id", id);
		session.setAttribute("password", password);
		
		session.setMaxInactiveInterval(60*2);
		
		response.sendRedirect("usedBookMain.jsp");

%>
</body>
</html>