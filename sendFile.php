<?php
$namefile = $_FILES['fichier']['name'];
move_uploaded_file($_FILES['fichier']['tmp_name'],"file/".$namefile);
$t["name"] = $namefile;
echo json_encode($t);
?>