package es.venta.productos.bbdd.beans;

public class UserBean {

	private long id = 0;
	private String login = null;
	private String pass = null;

	//-- Gets & Sets
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
}
