<?php
require ('../conexion.php');

$idUsu = $_GET['id'];


//string de la consulta CON PARAMETROS
$sql = "select * from usuarios where ID = ?";
//se prepara la consulta
$st = $PDO->prepare($sql);
//le pasamos el valor de los parámetros. Y lanzamos la petición a MYSQl
$st->execute(array($idUsu));
$resultado = $st->fetchAll(PDO::FETCH_ASSOC);

echo (json_encode($resultado, true));

 ?>
