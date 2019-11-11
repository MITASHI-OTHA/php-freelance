<?php
if (isset($_POST)) {
	function autoloader($classname) {
		require 'class/' . $classname . '.php';
	}
	spl_autoload_register('autoloader');
	$postdata = file_get_contents("php://input");
	$request = json_decode($postdata);
	$email = $request->email;
	$password = $request->password;
	$nom = $request->nom;
	$specialite = $request->userProfil;
	$db = new PDO("mysql:host=localhost;dbname=challenge", "root", "");
	setlocale(LC_TIME, 'fr_FR.utf8', 'fra');
	$date = strftime("%A %d %B") . ' à ' . date("H:i");
	$new_User = new user(array('nom' => $nom, 'email' => $email, 'specialite' => $specialite, "password" => $password), $db);
	$req = $new_User->controlName($nom);
	if ($req == 'false') {
		$t['res'] = false;
	} else {
		$t['res'] = true;
		new create($new_User, $date);
	}
	echo json_encode($t);
}

?>