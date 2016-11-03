<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>

<section class="blog-posts">
  <div class="container-fluid">
  <div class="row">
  <div class="col-sm-9">
    <div class="row sidebar-page-left">
      <?php query_posts('showposts=6&order=DESC'); ?>
      <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
      <?php //echo '<pre>' ; print_r($abc); echo '</pre>'; ?>
      <div class="col-sm-6 featured_post">
        <div class="featured_image">
          <?php if ( has_post_thumbnail() ) { ?>
          <a href="<?php the_permalink(); ?>">
          <?php the_post_thumbnail('full'); ?>
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
      <?php endwhile; endif;

                    wp_reset_query(); ?>
    </div>
    </div><!--col9-->
    <div class="col-sm-3 sidebar-right">
    	<?php get_sidebar(); ?>
    </div>
    </div><!--row-->
  </div>
</section>
<?php get_footer(); ?>