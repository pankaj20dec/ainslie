<?php
/**
 * Template Name: Who we work with Page
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
             <div class="row work-with clearfix">
				<?php 
					if( have_rows('logos') ):
						while( have_rows('logos') ) : the_row();
								$logo = get_sub_field('logo');
								//print_r($logo);
								?>
							<div class="col-sm-3">
								<div class="logos">
										<img src="<?php echo $logo['url'];?>" alt="<?php echo $logo['title'];?>"/>
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
