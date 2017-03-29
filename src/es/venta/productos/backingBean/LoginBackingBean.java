package es.venta.productos.backingBean;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import es.venta.productos.bbdd.access.UserAccess;
import es.venta.productos.bbdd.beans.UserBean;

public class LoginBackingBean {
	private static final Logger log = LogManager.getLogger(LoginBackingBean.class.getName());

	public UserBean comprobarLogin(String login, String pass) {
		log.error("Patata frita");
		UserBean ret = null;
		UserAccess userAccess = null;
		try {
			userAccess = new UserAccess();

			// Buscamos el usuario con este login
			ret = userAccess.select(login);

			// Si es null, el usuario no existe y el metodo termina.
			// Si es distinto de null comprobamos el pass
			if (null != ret) {
				boolean passOk = comprobarPass(ret, pass);

				// Si el passOk es false, devolvemos null
				// Si es true todo está bien
				if (passOk == false) {
					ret = null;
				}
			}
		} catch (Exception e) {
		}
		return ret;
	}

	private boolean comprobarPass(UserBean userBean, String pass) {
		return ((null != userBean.getPass()) && (userBean.getPass().equalsIgnoreCase(pass)) ? true : false);
	}

}
