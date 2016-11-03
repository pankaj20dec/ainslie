<?php
/**
 * Template Name: Services Page
 *
 */
get_header(); 
	$subHead = get_field('sub_heading'); 
	$title = get_the_title();

?>

<!--Featured Post Area-->
  <div class="services-page">
           <section class="services-page-section">
 <div class="container-fluid">
 	<div class="row">
    	
        <div class="col-sm-6 services-section-left" style="padding-left: 0px;">
			<h2 class="section-heading">
				<?php if(!empty($subHead)){ echo $subHead;}else{ echo $title;}?></h2>
        	<div class="services-page-content">
            	<?php
            // Start the loop.
            while ( have_posts() ) : the_post();
    
                // Include the page content template.
                get_template_part( 'template-parts/content', 'page' );
    
                // If comments are open or we have at least one comment, load up the comment template.
                if ( comments_open() || get_comments_number() ) {
                    comments_template();
                }
    
                // End of the loop.
            endwhile; 
            ?>
            </div>
        </div>
        <div class="col-sm-6 services-section-img">
        <?php if ( has_post_thumbnail() ) { ?>
				  <?php the_post_thumbnail('services_featured-image'); ?>
				  <?php } else { ?>
				<img src="<?php echo get_template_directory_uri ();?>/images/services-placeholder-img.jpg">
              <?php } ?>
        </div>
    </div><!--row-->
    </div><!--container-->
 </section>
 <section class="services-accordion-section container-fluid">
 	<div class="row"> 
    <?php 
			query_posts('post_type=services&showposts=-1&order=DESC');
	 if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>	
<?php $c = 0; ?>
            <div id="accordion" role="tablist" class="col-sm-8 services-accordion-content" aria-multiselectable="true">
                <h2 class="section-heading"><?php the_title(); ?></h2>
                <?php the_excerpt(); ?>
                <div id="collapse-<?php the_ID(); ?>" class="panel-collapse collapse <?php if( $c == 1 ) echo 'in'; ?>" role="tabpanel" aria-labelledby="heading-<?php the_ID(); ?>">
                    <?php the_content(); ?>
                </div>
                <a class="arrow-icon genericon genericon-expand" data-toggle="collapse" data-parent="#accordion" href="#collapse-<?php the_ID(); ?>" aria-expanded="true" aria-controls="collapse-<?php the_ID(); ?>">
        </a>
                
			</div>
<?php endwhile; endif;
			wp_reset_query(); ?>
		</div>    
 </section>



</div><!--end of the accordion wrap-->
 
  </div>
<?php get_footer(); ?>