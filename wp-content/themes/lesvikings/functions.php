<?php
/**
 * lesvikings functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package lesvikings
 */

if (!defined('_S_VERSION')) {
    // Replace the version number of the theme on each release.
    define('_S_VERSION', '1.0.0');
}

if (!function_exists('lesvikings_setup')) :
    /**
     * Sets up theme defaults and registers support for various WordPress features.
     *
     * Note that this function is hooked into the after_setup_theme hook, which
     * runs before the init hook. The init hook is too late for some features, such
     * as indicating support for post thumbnails.
     */
    function lesvikings_setup()
    {
        /*
         * Make theme available for translation.
         * Translations can be filed in the /languages/ directory.
         * If you're building a theme based on lesvikings, use a find and replace
         * to change 'lesvikings' to the name of your theme in all the template files.
         */
        load_theme_textdomain('lesvikings', get_template_directory() . '/languages');

        // Add default posts and comments RSS feed links to head.
        add_theme_support('automatic-feed-links');

        /*
         * Let WordPress manage the document title.
         * By adding theme support, we declare that this theme does not use a
         * hard-coded <title> tag in the document head, and expect WordPress to
         * provide it for us.
         */
        add_theme_support('title-tag');

        /*
         * Enable support for Post Thumbnails on posts and pages.
         *
         * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
         */
        add_theme_support('post-thumbnails');

        // This theme uses wp_nav_menu() in one location.
        register_nav_menus(
            array(
                'menu-1' => esc_html__('Primary', 'lesvikings'),
            )
        );

        /*
         * Switch default core markup for search form, comment form, and comments
         * to output valid HTML5.
         */
        add_theme_support(
            'html5',
            array(
                'search-form',
                'comment-form',
                'comment-list',
                'gallery',
                'caption',
                'style',
                'script',
            )
        );

        // Set up the WordPress core custom background feature.
        add_theme_support(
            'custom-background',
            apply_filters(
                'lesvikings_custom_background_args',
                array(
                    'default-color' => 'ffffff',
                    'default-image' => '',
                )
            )
        );

        // Add theme support for selective refresh for widgets.
        add_theme_support('customize-selective-refresh-widgets');

        /**
         * Add support for core custom logo.
         *
         * @link https://codex.wordpress.org/Theme_Logo
         */
        add_theme_support(
            'custom-logo',
            array(
                'height' => 250,
                'width' => 250,
                'flex-width' => true,
                'flex-height' => true,
            )
        );
    }
endif;
add_action('after_setup_theme', 'lesvikings_setup');

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function lesvikings_content_width()
{
    $GLOBALS['content_width'] = apply_filters('lesvikings_content_width', 640);
}

add_action('after_setup_theme', 'lesvikings_content_width', 0);

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function lesvikings_widgets_init()
{
    register_sidebar(
        array(
            'name' => esc_html__('Sidebar', 'lesvikings'),
            'id' => 'sidebar-1',
            'description' => esc_html__('Add widgets here.', 'lesvikings'),
            'before_widget' => '<section id="%1$s" class="widget %2$s">',
            'after_widget' => '</section>',
            'before_title' => '<h2 class="widget-title">',
            'after_title' => '</h2>',
        )
    );
}

add_action('widgets_init', 'lesvikings_widgets_init');

/**
 * Enqueue scripts and styles.
 */
function lesvikings_scripts()
{
    wp_enqueue_style('lesvikings-style', get_stylesheet_uri(), array(), _S_VERSION);
    wp_style_add_data('lesvikings-style', 'rtl', 'replace');

    wp_enqueue_script('lesvikings-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true);

    if (is_singular() && comments_open() && get_option('thread_comments')) {
        wp_enqueue_script('comment-reply');
    }
}
add_action('wp_enqueue_scripts', 'lesvikings_scripts');



/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if (defined('JETPACK__VERSION')) {
    require get_template_directory() . '/inc/jetpack.php';
}

/**
 * Cuztom.
 */
include('inc/cuztom-2.9/cuztom.php');

require get_template_directory() . '/inc/cuztom/cuztom-spectacles.php';
require get_template_directory() . '/inc/cuztom/cuztom-important.php';


/**
 * Image size.
 */
add_image_size('affiches', 200, 300, true);
add_image_size('affiches-page', 400, 500, true);


/**
 * Function
 * @param $key
 * @return Closure
 */
function orderByDate($key) {
    return function ($a, $b) use ($key) {
        $t1 = strtotime($a[$key][0]);
        $t2 = strtotime($b[$key][0]);
        return $t1-$t2;
    };
}

/**
 * Function
 * @param $template
 * @return void
 */
function debug($template){
    echo '<pre>';
    var_dump($template);
    echo '</pre>';
}


/**
 * Function
 * @param string $attachment_url
 * @return Closure|false|string
 */
function pn_get_attachment_id_from_url( $attachment_url = '' ) {

    global $wpdb;
    $attachment_id = false;

    // If there is no url, return.
    if ( '' == $attachment_url )
        return null;

    // Get the upload directory paths
    $upload_dir_paths = wp_upload_dir();

    // Make sure the upload path base directory exists in the attachment URL, to verify that we're working with a media library image
    if ( false !== strpos( $attachment_url, $upload_dir_paths['baseurl'] ) ) {

        // If this is the URL of an auto-generated thumbnail, get the URL of the original image
        $attachment_url = preg_replace( '/-\d+x\d+(?=\.(jpg|jpeg|png|gif)$)/i', '', $attachment_url );

        // Remove the upload path base directory from the attachment URL
        $attachment_url = str_replace( $upload_dir_paths['baseurl'] . '/', '', $attachment_url );

        // Finally, run a custom database query to get the attachment ID from the modified attachment URL
        $attachment_id = $wpdb->get_var( $wpdb->prepare( "SELECT wposts.ID FROM $wpdb->posts wposts, $wpdb->postmeta wpostmeta WHERE wposts.ID = wpostmeta.post_id AND wpostmeta.meta_key = '_wp_attached_file' AND wpostmeta.meta_value = '%s' AND wposts.post_type = 'attachment'", $attachment_url ) );

    }

    return $attachment_id;
}


add_action( 'wp', 'delete_expired_coupons_daily' );
function delete_expired_coupons_daily() {
    if ( ! wp_next_scheduled( 'delete_expired_coupons' ) ) {
        wp_schedule_event( time(), 'daily', 'delete_expired_coupons');
    }
}
add_action( 'delete_expired_coupons', 'delete_expired_coupons_callback' );

/**
 * Function
 * @return void
 */
function delete_expired_coupons_callback() {

    $args = array(
        'post_status' => 'publish',
        'post_type' => 'spectacles'
    );

    $coupons = new WP_Query($args);
    if ($coupons->have_posts()):
        while($coupons->have_posts()): $coupons->the_post();
            $time = strtotime('+2 hour', time()); echo '<br/>';
            $datas = get_post_meta(get_the_ID());

            $expiration_date = $datas['_date'][0]; echo '<br/>';
            $value = wp_get_attachment_image_src($datas['_image'][0]);

            if ($expiration_date < $time) {
                wp_delete_attachment(pn_get_attachment_id_from_url($value[0]),true);
                wp_delete_post(get_the_ID(), true);

                //wp_schedule_event/
            }
        endwhile;
    endif;
}

// Update post
$my_post = array();
$my_post['ID'] = get_the_ID();
$my_post['post_status'] = 'expired';

// Update the post into the database
wp_update_post( $my_post );
