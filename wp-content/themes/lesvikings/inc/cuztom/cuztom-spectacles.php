<?php

$work = new Cuztom_post_type('Spectacles', [
    'menu_position' => 1,
    'menu_icon' => 'dashicons-tickets-alt',
]);

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
            'id'    => '_description',
            'type'  => 'textarea',
            'label' => 'Description',
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
                'date_format' => 'mm/dd/yy'
            )
        ),
        array(
            'id' => '_date2',
            'type' => 'text',
            'label' => 'Seconde date',
            'description' => 'Ajouter une seconde date',
            'explanation'           => __('Ici la seconde date du spectacle / exposition. Sept caractères maximum.'),
            'placeholder'           => 'S',
            'options'               => array(),
            'args'                  => array(),
            'repeatable'            => false,
            'show_admin_column'     => false,
            'admin_column_sortable' => false,
            'admin_column_filter'   => false,
        ),
        array(
            'id' => '_image',
            'label' => 'Image',
            'type' => 'image',
            'description' => 'Importer une image'
        ),
    ));
