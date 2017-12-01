<?php

try {
    $db = new PDO('mysql:host=localhost;dbname=films', "root", "");
} catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}

$results = $db->query("SELECT * FROM acteurs JOIN a_joue ON acteurs.id=a_joue.id_Acteurs WHERE a_joue.id=$id");
$resultgenre = $db->query("SELECT * FROM genre JOIN a ON genre.id=a.id_Genre WHERE a.id=$id");
$resultfilm = $db->query("SELECT * FROM titre WHERE titre.id=$id");
$resultrea = $db->query("SELECT * FROM realisateurs WHERE realisateurs.id=$id");

$realisateur = $resultrea->fetch();
$titre = $resultfilm->fetch();
$genre = $resultgenre->fetchall();
$film = $results->fetchall();

include("views/filmView.php"); //Attention, les fichiers sont include donc pour le serveur on est toujours au niveau d'index.php, et pas dans le dossier "controllers", donc on apelle "views/filmsView.php" et non pas "../views/filmsView.php"

?>