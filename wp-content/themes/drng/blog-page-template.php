<?php
/**
 * Template Name: Blog Page
 *
 */
get_header(); ?>

<!--Featured Post Area-->
  <div class="container blog-page-content">
	<div id="more_posts" class="row blog-post">
      <?php 
			$postsPerPage = 6;
            $args = array(
                    'posts_per_page' => $postsPerPage,
                    'order' => 'DESC'
            );
			$loop = new WP_Query($args);
			 while ($loop->have_posts()) : $loop->the_post();	
	  
	   ?>
      
        	<div class="col-sm-6 post-content-box">
            	<?php if ( has_post_thumbnail() ) { ?>
				  <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('blog-thumbnail-image'); ?></a>
				  <?php } else { ?>
				 <a href="<?php the_permalink(); ?>"> <img src="http://placehold.it/620x340" alt="placeholder" title="placeholder" /></a>
              <?php } ?>
                <div class="blog-post-content">
               		<h2 class="blog-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
					<?php the_excerpt(); ?>
				</div>
            </div>
            
      <?php endwhile; wp_reset_postdata(); ?>
	  </div>
	  <div class="row" id="load-more-div">
      	
		<div class="text-center">
        	<div id="more_posts_blog" class="see-more">See More Posts</div>
            <div id="error-message-rnd"></div>
        </div>
        
	  </div>
	
  </div>
<?php get_footer(); ?>
