<?php
	require 'connexion.php';
	$req = file_get_contents('php://input');
	$val = json_decode($req);
	$id = $val->id;
	$req2 = $db->query("SELECT IDfree, status, date_post, prix, temps FROM devis WHERE IDprojet = $id");
	$k = $req2->rowcount($req2);
	$t = array();
	if ($k >= 1) {
		while ($res = $req2->fetch()) {
			$ids = $res['IDfree'];
			$status = $res['status'];
			$prix = $res['prix'];
			$temps = $res['temps'];
			switch ($status) {
				case '1':
					$status= "En cours";
					break;
				case '2':
				$status = 'Validé';
			}
			$date_post = $res['date_post'];
			$r = $db->query("SELECT *FROM users WHERE id = $ids");
			$reqs = $r->fetch();
			$FreeID = $reqs['id'];
			$FreeNom = $reqs['nom'];
			$FreeEmail = $reqs['email'];
			$FreePhoto = $reqs['photo'];
			$evaluation = $reqs['evaluation'];
			$metier = $reqs['metier'];
			array_push($t, array("FreeID"=>$FreeID,"FreeNom"=>$FreeNom, "FreeEmail"=>$FreeEmail, "FreePhoto"=>$FreePhoto, "evaluation"=>$evaluation, "status"=>$status, "metier"=>$metier, "prix"=>$prix, 'temps'=>$temps));
		}
	}
echo json_encode($t);

?>