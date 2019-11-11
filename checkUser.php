<?php
$email = file_get_contents('php://input');
require ('connexion.php');
$t = null;
$req = $db->query("SELECT *FROM users WHERE email = '$email'");
$req2 = $db->query("SELECT *FROM employeurs WHERE email = '$email'");
$rep2 = $req2 ->rowcount();
$rep = $req ->rowcount();
if($rep >= 1 || $rep2 >= 1 ) {
	$t['res'] = true;
} else {
	$t['res'] = false;
}
 echo json_encode($t);


?>