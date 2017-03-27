package es.venta.productos.bbdd.config;

/**
 * MODELO - Configuración de acceso a la BBDD
 * 
 * @author Borja
 * @version 1.0
 */
public class DataBaseConfig{

	//************************************//
	// No usamos BBDD, esto es un ejemplo //
	//************************************//
	
	public static final String DB_NAME = "ventaproducto";
	public static final String DATABASE_URL = "jdbc:mysql://localhost:3306/" + DB_NAME;
	public static final String DATABASE_USER = "root";
	public static final String DATABASE_PASSWORD = "root";
}
