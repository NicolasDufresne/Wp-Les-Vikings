<?php /* Template Name: Informations pratiques */?>

<?php get_header(); ?>

    <div id="parallax-world-of-ugg">
        <div class="parallax-two">
            <h2  class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">Informations pratiques</h2>
            <p class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">Pour tout savoir sur
                <span class="p wow fadeIn" data-wow-duration="1s" data-wow-delay="0.8s">Les Vikings</span></p>
        </div>
    </div>

    <div class="block"></div>

    <div id="navWrap">
        <div id="ajout">
            <nav class="animated fadeInDown nav-infos" id="nav-infos">
                <ul>
                    <li><a href="#billeterie" class="nav-active">Billetterie</a></li>
                    <li><a href="#modalites"  class="nav-active">Modalités de règlement</a></li>
                    <li><a href="#stationner" class="nav-active">Où stationner ?</a></li>
                    <li><a href="#venir"      class="nav-active">Venir aux Vikings</a></li>
                    <li><a href="#horaires"   class="nav-active">Horaires des spectacles</a></li>
                </ul>
            </nav>
        </div>
    </div>

    <section id="billeterie">
        <div class="wrap">
            <h1 class="wow fadeInDown" data-wow-delay="0.15s">Billetterie pour la programmation municipale</h1>
            <div class="block"></div>
            <h2>Billetterie à l'accueil de la salle</h2>
            <p>Ouvert le mardi, mercredi, jeudi et vendredi de 14 h à 17 h 30.</p>
            <h2>Par téléphone</h2>
            <p>Au 02.35.95.15.46 aux mêmes jours, réservation validée avec l'envoi du règlement par chèque.</p>
            <h2>En ligne</h2>
            <p>Avec notre partenaire Ticketmaster sur
                <a href="https://www.ticketmaster.fr/fr/resultat?ipSearch=les+vikings+yvetot"
                   onclick="window.open(this.href);return false">www.ticketmaster.fr</a></p>
        </div>
    </section>

    <section id="modalites">
        <div class="wrap">
            <h1 class="wow fadeInDown" data-wow-delay="0.15s">Modalités de règlement des réservations</h1>
            <div class="block"></div>
            <h2>Les réservations et paiements peuvent s'effectuer :</h2>
            <ul>
                <li>En espèce et par carte bancaire, aux horaires d'ouverture de l'accueil et de la billetterie de la
                    salle.
                </li>
                <li>Par chèque, libellé à l'ordre de la régie " Droits d'entrée aux spectacles ".</li>
                <li>Par carte " Atouts Normandie " pour les 15-25 ans. Plus d'infos sur le site
                    <a href="https://atouts.normandie.fr/" onclick="window.open(this.href);return false">www.atouts.normandie.fr</a>.
                </li>
                <li>En téléchargeant le
                    <a href="http://www.lesvikings-yvetot.fr/spectacles/reservation.pdf"
                       onclick="window.open(this.href);return false">bulletin de réservation ici</a> et
                    en le renvoyant avec votre règlement au service spectacles de la ville.
                </li>
            </ul>
            <h2>Le tarif réduit est applicable sur présentation d'un justificatif :</h2>
            <ul>
                <li>Aux personnes de moins de 26 ans et plus de 60 ans.</li>
                <li>Aux demandeurs d'emploi.</li>
                <li>Aux groupes à partir de 10 personnes.</li>
                <li>Aux comités d'entreprise et aux membres du CNAS.</li>
                <li>Aux élèves inscrits à l'école municipale d'arts plastiques, au conservatoire de la musique de la CCYN, à
                    la MJC d'Yvetot, et aux professionnels de la culture et du spectacle.
                </li>
            </ul>
            <h2>Le tarif scolaires, solidaire et partenaires sont réservés..</h2>
            <p>Aux bénéficiaires des minimas sociaux, aux étudiants boursiers, aux personnes en situation de handicap, aux
                groupes scolaires et partenaires d'un projet d'action culturelle.</p>
            <h2>Le tarif abonné..</h2>
            <p>Est un abonnement nominatif réservé à l'achat d'un minimum de 3 spectacles.</p>
            <p>Les adhésions sont à faire à l'accueil de la salle aux heures d'ouverture.</p><br/>
            <h3>L'entrée est gratuite pour les enfants de moins de 10 ans, si le spectacle est adapté à l'âge de l'enfant,
                et dans la limite des places disponibles.</h3>
        </div>
    </section>

    <section id="stationner">
        <div class="wrap">
            <h1 class="wow fadeInDown" data-wow-delay="0.15s">Où stationner ?</h1>
            <div class="block"></div>
            <h2>Les parkings à proximité de la salle</h2>
            <ul>
                <li>Parking de la rue Pierre de Coubertin. (1 min)</li>
                <li>Parking du Cimetière Saint-Louis, accès par l’angle de la rue Pierre de Coubertin et la rue du
                    Mont Joly. (3 min)
                </li>
                <li>Parking de l’ancienne piscine, accès par la Rue de l’Etang. (4 min)</li>
                <li>Parking sur la place de l'Hôtel de Ville. (4 min)</li>
                <li>Parking sur la place des Belges. (5 min)</li>
            </ul>
        </div>
    </section>

    <section id="venir">
        <div class="wrap">
            <h1 class="wow fadeInDown" data-wow-delay="0.15s">Venir aux Vikings</h1>
            <div id="mapid"></div>
            <script>
                var mymap = L.map('mapid').setView([49.614671, 0.760022], 16);
                var marker = L.marker([49.614671, 0.760022]).addTo(mymap);
                var popup = L.popup()
                    .setLatLng([49.615040, 0.759998])
                    .setContent("Rue Pierre de Coubertin, 76190 Yvetot")
                    .openOn(mymap);

                L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
                    maxZoom: 18,
                    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
                        '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
                        'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
                    id: 'mapbox.streets'
                }).addTo(mymap);

                var parking = L.icon({
                    iconUrl: '<?= get_template_directory_uri() . '/assets/img/leaflet/parking.png'; ?>',
                    // shadowUrl: 'img/parking-512.png',

                    iconSize: [48, 48], //icon size
                    // shadowSize:   [50, 64], //shadow size
                    iconAnchor: [10, 10], // point of the icon which will correspond to marker's location
                    shadowAnchor: [4, 62],  // the same for the shadow
                    popupAnchor: [-3, -76] // point from which the popup should open relative to the iconAnchor
                });
                L.marker([49.616636, 0.755948], {icon: parking}).addTo(mymap);
                L.marker([49.614667, 0.759213], {icon: parking}).addTo(mymap);
                L.marker([49.613370, 0.761378], {icon: parking}).addTo(mymap);
                L.marker([49.616031, 0.761791], {icon: parking}).addTo(mymap);
                L.marker([49.617935, 0.753879], {icon: parking}).addTo(mymap);

            </script>
            <div class="block"></div>
            <p>En venant du Havre ou de Rouen par la RD 6015, prendre la direction centre-ville puis suivre les panneaux
                directionnels.</p>
        </div>
    </section>

    <section id="horaires">
        <div class="wrap">
            <h1 class="wow fadeInDown" data-wow-delay="0.15s">Horaires des spectacles</h1>
            <div class="block"></div>
            <p>Les horaires indiqués dans ce programme et sur notre site internet indiquent l’heure de début de la
                représentation.</p>
            <p>Les portes des Vikings sont ouvertes 45 min avant le début du spectacle.</p>
            <p> Les spectacles débutent à l'heure prévue sur votre billet d'accès.</p>
            <h2>ATTENTION</h2>
            <p>Le placement en salle est garanti uniquement jusqu'au début du spectacle. En cas de retard, le personnel
                d'accueil vous placera au mieux afin de ne pas perturber la représentation en cours.</p>
        </div>
    </section>

    <section id="infos">
        <div class="wrap">
            <h1 class="wow fadeInDown" data-wow-delay="0.15s">Nous attirons votre attention sur les points suivants :</h1>
            <ul>
                <li>Pour le confort de tous, les téléphones portables doivent être éteints pendant les spectacles.</li>
                <li>Les photographies avec ou sans flash, les enregistrements sonores ou vidéos sont strictement
                    interdits.
                </li>
                <li>La consommation de nourriture ou de boissons n'est pas autorisée dans la salle.</li>
            </ul>
            <h2>Personnes à mobilité réduite</h2>
            <p>Des accès spécialement aménagés et des places adaptés vous sont réservés.</p>
            <p>Afin de vous accueillir dans les meilleures conditions, nous vous prions de bien vouloir contacter la salle
                au 02.35.95.15.46.</p>
        </div>
    </section>

    <div class="block"></div>

<?php get_footer();
