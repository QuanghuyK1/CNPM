<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="xe" method = "post">
		<h3>Form Nhập Thêm Xe Khách</h3>
		<label>Biển Xe</label>
		<form:input path="bienXe" />
		<label>Seat</label>
		<form:input path="seat" />
		<label>Loại Xe</label>
		<select name="listlx">
				<c:forEach items="${list}" var="i">
						<option value = "${i.maLX }">
							${i.tenLX}
						</option>
				</c:forEach>
		</select>
		<button type="submit" formaction="/CNPM/admin/xekhach.htm">Cancel</button>
		<button>Accept</button>
	</form:form>
</body>
</html>