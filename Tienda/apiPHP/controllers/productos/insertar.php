<?php
require ('../conexion.php');
/* recoger los datos que llegan del POST --> FORMULARIO */
$idArt = $_POST['idArt'];
$nombreArt = $_POST['nombreArt'];
$precioArt = $_POST['precioArt'];
$catArt =  $_POST['catArt'];

echo $idArt.' - '.$nombreArt.' - '.$precioArt.' - '.$catArt;
$sql = "insert into articulos values(?,?,?,?,?)";
$st = $PDO->prepare($sql);
$st->execute(array($idArt,$nombreArt,$precioArt,'logo.jpg',$catArt));
$resultado = $st->fetchAll(PDO::FETCH_ASSOC);

echo (json_encode($resultado, true));

 ?>
