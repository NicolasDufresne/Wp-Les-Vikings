<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package lesvikings
 */

date_default_timezone_set('Europe/Paris');
setlocale(LC_TIME, 'fr_FR.utf8', 'fr', 'fr_FR', 'fr_FR.iso-8859-15', "French");

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <header class="entry-header">
        <?php
        if ('post' === get_post_type()) :
            ?>
            <div class="entry-meta">
                <?php
                lesvikings_posted_on();
                lesvikings_posted_by();
                ?>
            </div><!-- .entry-meta -->
        <?php endif; ?>
    </header><!-- .entry-header -->

    <?php $query_id = get_the_ID() ?>
    <?php
    /* Cible le post type */
    $query_actualite_accueil = new WP_Query(array(
        'post_status' => 'publish',
        'post_type' => 'spectacles',
        'p' => $query_id,
    ));
    if ($query_actualite_accueil->have_posts()) {
        /* Tant que icon_menu exist */
        while ($query_actualite_accueil->have_posts()) {
            $query_actualite_accueil->the_post();
            $datas = get_post_meta(get_the_ID()); ?>

            <section id="affiche-detail">
                <div class="wrap-affiches">
                    <div class="affiche-details"><?= wp_get_attachment_image($datas['_image'][0], 'affiche-page'); ?></div>

                    <div class="description">
                            <h2><?= $datas['_author'][0]; ?></h2>

                        <br/>

                        <h3><?= $datas['_titre'][0]; ?></h3>

                        <div class="categorie">
                            <p><?= $datas['_select'][0]; ?></p>
                        </div>  <!--Catégorie-->

                        <div class="descriptionDate">
                            <p>
                                <?php $value = gmdate("l d M Y H:i:s", $datas['_date'][0]);
                                echo utf8_encode(ucfirst(strftime("%A %d %B %Y &#xE0; %Hh%M", strtotime($value)))); ?>
                                <!--Date-->
                            </p>
                        </div>


                        <p class="txt"><?= nl2br($datas['_description'][0]); ?></p>

                    </div>

                    <div class="clear"></div>


                    <div class="infos-affiches">

                        <div class="infos">
                            <h2>Tarif(s)</h2>
                            <p><?= nl2br($datas['_tarif'][0]); ?></p>
                        </div>


                        <div class="infos">
                            <h2>Billetterie(s) en ligne</h2>
                            <p><?= nl2br($datas['_lien'][0]); ?></p>
                        </div>

                        <div class="infos">
                            <h2>Réservation</h2>
                            <p><?= nl2br($datas['_reservation'][0]); ?></p>
                        </div>

                        <div class="clear"></div>

                    </div>
                </div>
            </section>

            <div class="block"></div>
        <?php }
    } else {
        ?> <h2>No post found</h2> <?php
    }
    /* Restore original Post Data */
    wp_reset_postdata();
    ?>


    <div class="entry-content">
        <?php
        the_content(
            sprintf(
                wp_kses(
                /* translators: %s: Name of current post. Only visible to screen readers */
                    __('Continue reading<span class="screen-reader-text"> "%s"</span>', 'lesvikings'),
                    array(
                        'span' => array(
                            'class' => array(),
                        ),
                    )
                ),
                wp_kses_post(get_the_title())
            )
        );

        wp_link_pages(
            array(
                'before' => '<div class="page-links">' . esc_html__('Pages:', 'lesvikings'),
                'after' => '</div>',
            )
        );
        ?>
    </div><!-- .entry-content -->

    <footer class="entry-footer">
        <?php lesvikings_entry_footer(); ?>
    </footer><!-- .entry-footer -->
</article><!-- #post-<?php the_ID(); ?> -->
