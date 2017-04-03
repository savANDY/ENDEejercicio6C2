package es.venta.productos.backingBean;

import java.util.ArrayList;

import es.venta.productos.bbdd.access.ProductoAccess;
import es.venta.productos.bbdd.beans.ProductoBean;

public class ProductosBackingBean {

	ProductoAccess productoAccess = new ProductoAccess();

	public ArrayList<ProductoBean> rellenarProductos() {

		ArrayList<ProductoBean> ret = new ArrayList<ProductoBean>();
		ret = productoAccess.seleccionarProductos();

		return ret;

	}

}
