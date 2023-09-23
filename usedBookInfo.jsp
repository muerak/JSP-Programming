<%@page import="usedBookProject.usedBookDO"%>
<%@page import="usedBookProject.usedBookDAO"%>
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
<jsp:useBean id="udao" class="usedBookProject.usedBookDAO" scope="application" />
<%
	int num = Integer.parseInt(request.getParameter("num"));
	usedBookDO udo = udao.getOneBook(num);
%>

<div class="container">
<%@ include file="usedBooknav.jsp" %>
	<form action="usedBookProc.jsp" method="post"
	style="width:700px; margin:10px auto; border:1px solid #eeeee4; padding:20px;">
	<p class="text-center fs-2 fw-bold">������ ���� ����</p>
  		<div class="mb-3">
    		<label for="exampleInputEmail1" class="form-label fw-bold">ISBN ��ȣ</label>
    		<%= udo.getISBN() %>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">������</label>
    		<%= udo.getTitle() %>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">����</label>
    		<%= udo.getAuthor() %>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">ī�װ�</label>
    		<%= udo.getCategory() %>
		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">�Ⱓ ����</label>
    		<%= udo.getPublished_date() %>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">����</label>
    		<%= udo.getPrice() %>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">���� ����</label>
    		<%= udo.getCondition() %>
    		
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">�ŷ� ���</label>
    		<%= udo.getDeal() %>	
  		</div>
  		
  		<a class="btn btn-primary" href="usedBookModify.jsp?num=<%= udo.getNum() %>" role="button">�����ϱ�</a>
  		<a class="btn btn-primary" href="usedBookList.jsp" role="button">��ü ���</a>
  		<a class="btn btn-primary" href="usedBookDelete.jsp?num=<%= udo.getNum() %>" role="button">�����ϱ�</a>
	</form>
</div>




</body>
</html>