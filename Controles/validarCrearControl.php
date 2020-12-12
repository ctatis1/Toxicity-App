<?php
    session_start();
    $conexion=mysqli_connect('localhost','root','','bdproyecto') or die('Error en la conexión');
    
    $consulta="INSERT INTO control (`NOMBRECONTROL`, `NOMBREUSUARIO`, `TIPORESIDUO`, `NOMBRETRATAMIENTO`, `DESCRIPCIONCONTROL`, `FECHACONTROLINICIAL`, `FECHACONTROLFINAL`) VALUES('".$_POST['Nombre']."','".$_SESSION['usuario']."','".$_POST['residuo']."','".$_POST['tratamiento']."','".$_POST['Descripcion']."','".$_POST['FechaInicio']."','".$_POST['FechaFinal']."')";
    
    $resultado=mysqli_query($conexion,$consulta) or die('Error de query');

    if($resultado){
        header ("location:controlCreado.php");
    }else{
        echo "cagaste pa";
    }
    mysqli_free_result($resultado);
    mysqli_close($conexion);

?>