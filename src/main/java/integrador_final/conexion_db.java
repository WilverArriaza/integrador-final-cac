package integrador_final;

import java.sql.*;

public class conexion_db {
	private static final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/oradores";
	private static final String USSER = "root";
	private static final String PASS = "12345678";

	static {
		try
		{
			Class.forName(CONTROLADOR);
			//System.out.println("Se cargó el controlador corrctamente");
		} catch(ClassNotFoundException e)
		{
			System.err.println("Error al cargar el controlador");
			e.printStackTrace();
		}
	}

	public Connection conectar() {
		
		Connection conexion = null;
		
		try {			
			conexion = DriverManager.getConnection(URL, USSER, PASS);
			//System.out.println("Se generó la conexión con la DB");
		}catch(SQLException e) {
			System.out.println("Error al establecer la conexión");
			e.printStackTrace();			
		}
		return conexion;
	}
}
