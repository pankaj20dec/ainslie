<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

?>
<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="icon" href="<?php echo get_template_directory_uri();?>/images/favicon.png" sizes="32x32" type="image/png"/>
<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<?php endif; ?>
<link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri ();?>/css/bootstrap.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri ();?>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri ();?>/js/masonry.pkgd.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
 $('.testimonial_row').masonry({
  // options
  itemSelector: '.testimonial_post',
}); 
});
</script>
<!-- Redirect to another page (for no-js support) (place it in your <head>) -->
<noscript>
<meta http-equiv="refresh" content="0;url=nojs-version.php">
</noscript>

<!-- Show a message -->
<noscript>
You don't have javascript enabled! Please download Google Chrome!
</noscript>
<?php wp_head(); ?>
<?php $options = get_option( 'sample_theme_options' ); ?>
<style type="text/css">
.services-section .services-post:nth-child(3n+1), .services-section .services-post:nth-child(3n+3), .about-content-area .about-section:before, .sign-up-section, .contact-page-content, .services-page-section:before {
 background: url("<?php echo $options['bg_to_img_url'];  ?>") no-repeat;
 background-size:cover;
}
.sign-up-section {
	background: url("<?php echo $options['signup_to_img_url'];  ?>") no-repeat;
	background-size:cover;
}
.site-inner
{
	position:relative;
}
</style>
</head>
<body <?php body_class(); ?>>
<div id="page" class="site">
<div class="site-inner">
<a class="skip-link screen-reader-text" href="#content">
<?php _e( 'Skip to content', 'twentysixteen' ); ?>
</a>
<header id="masthead" class="site-header">
	<div class="mobile-nav-section">
		<div class="container">
		  <?php if ( has_nav_menu( 'primary' ) || has_nav_menu( 'social' ) ) : ?>
		  <button id="menu-toggle" class="menu-toggle"> <span class="genericon genericon-menu"></span> </button>
		  <div id="site-header-menu" class="site-header-menu">
			<?php if ( has_nav_menu( 'primary' ) ) : ?>
			<nav id="site-navigation" class="main-navigation text-center" aria-label="<?php esc_attr_e( 'Primary Menu', 'twentysixteen' ); ?>">
			  <?php
					wp_nav_menu( array(
					'theme_location' => 'primary',
					'menu_class'     => 'primary-menu',
					'link'    => 'test',
					 ) );
			?>
			</nav>
			<!-- .main-navigation -->
			<?php endif; ?>
		  </div>
		  <!-- .site-header-menu -->
		  <?php endif; ?>
		</div>
	  </div><!--.nav-section--> 
  <div class="site-header-main">
    <!--<div class="container-fluid">
      <div class="row">
        <div class="col-xs-4"></div>
        <div class="col-xs-4 logo-top-img">

          <?php 
            
            $postid = rnd_get_image_id($options['image_1_logo']);
            $image_url = wp_get_attachment_image_src($postid, 'custom-image-1' , true);
            $image_url[0]; 
            
          ?>

          <?php if($options['image_1_logo'] != '') { ?>
          <img src="<?php echo $options['image_1_logo']; ?>">
          <?php } else { ?>
          <img src="<?php echo get_template_directory_uri ();?>/images/img1.jpg">
          <?php } ?>
        </div>
        <div class="col-sm-4"></div>
      </div>
      
    </div>-->
    <!--container-->
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-12 logo-right-img no-pad">
          <?php 
            
            $postid = rnd_get_image_id($options['image_2_logo']);
            $image_url = wp_get_attachment_image_src($postid, 'rnd_custom-image-2' , true);
          ?>
          <?php if($options['image_2_logo'] != '') { ?>


          <img src="<?php echo $options['image_2_logo']; ?>">
          <?php } else { ?>
          <img src="<?php echo get_template_directory_uri ();?>/images/home-bg.jpg">
          <?php } ?>
        </div>
        <!--col-sm-6--> 
      </div>
      <!--row--> 
    </div>
    <!--container--> 
  </div>
  <!-- .site-header-main -->
  <div class="inner-page-header">
    <div class="site-branding text-center">
			<?php twentysixteen_the_custom_logo(); ?>
    </div>
  </div>
  <div class="nav-section">
    <div class="container">
      <?php if ( has_nav_menu( 'primary' ) || has_nav_menu( 'social' ) ) : ?>
      <div id="site-header-menu" class="site-header-menu">
        <?php if ( has_nav_menu( 'primary' ) ) : ?>
        <nav id="site-navigation" class="main-navigation text-center" aria-label="<?php esc_attr_e( 'Primary Menu', 'twentysixteen' ); ?>">
          <?php
									wp_nav_menu( array(
										'theme_location' => 'primary',
										'menu_class'     => 'primary-menu',
										'link'    => 'test',
									 ) );
								?>
        </nav>
        <!-- .main-navigation -->
        <?php endif; ?>
      </div>
      <!-- .site-header-menu -->
      <?php endif; ?>
    </div>
  </div><!--.nav-section--> 
</header>
<!-- .site-header -->
<div class="header-back-image">
  <?php 
    $postid = rnd_get_image_id($options['text_to_img_url']);
    $image_url_3 = wp_get_attachment_image_src($postid, 'rnd_custom-image-3' , true);
  ?>
  <?php if($options['text_to_img_url'] != '') { ?>
  	<img src="<?php echo $image_url_3[0]; ?>">
    <?php } else {?>
    <?php } ?>
  </div>
<div id="content" class="site-content">
