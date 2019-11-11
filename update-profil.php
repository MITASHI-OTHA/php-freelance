<?php
require ('connexion.php');
$req = file_get_contents('php://input');
$res = json_decode($req);
$titre = $res->titre;
$categorie = $res->categorie;
$email = $res->email;
$experience = $res->experience;
$prix = $res->prix;
$texte = $res->texte;
$competence = $res->competence;
$r = $db->query("SELECT email, percent, ville FROM users WHERE email ='$email'");
$c = $r->fetch();
$percent = $c['percent'];
$ville = $c['ville'];
switch (true) {
	case $percent >= 50 :
		if($ville !==null) {
			$percent = 100;
		}else {
		  $percent = $percent;
		}
		break;
		default:
		$percent = 50;
		break;
}
$cat = $db->query("SELECT libelle, ids FROM categories WHERE (ids -1) = $categorie");
$k = $cat->fetch();
$p['categorie'] = $k['libelle'];
$q = $k['libelle'];
$db->query("UPDATE users SET metier = '$titre', categorie ='$categorie', experience = $experience, specialite = '$competence', prix = '$prix', 	apropos = '$texte', percent = $percent WHERE email ='$email'");

$p['percent'] = $percent;
echo json_encode($p);


?>