<?php
    session_start();
    $conexion=mysqli_connect('localhost','root','','bdproyecto') or die('Error en la conexión');
    
    $nombre=$_POST['Nombre'];
    $residuo=$_POST['residuo'];
    $tratamiento=$_POST['tratamiento'];
    $descripcion=$_POST['Descripcion'];
    $fechaInicio=$_POST['FechaInicio'];
    $fechaFinal=$_POST['FechaFinal'];

    if ($nombre==null || $nombre=='' || $residuo==null || $residuo=='' || $tratamiento==null || $tratamiento=='' || $descripcion==null || $descripcion=='' || $fechaInicio==null || $fechaInicio=='' || $fechaFinal==null || $fechaFinal==''){
        header("location:controlNoCreado.php");
    }else {
        $consulta="INSERT INTO control (`NOMBRECONTROL`, `NOMBREUSUARIO`, `TIPORESIDUO`, `NOMBRETRATAMIENTO`, `DESCRIPCIONCONTROL`, `FECHACONTROLINICIAL`, `FECHACONTROLFINAL`) VALUES('".$_POST['Nombre']."','".$_SESSION['usuario']."','".$_POST['residuo']."','".$_POST['tratamiento']."','".$_POST['Descripcion']."','".$_POST['FechaInicio']."','".$_POST['FechaFinal']."')";

        $resultado=mysqli_query($conexion,$consulta) or die('Error de query');

        if($resultado){
            header ("location:controlCreado.php");
        }else{
            echo "cagaste pa";
        }
        mysqli_free_result($resultado);
        mysqli_close($conexion);

    }

?>