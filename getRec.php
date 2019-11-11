<?php
require "connexion.php";
require 'time_proj_relative.php';
	$get = file_get_contents('php://input');
	$request = json_decode($get);
	$t = array();
	$t2 = array();
	$id = $request->id;
	$req = $db->query("SELECT a.id ,a.Auteur,a.relatif, b.id_EMP, b.nom, b.ville, b.email, b.inscription FROM projets AS a, employeurs AS b WHERE a.id=$id AND b.id_EMP = a.Auteur");
	$p = $req->fetch();
	$nom = $p['nom'];
	$email = $p['email'];
	$ville = $p['ville'];
	$time = $p['relatif'];
	$idEmp = $p['id_EMP'];
	$date = new DateTime($time);
	$for=$date->getTimestamp();
	$relative=getRelativeTime("@$for");
	$inscription = $p['inscription'];
	$pj = $db->query("SELECT *FROM projets WHERE Auteur = $idEmp");
	$cmp = $pj->rowcount($pj);
	array_push($t, array("nom"=>$nom, "email"=>$email, "ville"=>utf8_encode($ville), "projets"=>$cmp, "inscription"=>$inscription, 'relatif'=>$relative));
	echo json_encode($t);
?>