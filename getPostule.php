<?php
require('time_relative.php');
require('connexion.php');
$p = array();
$i = file_get_contents('php://input');
$b = json_decode($i);
$email = $b[0]->email;
$id = $b[0]->id;
$req= $db->query("SELECT a.ID_proj, a.user, a.datesPub, a.etat, b.id, b.titre, b.Auteur, b.dates, b.type, b.categorie, b.description FROM `projets-postule` AS a, projets AS b WHERE a.user = $id AND a.ID_proj = b.id");
$compt = $req->rowcount($req);
if($compt <= 0) {
	$p['response'] = false;
} else {
	while ($res=$req->fetch()) {
	$time = $res['datesPub'];
	$etat = $res['etat'];
	$titre = $res['titre'];
	$Auteur = $res['Auteur'];
	$type = $res['type'];
	$categorie = $res['categorie'];
	$description = $res['description'];
	$date = new DateTime($time);
	$for=$date->getTimestamp();
	$relative=getRelativeTime("@$for");
	$relative_conex=getRelativeTime("@$for");
	array_push($p, array("response"=>true,'temps'=>$relative_conex,"description"=> utf8_encode($description),"etat"=>$etat, "titre"=> utf8_encode($titre), "Auteur"=>$Auteur, "type"=>$type, "categorie"=>$categorie));
	}
}
echo json_encode($p);


?>