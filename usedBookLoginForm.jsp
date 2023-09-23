<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<head>
<meta charset="EUC-KR">
<title>한빛 중고 도서 - 로그인</title>
</head>
<body>
<div class="container">
<%@ include file="usedBooknav.jsp" %>
	<form action="usedBookLoginProc.jsp"
	style="width:500px; margin:10px auto; border:1px solid #eeeee4; padding:20px;" method="post">
	<p class="text-center fs-2 fw-bold">로그인</p>
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">아이디</label>
    	<input type="text" class="form-control" name="id" placeholder="6~12자리 이내 영문 및 숫자">
  	</div>
  	<div class="mb-3">
    	<label for="exampleInputPassword1" class="form-label">비밀번호</label>
    	<input type="password" class="form-control" name="password" placeholder="8자리 이상의 영문, 숫자, 특수문자">
  	</div>
  		<button type="submit" class="btn btn-primary">로그인</button>
	</form>
</div>
</body>
</html>