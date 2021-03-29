<?php
    include('Connection.php');

    if(!function_exists('recherche')){
        function recherche(){
            require 'Connection.php';
            $recherche = $_GET['search'];
            $recherche_value = null;
            if($recherche!=null){
                $requete = "SELECT * FROM produits WHERE nom LIKE '" . $recherche;
                $requete = $requete . "%%'";
                $requete = sprintf($requete,$recherche);
                $resultat = mysqli_query($connection,$requete);
                for ($recherche_value = array (); $row = $resultat->fetch_assoc(); $recherche_value[] = $row);
                //print_r($recherche_value);
                $resultat->close();
            }
            return $recherche_value;
        }
    }
    
    // function addWish(){
    //     require 'Connection.php';
    //     $produit = $_GET['produit'];
    //     $requete_add = "INSERT INTO souhait values('','";
    //     if($produit!=null){
    //         $requete_add=$requete_add.$produit."')";
    //         $resultat = mysqli_query($connection,$requete_add);
    //     }
    // }
    // idSouhait INT NOT NULL AUTO_INCREMENT,
	// idClient INT,
	// idP INT,
	// valide INT,
    
    // function getElement($produit){
    //     require 'Connection.php';
    //     $products = null;
    //     $requete = "SELECT * FROM panier where idproduit = '%s'";
    //     $requete = sprintf($requete,$produit);
    //     $resultat = mysqli_query($connection,$requete);
    //     for ($products = array (); $row = $resultat->fetch_assoc(); $products[] = $row);
    //     $resultat->close();
    //     return $products;
    // }



    // function calcul($value,$qt){
    //     $retour = $value*$qt;
    //     return $retour;
    // }


    if(!function_exists('tableauDeRequete')){
        function tableauDeRequete(){
            require 'Connection.php';
            $requete="SELECT * FROM PRODUITS";
            $comment_req=mysqli_query($connection,$requete);
            $resultat=array();
            while($comment=mysqli_fetch_array($comment_req)){
                $resultat[]=$comment;
            }
            mysqli_free_result($comment_req);
            return $resultat;
        }
    }

    // function getWish(){
    //     require 'Connection.php';
    //     $wish = null;
    //     $requete = "select * from produits join wish on produits.idProduit = wish.idProduit";
    //     $resultat = mysqli_query($connection,$requete);
    //     for ($wish = array (); $row = $resultat->fetch_assoc(); $wish[] = $row);
    //     $resultat->close();
    //     return $wish;
    // }
?>