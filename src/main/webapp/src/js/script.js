// function displayNextImage() {
//     x = (x === images.length - 1) ? 0 : x + 1;
//     document.getElementById("img").src = images[x];
// }
// function changeImage() {
//     setInterval(displayNextImage, 5000);
// }

// var images = [], x = -1;
// images[0] = "./src/img/ba1.jpg";
// images[1] = "./src/img/ba2.jpg";
// images[2] = "./src/img/ba3.jpg";

//------------------------------------------------------------------------------------------------------------------------------------------------

// window.onload = function changeImage() {
//     setInterval(displayNextImage, 5000);
// }

// function displayNextImage() {
//     x = (x === images.length - 1) ? 0 : x + 1;
//     document.getElementById("img").src = images[x];
// }

// var images = [], x = -1;
// images[0] = "./src/img/ba1.jpg";
// images[1] = "./src/img/ba2.jpg";
// images[2] = "./src/img/ba3.jpg";

//------------------------------------------------------------------------------------------------------------------------------------------------



window.onload = function () {
    var backgroundImg=["./src/img/ba2.jpg", "./src/img/ba3.jpg", "./src/img/honolulu.jpg","./src/img/ba1.jpg"]
    var backHonolulu =["./src/img/honolulu2.jpg", "./src/img/honolulu.jpg","./src/img/honolulu3.webp","./src/img/honolulu3.webp",]

    var images = [], x = -1;
    images[0] = "./src/img/honolulu2.jpg";
    images[1] = "./src/img/honolulu4.jpg";
    images[2] = "./src/img/honolulu3.jpg";
    images[3] = "./src/img/honolulu.jpg";
    

    setInterval(changeImage, 5000);
    function changeImage() {   
        var i = Math.floor((Math.random() * 4));
      
      // document.body.style.backgroundImage = "url('"+backgroundImg[i]+"')";
      // document.getElementsByClassName("showcase").style.backgroundImage = "url('"+backgroundImg[i]+"')";

        document.getElementById("img").style.backgroundImage = "url('"+backgroundImg[i]+"')";

        // document.getElementById("honolulu").src = "url('"+backHonolulu[i]+"')";
        // document.getElementById("honolulu").style.backgroundImage = "url('"+backHonolulu[i]+"')";

        x = (x === images.length - 1) ? 0 : x + 1;
        document.getElementById("honolulu").src = images[x];       
    }
  }

  

//------------------------------------------------------------------------------------------------------------------------------------------------


//evenlistener para detectar cuando hacen click en Button Resumen
let ticketsResumen = document.querySelector("#ticketsResumen");
ticketsResumen.addEventListener("click", ticketsPrice);

//evenlistener para detectar cuando hacen click en el Button Borrar
let ticketsBorrar = document.querySelector("#ticketsBorrar");
ticketsBorrar.addEventListener("click", borrarOutput);

//evenlistener para detectar cuando hacen click en el input Cantidad
let ticketsQuantity = document.querySelector(".ticketsQuantity");
ticketsQuantity.addEventListener("click", clearInput);

//evenlistener para detectar cuando hacen click en el input Categoria
let ticketsCategory = document.querySelector(".ticketsCategory");
ticketsCategory.addEventListener("click", descuento);


//eventlistener para detectar click en los div estudiante/trainee/junior
let discountStudent = document.querySelector(".estudiante");
discountStudent.addEventListener("click", updateCategory);
let discountTrainee = document.querySelector(".trainee");
discountTrainee.addEventListener("click", updateCategory);
let discountJunior = document.querySelector(".junior");
discountJunior.addEventListener("click", updateCategory);




// ******* FUNCION TICKETSPRICE *****************
function ticketsPrice(evento) {
    console.log(evento);
    //Usamos preventDefault() para que no se refresque el formulario
    evento.preventDefault();

    //leemos el valor del input cantidad
    let ticketsQuantity = document.querySelector(".ticketsQuantity");

    if (Number(ticketsQuantity.value)) {
        let ticketsCategory = document.querySelector(".ticketsCategory");
        let totalPayment;

        switch (ticketsCategory.value) {
            case "Estudiante": {
                totalPayment = 200 * ticketsQuantity.value * 0.2;
                break;
            }
            case "Trainee": {
                totalPayment = 200 * ticketsQuantity.value * 0.5;
                break;
            }
            case "Junior": {
                totalPayment = 200 * ticketsQuantity.value * 0.85;
                break;
            }
        }

        document.querySelector(".ticketsOutput").textContent = `Total a pagar: $${totalPayment}`;
        // let outputNode = document.querySelector(".ticketsOutput");
        // let spanNode = document.createElement("span");
        // let carrito = document.querySelector("carrito");
        // // carrito.src = "./src/img/carrito.ico"
        // // carrito.style = "width: 25px"
        // spanNode.className = 'ticketsBuy';
        // let textNode = document.createTextNode("Comprar");
        // spanNode.append(textNode);
        // outputNode.append(carrito);
        // outputNode.append(spanNode);

        //eventlistener para detectar click en el span ticketsBuy
        let ticketsBuy = document.querySelector(".ticketsBuy");
        ticketsBuy.addEventListener("click", ticketsSubmit);

    } else {
        document.querySelector(".ticketsQuantity").style.border = "2px solid red";
        ticketsQuantity.value = "";
        ticketsQuantity.placeholder = "Ingrese una cantidad válida";
        alert("Ingrese una cantidad válida");
    }

}

// ******* FUNCION BORRAROUTPUT *****************
function borrarOutput() {

    document.querySelector(".ticketsOutput").textContent = "Total a pagar:";

    let form = document.querySelector(".ticketsForm");
    for (i = 0; i < 4; i++) {
        document.querySelector("." + form[i].className).style.border = "1px solid var(--gray-300)";
    }
}


// ******* FUNCION APDATECATEGORY *****************
function updateCategory(evento) {
    
    let categoria = evento.target.parentNode.className;

    switch (categoria) {
        case "estudiante": {
            console.log("es estudiante");
            document.querySelector(".ticketsCategory").options.selectedIndex = 0;
            document.querySelector(".estudiante").style.backgroundColor = "#f2f2f2";
            document.querySelector(".trainee").style.backgroundColor = "transparent";
            document.querySelector(".junior").style.backgroundColor = "transparent";
            break;
        }
        case "trainee": {
            console.log("es trainee");
            document.querySelector(".ticketsCategory").options.selectedIndex = 1;
            document.querySelector(".estudiante").style.backgroundColor = "transparent";
            document.querySelector(".trainee").style.backgroundColor = "#f2f2f2";
            document.querySelector(".junior").style.backgroundColor = "transparent";
            break;
        }
        case "junior": {
            console.log("es junior");
            document.querySelector(".ticketsCategory").options.selectedIndex = 2;
            document.querySelector(".estudiante").style.backgroundColor = "transparent";
            document.querySelector(".trainee").style.backgroundColor = "transparent";
            document.querySelector(".junior").style.backgroundColor = "#f2f2f2";
            break;
        }
    }
}


// ******* FUNCION TICKETSSUBMIT *****************
function ticketsSubmit() {

    let form = document.querySelector(".ticketsForm");
    console.log(form);
    inputCheck(form);

    function inputCheck(form) {
        let arrayCheck = [];
        for (i = 0; i < 3; i++) {
            arrayCheck[i] = form[i].value;
            if (form[i].value == "") {
                document.querySelector("." + form[i].className).style.border = "2px solid red";
            } else {
                document.querySelector("." + form[i].className).style.border = "1px solid var(--gray-300)";
            }
        }


        if (arrayCheck.every(element => element != "")) {
            if (form[2].value.includes('@') && form[2].value.includes('.')) {
                alert("Formulario enviado");
                form.submit();
                document.querySelector("." + form[2].className).style.border = "1px solid var(--gray-300)";
            } else {
                alert("Debe ingresar un correo válido");
                document.querySelector("." + form[2].className).style.border = "2px solid red"
            }
        } else {
            alert("Completar los campos en rojo");
        }

    }
}

// ******* FUNCION CELARINPUT *****************
function clearInput(evento) {
    // console.log(evento.target.className);
    document.querySelector("." + evento.target.className).style.border = "1px solid var(--gray-300)";
}

// ******* FUNCION DESCUENTO *****************
function descuento(evento) {
    // console.log(typeof(evento.target.value));
    switch (evento.target.value) {
        case "Estudiante": {
            document.querySelector(".estudiante").style.backgroundColor = "#f2f2f2";
            document.querySelector(".trainee").style.backgroundColor = "transparent";
            document.querySelector(".junior").style.backgroundColor = "transparent";
            break;
        }
        case "Trainee": {
            document.querySelector(".estudiante").style.backgroundColor = "transparent";
            document.querySelector(".trainee").style.backgroundColor = "#f2f2f2";
            document.querySelector(".junior").style.backgroundColor = "transparent";
            break;
        }
        case "Junior": {
            document.querySelector(".estudiante").style.backgroundColor = "transparent";
            document.querySelector(".trainee").style.backgroundColor = "transparent";
            document.querySelector(".junior").style.backgroundColor = "#f2f2f2";
            break;
        }
    }
}

function VentaConfirmada(){
	window.location="tickets.html";
	// window.open("tickets.html");
}

const btnConf = document.getElementById("btnConfirmar");
btnConf.addEventListener("click", VentaConfirmada());