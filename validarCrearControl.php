<?php
    session_start();
    $conexion=mysqli_connect('localhost','root','','bdproyecto') or die('Error en la conexión');
    
    $consulta="INSERT INTO control VALUES('".$_POST['Nombre']."','".$_SESSION['usuario']."','".$_POST['residuo']."','".$_POST['tratamiento']."','".$_POST['Descripcion']."','".$_POST['FechaFinal']."','".$_POST['FechaFinal']."')";
    
    $resultado=mysqli_query($conexion,$consulta) or die('Error de query');

    if($resultado){
        header ("location:controlCreado.php");
    }else{
        echo "cagaste pa";
    }
    mysqli_free_result($resultado);
    mysqli_close($conexion);

?>