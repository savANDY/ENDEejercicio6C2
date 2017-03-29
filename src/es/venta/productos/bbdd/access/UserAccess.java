package es.venta.productos.bbdd.access;

import es.venta.productos.bbdd.beans.UserBean;

public class UserAccess {

	/**
	 * 
	 * Comprueba si el usuario existe en la "BBDD"
	 * 
	 * @param login
	 * @return
	 * @throws Exception
	 */
	
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
