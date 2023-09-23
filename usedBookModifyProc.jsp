<%@page import="usedBookProject.usedBookDAO"%>
<%@page import="usedBookProject.usedBookDO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="udo" class="usedBookProject.usedBookDO" >
	<jsp:setProperty name="udo" property="*" />
</jsp:useBean>
<jsp:useBean id="udao" class="usedBookProject.usedBookDAO" scope="application" />

<%
	udao.modifyBook(udo);
	response.sendRedirect("usedBookList.jsp");
%>
</body>
</html>