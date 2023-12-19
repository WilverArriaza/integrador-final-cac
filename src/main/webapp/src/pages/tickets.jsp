<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <section>
      
<!-- TICKETS CARDS -->

        <div class="tickets" id="tickets">

            <div class="container-tickets">

                <div class="tickets-category">

                    <div class="estudiante">

                        <h3>Estudiante</h3>
                        <h5>Tiene un descuento</h5>
                        <h2>80%</h2>
                        <h6>* presentar documentación</h6>

                    </div>

                    <div class="trainee">

                        <h3>Trainee</h3>
                        <h5>Tiene un descuento</h5>
                        <h2>50%</h2>
                        <h6>* presentar documentación</h6>

                    </div>

                    <div class="junior">

                        <h3>Junior</h3>
                        <h5>Tiene un descuento</h5>
                        <h2>15%</h2>
                        <h6>* presentar documentación</h6>

                    </div>

                </div>

                <div class="tickets-text">

                    <h6>Se requiere</h6>
                    <h1>CONFIRMAR COMPRA:</h1>

                </div>


            </div>
        </div>

    </section>

        <!-- FORMULARIO TICKETS -->
      <div class="container">
        <form class="ticketsForm" action="Update.jsp">
          <div class="tickets-form">
              <input type="text" class="ticketsFirstName" value="<%= request.getParameter("nombre") %>" name="nombre" placeholder="Nombre">
              <input type="text" class="ticketsLastName" value="<%= request.getParameter("apellido") %>" name="apellido" placeholder="Apellido">
              <input type="email" class="ticketsEmail" value="<%= request.getParameter("email") %>" name="email" placeholder="E-mail">
              <div class="labelTicketsQuantity">
                  <label for="Cantidad">Cantidad</label>
                  <input id="ticketsQuantity" type="text" class="ticketsQuantity" value="<%= request.getParameter("cantidad") %>" name="cantidad"
                      placeholder="Cantidad">
              </div>
              <div class="labelTicketsCategory">
                  <label for="Categoria">Categoria</label>
                  <select name="categoria" class="ticketsCategory">
                  	  <option value="Sin Categoria" selected><%= request.getParameter("categoria") %></option>
                      <option value="Estudiante">Estudiante</option>
                      <option value="Trainee">Trainee</option>
                      <option value="Junior">Junior</option>
                  </select>
              </div>
              <!-- <output class="ticketsOutput"><span class="ticketsValue">Total a pagar: </span><span class="ticketsBuy"><svg class="carrito" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
              </svg>Comprar</span></output> -->
              <output class="ticketsOutput"><span class="ticketsValue">Total a pagar: </span></output>
              <button id="ticketsBorrar" type="button" class="btnTickets" onclick="location.href='delete.jsp'" name="Borrar">Delete</button>
              <button id="btnConfirmar" class="btnTickets" type="button" name="">Confirmar</button>
              <button type="submit" id="ticketsBuy" class="ticketsBuy" name="ticketsBuy">Modificar</button>
              <button type="button" id="" class="ticketsBuy" onclick="location.href='mostrarCompra.jsp'" name="mostrarCompra">Mostrar Compra</button>

          </div>
        </form>

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