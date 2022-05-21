<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<form action = "success.htm" method = "post">
		<h3>FORM ADD NHÂN VIÊN</h3>
		<div style="padding: 10px">
			Username <input type="text" name="us">
		</div>
		<div style="padding: 10px">
			Password <input type="password" name="pw">
		</div>
		<div style="padding: 10px">
			Mã Nhân Viên <input type=text name="ma">
		</div>
		<div style="padding: 10px">
			Họ Nhân Viên <input type="text" name="honv">
		</div>
		<div style="padding: 10px">
			Tên Nhân Viên <input type="text" name="tennv">
		</div>
		<div style="padding: 10px">
			Email <input type="Email" name="email">
		</div>
		<div style="padding: 10px">
			Căn cước công dân <input type="text" name="cccd">
		</div>
		<div style="padding: 10px">
			SDT <input type="text" name="sdt">
		</div style="padding: 10px">
		<div>
			Chức vụ 
			<select name="droplistcv">
				<c:forEach items="${list}" var="i">
						<option>
							<c:out value="${i.tenCV}" />
						</option>
				</c:forEach>
			</select>
		</div>
		<button>Insert</button>
		<button type="submit" formaction="/CNPM/admin/danhsach.htm">Cancel</button>
	</form>
</body>
</html>