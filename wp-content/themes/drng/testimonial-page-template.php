<?php
/**
 * Template Name: Testimonial Page
 *
 */

get_header(); ?>
<!--Featured Post Area-->
	<div class="testimonial-page-posts">
		<div class="container">
			<div class="row testimonial_row">
				<?php query_posts('post_type=testimonial&showposts=-1&order=DESC'); ?>
                    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>						
                        <?php //echo '<pre>' ; print_r($abc); echo '</pre>'; ?>
                        <div class="col-sm-6 testimonial_post">
                            <div class="testimonial_col">
                            	<div class="testimonial_content">
									<?php the_content(); ?>
                                    </div>
                                    <h2 class="testimonial_title"><?php the_title(); ?></h2> 
                            </div>
                        </div>						
                    <?php endwhile; endif;
                    wp_reset_query(); ?>
                </div>
        </div>
    </div>
<?php get_footer(); ?>

