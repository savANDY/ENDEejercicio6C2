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
		// Sacamos los campos pasados por la request
		String reference = ((String) request.getParameter("reference")).trim();

		// Recuperamos todos los productos

		if (null == null) {
			%>
				NO EXISTE ESE PRODUCTO!!
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
			<tr>
				<td><%=producto.getNombre()%></td>
				<td><%=producto.getReferencia()%></td>
				<td><%=producto.getPrecio()%></td>
			</tr>
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