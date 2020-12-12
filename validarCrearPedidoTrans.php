<?php
    session_start();
    $conexion=mysqli_connect('localhost','root','','bdproyecto') or die('Error en la conexión');
    
    $consulta="INSERT INTO transporte (`NOMBREUSUARIO`, `NOMBRECONTROL`, `DIRECCIONORIGEN`, `DIRECCIONDESTINO`, `DESCRIPCIONTRANSPORTE`) VALUES('".$_SESSION['usuario']."','".$_POST['control']."','".$_POST['origen']."','".$_POST['destino']."','".$_POST['especificacion']."')";
    
    $resultado=mysqli_query($conexion,$consulta) or die('Error de query');

    if($resultado){
        header ("location:pedidoCreado.php");
    }else{
        echo "cagaste pa";
    }
    mysqli_free_result($resultado);
    mysqli_close($conexion);

?>