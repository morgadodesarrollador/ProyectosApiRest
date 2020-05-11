<?php
require ('../../conexion.php');

//$id_categoria = $_GET['categoria'];


//string de la consulta CON PARAMETROS
$sql = "select * from productos";
//se prepara la consulta
$st = $PDO->prepare($sql);
//le pasamos el valor de los parámetros. Y lanzamos la petición a MYSQl
$st->execute();
//recibimos los datos de mysql y a en un array php
$resultado = $st->fetchAll(PDO::FETCH_ASSOC);
//mostrar valor de variable en php --> console.log

//var_dump($resultado); 
// $resultado --> un ARRAY PHP que contiene todos los registros de la tabla productos
 //--> NO LO PUEDO DEVOLVER POR INTERNET A MI MOVIL

echo (json_encode($resultado, true));

?>
