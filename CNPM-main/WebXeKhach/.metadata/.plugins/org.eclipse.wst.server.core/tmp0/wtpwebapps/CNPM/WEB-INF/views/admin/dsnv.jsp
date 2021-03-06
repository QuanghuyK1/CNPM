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
<script src="jquery-3.6.0.min.js"></script>
</head>
<body>
	<h2>Admin</h2>
	<form>
		<button type="submit" formaction="/CNPM/admin/back.htm">danh
			sách nhân viên</button>
		<button type="submit" formaction="/CNPM/admin/back1.htm">Loại
			Xe</button>
		<button type="submit" formaction="/CNPM/admin/back2.htm">Xe Khách</button>
		<h3>danh sách nhân viên</h3>
		<br>
		<button name="addNV">Thêm NV</button>

		<div style="margin-left: 80%;">
			<input name="search" placeholder="Tìm kiếm">
			<button name="searchNv">Search</button>
		</div>
	</form>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Mã nhân viên</th>
				<th scope="col">Họ nhân viên</th>
				<th scope="col">Tên nhân viên</th>
				<th scope="col">Username</th>
				<th scope="col">Chức Vụ</th>
				<th scope="col">Xóa nhân viên</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="i">
				<c:if test="${i[5] == true }">
					<tr>
						<th><a href="danhsach/${i[0]}.htm">${i[0] }</a></th>
						<th>${i[1]}</th>
						<th>${i[2] }</th>
						<th>${i[3]}</th>
						<th>${i[4]}</th>
						<th>
							<form action = "danhsach/${i[0]}.htm"><button name="delNV">Xóa</button></form>
						</th>
					</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>
	</form>
</body>
</html>