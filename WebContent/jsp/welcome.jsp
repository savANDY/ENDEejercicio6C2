<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venta de productos</title>
</head>

<body>

	<%@page import="es.venta.productos.bbdd.beans.UserBean"%>

	<%
		// Recuperamos los datos del login de sesion 
		UserBean userBean = (UserBean) request.getSession().getAttribute("userLoginBean");

		// Control de acceso para prevenir que accedan a wellcome.jsp si estan logeados
		if (null == userBean) {
			response.sendRedirect("index.jsp");
		}
	%>

	<section>
		<form method="post" action="logout.jsp">
			<section>
				<h1>WELLCOME!!</h1>
				<h3>
					Hola,
					<%=userBean.getLogin()%>
					!!
				</h3>
			</section>
			<section>
				<input class="button" type="submit" name="botonEnviar"
					value="LOGOUT" />
			</section>
		</form>
		<form method="post" action="mostrarCatalogo.jsp">
			<section>
				<input class="button" type="submit" name="botonEnviar"
					value="CATALOGO" />
			</section>
		</form>
		<form method="post" action="mostrarReferencia.jsp">
			<section>
				Referencia <input type="text" name="reference" size="15" required><br />
			</section>
			<section>
				<input class="button" type="submit" name="botonEnviar"
					value="BUSCAR" />
			</section>
		</form>
	</section>
</body>
</html>