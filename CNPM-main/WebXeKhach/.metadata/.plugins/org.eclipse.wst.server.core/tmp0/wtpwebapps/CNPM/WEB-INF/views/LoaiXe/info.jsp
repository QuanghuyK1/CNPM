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
		<label>Mã Loại Xe</label>
		<input type = "text" name = "malx" value = "${loai.maLX }"/>
		<label>Tên Loại Xe</label>
		<input type = "text" name = "tenlx" value = "${loai.tenLX }"/>
		<button>Cập nhật</button>
	</form>
</body>
</html>