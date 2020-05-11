<?php
require ('../conexion.php');
/* recoger los datos que llegan del POST --> FORMULARIO */
$descripcion = $_POST['descripcion'];
$precio = $_POST['precio'];
$imagen = $_POST['imagen'];
$idCat =  $_POST['idCat'];
$idArt =  $_POST['idArt'];

$sql =
    "update articulos
     set DESCRIPCION = ?, PRECIO = ?, IMAGEN = ?, ID_CATEGORIA = ?
     where ID = ?";

$st = $PDO->prepare($sql);
$st->execute(array($descripcion,$precio,$imagen,$idCat,$idArt));
$resultado = $st->fetchAll(PDO::FETCH_ASSOC);
echo (json_encode($resultado, true));

 ?>
