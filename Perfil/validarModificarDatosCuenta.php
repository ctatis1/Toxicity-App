<?php
    $usuario=$_POST['Usuario'];
    $contrasena=$_POST['Contraseña'];
    $fecha= $_POST['Fecha'];
    $correo= $_POST['Correo'];
    
    $conexion= mysqli_connect("localhost","root","","bdproyecto") or die('Error en la conexion');
    
    $consulta="UPDATE usuario SET CONTRASENAUSUARIO='$contrasena', FECHANACIMIENTOUSUARIO='$fecha', CORREO='$correo' WHERE NOMBREUSUARIO='$usuario'";

    $resultado=mysqli_query($conexion,$consulta) or die('Error de query');

    if($resultado){
        header("location:datosModificados.php");
    }else{
        header("location:inicio.php");
    }
    mysqli_free_result($resultado);
    mysqli_close($conexion);

?>