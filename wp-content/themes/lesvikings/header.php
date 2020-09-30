<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package lesvikings
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <meta charset="utf-8">
    <meta name="robots" content="all|(no)follow|(no)index|none">
    <meta name="title" content="Espace Les Vikings - Ville d'Yvetot"/>
    <meta name="author" content="Ville d'Yvetot"/>
    <meta name="owner" content="stephane.miller@yvetot.fr"/>
    <meta name="description" content="Bienvenue sur le site des Vikings, salle de spectacles de la ville d'Yvetot."/>
    <meta name="keywords"
          content="Zenith Rouen,Docks le Havre,culture,spectacles,yvetot,dutronc,opéra,concert,danse,humour,théâtre,gilles camuset,salon,espace culturel,"/>
    <title>Espace Les Vikings - Ville d'Yvetot</title>
    <link rel="icon" type="image/png" href="assets/img/logo/logo.jpg"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- animated css-->
    <link rel="stylesheet" href="assets/css/animate.css"/>

    <!-- wow.js -->
    <script src="assets/js/wow.min.js"></script>
    <script>new WOW().init();</script>

    <!--Leaflet map-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
          integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
          crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
            integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
            crossorigin=""></script>

    <!--Flexslider-->
    <link rel="stylesheet" href="assets/css/flexslider.css" type="text/css" media="screen"/>

    <!--responsive navbar-->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="header">
    <div class="social">
        <ul>
            <li class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.4s"><a
                        href="https://www.facebook.com/ECLesVikingsYvetot/"
                        onclick="window.open(this.href);return false"><img
                            src="<?= get_template_directory_uri() . '/assets/img/icons/instagram.png'; ?>" height="20"
                            width="20"/>Instagram</a>
            </li>
            <li class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.3s"><a
                        href="https://www.facebook.com/ECLesVikingsYvetot/"
                        onclick="window.open(this.href);return false"><img
                            src="<?= get_template_directory_uri() . '/assets/img/icons/facebook.png'; ?>" alt="Facebook"
                            height="20" width="20"/>Facebook</a>
            </li>
            <li class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.2s"><a
                        href="https://twitter.com/AgendaYvetot" onclick="window.open(this.href);return false"><img
                            src="<?= get_template_directory_uri() . '/assets/img/icons/twitter.png'; ?>" alt="Twitter"
                            height="20" width="20"/>Twitter</a>
            </li>
        </ul>
    </div>

    <div id="logo">
        <a href="accueil.php">
            <img src="<?= get_template_directory_uri() . '/assets/img/logo/logo.jpg'; ?>" alt="Logo" height="80">
        </a>
    </div>

    <nav id="mainnav" class="group">
        <div id="menu">&#x2261; Menu</div>
        <div class="clear"></div>
        <ul>
            <li class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s"><a href="accueil.php">Accueil</a></li>
            <li class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s"><a href="informations-pratiques.php">Informations
                    pratiques</a></li>
            <li class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.3s"><a href="espace-professionnel.php">Espace
                    professionnel</a></li>
            <li class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s"><a href="nous-contacter.php">Nous
                    contacter</a></li>
        </ul>
    </nav>
</div>

<div class="clear"></div>

