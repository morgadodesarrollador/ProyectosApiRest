<?php

$dsn = 'mysql:dbname=vehiculos;host=www.proyectos.com';
$user = 'root';
$password = '';

try{
  $PDO = new PDO($dsn,
                 $user,
                 $password,
                 array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
  //echo "conexión establecida a la base de datos vehiculos ...";
} catch (PDOException $ex){
    echo "conexión NO establecida";
    echo " ".$ex->getMessage();
}


  ?>
