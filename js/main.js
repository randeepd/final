jQuery(document).ready(function(){

		'use strict';

		// nav HEADER
		$(".navbar-toggle").click(function(){
			  $("#menu-nav").show();
			});


			// FLEXSLIDER
			jQuery('.flexslider').flexslider({
				animation: "fade",              //String: Select your animation type, "fade" or "slide"
				animationLoop: true,             //Boolean: Should the animation loop? If false, directionNav will received "disable" classes at either end
				slideshow: true,                //Boolean: Animate slider automatically
				slideshowSpeed: 3000,           //Integer: Set the speed of the slideshow cycling, in milliseconds
				animationSpeed: 1000,            //Integer: Set the speed of animations, in milliseconds
				// Primary Controls
				controlNav: true,               //Boolean: Create navigation for paging control of each clide? Note: Leave true for manualControls usage
				directionNav: false,             //Boolean: Create navigation for previous/next navigation? (true/false)
				pauseOnHover: true,            //Boolean: Pause the slideshow when hovering over slider, then resume when no longer hovering
			});

		
		
		});