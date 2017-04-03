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
		// Recuperamos todos los productos
		ArrayList<ProductoBean> productos = new ArrayList<ProductoBean>();
		ProductosBackingBean productosBackingBean = new ProductosBackingBean();
		productos = productosBackingBean.rellenarProductos();
		
		// Si es nul0....
		if (productos == null) {
			%>
				La BBDD de Productos está vacía!!
			<%
		} else {
	%>
	<section>
		<table border="1">
			<tr align="center">
				<th>Nombre</th>
				<th>Referencia</th>
				<th>Precio</th>
			</tr>
			<%
			
			
			for (int i = 0; i < productos.size(); i++) {
			
	
			
				//for (ProductoBean prod : productos) {
			%>
			<tr>
				<td><%=productos.get(i).getNombre()%></td>
				<td><%=productos.get(i).getReferencia()%></td>
				<td><%=productos.get(i).getPrecio()%></td>
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