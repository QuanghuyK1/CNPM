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
	<form>
		<h2>Admin</h2>
		<button type="submit" formaction="/CNPM/admin/back.htm">danh
			sách nhân viên</button>
		<button type="submit" formaction="/CNPM/admin/back1.htm">Loại
			Xe</button>
		<button type="submit" formaction="/CNPM/admin/back2.htm">Xe Khách</button>
		<h3>danh sách loại xe</h3>
		<br>
		<button name="Insert">Thêm Loại Xe</button>
	</form>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Mã loại xe</th>
					<th scope="col">Tên loại xe</th>
					<th scope="col">Cập nhật</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="i">
					<c:if test="${i.trangthai == true }">
						<tr>
							<th><a href="loaixe/${i.maLX}.htm">${i.maLX }</a></th>
							<th>${i.tenLX}</th>
							<th><form action="loaixe/${i.maLX}.htm">
									<button name="update">cập nhật</button>
								</form></th>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>