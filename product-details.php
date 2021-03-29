<?php 
session_start();
include('connexion.php');
$id=0; 
$ro=null;

if(isset($_GET['idp'])){
$id=$_GET['idp'];

}

if(isset($_SESSION['nom'])){
$req="SELECT * FROM PRODUITS WHERE idProduit=%d";
$req=sprintf($req,$id);
$res=mysqli_query($bdd,$req);
$ro = mysqli_fetch_assoc($res);


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
        <!-- End Offset Wrapper -->
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/2.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">Product Details</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="index.php">Home</a>
                                  <span class="brd-separetor">/</span>
                                  <span class="breadcrumb-item active">Product Details</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Product Details -->
        <section class="htc__product__details pt--120 pb--100 bg__white">
            <div class="container">
                <div class="row">

                    <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                        <div class="product__details__container">
                            <!-- Start Small images -->
                           
                            <!-- End Small images -->
                            <div class="product__big__images">
                                <div class="portfolio-full-image tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active product-video-position" id="img-tab-1">
                                        <img src="<?php echo($ro['image']); ?>" alt="full-image">
                                    </div>
                           
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12 smt-30 xmt-30">
                        <div class="htc__product__details__inner">
                            <div class="pro__detl__title">
                                <h2><?php echo($ro['nom']); ?></h2>
                            </div>
                            
                            <div class="pro__details">
                                <p><?php echo($ro['description']); ?> </p>
                            </div>
                            <ul class="pro__dtl__prize">
                                <li class="old__prize">❤❤❤</li>
                                <li><?php echo($ro['prix']); ?></li>
                            </ul>
                            <div class="product-action-wrap">
                            
                                
                            </div>
                            <ul class="pro__dtl__btn">
                                <li class="buy__now__btn"><a href="cart.php?pp=<?php echo($id);?>">AJOUTER PANIER</a></li>
                                <li><a href="wishlist.php?pp=<?php echo($id);?>"><span class="ti-heart"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product Details -->
        <!-- Start Product tab -->
        <section class="htc__product__details__tab bg__white pb--120">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                        <ul class="product__deatils__tab mb--60" role="tablist">
                            <li role="presentation" class="active">
                                <a href="#description" role="tab" data-toggle="tab">Description</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="product__details__tab__content">
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="description" class="product__tab__content fade in active">
                                <div class="product__description__wrap">
                                    <div class="product__desc">
                                        <h2 class="title__6">Details</h2>
                                        <p><?php echo($ro['description']); ?></p>
                                    </div>
                                    <div class="pro__feature">
                                        <h2 class="title__6">Features</h2>
                                        <ul class="feature__list">
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i></a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i></a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i> </a></li>
                                            <li><a href="#"><i class="zmdi zmdi-play-circle"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="sheet" class="product__tab__content fade">
                                
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="reviews" class="product__tab__content fade">
                                
                                    <!-- End Single Review -->

                                <!-- Start RAting Area -->
                        
                                <!-- End RAting Area -->
                                
                            </div>
                            <!-- End Single Content -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product tab -->
        <!-- Start Footer Area -->
        <?php include('footer.php'); ?>
        <!-- End Footer Area -->
    </div>
    <!-- Body main wrapper end -->
    <!-- QUICKVIEW PRODUCT -->
    <!-- END QUICKVIEW PRODUCT -->
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