<?php
if(isset($_POST['email'])) {
	$email = $_POST['email'];
	$disp = $_POST['dispo'];
	require('connexion.php');
	$db->query("UPDATE users SET dispo = $disp WHERE email ='$email'");
	$t['response'] = 'MAJ effectué';
} else {
	$t['response'] = 'erreur';
}
 echo json_encode($t);

?>