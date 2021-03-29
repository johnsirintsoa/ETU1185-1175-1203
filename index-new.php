<?php 
$request= "SELECT * FROM CATEGORIE";
$result=mysqli_query($bdd, $request);
$request1= "SELECT * FROM SOUS_CATEGORIE";
$result1=mysqli_query($bdd, $request1);

?>
<section class="categories-slider-area bg__white">
            <div class="container">
                <div class="row">
                    <!-- Start Left Feature -->
                    <div class="col-md-9 col-lg-9 col-sm-8 col-xs-12 float-left-style">

                        <!-- Start Slider Area -->
                        <div class="slider__container slider--one">
                            <div class="slider__activation__wrap owl-carousel owl-theme">
                                <!-- Start Single Slide -->
                                <div class="slide slider__full--screen slider-height-inherit slider-text-right" style="background: rgba(0, 0, 0, 0) url(images/slider/bg/1.png) no-repeat scroll center center / cover ;">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-10 col-lg-8 col-md-offset-2 col-lg-offset-4 col-sm-12 col-xs-12">
                                                <div class="slider__inner">
                                                    <h1>New Product <span class="text--theme">Collection</span></h1>
                                                    <div class="slider__btn">
                                                        <a class="htc__btn" href="cart.php">shop now</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single Slide -->
                                <!-- Start Single Slide -->
                                <div class="slide slider__full--screen slider-height-inherit  slider-text-left" style="background: rgba(0, 0, 0, 0) url(images/slider/bg/2.png) no-repeat scroll center center / cover ;">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-8 col-lg-8 col-sm-12 col-xs-12">
                                                <div class="slider__inner">
                                                    <h1>New Product <span class="text--theme">Collection</span></h1>
                                                    <div class="slider__btn">
                                                        <a class="htc__btn" href="cart.php">shop now</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single Slide -->
                            </div>
                        </div>
                        <!-- Start Slider Area -->
                    </div>
                    <div class="col-md-3 col-lg-3 col-sm-4 col-xs-12 float-right-style">
                        <div class="categories-menu mrg-xs">
                            <div class="category-heading">
                               <h3> Nouveaux Produit</h3>
                            </div>
                            <div class="category-menu-list">
                                <ul>
                                    <?php while ($row = mysqli_fetch_assoc($result)){?>

                                    <li><a href="#"><img alt="" src="images/icons/thum2.png"><?php echo($row['nom']); ?><i class="zmdi zmdi-chevron-right"></i></a>
                                        <div class="category-menu-dropdown">
                                            <div class="category-menu-dropdown-top">
                                                <div class="category-part-1 category-common2 mb--30">
                                                    <h4 class="categories-subtitle"><?php echo($row['nom']); ?></h4>
                                                    <ul>
                                                        <?php
                                                         while ($row= mysqli_fetch_assoc($result1)){
                                                        ?>
                                                        <li><a href="#"><?php echo($row['nom']); ?></a></li>
                                                    <?php 
                                                    }
                                                    ?>
                                                    </ul>
                                                </div>
                            
                                            </div>
                                            <div class="category-menu-dropdown-bottom">
                                                <div class="single-category-brand">
                                                    <a href="#"><img src="images/brand/6.png" alt=""></a>
                                                </div>
                                                <div class="single-category-brand">
                                                    <a href="#"><img src="images/brand/7.png" alt=""></a>
                                                </div>
                                                <div class="single-category-brand">
                                                    <a href="#"><img src="images/brand/8.png" alt=""></a>
                                                </div>
                                                <div class="single-category-brand">
                                                    <a href="#"><img src="images/brand/9.png" alt=""></a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                <?php }?>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End Left Feature -->
                </div>
            </div>
        </section>

        