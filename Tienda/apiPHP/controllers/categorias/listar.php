<?php

require ('../../conexion.php');

$sql = 'select * from categorias';

$st = $PDO->prepare($sql);

$st->execute();

//devuelve le array php con los reg de la tabla categorias
$resultado = $st->fetchAll(PDO::FETCH_ASSOC); 

// devolvemos la RESPONSE --> RESPUESTA.
echo json_encode($resultado, true);

