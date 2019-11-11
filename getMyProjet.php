<?php
$req = file_get_contents('php://input');
$p = json_decode($req);
$id = $p->id;
$multi = array();
$tab_devis_free = array();
$tab_projet = array();
require ('time_relative.php');

require('connexion.php');
$q = $db->query("SELECT *FROM projets, categories WHERE Auteur = $id AND projets.categorie = categories.ids ORDER BY projets.id DESC");
$cp = $q->rowcount($q);
if($cp <= 0) {
	$multi  = false;
} else {
	while ($j = $q->fetch()) {
	$b = false;
	$time = $j['relatif'];
	$date = new DateTime($time);
	$for=$date->getTimestamp();
	$relative=getRelativeTime("@$for");
	$idProj = $j['id'];
	$k = $db->query("SELECT *FROM devis, users WHERE devis.IDprojet =$idProj AND devis.iDfree = users.id");
	$i = $k->rowcount($k);
	if($i>0) {
	$b = true;
	$t = $k->fetch();
	$nom = $t['nom'];
	$photo = $t['photo'];
	$idFree = $t['iDfree'];
	}
	$titre = utf8_encode($j['titre']);
	$categorie = utf8_encode($j['libelle']);
	$description = utf8_encode($j['description']);
	if( strlen($description) > 447) {
		$description = substr($description, 0, 440).'...';
	}
	$competences = explode(",", $j["competences"]);
	$budget = $j["budget"];
	$etat = utf8_encode($j["etat"]);
	$devis = $j["devis"];
	$file = $j["file"];
	$relative = $relative;
	array_push($tab_projet, array("PostDevis"=>$b,"titre"=>$titre, "relative"=>$relative, "projetID"=>$idProj, "categories"=>$categorie,"budget"=>$budget, "etat"=> $etat,"description"=>$description,"devis"=> $devis, "file"=>$file, "competences"=>$competences, 'nbreDevis'=>$i));
 }
 array_push($multi, $tab_projet);
}

echo json_encode($tab_projet);

?>