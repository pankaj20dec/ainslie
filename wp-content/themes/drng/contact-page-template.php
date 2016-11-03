<?php
/**
 * Template Name: Contact Page
 *
 */
get_header(); ?>

<!--Featured Post Area-->
  <div class="contact-page-content">
      <div class="contact-page-inner">
           <div class="container">
                 <?php
                    // Start the loop.
                    while ( have_posts() ) : the_post();
            
                        // Include the page content template.
                        get_template_part( 'template-parts/content', 'contact' );
            
                        // If comments are open or we have at least one comment, load up the comment template.
                        if ( comments_open() || get_comments_number() ) {
                            comments_template();
                        }
            
                        // End of the loop.
                    endwhile; 
                    ?>
            </div><!-- .container -->
      </div>
  </div>
<?php get_footer(); ?>
