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
                    <div class="container w-100">
                        <div class="row">
                            <div class="col-lg-9">
                                <h1 class="font-weight-bold mb-0">Residuos Peligrosos</h1>
                                <p class="lead text-muted" style="text-align: justify">Los residuos peligrosos son aquellos que generan cualquier tipo de riesgo para los humanos y el medio ambiente. Por su composición los residuos peligrosos necesitan una gestión correcta para evitar riesgos elevados de contaminación.                               
                                </p>
                                <h3 class="font-weight-bold mb-0">Residuos Corrosivos</h3>
                                <p class="lead text-muted" style="text-align: justify">Son residuos que desgastan y erosionan las superficies con las que tienen contacto bajo determinadas condiciones desfavorables. Tienden a ser altamente peligrosos si son liberados en cualquier espacio. Reaccionan por contacto con otros residuos o contaminantes tóxicos. Ejemplos de residuos corrosivos son las sustancias ácidas (ácido clorhídrico, ácido sulfúrico) o muy alcalinas. 
                                </p>
                                <h3 class="font-weight-bold mb-0">Residuos Reactivos</h3>
                                <p class="lead text-muted" style="text-align: justify">Por su inestabilidad pueden llegar a ser explosivos en distintas situaciones. Esto sucede debido a la acción de temperaturas y fuerzas variables. Si entran en contacto con el agua pueden liberar gases, vapores y humos tóxicos al medio ambiente. Residuos que contengan amonio, magnesio o cloruro de acetileno están entre los principales ejemplos de los residuos reactivos. 
                                </p>
                                <h3 class="font-weight-bold mb-0">Residuos Explosivos</h3>
                                <p class="lead text-muted" style="text-align: justify">Son muy volátiles si no se gestionan por profesionales que sigan medidas de seguridad indicadas para estos casos. Generalmente su almacenamiento excesivo o descuidado es altamente peligroso. La acción explosiva que generan es causada al entrar en contacto con una fuente de calor o por reacciones químicas ocasionadas por choques, fricciones o altas temperaturas. Ejemplos de este tipo de residuo son la pólvora, los peróxidos y los cloratos. 
                                </p>
                                <h3 class="font-weight-bold mb-0">Residuos Inflamables</h3>
                                <p class="lead text-muted" style="text-align: justify">En condiciones de temperaturas adversas y expuestos a fuentes de calor causan rápidamente un incendio. Los cambios químicos, la fricción o la humedad son causas muy habituales que provocan que ardan con facilidad. No controlar la gestión de estos residuos sensibles a altas temperaturas representa un riesgo para los entornos vulnerables. Ejemplos de residuos inflamables: el fósforo, los aldehídos y los hidrocarburos.
                                </p>
                                <h3 class="font-weight-bold mb-0">Residuos Tóxicos</h3>
                                <p class="lead text-muted" style="text-align: justify">Pueden ser orgánicos e inorgánicos. Por el alto contenido de sustancias tóxicas que tienen provocan efectos nocivos en la salud humana y en el medio ambiente. La alta capacidad destructora que poseen los vuelve una amenaza, incluso, para espacios distantes al origen de la emisión. Suelen añadirse como ingredientes a varios productos populares como los combustibles, pinturas, baterías, equipos electrónicos.
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