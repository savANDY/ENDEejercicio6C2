<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venta de productos</title>
</head>

<body>

	<%@page import="java.util.ArrayList"%>
	<%@page import="es.venta.productos.bbdd.beans.*"%>
	<%@page import="es.venta.productos.backingBean.*"%>
	<%
		// Sacamos los campos pasados por la request
		String reference = ((String) request.getParameter("reference")).trim();

		// Recuperamos todos los productos

		ArrayList<ProductoBean> productos = new ArrayList<ProductoBean>();
		ProductosBackingBean productosBackingBean = new ProductosBackingBean();
		productos = productosBackingBean.rellenarProductos();

		boolean encontrado = false;

		if (productos == null) {
	%>
	La BBDD de Productos está vacía!!
	<%
		} else {
			ProductoBean productoReferenciado = new ProductoBean();
			for (int i = 0; i < productos.size(); i++) {
				if (productos.get(i).getReferencia().equals(reference)) {
					productoReferenciado = productos.get(i);
					encontrado = true;
				}
			}

			if (!encontrado) {
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
				<td><%=productoReferenciado.getNombre()%></td>
				<td><%=productoReferenciado.getReferencia()%></td>
				<td><%=productoReferenciado.getPrecio()%></td>
			</tr>
		</table>
	</section>
	<%
		}
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