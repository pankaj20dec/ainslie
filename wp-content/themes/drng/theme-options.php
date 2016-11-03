<?php

add_action( 'admin_init', 'theme_options_init' );
add_action( 'admin_menu', 'theme_options_add_page' );

/**
 * Init plugin options to white list our options
 */
function theme_options_init(){
	register_setting( 'sample_options', 'sample_theme_options', 'theme_options_validate' );
}

/**
 * Load up the menu page
 */
function theme_options_add_page() {
	add_theme_page( __( 'Theme Options', 'sampletheme' ), __( 'Theme Options', 'sampletheme' ), 'edit_theme_options', 'theme_options', 'theme_options_do_page' );
}


/**
 * Create the options page
 */ 
function theme_options_do_page() {
	global $select_options, $radio_options;

	if ( ! isset( $_REQUEST['settings-updated'] ) )
		$_REQUEST['settings-updated'] = false;

	?>
	<div class="wrap">
		<?php screen_icon(); echo "<h2>" . __( ' Daring', 'sampletheme' ) . __( ' Theme Options', 'sampletheme' ) . "</h2>"; ?>

		<?php if ( false !== $_REQUEST['settings-updated'] ) : ?>
		<div class="updated fade"><p><strong><?php _e( 'Options saved', 'sampletheme' ); ?></strong></p></div>
		<?php endif; ?>

		<form method="post" action="options.php">
			<?php settings_fields( 'sample_options' ); ?>
			<?php $options = get_option( 'sample_theme_options' ); ?>
			<p class="submit" style="float:right;">
				<input type="submit" class="button-primary" value="<?php _e( 'Save Options', 'sampletheme' ); ?>" />
			</p>
			<table class="form-table">
				<h1>Homepage</h1>
				<!-- <tr valign="top"><th scope="row"><?php _e( 'Logo', 'sampletheme' ); ?></th>
					<td>
						<input class="upload" id="upload_one" type="text" size="36" name="sample_theme_options[header_logo]" value="<?php esc_attr_e( $options['header_logo'] ); ?>" />
						<input id="upload_image_button_" type="button" value="Upload Image" class="upload-button" />

					</td>
				</tr> -->
				
				<tr valign="top"><th scope="row"><?php _e( 'Header Image 1', 'sampletheme' ); ?></th>
					<td>
						<input class="upload" id="upload_one" type="text" size="36" name="sample_theme_options[image_1_logo]" value="<?php esc_attr_e( $options['image_1_logo'] ); ?>" />
						<input id="upload_image_button_1" type="button" value="Upload Image" class="upload-button" />

						
					</td>
				</tr>
				
				<tr valign="top"><th scope="row"><?php _e( 'Header Image', 'sampletheme' ); ?></th>
					<td>
						<input class="upload" id="upload_two" type="text" size="36" name="sample_theme_options[image_2_logo]" value="<?php esc_attr_e( $options['image_2_logo'] ); ?>" />
						<input id="upload_image_button_2" type="button" value="Upload Image" class="upload-button" />

						
					</td>
				</tr>
				<tr valign="top"><th scope="row"><?php _e( 'Signup Section Background Image', 'sampletheme' ); ?></th>
					<td>
						<input class="upload" id="upload_sixth" type="text" size="36" name="sample_theme_options[signup_to_img_url]" value="<?php esc_attr_e( $options['signup_to_img_url'] ); ?>" />
						<input id="signup_to_img_url" type="button" value="Upload Image" class="upload-button" />
					</td>
				</tr>
				
			</table>
<hr>

			<table class="form-table">
				<h1>Social Icons</h1>
				<tr valign="top"><th scope="row"><?php _e( 'Facebook', 'sampletheme' ); ?></th>
					<td>
						<input id="sample_theme_options[fb_title]" class="regular-text" type="text" name="sample_theme_options[fb_title]" value="<?php esc_attr_e( $options['fb_title'] ); ?>" />
					</td>
				</tr>
				<tr valign="top"><th scope="row"><?php _e( 'Twitter', 'sampletheme' ); ?></th>
					<td>
						<input id="sample_theme_options[tw_title]" class="regular-text" type="text" name="sample_theme_options[tw_title]" value="<?php esc_attr_e( $options['tw_title'] ); ?>" />
					</td>
				</tr>
				
				<tr valign="top"><th scope="row"><?php _e( 'Instagram', 'sampletheme' ); ?></th>
					<td>
						<input id="sample_theme_options[insta_title]" class="regular-text" type="text" name="sample_theme_options[insta_title]" value="<?php esc_attr_e( $options['insta_title'] ); ?>" />
					</td>
				</tr>

				<tr valign="top"><th scope="row"><?php _e( 'LinkedIn', 'sampletheme' ); ?></th>
					<td>
						<input id="sample_theme_options[linked_in]" class="regular-text" type="text" name="sample_theme_options[linked_in]" value="<?php esc_attr_e( $options['linked_in'] ); ?>" />
					</td>
				</tr>
				<tr valign="top"><th scope="row"><?php _e( 'Pinterest', 'sampletheme' ); ?></th>
					<td>
						<input id="sample_theme_options[pinterest]" class="regular-text" type="text" name="sample_theme_options[pinterest]" value="<?php esc_attr_e( $options['pinterest'] ); ?>" />
					</td>
				</tr>
				
			</table>
<hr>
			<table class="form-table">
				<h1>Home About Section</h1>
				<tr valign="top"><th scope="row"><?php _e( 'Title', 'sampletheme' ); ?></th>
					<td>
						<input id="sample_theme_options[_title]" class="regular-text" type="text" name="sample_theme_options[_title]" value="<?php esc_attr_e( $options['_title'] ); ?>" />
					</td>
				</tr>
				
				
				<tr valign="top"><th scope="row"><?php _e( 'Description', 'sampletheme' ); ?></th>
					<td>
						<?php 
						wp_editor( wpautop(get_option('listingeditor_about',$options['about_sometextarea'])), 'listingeditor_about', $settings = array('textarea_name' => 'sample_theme_options[about_sometextarea]', 'textarea_rows' => 7, 'editor_height' => 400) ); ?>
						
					</td>
				</tr>
				
				<tr valign="top"><th scope="row"><?php _e( 'Featured Image URL', 'sampletheme' ); ?></th>
					<td>
						<input class="upload" id="upload_three" type="text" size="36" name="sample_theme_options[image_featured_]" value="<?php esc_attr_e( $options['image_featured_'] ); ?>" />
						<input id="upload_image_button_3" type="button" value="Upload Image" class="upload-button" />

						
					</td>
				</tr>
				
			</table>
			<hr>
			<table class="form-table">
				<h1>Theme Background Textures</h1>
				<tr valign="top"><th scope="row"><?php _e( 'Texture 1', 'sampletheme' ); ?></th>
					<td>
						<input class="upload" id="upload_fourth" type="text" size="36" name="sample_theme_options[bg_to_img_url]" value="<?php esc_attr_e( $options['bg_to_img_url'] ); ?>" />
						<input id="bg_to_img_url" type="button" value="Upload Image" class="upload-button" />
					</td>
				</tr>
				<tr valign="top"><th scope="row"><?php _e( 'Texture 2', 'sampletheme' ); ?></th>
					<td>
						<input class="upload" id="upload_fifth" type="text" size="36" name="sample_theme_options[text_to_img_url]" value="<?php esc_attr_e( $options['text_to_img_url'] ); ?>" />
						<input id="bg_to_img_url" type="button" value="Upload Image" class="upload-button" />
					</td>
				</tr>
				
			</table>
			
			
			<hr>
			

			<p class="submit">
				<input type="submit" class="button-primary" value="<?php _e( 'Save Options', 'sampletheme' ); ?>" />
			</p>
		</form>
	</div>
	<?php
}

/**
 * Sanitize and validate input. Accepts an array, return a sanitized array.
 */
function theme_options_validate( $input ) {
	global $select_options, $radio_options;
	// Say our text option must be safe text with no HTML tags
	//$input['sometext'] = wp_filter_nohtml_kses( $input['sometext'] );
	$input['image_1_logo'] = ( $input['image_1_logo'] );
	$input['image_2_logo'] = ( $input['image_2_logo'] );
	$input['fb_title'] = ( $input['fb_title'] );
	$input['tw_title'] = ( $input['tw_title'] );
	$input['insta_title'] = ( $input['insta_title'] );
	$input['_title'] = ( $input['_title'] );
	$input['about_sometextarea'] = ( $input['about_sometextarea'] );
	$input['image_featured_'] = ( $input['image_featured_'] );
	// Say our textarea option must be safe text with the allowed tags for posts
	$input['bg_to_img_url'] = ( $input['bg_to_img_url'] );
	$input['text_to_img_url'] = ( $input['text_to_img_url'] );
	$input['signup_to_img_url'] = ( $input['signup_to_img_url'] );
	$input['linked_in'] = ( $input['linked_in'] );
	$input['pinterest'] = ( $input['pinterest'] );
	

	return $input;
}

// adapted from http://planetozh.com/blog/2009/05/handling-plugins-options-in-wordpress-28-with-register_setting/