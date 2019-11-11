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
	$status = $request->status;
	require "connexion.php";
	setlocale(LC_TIME, 'fr_FR.utf8', 'fra');
	$date = strftime("%A %d %B") . ' à ' . date("H:i");
	$new_User = new user(array('nom' => $nom, 'email' => $email, "password" => $password), $db);
	switch ($status) {
		case 'Recruteur':
			$table = "employeurs";
			$i = "id_EMP";
			break;
		case "Freelancer":
			$table = "users";
			$i = "id";
			break;
	}
	$req = $new_User->controlName($nom, $table);
	if ($req == 'false') {
		$t['res'] = false;
	} else {
			$db->query("INSERT INTO $table SET nom= '$nom', email = '$email', password ='$password', inscription = '$date', photo = 'https://freelance-gabon.com/src/avatars/default.png'");
		$reqID = $db->query("SELECT $i, email FROM $table WHERE email = '$email'");
		$get_ID = $reqID->fetch();
		$getID = $get_ID[$i];
		$getEmail = $get_ID['email'];
		$t['res'] = true;	
		$t['status'] = $table;
		$t['email'] = $getEmail;
		$t['id'] = $getID;
	}
	echo json_encode($t);
}

?>