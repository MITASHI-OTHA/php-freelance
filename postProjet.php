<?php
$req = file_get_contents("php://input");
$res = json_decode($req);
$categorie = $res->categorie;
$competence = $res->competence;
$description = htmlspecialchars(strip_tags(addslashes($res->description)));
$file = $res->file;
$id = $res->id;
$prix = $res->prix;
$titre = htmlspecialchars(strip_tags(addslashes($res->titre)));;
$type = $res->type;
$titre = utf8_decode($titre);
try{
$fuseau="Africa/Libreville";
$cal=date('Y-m-d H:i:s');
$dates = new DateTimeZone($fuseau);
$date = new DateTime($cal, $dates);//utilisera le bon fuseau horaire
$tzLondres = new DateTimeZone('Africa/Libreville');
$date->setTimezone($dates);
$mydat=$date->format('Y-m-d H:i:s');
}catch(Exception $e){

exit($e->getMessage());
}
setlocale (LC_TIME, 'fr_FR.utf8','fra'); 
$datation=$date=strftime("%A %d %B").' à '.date("H:i");
require("connexion.php");
$db->query("INSERT INTO projets SET titre = '$titre', Auteur = $id, dates = '$datation', budget = '$prix', type = '$type', categorie = $categorie, devis = 0, description = '$description', relatif = '$mydat', file ='$file', competences = '$competence'");
$t['categorie'] = $categorie;
$t['competence'] = $competence;
$t['description'] = $description;
$t['file'] = $file;
$t['id'] = $id;
$t['prix'] = $prix;
$t['titre'] = $titre;
$t['type'] = $type;
echo json_encode($t);
?>