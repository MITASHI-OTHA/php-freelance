<?php
$data =  file_get_contents("php://input");
$p = json_decode($data);
$idFree = $p->idFree;
$idRec = $p->idRec;
require("connexion.php");
$q = $db->query("SELECT idRecru FROM boots WHERE idFree = $idFree AND idRecru = $idRec");
$cp = $q->rowcount($q);
if ($cp>=1) {
	$db->query("UPDATE users SET evaluation = evaluation-1 WHERE id = $idFree");
	$t['res'] = "down";
	$db->query("DELETE FROM boots WHERE idRecru = $idRec AND idFree = $idFree");
} else {
	$db->query("UPDATE users SET evaluation = evaluation + 1 WHERE id = $idFree");
	$t['res'] = "up";
	$db->query("INSERT INTO boots SET idRecru = $idRec, idFree = $idFree");
}
echo json_encode($t);
?>