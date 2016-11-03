
jQuery(document).ready(function(){
	

//Blog page
var ppp = 6; // Post per page
var pageNumber = 1;

jQuery("#more_posts_blog").on("click",function(){ // When btn is pressed.
    //$("#more_posts").attr("disabled",true); // Disable the button, temp.
    //load_posts();
	pageNumber++;
	 $.ajax({
        type: "POST",
        dataType: "json",
		url: ajax_posts.ajaxurl,
        data: {
			action: 'load_more_posts_blog_callback',
			pageNumber: pageNumber,
			ppp: ppp,
			/*category: jQuery("#more_posts_blog").attr('data-category') */
		},
        success: function(data){
            var jQuerydata = $(data);
			if( data.status == 1 ){
					$.each(data, function(i, item) {
					if( item != 1 ){
						var __html;
						
						__html = '<div class="col-sm-6 post-content-box"><a href="<a href="'+item.permalink+'">"><img width="620" height="340"  src="'+item.thumbnail+'"></a> <div class="blog-post-content"> <h2 class="blog-title"><a href="'+item.permalink+'">'+item.title+'</a></h2> '+item.excerpt+'</div></div>';
						jQuery(__html).appendTo(jQuery('#more_posts'));
					}
					jQuery('#error-message-rnd').html('');
				});
			} else {
				var __html;
				jQuery('#error-message-rnd').html('No more posts to display');
				
			}
			
            
        },
        error : function(jqXHR, textStatus, errorThrown) {
            //$loader.html(jqXHR + " :: " + textStatus + " :: " + errorThrown);
			jQuery('#error-message-rnd').html('ERROR: '+ errorThrown);
			
        },
		beforeSend: function(){
			jQuery('#error-message-rnd').html('Loading...');
			
		}

    });
    return false;
});

//Press post page
var press_ppp = 6; // Post per page
var press_pageNumber = 1;

jQuery("#more_press_blog").on("click",function(){ // When btn is pressed.
    //$("#more_posts").attr("disabled",true); // Disable the button, temp.
    //load_posts();
	pageNumber++;
	 $.ajax({
        type: "POST",
        dataType: "json",
		url: ajax_posts.ajaxurl,
        data: {
			action: 'load_more_press_posts_callback',
			press_pageNumber: press_pageNumber,
			press_ppp: press_ppp,
		},
        success: function(data){
            var jQuerydata = $(data);
			if( data.status == 1 ){
					$.each(data, function(i, item) {
					if( item != 1 ){
						var __html;
						
						__html = '<div class="col-sm-4 press-content-box"> <a href="'+item.permalink+'"><img width="450" height="450" src="'+item.thumbnail+'"></a> <div class="press-post-content"> <h2 class="blog-title"><a href="'+item.permalink+'">'+item.title+'</a></h2> <div class="post-date">'+item.time+'</div> </div> </div>';
						jQuery(__html).appendTo(jQuery('#more_posts'));
					}
					jQuery('#error-message-rnd').html('');
				});
			} else {
				var __html;
				jQuery('#error-message-rnd').html('No more items to display');
				
			}
			
            
        },
        error : function(jqXHR, textStatus, errorThrown) {
            //$loader.html(jqXHR + " :: " + textStatus + " :: " + errorThrown);
			jQuery('#error-message-rnd').html('ERROR: '+ errorThrown);
			
        },
		beforeSend: function(){
			jQuery('#error-message-rnd').html('Loading...');
			
		}

    });
    return false;
});	






	var uploadID = ''; /*setup the var*/
	
	
	jQuery('.upload-button').click(function() {
        
		uploadID = jQuery(this).prev('input');  
		formfield = jQuery('.upload').attr('name');
        tb_show( '', 'media-upload.php?type=image&amp;TB_iframe=true' );
		
		return false;
    });
	
	    window.send_to_editor = function(html) {
			
			
			var regex = /src="(.+?)"/;
			var rslt =html.match(regex);
			var imgurl = rslt[1];
	       //var imgurl = jQuery('img',html).attr('src');
		   uploadID.val(imgurl);
	        //jQuery('#testimonial_bg_img_url').val(imgurl);
	        tb_remove();
	    
		}
});
