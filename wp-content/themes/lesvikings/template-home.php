<?php /* Template Name: Accueil */ ?>

<?php get_header();

date_default_timezone_set('Europe/Paris');
setlocale(LC_TIME, 'fr_FR.utf8', 'fr', 'fr_FR', 'fr_FR.iso-8859-15', "French");
delete_expired_coupons_callback();
?>

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
            <?php
            /* Cible le post type */
            $query_affiches = new WP_Query(array(
                'post_status' => 'publish',
                'post_type' => 'spectacles',
            ));
            if ($query_affiches->have_posts()) {
                $newtab = [];
                /* Tant que icon_menu exist */
                while ($query_affiches->have_posts()) {
                    $query_affiches->the_post();
                    $datas = get_post_meta(get_the_ID());
                    array_push($newtab, $datas);
                }
                $size = count($newtab);
                for ($i = 0; $i < $size; $i++) {
                    $newtab[$i]['_date'][0] = gmdate("l d M Y H:i:s", $newtab[$i]['_date'][0]);
                }

                usort($newtab, orderByDate(['_date'][0]));

                foreach ($newtab as $data) { ?>

                <div class="affiches">
                    <a href="<?= get_the_permalink(); ?>">
                        <?= wp_get_attachment_image($data['_image'][0], 'affiches'); ?>
                        <div class="infos-affiches-accueil">
                            <h2 style="color: <?= $data['_couleur'][0]; ?>"><?= $data['_author'][0]; ?></h2>
                            <h3 style="text-transform: uppercase"><?= $data['_titre'][0]; ?></h3>
                            <div class="dates">
                                <p>
                                    <?= strftime("%A %d %B %Y à %Hh%M", strtotime($data['_date'][0])); ?>
                                </p>
                            </div>
                        </div>
                    </a>
                </div> <?php
                }

                } else {
                ?> <h2>No post found</h2> <?php
            }
            /* Restore original Post Data */
            wp_reset_postdata();
            ?>
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
                                 src="<?= get_template_directory_uri() . '/assets/img/partenaires/ticketmaster.png'; ?>"
                                 alt="ticketmaster"
                                 width="190" height="100"/>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="logo-partenaires">
                        <a href="https://www.normandie.fr"
                           onclick="window.open(this.href);return false">
                            <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.3s"
                                 src="<?= get_template_directory_uri() . '/assets/img/partenaires/logo-region.svg'; ?>"
                                 alt="logo-region"
                                 width="165" height="100"/>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="logo-partenaires">
                        <a href="https://www.operaderouen.fr/"
                           onclick="window.open(this.href);return false">
                            <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.4s"
                                 src="<?= get_template_directory_uri() . '/assets/img/partenaires/logo-opera.svg'; ?>"
                                 alt="logo-opera"/>
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
                                 src="<?= get_template_directory_uri() . '/assets/img/partenaires/logo-SM.png'; ?>"
                                 alt="logo-SM" width="100" height="100"/>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="logo-partenaires">
                        <a href="http://www.odianormandie.com/"
                           onclick="window.open(this.href);return false">
                            <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.7s"
                                 src="<?= get_template_directory_uri() . '/assets/img/partenaires/odia.png'; ?>"
                                 alt="odia" width="100" height="100"/>
                        </a>
                    </div>
                </li>
                <li>
                    <div class=" logo-partenaires">
                        <a href="https://www.lechainon.fr/" onclick="window.open(this.href);return false">
                            <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.8s"
                                 src="<?= get_template_directory_uri() . '/assets/img/partenaires/logo-chainon.png'; ?>"
                                 alt="logo-chainon" width="100" height="100"/>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="logo-partenaires">
                        <a href="https://www.theatrealouest.fr/"
                           onclick="window.open(this.href);return false">
                            <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.9s"
                                 src="<?= get_template_directory_uri() . '/assets/img/partenaires/logo-theatre.png'; ?>"
                                 alt="logo-theatre" width="150" height="75"/>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="logo-partenaires">
                        <a href="http://sites.radiofrance.fr/chaines/france-bleu/?tag=haute-normandie"
                           onclick="window.open(this.href);return false">
                            <img class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="1s"
                                 src="<?= get_template_directory_uri() . '/assets/img/partenaires/radio-france.png'; ?>"
                                 alt="radio-france" width="170"/>
                        </a>
                    </div>
                </li>
                <div class="clear"></div>
            </ul>
        </div>
    </section>

    <div class="clear"></div>

<?php get_footer();
