package es.venta.productos.bbdd.access;

import es.venta.productos.bbdd.beans.UserBean;

public class UserAccess {

	public UserBean select(String login) throws Exception {
		
		UserBean ret = null;
		if (login.equalsIgnoreCase("admin")) {
			ret = new UserBean();
			ret.setId(1);
			ret.setLogin("admin");
			ret.setPass("admin");
		}
		return ret;
	}
}
