<?php 

$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$contraseña = $_POST['contraseña'];
$telefono = $_POST['telefono'];
$direccion = $_POST['direccion'];

$objecto = new stdClass;
$objecto->nombre = $nombre;
$objecto->correo = $correo;
$objecto->contrasena = $contraseña;
$objecto->telefono = $telefono;
$objecto->direccion = $direccion;

$json_data = json_encode($objecto);
// print ($json_data);
$url = "https://pitanza-globhack.firebaseio.com/usuarios.json";

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $json_data);
// curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: text/plain'));

$response = curl_exec($ch);
if (curl_exec($ch)) {
    echo 'Error' . curl_exec($ch);
} else {
    echo "ya inserto";
}
?>