<?php 

$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$telefono = $_POST['telefono'];
$mensaje = $_POST['mensaje'];

$dudas = new stdClass;
$dudas->nombre = $nombre;
$dudas->correo = $correo;
$dudas->telefono = $telefono;
$dudas->mensaje = $mensaje;

$json_data = json_encode($dudas);
$url = "https://pitanza-globhack.firebaseio.com/dudas.json";

if ($nombre === '' || $correo === '' || $telefono === '' || $mensaje === ''){
    echo json_encode('llena todos los campos');
}else{
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POST, 1);                         
    curl_setopt($ch, CURLOPT_POSTFIELDS, $json_data);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: text/plain'));
    $response = curl_exec($ch);
    echo json_encode("Se hizo el envio efectivo de tu pregunta");
}


?>