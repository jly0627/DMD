'use strict';

function forgot() {
	document.getElementById('forgotPassword').style.display = "none";
	document.getElementById('newText').style.display = "block";
}

function showModal() {
	document.getElementById('newAccountModal').style.display = "block";
}

function closeModal() {
	document.getElementById('newAccountModal').style.display = "none";
}

window.onclick = function(event) {
	var newAccountModal = document.getElementById('newAccountModal');
	if (event.target === newAccountModal) {
		newAccountModal.style.display = "none";
	}
}

;(function () {
	var contentWayPoint = function() {
		var i = 0;
			$('.animate-box').waypoint( function( direction ) {
				if( direction === 'down' && !$(this.element).hasClass('animated-fast') ) {
					i++;
					$(this.element).addClass('item-animate');
					setTimeout(function(){
						$('body .animate-box.item-animate').each(function(k){
							var el = $(this);
							setTimeout( function () {
								var effect = el.data('animate-effect');
								if ( effect === 'fadeIn') {
									el.addClass('fadeIn animated-fast');
								} else if ( effect === 'fadeInLeft') {
									el.addClass('fadeInLeft animated-fast');
								} else if ( effect === 'fadeInRight') {
									el.addClass('fadeInRight animated-fast');
								} else {
									el.addClass('fadeInUp animated-fast');
								}
								el.removeClass('item-animate');
							},  k * 200, 'easeInOutExpo' );
						});
					}, 100);
				}
			} , { offset: '85%' } );
	}; 

	// Loading page
	var loaderPage = function() {
		$(".gtco-loader").fadeOut("slow");
	};

	$(function(){
		contentWayPoint();
		loaderPage();
	});

}());