package es.venta.productos.bbdd.beans;

import java.util.List;

public class ProductoBean {

	private long id;
	private String nombre;
	private String referencia;
	private long precio;
	private List<PedidoBean> pedidos;
	
	// Constructor
	public ProductoBean(long id, String nombre, String referencia, long precio, List<PedidoBean> pedidos) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.referencia = referencia;
		this.precio = precio;
		this.pedidos = pedidos;
	}
	
	// Constructor vacio
	public ProductoBean() {
		super();
	}
	
	// Getters y Setters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getReferencia() {
		return referencia;
	}
	public void setReferencia(String referencia) {
		this.referencia = referencia;
	}
	public long getPrecio() {
		return precio;
	}
	public void setPrecio(long precio) {
		this.precio = precio;
	}
	public List<PedidoBean> getPedidos() {
		return pedidos;
	}
	public void setPedidos(List<PedidoBean> pedidos) {
		this.pedidos = pedidos;
	}
	
	
	
	
}
