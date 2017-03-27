<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venta de productos</title>
</head>

<body>

	<%@page import="java.util.List"%>

	<%
		// Recuperamos todos los productos

		// Si es nul0....
		if (null == null) {
			%>
				La BBDD de Productos está vacía!!
			<%
		} else {
	%>
	<section>
		<table>
			<tr>
				<th>Nombre</th>
				<th>Referencia</th>
				<th>Precio</th>
			</tr>
			<%
				for (ProductoBean prod : productos) {
			%>
			<tr>
				<td><%=prod.getNombre()%></td>
				<td><%=prod.getReferencia()%></td>
				<td><%=prod.getPrecio()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</section>
	<%
		}
	%>
	<section>
		<form method="post" action="welcome.jsp">
			<section>
				<input class="button" type="submit" name="botonEnviar"
					value="VOLVER" />
			</section>
		</form>
	</section>
</body>
</html>