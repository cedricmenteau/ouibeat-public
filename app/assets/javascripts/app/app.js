$(document).ready(function(){
  $('.parallax').parallax();
  $('.carousel').carousel({shift: 0, indicators: true});


  var mn = $('#navbar');
      mns = "navbar-scrolled";

  $(window).scroll(function() {
    if( $(this).scrollTop() > 30 ) {
      mn.addClass(mns);
    } else {
      mn.removeClass(mns);
    }
  });

   var  on = $('#sub-nav');
        ons = "sub-nav-scrolled";

  $(window).scroll(function() {
    if( $(this).scrollTop() > 30 ) {
      on.addClass(ons);
    } else {
      on.removeClass(ons);
    }
  });
});
