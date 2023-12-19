function VentaConfirmada(){
	window.location="tickets.html";
	// window.open("tickets.html");
}

const btnConf = document.getElementById("btnConfirmar");
btnConf.addEventListener("click", VentaConfirmada);
