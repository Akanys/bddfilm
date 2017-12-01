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
      <h1 class="my-4">Films
        <small>- Meilleurs films de tous les temps</small>
      </h1>

	  <?php foreach ($films as $key => $film): ?>
      <!-- Project One -->
      <div class="row">
        <div class="col-md-7">
          <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="pic/filmpic<?=$key+1?>" alt="Scène du film <?=$film['Titre']?>">
          </a>
        </div>
        <div class="col-md-5">
          <h3><?=$film['Titre']?></h3>
          <p><?=$film['Description']?></p>
        <a class="btn btn-primary" onclick='<?php $route="film/".$film['id'] ?>'>View Film</a>
        </div>
      </div>
      <!-- /.row -->
      <hr>
	  <?php endforeach ?>

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
