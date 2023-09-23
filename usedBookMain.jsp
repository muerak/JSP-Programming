<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<meta charset="EUC-KR">
<title> 한빛 중고도서 </title>
<style>
        .img-fluid {
            height: 400px;
        }
    </style>
</head>
<body>
<div class="container">
	<%@ include file="usedBooknav.jsp" %>
	<img src="./image/bannerIMG.png" class="img-fluid" style="margin-bottom: 50px;">
	<%@ include file="usedBookCards.jsp" %>
</div>
</body>
</html>