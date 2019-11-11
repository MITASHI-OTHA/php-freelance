<?php
	$req = file_get_contents('php://input');
	require('connexion.php');
	$rs = json_decode($req);
	$id = $rs->id;
	$nom = $rs->nom;
	$email = $rs->email;
	$ville = $rs->ville;
	$db->query("UPDATE employeurs SET nom = '$nom', email = '$email', ville = '$ville' WHERE id_EMP = $id");
	$t['res'] = true;
	echo json_encode($t);
?>