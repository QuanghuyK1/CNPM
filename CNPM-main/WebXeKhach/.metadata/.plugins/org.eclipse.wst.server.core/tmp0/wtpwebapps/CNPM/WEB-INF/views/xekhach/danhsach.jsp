<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
		<button type="submit" formaction="/CNPM/admin/back2.htm">Xe
			Khách</button>
		<h3>danh sách xe khách</h3>
		<br>
		<button name="Insert">Thêm Xe Khách</button>
	</form>
		<table class="table">
		<thead>
			<tr>
				<th scope="col">Biển Xe</th>
				<th scope="col">Loại Xe</th>
				<th scope="col">Số Ghế</th>
				<th scope="col">Trạng Thái</th>
				<th scope="col"></th>
				<th scope="col">Xóa Xe Khách</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="i">
					<tr>
						<th>${i.bienXe }</a></th>
						<th>${i.lx.tenLX}</th>
						<th>${i.seat }</th>
						<th><c:choose>
							<c:when test="${i.trangThai == true }">Đang Hoạt Động</c:when>
							<c:when test="${i.trangThai == false }">Đã Dừng Hoạt Động</c:when>
						</c:choose><th>
						<th><form action = "/CNPM/admin/xekhach/${i.bienXe}.htm"><button name = "delxe">Xóa</button></form><th>
					</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>