<?php
session_start();
include('connexion.php');
include('Fonction.php');
$ro=null;
$idp=0;

if(isset($_GET['pp'])){
$idp=$_GET['pp'];

}

if(isset($_SESSION['nom'])){
$req="SELECT * FROM CLIENT WHERE name='%s' ";
$req=sprintf($req,$_SESSION['nom']);
$res=mysqli_query($bdd,$req);
$ro = mysqli_fetch_assoc($res);
}

if(isset($_GET['pp']) AND isset($_SESSION['nom'])){
$req1="INSERT INTO SOUHAIT(idSouhait,idClient,idP,valide) VALUES('',%d,%d,%d) ";
$req1=sprintf($req1,$ro['idClient'],$idp,1);
$res1=mysqli_query($bdd,$req1);
}

 ?>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Tmart-Minimalist eCommerce HTML5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    

    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Owl Carousel main css -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="css/custom.css">


    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper fixed__footer">
        <!-- Start Header Style -->
       <?php include('header.php'); ?>
        <!-- End Header Style -->
        
        
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/2.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">Panier</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.php">Accueil</a>
                                  <span class="brd-separetor">/</span>
                                  <span class="breadcrumb-item active">Panier</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- cart-main-area start -->
        <div class="cart-main-area ptb--120 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <form action="#">               
                            <div class="table-content table-responsive">
                                <?php 
                                if(!isset($_SESSION['nom'])){
                                    ?>
                                <div class="alert alert-danger textstyle" role="alert"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-exclamation-triangle" viewBox="0 0 16 16">
  <path d="M7.938 2.016A.13.13 0 0 1 8.002 2a.13.13 0 0 1 .063.016.146.146 0 0 1 .054.057l6.857 11.667c.036.06.035.124.002.183a.163.163 0 0 1-.054.06.116.116 0 0 1-.066.017H1.146a.115.115 0 0 1-.066-.017.163.163 0 0 1-.054-.06.176.176 0 0 1 .002-.183L7.884 2.073a.147.147 0 0 1 .054-.057zm1.044-.45a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566z"/>
  <path d="M7.002 12a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 5.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995z"/>
</svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-exclamation-triangle" viewBox="0 0 16 16">
  <path d="M7.938 2.016A.13.13 0 0 1 8.002 2a.13.13 0 0 1 .063.016.146.146 0 0 1 .054.057l6.857 11.667c.036.06.035.124.002.183a.163.163 0 0 1-.054.06.116.116 0 0 1-.066.017H1.146a.115.115 0 0 1-.066-.017.163.163 0 0 1-.054-.06.176.176 0 0 1 .002-.183L7.884 2.073a.147.147 0 0 1 .054-.057zm1.044-.45a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566z"/>
  <path d="M7.002 12a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 5.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995z"/>
</svg>        VEUILLEZ VOUS CONNECTER POUR EFFECTUER DES ACHATS , MERCI!      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-exclamation-triangle" viewBox="0 0 16 16">
  <path d="M7.938 2.016A.13.13 0 0 1 8.002 2a.13.13 0 0 1 .063.016.146.146 0 0 1 .054.057l6.857 11.667c.036.06.035.124.002.183a.163.163 0 0 1-.054.06.116.116 0 0 1-.066.017H1.146a.115.115 0 0 1-.066-.017.163.163 0 0 1-.054-.06.176.176 0 0 1 .002-.183L7.884 2.073a.147.147 0 0 1 .054-.057zm1.044-.45a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566z"/>
  <path d="M7.002 12a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 5.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995z"/>
</svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-exclamation-triangle" viewBox="0 0 16 16">
  <path d="M7.938 2.016A.13.13 0 0 1 8.002 2a.13.13 0 0 1 .063.016.146.146 0 0 1 .054.057l6.857 11.667c.036.06.035.124.002.183a.163.163 0 0 1-.054.06.116.116 0 0 1-.066.017H1.146a.115.115 0 0 1-.066-.017.163.163 0 0 1-.054-.06.176.176 0 0 1 .002-.183L7.884 2.073a.147.147 0 0 1 .054-.057zm1.044-.45a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566z"/>
  <path d="M7.002 12a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 5.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995z"/>
</svg></div>
                                <?php 
                            }
                                ?>
                                <?php
                                if(isset($_GET['error'])){
                                    if($_GET['error']==5){

                                ?>
                                <div class="alert alert-danger textstyle" role="alert">
                                               Solde insuffisant !!!!
                                </div>
                                <?php
                                }
                            }

                                if(isset($_GET['success'])){
                                    if($_GET['success']==5){

                                ?>
                                <div class="alert alert-success textstyle" role="alert">
                                                Transaction reussie !
                                </div>
                                <?php
                            }
                        }
                                ?>
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">Image</th>
                                            <th class="product-name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-remove">Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php 
                                        if($ro!=null){
                                                $req2="SELECT * FROM SOUHAIT WHERE idClient=%d AND valide=1 ";
                                                $req2=sprintf($req2,$ro['idClient']);
                                                $res2=mysqli_query($bdd,$req2);
                                        
                                                while($ro2 = mysqli_fetch_assoc($res2)){
                                        ?>
                                        <tr>
                                            <?php
                                                $req0="SELECT * FROM PRODUITS WHERE idProduit=%d";
                                                $req0=sprintf($req0,$ro2['idP']);
                                                $res0=mysqli_query($bdd,$req0);
                                                $ro0 = mysqli_fetch_assoc($res0);
                                            ?>
                                            <td class="product-thumbnail"><a href="#"><img src="<?php echo($ro0['image']); ?>" alt="product img" /></a></td>
                                            <td class="product-name"><a href="#"><?php echo($ro0['nom']);?></a></td>
                                            <td class="product-price"><span class="amount"><?php echo($ro0['prix']);?></span></td>
                                            <td class="product-remove"><a href="traitement.php?idr=<?php echo($ro2['idSouhait']);?>">X</a></td>
                                        </tr>
                                        <?php
                                    }
                                }
                                        ?>

                    
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-md-8 col-sm-7 col-xs-12">
                                    
                                </div>
                                <div class="col-md-4 col-sm-5 col-xs-12">
                                    <div class="cart_totals">
                                       
                                        <table>
                                            <tbody>
                                                <tr class="cart-subtotal">
                                                    <th>Subtotal</th>
                                                    <?php 
                                                    $trans=5000;
                                                    $requete="SELECT sum(prix) SOMME from boom";
                                                     $ree=mysqli_query($bdd,$requete);
                                                     $row10=mysqli_fetch_assoc($ree);
                                                    ?>
                                                    <td><span class="amount"><?php echo($row10['SOMME']); ?></span></td>
                                                </tr>

                                                <tr class="cart-subtotal">
                                                    <th>Livraison</th>
                                                    <td><span class="amount"><?php echo($trans); ?></span></td>
                                                </tr>
                                                <tr class="order-total">
                                                    <?php $total= $row10['SOMME']+$trans ?>
                                                    <th>Total</th>
                                                    <td>
                                                        <strong><span class="amount"><?php echo($total); ?></span></strong>
                                                    </td>
                                                </tr> 
                                                <tr class="order-total">
                                                   <div class="wc-proceed-to-checkout">
                                                        <td><a href="traitement.php?total=<?php echo($total) ?>"><button type="button" class="btn btn-warning" style="width: 250px; height: 100px;" >BUY</button></a></td>
                                                    </div>
                                                </tr>                                           
                                            </tbody>
                                        </table>
                                        
                                    </div>
                                </div>
                            </div>
                        </form> 
                    </div>
                </div>
            </div>
        </div>
        <!-- cart-main-area end -->
        <!-- Start Footer Area -->
        <?php include('footer.php'); ?>
        <!-- End Footer Area -->
    </div>
    <!-- Body main wrapper end -->
    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="js/vendor/jquery-1.12.0.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="js/plugins.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <!-- Waypoints.min.js. -->
    <script src="js/waypoints.min.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="js/main.js"></script>

</body>

</html>