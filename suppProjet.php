<?php
$req = file_get_contents("php://input");
require('connexion.php');
$q = json_decode($req);
$id = $q->id;
$db->query("DELETE FROM projets WHERE id = $id");
$t['id'] = $id;
echo json_encode($t);



?>