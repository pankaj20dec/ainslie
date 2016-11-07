<?php
get_header(); ?>
<?php $options = get_option( 'sample_theme_options' ); ?>
<div id="primary" class="home-content-area">
 <section class="about-section">
 <div class="container-fluid">
	<?php
		$args = array(
			'page_id' => 4,
			'posts_per_page' => 1,
		);
		$custom_posts = new WP_Query($args);
		if($custom_posts->have_posts()) : 
			while($custom_posts->have_posts()) : 
			$custom_posts->the_post();
			$subHead = get_field('sub_heading'); 
			$quote = get_field('quote'); 
			$title = get_the_title();
			?>
			<h1 class="quote">
				<?php echo $quote; ?>
			</h1>
			<div class="row">
				<div class="col-sm-3 col-xs-offset-2">
				  <?php if(has_post_thumbnail()) { ?>
					<?php the_post_thumbnail('image_featured_'); ?>
				  <?php } else { ?>
				  <img src="http://placehold.it/480x680">
				  <?php } ?>
				</div>
				<div class="col-sm-7" style="padding-right: 0px;">
					<h2 class="section-heading"><?php if(!empty($subHead)){ echo $subHead;}else{ echo $title;}?>	</h2>
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
			query_posts('post_type=services&showposts=3&order=ASC');
	 if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>	
	  
      <div class="services-post container-fluid">
		<div class="container">
          <div class="row">
				<div class="col-sm-7 services-section-content">
					<h2 class="section-heading"><?php the_title(); ?></h2>
					<?php the_excerpt(); ?>
					<a href="<?php echo site_url(); ?>/services-page" class="link-button">I'm Intereseted</a>
				</div>
			</div>
		  </div>
      </div>
      <?php endwhile; endif;
			wp_reset_query(); ?>
 </section>
 <section id="little-fun">
 	<div class="littlefun-container">
 		<div class="container">
 			<h2 class="sub-heading">A LITTLE FUN TO MAKE SURE YOU HAVE A BETTER DAY</h2>
 			<div class="col-onefifth">
 				<div class="little-fun-box">
					<a href="http://www.google.com" target="_blank">
						<span class="first-icon"></span>
						<span class="little-fun-title">todays affirmation</span>
					</a>
 				</div>
 			</div>
			<div class="col-onefifth">
 				<div class="little-fun-box">
					<a href="http://www.google.com" target="_blank">
						<span class="second-icon"></span>
						<span class="little-fun-title">a 90’s playlist</span>
					</a>
 				</div>
 			</div>
			<div class="col-onefifth">
 				<div class="little-fun-box">
					<a href="http://www.google.com" target="_blank">
						<span class="third-icon"></span>
						<span class="little-fun-title">a kitten to stare </span>
					</a>
 				</div>
 			</div>
			<div class="col-onefifth">
 				<div class="little-fun-box">
					<a href="http://www.google.com" target="_blank">
						<span class="fourth-icon"></span>
						<span class="little-fun-title">a recipe for tonight</span>
					</a>
 				</div>
 			</div>
			<div class="col-onefifth">
 				<div class="little-fun-box">
					<a href="http://www.google.com" target="_blank">
						<span class="fifth-icon"></span>
						<span class="little-fun-title">deskercises</span>
					</a>
 				</div>
 			</div>
 		</div>
 	</div>
 </section>
</div>
<!-- .content-area -->
<?php get_footer(); ?>
