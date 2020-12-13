<?php
    session_start();
    $var= $_SESSION['usuario'];
    if ($var==null || $var=''){
        header("location:noAutorizado.html");
    }
    $datosU= "SELECT * FROM residuo";
    $resultado=mysqli_query( mysqli_connect("localhost","root","","bdproyecto"),$datosU);
    if(!$resultado){
        die("error");
    }
?>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link href = "https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css"  rel = "stylesheet" >
    <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="estilosInicio.css">
   
    

    <title>Toxystem</title>
  </head>
  <body>
    <div class="d-flex">
        <div id="menuLateral" class="bgPrimary">
           <div class="logo">
               <img src="logo.png">
           </div> 
           <div class="menu">
              <!--Buscar logos más accurate-->
               <a href="inicio.php" class="text-light"><i class = "icon ion-md-home lead" ></i> Inicio</a>
               <a href="residuos.php" class="text-light"><i class = "icon ion-md-leaf lead" ></i> Residuos</a>
               <a href="procedimiento.php" class="text-light"><i class = "icon ion-md-bookmarks lead" ></i> Procedimientos</a>
               <a href="controles.php" class="text-light"><i class = "icon ion-md-list lead" ></i>Controles</a>
               <a href="transportes.php" class="text-light"><i class = "icon ion-md-stats lead" ></i> Transporte</a>
               <a href="perfil.php" class="text-light"><i class = "icon ion-md-person lead" ></i> Perfil</a>
           </div>
        </div>
        
        <div class="w-100">
            <nav class="navbar navbar-expand-lg navbar-light bgLight border-bottom pb-3">
             <!--el contenedor no  sirve bien, revisarlo later-->
              <div class="contenedor">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"             aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <form class="form-inline my-2 my-lg-0 position-relative d-inline-block" action="buscador.php" method="post">
                  <input class="form-control mr-sm-2" type="search" placeholder="Buscar Residuo" aria-label="Buscar" id="buscador" name="buscador">
                  <button class="btn position-absolute btnBuscar" type="submit"><i class = "icon ion-md-search"></i></button>
                </form>        
              <div class="collapse navbar-collapse" id="    navbarSupportedContent">
                <ul class="navbar-nav ml-auto">                  
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $_SESSION['usuario']?></a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="perfil.php">Cuenta</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="logout.php">Cerrar Sesion</a>
                    </div>
                  </li>                  
                </ul>    
              </div>
            </div>
            </nav>
            
            <div id="content">
                <section>
                    <div class="container w-100 ">
                        <div class="row">
                            <div class="col-lg-12 m-0 p-3">
                                <h1 class="font-weight-bold mb-0">Residuos Peligrosos</h1>
                                <p class="lead text-muted" style="text-align: justify">Los residuos peligrosos son aquellos que generan cualquier tipo de riesgo para los humanos y el medio ambiente. Por su composición los residuos peligrosos necesitan una gestión correcta para evitar riesgos elevados de contaminación.                               
                                </p>
                            </div>                                                        
                        </div>
                    </div>
                </section>
                <section>
                            <?php
                                while($row=mysqli_fetch_array($resultado)){
                            ?>                                                         
                    <div class="container pb-3">                                                       
                        <div class="card">
                            <div class="card-body">                                                                                      
                                   <div class="row">                                                              
                                    <div class="col-lg-12">
                                        <h3 class="font-weight-bold mb-0"><?php echo $row["TIPORESIDUO"];?></h3>
                                        <p class="lead text-muted" style="text-align: justify"><?php echo $row["DESCRIPCIONRESIDUO"];?></p>
                                    </div>                       
                                </div>
                            </div>
                        </div>
                    </div>
                         <?php 
                              }
                         mysqli_free_result($resultado);?>
                </section> 
            </div>  
        </div>
    </div>
    
   

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
  </body>
</html>