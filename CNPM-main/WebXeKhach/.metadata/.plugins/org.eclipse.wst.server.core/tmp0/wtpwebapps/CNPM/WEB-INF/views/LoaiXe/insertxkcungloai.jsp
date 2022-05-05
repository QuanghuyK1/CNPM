<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$(".listadd").hide();
		$("select.chuyenxe").change(function() {
			var selected = $(this).children("option:selected").val();
			if (selected != "None") {
				$(".listadd").show();
			} else {
				$(".listadd").hide();
			}
		});
	});
</script>
</head>
<body>
	<form:form modelAttribute="xe" method="post">
		<label>Biển Xe</label>
		<form:input path="bienXe" />
		<label>Seat</label>
		<form:input path="seat" />
		<button type="submit" formaction="/CNPM/admin/loaixe/${lx.maLX}.htm">Cancel</button>
		<button>Accept</button>
	</form:form>

</body>
</html>