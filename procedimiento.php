<?php
    session_start();
    $var= $_SESSION['usuario'];
    if ($var==null || $var=''){
        header("location:noAutorizado.html");
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
    <link rel="stylesheet" href="estilosProcedimiento.css">
   
    

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
               <a href="#" class="text-light"><i class = "icon ion-md-stats lead" ></i> Estadísticas</a>
               <a href="perfil.php" class="text-light"><i class = "icon ion-md-person lead" ></i> Perfil</a>
           </div>
        </div>
        
        <div class="w-100">
            <nav class="navbar navbar-expand-lg navbar-light bgLight">
             <!--el contenedor no  sirve bien, revisarlo later-->
              <div class="contenedor">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"             aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <form class="form-inline my-2 my-lg-0 position-relative d-inline-block">
                  <input class="form-control mr-sm-2" type="search" placeholder="Buscar Residuo" aria-label="Buscar">
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
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-9">
                                <h1 class="font-weight-bold mb-0">Manejo de Residuos Peligrosos</h1>
                                <p></p>
                                <h2 class="font-weight-bold mb-0">1. Identificación</h2>
                                <p class="lead text-muted" style="text-align: justify">Todos los recipientes que contengan residuos peligrosos deben contar una etiqueta de identificación cuya información varía según la legislación de cada lugar, debe incluir el nombre del residuo y el tipo al que pertenece.                               
                                </p>
                                <h2 class="font-weight-bold mb-0">2. Almacenamiento temporal</h2>
                                <p class="lead text-muted" style="text-align: justify">Una vez que los recipientes se llenen, deberán llevarse al Almacén Temporal de Residuos Peligrosos, lugar asignado para mantener los recipientes con los residuos
                                peligrosos generados en las instalaciones, antes de ser enviados a disposición final.                           
                                </p>
                                <p class="lead text-muted" style="text-align: justify">El Almacén Temporal de Residuos Peligrosos debe estar separado de las áreas de producción y almacenamiento de materias primas. Debe contar con muros de contención, fosas de retención, pasillos amplios, dispositivos para extinción de incendios, señalamiento, ventilación e iluminación apropiada.                          
                                </p>
                                <h2 class="font-weight-bold mb-0">3. Transporte</h2>
                                <p class="lead text-muted" style="text-align: justify">Se debe contar con vehículos autorizados para el transporte de este tipo de residuos. El conductor debe estar capacitado y contar con todas las pólizas y seguros en caso de accidentes. Se debe llevar una bitácora sobre la inspección de material.                          
                                </p>
                                <h2 class="font-weight-bold mb-0">4. Disposición Final</h2>
                                <p class="lead text-muted" style="text-align: justify">La disposición final de residuos peligrosos se hace a través de empresas autorizadas, tanto para su transportación fuera de la planta así como para su reciclaje, incineración o cualquier otro método utilizado para su manejo final. La documentación que acredite a las empresas para el manejo de residuos deberá solicitarse antes de la contratación                      
                                </p>
                            </div>
                            <div class="col-lg-3">
                            
                            </div>
                            
                        </div>
                    </div>
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
