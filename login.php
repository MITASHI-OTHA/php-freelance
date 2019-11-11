<?php
$req = file_get_contents('php://input');
$data = json_decode($req);
$email = $data->email;
$pass = $data->password;
$p = array();
require('connexion.php');
$reg = $db->query("SELECT *FROM users WHERE LOWER(email) = LOWER('$email') AND password = '$pass'");
$cmpt = $reg->rowcount($reg);
if($cmpt>=1) {
	$use = $reg->fetch();
	$id = $use['id'];
	$free = 'free';
	$photo = $use['photo'];
	$name= $use['nom'];
	$email = $use['email'];
	$skill = $use['skill'];
	$dispo = $use['dispo'];
	if($dispo == null || $dispo == 0) {
		$dispo = false;
	} else {
		$dispo = true;
	}
	$spec = explode(',', $use['specialite']);
	$inscription = $use['inscription'];
	$evaluation = $use['evaluation'];
	$percent = $use['percent'];
	array_push($p, array("id"=> $id,"status"=>$free, "avatar"=> $photo, "userName"=>$name,"email"=>$email, "specialite"=>$spec, "inscription"=>$inscription, "evaluation"=>$evaluation, "skill"=>$skill, "percent"=>$percent, "dispo"=> $dispo));
} else {
	$reg = $db->query("SELECT *FROM employeurs WHERE LOWER(email) = LOWER('$email') AND password = '$pass'");
	$cmpt = $reg->rowcount($reg);
	if($cmpt>=1) {
		$use = $reg->fetch();
		$id = $use['id_EMP'];
		$status= 'employeurs';
		$nom = $use['nom'];
		$ville = $use['ville'];
		$email = $use['email'];
		$skill = $use['skill'];
		$photo = $use['photo'];
		$inscription= $use['inscription'];
		array_push($p, array("id"=>$id,"avatar"=> $photo, "status"=>"Recruteur", "userName"=>$nom, "ville"=>$ville, "email"=>$email, "inscription"=>$inscription, "skill"=>$skill));
	} else {
		$p['status'] = false;
	}
}

echo json_encode($p);

?>