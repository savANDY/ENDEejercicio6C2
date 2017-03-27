package es.venta.productos.bbdd.queries;

import es.venta.productos.bbdd.config.DataBaseConfig;

/**
 * MODELO - Sentencias SQL
 * 
 * Esta clase tan solo tiene atributos, y cada uno de ellos es una sentencia SQL
 * para trabajar contra BBDD
 * 
 * @author Borja
 * @version 1.0
 */
public class QueryUsers {

	//************************************//
	// No usamos BBDD, esto es un ejemplo //
	//************************************//
	
	// Tablas
	protected static String T_USERS = ".t_users ";

	// Sentencias tipo SELECT
	public static final String SELECT_USER_BY_LOGIN = "SELECT * FROM " + DataBaseConfig.DB_NAME + T_USERS
			+ " WHERE login LIKE (?)";
	
	// Sentencias tipo INSERT
	
	// Sentencias tipo UPDATE
	
	// Sentencias tipo DELETE
}
