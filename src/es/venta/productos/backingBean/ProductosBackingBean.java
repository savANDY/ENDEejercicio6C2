package es.venta.productos.backingBean;

import java.util.ArrayList;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import es.venta.productos.bbdd.access.ProductoAccess;
import es.venta.productos.bbdd.beans.ProductoBean;

/**
 * CONTROLADOR - Gestion de Catalogo de Productos
 * 
 * Aquí encontraremos metodos que toman las decisiones pertinentes al proceso de
 * muestra del catalogo de productos.
 * 
 * @author Valeriu
 *
 */

public class ProductosBackingBean {

	private static final Logger log = LogManager.getLogger(LoginBackingBean.class.getName());

	/**
	 * Retornamos el catalogo de productos completo, o nulo si no hay productos
	 * 
	 * @return Listado de productos | null
	 */

	public ArrayList<ProductoBean> rellenarProductos() {

		ProductoAccess productoAccess = null;
		ArrayList<ProductoBean> ret = null;

		try {
			productoAccess = new ProductoAccess();
			ret = productoAccess.seleccionarProductos();

			log.info(ret.size() + " productos encontrados");

		} catch (Exception e) {
			log.error("Error", e);
		}

		return ret;

	}

}
