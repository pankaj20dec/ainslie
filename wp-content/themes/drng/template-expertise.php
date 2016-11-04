<?php
/**
 * Template Name: Expertise Page
 *
 */
get_header(); 
while ( have_posts() ) : the_post();
	$subHead = get_field('sub_heading'); 
	$title = get_the_title();
?>
 <div class="page-container">
	<div class="container">
		<div class="page-content">	
			<h1 class="title"><?php if(!empty($subHead)){ echo $subHead;}else{ echo $title;}?></h1>
             <div class="row clearfix">
				<?php 
					if( have_rows('expertise_boxes') ):
						while( have_rows('expertise_boxes') ) : the_row();
							$expertiseName = get_sub_field('expertise_name');
							$desc = get_sub_field('expertise_description');
								?>
							<div class="col-sm-3">
								<div class="expertise-box">
									<h2 class="sub-heading">
										<?php echo $expertiseName; ?>
									</h2>
									<div class="description">
										<?php echo $desc;?>
									</div>
								</div>
							</div>
								<?php
						endwhile;
					endif;
					?>
             </div>  
		</div>
    </div>
</div>
 <?php
 endwhile;
 get_footer(); ?>
