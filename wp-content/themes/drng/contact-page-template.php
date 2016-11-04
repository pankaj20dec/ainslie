<?php
/**
 * Template Name: Contact Page
 *
 */
get_header(); while ( have_posts() ) : the_post();
	$subHead = get_field('sub_heading'); 
	$quote = get_field('quote'); 
	$title = get_the_title();
?>
  <div class="contact-page-content">
      <div class="contact-page-inner">
           <div class="container">
                <div class="page-content">
					<h2 class="sub-heading"><?php echo $subHead; ?></h2>
					<?php the_content();?>
						<div class="contact-form clearfix">
							<?php echo do_shortcode('[contact-form-7 id="86" title="Contact form 1"]');?>
							<div class="phone-email clearfix">
								<span class="phone-number"><i class="fa fa-phone" aria-hidden="true"></i><span> 0402 479 039</span></span>
								<span class="email-address"><i class="fa fa-envelope" aria-hidden="true"></i><span><a href="mailto:hello@ainsliecmurray.com">hello@ainsliecmurray.com</a></span></span>
							</div>
						</div>
				</div>
            </div>
      </div>
  </div>
  <div class="container">
  	<div class="row clearfix">
  		<div class="col-md-10 centered">
			<h1 class="quote"> <?php echo $quote; ?> </h1>
		</div>
  	</div>
  </div>
 <?php
 endwhile;
 get_footer(); ?>
