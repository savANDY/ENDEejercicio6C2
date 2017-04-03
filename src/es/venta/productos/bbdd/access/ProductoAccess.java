package es.venta.productos.bbdd.access;

import java.util.ArrayList;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import es.venta.productos.backingBean.LoginBackingBean;
import es.venta.productos.bbdd.beans.ProductoBean;

public class ProductoAccess {
	
	private static final Logger log = LogManager.getLogger(LoginBackingBean.class.getName());
	
	public ArrayList<ProductoBean> seleccionarProductos() {
		
		ArrayList<ProductoBean> ret = new ArrayList<ProductoBean>();
		
		ProductoBean producto1 = new ProductoBean();
		ProductoBean producto2 = new ProductoBean();
		ProductoBean producto3 = new ProductoBean();
		ProductoBean producto4 = new ProductoBean();
		ProductoBean producto5 = new ProductoBean();
		
		producto1.setId(1);
		producto1.setNombre("Mesa");
		producto1.setPrecio(399);
		producto1.setReferencia("1648511968");
		
		producto2.setId(2);
		producto2.setNombre("Silla");
		producto2.setPrecio(45);
		producto2.setReferencia("179543658");
		
		producto3.setId(3);
		producto3.setNombre("Portatil");
		producto3.setPrecio(1299);
		producto3.setReferencia("11689987CDHRV");
		
		producto4.setId(4);
		producto4.setNombre("Raton");
		producto4.setPrecio(59);
		producto4.setReferencia("98765449");
		
		producto5.setId(5);
		producto5.setNombre("Gafas");
		producto5.setPrecio(219);
		producto5.setReferencia("1");
		
		ret.add(producto1);
		ret.add(producto2);
		ret.add(producto3);
		ret.add(producto4);
		ret.add(producto5);
		
		log.info("Productos de la BBDD seleccionados");
		return ret;
	}
	
}
