<?php /* Template Name: Accueil */?>

<?php get_header(); ?>


<div id="parallax-world-of-ugg">
    <div class="parallax-one">
        <h2>Les Vikings</h2>
    </div>
</div>

<section id="programmation">
    <div class="block"></div>
    <h1 class=" animated fadeInDown">Programmation</h1>
    <div class="block"></div>
    <div class="wrap-affiches">
        <?php foreach ($infos as $informations) { ?>
            <div class="affiches">
                <a href="affiche.php?id=<?php echo urlencode($informations['id']); ?>">
                    <img alt="affiches" src="<?php echo $informations['affiche']; ?>" width="200"
                         height="300"/></a>
                <div class="infos-affiches-accueil">
                    <h2><?php echo $informations['title']; ?></h2>
                    <h3><?php echo $informations['author']; ?></h3>
                    <div class="dates">
                        <p><?php echo $informations['date'] ?></p>
                    </div>
                </div>
            </div>

        <?php } ?>
    </div>
</section>


<div class="clear"></div>
<div class="block"></div>

<section id="partenaires">
    <h1>Nos partenaires</h1>
    <div class="block"></div>
    <div class="wrap">
        <ul>
            <li>
                <div class="logo-partenaires">
                    <a href="http://www.ticketmaster.fr/fr/resultat?ipSearch=yvetot"
                       onclick="window.open(this.href);return false">
                        <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.2s"
                             src="<?= get_template_directory_uri() . '/assets/img/partenaires/ticketmaster.png'; ?>" alt="ticketmaster"
                             width="190" height="100"/>
                    </a>
                </div>
            </li>
            <li>
                <div class="logo-partenaires">
                    <a href="https://www.normandie.fr"
                       onclick="window.open(this.href);return false">
                        <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.3s"
                             src="<?= get_template_directory_uri() . '/assets/img/partenaires/logo-region.svg'; ?>" alt="logo-region"
                             width="165" height="100"/>
                    </a>
                </div>
            </li>
            <li>
                <div class="logo-partenaires">
                    <a href="https://www.operaderouen.fr/"
                       onclick="window.open(this.href);return false">
                        <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.4s"
                             src="<?= get_template_directory_uri() . '/assets/img/partenaires/logo-opera.svg'; ?>" alt="logo-opera"/>
                    </a>
                </div>
            </li>
            <li>
                <div class="logo-partenaires">
                    <a href="http://www.ccry.fr"
                       onclick="window.open(this.href);return false">
                        <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.5s"
                             src="<?= get_template_directory_uri() . '/assets/img/partenaires/yvetot-normandie.png'; ?>"
                             alt="yvetot-normandie"/>
                    </a>
                </div>
            </li>
            <li>
                <div class="logo-partenaires">
                    <a href="http://www.seinemaritime.net"
                       onclick="window.open(this.href);return false">
                        <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.6s"
                             src="<?= get_template_directory_uri() . '/assets/img/partenaires/logo-SM.png'; ?>" alt="logo-SM" width="100" height="100"/>
                    </a>
                </div>
            </li>
            <li>
                <div class="logo-partenaires">
                    <a href="http://www.odianormandie.com/"
                       onclick="window.open(this.href);return false">
                        <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.7s"
                             src="<?= get_template_directory_uri() . '/assets/img/partenaires/odia.png'; ?>" alt="odia" width="100" height="100"/>
                    </a>
                </div>
            </li>
            <li>
                <div class=" logo-partenaires">
                    <a href="https://www.lechainon.fr/" onclick="window.open(this.href);return false">
                        <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.8s"
                             src="<?= get_template_directory_uri() . '/assets/img/partenaires/logo-chainon.png'; ?>" alt="logo-chainon" width="100" height="100"/>
                    </a>
                </div>
            </li>
            <li>
                <div class="logo-partenaires">
                    <a href="https://www.theatrealouest.fr/"
                       onclick="window.open(this.href);return false">
                        <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.9s"
                             src="<?= get_template_directory_uri() . '/assets/img/partenaires/logo-theatre.png'; ?>" alt="logo-theatre" width="150" height="75"/>
                    </a>
                </div>
            </li>
            <li>
                <div class="logo-partenaires">
                    <a href="http://sites.radiofrance.fr/chaines/france-bleu/?tag=haute-normandie"
                       onclick="window.open(this.href);return false">
                        <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="1s"
                             src="<?= get_template_directory_uri() . '/assets/img/partenaires/radio-france.png'; ?>" alt="radio-france" width="170"/>
                    </a>
                </div>
            </li>
            <div class="clear"></div>
        </ul>
    </div>
</section>

<div class="clear"></div>

<?php get_footer();
