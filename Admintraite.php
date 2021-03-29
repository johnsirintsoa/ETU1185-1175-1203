<?php
    require 'Administrateur.php';
    include ('Connection.php');
///... Get Login and Password
    $admin = new Administrateur();
    $admin->setEmail($_POST['user']);
    $admin->setPwd($_POST['password']);
///...
    $requete="SELECT * FROM administrateur WHERE email = '%s' AND mdp =sha1('%s')";
    $requete=sprintf($requete,$admin->getEmail(),$admin->getPwd());
	$resultat=mysqli_query($connection,$requete);
	if(($row=mysqli_fetch_assoc($resultat))== true && mysqli_num_rows($resultat) == 1){
        header('Location:login.php');
        echo $admin->getEmail();
    }else
	{
	    header('Location:login-register.php?error=1');
	}
	mysqli_free_result($resultat);
?>