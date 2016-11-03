<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

		</div><!-- .site-content -->
        
<section class="sign-up-section">
	<div class="sign-up-inner">
        <div class="container">
            <?php //dynamic_sidebar('sign-up'); ?>
			<div class="lets-chat">
				<h2>Let's chat!</h2>
				<a href="<?php echo site_url();?>/contact" class="link-button">SAY HELLO</a>
			</div>
        </div>
    </div>
</section>
<section class="instagram-section">
	<div class="container-fluid">
    	<?php dynamic_sidebar('instagram'); ?>
    </div>
</section>
		<footer id="colophon" class="site-footer" role="contentinfo">
        	<div class="container">
            	 <?php $options = get_option( 'sample_theme_options' ); ?>
                 <!--<div class="footer-social">
					<div class="social-links-icon text-center">
						<ul>
						  <li> <a class="genericon genericon-facebook-alt" href="<?php echo $options['fb_title']; ?>"><span class="screen-reader-text">Facebook</span></a> </li>
						  <li> <a class="genericon genericon-twitter" href="<?php echo $options['insta_title']; ?>"><span class="screen-reader-text">Instagram</span></a> </li>
						  <li> <a class="genericon genericon-instagram" href="<?php echo $options['tw_title']; ?>"><span class="screen-reader-text">Twitter</span></a> </li>
						</ul>
					  </div>
                 </div>-->
                <div class="footer-nav">
                    <?php if ( has_nav_menu( 'footer-menu' ) ) : ?>
                        <nav class="footer-navigation text-center" role="navigation" aria-label="<?php esc_attr_e( 'Footer Primary Menu', 'twentysixteen' ); ?>">
                            <?php
                                wp_nav_menu( array(
                                    'theme_location' => 'footer-menu',
                                    'menu_class'     => 'footer-menu list-inline',
                                 ) );
                            ?>
                        </nav><!-- .main-navigation -->
                    <?php endif; ?>
                    </div>
            </div>
        <div class="container">
			<div class="row site-info">
            <div class="col-sm-6 no-pad">
				<?php
					/**
					 * Fires before the twentysixteen footer text for footer customization.
					 *
					 * @since Twenty Sixteen 1.0
					 */
					do_action( 'twentysixteen_credits' );
				?>
				<span class="footer-site-title">Copyright <?php echo date("Y"); ?> <a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?> Murray</a></span>
                </div>
                <div class="col-sm-6 no-pad text-right">
				<a href="http://firstflightstudio.com" target="_blank"><?php printf( __( 'Website by First Flight', 'twentysixteen' ), 'WordPress' ); ?></a>
                </div>
			</div><!-- .site-info -->
           </div>
		</footer><!-- .site-footer -->
	</div><!-- .site-inner -->
</div><!-- .site -->

<?php wp_footer(); ?>
</body>
</html>
