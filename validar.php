<?php

    $usuario=$_POST['Usuario'];
    $contrasena=$_POST['Contraseña'];

    $conexion= mysqli_connect("localhost","root","","bdproyecto") or die('Error en la conexion');
    
    $consulta="SELECT * FROM usuario WHERE NOMBREUSUARIO='$usuario' AND CONTRASENAUSUARIO='$contrasena'";

    $resultado=mysqli_query($conexion,$consulta) or die('Error de query');

    $filas=mysqli_num_rows($resultado);
    if($filas>0){
        session_start();
        $_SESSION['usuario']=$usuario;
        header("location:menuprincipal.php");
    }else {
        header("location:datosincorrectos.html");
    }
    
    mysqli_free_result($resultado);
    mysqli_close($conexion);
?>
