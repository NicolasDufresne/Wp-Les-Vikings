<?php /* Template Name: Site Map */ ?>

<?php get_header(); ?>

    <div class="block"></div>
    <section id="metions-legales">
        <div class="wrap">
            <h1>Plan du site</h1>

            <div class="site-map wrap">
                <ul class="sitemap">
                    <li><a class="subtitle-sitemap">Les Vikings</a>
                        <ul>
                            <li><a href="<?= esc_url(home_url('/')); ?>">Accueil</a></li>
                            <li><a href="<?= esc_url(home_url('informations-pratiques')); ?>">Informations pratiques</a></li>
                            <li><a href="<?= esc_url(home_url('espace-professionnel')); ?>">Espace professionnel</a></li>
                            <li><a href="<?= esc_url(home_url('nous-contacter')); ?>">Nous contacter</a></li>
                            <li><a href="<?= esc_url(home_url('mentions-legales')); ?>">Mentions légales</a></li>
                            <li><a href="<?= esc_url(home_url('politique-de-confidentialite')); ?>">Politique de confidentialité</a></li>
                            <li><a href="<?= esc_url(home_url('plan-du-site'));?>">Plan du site</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <div class="block"></div>

<?php get_footer();
