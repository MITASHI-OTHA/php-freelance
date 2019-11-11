<?php
/*class create {
	private $date;
	public function __construct(user $new_User, $date, $table) {
		$this->date = $date;
		if($table !=="$employeurs") {
		$set = $new_User->getDB()->prepare("INSERT INTO users SET nom=:nom, email=:email, password =:pass, specialite=:specialite, date_inscri=:dates");
		$set->bindValue(':nom', $new_User->getNom());
		$set->bindValue(':email', $new_User->getEmail());
		$set->bindValue(':pass', $new_User->getPassword());
		$set->bindValue(':specialite', $new_User->getSpecialite());
		$set->bindValue(':dates', $this->getDate());
		$set->execute();
		}
		
	}
	public function getDate() {
		return $this->date;
	}*/
}?>