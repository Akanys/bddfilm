<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Films</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/1-col-portfolio.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">CinéMag</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading -->
      <h1 class="my-4"><?=$film['Titre']?>
        <small><?php /*echo $genre['Nom']*/?></small>
      </h1>

	  
      <!-- Project One -->
      <div class="row">
        <div class="col-md-12">
          <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="pic/filmpic" alt="Scène du film <?=$film['Titre']?>">
          </a>
        </div>
        <div class="col-md-12">
          
          <p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa<?=$film['Description']?></p>
          <p><?=$film['Description']?></p>
          <p><?=$film['Description']?></p>
          <p><?=$film['Description']?></p>
          <p><?=$film['Description']?></p>
          <p><?=$film['Description']?></p>
          <p><?=$film['Description']?></p>

        </div>
      </div>
      <!-- /.row -->
      <hr>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
