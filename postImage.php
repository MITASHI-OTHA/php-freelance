<?php
$namefile = $_FILES['croppedImage']['name'];
$date = date("h-i-sa");
$namefile = "$date$namefile";

// move_uploaded_file($_FILES['croppedImage']['tmp_name'],"../myfreelancer/src/avatars/$namefile.png");
move_uploaded_file($_FILES['croppedImage']['tmp_name'], "file/$namefile.png");
$t["name"] = $namefile.'.png';
echo json_encode($t);


?>