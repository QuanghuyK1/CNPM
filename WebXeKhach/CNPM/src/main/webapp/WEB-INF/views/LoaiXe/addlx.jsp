<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form method = "post">
		<label>Mã Loại Xe</label><input type = "text" name = "malx">
		<label>Tên Loại Xe</label><input type = "text" name = "tenlx">
		<button name = "Insert">Thêm</button>
		<button type="submit" formaction="/CNPM/admin/loaixe.htm">Hủy</button>
	</form>
</body>
</html>