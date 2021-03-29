<?php session_start(); ?>
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
        
      
        <!-- Start Login Register Area -->
        <div class="htc__login__register bg__white ptb--130" style="background: rgba(0, 0, 0, 0) url(images/bg/5.jpg) no-repeat scroll center center / cover ;">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <ul class="login__register__menu" role="tablist">
                            <li role="presentation" class="login active"><a href="#login" role="tab" data-toggle="tab">Connection</a></li>
                            <?php if(!isset($_SESSION['nom'])){?>
                            <li role="presentation" class="register"><a href="#register" role="tab" data-toggle="tab">Inscription</a></li>
                        <?php }?>
                        </ul>
                    </div>
                </div>
                <!-- Start Login Register Content -->
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="htc__login__register__wrap">
                            <!-- Start Single Content -->
                            <div id="login" role="tabpanel" class="single__tabs__panel tab-pane fade in active">
                                <?php 
                                if(isset($_SESSION['nom'])){ ?>
                                <form action="deconnexion.php">
                                <div class="htc__login__btn mt--30">
                                    <button type="submit" class="btn btn-danger btn-block bbt textstyle" href="#">Deconnection</button>
                                </div>
                                </form>
                            <?php }else{ ?>
                                <form class="login" methods="get" action="traitement.php">
                                    <input type="email" name="email" placeholder="Email" required="">
                                    <input type="password" name="password" placeholder="Password" required="">
                                        <?php
                                        if(isset($_GET['error'])){
                                            if($_GET['error']==1){ ?>

                                            <div class="alert alert-danger textstyle" role="alert">
                                                Votre compte n'existe pas , Veuillez réessayer !
                                            </div>

                                            <?php } ?>

                                            <?php
                                            if($_GET['error']==2){?>
                                            <div class="alert alert-danger textstyle" role="alert">Mauvais mot de passe !</div>

                                            <?php
                                            }
                                        } ?>

                                        <?php 
                                        if(isset($_GET['home'])){
                                            if($_GET['home']==2){?>
                                          <div class="alert alert-success textstyle" role="alert">Inscription Reussi !</div>      

                                        <?php        
                                            }
                                        }?>

                                                
                                <div class="htc__login__btn mt--30">
                                    <button type="submit" class="btn btn-danger btn-block bbt textstyle">Entrer</button>
                                </div>
                                </form>
                            <?php } ?>
                                <div class="htc__social__connect">
                                    <h2>༼ つ ◕_◕ ༽つ</h2>
                                    <ul class="htc__soaial__list">
                                        <li><a class="bg--twitter" href="#"><i class="zmdi zmdi-twitter"></i></a></li>

                                        <li><a class="bg--instagram" href="#"><i class="zmdi zmdi-instagram"></i></a></li>

                                        <li><a class="bg--facebook" href="#"><i class="zmdi zmdi-facebook"></i></a></li>

                                        <li><a class="bg--googleplus" href="#"><i class="zmdi zmdi-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <?php if(!isset($_SESSION['nom'])){?>
                            <div id="register" role="tabpanel" class="single__tabs__panel tab-pane fade">
                                <form class="login" method="get" action="traitement.php">
                                    <input type="text" placeholder="Name" name="iname">
                                    <input type="email" placeholder="Email" name="iemail">
                                    <input type="password" placeholder="Password" name="ipassword">
                               
                                <div class="htc__login__btn">
                                    <button type="submit" class="btn btn-danger btn-block bbt textstyle">register</a>
                                </div>
                                </form>
                                <div class="htc__social__connect">
                                    <h2>Or Login With</h2>
                                    <ul class="htc__soaial__list">
                                        <li><a class="bg--twitter" href="https://www.twitter.com"><i class="zmdi zmdi-twitter"></i></a></li>
                                        <li><a class="bg--instagram" href="https://www.instagram.com/explore/tags/tmart/?hl=fr"><i class="zmdi zmdi-instagram"></i></a></li>
                                        <li><a class="bg--facebook" href="https://web.facebook.com/tmart.tmart.904"><i class="zmdi zmdi-facebook"></i></a></li>
                                        <li><a class="bg--googleplus" href="https://www.google.com/search?q=tmart&rlz=1C1CHWL_frMG886MG887&oq=tmart&aqs=chrome..69i57l2j35i39i362j0i271l3j35i39i362l4...5.1017j0j15&sourceid=chrome&ie=UTF-8"><i class="zmdi zmdi-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <?php }?>
                            <!-- End Single Content -->
                            <!-- Start Admin Login-->
                        </div>
                    </div>
                </div>
                <!-- End Login Register Content -->
            </div>
        </div>
        <!-- End Login Register Area -->
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