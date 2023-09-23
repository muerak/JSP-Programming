<%@page import="java.util.ArrayList"%>
<%@page import="usedBookProject.usedBookDO"%>
<%@page import="usedBookProject.usedBookDAO"%>
<%@page import="java.sql.PseudoColumnUsage"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
.tooltip-custom {
	max-width: 300px;
}
</style>
<meta charset="EUC-KR">
<title>�Ѻ� �߰���-��ü ����</title>
</head>
<body>
	<div class="container">
		<%@ include file="usedBooknav.jsp"%>
		<br>
		<p class="text-center fs-2 fw-bold">��ü ���� ���</p>
		<br>
		<div class="mb-3">
    <div class="row align-items-center">
        <div class="col">
            <a class="btn btn-primary" href="usedBookForm.jsp" role="button">�� ���� ����ϱ�</a>
        </div>
        <div class="col text-end">
            <%
                String category = request.getParameter("category");
                if (category == null || category.isEmpty()) {
                    category = null;
                }
            %>
            <form action="usedBookList.jsp" method="get" accept-charset="UTF-8">
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="category" value="���б���" <%= category != null && category.equals("���б���") ? "checked" : "" %>>
                    <label class="form-check-label">���б���</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="category" value="�Ҽ�" <%= category != null && category.equals("�Ҽ�") ? "checked" : "" %>>
                    <label class="form-check-label">�Ҽ�</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="category" value="��/������" <%= category != null && category.equals("��/������") ? "checked" : "" %>>
                    <label class="form-check-label">��/������</label>
                </div>
                <button type="submit" class="btn btn-primary me-2">�˻�</button>
                <a class="btn btn-primary" onclick="location.href='usedBookList.jsp'" role="button">�ʱ�ȭ</a>
            </form>
        </div>
    </div>
</div>




		<table class="table">
			<thead>
				<tr>
					<td scope="col">#</td>
					<td scope="col">ISBN</td>
					<td scope="col">������</td>
					<td scope="col">����</td>
					<td scope="col">ī�װ�</td>
					<td scope="col">�Ⱓ ����</td>
					<td scope="col">����</td>
					<td scope="col">���� ����</td>
					<td scope="col">�ŷ� ���</td>
				</tr>
			</thead>
			<tbody>

				<jsp:useBean id="udao" class="usedBookProject.usedBookDAO" scope="application" />

	<%
  		ArrayList<usedBookDO> v = udao.getAllBook();
  		
  		for(int i=0; i < v.size(); i++) {
  			usedBookDO udo = v.get(i);
  			 if (category == null || udo.getCategory().equals(category)) {
  	%>


				<tr>
					<th scope="row"><%= udo.getNum() %></th>
					<td><%= udo.getISBN() %></td>
					<td><a href="usedBookInfo.jsp?num=<%= udo.getNum() %>"
						style="text-decoration: none; font-weight: bold;"
						data-bs-toggle="tooltip" data-bs-placement="top"
						data-bs-html="true" data-bs-trigger="hover"
						data-bs-title="<%= udo.getDescription() %>"><%= udo.getTitle() %></a></td>
					<td><%= udo.getAuthor() %></td>
					<td><%= udo.getCategory() %></td>
					<td><%= udo.getPublished_date() %></td>
					<td><%= udo.getPrice() %></td>
					<td><%= udo.getCondition() %></td>
					<td><%= udo.getDeal() %></td>
				</tr>

	<%
  			}
  		}
	%>
			</tbody>
		</table>
	</div>
	<script>
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl)
    })
  </script>

</body>
</html>