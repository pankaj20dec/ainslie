<?php
/**
 * The template part for displaying single posts
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
<header class="entry-header">
		<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
	</header><!-- .entry-header -->
<div class="single-post-img">
	<?php if(get_field('page_image')) { ?>
		<img src="<?php echo get_field('page_image')['sizes']['blog-single-image']; ?>" alt="<?php echo get_field('page_image')['alt']; ?>">
	<?php } else { ?>
		<img src="http://placehold.it/1240x550" alt="placeholder" title="placeholder">
		<?php
	} ?>
    </div>
	

	<?php // twentysixteen_excerpt(); ?>
	<div class="entry-content single-page-content">
    <?php the_excerpt();?>
		<?php
			the_content();

			wp_link_pages( array(
				'before'      => '<div class="page-links"><span class="page-links-title">' . __( 'Pages:', 'twentysixteen' ) . '</span>',
				'after'       => '</div>',
				'link_before' => '<span>',
				'link_after'  => '</span>',
				'pagelink'    => '<span class="screen-reader-text">' . __( 'Page', 'twentysixteen' ) . ' </span>%',
				'separator'   => '<span class="screen-reader-text">, </span>',
			) );

			if ( '' !== get_the_author_meta( 'description' ) ) {
				get_template_part( 'template-parts/biography' );
			}
		?>
	</div><!-- .entry-content -->
	<div class="share_icon">
		<?php echo do_shortcode('[custom_social_links]'); ?>
	</div>
</article><!-- #post-## -->
