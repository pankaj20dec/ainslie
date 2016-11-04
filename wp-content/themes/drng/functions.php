<?php
/**
 * Twenty Sixteen functions and definitions
 *
 * Set up the theme and provides some helper functions, which are used in the
 * theme as custom template tags. Others are attached to action and filter
 * hooks in WordPress to change core functionality.
 *
 * When using a child theme you can override certain functions (those wrapped
 * in a function_exists() call) by defining them first in your child theme's
 * functions.php file. The child theme's functions.php file is included before
 * the parent theme's file, so the child theme functions would be used.
 *
 * @link https://codex.wordpress.org/Theme_Development
 * @link https://codex.wordpress.org/Child_Themes
 *
 * Functions that are not pluggable (not wrapped in function_exists()) are
 * instead attached to a filter or action hook.
 *
 * For more information on hooks, actions, and filters,
 * {@link https://codex.wordpress.org/Plugin_API}
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

/**
 * Twenty Sixteen only works in WordPress 4.4 or later.
 */
if ( version_compare( $GLOBALS['wp_version'], '4.4-alpha', '<' ) ) {
	require get_template_directory() . '/inc/back-compat.php';
}

if ( ! function_exists( 'twentysixteen_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 *
 * Create your own twentysixteen_setup() function to override in a child theme.
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on Twenty Sixteen, use a find and replace
	 * to change 'twentysixteen' to the name of your theme in all the template files
	 */
	load_theme_textdomain( 'twentysixteen', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for custom logo.
	 *
	 *  @since Twenty Sixteen 1.2
	 */
	add_theme_support( 'custom-logo', array(
		'height'      => 67,
		'width'       => 280,
		'flex-height' => true,
	) );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
	 */
	add_theme_support( 'post-thumbnails' );
	set_post_thumbnail_size( 1920, 9999 );

	// This theme uses wp_nav_menu() in two locations.
	register_nav_menus( array(
		'primary' => __( 'Primary Menu', 'twentysixteen' ),
		'footer-menu' => __( 'Footer Menu', 'twentysixteen' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 *
	 * See: https://codex.wordpress.org/Post_Formats
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
		'gallery',
		'status',
		'audio',
		'chat',
	) );

	/*
	 * This theme styles the visual editor to resemble the theme style,
	 * specifically font, colors, icons, and column width.
	 */
	add_editor_style( array( 'css/editor-style.css', twentysixteen_fonts_url() ) );

	// Indicate widget sidebars can use selective refresh in the Customizer.
	add_theme_support( 'customize-selective-refresh-widgets' );
}
endif; // twentysixteen_setup
add_action( 'after_setup_theme', 'twentysixteen_setup' );

/**
 * Sets the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'twentysixteen_content_width', 840 );
}
add_action( 'after_setup_theme', 'twentysixteen_content_width', 0 );

/**
 * Registers a widget area.
 *
 * @link https://developer.wordpress.org/reference/functions/register_sidebar/
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Sidebar', 'twentysixteen' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'Add widgets here to appear in your sidebar.', 'twentysixteen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
		'name'          => __( 'Sign Up Widget', 'twentysixteen' ),
		'id'            => 'sign-up',
		'description'   => __( 'Add widgets here to appear in your Sign up section.', 'twentysixteen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
		'name'          => __( 'Instagram', 'twentysixteen' ),
		'id'            => 'instagram',
		'description'   => __( 'Add widgets here to appear in your instagram section.', 'twentysixteen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );


	register_sidebar( array(
		'name'          => __( 'Contact form page', 'twentysixteen' ),
		'id'            => 'contact-form',
		'description'   => __( 'Add widgets here to appear in your Contact form page.', 'twentysixteen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	
}
add_action( 'widgets_init', 'twentysixteen_widgets_init' );

if ( ! function_exists( 'twentysixteen_fonts_url' ) ) :
/**
 * Register Google fonts for Twenty Sixteen.
 *
 * Create your own twentysixteen_fonts_url() function to override in a child theme.
 *
 * @since Twenty Sixteen 1.0
 *
 * @return string Google fonts URL for the theme.
 */
function twentysixteen_fonts_url() {
	$fonts_url = '';
	$fonts     = array();
	$subsets   = 'latin,latin-ext';
	/* translators: If there are characters in your language that are not supported by Merriweather, translate this to 'off'. Do not translate into your own language. */
	if ( 'off' !== _x( 'on', 'Merriweather font: on or off', 'twentysixteen' ) ) {
		$fonts[] = 'Merriweather:400,700,900,400italic,700italic,900italic';
	}

	/* translators: If there are characters in your language that are not supported by Montserrat, translate this to 'off'. Do not translate into your own language. */
	if ( 'off' !== _x( 'on', 'Montserrat font: on or off', 'twentysixteen' ) ) {
		$fonts[] = 'Montserrat:400,700';
	}

	/* translators: If there are characters in your language that are not supported by Inconsolata, translate this to 'off'. Do not translate into your own language. */
	if ( 'off' !== _x( 'on', 'Inconsolata font: on or off', 'twentysixteen' ) ) {
		$fonts[] = 'Inconsolata:400';
	}

	if ( $fonts ) {
		$fonts_url = add_query_arg( array(
			'family' => urlencode( implode( '|', $fonts ) ),
			'subset' => urlencode( $subsets ),
		), 'https://fonts.googleapis.com/css' );
	}

	return $fonts_url;
}
endif;
/**
 * Handles JavaScript detection.
 *
 * Adds a `js` class to the root `<html>` element when JavaScript is detected.
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_javascript_detection() {
	echo "<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>\n";
}
add_action( 'wp_head', 'twentysixteen_javascript_detection', 0 );
/**
 * Enqueues scripts and styles.
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_scripts() {
	// Add custom fonts, used in the main stylesheet.
	wp_enqueue_style( 'twentysixteen-fonts', twentysixteen_fonts_url(), array(), null );
	// Add Genericons, used in the main stylesheet.
	wp_enqueue_style( 'genericons', get_template_directory_uri() . '/genericons/genericons.css', array(), '3.4.1' );
	wp_enqueue_style( 'fontawesome', get_template_directory_uri() . '/css/font-awesome.min', array());
	// Theme stylesheet.
	wp_enqueue_style( 'twentysixteen-style', get_stylesheet_uri() );
	// Load the Internet Explorer specific stylesheet.
	wp_enqueue_style( 'twentysixteen-ie', get_template_directory_uri() . '/css/ie.css', array( 'twentysixteen-style' ), '20160412' );
	wp_style_add_data( 'twentysixteen-ie', 'conditional', 'lt IE 10' );
	// Load the Internet Explorer 8 specific stylesheet.
	wp_enqueue_style( 'twentysixteen-ie8', get_template_directory_uri() . '/css/ie8.css', array( 'twentysixteen-style' ), '20160412' );
	wp_style_add_data( 'twentysixteen-ie8', 'conditional', 'lt IE 9' );
	// Load the Internet Explorer 7 specific stylesheet.
	wp_enqueue_style( 'twentysixteen-ie7', get_template_directory_uri() . '/css/ie7.css', array( 'twentysixteen-style' ), '20160412' );
	wp_style_add_data( 'twentysixteen-ie7', 'conditional', 'lt IE 8' );
	// Load the html5 shiv.
	wp_enqueue_script( 'twentysixteen-html5', get_template_directory_uri() . '/js/html5.js', array(), '3.7.3' );
	wp_script_add_data( 'twentysixteen-html5', 'conditional', 'lt IE 9' );
	wp_enqueue_script( 'twentysixteen-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20160412', true );
	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
	if ( is_singular() && wp_attachment_is_image() ) {
		wp_enqueue_script( 'twentysixteen-keyboard-image-navigation', get_template_directory_uri() . '/js/keyboard-image-navigation.js', array( 'jquery' ), '20160412' );
	}
	wp_enqueue_script( 'twentysixteen-script', get_template_directory_uri() . '/js/functions.js', array( 'jquery' ), '20160412', true );
	wp_localize_script( 'twentysixteen-script', 'screenReaderText', array(
		'expand'   => __( 'expand child menu', 'twentysixteen' ),
		'collapse' => __( 'collapse child menu', 'twentysixteen' ),
	) );
}
add_action( 'wp_enqueue_scripts', 'twentysixteen_scripts' );
/**
 * Adds custom classes to the array of body classes.
 *
 * @since Twenty Sixteen 1.0
 *
 * @param array $classes Classes for the body element.
 * @return array (Maybe) filtered body classes.
 */
function twentysixteen_body_classes( $classes ) {
	// Adds a class of custom-background-image to sites with a custom background image.
	if ( get_background_image() ) {
		$classes[] = 'custom-background-image';
	}
	// Adds a class of group-blog to sites with more than 1 published author.
	if ( is_multi_author() ) {
		$classes[] = 'group-blog';
	}
	// Adds a class of no-sidebar to sites without active sidebar.
	if ( ! is_active_sidebar( 'sidebar-1' ) ) {
		$classes[] = 'no-sidebar';
	}
	// Adds a class of hfeed to non-singular pages.
	if ( ! is_singular() ) {
		$classes[] = 'hfeed';
	}
	return $classes;
}
add_filter( 'body_class', 'twentysixteen_body_classes' );
/**
 * Converts a HEX value to RGB.
 *
 * @since Twenty Sixteen 1.0
 *
 * @param string $color The original color, in 3- or 6-digit hexadecimal form.
 * @return array Array containing RGB (red, green, and blue) values for the given
 *               HEX code, empty array otherwise.
 */
function twentysixteen_hex2rgb( $color ) {
	$color = trim( $color, '#' );
	if ( strlen( $color ) === 3 ) {
		$r = hexdec( substr( $color, 0, 1 ).substr( $color, 0, 1 ) );
		$g = hexdec( substr( $color, 1, 1 ).substr( $color, 1, 1 ) );
		$b = hexdec( substr( $color, 2, 1 ).substr( $color, 2, 1 ) );
	} else if ( strlen( $color ) === 6 ) {
		$r = hexdec( substr( $color, 0, 2 ) );
		$g = hexdec( substr( $color, 2, 2 ) );
		$b = hexdec( substr( $color, 4, 2 ) );
	} else {
		return array();
	}
	return array( 'red' => $r, 'green' => $g, 'blue' => $b );
}
/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';
/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';
/**
 * Modifies tag cloud widget arguments to have all tags in the widget same font size.
 *
 * @since Twenty Sixteen 1.1
 *
 * @param array $args Arguments for tag cloud widget.
 * @return array A new modified arguments.
 */
function twentysixteen_widget_tag_cloud_args( $args ) {
	$args['largest'] = 1;
	$args['smallest'] = 1;
	$args['unit'] = 'em';
	return $args;
}
add_filter( 'widget_tag_cloud_args', 'twentysixteen_widget_tag_cloud_args' );
/*
* Creating a function to create TOP Recipies
*/
// Our custom post type function
function create_posttype() {
	register_post_type( 'services',
	// CPT Options
		array(
			'labels' => array(
				'name' => __( 'Services' ),
				'singular_name' => __( 'Services' )
			),
			'public' => true,
			'has_archive' => true,
			'rewrite' => array('slug' => 'services-post'),
		)
	);
}
// Hooking up our function to theme setup
add_action( 'init', 'create_posttype' );
function custom_post_type_port() {
// Set UI labels for Custom Post Type
	$labels = array(
		'name'                => _x( 'Services', 'Post Type General Name', 'twentysixteen' ),
		'singular_name'       => _x( 'Services', 'Post Type Singular Name', 'twentysixteen' ),
		'menu_name'           => __( 'Services', 'twentysixteen' ),
		'parent_item_colon'   => __( 'Parent Services Post', 'twentysixteen' ),
		'all_items'           => __( 'All Services', 'twentysixteen' ),
		'view_item'           => __( 'View Services', 'twentysixteen' ),
		'add_new_item'        => __( 'Add New Services', 'twentysixteen' ),
		'add_new'             => __( 'Add New', 'twentysixteen' ),
		'edit_item'           => __( 'Edit Services', 'twentysixteen' ),
		'update_item'         => __( 'Update Services', 'twentysixteen' ),
		'search_items'        => __( 'Search Services', 'twentysixteen' ),
		'not_found'           => __( 'Not Found', 'twentysixteen' ),
		'not_found_in_trash'  => __( 'Not found in Trash', 'twentysixteen' ),
	);
// Set other options for Custom Post Type
	$args = array(
		'label'               => __( 'services', 'twentysixteen' ),
		'description'         => __( 'Services news and reviews', 'twentysixteen' ),
		'labels'              => $labels,
		// Features this CPT supports in Post Editor
		'supports'            => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail', 'revisions', 'custom-fields', ),
		// You can associate this CPT with a taxonomy or custom taxonomy. 
		'taxonomies'          => array( 'genres' ),
		/* A hierarchical CPT is like Pages and can have
		* Parent and child items. A non-hierarchical CPT
		* is like Posts.
		*/	
		'hierarchical'        => false,
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_nav_menus'   => true,
		'show_in_admin_bar'   => true,
		'menu_position'       => 5,
		'can_export'          => true,
		'has_archive'         => true,
		'exclude_from_search' => false,
		'publicly_queryable'  => true,
		'capability_type'     => 'post',
	);
	
	// Registering your Custom Post Type
	register_post_type( 'services', $args );

}

/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/

add_action( 'init', 'custom_post_type_port', 0 );



function custom_post_type() {

// Set UI labels for Custom Post Type
	$labels = array(
		'name'                => _x( 'Slider', 'Post Type General Name', 'twentysixteen' ),
		'singular_name'       => _x( 'Slider', 'Post Type Singular Name', 'twentysixteen' ),
		'menu_name'           => __( 'Slider', 'twentysixteen' ),
		'parent_item_colon'   => __( 'Parent Slider', 'twentysixteen' ),
		'all_items'           => __( 'All Slider', 'twentysixteen' ),
		'view_item'           => __( 'View Slider', 'twentysixteen' ),
		'add_new_item'        => __( 'Add New Slider', 'twentysixteen' ),
		'add_new'             => __( 'Add New', 'twentysixteen' ),
		'edit_item'           => __( 'Edit Slider', 'twentysixteen' ),
		'update_item'         => __( 'Update Slider', 'twentysixteen' ),
		'search_items'        => __( 'Search Slider', 'twentysixteen' ),
		'not_found'           => __( 'Not Found', 'twentysixteen' ),
		'not_found_in_trash'  => __( 'Not found in Trash', 'twentysixteen' ),
	);
	
// Set other options for Custom Post Type
	
	$args = array(
		'label'               => __( 'slider', 'twentysixteen' ),
		'description'         => __( 'Slider news and reviews', 'twentysixteen' ),
		'labels'              => $labels,
		// Features this CPT supports in Post Editor
		'supports'            => array( 'title', 'editor', 'author', 'thumbnail', 'revisions', 'custom-fields', ),
		// You can associate this CPT with a taxonomy or custom taxonomy. 
		'taxonomies'          => array( 'genres' ),
		/* A hierarchical CPT is like Pages and can have
		* Parent and child items. A non-hierarchical CPT
		* is like Posts.
		*/	
		'hierarchical'        => false,
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_nav_menus'   => true,
		'show_in_admin_bar'   => true,
		'menu_position'       => 5,
		'can_export'          => true,
		'has_archive'         => true,
		'exclude_from_search' => false,
		'publicly_queryable'  => true,
		'capability_type'     => 'post',
	);
	
	// Registering your Custom Post Type
	register_post_type( 'slider', $args );

}

/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/

add_action( 'init', 'custom_post_type', 0 );


/*
Function to create Testimonial CPT
**/
// Our custom post type function
function create_posttype_testimonial() {

	register_post_type( 'testimonial',
	// CPT Options
		array(
			'labels' => array(
				'name' => __( 'Testimonial' ),
				'singular_name' => __( 'Testimonial' )
			),
			'public' => true,
			'has_archive' => true,
			'rewrite' => array('slug' => 'testimonial'),
		)
	);
}
// Hooking up our function to theme setup
add_action( 'init', 'create_posttype_testimonial' );


function custom_post_type_testimonial() {

// Set UI labels for Custom Post Type
	$labels = array(
		'name'                => _x( 'Testimonial', 'Post Type General Name', 'twentysixteen' ),
		'singular_name'       => _x( 'Testimonial', 'Post Type Singular Name', 'twentysixteen' ),
		'menu_name'           => __( 'Testimonial', 'twentysixteen' ),
		'parent_item_colon'   => __( 'Parent Testimonial', 'twentysixteen' ),
		'all_items'           => __( 'All Testimonial', 'twentysixteen' ),
		'view_item'           => __( 'View Testimonial', 'twentysixteen' ),
		'add_new_item'        => __( 'Add New Testimonial', 'twentysixteen' ),
		'add_new'             => __( 'Add New', 'twentysixteen' ),
		'edit_item'           => __( 'Edit Testimonial', 'twentysixteen' ),
		'update_item'         => __( 'Update Testimonial', 'twentysixteen' ),
		'search_items'        => __( 'Search Testimonial', 'twentysixteen' ),
		'not_found'           => __( 'Not Found', 'twentysixteen' ),
		'not_found_in_trash'  => __( 'Not found in Trash', 'twentysixteen' ),
	);
	
// Set other options for Custom Post Type
	
	$args = array(
		'label'               => __( 'testimonial', 'twentysixteen' ),
		'description'         => __( 'Movie news and reviews', 'twentysixteen' ),
		'labels'              => $labels,
		// Features this CPT supports in Post Editor
		'supports'            => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail', 'comments', 'revisions', 'custom-fields', ),
		// You can associate this CPT with a taxonomy or custom taxonomy. 
		'taxonomies'          => array( 'genres' ),
		/* A hierarchical CPT is like Pages and can have
		* Parent and child items. A non-hierarchical CPT
		* is like Posts.
		*/	
		'hierarchical'        => false,
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_nav_menus'   => true,
		'show_in_admin_bar'   => true,
		'menu_position'       => 5,
		'can_export'          => true,
		'has_archive'         => true,
		'exclude_from_search' => false,
		'publicly_queryable'  => true,
		'capability_type'     => 'post',
	);
	
	// Registering your Custom Post Type
	register_post_type( 'testimonial', $args );

}
/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/

add_action( 'init', 'custom_post_type_testimonial', 0 );

// Our Press custom post type function
function create_posttypepress() {
	register_post_type( 'press',
	// CPT Options
		array(
			'labels' => array(
				'name' => __( 'Press' ),
				'singular_name' => __( 'Press' )
			),
			'public' => true,
			'has_archive' => true,
			'rewrite' => array('slug' => 'press-post'),
		)
	);
}
// Hooking up our function to theme setup
add_action( 'init', 'create_posttypepress' );
function custom_post_type_press() {
// Set UI labels for Custom Post Type
	$labels = array(
		'name'                => _x( 'Press', 'Post Type General Name', 'twentysixteen' ),
		'singular_name'       => _x( 'Press', 'Post Type Singular Name', 'twentysixteen' ),
		'menu_name'           => __( 'Press', 'twentysixteen' ),
		'parent_item_colon'   => __( 'Parent Press Post', 'twentysixteen' ),
		'all_items'           => __( 'All Press', 'twentysixteen' ),
		'view_item'           => __( 'View Press', 'twentysixteen' ),
		'add_new_item'        => __( 'Add New Press', 'twentysixteen' ),
		'add_new'             => __( 'Add New', 'twentysixteen' ),
		'edit_item'           => __( 'Edit Press', 'twentysixteen' ),
		'update_item'         => __( 'Update Press', 'twentysixteen' ),
		'search_items'        => __( 'Search Press', 'twentysixteen' ),
		'not_found'           => __( 'Not Found', 'twentysixteen' ),
		'not_found_in_trash'  => __( 'Not found in Trash', 'twentysixteen' ),
	);
// Set other options for Custom Post Type
	$args = array(
		'label'               => __( 'press', 'twentysixteen' ),
		'description'         => __( 'Press news and reviews', 'twentysixteen' ),
		'labels'              => $labels,
		// Features this CPT supports in Post Editor
		'supports'            => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail', 'revisions', 'custom-fields', ),
		// You can associate this CPT with a taxonomy or custom taxonomy. 
		'taxonomies'          => array( 'genres' ),
		/* A hierarchical CPT is like Pages and can have
		* Parent and child items. A non-hierarchical CPT
		* is like Posts.
		*/	
		'hierarchical'        => false,
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'show_in_nav_menus'   => true,
		'show_in_admin_bar'   => true,
		'menu_position'       => 5,
		'can_export'          => true,
		'has_archive'         => true,
		'exclude_from_search' => false,
		'publicly_queryable'  => true,
		'capability_type'     => 'post',
	);
	
	// Registering your Custom Post Type
	register_post_type( 'press', $args );

}

/* Hook into the 'init' action so that the function
* Containing our post type registration is not 
* unnecessarily executed. 
*/

add_action( 'init', 'custom_post_type_press', 0 );


/***
Functions for Comment form temaplate
**/

function remove_comment_fields($fields) {
    unset($fields['url']);
    return $fields;
}
add_filter('comment_form_default_fields', 'remove_comment_fields');

function wpsites_change_comment_form_submit_label($arg) {
$arg['label_submit'] = 'leave comment';
     return $arg;
}
add_filter('comment_form_defaults', 'wpsites_change_comment_form_submit_label');

/**
Function to add meta box for contact us page
**/

add_action( 'add_meta_boxes', 'cd_meta_box_add' );
function cd_meta_box_add()
{
    add_meta_box( 'my-meta-box-id', 'Display Content in Header', 'cd_meta_box_cb', 'page', 'side', 'high' );
}

function cd_meta_box_cb()
{
    // $post is already set, and contains an object: the WordPress post
    global $post;
    $values = get_post_meta( $post->ID,'my_meta_box_check', true );
   
     
    // We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );
    ?>
    <p>
        <input type="checkbox" id="my_meta_box_check" name="my_meta_box_check" <?php echo $values == 'on' ? 'checked="checked"' : ''; ?> />
        <label for="my_meta_box_check">ON</label>
		<em>NOTE: This option will work with Default Page Template</em>
    </p>
    <?php    
}

add_action( 'save_post', 'cd_meta_box_save' );
function cd_meta_box_save( $post_id )
{
    // Bail if we're doing an auto save
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
     
    // if our nonce isn't there, or we can't verify it, bail
    //if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;
     
    // if our current user can't edit this post, bail
    if( !current_user_can( 'edit_post' ) ) return;
     
    // now we can actually save the data
    //$allowed = array( 
    //    'a' => array( // on allow a tags
    //        'href' => array() // and those anchors can only have href attribute
   //     )
   // );
    
         
    // This is purely my personal preference for saving check-boxes
    $chk = isset( $_POST['my_meta_box_check'] )  ? update_post_meta( $post_id, 'my_meta_box_check', 'on' ) :  update_post_meta( $post_id, 'my_meta_box_check', 'off' );
   
}

/*
* Function for theme options
*
**/

// Load up our awesome theme options
//require_once ( get_stylesheet_directory() . '/theme-options.php' );


/*
* Function to add shortcode
* for right side bar Social link
**/

function social_links($atts, $content = null) {
	extract(shortcode_atts(array( 'name' => null, ), $atts));
	ob_start();
    wp_nav_menu( array(
          'theme_location' => 'social',
		  'container' => 'nav',
          'container_class'     => 'social-navigation',
          'depth'          => 1,
          'link_before'    => '<span class="screen-reader-text">',
          'link_after'     => '</span>',
         ) );	
	return ob_get_clean();
}
add_shortcode('social_links', 'social_links');

function custom_social_links() {	
	ob_start(); ?> 
    <div class="share-icons">
        		Share <a class="genericon genericon-facebook-alt" onClick='window.open("http://www.facebook.com/share.php?u=<?php the_permalink() ?>&title=share-on-page","Ratting","width=550,height=550,0,status=0,");' href="javascript:void(0);"></a>
        <a class="genericon genericon-twitter" onClick='window.open("http://twitter.com/intent/tweet?status=share-on-page+<?php the_permalink() ?>","Ratting","width=550,height=550,0,status=0,");' href="javascript:void(0);"></a>
        <a class="genericon genericon-instagram" onClick='window.open("https://www.instagram.com/?status=share-on-page+<?php the_permalink() ?>","Ratting","width=547,height=551,0,status=0,");' href="javascript:void(0);"></a>
    </div>
	<?php return ob_get_clean();
}
add_shortcode('custom_social_links', 'custom_social_links');
/*
*About Us page Image URL Shortcode
*
**/



function about_us_img() {
	ob_start();
    echo $options['about_us_img_url'];
	return ob_get_clean();
}
add_shortcode('about_us_img', 'about_us_img');


add_filter('widget_text','do_shortcode');


//Load more function
wp_localize_script( 'twentysixteen-script', 'ajax_posts', array(
    'ajaxurl' =>  admin_url( 'admin-ajax.php' ),
    'noposts' => __('No older posts found', 'twentysixteen'),
));


// Register the script
global $pagenow;
//die($pagenow);
if( $pagenow == 'themes.php' || !is_admin() ){
	wp_register_script( 'myfun_js', get_template_directory_uri().'/js/ajax_function.js' );
	// Localize the script with new data
	$translation_array = array(
	 'ajaxurl' =>  admin_url( 'admin-ajax.php' ),
	 'a_value' => '10'
	);
	wp_localize_script( 'myfun_js', 'ajax_posts', $translation_array );

	// Enqueued script with localized data.
	wp_enqueue_script( 'myfun_js' );
}





//Blog Page Load more

/*add_action( 'wp_ajax_load_more_posts_blog_callback', 'load_more_posts_blog_callback' );
add_action( 'wp_ajax_nopriv_load_more_posts_blog_callback', 'load_more_posts_blog_callback' );

function load_more_posts_blog_callback() {
	$ppp = (isset($_POST["ppp"])) ? $_POST["ppp"] : 2;
    $page = (isset($_POST['pageNumber'])) ? $_POST['pageNumber'] : 0;
    header("Content-Type: text/html");

    $args = array(
        'suppress_filters' => true,
        'posts_per_page' => $ppp,
        'paged'    => $page,
    );

    $loop = new WP_Query($args);

    $out = '';
	$response = array();
    if ($loop -> have_posts()) :  
	$response['status'] = 1;
	while ($loop -> have_posts()) : $loop -> the_post();
		
		$image_id = get_post_thumbnail_id();
		$image_url = wp_get_attachment_image_src($image_id,'blog-thumbnail-image', true);
		//echo $image_url[0];
		
		$response[] = array(
			'thumbnail' => $image_url[0],
			'permalink' => get_the_permalink(),
			'title' => get_the_title(),
			'excerpt' => get_the_excerpt(),
			'time' => get_the_time('d/m/y')
		);

    endwhile;
	else: 
		$response['status'] = 0;
    endif;
    wp_reset_postdata();
	
	
    echo json_encode($response);
	die();
}
*/

//Portfolio Page Load more

add_action( 'wp_ajax_load_more_posts_blog_callback_port', 'load_more_posts_blog_callback_port' );
add_action( 'wp_ajax_nopriv_load_more_posts_blog_callback_port', 'load_more_posts_blog_callback_port' );

function load_more_posts_blog_callback_port() {
	$ppp = (isset($_POST["ppp"])) ? $_POST["ppp"] : 9;
    $page = (isset($_POST['pageNumber'])) ? $_POST['pageNumber'] : 0;
    header("Content-Type: text/html");
    $args = array(
        'suppress_filters' => true,
		'post_type'	=> 'portfolio',
        'posts_per_page' => $ppp,
        'paged'    => $page,
    );
    $loop = new WP_Query($args);
    $out = '';
	$response = array();
    if ($loop -> have_posts()) :  
	$response['status'] = 1;
	while ($loop -> have_posts()) : $loop -> the_post();
		
		$image_id = get_post_thumbnail_id();
		$image_url = wp_get_attachment_image_src($image_id,'portfolio-thumbnail-image', true);
		$image_url_1 = wp_get_attachment_image_src($image_id,'full', true);
		//echo $image_url[0];
		
		$response[] = array(
			'thumbnail' => $image_url[0],
			'thumbnail2' => $image_url_1[0],
			'permalink' => get_the_permalink(),
			'title' => get_the_title(),
			'excerpt' => get_the_excerpt()
		);

    endwhile;
	else: 
		$response['status'] = 0;
    endif;
    wp_reset_postdata();
	
	
    echo json_encode($response);
	die();
}

add_filter( 'comment_form_default_fields', 'wpse_62742_comment_placeholders' );

/**
 * Change default fields, add placeholder and change type attributes.
 *
 * @param  array $fields 
 * @return array
 */
function wpse_62742_comment_placeholders( $fields )
{
    $fields['author'] = str_replace(
        '<input',
        '<input placeholder="'
        /* Replace 'theme_text_domain' with your theme’s text domain.
         * I use _x() here to make your translators life easier. :)
         * See http://codex.wordpress.org/Function_Reference/_x
         */
            . _x(
                'Name',
                'comment form placeholder',
                'theme_text_domain'
                )
            . '"',
        $fields['author']
    );
    $fields['email'] = str_replace(
        '<input id="email" name="email" type="email"',
        /* We use a proper type attribute to make use of the browser’s
         * validation, and to get the matching keyboard on smartphones.
         */
        '<input type="email" placeholder="Email"  id="email" name="email"',
        $fields['email']
    );
    

    return $fields;
}

/* Add Placehoder in comment Form Field (Comment) */
add_filter( 'comment_form_defaults', 'help4cms_textarea_placeholder' );
 
function help4cms_textarea_placeholder( $fields )
{
  
        $fields['comment_field'] = str_replace(
            '<textarea',
            '<textarea placeholder="Comment"',
            $fields['comment_field']
        );
   
 
    return $fields;
}

//Google Font called
include( get_template_directory() . '/gwf-options.php');

include( get_template_directory() . '/theme-options.php');


function custom_comment_change ($arg) {
$arg['title_reply'] = __('COMMENTS <div class="share_tile">SHARE'.do_shortcode('[custom_social_links]').'</div>');
return $arg;
}
add_filter('comment_form_defaults','custom_comment_change');


add_image_size( 'portfolio-thumbnail-image', 600, 400, true );
add_image_size( 'custom-image-1', 600, 480, true );
add_image_size( 'rnd_custom-image-2', 1000, 900, true );
add_image_size( 'rnd_custom-image-3', 550, 550, true );
add_image_size( 'rnd_featured-image-1', 480, 680, true );
add_image_size( 'services_featured-image', 1000, 714, true );
add_image_size( 'blog-thumbnail-image', 620, 340, true );
add_image_size( 'blog-single-image',1240, 550, true );
add_image_size( 'press-thumbnail-image', 450, 450, true );
add_action( 'after_setup_theme','remove_twentyeleven_options', 100 );

add_filter( 'image_size_names_choose', 'my_custom_sizes_' );
 
function my_custom_sizes_( $sizes ) {
    return array_merge( $sizes, array(
        'custom-image-1' => __( 'Custom Image 1' ),
        'rnd_custom-image-2' => __( 'Custom Image 2' ),
        'rnd_custom-image-3' => __( 'Custom Image 2' ),
        'rnd_featured-image-1' => __( 'Featured Image' ),
    ) );
}

function binary_thumbnail_upscale( $default, $orig_w, $orig_h, $new_w, $new_h, $crop ){
if ( !$crop ) return null; // let the WordPress default function handle this
 
$aspect_ratio = $orig_w / $orig_h;
$size_ratio = max($new_w / $orig_w, $new_h / $orig_h);
 
$crop_w = round($new_w / $size_ratio);
$crop_h = round($new_h / $size_ratio);
 
$s_x = floor( ($orig_w - $crop_w) / 2 );
$s_y = floor( ($orig_h - $crop_h) / 2 );
 
return array( 0, 0, (int) $s_x, (int) $s_y, (int) $new_w, (int) $new_h, (int) $crop_w, (int) $crop_h );
}
add_filter( 'image_resize_dimensions', 'binary_thumbnail_upscale', 10, 6 );

function remove_twentyeleven_options() {

	remove_custom_background();

}


function load_admin_things() {
    wp_enqueue_script('media-upload');
    wp_enqueue_script('thickbox');
    wp_enqueue_style('thickbox');
}

add_action( 'admin_enqueue_scripts', 'load_admin_things' );

add_action( 'init', 'my_add_excerpts_to_pages' );
function my_add_excerpts_to_pages() {
     add_post_type_support( 'page', 'excerpt' );
}

add_action( 'wp_ajax_load_more_posts_blog_callback', 'load_more_posts_blog_callback' );
add_action( 'wp_ajax_nopriv_load_more_posts_blog_callback', 'load_more_posts_blog_callback' );

function load_more_posts_blog_callback() {
	$ppp = (isset($_POST["ppp"])) ? $_POST["ppp"] : 2;
    $page = (isset($_POST['pageNumber'])) ? $_POST['pageNumber'] : 0;
    header("Content-Type: text/html");

    $args = array(
        'suppress_filters' => true,
        'posts_per_page' => $ppp,
        'paged'    => $page,
    );

    $loop = new WP_Query($args);

    $out = '';
	$response = array();
    if ($loop -> have_posts()) :  
	$response['status'] = 1;
	while ($loop -> have_posts()) : $loop -> the_post();
		$cats = get_the_category();
		$cat_name = $cats[0]->name;
		$image_id = get_post_thumbnail_id();
		$image_url = wp_get_attachment_image_src($image_id,'blog-thumbnail-image', true);
		//echo $image_url[0];
		
		$response[] = array(
			'cat_name' => $cat_name,
 			'thumbnail' => $image_url[0],
			'permalink' => get_the_permalink(),
			'title' => get_the_title(),
			'excerpt' => get_the_excerpt(),
			'time' => get_the_time('d-m-y')
		);

    endwhile;
	else: 
		$response['status'] = 0;
    endif;
    wp_reset_postdata();
	
	
    echo json_encode($response);
	die();
}

add_action( 'wp_ajax_load_more_press_posts_callback', 'load_more_press_posts_callback' );
add_action( 'wp_ajax_nopriv_load_more_press_posts_callback', 'load_more_press_posts_callback' );

function load_more_press_posts_callback() {
	$ppp = (isset($_POST["press_ppp"])) ? $_POST["press_ppp"] : 2;
    $page = (isset($_POST['press_pageNumber'])) ? $_POST['press_pageNumber'] : 0;
    header("Content-Type: text/html");

    $args = array(
        'suppress_filters' => true,
        'posts_per_page' => $ppp,
        'paged'    => $page,
		'post_type' => 'press'
    );

    $loop = new WP_Query($args);

    $out = '';
	$response = array();
    if ($loop -> have_posts()) :  
	$response['status'] = 1;
	while ($loop -> have_posts()) : $loop -> the_post();
		$cats = get_the_category();
		$cat_name = $cats[0]->name;
		$image_id = get_post_thumbnail_id();
		$image_url = wp_get_attachment_image_src($image_id,'press-thumbnail-image', true);
		//echo $image_url[0];
		
		$response[] = array(
			'cat_name' => $cat_name,
 			'thumbnail' => $image_url[0],
			'permalink' => get_the_permalink(),
			'title' => get_the_title(),
			'excerpt' => get_the_excerpt(),
			'time' => get_the_time('F dS, Y')
		);

    endwhile;
	else: 
		$response['status'] = 0;
    endif;
    wp_reset_postdata();
	
	
    echo json_encode($response);
	die();
}
function rnd_get_image_id($image_url) {
  global $wpdb;
  $attachment = $wpdb->get_col($wpdb->prepare("SELECT ID FROM $wpdb->posts WHERE guid='%s';", $image_url )); 
        return $attachment[0]; 
}



	/* 	Publish page
	================================================ */
	
	
	
	function custom_button_example($wp_admin_bar){
		$args = array(
			'id' => 'push-live-button',
			'title' => 'Push live!',
			'href' => "mailto:support@firstflightstudio.com?&subject=Push my site live!&body=Hey%20First%20Flight%20crew,%0A%0AAll%20my%20content%20is%20set%20up%20and%20I'm%20ready%20to%20push%20this%20site%20live!%0A%0AI%20hereby%20also%20confirm%20that%20I've%20provided%20all%20the%20necessary%20login%20details%20of%20my%20domain%20registrar%20and%20current%20web%20hosting%20details.",
			'meta' => array(
			'class' => 'push-live-button',
		)
	);
	$wp_admin_bar->add_node($args);
	}
	add_action('admin_bar_menu', 'custom_button_example', 50);
	
	

	
