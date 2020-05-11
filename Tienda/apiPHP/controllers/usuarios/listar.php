<?php

require ('../../conexion.php');

$sql = "select * from usuarios"; 

$st = $PDO->prepare($sql);
$st->execute();

$resultado = $st->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($resultado);