<?php
    session_start();
    $conexion=mysqli_connect('localhost','root','','bdproyecto') or die('Error en la conexión');

    $consulta="SELECT * FROM residuo WHERE TIPORESIDUO = '".$_POST['buscador']."'";
    
    $resultado=mysqli_query($conexion,$consulta) or die('Error de query');

    if($resultado){
        header ("location:buscador.php");
    }else{
        echo "cagaste pa";
    }
    mysqli_free_result($resultado);
    mysqli_close($conexion);

?>


