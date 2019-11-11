<?php
	$req = file_get_contents('php://input');
	$rs = json_decode($req);
	$email = $rs->email;
	require ("connexion.php");
	$pt = $db->query("SELECT email FROM users WHERE email ='$email'");
	$p = $pt->rowcount($pt);
	if($p>=1) {
		$db->query("UPDATE users SET skill = 1 WHERE  email = '$email'");
		$t['res'] = 'skill MAJ pour 1 user';
	} else {
		$db->query("UPDATE employeurs SET skill = 1 WHERE email = '$email'");
		$t['res'] = 'skill MAJ pour 1 employeur';
	}

	echo json_encode($t);
?>