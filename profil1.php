<?php
$req = file_get_contents('php://input');
$res = json_decode($req);
require ('connexion.php');
$first_email = $res->first_Email;
$nom = $res->nom;
$email = $res->email;
$ville = utf8_decode($res->ville);
$photo = $res->photo;
$q = $db->query("SELECT email FROM users WHERE email = '$email' AND email != '$first_email'");
$q2 = $q->rowcount($q);
if($q2>=1) {
 $t['rep'] = false;
 $t['email'] = $email;
 $t['email_nb'] = $q2;
} else {
 $q = $db->query("SELECT email, ville, percent FROM users WHERE email = '$first_email'");
 $k = $q->fetch();
 $percent = $k['percent'];
 $villes = $k['ville'];
 switch (true) {
 	case $percent <= 0 && (empty($villes)):
 	$percent = 50;
 	$t['percent_50'] = false;
 	break;
 	case $percent <= 0 && (!empty($villes)):
 	$percent = 50;
 	$t['percent_50'] = false;
 	break;
	case $percent ==50 && (!empty($villes)):
	$t['percent_50'] = true;
	$percent = 50;
	break;
 	default:
 		$percent =  100;
 		break;
 }
 $db->query("UPDATE users SET nom = '$nom', percent = '$percent',email = '$email', ville = '$ville' ,photo = '$photo' WHERE email = '$first_email'");
 $t['rep'] = true;
  $t['email'] = $email;
 $t['email_nb'] = $q2;
 $t['nom'] = $nom;
 $t['avatar'] = $photo;
 $t['percent'] = $percent;
}
echo json_encode($t);

?>