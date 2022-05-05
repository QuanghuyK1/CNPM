<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<form method = "get">
		<h3>Danh Sách Xe Khách Thuộc loại ${maLX }</h3>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Biển Xe</th>
					<th scope="col">Loại Xe</th>
					<th scope="col">Số Chỗ</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="i">
					<c:if test="${i[3] == true }">
						<tr>
							<th>${i[0]}</th>
							<th>${i[1]}</th>
							<th>${i[2]}</th>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		<button type="submit" formaction="/CNPM/admin/back1.htm">Cancel</button>
		<button name="Insert">Insert</button>
	</form>
</body>
</html>