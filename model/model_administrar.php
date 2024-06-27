<?php

$sql ="SELECT * FROM peliculas";
$datos = Conexion::consultar($sql);

$sql ="SELECT * FROM login";
$datos2 = Conexion::consultar($sql);

$sql ="SELECT * FROM comentarios";
$datos3 = Conexion::consultar($sql);

?>