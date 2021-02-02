<?php

$work = new Cuztom_post_type('Important', [
    'menu_position' => 2,
    'menu_icon' => 'dashicons-flag',
]);


$work->add_meta_box(
    'cuztom-important',
    'Important'
);
