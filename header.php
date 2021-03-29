<?php 
$ro3=null;
include('connexion.php');

if(isset($_SESSION['nom'])){
$req="SELECT * FROM CLIENT WHERE name='%s' ";
$req=sprintf($req,$_SESSION['nom']);
$res=mysqli_query($bdd,$req);
$ro3 = mysqli_fetch_assoc($res);
}

?>
<header id="header" class="htc-header header--3 bg__white">
     <!-- Start Mainmenu Area -->
     <div id="sticky-header-with-topbar" class="mainmenu__area sticky__header">
         <div class="container">
             <div class="row">
                 <div class="col-md-2 col-lg-2 col-sm-3 col-xs-3">
                     <div class="logo">
                         <a href="index.php">
                             <img src="images/logo/logo.png" alt="logo">
                         </a>
                     </div>
                 </div>
                 <!-- Start MAinmenu Ares -->
                 <div class="col-md-8 col-lg-8 col-sm-6 col-xs-6">
                     <nav class="mainmenu__nav hidden-xs hidden-sm">
                         <ul class="main__menu">
                             <li class="drop"><a style="font-family: 'Courgette', cursive; color: pink; font-size: 35px; " ><?php if(isset($_SESSION['nom'])){ echo($_SESSION['nom']);} ?></a></li>
                             <li class="drop"><a href="index.php">Acceuil</a></li>
                             <li class="drop"><a href="shop.php">Boutique</a></li>
                             <li class="drop"><a href="#">Pages</a>
                                 <ul class="dropdown">
                                     <li><a href="about.php">apropos</a></li>
                                     <li><a href="shop.php">boutique</a></li>
                                     <li><a href="cart.php">panier</a></li>
                                     <li><a href="wishlist.php">souhait</a></li>
                                     <li><a href="login-register.php">connection & inscription</a></li>
                                 </ul>
                             </li>
                             <li><a href="contact.php">Contact</a></li>
                         </ul>
                     </nav>
                                              
                 </div>
                 <!-- End MAinmenu Ares -->
                 <div class="col-md-2 col-sm-4 col-xs-3">  
                     <ul class="menu-extra">
                         <li class="search search__open hidden-xs"><span class="ti-search"></span></li>
                         <li><a href="login-register.php"><span class="ti-user"></span></a></li>
                         <li class="cart__menu"><span class="ti-shopping-cart"></span></li>
                         <li class="toggle__menu hidden-xs hidden-sm"><span class="ti-menu"></span></li>
                     </ul>
                 </div>
             </div>
             <div class="mobile-menu-area"></div>
         </div>
     </div>
     <!-- End Mainmenu Area -->
</header>

<!-- *************************************************************content************************************************** -->

<div class="body__overlay"></div>
        <!-- Start Offset Wrapper -->
        <div class="offset__wrapper">
            <!-- Start Search Popap -->
            <div class="search__area">
                <div class="container" >
                    <div class="row" >
                        <div class="col-md-12" >
                            <div class="search__inner">
                                <form action="Recherche.php" method="get">
                                    <input placeholder="Rechercher ici... " type="text" name="search">
                                    <button type="submit"></button>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Search Popap -->
            <!-- Start Offset MEnu -->
            <div class="offsetmenu">
                <div class="offsetmenu__inner">
                    <div class="offsetmenu__close__btn">
                        <a href="#"><i class="zmdi zmdi-close"></i></a>
                    </div>
                    <div class="off__contact">
                        <div class="logo">
                            <a href="index.php">
                                <img src="images/logo/logo.png" alt="logo">
                            </a>
                        </div>
                        <p>vonjeo fa valaka be</p>
                    </div>
                    <ul class="sidebar__thumd">
                    </ul>
                    <div class="offset__widget">
                        <div class="offset__single">
                            <h4 class="offset__title">Language</h4>
                            <ul>
                                <li><a href="#"> Engish </a></li>
                                <li><a href="#"> French </a></li>
                                <li><a href="#"> German </a></li>
                            </ul>
                        </div>
                        <div class="offset__single">
                            <h4 class="offset__title">Devise</h4>
                            <ul>
                                <li><a href="#"> USD : Dollar </a></li>
                                <li><a href="#"> EUR : Euro </a></li>
                                <li><a href="#"> POU : Pound </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="offset__sosial__share">
                        <h4 class="offset__title"></h4>
                        <ul class="off__soaial__link">
                            <li><a class="bg--twitter" href="https://www.twitter.com"  title="Twitter"><i class="zmdi zmdi-twitter"></i></a></li>
                            
                            <li><a class="bg--instagram" href="https://www.instagram.com/explore/tags/tmart/?hl=fr" title="Instagram"><i class="zmdi zmdi-instagram"></i></a></li>

                            <li><a class="bg--facebook" href="https://web.facebook.com/tmart.tmart.904" title="Facebook"><i class="zmdi zmdi-facebook"></i></a></li>

                            <li><a class="bg--googleplus" href="https://www.google.com/search?q=tmart&rlz=1C1CHWL_frMG886MG887&oq=tmart&aqs=chrome..69i57l2j35i39i362j0i271l3j35i39i362l4...5.1017j0j15&sourceid=chrome&ie=UTF-8" title="Google Plus"><i class="zmdi zmdi-google-plus"></i></a></li>

                        </ul>
                    </div>
                </div>
            </div>
            <!-- End Offset MEnu -->
            <!-- Start Cart Panel -->
            <div class="shopping__cart">
                <div class="shopping__cart__inner">
                    <div class="offsetmenu__close__btn">
                        <a href="#"><i class="zmdi zmdi-close"></i></a>
                    </div>
                    <div class="shp__cart__wrap">
                        <?php 
                         if($ro3!=null){
                         $req2="SELECT * FROM boom WHERE idClient=%d AND valide=1 ";
                         $req2=sprintf($req2,$ro3['idClient']);
                         $res2=mysqli_query($bdd,$req2);
                
                         while($ro2 = mysqli_fetch_assoc($res2)){
                        ?>
                        <div class="shp__single__product">
                            <div class="shp__pro__thumb">
                                <a href="#">
                                    <img src="<?php echo($ro2['image']) ;?> " alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="product-details.php"><?php echo($ro2['nom']) ;?></a></h2>
                                <span class="shp__price"><?php echo($ro2['prix']) ;?></span>
                            </div>
                            
                        </div>
                        <?php
                        }
                        } 
                        ?>
                        
                    </div>
                    <ul class="shoping__total">
                        <li class="subtotal">Total:</li>
                        <?php 
                        $trans=5000;
                        $requete="SELECT sum(prix) SOMME from boom";
                         $ree=mysqli_query($bdd,$requete);
                         $row10=mysqli_fetch_assoc($ree);
                        ?>
                        <li class="total__price"><?php echo($row10['SOMME']); ?></li>
                    </ul>
                    <ul class="shopping__btn">
                        <li><a href="cart.php">Voir Panier</a></li>
                        <li class="shp__checkout"><a href="wishlist.php">Voir Souhait</a></li>
                    </ul>
                </div>
            </div>
            <!-- End Cart Panel -->
        </div>
        <!-- End Offset Wrapper -->