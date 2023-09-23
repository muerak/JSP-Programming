<%@page import="usedBookProject.usedBookDO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="udo" class="usedBookProject.usedBookDO" >
	<jsp:setProperty name="udo" property="*"/>
</jsp:useBean>

<jsp:useBean id="udao" class="usedBookProject.usedBookDAO" />

<%
	udao.insertBook(udo);
%>

<div class="container">
<%@ include file="usedBooknav.jsp" %>
	<form action="usedBookProc.jsp" method="post"
	style="width:700px; margin:10px auto; border:1px solid #eeeee4; padding:20px;">
	<p class="text-center fs-2 fw-bold">판매 도서 등록하기</p>
  		<div class="mb-3">
    		<label for="exampleInputEmail1" class="form-label fw-bold">ISBN 번호</label>
    		<%= udo.getISBN() %>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">도서명</label>
    		<%= udo.getTitle() %>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">저자</label>
    		<%= udo.getAuthor() %>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">카테고리</label>
    		<%= udo.getCategory() %>
		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">출간 일자</label>
    		<%= udo.getPublished_date() %>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">가격</label>
    		<%= udo.getPrice() %>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">도서 상태</label>
    		<%= udo.getCondition() %>
    		
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">거래 방법</label>
    		<%= udo.getDeal() %>
    		
  		</div>
  		<a class="btn btn-primary" href="usedBookList.jsp" role="button">전체 목록 보기</a>
	</form>
</div>
</body>
</html>