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
        <div class="columns wow fadeIn" data-wow-duration="1s" data-wow-delay="0.3s">
            <a href="http://www.yvetot.fr" onclick="window.open(this.href);return false">
                <img src="<?= get_template_directory_uri() . '/assets/img/partenaires/yvetot.png'; ?>" alt="yvetot" width="300" height="60"></a>
        </div>
        <div class="columns wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
            <h3>Adresse</h3>
            <address class="adresse">
                Les Vikings
                Rue Pierre de Coubertin <br/>
                76190 Yvetot <br/>
                02.35.95.15.46 <br/>
            </address>
        </div>

        <div class="columns wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
            <h3>Plus d'informations</h3>
            <div class="columns-info">
                <p>Location de salle : <a href="mailto:gilles.camuset@yvetot.fr"
                                          onclick="window.open(this.href);return false">gilles.camuset@yvetot.fr</a></p>
                <p>Réservations et billetterie : <a href="mailto:saison.culturelle@yvetot.fr"
                                                    onclick="window.open(this.href);return false">
                        <br/>saison.culturelle@yvetot.fr</a></p>
                <p>Licence spectacle n°1-104 25 43 et n°3-104 25 44</p>
            </div>
        </div>

        <div class="columns wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">
            <h3>Navigation</h3>
            <ul>
                <li><a href="index.php">Accueil</a></li>
                <li><a href="<?= esc_url(home_url('informations-pratiques')); ?>">Informations pratiques</a></li>
                <li><a href="<?= esc_url(home_url('espace-professionnel')); ?>">Espace professionnel</a></li>
                <li><a href="<?= esc_url(home_url('nous-contacter')); ?>">Nous contacter</a></li>
                <li><a href="<?= esc_url(home_url('mentions-legales')); ?>">Mentions légales</a></li>
            </ul>
        </div>

        <div class="clear"></div>
        <div class="copyright">
            <p>Site réalisé en interne - contact administrateur
                <a href="mailto:service.communication@yvetot.fr" onclick="window.open(this.href);return false">
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

<!-- fix nav -->
<script>
    $(document).scroll(function () {
        var y = $(this).scrollTop();
        var navWrap = $('#navWrap').offset().top;
        if (y > navWrap) {
            $('#nav-infos').addClass('sticky');
            $('#ajout').addClass('add');
        } else {
            $('#nav-infos').removeClass('sticky');
            $('#ajout').removeClass('add');
        }
    });
</script>

<!-- FlexSlider -->
<script defer src="assets/js/jquery.flexslider.js"></script>

<script>
    $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide",
            start: function (slider) {
                $('body').removeClass('loading');
            }
        });
    });
</script>


<!-- active nav-infos -->
<script>
    var btnContainer = document.getElementById("nav-infos");
    var btns = btnContainer.getElementsByClassName("nav-active");
    for (var i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function() {
            var current = document.getElementsByClassName("active");

            if (current.length > 0) {
                current[0].className = current[0].className.replace(" active", "");
            }
            this.className += " active";
        });
    } </script>
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
