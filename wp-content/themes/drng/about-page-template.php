<?php
/**
 * Template Name: About Page
 *
 */
get_header(); 
	$subHead = get_field('sub_heading'); 
	$title = get_the_title();
?>

<div id="about-content" class="about-content-area">
 <section class="about-section">
 <div class="container-fluid">
 	<div class="row">
    	<div class="col-sm-3 col-xs-offset-2">
        <?php if ( has_post_thumbnail() ) { ?>
				  <?php the_post_thumbnail('rnd_featured-image-1'); ?>
				  <?php } else { ?>
				<img src="<?php echo get_template_directory_uri ();?>/images/about-placeholder-img.jpg">
              <?php } ?>
        </div>
        <div class="col-sm-7" style="padding-right: 0px;">
			<h2 class="section-heading">
				<?php if(!empty($subHead)){ echo $subHead;}else{ echo $title;}?></h2>
					
        	<div class="about-section-content">
            	<?php the_excerpt(); ?>
            </div>
            <div class="about-page-content">
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
    </div><!--row-->
    </div><!--container-->
 </section>
</div>
<?php get_footer(); ?>