new WOW().init();

jQuery(function($){
  
  //$('.colorbox,.thickbox').colorbox({iframe:true, innerWidth:998, height:"80%"});
	/** 
  $('.search-opener').on('click', function(e){
    e.preventDefault();
    $('html, body').animate({
      scrollTop: 0
    }, 800);
    $('.universal-search').slideDown();
    $('#search_term').focus();
    $('#menu').slideUp();
  });
  $('.search-closer').on('click', function(e){
    e.preventDefault();
    $('.universal-search').slideUp();
  });
  $('header .navbar-links .menu-opener').on('click', function(e){
    e.preventDefault();
    $('#menu').slideDown();
  });
  $('#menu .menu-closer').on('click', function(e){
    e.preventDefault();
    $('#menu').slideUp();
  });
  $('#preheader .menu-closer').on('click', function(e){
    e.preventDefault();
    $('#preheader #locations .location_menu').hide();
    $('#preheader .menu-closer').hide();
    $('#preheader #locations').blur();
  });
  $('#preheader .menu-opener').on('click', function(e){
    e.preventDefault();
    $('#preheader .menu-closer').show();
    $('#preheader #locations .location_menu').slideDown();        
  });
**/  
	
	//set class on fixed header after scrolling
	var didScroll = true;
	var lastScrollTop = 0;
	var delta = 5;
	var navbarHeight = $('header').outerHeight();
	
	$(window).scroll(function(){
	    didScroll = true;
	});
	
	setInterval(function() {
	    if (didScroll) {
	        hasScrolled();
	        didScroll = false;
	    }
	}, 250);
	
	function hasScrolled() {
	    var st = $(this).scrollTop();
	    
	    // Make sure they scroll more than delta
	    if(Math.abs(lastScrollTop - st) <= delta)
	        return;
	    
	    // If they scrolled down and are past the navbar, add class .nav-up.
	    // This is necessary so you never see what is "behind" the navbar.
	    if (st > navbarHeight){
	        $('header').addClass('opaque');
	    } else {
	        $('header').removeClass('opaque');
	    }
	    
	    lastScrollTop = st;
	}
	$('#main-menu a').on('click', function(){
		if ($('#churches-mega-menu').hasClass('open')) {
			$('#churches-mega-menu').hide().removeClass('open');	
		}
	});
	$('#menu_churches a, #menu_church a').on('click', function(e){
		e.preventDefault();
		if ($(this).parent().hasClass('open')) {
			$('#churches-mega-menu').hide().removeClass('open');	
		} else {
			$('#churches-mega-menu').show().addClass('open');
		}
	});
  $('select.sorter, select.filter').select2({
      //allowClear: true,
      minimumResultsForSearch: 20
  });
  $('select.select-church').select2({
      //allowClear: true,
      minimumResultsForSearch: 20
  });
  $('.tier2-item').each(function(){
	  $(this).hover(function(){
		  $(this).find('.select-overlay').css('visibility','visible');
		});
  });
	$('select.sermon-list, select.select-church').on('change', function(){
		var url = $(this).val(); // get selected value
		if (url) { // require a URL
		    window.location = url; // redirect
		}
		return false;
	});
	var windowWidth = $(window).width();
	if (windowWidth >= 768) {
		$('.series-list .series-container').each(function(){
			var parentContainer = $(this).closest('.container').next();
			$(this).appendTo(parentContainer);
		});
	}
	$('.series-opener').on('click touchstart', function(e){
		e.preventDefault();
		$('.series-container').hide();
		var seriesblock = $(this).data('openseries');
		if ($("#"+seriesblock).hasClass('open')) {
			$('.series-container').removeClass('open');		
		} else {
			$('.series-container').removeClass('open');		
			$("#"+seriesblock).addClass('open').slideDown();			
		}
	});
});
