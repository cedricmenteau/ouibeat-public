$(document).ready(function(){
  $('.parallax').parallax();


  var mn = $('#navbar');
      mns = "navbar-scrolled";

  $(window).scroll(function() {
    if( $(this).scrollTop() > 30 ) {
      mn.addClass(mns);
    } else {
      mn.removeClass(mns);
    }
  });
});