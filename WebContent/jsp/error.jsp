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
		// Sacamos el nombre del login erroneo
		String errorLogin = (String) request.getSession().getAttribute("errorLogin");
	
		// Nos sobra de sesion, hay que mantenerla limpia
		request.getSession().removeAttribute("errorLogin");
	%>
	<section>
		<form method="post" action="index.jsp">
			<section>
				<h1>ERROR!</h1>
				<h3>
					El usuario
					<%=errorLogin%>
					no es correcto...
				</h3>
			</section>
			<section>
				<input class="button" type="submit" name="botonEnviar" value="VOLVER" />
			</section>
		</form>
	</section>
</body>
</html>