<?php
	session_start();
	include('connexion.php');
	if(isset($_GET['email'])){

		$email= $_GET['email'];
		$password= $_GET['password'];

		$request="SELECT * FROM CLIENT where email='%s'";
		$request =sprintf($request,$email);
		$resultat = mysqli_query($bdd, $request);
		$row = mysqli_fetch_assoc($resultat);

		$request3="SELECT * from ADMIN where email='%s'";
		$request3=sprintf($request3,$email);
		$resultat3=mysqli_query($bdd, $request3);
		$row3 = mysqli_fetch_assoc($resultat3);

		if(($row['email']==null) AND ($row3['email']==null)){
			header('Location:login-register.php?error=1');
		}
		if(($row['mdp']!=null) AND ($row['mdp']==sha1($password))){
			$requet="SELECT name FROM CLIENT where email='%s'";
			$requet=sprintf($requet,$email);
			$jojo=mysqli_query($bdd, $requet);
			$jaja=mysqli_fetch_assoc($jojo);
			$_SESSION['nom']=$jaja['name'];

			header('Location:index.php?home=1');

		}
		if(($row3['mdp']!=null) AND ($row3['mdp']==sha1($password))){
			$_SESSION['nom']='ADMIN';
			header('Location:index.php?mother=1');
		}
		if(($row['mdp']!=null) AND ($row['mdp']!=sha1($password))){
			header('Location:login-register.php?error=2');
		}
		if(($row3['mdp']!=null) AND ($row3['mdp']!=sha1($password))){
			header('Location:login-register.php?error=2');
		}
}

	if(isset($_GET['iemail'])){

		$iemail=$_GET['iemail'];
		$pass=$_GET['ipassword'];
		$ipassword=sha1($pass);
		$iname=$_GET['iname'];

		$request="SELECT * FROM CLIENT where email='%s'";
		$request =sprintf($request,$iemail);
		$resultat = mysqli_query($bdd, $request);
		$row = mysqli_fetch_assoc($resultat);

		if($row['email']!=null){
			header('Location:login-register.php?error=4');
		}else{
			$sql="INSERT INTO CLIENT(name,email,mdp) VALUES('%s','%s','%s')";
			$sql=sprintf($sql,$iname,$iemail,$ipassword);
			$result= mysqli_query($bdd, $sql);
			header('Location:login-register.php?home=2');			
		}
}

	if(isset($_GET['idp'])){
		$req= "DELETE FROM SOUHAIT WHERE idSouhait=%d";
		$req= sprintf($req,$_GET['idp']);
		$res= mysqli_query($bdd,$req);
		header('Location:wishlist.php');
	}

	if(isset($_GET['ids'])){
		$req= "UPDATE SOUHAIT SET valide=1 WHERE idSouhait=%d";
		$req= sprintf($req,$_GET['ids']);
		$res= mysqli_query($bdd,$req);
		header('Location:wishlist.php');
	}

	if(isset($_GET['idr'])){
		$req= "DELETE FROM SOUHAIT WHERE idSouhait=%d";
		$req= sprintf($req,$_GET['idr']);
		$res= mysqli_query($bdd,$req);
		header('Location:cart.php');
	}

	if(isset($_GET['total']) AND isset($_SESSION['nom'])){
		$req= "SELECT * FROM CLIENT WHERE name='%s'";
		$req= sprintf($req,$_SESSION['nom']);
		$res= mysqli_query($bdd,$req);
		$row = mysqli_fetch_assoc($res);


		if($row['argent']<$_GET['total']){
			header('Location:cart.php?error=5');
		}else{
			$somme=$row['argent']-$_GET['total'];
			$request="UPDATE CLIENT SET argent=%d WHERE idClient=%d";
			$request =sprintf($request,$somme,$row['idClient']);
			$resultat = mysqli_query($bdd, $request);

			$requet="UPDATE SOUHAIT SET valide=3 WHERE idClient=%d";
			$requet=sprintf($requet,$row['idClient']);
			$jojo=mysqli_query($bdd, $requet);

			header('Location:cart.php?success=5');
			
		}

	}

?>
