document.getElementById("enviar").addEventListener("click",enviar_whatsapp);

function enviar_whatsapp() {
   var nombre= document.getElementById("cuadro_nom").value;
   var apellido= document.getElementById("cuadro_ape").value;
   var direccion= document.getElementById("cuadro_dir").value;
   var pago= document.getElementById("selec_pago").value;
   /*var catalogo= document.getElementById("catalogo").value;**/
   var pedido="carne de res asada, frijoles, arroz, patacona, ensalada, huevo(opcional)";
   var observacion= document.getElementById("cuadro_obs").value;

   var url= "https://api.whatsapp.com/send?phone=573057694796&text=Hola,%20este%20es%20mi%20pedido,%20gracias%20%0A"+ nombre +"%20"+ apellido +"%0A*esta es mi direccion*%0A"+ direccion+"%0A*medio depago*%0A"+pago+"%0A*mi eleccion es*%0A"+pedido+"%0A*observacion*%0A"+observacion;
   window.open(url);




   



}