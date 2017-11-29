<?php
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

   default:
       include("controllers/".$route."Controller.php");
       break;
}
?>