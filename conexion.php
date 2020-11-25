<?php
    $con=mysqli_connect('localhost','root','','bdproyecto') or die('Error en la conexión');
    $sql="INSERT INTO usuario VALUES('".$_POST["Usuario"]."','".$_POST["Contraseña"]."','".$_POST["Fecha"]."','".$_POST["Correo"]."')";
    $resultado= mysqli_query($con,$sql) or die('Error en el query');
    mysqli_close($con);

    header("location:login.html");
    
?>