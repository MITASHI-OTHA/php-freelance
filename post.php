<?php
function autoloader($classname) {
	require 'class/' . $classname . '.php';
}
spl_autoload_register('autoloader');
if (isset($_POST['nom'])) {
	$db = new PDO("mysql:host=localhost;dbname=challenge", "root", "");
	setlocale(LC_TIME, 'fr_FR.utf8', 'fra');
	$date = strftime("%A %d %B") . ' à ' . date("H:i");
	$nom = $_POST['nom'];
	$email = $_POST['email'];
	$specialite = $_POST['specialite'];
	$password = $_POST['password'];
	$new_User = new user(array('nom' => $nom, 'email' => $email, 'specialite' => $specialite, "password" => $password), $db);
	echo $new_User->controlName($nom);
	//new create($new_User, $date);
}
?>