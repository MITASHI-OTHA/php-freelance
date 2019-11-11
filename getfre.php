<?php
//$db = new PDO("mysql: host=localhost;dbname=freelancers", "root", "");
require ('connexion.php');
$req = $db->query("SELECT *FROM users, categories WHERE specialite !='' AND (ville !='' AND users.categorie = categories.ids) ORDER BY users.id DESC");
$p = array();
while ($res = $req->fetch()) {
	$spec = $res['specialite'];
	$val = explode(",", $spec);
	$lg = strlen($spec);
	if($lg >= 50) {
		$spec = substr($spec,0, 50).'...';
	}
	$evaluation = $res['evaluation'];
	$dispo = $res['dispo'];
	if($dispo == null || $dispo == 0) {
		$dispo = false;
	} else {
		$dispo = true;
	}
	if ($evaluation > 5) {
		$evaluation = 5;
	}
	if($evaluation == null || $evaluation == 0) {
		$evaluation = 1;
	}
	array_push($p, array("id"=> $res['id'], "nom" =>$res['nom'], "categorie"=>utf8_encode($res['libelle']),"email" => utf8_encode($res['email']), "photo" => utf8_encode($res['photo']),"expsp" =>$val ,"specialite" =>  utf8_encode($spec), "dates" => utf8_encode($res['inscription']), "evaluation" => $evaluation, "prix"=> $res['prix'], "ville"=> utf8_encode($res['ville']), "propos"=> utf8_encode($res['apropos']), "experience"=>$res['experience'], "metier"=>utf8_encode($res['metier']), "dispo"=>$dispo));
}
echo json_encode($p);
?>