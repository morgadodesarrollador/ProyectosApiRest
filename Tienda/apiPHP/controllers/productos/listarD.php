<?php
require ('../conexion.php');

$id_categoria = $_GET['categoria'];


//string de la consulta CON PARAMETROS
$sql = "select * from articulos where ID_CATEGORIA = ?";
//se prepara la consulta
$st = $PDO->prepare($sql);
//le pasamos el valor de los parámetros. Y lanzamos la petición a MYSQl
$st->execute(array($id_categoria));
//recibimos los datos de mysql y a en un array php
$resultado = $st->fetchAll(PDO::FETCH_ASSOC);
//mostrar valor de variable en php --> console.log
//var_dump($resultado);

echo (json_encode($resultado, true));
 ?>
