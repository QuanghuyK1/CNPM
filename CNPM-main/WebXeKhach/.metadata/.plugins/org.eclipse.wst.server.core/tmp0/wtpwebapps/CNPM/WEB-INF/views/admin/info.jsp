<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form method = "post">
		<h3>
			Mã nhân viên : ${nv.maNV }
		</h3>
		<h3>Họ nhân viên: <input type = "text" name = "honv" value = "${nv.hoNV }"/></h3>
		<h3>Tên nhân viên: <input type = "text" name = "tennv" value = "${nv.tenNV }"/></h3>
		<h3>Phái:
				<input type = "text" name = "phai" value = "${nv.phai }">

		</h3>
		<h3>Ngày Sinh: 
			<input type = "text" name = "ngaysinh" value = "${date }"/>
		</h3>
		<h3>cccd: <input type = "text" name = "cccd" value = "${nv.cccd }"/></h3>
		<h3>email: <input type = "text" name = "email" value = "${nv.email }"/></h3>
		<h3>sdt: <input type = "text" name = "sdt" value = "${nv.sdt }"/></h3>
		<button name = "update">Update</button>
	</form>
</body>
</html>