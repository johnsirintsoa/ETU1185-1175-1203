<?php 
include('Fonction.php');
$request2= "SELECT * FROM SOUS_CATEGORIE";
$result2=mysqli_query($bdd, $request2); 

$id=$row4['idCategorie'];

$req2="SELECT * FROM PRODUITS WHERE idCategorie='%d' ";
$req2=sprintf($req2,$id);
$res2=mysqli_query($bdd,$req2);
$ro = mysqli_fetch_assoc($res2);
?>

<section class="htc__product__area bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="product-categories-all">
                            <div class="product-categories-title">
                                <h3><?php echo($row4['nom']); ?></h3>
                            </div>
                            <div class="product-categories-menu">
                            </div>
                        </div>
                    </div>

                    <div class="col-md-9">
                        <div class="product-style-tab">

                            <div class="product-tab-list">
                                <!-- Nav tabs -->
                                <ul class="tab-style" role="tablist">
                        

                                <?php
                                 while ($row2 = mysqli_fetch_assoc($result2)){
                                    ?>
                                    <li>
                                        <a href="index.php?idscat= <?php echo($row2['idSous_Categorie']); ?>&idcat= <?php echo($id); ?> ">
                                            <div class="tab-menu-text">
                                                <h4><?php echo($row2['nom']); ?></h4>
                                            </div>
                                        </a>
                                    </li>
                                <?php } ?>
    
                                </ul>
                            </div>

                            <div class="tab-content another-product-style jump">
                                <div class="tab-pane active" id="home1">
                                    <div class="row">
                                        <div class="product-slider-active owl-carousel">

                                <?php
                                if(isset($_GET['idscat'])){

                                    $req="SELECT * FROM PRODUITS WHERE idCategorie='%d' AND idSous_Categorie='%d' ";
                                    $req=sprintf($req,$id,$_GET['idscat']);
                                    $res=mysqli_query($bdd,$req);
                                    while ($ro = mysqli_fetch_assoc($res)){
                                    ?>
                                    <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="<?php echo($ro['image']); ?>" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">
                                                                <li><a title="Add TO Cart" href="cart.php?pp=<?php echo($ro['idProduit']); ?>"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.php?pp=<?php echo($ro['idProduit']); ?>"><span class="ti-heart"></span></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.php?idp=<?php echo($ro['idProduit']); ?>"><?php echo($ro['nom']); ?></a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">❤❤</li>
                                                            <li class="new__price"><?php echo($ro['prix']); ?></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                    <?php 
                                }
                            }else{
                                    ?>

                                <?php
                                 while($ro2= mysqli_fetch_assoc($res2)){
                                    ?>
                                            <div class="col-md-4 single__pro col-lg-4 cat--1 col-sm-4 col-xs-12">
                                                <div class="product">
                                                    <div class="product__inner">
                                                        <div class="pro__thumb">
                                                            <a href="#">
                                                                <img src="<?php echo($ro2['image']); ?>" alt="product images">
                                                            </a>
                                                        </div>
                                                        <div class="product__hover__info">
                                                            <ul class="product__action">

                                                                <li><a data-toggle="modal" data-target="#productModal" title="Quick View" class="quick-view modal-view detail-link" href="#"><span class="ti-plus"></span></a></li>
                                                                <li><a title="Add TO Cart" href="cart.php?pp=<?php echo($ro2['idProduit']); ?>"><span class="ti-shopping-cart"></span></a></li>
                                                                <li><a title="Wishlist" href="wishlist.php?pp=<?php echo($ro2['idProduit']); ?>"><span class="ti-heart"></span></a></li>

                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="product__details">
                                                        <h2><a href="product-details.php?idp=<?php echo($ro2['idProduit']); ?>"><?php echo($ro2['nom']); ?></a></h2>
                                                        <ul class="product__price">
                                                            <li class="old__price">❤❤</li>
                                                            <li class="new__price"><?php echo($ro2['prix']); ?></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                    <?php 
                                        }
                                    }
                                    ?>

                
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<!-- ********************************************************** PUB ************************************************************ -->
        