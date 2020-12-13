<?php
    session_start();
    $conexion=mysqli_connect('localhost','root','','bdproyecto') or die('Error en la conexión');
    
    $control=$_POST['control'];
    $origen=$_POST['origen'];
    $destino=$_POST['destino'];
    $especificacion=$_POST['especificacion'];
    
    if($control==null || $control=='' || $origen==null || $origen=='' || $destino==null || $destino==''){
       header("location:pedidoNoCreado.php");
    }else{
        $consulta="INSERT INTO transporte (`NOMBREUSUARIO`, `NOMBRECONTROL`, `DIRECCIONORIGEN`, `DIRECCIONDESTINO`, `DESCRIPCIONTRANSPORTE`) VALUES('".$_SESSION['usuario']."','".$_POST['control']."','".$_POST['origen']."','".$_POST['destino']."','".$_POST['especificacion']."')";

        $resultado=mysqli_query($conexion,$consulta) or die('Error de query');

        if($resultado){
            header ("location:pedidoCreado.php");
        }
        mysqli_free_result($resultado);
        mysqli_close($conexion);
        
    }


?>