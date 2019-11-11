<?php
require 'connexion.php';
require 'time_proj_relative.php';
$req = $db->query("SELECT *FROM projets, employeurs, categories WHERE projets.categorie = categories.ids AND employeurs.id_EMP = projets.Auteur ORDER BY projets.id DESC");
$p = array();
while ($res = $req->fetch()) {
	$time = $res['relatif'];
	$date = new DateTime($time);
	$for=$date->getTimestamp();
	$competences = explode(",", $res["competences"]);
	$relative=getRelativeTime("@$for");
	array_push($p, array("id"=>$res['id'], "auteur"=>$res["nom"],"description"=> utf8_encode($res["description"]), "titre" => utf8_encode($res['titre']), "dates" => utf8_encode($res['dates']), "budget" => $res['budget'], "type" => utf8_encode($res['type']), "categorie" => utf8_encode($res['libelle']),"competences" =>$competences,"couleur"=> $res['couleur'],"devis" => $res['devis'],"relatif"=>$relative,"etat"=> utf8_encode($res['etat'])));
}
echo json_encode($p);
// echo json_encode($p, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);
?>