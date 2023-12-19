<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "integrador_final.conexion_db" %>
<%@ page import = "java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	// out.println(nombre+apellido+email+cantidad+categoria);
	
	conexion_db conexion = new conexion_db();
	
	Connection cn = conexion.conectar();
	
	try {
		Statement stm = cn.createStatement();
	
		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM tickets");
		
		while(rsId.next()){
			
			int idNum = rsId.getInt(1);
			String query = "UPDATE tickets SET reserva='0' WHERE id= "+idNum+" ";
			stm.executeUpdate(query);
		}

	} catch(Exception e) {
		e.printStackTrace();
	}
%>

<jsp:include page="tickets.html"></jsp:include>>

</body>
</html>