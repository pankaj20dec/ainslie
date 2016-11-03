<?php
/**
 * Template Name: Press Page
 *
 */
get_header(); ?>

<!--Featured Post Area-->
  <div class="container press-page-content">
				
	<div id="more_posts" class="row press-post">
     <?php 
			query_posts('post_type=press&showposts=-1&order=DESC');
	 if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>	
      
        	<div class="col-sm-4 press-content-box">
            	<?php if ( has_post_thumbnail() ) { ?>
				  <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('press-thumbnail-image'); ?></a>
				  <?php } else { ?>
				 <a href="<?php the_permalink(); ?>"> <img src="http://placehold.it/450x450" alt="placeholder" title="placeholder" /></a>
              <?php } ?>
                <div class="press-post-content">
               		<h2 class="blog-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
					<?php // the_excerpt(); ?>
                    <div class="post-date"><?php the_time('F dS, Y', strtotime($my_date)); ?></div>
				</div>
            </div>
            
      <?php endwhile; endif;
			wp_reset_query(); ?>
	  </div>
		<!--<div class="row" id="load-more-press">
			<div class="text-center">
				<div id="more_press_blog" class="see-more">See More</div>
				<div id="error-message-rnd"></div>
			</div>
		</div>-->
  </div>
<?php get_footer(); ?>
