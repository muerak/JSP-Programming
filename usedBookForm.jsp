<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<meta charset="EUC-KR">
<title>�Ǹ� ���� ����ϱ�</title>
</head>
<body>
<div class="container">
<%@ include file="usedBooknav.jsp"%>
	<form action="usedBookProc.jsp" method="post" accept-charset="UTF-8"
	style="width:700px; margin:10px auto; border:1px solid #eeeee4; padding:20px;">
	<p class="text-center fs-2 fw-bold">�Ǹ� ���� ����ϱ�</p>
  		<div class="mb-3">
    		<label for="exampleInputEmail1" class="form-label fw-bold">ISBN ��ȣ</label>
    		<input type="text" class="form-control" name="ISBN">
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">������</label>
    		<input type="text" class="form-control" name="title">
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">����</label>
    		<input type="text" class="form-control" name="author">
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">ī�װ�</label>
    		<br>
    		<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="category" value="���б���">
  				<label class="form-check-label">���б���</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="category" value="�Ҽ�">
  				<label class="form-check-label">�Ҽ�</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="category" value="��/������">
  				<label class="form-check-label">��/������</label>
			</div>
		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">�Ⱓ ����</label>
    		<input type="text" class="form-control" name="published_date">
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">����</label>
    		<input type="text" class="form-control" name="price">
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">���� ����</label>
    		<br>
    		<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="condition" value="����">
  				<label class="form-check-label">����</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="condition" value="����">
  				<label class="form-check-label">����</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="condition" value="����">
  				<label class="form-check-label">����</label>
			</div>
  		</div>
  		<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">�ŷ� ���</label>
    		<br>
    		<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="deal" value="���ŷ�">
  				<label class="form-check-label">���ŷ�</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="deal" value="����/(��)���">
  				<label class="form-check-label">����/(��)���</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="deal" value="�ù�(�ݰ�/���� ����)">
  				<label class="form-check-label">�ù�(�ݰ�/���� ����)</label>
			</div>
			</div>
			<div class="mb-3">
    		<label for="exampleInputPassword1" class="form-label fw-bold">������ ���� �Ұ��� �����ּ���! ���� �ǸŸ� ���� �� �ֽ��ϴ�.</label>
    		<textarea class="form-control" name="description" rows="5"></textarea>
  			</div>
  	
  		<button type="submit" class="btn btn-primary">����ϱ�</button>
  		<button type="reset" class="btn btn-primary">�ٽ� �ۼ��ϱ�</button>
	</form>
</div>
</body>
</html>