<?php
get_header(); ?>
<?php $options = get_option( 'sample_theme_options' ); ?>
<div id="primary" class="home-content-area">
 <section class="about-section">
 <div class="container-fluid">
	<?php
		$args = array(
			'page_id' => 233,
			'posts_per_page' => 1,
		);
		$custom_posts = new WP_Query($args);
		if($custom_posts->have_posts()) : 
			while($custom_posts->have_posts()) : 
			$custom_posts->the_post();
			?>
			<div class="row">
				<div class="col-sm-3 col-xs-offset-2">
				  <?php if(has_post_thumbnail()) { ?>
					<?php the_post_thumbnail('image_featured_'); ?>
				  <?php } else { ?>
				  <img src="http://placehold.it/480x680">
				  <?php } ?>
				</div>
				<div class="col-sm-7" style="padding-right: 0px;">
					<h2 class="section-heading"><?php the_title();?></h2>
					<div class="about-section-content">
						<?php the_excerpt() ?>      
					</div>
				</div>
			</div>
	<?php
		endwhile;
		else: 
	?>
	<?php endif; ?>
	<?php wp_reset_query(); ?>
    </div><!--container-->
 </section>
 <section class="services-section">
      <?php 
			query_posts('post_type=services&showposts=3&order=DESC');
	 if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>	
	  
      <div class="services-post container-fluid">
          <div class="row">
            <div class="col-sm-5 col-xs-offset-2 services-section-content">
                <h2 class="section-heading"><?php the_title(); ?></h2>
                <?php the_excerpt(); ?>
            </div>
          </div><!--container-->
      </div>
      <?php endwhile; endif;
			wp_reset_query(); ?>
            
 </section>
</div>
<!-- .content-area -->
<?php get_footer(); ?>
