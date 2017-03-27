<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venta de productos</title>
</head>

<body>
	<%
		request.getSession().setAttribute("userLoginBean", null);
		request.getSession().invalidate();
		response.sendRedirect("index.jsp");
	%>
</body>
</html>