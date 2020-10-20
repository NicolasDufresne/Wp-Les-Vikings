<?php

$work = new Cuztom_post_type('Spectacles', [
    'menu_position' => 1,
    'menu_icon' => 'dashicons-tickets-alt',
]);

$value = get_permalink();

$work->add_meta_box(
    'cuztom-spectacles',
    'Spectacles',

    array(
        array(
            'id' => '_titre',
            'type' => 'text',
            'label' => 'Titre',
            'description' => 'Ajouter une titre',
            'explanation'           => __('Ce texte apparaîtra sous l\'image. Les majuscules seront gérées automatiquement.'),
            'default_value'         => '',
            'options'               => array(),
            'args'                  => array(),
            'repeatable'            => false,
            'show_admin_column'     => false,
            'admin_column_sortable' => false,
            'admin_column_filter'   => false,
        ),
        array(
            'id' => '_author',
            'type' => 'text',
            'label' => 'Autheur',
            'description' => 'Ajouter un autheur',
            'explanation'           => __('Ce texte apparaîtra sous le titre. Les majuscules seront gérées automatiquement.'),
            'default_value'         => '',
            'options'               => array(),
            'args'                  => array(),
            'repeatable'            => false,
            'show_admin_column'     => false,
            'admin_column_sortable' => false,
            'admin_column_filter'   => false,
        ),
        array(
            'id'         => '_select',
            'type'       => 'select',
            'label'      => 'Catégorie',
            'options'    => array(
                'Concert, Chanson' => 'Concert, Chanson',
                'Apéro Concert' => 'Apéro Concert',
                'Concert' => 'Concert',
                'Humour' => 'Humour',
                'Comédie musicale' => 'Comédie musicale',
                'Théâtre' => 'Théâtre',
                'Concert de Noël' => 'Concert de Noël'

            ),
        ),

        array(
            'id'    => '_description',
            'type'  => 'wysiwyg',
            'label' => 'Description',
            'explanation' => __('/!\ Faire attention à la case'),

        ),
        array(
            'id'    => '_tarif',
            'type'  => 'textarea',
            'label' => 'Tarif',
            'explanation' => __('/!\ Faire attention au retour à la ligne <br> Ex: <br> Tarif Unique : 29 € <br> Tarif Réduit : 15€'),
        ),
        array(
            'id'    => '_lien',
            'type'  => 'wysiwyg',
            'label' => 'Liens',
            'explanation' => __('Cliquer sur le petit chainon pour ajouter un lien <br> /!\ Faire attention au retour à la ligne <br> Ex: <br> Théatre à l\'Ouest <br> FNAC'),

        ),
        array(
            'id'    => '_reservation',
            'type'  => 'wysiwyg',
            'label' => 'Réservation',
            'explanation' => __('/!\ Faire attention à la case'),
        ),
        array(
            'id'    => '_couleur',
            'type'  => 'color',
            'label' => 'Couleur',
            'explanation' => __('Rose : #D9226E | Blue : #3da5dd'),
        ),
        array(
            'id'    => '_date',
            'type'  => 'datetime',
            'label' => 'Date et heure',
            'args'  => array(
                'date_format' => 'm/d/yy'
            )
        ),
        array(
            'id' => '_image',
            'label' => 'Image',
            'type' => 'image',
            'description' => 'Importer une image'
        ),
        array(
            'id'  => '_hidden',
            'type' => 'hidden',
            'label' => 'Field Label',
            'default_value' => $value ,
        ),
    ));
