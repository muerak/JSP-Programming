<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<meta charset="EUC-KR">
<title>판매 도서 등록하기</title>
</head>
<body>
<div class="container">
<%@ include file="usedBooknav.jsp"%>
	<form action="usedBookProc.jsp" method="post" accept-charset="UTF-8"
	style="width:700px; margin:10px auto; border:1px solid #eeeee4; padding:20px;">
	<p class="text-center fs-2 fw-bold">판매 도서 등록하기</p>
  		<div class="mb-3">
    		<label for="exampleInputEmail1" class="form-label fw-bold">ISBN 번호</label>
    		<input type="text" class="form-control" name="ISBN">
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">도서명</label>
    		<input type="text" class="form-control" name="title">
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">저자</label>
    		<input type="text" class="form-control" name="author">
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">카테고리</label>
    		<br>
    		<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="category" value="대학교재">
  				<label class="form-check-label">대학교재</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="category" value="소설">
  				<label class="form-check-label">소설</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="category" value="시/에세이">
  				<label class="form-check-label">시/에세이</label>
			</div>
		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">출간 일자</label>
    		<input type="text" class="form-control" name="published_date">
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">가격</label>
    		<input type="text" class="form-control" name="price">
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">도서 상태</label>
    		<br>
    		<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="condition" value="나쁨">
  				<label class="form-check-label">나쁨</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="condition" value="보통">
  				<label class="form-check-label">보통</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="condition" value="좋음">
  				<label class="form-check-label">좋음</label>
			</div>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">거래 방법</label>
    		<br>
    		<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="deal" value="직거래">
  				<label class="form-check-label">직거래</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="deal" value="우편/(준)등기">
  				<label class="form-check-label">우편/(준)등기</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="deal" value="택배(반값/끼리 포함)">
  				<label class="form-check-label">택배(반값/끼리 포함)</label>
			</div>
			</div>
			<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">도서에 대한 소개를 남겨주세요! 빠른 판매를 도울 수 있습니다.</label>
    		<textarea class="form-control" name="description" rows="5"></textarea>
  			</div>
  	
  		<button type="submit" class="btn btn-primary">등록하기</button>
  		<button type="reset" class="btn btn-primary">다시 작성하기</button>
	</form>
</div>
</body>
</html>