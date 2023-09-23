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
		String logout = request.getParameter("logout");
		if( logout != null ) {
			session.setAttribute("id", null);
			session.setMaxInactiveInterval(0);
		}
		
		String id = (String) session.getAttribute("id");
		if( id == null ) {
			id = "비회원";
		}
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="usedBookMain.jsp">한빛 중고 도서</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" href="usedBookList.jsp">도서 목록</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" href="usedBookForm.jsp">등록하기</a>
	        </li>
	      </ul>
	   
	     <%
				if(id.equals("비회원")) {	      
	      %>
	      		<%= id %> <input class="btn btn-outline-success" type="button"
	      			value="로그인" onclick="location.href='usedBookLoginForm.jsp'" stype="margin-left:20px;">
	      <%
				} else {	      
	      %>
	      		<%= id %> 님 <input class="btn btn-outline-success" type="button"
	      			value="로그아웃" onclick="location.href='usedBookMain.jsp?logout=1'" stype="margin-left:20px;">
	      <%
				}      
	      %>
	    </div>
	  </div>
	</nav>
</body>
</html>