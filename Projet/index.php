<?php

$BASE_URL = "http://localhost/projets/films/";

if (!isset($_GET['route']) || empty($_GET['route']))
{
   $route = 'home';
}

else {
   $route = $_GET['route'];
}    

if (empty($route)) {

}

switch ($route) {
   case 'home':
       include("views/homeview.php");
       break;

    case (preg_match('#film/[0-9]#',$route) ? true : false):
        $id = $route[5];
        include("controllers/filmController.php");
        break;

   default:
       include("controllers/".$route."Controller.php");
       break;
}

?>