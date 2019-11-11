<?php
require("connexion.php");
$form = file_get_contents("php://input");
$form_ = json_decode($form);
$idUser = $form_->idUser;
$idPro = $form_->idP;
$prix = $form_->prix;
$temps = $form_->temps;
	try{
		$fuseau="Africa/Libreville";
		$cal=date('Y-m-d H:i:s');
		$dates = new DateTimeZone($fuseau);
		$date = new DateTime($cal, $dates);//utilisera le bon fuseau horaire
		$tzLondres = new DateTimeZone('Africa/Casablanca');
		$date->setTimezone($dates);
		$mydat=$date->format('Y-m-d H:i:s');
	}catch(Exception $e){
	exit($e->getMessage());
	}
setlocale (LC_TIME, 'fr_FR.utf8','fra'); 
$datation=$date=strftime("%A %d %B").' à '.date("H:i");
$req = $db->query("SELECT devis.id, devis.iDfree FROM devis WHERE devis.IDprojet= $idPro AND devis.iDfree = $idUser");
$cp = $req->rowcount($req);
if($cp >= 1) {
	$p['res'] = false;
} else {
	$db->query("INSERT INTO devis SET IDprojet =  $idPro, iDfree = $idUser, date_post = '$datation', status= 'en cours', temps = '$temps', prix = '$prix'");
	$db->query("UPDATE projets SET devis = devis+ 1 WHERE projets.id = $idPro");
	$p['res'] = true;
}
echo json_encode($p);
?>