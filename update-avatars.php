<?php
	$req = file_get_contents('php://input');
	$rs = json_decode($req);
	$email = $rs->email;
	$avatar = $rs->avatar;
	$status = $rs->status;
	switch ($status) {
		case 'Recruteur':
			$table = "employeurs";
			break;
		default:
			$table = "users";
			break;
	}
	require ("connexion.php");
	$t['table'] = $table;
	$pt = $db->query("SELECT email FROM $table WHERE email ='$email'");
	$p = $pt->rowcount($pt);
	if($p>=1) {
		//$db->query("UPDATE $table SET photo = 'https://freelance-gabon.com/src/avatars/$avatar' WHERE  email = '$email'");
		$db->query("UPDATE $table SET photo = 'http://localhost/php-challenge/file/$avatar' WHERE  email = '$email'");
		$t['res'] = 'avatar MAJ pour 1 user';
	}
	echo json_encode($t);
?>