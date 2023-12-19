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
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String email = request.getParameter("email");
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");
	String query = "INSERT INTO tickets(nombre, apellido, mail,cantidad,categoria) VALUES ('"+nombre+"', '"+apellido+"', '"+email+"', '"+cantidad+"', '"+categoria+"')";

	// out.println(nombre+apellido+email+cantidad+categoria);
	
	conexion_db conexion = new conexion_db();
	
	Connection cn = conexion.conectar();
	
	
	try {
		Statement stm = cn.createStatement();
		stm.executeUpdate(query);
	} catch(Exception e) {
		e.printStackTrace();
	}
%>

<jsp:include page="tickets.jsp"></jsp:include>>

</body>
</html>