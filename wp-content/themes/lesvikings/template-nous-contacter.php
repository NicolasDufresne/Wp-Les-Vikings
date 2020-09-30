<?php /* Template Name: Nous contacter */?>

<?php get_header();

    $errors = array();
    $success = 0;

    if (!empty($_POST['submitted'])) {
    // die('Oui');
    $email = trim(strip_tags($_POST['email']));
    $text = trim(strip_tags($_POST['text']));

    if (!empty($email)) {
    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
    // $errors['email'] = "Adresse mail valide";
    } else {
    $errors['email'] = "Adresse mail invalide";
    }
    } else {
    $errors['email'] = "Veuillez renseigner une adresse mail";
    }

    if (!empty($text)) {
    $entete = 'MIME-Version: 1.0' . "\r\n";
    $entete .= 'Content-type: text/html; charset=utf8' . "\r\n";
    $entete .= 'Content-Transfer-Encoding: 8bit';
    $entete .= 'From: ' . $_POST['email'] . "\r\n";

    $sujet = 'Avis d\'un utilisateur. Envoi depuis la page de contact.';

    $text = 'Message envoyé depuis la page Contact de http://www.lesvikings-yvetot.fr/
    E-mail de l\'utilisateur : ' . $_POST['email'] . '
    Message : ' . $_POST['text'] . '';
    } else {
    $errors['text'] = "Veuillez remplir le champ commentaire";
    }

    if (count($errors) == 0) {
    $success = 1;
    mail('sylvie.dufaur@yvetot.fr', utf8_decode($sujet), utf8_decode($text));
    }

    }
    ?>

    <section>
        <div id="parallax-world-of-ugg">
            <div class="parallax-four">
                <h2  class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">Nous contacter</h2>
                <p class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">Votre avis nous
                    <span class="p wow fadeIn" data-wow-duration="1s" data-wow-delay="0.8s"> intéresse</span></p>
            </div>
        </div>
    </section>

    <section id="equipe">
        <div class="wrap">
            <div class="block"></div>
            <h1 class="animated fadeInDown">Notre équipe</h1>
            <div class="block"></div>
            <div class="wow fadeInDown personnel" data-wow-duration="1s" data-wow-delay="0.2s">
                <h2>Sylvie Dufaur</h2>
                <p>Chargée de la Saison Culturelle</p>
                <p> Accueil des artistes et du public, billeterie</p>
                <p><a href="mailto:sylvie.dufaur@Yvetot.fr">sylvie.dufaur@yvetot.fr</a> - 02.35.95.15.46</p>
            </div>
            <div class="wow fadeInDown personnel" data-wow-duration="1s" data-wow-delay="0.3s">
                <h2>Gilles Camuset</h2>
                <p>Régisseur général et lumières</p>
                <p><a href="mailto:gilles.camuset@yvetot.fr">gilles.camuset@yvetot.fr</a> - 02.35.95.15.46</p>
            </div>
            <div class="wow fadeInDown personnel" data-wow-duration="1s" data-wow-delay="0.4s">
                <h2>Benjamin Charpentier</h2>
                <p>Technicien son</p>
            </div>
            <div class="wow fadeInDown personnel" data-wow-duration="1s" data-wow-delay="0.5s">
                <h2>Ludovic Schweitzer</h2>
                <p>Régisseur plateau</p>
            </div>
            <div class="wow fadeInDown personnel" data-wow-duration="1s" data-wow-delay="0.6s">
                <h2>Nadine Douche</h2>
                <p>Entretien des locaux</p>
            </div>
            <div class="wow fadeInDown personnel" data-wow-duration="1s" data-wow-delay="0.7s">
                <h2>Stéphane Miller et Jordan Huré</h2>
                <p>Communication</p>
                <p><a href="mailto:service.communication@yvetot.fr">service.communication@yvetot.fr</a></p>
            </div>
        </div>
    </section>

    <div class="block"></div>

    <div class="contact-fond">
        <div class="contact-fond-hachure">
            <section id="form-global">
                <form class="main-form" id="form-contact" method="post">
                    <h2>Votre avis nous intéresse</h2>
                    <label>Adresse e-mail</label>
                    <input name="email" type="text" placeholder="E-mail" value="<?php if (!empty($_POST['email'])) {
                        echo $_POST['email'];
                    } ?>"/>
                    <span class="errors"><?php if (!empty($errors['email'])) {
                            echo $errors ['email'];
                        } ?> </span>

                    <label>Commentaire</label>
                    <textarea name="text" placeholder="Commentaire"></textarea>
                    <span class="errors"><?php if (!empty($errors['text'])) {
                            echo $errors ['text'];
                        } ?> </span>

                    <div class="submit">
                        <input type="submit" name="submitted" value="Envoyer" id="button"/>
                    </div>
                </form>
            </section>
        </div>
    </div>


<?php get_footer();
