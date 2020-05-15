<?php
require ('../../conexion.php');
/* recoger los datos que llegan del POST --> FORMULARIO */
$email = $_POST['email'];
$foto = $_POST['foto'];
echo $email, $foto;
/*
$passUsu = $_POST['passUsu'];
$nombreUsu =  $_POST['nombreUsu'];
$apellidosUsu =  $_POST['apellidosUsu'];
$rolUsu =  $_POST['rolUsu'];

echo $idUsu.' - '.$loginUsu.' - '.$passUsu.' - '.$nombreUsu.' - '.$apellidosUsu.' - '.$rolUsu;
$sql = "insert into usuarios values(?,?,?,?,?,?)";
$st = $PDO->prepare($sql);
$st->execute(array($idUsu,$loginUsu,$passUsu,$nombreUsu,$apellidosUsu,$rolUsu));
$resultado = $st->fetchAll(PDO::FETCH_ASSOC);
*/
$resultado = "insertado";
echo (json_encode($resultado, true));

 ?>