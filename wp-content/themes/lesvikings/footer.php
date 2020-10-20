<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package lesvikings
 */

?>

<footer>
    <section id="footer">
        <div class="columns wow animate__fadeIn" data-wow-duration="1s" data-wow-delay="0.3s">
            <a href="https://www.yvetot.fr" onclick="window.open(this.href);return false">
                <img src="<?= get_template_directory_uri() . '/assets/img/partenaires/yvetot.png'; ?>" alt="yvetot"
                     width="300" height="60"></a>
        </div>
        <div class="columns wow animate__fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
            <h3>Adresse</h3>
            <address class="adresse">
                Les Vikings
                Rue Pierre de Coubertin <br/>
                76190 Yvetot <br/>
                02.35.95.15.46 <br/>
            </address>
        </div>

        <div class="columns wow animate__fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
            <h3>Plus d'informations</h3>
            <div class="columns-info">
                <p>Location de salle : <a href="mailto:gilles.camuset@yvetot.fr">gilles.camuset@yvetot.fr</a></p>
                <p>Réservations et billetterie : <a href="mailto:saison.culturelle@yvetot.fr">
                        <br/>saison.culturelle@yvetot.fr</a></p>
                <p>Licence spectacle n°1-104 25 43 et n°3-104 25 44</p>
            </div>
        </div>

        <div class="columns wow animate__fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">
            <h3>Navigation</h3>
            <ul>
                <li><a href="<?= esc_url(home_url('/')); ?>">Accueil</a></li>
                <li><a href="<?= esc_url(home_url('informations-pratiques')); ?>">Informations pratiques</a></li>
                <li><a href="<?= esc_url(home_url('espace-professionnel')); ?>">Espace professionnel</a></li>
                <li><a href="<?= esc_url(home_url('nous-contacter')); ?>">Nous contacter</a></li>
                <li><a href="<?= esc_url(home_url('mentions-legales')); ?>">Mentions légales</a></li>
                <li><a href="<?= esc_url(home_url('politique-de-confidentialite')); ?>">Politique de confidentialité</a></li>
            </ul>
        </div>

        <div class="clear"></div>
        <div class="copyright">
            <p>Site réalisé en interne - contact administrateur
                <a href="mailto:service.communication@yvetot.fr">
                    service.communication@yvetot.fr</a>
            </p>
        </div>
    </section>
</footer>


<!-- responsive navbar -->
<script>
    $(document).ready(function () {
        $('#menu').bind('click', function (event) {
            $('#mainnav ul').slideToggle();
        });
        $(window).resize(function () {
            var w = $(window).width();
            if (w > 768) {
                $('#mainnav ul').removeAttr('style');
            }
        });
    });
</script>

<!-- map -->
<script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
        integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
        crossorigin=""></script>


<?php wp_footer(); ?>

</body>
</html>
