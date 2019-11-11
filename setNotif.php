<?php
$info = file_get_contents("php://input");
$i  = json_decode($info);
$auteur = $i->auteur;
$id = $i->id;
$freelancer = $i->Freelancer;
require("connexion.php");
$q = $db->query("SELECT idProjet FROM notifications WHERE idFree = $freelancer AND idProjet = $id");
$compte = $q->rowcount($q);
if ($compte >= 1) {
	$t['res'] = false;
} else {
	setlocale(LC_TIME, 'fr_FR.utf8', 'fra');
	$date = strftime("%A %d %B") . ' à ' . date("H:i");
	$db->query("INSERT INTO notifications SET idProjet = $id, Autor = $auteur, idFree =  $freelancer, dates = '$date'");
	$t['res'] = true;
}

echo json_encode($t);

?>