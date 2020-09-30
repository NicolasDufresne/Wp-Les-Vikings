<?php /* Template Name: Espace professionnel */?>

<?php get_header(); ?>


    <div id="parallax-world-of-ugg">
        <div class="parallax-three">
            <h2  class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">Espace professionnel</h2>
            <p class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">Pour toutes informations
                <span class="p wow fadeIn" data-wow-duration="1s" data-wow-delay="0.8s">techniques</span></p>
        </div>
    </div>

    <div class="block"></div>

    <div id="navWrap">
        <div id="ajout">
            <nav class="nav-infos" id="nav-infos">
                <ul>
                    <li><a href="#professionnel" class="nav-active">Description</a></li>
                    <li><a href="#plan"          class="nav-active">Plans de la salle</a></li>
                    <li><a href="#listeMateriel" class="nav-active">Liste du matériel</a></li>
                </ul>
            </nav>
        </div>
    </div>

<?php echo do_shortcode('[smartslider3 slider="3"]');?>


    <section id="professionnel">
        <div class="wrap">
            <h2>Espace Les Vikings</h2>
            <p>L’Espace les Vikings est une salle de congrès et de spectacles appartenant à la ville d’Yvetot. Elle
                dispose d’une jauge de 900 places assises, modulable à 600 et 400 places. Les fauteuils sont
                rétractables dans leur intégralité.</p>
            <p>La salle accueille des spectacles, conférences, expositions, colloques. Dotée d'une cafétéria, elle peut
                être louée.</p>
            <p>Pour toute demande de devis, ou pour toute question technique, merci de bien vouloir contacter Gilles
                Camuset, régisseur des Vikings.
                Par téléphone au 02.35.95.15.46 ou par courriel à <a href="mailto:gilles.camuset@yvetot.fr">gilles.camuset@yvetot.fr</a>
            <p>
        </div>

        <div class="block"></div>

        <div id="livret">
            <div class="wrap">
                <a href="assets/img/professionnel/LivretAccueil-EspaceLesVikings.pdf" target="_blank">
                    <img src="<?= get_template_directory_uri() . '/assets/img/technique/livret.png'; ?>" alt="livret-technique"/>
                </a>
            </div>
        </div>
    </section>


    <div id="plan">
        <div class="wrap">
            <div class="block"></div>
            <div class="plan">
                <div class="container">
                    <h1>Plan de la salle</h1>
                    <div class="middle">
                        <a href="assets/img/professionnel/PlanSalle-EspaceLesVikings.pdf"
                           onclick="window.open(this.href);return false">
                            <img src="<?= get_template_directory_uri() . '/assets/img/technique/planSalle.png'; ?>" alt="planSalle" class="image" style="width:100%">
                        </a>
                    </div>
                </div>

                <div class="container">
                    <h1>Plan des perches</h1>
                    <div class="middle">
                        <a href="assets/img/professionnel/PlanPerches-EspaceLesVikings.pdf"
                           onclick="window.open(this.href);return false">
                            <img src="<?= get_template_directory_uri() . '/assets/img/technique/planPerches.png'; ?>" alt="planPerches" class="image" style="width:100%">
                        </a>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
            <div id="listeMateriel">
                <h1>Liste du matériel</h1>
                <div class="container-materiels">
                    <div class="middle">
                        <a href="assets/img/professionnel/ListeMateriel-EspaceLesVikings.pdf" target="_blank">
                            <img src="<?= get_template_directory_uri() . '/assets/img/technique/materiels.png'; ?>" alt="planPateriels" class="image" style="width:100%">
                        </a>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="block"></div>
            </div>
        </div>
    </div>

<?php get_footer();
