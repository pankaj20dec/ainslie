<?php
/**
 * The template for displaying archive pages
 *
 * Used to display archive-type pages if nothing more specific matches a query.
 * For example, puts together date-based pages if no date.php file exists.
 *
 * If you'd like to further customize these archive views, you may create a
 * new template file for each one. For example, tag.php (Tag archives),
 * category.php (Category archives), author.php (Author archives), etc.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>

    	<div class="container-fluid page-sidebar-content">
  			<div class="row">
  				<div class="col-sm-9">
                <div class="sidebar-page-left">
		
		<?php if ( have_posts() ) : ?>

			<header class="page-header">
				<?php
					the_archive_title( '<h1 class="page-title">', '</h1>' );
					the_archive_description( '<div class="taxonomy-description">', '</div>' );
				?>
			</header><!-- .page-header -->

			<?php
			// Start the Loop.
			while ( have_posts() ) : the_post(); ?>
         <div class="col-sm-6 featured_post">
        <div class="featured_image">
          <?php if ( has_post_thumbnail() ) { ?>
          <a href="<?php the_permalink(); ?>">
          <?php the_post_thumbnail('rnd-featured'); ?>
          </a>
          <?php } ?>
        </div>
        <div class="featured_content">
          <div class="featured_content_inner">
            <h3 class="featured_title"><a href="<?php the_permalink(); ?>">
              <?php the_title(); ?>
              </a></h3>
            <div class="featured_excerpt">
              <?php the_excerpt(); ?>
            </div>
          </div>
        </div>
      </div>

			<?php endwhile; 

			// Previous/next page navigation.
			the_posts_pagination( array(
				'prev_text'          => __( 'Previous page', 'twentysixteen' ),
				'next_text'          => __( 'Next page', 'twentysixteen' ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentysixteen' ) . ' </span>',
			) );

		// If no content, include the "No posts found" template.
		else :
			get_template_part( 'template-parts/content', 'none' );

		endif;
		?>

		</div><!-- .site-main -->
        </div><!--col-9-->
        <div class="col-sm-3 sidebar-right">
    	<?php get_sidebar(); ?>
    </div>
        </div><!--row-->
	</div><!-- .container -->
<?php get_footer(); ?>
