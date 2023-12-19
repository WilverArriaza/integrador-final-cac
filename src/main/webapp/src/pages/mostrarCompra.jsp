<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "integrador_final.conexion_db" %>
<%@ page import = "java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

<!-- LOCAL STYLES -->
<link rel="stylesheet" href="../css/styles.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">

</head>
<body>


 <header>

        <!-- NAVBAR BOOTSTRAP -->

        <nav class="navbar navbar-expand-lg bg-secondary fixed-top mb-5" style="background-color: var(--gray-800) !important">
            <div class="container-fluid mx-5 px-5">            
              <!-- <a class="navbar-brand text-light" href="#">Conf Bs As</a> -->
                <span><img src="../img/codoacodo.png" alt="CaC logo"></span>
                <h3 class="navbar-brand-h1 me-auto text-light fs-2">Conf Bs As</h3>

                            
                <div class="justify-content-end">

                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                      <li class="nav-item">
                        <a class="nav-link Active text-light fs-5" aria-current="page" href="../../index.html">La conferencia</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link text-secondary fs-5" href="../../index.html">Los oradores</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link text-secondary fs-5" href="../../index.html">El lugar y la fecha</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link text-secondary fs-5" href="../../index.html">Conviertete en orador</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link text-success fs-5" href="../../index.html">Regresar</a>
                      </li>
                    </ul>
                  </div>

                </div>
              
              
            </div>
          </nav>

    </header>

    <main>
    
        
    
<%
	// out.println(nombre+apellido+email+cantidad+categoria);
	
	conexion_db conexion = new conexion_db();
	
	Connection cn = conexion.conectar();
	
	PreparedStatement ps = cn.prepareStatement("SELECT * FROM tickets");
	ResultSet rs = ps.executeQuery();
%>
    <div class="container my-5 py-5" style="height: 600px;">
    
    <table class="table table-success table-striped mt-5">  
    	 <tr>
    	 	<th>id</th>
    	 	<th>Nombre</th>
    	 	<th>Apellido</th>
    	 	<th>Email</th>
    	 	<th>Cantidad</th>
    	 	<th>Categoria</th>   	 
    	 </tr>
    	 <% while(rs.next()) { %>
    	 <tr>
    	 	<td><%= rs.getInt(1) %> </td>
    	 	<td><%= rs.getString(2) %> </td>
    	 	<td><%= rs.getString(3) %> </td>
    	 	<td><%= rs.getString(4) %> </td>
    	 	<td><%= rs.getString(5) %> </td>
    	 	<td><%= rs.getString(6) %> </td>
    	 
    	 </tr>
    	 <% } %>
    	 
    
    </table>
    
    </div>
    
    
      

             


        <!-- FOOTER -->

        <footer class="footer">

            <div class="container-footer">

            <a href="#" class="footer-item">Preguntas frecuentes</a>
            <a href="#" class="footer-item">Contáctanos</a>
            <a href="#" class="footer-item">Prensa</a>
            <a href="#" class="footer-item">Conferencias</a>
            <a href="#" class="footer-item">Términos y condiciones</a>
            <a href="#" class="footer-item">Privacidad</a>
            <a href="#" class="footer-item">Estudiantes</a>

            </div>

            <div class="container-fluid d-flex justify-content-center bg-black pt-1 copy">

            <a href="https://github.com/WilverArriaza/cac-tp-integrador.git" target="_blank"><span><img src="../img/github.png" alt="CaC logo" id="github"></span></a><a class="text-decoration-none" href="https://github.com/WilverArriaza/integrador-final-cac.git" target="_blank"><h2 class="fs-5 pt-1" id="wilver">WilverArriaza</h2> </a>       
        
            </div>

        </footer>
    </main>     

    

    
    

<script src="../js/bootstrap.min.js"></script>
<script src="../js/script.js"></script>
<script src="../js/ventaconfirmada.js"></script>

</body>
</html>