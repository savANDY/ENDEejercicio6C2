<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venta de productos</title>
</head>

<body>

	<%@page import="es.venta.productos.backingBean.LoginBackingBean"%>
	<%@page import="es.venta.productos.bbdd.beans.UserBean"%>

	<%
		// Sacamos los campos pasados por la request
		String login = ((String) request.getParameter("login")).trim();
		String pass = ((String) request.getParameter("pass")).trim();

		// Comprobamos user & pass
		LoginBackingBean loginBackingBean = new LoginBackingBean();
		UserBean userBean = loginBackingBean.comprobarLogin(login, pass);

		if (null != userBean) {
			// Guardamos los datos del login en sesion y redireccionamos
			request.getSession().setAttribute("userLoginBean", userBean);
			response.sendRedirect("welcome.jsp");
		} else {
			// Guardamos los datos del login erroneo en sesion y redireccionamos
			request.getSession().setAttribute("errorLogin", login);
			response.sendRedirect("error.jsp");
		}
	%>
</body>
</html>