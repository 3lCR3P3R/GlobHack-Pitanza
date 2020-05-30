<?php
function conectar()
{
$server="localhost";
$user="root";
$pass="";
$db="pitanza";

$con=mysqli_connect($server,$user,$pass)
   or die("error en la conexion"."ERRoR".mysql_error());
mysqli_select_db($con, $db)
or die("Error al conectar con la base de datos"."ERRoR".mysql_error());
return $con;
}
?>
