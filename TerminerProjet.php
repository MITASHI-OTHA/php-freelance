<?php
$req = file_get_contents("php://input");
require('connexion.php');
$q = json_decode($req);
$id = $q->id;
$etat = $q->etat;
$db->query("UPDATE projets SET etat = $etat WHERE id = $id");
$t['id'] = $id;

echo json_encode($t);


?>