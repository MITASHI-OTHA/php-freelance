<?php
class user {
	private $nom;
	private $email;
	private $status;
	private $password;
	private $db;
	private $nameCheck;
	public function __construct(array $data, PDO $pdo) {
		self::setDB($pdo);
		foreach ($data as $key => $value) {
			$method = 'set' . ucfirst($key);
			if (method_exists($this, $method)) {
				$this->$method($value);
			}
		}
	}

	public function setDB($pdo) {
		$this->db = $pdo;
	}
	public function getDB() {
		return $this->db;
	}
	public function setNom($nom) {
		$this->nom = $nom;
	}
	public function setEmail($email) {
		$this->email = $email;
	}
	public function setPassword($password) {
		$this->password = $password;
	}
	public function setstatus($status) {
		$this->status = $status;
	}
	public function getNom() {
		return $this->nom;
	}
	public function getEmail() {
		return $this->email;
	}
	public function getstatus() {
		return $this->status;
	}
	public function getPassword() {
		return $this->password;
	}
	public static function checkName($name, PDO $pdo) {
		$req = $pdo->query("SELECT a.nom, b.nom FROM users AS a,  employeurs AS b WHERE a.nom = '$name' OR b.nom = '$name'");
		$rep = $req ->rowcount();
		return $rep;
	}
	public function controlName($nom, $table) {
		$req = $this->getDB()->query("SELECT nom FROM $table WHERE nom ='$nom'");
		$res = $req->rowcount($req);
		if ($res >= 1) {
			return 'false';
		} else {
			return 'true';
		}
	}
}
?>