<?php
require ("connexion.php");
$tab = $_POST['tab'];
$tab = json_encode($tab, JSON_UNESCAPED_UNICODE);
$f = fopen('file.json', 'w');
fwrite($f, $tab);
fclose($f);
/*$id = $_POST['ids'];
$comp = $_POST['categorie'];
$db->query("INSERT INTO categories SET libelle = '$comp'");*/
?>