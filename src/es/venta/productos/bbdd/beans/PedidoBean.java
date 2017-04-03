package es.venta.productos.bbdd.beans;

import java.util.Date;

public class PedidoBean {

	private long idUser;
	private long idProducto;
	private Date fecha;
	private UserBean user;
	private ProductoBean producto;
	
	// Constructor
	public PedidoBean(long idUser, long idProducto, Date fecha, UserBean user, ProductoBean producto) {
		super();
		this.idUser = idUser;
		this.idProducto = idProducto;
		this.fecha = fecha;
		this.user = user;
		this.producto = producto;
	}
	
	// Constructor vacio
	public PedidoBean() {
		super();
	}

	// Getters y Setters
	public long getIdUser() {
		return idUser;
	}
	public void setIdUser(long idUser) {
		this.idUser = idUser;
	}
	public long getIdProducto() {
		return idProducto;
	}
	public void setIdProducto(long idProducto) {
		this.idProducto = idProducto;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public UserBean getUser() {
		return user;
	}
	public void setUser(UserBean user) {
		this.user = user;
	}
	public ProductoBean getProducto() {
		return producto;
	}
	public void setProducto(ProductoBean producto) {
		this.producto = producto;
	}
	
	
}
